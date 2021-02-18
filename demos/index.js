import React from 'react';
import { graphql, useStaticQuery, Link } from 'gatsby';
import { useIntl } from 'gatsby-plugin-intl';

import Layout from '../components/Layout';
import Head from '../components/Head';
import {
  renderBig,
  renderMini,
  renderSmall,
} from '../../utils/renderPostCards';

import '../styles/main.sass';

export default function Index() {
  const intl = useIntl();
  const locale = intl.locale === 'en' ? '/en' : '';

  const data = useStaticQuery(graphql`
    query {
      allMarkdownRemark(
        sort: { fields: frontmatter___date, order: DESC }
        limit: 20
      ) {
        edges {
          node {
            id
            excerpt
            frontmatter {
              date
              slug
              title
              thumbnail
              lang
            }
            timeToRead
          }
        }
      }
    }
  `);

  const posts = data.allMarkdownRemark.edges;
  const filteredPosts = posts.filter((edge) =>
    edge.node.frontmatter.lang.includes(intl.locale)
  );

  return (
    <Layout>
      <Head title="Início" thumbnail="/site.jpg" />
      <div className="feature">
        {filteredPosts.map(({ node: post }, index) => {
          return renderBig(post, index);
        })}
      </div>
      <div className="grade home-posts">
        <div className="three columns one-phone two-tablet stretch">
          {filteredPosts.map(({ node: post }, index) => {
            return renderMini(post, index);
          })}
        </div>
        <hr />
        <h2>Outros artigos</h2>
        <div className="two columns one-phone two-tablet stretch">
          {filteredPosts.map(({ node: post }, index) => {
            return renderSmall(post, index);
          })}
        </div>
        <hr />
        <Link className="all-articles" to={`${locale}/articles/`}>
          {intl.formatMessage({ id: 'allarticles' })}
        </Link>
      </div>
    </Layout>
  );
}
