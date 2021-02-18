---
lang: pt
title: "Criando um site multilíngue com Next.js - Parte 1"
slug: "/next-multilingue"
date: 2020-07-28
categories: code
tags: featured
thumbnail: https://images.elvessousa.com.br/next-intl.jpg
---

No último artigo eu mostrei como fazer um site multilíngue simples em Gatsby. Desta vez, resolvi tentar o mesmo com o Next.js. Assim como com o Gatsby, não foi fácil encontrar informações de como criar um site com vários idiomas também. Como naquela oportunidade, descrevo aqui também o processo que usei para alcançar este objetivo.

![Final site](https://raw.githubusercontent.com/elvessousa/next-intl/master/.github/screenshot.png)
_Resultado_

### Configuração inicial

Para iniciar o projeto em Next.js basta usar este comando no terminal:

```shell
yarn create next-app next-intl
```

Caso esteja usando NPM, use este outro.

```shell
npx create-next-app next-intl
```

Neste código, estou usando [TypeScript](/post/nlw-01). Caso não queira usá-lo, basta pular estes próximos passos.

#### Configurando o TypeScript

O Next.js já fornece suporte para TypeScript de fábrica. Basta criar um arquivo `tsconfig.json` vazio na raiz do projeto. Ao iniciar o ambiente de desenvolvimento usando o comando `yarn dev` ou `npm run dev`, o arquivo `tsconfig.json` será detectado e caso ele não ache as dependências de tipagem para o desenvolvimento, ele dará uma mensagem informando quais dependências precisam ser instaladas e dando o comando para que você copie e cole para executar adicionar as mesma. Provavelmente será algo como mostrado abaixo.

```shell
yarn add typescript @types/node @types/react -D
```

Ou:

```shell
npm install --save-dev typescript @types/node @types/react
```

Pronto. A instalação está completa.

### Estrutura do projeto

#### Diretórios

Deixo a seguinte sugestão para a estrutura de diretórios e arquivos do projeto:

- **components**: componentes do React.
- **intl**: aqui ficarão os arquivos para a tradução do conteúdo do site
- **lib**: neste diretório ficará o script para a ler os arquivos `*.md` e que disponibiliza as informações para uso nas páginas.
- **pages**: o Next.js utiliza esta pasta como as rotas para a aplicação. O arquivo `teste.tsx` fica disponível como `http://localhost:3000/teste`
- **posts**: arquivos Markdown que irão conter os textos de artigos.
- **styles**: estilos para a página.
- **public**: esta pasta é usada por padrão pelo Next.js para os arquivos públicos: imagens, ícones, etc.

Fique a vontade para usar a estrutura que fizer mais sentido para você.

#### Estrutura das páginas (rotas)

Qualquer arquivo JavaScript (`.js`, `.jsx`, ou `.tsx` no meu caso) que for colocado dentro da pasta `/pages` será convertido em uma rota acessível automaticamente. Neste exemplo, estão os arquivos `index.tsx` para a página inicial e `about.tsx` para uma página de sobre.

Não vou descrever com detalhes estes arquivos aqui, apenas o que é necessário para a tradução. De qualquer forma haverão exemplos mais à frente e o código estará disponível no repositório mencionado no final deste texto.

A página para listagem de artigos e visualização do conteúdo de cada artigo serão dispostas de uma maneira diferente. Mais a frente eu vou explicar direitinho.

#### Estrutura dos conteúdos (posts)

Dentro da pasta `/posts`, mais dois diretórios serão criados: "/en" e "/pt" para arquivos nos idiomas inglês e português. Fique a vontade para usar o idioma que for do seu interesse. Dentro deles serão colocados os arquivos Markdown com os textos nos respectivos idiomas.

### Dicionário: termos para tradução

Para a tradução, o primeiro arquivo que iremos criar é o que possui os termos a serem traduzidos no site. Encare este arquivo como se fosse uma espécie de dicionário: basta fazer uma referência ao verbete para ter o significado. A mecânica é essa.

```ts
export const LangStrings = {
  en: {
    about: "About",
    articles: "Articles",
    home: "Home",
    slogan: "An example site showcasing a bilingual site with GatsbyJS.",
  },
  pt: {
    about: "Sobre",
    articles: "Artigos",
    home: "Início",
    slogan: "Um site bilíngue de exemplo feito com GatsbyJS.",
  },
}
```

Simples assim. Salvei este arquivo como `Strings.ts` no diretório `/intl` mencionado anteriormente. Caso o seu projeto cresça muito, recomendo separar em arquivos diferentes.

### "Contexto" para os idiomas

No React existem os chamados contextos, que são informações de estado que ficam disponíveis para toda a aplicação. Sem eles toda a informação tem de ser passada via propriedade para cada componente que a usa, o que pode atrapalhar o desenvolvimento caso existam muitos níveis.

O ideal é que o idioma esteja disponível para todo o projeto, globalmente. Para isso um contexto deve ser criado. Abaixo, o código que usei para a criação dele:

```tsx
import { createContext, useState } from "react"

export const defaultLocale = "pt"
export const locales = ["pt", "en"]
export const LanguageContext = createContext([])

export const LanguageProvider: React.FC = ({ children }) => {
  const [locale, setLocale] = useState("pt")

  return (
    <LanguageContext.Provider value={[locale, setLocale]}>
      {children}
    </LanguageContext.Provider>
  )
}
```

O código é bastante simples, mas o suficiente para o exemplo deste artigo. A `defaultLocale` define o idioma padrão do site, neste caso o português. Já `locales` lista as línguas disponíveis no site. Para adicionar mais, basta acrescentar outra abreviação ISO à lista e prover os termos para tradução no arquivo `Strings.ts`.

Para disponibilizar o contexto na aplicação, cria-se um arquivo chamado `_app.tsx` dentro da pasta `/pages` com o seguinte código:

```tsx
import { AppPropsType } from "next/dist/next-server/lib/utils"
import { LanguageProvider } from "../intl/LanguageProvider"

import "./styles/layout.css"

export default function App({ Component, pageProps, router }: AppPropsType) {
  return (
    <LanguageProvider>
      <Component {...pageProps} key={router.route} />
    </LanguageProvider>
  )
}
```

Este arquivo é especial, ele não vira uma página, mas afeta todo o site. O Next o entende como o ponto de entrada para a aplicação React e o que for informado aqui está disponível globalmente.

Nele adicionamos o contexto de idiomas criado, importando o componente `<LanguageProvider />` criado e envolvendo o componente principal da aplicação com ele. Só a partir deste passo que o contexto estará disponível para as páginas e componentes.

### "Hook" personalizado para a tradução

Como nenhuma biblioteca de tradução está sendo usada neste projeto, para facilitar a utilização dos termos traduzido, foi criado um "hook", uma função gancho personalizada chamada `useTranslation`. No React, coloca-se a palavra "use" antes, é uma convenção. Eis o código:

```tsx
import { useContext } from "react"

import { LanguageContext, defaultLocale } from "./LanguageProvider"
import { LangStrings } from "./Strings"

export default function useTranslation() {
  const [locale] = useContext(LanguageContext)

  function t(key: string) {
    if (!LangStrings[locale][key]) {
      console.warn(`No string '${key}' for locale '${locale}'`)
    }

    return LangStrings[locale][key] || LangStrings[defaultLocale][key] || ""
  }

  return { t, locale }
}
```

Basicamente este gancho lê o "dicionário" que foi criado, usando o idioma atual da página, informado pelo contexto que mencionei antes. Várias bibliotecas de tradução usam este mesmo método, cada qual com o seu diferencial. O que o código acima faz é importar o dicionário `LangStrings` e o contexto `LangContext` e com essas informações, retornar a tradução de acordo com idioma atual, ou com o idioma padrão informado através da constante `defaultLocale`.

### Traduzindo o conteúdo das páginas

Meu arquivo `index.tsx` final ficou assim:

```tsx
import { NextPage } from "next"
import Link from "next/link"

import Layout from "../components/Layout"
import useTranslation from "../intl/useTranslation"

const Home: NextPage = () => {
  const { t } = useTranslation()

  return (
    <Layout title={t("home")} className="home">
      <section className="hero">
        <div className="message">
          <h1>Next INTL</h1>
          <p>{t("slogan")}</p>
          <Link href="/about">
            <a className="button">{t("about")}</a>
          </Link>
        </div>
      </section>
    </Layout>
  )
}

export default Home
```

Note que em todas as áreas onde é interessante ter uma tradução, usa-se a função `t("termo")` que vêm do hook criado.

A partir de então basta fazer isto em qualquer componente que queira traduzir: importar o gancho `useTranslation` tornar a função `t()` disponível para uso com `const { t } = useTranslation()` e usar a função `t()` com um termo existente no dicionário.

### Traduzindo datas

Para datas, fiz o uso do método `.toLocaleDateString`. Abaixo segue um exemplo para datas de artigos:

```tsx
<span>{new Date(post.date).toLocaleDateString(locale, dateOptions)}</span>
```

Sendo `post.date` o texto com a data, `locale` a sigla do ISO idioma `dateOptions` as opções para a exibição da data.

```tsx
const dateOptions = {
  year: "numeric",
  month: "long",
  day: "numeric",
}
```

No exemplo acima, o `dateOption` faz com que a data seja exibida assim: _21 de julho de 2020_. Mais informações sobre estas opções você pode ver na MDN[^1].

O artigo está ficando grande, então por enquanto é isso! Nos próximos dias vou colocar a segunda parte deste artigo, com a criação do conteúdo em Markdown e listagem de artigos. Até!

### Links

- [Referência](https://w11i.me/how-to-build-multilingual-website-in-next-js)
- [Repositório no GitHub](https://github.com/elvessousa/next-intl)
- [Site feito com o código do repositório](https://next-intl-ten.vercel.app/)

[^1]: [toLocaleDateString no MDN](https://developer.mozilla.org/pt-BR/docs/Web/JavaScript/Reference/Global_Objects/Date/toLocaleDateString)
