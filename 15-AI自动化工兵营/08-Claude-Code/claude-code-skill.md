---
title: '"claude code skill"'
aliases: '[]'
tags:
  - - 系统工具]'
topic: ''
created: '"2026-05-10"'
updated: '2026-05-17'
type: 工具技能
status: active
quality_level: B
summary_cn:
  - - the full power of Claude Code for openclaw agents, including persistent sessions,
  - - agent teams, and advanced tool control.相关文档
summary_en: Document regarding claude-code-skill. Reference for business decisions.
one_sentence_summary: '"claude code skill"'是AI工作流领域的核心方法。
decision_value: Code and automation template reference
review_note: Code template
category: AI工作流
platform: '[OpenClaw, Claude Code]'
industry: []
scenario: '[知识库维护, 自动化]'
source_files: []
merged_from: []
old_versions: []
archived_reason: []
relations: []
related:
retrieval_keywords:
  - - --
  - --
error: unknown option '--hepl'
Usage: my-command [global options] command
Arguments:
  - string                  string to split
Options:
  - -f, --foo   enable some foo
  - -h, --help  display help for command
cheese: stilton
float: 100
integer: 2
verbose: 3
PS: blob & file that are appended to the FormData will not be read until any of the serialized blob read-methods gets called
usage:
routing_target:
  - "[[14-AI工具自动化MOC]]"
model_route:
  - "claude-code"
  - "openclaw"

---
Based on this you can decide for yourself if you need this polyfill.

[![screenshot](https://user-images.githubusercontent.com/1148376/117550329-0993aa80-b040-11eb-976c-14e31f1a3ba4.png)](https://developer.mozilla.org/en-US/docs/Web/API/FormData#Browser_compatibility)



This normalizes support for the FormData API:

 - `append` with filename
 - `delete()`, `get()`, `getAll()`, `has()`, `set()`
 - `entries()`, `keys()`, `values()`, and support for `for...of`
 - Available in web workers (just include the polyfill)

  [npm-image]: https://img.shields.io/npm/v/formdata-polyfill.svg
  [npm-url]: https://www.npmjs.com/package/formdata-polyfill
  [blob.js]: https://github.com/eligrey/Blob.js


### node modules - get-tsconfig - README

<p align="center">
	<img width="160" src=".github/logo.webp">
</p>
<h1 align="center">
	<sup>get-tsconfig</sup>
	<br>
	<a href="https://npm.im/get-tsconfig"><img src="https://badgen.net/npm/v/get-tsconfig"></a> <a href="https://npm.im/get-tsconfig"><img src="https://badgen.net/npm/dm/get-tsconfig"></a>
</h1>

Find and parse `tsconfig.json` files.

### Features
- Zero dependency (not even TypeScript)
- Tested against TypeScript for correctness
- Supports comments & dangling commas in `tsconfig.json`
- Resolves [`extends`](https://www.typescriptlang.org/tsconfig/#extends)
- Fully typed `tsconfig.json`
- Validates and throws parsing errors
- Tiny! `7 kB` Minified + Gzipped

<br>

<p align="center">
	<a href="https://github.com/sponsors/privatenumber/sponsorships?tier_id=398771"><img width="412" src="https://raw.githubusercontent.com/privatenumber/sponsors/master/banners/assets/donate.webp"></a>
	<a href="https://github.com/sponsors/privatenumber/sponsorships?tier_id=397608"><img width="412" src="https://raw.githubusercontent.com/privatenumber/sponsors/master/banners/assets/sponsor.webp"></a>
</p>
<p align="center"><sup><i>Already a sponsor?</i> Join the discussion in the <a href="https://github.com/pvtnbr/get-tsconfig">Development repo</a>!</sup></p>

## Install

```bash
npm install get-tsconfig
```

## Why?
For TypeScript related tooling to correctly parse `tsconfig.json` file without depending on TypeScript.

## API

### getTsconfig(searchPath?, configName?, cache?)

Searches for a tsconfig file (defaults to `tsconfig.json`) in the `searchPath` and parses it. (If you already know the tsconfig path, use [`parseTsconfig`](#parsetsconfigtsconfigpath-cache) instead). Returns `null` if a config file cannot be found, or an object containing the path and parsed TSConfig object if found.

Returns:

```ts
type TsconfigResult = {

    /**
     * The path to the tsconfig.json file
     */
    path: string

    /**
     * The resolved tsconfig.json file
     */
    config: TsConfigJsonResolved
}
```

#### searchPath
Type: `string`

Default: `process.cwd()`

Accepts a path to a file or directory to search up for a `tsconfig.json` file.

#### configName
Type: `string`

Default: `tsconfig.json`

The file name of the TypeScript config file.

#### cache
Type: `Map<string, any>`

Default: `new Map()`

Optional cache for fs operations.

#### Example

```ts
import { getTsconfig } from 'get-tsconfig'

// Searches for tsconfig.json starting in the current directory
console.log(getTsconfig())

// Find tsconfig.json from a TypeScript file path
console.log(getTsconfig('./path/to/index.ts'))

// Find tsconfig.json from a directory file path
console.log(getTsconfig('./path/to/directory'))

// Explicitly pass in tsconfig.json path
console.log(getTsconfig('./path/to/tsconfig.json'))

// Search for jsconfig.json - https://code.visualstudio.com/docs/languages/jsconfig
console.log(getTsconfig('.', 'jsconfig.json'))
```

---

### parseTsconfig(tsconfigPath, cache?)

Parse the tsconfig file provided. Used internally by `getTsconfig`. Returns the parsed tsconfig as `TsConfigJsonResolved`.

#### tsconfigPath
Type: `string`

Required path to the tsconfig file.

#### cache
Type: `Map<string, any>`

Default: `new Map()`

Optional cache for fs operations.

#### Example

```ts
import { parseTsconfig } from 'get-tsconfig'

// Must pass in a path to an existing tsconfig.json file
console.log(parseTsconfig('./path/to/tsconfig.custom.json'))
```

---

### createFileMatcher(tsconfig: TsconfigResult, caseSensitivePaths?: boolean)

Given a `tsconfig.json` file, it returns a file-matcher function that determines whether it should apply to a file path.

```ts
type FileMatcher = (filePath: string) => TsconfigResult['config'] | undefined
```

#### tsconfig
Type: `TsconfigResult`

Pass in the return value from `getTsconfig`, or a `TsconfigResult` object.

#### caseSensitivePaths
Type: `boolean`

By default, it uses [`is-fs-case-sensitive`](https://github.com/privatenumber/is-fs-case-sensitive) to detect whether the file-system is case-sensitive.

Pass in `true` to make it case-sensitive.

#### Example

For example, if it's called with a `tsconfig.json` file that has `include`/`exclude`/`files` defined, the file-matcher will return the config for files that match `include`/`files`, and return `undefined` for files that don't match or match `exclude`.

```ts
const tsconfig = getTsconfig()
const fileMatcher = tsconfig && createFileMatcher(tsconfig)

/*
 * Returns tsconfig.json if it matches the file,
 * undefined if not
 */
const configForFile = fileMatcher?.('/path/to/file.ts')
const distCode = compileTypescript({
    code: sourceCode,
    tsconfig: configForFile
})
```

---

### createPathsMatcher(tsconfig: TsconfigResult)

Given a tsconfig with [`compilerOptions.paths`](https://www.typescriptlang.org/tsconfig#paths) defined, it returns a matcher function.

The matcher function accepts an [import specifier (the path to resolve)](https://nodejs.org/api/esm.html#terminology), checks it against `compilerOptions.paths`, and returns an array of possible paths to check:
```ts
function pathsMatcher(specifier: string): string[]
```

This function only returns possible paths and doesn't actually do any resolution. This helps increase compatibility wtih file/build systems which usually have their own resolvers.

#### Example

```ts
import { getTsconfig, createPathsMatcher } from 'get-tsconfig'

const tsconfig = getTsconfig()
const pathsMatcher = createPathsMatcher(tsconfig)

const exampleResolver = (request: string) => {
    if (pathsMatcher) {
        const tryPaths = pathsMatcher(request)

        // Check if paths in `tryPaths` exist
    }
}
```

## FAQ

### How can I use TypeScript to parse `tsconfig.json`?
This package is a re-implementation of TypeScript's `tsconfig.json` parser.

However, if you already have TypeScript as a dependency, you can simply use it's API:

```ts
import {
    sys as tsSys,
    findConfigFile,
    readConfigFile,
    parseJsonConfigFileContent
} from 'typescript'

// Find tsconfig.json file
const tsconfigPath = findConfigFile(process.cwd(), tsSys.fileExists, 'tsconfig.json')

// Read tsconfig.json file
const tsconfigFile = readConfigFile(tsconfigPath, tsSys.readFile)

// Resolve extends
const parsedTsconfig = parseJsonConfigFileContent(
    tsconfigFile.config,
    tsSys,
    path.dirname(tsconfigPath)
)
```

## Sponsors
<p align="center">
	<a href="https://github.com/sponsors/privatenumber">
		<img src="https://cdn.jsdelivr.net/gh/privatenumber/sponsors/sponsorkit/sponsors.svg">
	</a>
</p>


### node modules - node-domexception - .history - README 20210527203617

# node-domexception
An implementation of the DOMException class from NodeJS


### node modules - node-domexception - .history - README 20210527212714

# DOMException
An implementation of the DOMException class from NodeJS

This package implements the [`DOMException`](https://developer.mozilla.org/en-US/docs/Web/API/DOMException) class, from NodeJS itself.
NodeJS has DOMException built in, but it's not globally available, and you can't require/import it from somewhere.

The only possible way is to use some web-ish tools that have been introduced into NodeJS that throws an error and catch the constructor.
This way you will have the same class that NodeJS has and you can check if the error is a instance of DOMException.
The instanceof check would not have worked with a custom class such as the DOMexception provided by domenic which also is much larger in size.

```js
import DOMException from 'node-domexception'

hello().catch(err => {
  if (err instanceof DOMException) {
    ...
  }
})

const e1 = new DOMException("Something went wrong", "BadThingsError");
console.assert(e1.name === "BadThingsError");
console.assert(e1.code === 0);

const e2 = new DOMException("Another exciting error message", "NoModificationAllowedError");
console.assert(e2.name === "NoModificationAllowedError");
console.assert(e2.code === 7);

console.assert(DOMException.INUSE_ATTRIBUTE_ERR === 10);
```

## APIs

This package exposes two flavors of the `DOMException` interface depending on the imported module.

### `domexception` module

This module default-exports the `DOMException` interface constructor.

### `domexception/webidl2js-wrapper` module

This module exports the `DOMException` [interface wrapper API](https://github.com/jsdom/webidl2js#for-interfaces) generated by [webidl2js](https://github.com/jsdom/webidl2js).


### node modules - node-domexception - .history - README 20210527213345

# DOMException
An implementation of the DOMException class from NodeJS

This package implements the [`DOMException`](https://developer.mozilla.org/en-US/docs/Web/API/DOMException) class, from NodeJS itself. (including the legacy codes)
NodeJS has DOMException built in, but it's not globally available, and you can't require/import it from somewhere.

The only possible way is to use some web-ish tools that have been introduced into NodeJS that throws an error and catch the constructor.
This way you will have the same class that NodeJS has and you can check if the error is a instance of DOMException.
The instanceof check would not have worked with a custom class such as the DOMException provided by domenic which also is much larger in size.

```js
import DOMException from 'node-domexception'
import { MessageChannel } from 'worker_threads'

async function hello() {
  const port = new MessageChannel().port1
  const ab = new ArrayBuffer()
  port.postMessage(ab, [ab, ab])
}

hello().catch(err => {
  console.assert(err.name === 'DataCloneError')
  console.assert(err.code === 25)
  console.assert(err instanceof DOMException)
})

const e1 = new DOMException('Something went wrong', 'BadThingsError')
console.assert(e1.name === 'BadThingsError')
console.assert(e1.code === 0)

const e2 = new DOMException('Another exciting error message', 'NoModificationAllowedError')
console.assert(e2.name === 'NoModificationAllowedError')
console.assert(e2.code === 7)

console.assert(DOMException.INUSE_ATTRIBUTE_ERR === 10)
```


### node modules - node-domexception - .history - README 20210527213411

# DOMException
An implementation of the DOMException class from NodeJS

This package implements the [`DOMException`](https://developer.mozilla.org/en-US/docs/Web/API/DOMException) class that comes from NodeJS itself. (including the legacy codes)
NodeJS has DOMException built in, but it's not globally available, and you can't require/import it from somewhere.

The only possible way is to use some web-ish tools that have been introduced into NodeJS that throws an error and catch the constructor.
This way you will have the same class that NodeJS has and you can check if the error is a instance of DOMException.
The instanceof check would not have worked with a custom class such as the DOMException provided by domenic which also is much larger in size.

```js
import DOMException from 'node-domexception'
import { MessageChannel } from 'worker_threads'

async function hello() {
  const port = new MessageChannel().port1
  const ab = new ArrayBuffer()
  port.postMessage(ab, [ab, ab])
}

hello().catch(err => {
  console.assert(err.name === 'DataCloneError')
  console.assert(err.code === 25)
  console.assert(err instanceof DOMException)
})

const e1 = new DOMException('Something went wrong', 'BadThingsError')
console.assert(e1.name === 'BadThingsError')
console.assert(e1.code === 0)

const e2 = new DOMException('Another exciting error message', 'NoModificationAllowedError')
console.assert(e2.name === 'NoModificationAllowedError')
console.assert(e2.code === 7)

console.assert(DOMException.INUSE_ATTRIBUTE_ERR === 10)
```


### node modules - node-domexception - .history - README 20210527213803

# DOMException
An implementation of the DOMException class from NodeJS

This package exposes the [`DOMException`](https://developer.mozilla.org/en-US/docs/Web/API/DOMException) class that comes from NodeJS itself. (including all of the deprecated legacy codes)
NodeJS has it built in, but it's not globally available, and you can't require/import it from somewhere.

The only possible way is to use some web-ish tools that have been introduced into NodeJS that throws an error and catch the constructor.
This way you will have the same class that NodeJS has and you can check if the error is a instance of DOMException.
The instanceof check would not have worked with a custom class such as the DOMException provided by domenic which also is much larger in size since it has to re-construct the hole class from the ground up.

```js
import DOMException from 'node-domexception'
import { MessageChannel } from 'worker_threads'

async function hello() {
  const port = new MessageChannel().port1
  const ab = new ArrayBuffer()
  port.postMessage(ab, [ab, ab])
}

hello().catch(err => {
  console.assert(err.name === 'DataCloneError')
  console.assert(err.code === 25)
  console.assert(err instanceof DOMException)
})

const e1 = new DOMException('Something went wrong', 'BadThingsError')
console.assert(e1.name === 'BadThingsError')
console.assert(e1.code === 0)

const e2 = new DOMException('Another exciting error message', 'NoModificationAllowedError')
console.assert(e2.name === 'NoModificationAllowedError')
console.assert(e2.code === 7)

console.assert(DOMException.INUSE_ATTRIBUTE_ERR === 10)
```


### node modules - node-domexception - .history - README 20210527214323

# DOMException
An implementation of the DOMException class from NodeJS

This package exposes the [`DOMException`](https://developer.mozilla.org/en-US/docs/Web/API/DOMException) class that comes from NodeJS itself. (including all of the deprecated legacy codes)
NodeJS has it built in, but it's not globally available, and you can't require/import it from somewhere.

The only possible way is to use some web-ish tools that have been introduced into NodeJS that throws an error and catch the constructor.
This way you will have the same class that NodeJS has and you can check if the error is a instance of DOMException.
The instanceof check would not have worked with a custom class such as the DOMException provided by domenic which also is much larger in size since it has to re-construct the hole class from the ground up.

(plz don't depend on this package in any other environment other than node >=10.5)

```js
import DOMException from 'node-domexception'
import { MessageChannel } from 'worker_threads'

async function hello() {
  const port = new MessageChannel().port1
  const ab = new ArrayBuffer()
  port.postMessage(ab, [ab, ab])
}

hello().catch(err => {
  console.assert(err.name === 'DataCloneError')
  console.assert(err.code === 25)
  console.assert(err instanceof DOMException)
})

const e1 = new DOMException('Something went wrong', 'BadThingsError')
console.assert(e1.name === 'BadThingsError')
console.assert(e1.code === 0)

const e2 = new DOMException('Another exciting error message', 'NoModificationAllowedError')
console.assert(e2.name === 'NoModificationAllowedError')
console.assert(e2.code === 7)

console.assert(DOMException.INUSE_ATTRIBUTE_ERR === 10)
```


### node modules - node-domexception - .history - README 20210527214408

# DOMException
An implementation of the DOMException class from NodeJS

This package exposes the [`DOMException`](https://developer.mozilla.org/en-US/docs/Web/API/DOMException) class that comes from NodeJS itself. (including all of the deprecated legacy codes)
NodeJS has it built in, but it's not globally available, and you can't require/import it from somewhere.

The only possible way is to use some web-ish tools that have been introduced into NodeJS that throws an error and catch the constructor.
This way you will have the same class that NodeJS has and you can check if the error is a instance of DOMException.
The instanceof check would not have worked with a custom class such as the DOMException provided by domenic which also is much larger in size since it has to re-construct the hole class from the ground up.

(plz don't depend on this package in any other environment other than node >=10.5)

```js
import DOMException from 'node-domexception'
import { MessageChannel } from 'worker_threads'

async function hello() {
  const port = new MessageChannel().port1
  const ab = new ArrayBuffer()
  port.postMessage(ab, [ab, ab])
}

hello().catch(err => {
  console.assert(err.name === 'DataCloneError')
  console.assert(err.code === 25)
  console.assert(err instanceof DOMException)
})

const e1 = new DOMException('Something went wrong', 'BadThingsError')
console.assert(e1.name === 'BadThingsError')
console.assert(e1.code === 0)

const e2 = new DOMException('Another exciting error message', 'NoModificationAllowedError')
console.assert(e2.name === 'NoModificationAllowedError')
console.assert(e2.code === 7)

console.assert(DOMException.INUSE_ATTRIBUTE_ERR === 10)
```


### node modules - node-domexception - README

# DOMException
An implementation of the DOMException class from NodeJS

NodeJS has DOMException built in, but it's not globally available, and you can't require/import it from somewhere.

This package exposes the [`DOMException`](https://developer.mozilla.org/en-US/docs/Web/API/DOMException) class that comes from NodeJS itself. (including all of the legacy codes)

<sub>(plz don't depend on this package in any other environment other than node >=10.5)</sub>

```js
import DOMException from 'node-domexception'
import { MessageChannel } from 'worker_threads'

async function hello() {
  const port = new MessageChannel().port1
  const ab = new ArrayBuffer()
  port.postMessage(ab, [ab, ab])
}

hello().catch(err => {
  console.assert(err.name === 'DataCloneError')
  console.assert(err.code === 25)
  console.assert(err instanceof DOMException)
})

const e1 = new DOMException('Something went wrong', 'BadThingsError')
console.assert(e1.name === 'BadThingsError')
console.assert(e1.code === 0)

const e2 = new DOMException('Another exciting error message', 'NoModificationAllowedError')
console.assert(e2.name === 'NoModificationAllowedError')
console.assert(e2.code === 7)

console.assert(DOMException.INUSE_ATTRIBUTE_ERR === 10)
```

# Background

The only possible way is to use some web-ish tools that have been introduced into NodeJS that throws a DOMException and catch the constructor. This is exactly what this package dose for you and exposes it.<br>
This way you will have the same class that NodeJS has and you can check if the error is a instance of DOMException.<br>
The instanceof check would not have worked with a custom class such as the DOMException provided by domenic which also is much larger in size since it has to re-construct the hole class from the ground up.

The DOMException is used in many places such as the Fetch API, File & Blobs, PostMessaging and more. <br>
Why they decided to call it **DOM**, I don't know

Please consider sponsoring if you find this helpful


### node modules - node-fetch - LICENSE

The MIT License (MIT)

Copyright (c) 2016 - 2020 Node Fetch Team

Permission is hereby granted, free of charge, to any person obtaining a copy
of this software and associated documentation files (the "Software"), to deal
in the Software without restriction, including without limitation the rights
to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
copies of the Software, and to permit persons to whom the Software is
furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all
copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
SOFTWARE.


### node modules - node-fetch - README

<div align="center">
	<img src="docs/media/Banner.svg" alt="Node Fetch"/>
	<br>
	<p>A light-weight module that brings <a href="https://developer.mozilla.org/en-US/docs/Web/API/Fetch_API">Fetch API</a> to Node.js.</p>
	<a href="https://github.com/node-fetch/node-fetch/actions"><img src="https://github.com/node-fetch/node-fetch/workflows/CI/badge.svg?branch=master" alt="Build status"></a>
	<a href="https://coveralls.io/github/node-fetch/node-fetch"><img src="https://img.shields.io/coveralls/github/node-fetch/node-fetch" alt="Coverage status"></a>
	<a href="https://packagephobia.now.sh/result?p=node-fetch"><img src="https://badgen.net/packagephobia/install/node-fetch" alt="Current version"></a>
	<a href="https://www.npmjs.com/package/node-fetch"><img src="https://img.shields.io/npm/v/node-fetch" alt="Install size"></a>
	<a href="https://github.com/sindresorhus/awesome-nodejs"><img src="https://awesome.re/mentioned-badge.svg" alt="Mentioned in Awesome Node.js"></a>
	<a href="https://discord.gg/Zxbndcm"><img src="https://img.shields.io/discord/619915844268326952?color=%237289DA&label=Discord" alt="Discord"></a>
	<br>
	<br>
	<b>Consider supporting us on our Open Collective:</b>
	<br>
	<br>
	<a href="https://opencollective.com/node-fetch"><img src="https://opencollective.com/node-fetch/donate/button.png?color=blue" alt="Open Collective"></a>
</div>

---

**You might be looking for the [v2 docs](https://github.com/node-fetch/node-fetch/tree/2.x#readme)**

<!-- TOC -->

- [Motivation](#motivation)
- [Features](#features)
- [Difference from client-side fetch](#difference-from-client-side-fetch)
- [Installation](#installation)
- [Loading and configuring the module](#loading-and-configuring-the-module)
- [Upgrading](#upgrading)
- [Common Usage](#common-usage)
	- [Plain text or HTML](#plain-text-or-html)
	- [JSON](#json)
	- [Simple Post](#simple-post)
	- [Post with JSON](#post-with-json)
	- [Post with form parameters](#post-with-form-parameters)
	- [Handling exceptions](#handling-exceptions)
	- [Handling client and server errors](#handling-client-and-server-errors)
	- [Handling cookies](#handling-cookies)
- [Advanced Usage](#advanced-usage)
	- [Streams](#streams)
	- [Accessing Headers and other Metadata](#accessing-headers-and-other-metadata)
	- [Extract Set-Cookie Header](#extract-set-cookie-header)
	- [Post data using a file](#post-data-using-a-file)
	- [Request cancellation with AbortSignal](#request-cancellation-with-abortsignal)
- [API](#api)
	- [fetch(url[, options])](#fetchurl-options)
	- [Options](#options)
		- [Default Headers](#default-headers)
		- [Custom Agent](#custom-agent)
		- [Custom highWaterMark](#custom-highwatermark)
		- [Insecure HTTP Parser](#insecure-http-parser)
	- [Class: Request](#class-request)
		- [new Request(input[, options])](#new-requestinput-options)
	- [Class: Response](#class-response)
		- [new Response([body[, options]])](#new-responsebody-options)
		- [response.ok](#responseok)
		- [response.redirected](#responseredirected)
		- [response.type](#responsetype)
	- [Class: Headers](#class-headers)
		- [new Headers([init])](#new-headersinit)
	- [Interface: Body](#interface-body)
		- [body.body](#bodybody)
		- [body.bodyUsed](#bodybodyused)
		- [body.arrayBuffer()](#bodyarraybuffer)
		- [body.blob()](#bodyblob)
		- [body.formData()](#formdata)
		- [body.json()](#bodyjson)
		- [body.text()](#bodytext)
	- [Class: FetchError](#class-fetcherror)
	- [Class: AbortError](#class-aborterror)
- [TypeScript](#typescript)
- [Acknowledgement](#acknowledgement)
- [Team](#team)
				- [Former](#former)
- [License](#license)

<!-- /TOC -->

## Motivation

Instead of implementing `XMLHttpRequest` in Node.js to run browser-specific [Fetch polyfill](https://github.com/github/fetch), why not go from native `http` to `fetch` API directly? Hence, `node-fetch`, minimal code for a `window.fetch` compatible API on Node.js runtime.

See Jason Miller's [isomorphic-unfetch](https://www.npmjs.com/package/isomorphic-unfetch) or Leonardo Quixada's [cross-fetch](https://github.com/lquixada/cross-fetch) for isomorphic usage (exports `node-fetch` for server-side, `whatwg-fetch` for client-side).

## Features

- Stay consistent with `window.fetch` API.
- Make conscious trade-off when following [WHATWG fetch spec][whatwg-fetch] and [stream spec](https://streams.spec.whatwg.org/) implementation details, document known differences.
- Use native promise and async functions.
- Use native Node streams for body, on both request and response.
- Decode content encoding (gzip/deflate/brotli) properly, and convert string output (such as `res.text()` and `res.json()`) to UTF-8 automatically.
- Useful extensions such as redirect limit, response size limit, [explicit errors][error-handling.md] for troubleshooting.

## Difference from client-side fetch

- See known differences:
	- [As of v3.x](docs/v3-LIMITS.md)
	- [As of v2.x](docs/v2-LIMITS.md)
- If you happen to use a missing feature that `window.fetch` offers, feel free to open an issue.
- Pull requests are welcomed too!

## Installation

Current stable release (`3.x`) requires at least Node.js 12.20.0.

```sh
npm install node-fetch
```

## Loading and configuring the module

### ES Modules (ESM)

```js
import fetch from 'node-fetch';
```

### CommonJS

`node-fetch` from v3 is an ESM-only module - you are not able to import it with `require()`.

If you cannot switch to ESM, please use v2 which remains compatible with CommonJS. Critical bug fixes will continue to be published for v2.

```sh
npm install node-fetch@2
```

Alternatively, you can use the async `import()` function from CommonJS to load `node-fetch` asynchronously:

```js
// mod.cjs
const fetch = (...args) => import('node-fetch').then(({default: fetch}) => fetch(...args));
```

### Providing global access

To use `fetch()` without importing it, you can patch the `global` object in node:

```js
// fetch-polyfill.js
import fetch, {
  Blob,
  blobFrom,
  blobFromSync,
  File,
  fileFrom,
  fileFromSync,
  FormData,
  Headers,
  Request,
  Response,
} from 'node-fetch'

if (!globalThis.fetch) {
  globalThis.fetch = fetch
  globalThis.Headers = Headers
  globalThis.Request = Request
  globalThis.Response = Response
}

// index.js
import './fetch-polyfill'

// ...
```

## Upgrading

Using an old version of node-fetch? Check out the following files:

- [2.x to 3.x upgrade guide](docs/v3-UPGRADE-GUIDE.md)
- [1.x to 2.x upgrade guide](docs/v2-UPGRADE-GUIDE.md)
- [Changelog](https://github.com/node-fetch/node-fetch/releases)

## Common Usage

NOTE: The documentation below is up-to-date with `3.x` releases, if you are using an older version, please check how to [upgrade](#upgrading).

### Plain text or HTML

```js
import fetch from 'node-fetch';

const response = await fetch('https://github.com/');
const body = await response.text();

console.log(body);
```

### JSON

```js
import fetch from 'node-fetch';

const response = await fetch('https://api.github.com/users/github');
const data = await response.json();

console.log(data);
```

### Simple Post

```js
import fetch from 'node-fetch';

const response = await fetch('https://httpbin.org/post', {method: 'POST', body: 'a=1'});
const data = await response.json();

console.log(data);
```

### Post with JSON

```js
import fetch from 'node-fetch';

const body = {a: 1};

const response = await fetch('https://httpbin.org/post', {
	method: 'post',
	body: JSON.stringify(body),
	headers: {'Content-Type': 'application/json'}
});
const data = await response.json();

console.log(data);
```

### Post with form parameters

`URLSearchParams` is available on the global object in Node.js as of v10.0.0. See [official documentation](https://nodejs.org/api/url.html#url_class_urlsearchparams) for more usage methods.

NOTE: The `Content-Type` header is only set automatically to `x-www-form-urlencoded` when an instance of `URLSearchParams` is given as such:

```js
import fetch from 'node-fetch';

const params = new URLSearchParams();
params.append('a', 1);

const response = await fetch('https://httpbin.org/post', {method: 'POST', body: params});
const data = await response.json();

console.log(data);
```

### Handling exceptions

NOTE: 3xx-5xx responses are _NOT_ exceptions, and should be handled in `then()`, see the next section.

Wrapping the fetch function into a `try/catch` block will catch _all_ exceptions, such as errors originating from node core libraries, like network errors, and operational errors which are instances of FetchError. See the [error handling document][error-handling.md] for more details.

```js
import fetch from 'node-fetch';

try {
	await fetch('https://domain.invalid/');
} catch (error) {
	console.log(error);
}
```

### Handling client and server errors

It is common to create a helper function to check that the response contains no client (4xx) or server (5xx) error responses:

```js
import fetch from 'node-fetch';

class HTTPResponseError extends Error {
	constructor(response) {
		super(`HTTP Error Response: ${response.status} ${response.statusText}`);
		this.response = response;
	}
}

const checkStatus = response => {
	if (response.ok) {
		// response.status >= 200 && response.status < 300
		return response;
	} else {
		throw new HTTPResponseError(response);
	}
}

const response = await fetch('https://httpbin.org/status/400');

try {
	checkStatus(response);
} catch (error) {
	console.error(error);

	const errorBody = await error.response.text();
	console.error(`Error body: ${errorBody}`);
}
```

### Handling cookies

Cookies are not stored by default. However, cookies can be extracted and passed by manipulating request and response headers. See [Extract Set-Cookie Header](#extract-set-cookie-header) for details.

## Advanced Usage

### Streams

The "Node.js way" is to use streams when possible. You can pipe `res.body` to another stream. This example uses [stream.pipeline](https://nodejs.org/api/stream.html#stream_stream_pipeline_streams_callback) to attach stream error handlers and wait for the download to complete.

```js
import {createWriteStream} from 'node:fs';
import {pipeline} from 'node:stream';
import {promisify} from 'node:util'
import fetch from 'node-fetch';

const streamPipeline = promisify(pipeline);

const response = await fetch('https://github.githubassets.com/images/modules/logos_page/Octocat.png');

if (!response.ok) throw new Error(`unexpected response ${response.statusText}`);

await streamPipeline(response.body, createWriteStream('./octocat.png'));
```

In Node.js 14 you can also use async iterators to read `body`; however, be careful to catch
errors -- the longer a response runs, the more likely it is to encounter an error.

```js
import fetch from 'node-fetch';

const response = await fetch('https://httpbin.org/stream/3');

try {
	for await (const chunk of response.body) {
		console.dir(JSON.parse(chunk.toString()));
	}
} catch (err) {
	console.error(err.stack);
}
```

In Node.js 12 you can also use async iterators to read `body`; however, async iterators with streams
did not mature until Node.js 14, so you need to do some extra work to ensure you handle errors
directly from the stream and wait on it response to fully close.

```js
import fetch from 'node-fetch';

const read = async body => {
	let error;
	body.on('error', err => {
		error = err;
	});

	for await (const chunk of body) {
		console.dir(JSON.parse(chunk.toString()));
	}

	return new Promise((resolve, reject) => {
		body.on('close', () => {
			error ? reject(error) : resolve();
		});
	});
};

try {
	const response = await fetch('https://httpbin.org/stream/3');
	await read(response.body);
} catch (err) {
	console.error(err.stack);
}
```

### Accessing Headers and other Metadata

```js
import fetch from 'node-fetch';

const response = await fetch('https://github.com/');

console.log(response.ok);
console.log(response.status);
console.log(response.statusText);
console.log(response.headers.raw());
console.log(response.headers.get('content-type'));
```

### Extract Set-Cookie Header

Unlike browsers, you can access raw `Set-Cookie` headers manually using `Headers.raw()`. This is a `node-fetch` only API.

```js
import fetch from 'node-fetch';

const response = await fetch('https://example.com');

// Returns an array of values, instead of a string of comma-separated values
console.log(response.headers.raw()['set-cookie']);
```

### Post data using a file

```js
import fetch, {
  Blob,
  blobFrom,
  blobFromSync,
  File,
  fileFrom,
  fileFromSync,
} from 'node-fetch'

const mimetype = 'text/plain'
const blob = fileFromSync('./input.txt', mimetype)
const url = 'https://httpbin.org/post'

const response = await fetch(url, { method: 'POST', body: blob })
const data = await response.json()

console.log(data)
```

node-fetch comes with a spec-compliant [FormData] implementations for posting
multipart/form-data payloads

```js
import fetch, { FormData, File, fileFrom } from 'node-fetch'

const httpbin = 'https://httpbin.org/post'
const formData = new FormData()
const binary = new Uint8Array([ 97, 98, 99 ])
const abc = new File([binary], 'abc.txt', { type: 'text/plain' })

formData.set('greeting', 'Hello, world!')
formData.set('file-upload', abc, 'new name.txt')

const response = await fetch(httpbin, { method: 'POST', body: formData })
const data = await response.json()

console.log(data)
```

If you for some reason need to post a stream coming from any arbitrary place,
then you can append a [Blob] or a [File] look-a-like item.

The minimum requirement is that it has:
1. A `Symbol.toStringTag` getter or property that is either `Blob` or `File`
2. A known size.
3. And either a `stream()` method or a `arrayBuffer()` method that returns a ArrayBuffer.

The `stream()` must return any async iterable object as long as it yields Uint8Array (or Buffer)
so Node.Readable streams and whatwg streams works just fine.

```js
formData.append('upload', {
	[Symbol.toStringTag]: 'Blob',
	size: 3,
  *stream() {
    yield new Uint8Array([97, 98, 99])
	},
	arrayBuffer() {
		return new Uint8Array([97, 98, 99]).buffer
	}
}, 'abc.txt')
```

### Request cancellation with AbortSignal

You may cancel requests with `AbortController`. A suggested implementation is [`abort-controller`](https://www.npmjs.com/package/abort-controller).

An example of timing out a request after 150ms could be achieved as the following:

```js
import fetch, { AbortError } from 'node-fetch';

// AbortController was added in node v14.17.0 globally
const AbortController = globalThis.AbortController || await import('abort-controller')

const controller = new AbortController();
const timeout = setTimeout(() => {
	controller.abort();
}, 150);

try {
	const response = await fetch('https://example.com', {signal: controller.signal});
	const data = await response.json();
} catch (error) {
	if (error instanceof AbortError) {
		console.log('request was aborted');
	}
} finally {
	clearTimeout(timeout);
}
```

See [test cases](https://github.com/node-fetch/node-fetch/blob/master/test/) for more examples.

## API

### fetch(url[, options])

- `url` A string representing the URL for fetching
- `options` [Options](#fetch-options) for the HTTP(S) request
- Returns: <code>Promise&lt;[Response](#class-response)&gt;</code>

Perform an HTTP(S) fetch.

`url` should be an absolute URL, such as `https://example.com/`. A path-relative URL (`/file/under/root`) or protocol-relative URL (`//can-be-http-or-https.com/`) will result in a rejected `Promise`.

<a id="fetch-options"></a>

### Options

The default values are shown after each option key.

```js
{
	// These properties are part of the Fetch Standard
	method: 'GET',
	headers: {},            // Request headers. format is the identical to that accepted by the Headers constructor (see below)
	body: null,             // Request body. can be null, or a Node.js Readable stream
	redirect: 'follow',     // Set to `manual` to extract redirect headers, `error` to reject redirect
	signal: null,           // Pass an instance of AbortSignal to optionally abort requests

	// The following properties are node-fetch extensions
	follow: 20,             // maximum redirect count. 0 to not follow redirect
	compress: true,         // support gzip/deflate content encoding. false to disable
	size: 0,                // maximum response body size in bytes. 0 to disable
	agent: null,            // http(s).Agent instance or function that returns an instance (see below)
	highWaterMark: 16384,   // the maximum number of bytes to store in the internal buffer before ceasing to read from the underlying resource.
	insecureHTTPParser: false	// Use an insecure HTTP parser that accepts invalid HTTP headers when `true`.
}
```

#### Default Headers

If no values are set, the following request headers will be sent automatically:

| Header              | Value                                                  |
| ------------------- | ------------------------------------------------------ |
| `Accept-Encoding`   | `gzip, deflate, br` (when `options.compress === true`) |
| `Accept`            | `*/*`                                                  |
| `Content-Length`    | _(automatically calculated, if possible)_              |
| `Host`              | _(host and port information from the target URI)_      |
| `Transfer-Encoding` | `chunked` _(when `req.body` is a stream)_              |
| `User-Agent`        | `node-fetch`                                           |


Note: when `body` is a `Stream`, `Content-Length` is not set automatically.

#### Custom Agent

The `agent` option allows you to specify networking related options which are out of the scope of Fetch, including and not limited to the following:

- Support self-signed certificate
- Use only IPv4 or IPv6
- Custom DNS Lookup

See [`http.Agent`](https://nodejs.org/api/http.html#http_new_agent_options) for more information.

If no agent is specified, the default agent provided by Node.js is used. Note that [this changed in Node.js 19](https://github.com/nodejs/node/blob/4267b92604ad78584244488e7f7508a690cb80d0/lib/_http_agent.js#L564) to have `keepalive` true by default. If you wish to enable `keepalive` in an earlier version of Node.js, you can override the agent as per the following code sample. 

In addition, the `agent` option accepts a function that returns `http`(s)`.Agent` instance given current [URL](https://nodejs.org/api/url.html), this is useful during a redirection chain across HTTP and HTTPS protocol.

```js
import http from 'node:http';
import https from 'node:https';

const httpAgent = new http.Agent({
	keepAlive: true
});
const httpsAgent = new https.Agent({
	keepAlive: true
});

const options = {
	agent: function(_parsedURL) {
		if (_parsedURL.protocol == 'http:') {
			return httpAgent;
		} else {
			return httpsAgent;
		}
	}
};
```

<a id="custom-highWaterMark"></a>

#### Custom highWaterMark

Stream on Node.js have a smaller internal buffer size (16kB, aka `highWaterMark`) from client-side browsers (>1MB, not consistent across browsers). Because of that, when you are writing an isomorphic app and using `res.clone()`, it will hang with large response in Node.

The recommended way to fix this problem is to resolve cloned response in parallel:

```js
import fetch from 'node-fetch';

const response = await fetch('https://example.com');
const r1 = response.clone();

const results = await Promise.all([response.json(), r1.text()]);

console.log(results[0]);
console.log(results[1]);
```

If for some reason you don't like the solution above, since `3.x` you are able to modify the `highWaterMark` option:

```js
import fetch from 'node-fetch';

const response = await fetch('https://example.com', {
	// About 1MB
	highWaterMark: 1024 * 1024
});

const result = await res.clone().arrayBuffer();
console.dir(result);
```

#### Insecure HTTP Parser

Passed through to the `insecureHTTPParser` option on http(s).request. See [`http.request`](https://nodejs.org/api/http.html#http_http_request_url_options_callback) for more information.

#### Manual Redirect

The `redirect: 'manual'` option for node-fetch is different from the browser & specification, which
results in an [opaque-redirect filtered response](https://fetch.spec.whatwg.org/#concept-filtered-response-opaque-redirect).
node-fetch gives you the typical [basic filtered response](https://fetch.spec.whatwg.org/#concept-filtered-response-basic) instead.

```js
import fetch from 'node-fetch';

const response = await fetch('https://httpbin.org/status/301', { redirect: 'manual' });

if (response.status === 301 || response.status === 302) {
	const locationURL = new URL(response.headers.get('location'), response.url);
	const response2 = await fetch(locationURL, { redirect: 'manual' });
	console.dir(response2);
}
```

<a id="class-request"></a>

### Class: Request

An HTTP(S) request containing information about URL, method, headers, and the body. This class implements the [Body](#iface-body) interface.

Due to the nature of Node.js, the following properties are not implemented at this moment:

- `type`
- `destination`
- `mode`
- `credentials`
- `cache`
- `integrity`
- `keepalive`

The following node-fetch extension properties are provided:

- `follow`
- `compress`
- `counter`
- `agent`
- `highWaterMark`

See [options](#fetch-options) for exact meaning of these extensions.

#### new Request(input[, options])

<small>_(spec-compliant)_</small>

- `input` A string representing a URL, or another `Request` (which will be cloned)
- `options` [Options](#fetch-options) for the HTTP(S) request

Constructs a new `Request` object. The constructor is identical to that in the [browser](https://developer.mozilla.org/en-US/docs/Web/API/Request/Request).

In most cases, directly `fetch(url, options)` is simpler than creating a `Request` object.

<a id="class-response"></a>

### Class: Response

An HTTP(S) response. This class implements the [Body](#iface-body) interface.

The following properties are not implemented in node-fetch at this moment:

- `trailer`

#### new Response([body[, options]])

<small>_(spec-compliant)_</small>

- `body` A `String` or [`Readable` stream][node-readable]
- `options` A [`ResponseInit`][response-init] options dictionary

Constructs a new `Response` object. The constructor is identical to that in the [browser](https://developer.mozilla.org/en-US/docs/Web/API/Response/Response).

Because Node.js does not implement service workers (for which this class was designed), one rarely has to construct a `Response` directly.

#### response.ok

<small>_(spec-compliant)_</small>

Convenience property representing if the request ended normally. Will evaluate to true if the response status was greater than or equal to 200 but smaller than 300.

#### response.redirected

<small>_(spec-compliant)_</small>

Convenience property representing if the request has been redirected at least once. Will evaluate to true if the internal redirect counter is greater than 0.

#### response.type

<small>_(deviation from spec)_</small>

Convenience property representing the response's type. node-fetch only supports `'default'` and `'error'` and does not make use of [filtered responses](https://fetch.spec.whatwg.org/#concept-filtered-response).

<a id="class-headers"></a>

### Class: Headers

This class allows manipulating and iterating over a set of HTTP headers. All methods specified in the [Fetch Standard][whatwg-fetch] are implemented.

#### new Headers([init])

<small>_(spec-compliant)_</small>

- `init` Optional argument to pre-fill the `Headers` object

Construct a new `Headers` object. `init` can be either `null`, a `Headers` object, an key-value map object or any iterable object.

```js
// Example adapted from https://fetch.spec.whatwg.org/#example-headers-class
import {Headers} from 'node-fetch';

const meta = {
	'Content-Type': 'text/xml'
};
const headers = new Headers(meta);

// The above is equivalent to
const meta = [[11-AI技能与智囊团/开发与运维/软件开发-索引|Content-Type]];
const headers = new Headers(meta);

// You can in fact use any iterable objects, like a Map or even another Headers
const meta = new Map();
meta.set('Content-Type', 'text/xml');
const headers = new Headers(meta);
const copyOfHeaders = new Headers(headers);
```

<a id="iface-body"></a>

### Interface: Body

`Body` is an abstract interface with methods that are applicable to both `Request` and `Response` classes.

#### body.body

<small>_(deviation from spec)_</small>

- Node.js [`Readable` stream][node-readable]

Data are encapsulated in the `Body` object. Note that while the [Fetch Standard][whatwg-fetch] requires the property to always be a WHATWG `ReadableStream`, in node-fetch it is a Node.js [`Readable` stream][node-readable].

#### body.bodyUsed

<small>_(spec-compliant)_</small>

- `Boolean`

A boolean property for if this body has been consumed. Per the specs, a consumed body cannot be used again.

#### body.arrayBuffer()

#### body.formData()

#### body.blob()

#### body.json()

#### body.text()

`fetch` comes with methods to parse `multipart/form-data` payloads as well as
`x-www-form-urlencoded` bodies using `.formData()` this comes from the idea that
Service Worker can intercept such messages before it's sent to the server to
alter them. This is useful for anybody building a server so you can use it to
parse & consume payloads.

<details>
<summary>Code example</summary>

```js
import http from 'node:http'
import { Response } from 'node-fetch'

http.createServer(async function (req, res) {
  const formData = await new Response(req, {
    headers: req.headers // Pass along the boundary value
  }).formData()
  const allFields = [...formData]

  const file = formData.get('uploaded-files')
  const arrayBuffer = await file.arrayBuffer()
  const text = await file.text()
  const whatwgReadableStream = file.stream()

  // other was to consume the request could be to do:
  const json = await new Response(req).json()
  const text = await new Response(req).text()
  const arrayBuffer = await new Response(req).arrayBuffer()
  const blob = await new Response(req, {
    headers: req.headers // So that `type` inherits `Content-Type`
  }.blob()
})
```

</details>

<a id="class-fetcherror"></a>

### Class: FetchError

<small>_(node-fetch extension)_</small>

An operational error in the fetching process. See [ERROR-HANDLING.md][] for more info.

<a id="class-aborterror"></a>

### Class: AbortError

<small>_(node-fetch extension)_</small>

An Error thrown when the request is aborted in response to an `AbortSignal`'s `abort` event. It has a `name` property of `AbortError`. See [ERROR-HANDLING.MD][] for more info.

## TypeScript

**Since `3.x` types are bundled with `node-fetch`, so you don't need to install any additional packages.**

For older versions please use the type definitions from [DefinitelyTyped](https://github.com/DefinitelyTyped/DefinitelyTyped):

```sh
npm install --save-dev @types/node-fetch@2.x
```

## Acknowledgement

Thanks to [github/fetch](https://github.com/github/fetch) for providing a solid implementation reference.

## Team

| [![David Frank](https://github.com/bitinn.png?size=100)](https://github.com/bitinn) | [![Jimmy Wärting](https://github.com/jimmywarting.png?size=100)](https://github.com/jimmywarting) | [![Antoni Kepinski](https://github.com/xxczaki.png?size=100)](https://github.com/xxczaki) | [![Richie Bendall](https://github.com/Richienb.png?size=100)](https://github.com/Richienb) | [![Gregor Martynus](https://github.com/gr2m.png?size=100)](https://github.com/gr2m) |
| ----------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------ | ----------------------------------------------------------------------------------- |
| [David Frank](https://bitinn.net/)                                                  | [Jimmy Wärting](https://jimmy.warting.se/)                                                        | [Antoni Kepinski](https://kepinski.ch)                                                    | [Richie Bendall](https://www.richie-bendall.ml/)                                           | [Gregor Martynus](https://twitter.com/gr2m)                                         |

###### Former

- [Timothy Gu](https://github.com/timothygu)
- [Jared Kantrowitz](https://github.com/jkantr)

## License

[MIT](LICENSE.md)

[whatwg-fetch]: https://fetch.spec.whatwg.org/
[response-init]: https://fetch.spec.whatwg.org/#responseinit
[node-readable]: https://nodejs.org/api/stream.html#stream_readable_streams
[mdn-headers]: https://developer.mozilla.org/en-US/docs/Web/API/Headers
[error-handling.md]: https://github.com/node-fetch/node-fetch/blob/master/docs/ERROR-HANDLING.md
[FormData]: https://developer.mozilla.org/en-US/docs/Web/API/FormData
[Blob]: https://developer.mozilla.org/en-US/docs/Web/API/Blob
[File]: https://developer.mozilla.org/en-US/docs/Web/API/File


### node modules - resolve-pkg-maps - README

# resolve-pkg-maps

Utils to resolve `package.json` subpath & conditional [`exports`](https://nodejs.org/api/packages.html#exports)/[`imports`](https://nodejs.org/api/packages.html#imports) in resolvers.

Implements the [ESM resolution algorithm](https://nodejs.org/api/esm.html#resolver-algorithm-specification). Tested [against Node.js](/tests/) for accuracy.

<sub>Support this project by ⭐️ starring and sharing it. [Follow me](https://github.com/privatenumber) to see what other cool projects I'm working on! ❤️</sub>

## Usage

### Resolving `exports`

_utils/package.json_
```json5
{
    // ...
    "exports": {
        "./reverse": {
            "require": "./file.cjs",
            "default": "./file.mjs"
        }
    },
    // ...
}
```

```ts
import { resolveExports } from 'resolve-pkg-maps'

const [packageName, packageSubpath] = parseRequest('utils/reverse')

const resolvedPaths: string[] = resolveExports(
    getPackageJson(packageName).exports,
    packageSubpath,
    ['import', ...otherConditions]
)
// => ['./file.mjs']
```

### Resolving `imports`

_package.json_
```json5
{
    // ...
    "imports": {
        "#supports-color": {
            "node": "./index.js",
            "default": "./browser.js"
        }
    },
    // ...
}
```

```ts
import { resolveImports } from 'resolve-pkg-maps'

const resolvedPaths: string[] = resolveImports(
    getPackageJson('.').imports,
    '#supports-color',
    ['node', ...otherConditions]
)
// => ['./index.js']
```

## API

### resolveExports(exports, request, conditions)

Returns: `string[]`

Resolves the `request` based on `exports` and `conditions`. Returns an array of paths (e.g. in case a fallback array is matched).

#### exports

Type:
```ts
type Exports = PathOrMap | readonly PathOrMap[]

type PathOrMap = string | PathConditionsMap

type PathConditionsMap = {
    [condition: string]: PathConditions | null
}
```

The [`exports` property](https://nodejs.org/api/packages.html#exports) value in `package.json`.

#### request

Type: `string`

The package subpath to resolve. Assumes a normalized path is passed in (eg. [repeating slashes `//`](https://github.com/nodejs/node/issues/44316)).

It _should not_ start with `/` or `./`.

Example: if the full import path is `some-package/subpath/file`, the request is `subpath/file`.


#### conditions

Type: `readonly string[]`

An array of conditions to use when resolving the request. For reference, Node.js's default conditions are [`['node', 'import']`](https://nodejs.org/api/esm.html#:~:text=defaultConditions%20is%20the%20conditional%20environment%20name%20array%2C%20%5B%22node%22%2C%20%22import%22%5D.).

The order of this array does not matter; the order of condition keys in the export map is what matters instead.

Not all conditions in the array need to be met to resolve the request. It just needs enough to resolve to a path.

---

### resolveImports(imports, request, conditions)

Returns: `string[]`

Resolves the `request` based on `imports` and `conditions`. Returns an array of paths (e.g. in case a fallback array is matched).

#### imports

Type:
```ts
type Imports = {
    [condition: string]: PathOrMap | readonly PathOrMap[] | null
}

type PathOrMap = string | Imports
```

The [`imports` property](https://nodejs.org/api/packages.html#imports) value in `package.json`.


#### request

Type: `string`

The request resolve. Assumes a normalized path is passed in (eg. [repeating slashes `//`](https://github.com/nodejs/node/issues/44316)).

> **Note:** In Node.js, imports resolutions are limited to requests prefixed with `#`. However, this package does not enforce that requirement in case you want to add custom support for non-prefixed entries.

#### conditions

Type: `readonly string[]`

An array of conditions to use when resolving the request. For reference, Node.js's default conditions are [`['node', 'import']`](https://nodejs.org/api/esm.html#:~:text=defaultConditions%20is%20the%20conditional%20environment%20name%20array%2C%20%5B%22node%22%2C%20%22import%22%5D.).

The order of this array does not matter; the order of condition keys in the import map is what matters instead.

Not all conditions in the array need to be met to resolve the request. It just needs enough to resolve to a path.

---

### Errors

#### `ERR_PACKAGE_PATH_NOT_EXPORTED`
 - If the request is not exported by the export map

#### `ERR_PACKAGE_IMPORT_NOT_DEFINED`
  - If the request is not defined by the import map

#### `ERR_INVALID_PACKAGE_CONFIG`

  - If an object contains properties that are both paths and conditions (e.g. start with and without `.`)
  - If an object contains numeric properties 
  
#### `ERR_INVALID_PACKAGE_TARGET`
  - If a resolved exports path is not a valid path (e.g. not relative or has protocol)
  - If a resolved path includes `..` or `node_modules`
  - If a resolved path is a type that cannot be parsed

## FAQ

### Why do the APIs return an array of paths?

`exports`/`imports` supports passing in a [fallback array](https://github.com/jkrems/proposal-pkg-exports/#:~:text=Whenever%20there%20is,to%20new%20cases.) to provide fallback paths if the previous one is invalid:

```json5
{
    "exports": {
        "./feature": [
            "./file.js",
            "./fallback.js"
        ]
    }
}
```

Node.js's implementation [picks the first valid path (without attempting to resolve it)](https://github.com/nodejs/node/issues/44282#issuecomment-1220151715) and throws an error if it can't be resolved. Node.js's fallback array is designed for [forward compatibility with features](https://github.com/jkrems/proposal-pkg-exports/#:~:text=providing%20forwards%20compatiblitiy%20for%20new%20features) (e.g. protocols) that can be immediately/inexpensively validated:

```json5
{
    "exports": {
        "./core-polyfill": ["std:core-module", "./core-polyfill.js"]
    }
}
```

However, [Webpack](https://webpack.js.org/guides/package-exports/#alternatives) and [TypeScript](https://github.com/microsoft/TypeScript/blob/71e852922888337ef51a0e48416034a94a6c34d9/src/compiler/moduleSpecifiers.ts#L695) have deviated from this behavior and attempts to resolve the next path if a path cannot be resolved.

By returning an array of matched paths instead of just the first one, the user can decide which behavior to adopt.

### How is it different from [`resolve.exports`](https://github.com/lukeed/resolve.exports)?

`resolve.exports` only resolves `exports`, whereas this package resolves both `exports` & `imports`. This comparison will only cover resolving `exports`.

- Despite it's name, `resolve.exports` handles more than just `exports`. It takes in the entire `package.json` object to handle resolving `.` and [self-references](https://nodejs.org/api/packages.html#self-referencing-a-package-using-its-name). This package only accepts `exports`/`imports` maps from `package.json` and is scoped to only resolving what's defined in the maps.

- `resolve.exports` accepts the full request (e.g. `foo/bar`), whereas this package only accepts the requested subpath (e.g. `bar`).

- `resolve.exports` only returns the first result in a fallback array. This package returns an array of results for the user to decide how to handle it.

- `resolve.exports` supports [subpath folder mapping](https://nodejs.org/docs/latest-v16.x/api/packages.html#subpath-folder-mappings) (deprecated in Node.js v16 & removed in v17) but seems to [have a bug](https://github.com/lukeed/resolve.exports/issues/7). This package does not support subpath folder mapping because Node.js has removed it in favor of using subpath patterns.

- Neither resolvers rely on a file-system

This package also addresses many of the bugs in `resolve.exports`, demonstrated in [this test](/tests/exports/compare-resolve.exports.ts).


### node modules - tsx - README

<h1 align="center">
<br>
<picture>
	<source media="(prefers-color-scheme: dark)" srcset=".github/logo-dark.svg">
	<img width="160" alt="tsx" src=".github/logo-light.svg">
</picture>
<br><br>
<a href="https://npm.im/tsx"><img src="https://badgen.net/npm/v/tsx"></a> <a href="https://npm.im/tsx"><img src="https://badgen.net/npm/dm/tsx"></a>
</h1>

<p align="center">
TypeScript Execute (tsx): The easiest way to run TypeScript in Node.js
<br><br>
<a href="https://tsx.is">Documentation</a>&nbsp;&nbsp;&nbsp;&nbsp;|&nbsp;&nbsp;&nbsp;&nbsp;<a href="https://tsx.is/getting-started">Getting started →</a>
</p>

<br>

<p align="center">
	<a href="https://github.com/sponsors/privatenumber/sponsorships?tier_id=398771"><img width="412" src="https://raw.githubusercontent.com/privatenumber/sponsors/master/banners/assets/donate.webp"></a>
	<a href="https://github.com/sponsors/privatenumber/sponsorships?tier_id=416984"><img width="412" src="https://raw.githubusercontent.com/privatenumber/sponsors/master/banners/assets/sponsor.webp"></a>
</p>
<p align="center"><sup><i>Already a sponsor?</i> Join the discussion in the <a href="https://github.com/pvtnbr/tsx">Development repo</a>!</sup></p>

## Sponsors

<p align="center">
	<a href="https://github.com/sponsors/privatenumber">
		<img src="https://cdn.jsdelivr.net/gh/privatenumber/sponsors/sponsorkit/sponsors.svg">
	</a>
</p>


### node modules - typescript - README

# TypeScript

[![CI](https://github.com/microsoft/TypeScript/actions/workflows/ci.yml/badge.svg)](https://github.com/microsoft/TypeScript/actions/workflows/ci.yml)
[![npm version](https://badge.fury.io/js/typescript.svg)](https://www.npmjs.com/package/typescript)
[![Downloads](https://img.shields.io/npm/dm/typescript.svg)](https://www.npmjs.com/package/typescript)
[![OpenSSF Scorecard](https://api.securityscorecards.dev/projects/github.com/microsoft/TypeScript/badge)](https://securityscorecards.dev/viewer/?uri=github.com/microsoft/TypeScript)


[TypeScript](https://www.typescriptlang.org/) is a language for application-scale JavaScript. TypeScript adds optional types to JavaScript that support tools for large-scale JavaScript applications for any browser, for any host, on any OS. TypeScript compiles to readable, standards-based JavaScript. Try it out at the [playground](https://www.typescriptlang.org/play/), and stay up to date via [our blog](https://blogs.msdn.microsoft.com/typescript) and [Twitter account](https://twitter.com/typescript).

Find others who are using TypeScript at [our community page](https://www.typescriptlang.org/community/).

## Installing

For the latest stable version:

```bash
npm install -D typescript
```

For our nightly builds:

```bash
npm install -D typescript@next
```

## Contribute

There are many ways to [contribute](https://github.com/microsoft/TypeScript/blob/main/CONTRIBUTING.md) to TypeScript.
* [Submit bugs](https://github.com/microsoft/TypeScript/issues) and help us verify fixes as they are checked in.
* Review the [source code changes](https://github.com/microsoft/TypeScript/pulls).
* Engage with other TypeScript users and developers on [StackOverflow](https://stackoverflow.com/questions/tagged/typescript).
* Help each other in the [TypeScript Community Discord](https://discord.gg/typescript).
* Join the [#typescript](https://twitter.com/search?q=%23TypeScript) discussion on Twitter.
* [Contribute bug fixes](https://github.com/microsoft/TypeScript/blob/main/CONTRIBUTING.md).

This project has adopted the [Microsoft Open Source Code of Conduct](https://opensource.microsoft.com/codeofconduct/). For more information see
the [Code of Conduct FAQ](https://opensource.microsoft.com/codeofconduct/faq/) or contact [opencode@microsoft.com](mailto:opencode@microsoft.com)
with any additional questions or comments.

## Documentation

*  [TypeScript in 5 minutes](https://www.typescriptlang.org/docs/handbook/typescript-in-5-minutes.html)
*  [Programming handbook](https://www.typescriptlang.org/docs/handbook/intro.html)
*  [Homepage](https://www.typescriptlang.org/)

## Roadmap

For details on our planned features and future direction, please refer to our [roadmap](https://github.com/microsoft/TypeScript/wiki/Roadmap).


### node modules - typescript - SECURITY

<!-- BEGIN MICROSOFT SECURITY.MD V0.0.9 BLOCK -->

## Security

Microsoft takes the security of our software products and services seriously, which includes all source code repositories managed through our GitHub organizations, which include [Microsoft](https://github.com/Microsoft), [Azure](https://github.com/Azure), [DotNet](https://github.com/dotnet), [AspNet](https://github.com/aspnet) and [Xamarin](https://github.com/xamarin).

If you believe you have found a security vulnerability in any Microsoft-owned repository that meets [Microsoft's definition of a security vulnerability](https://aka.ms/security.md/definition), please report it to us as described below.

## Reporting Security Issues

**Please do not report security vulnerabilities through public GitHub issues.**

Instead, please report them to the Microsoft Security Response Center (MSRC) at [https://msrc.microsoft.com/create-report](https://aka.ms/security.md/msrc/create-report).

If you prefer to submit without logging in, send email to [secure@microsoft.com](mailto:secure@microsoft.com).  If possible, encrypt your message with our PGP key; please download it from the [Microsoft Security Response Center PGP Key page](https://aka.ms/security.md/msrc/pgp).

You should receive a response within 24 hours. If for some reason you do not, please follow up via email to ensure we received your original message. Additional information can be found at [microsoft.com/msrc](https://www.microsoft.com/msrc). 

Please include the requested information listed below (as much as you can provide) to help us better understand the nature and scope of the possible issue:

  * Type of issue (e.g. buffer overflow, SQL injection, cross-site scripting, etc.)
  * Full paths of source file(s) related to the manifestation of the issue
  * The location of the affected source code (tag/branch/commit or direct URL)
  * Any special configuration required to reproduce the issue
  * Step-by-step instructions to reproduce the issue
  * Proof-of-concept or exploit code (if possible)
  * Impact of the issue, including how an attacker might exploit the issue

This information will help us triage your report more quickly.

If you are reporting for a bug bounty, more complete reports can contribute to a higher bounty award. Please visit our [Microsoft Bug Bounty Program](https://aka.ms/security.md/msrc/bounty) page for more details about our active programs.

## Preferred Languages

We prefer all communications to be in English.

## Policy

Microsoft follows the principle of [Coordinated Vulnerability Disclosure](https://aka.ms/security.md/cvd).

<!-- END MICROSOFT SECURITY.MD BLOCK -->


### node modules - undici-types - README

# undici-types

This package is a dual-publish of the [undici](https://www.npmjs.com/package/undici) library types. The `undici` package **still contains types**. This package is for users who _only_ need undici types (such as for `@types/node`). It is published alongside every release of `undici`, so you can always use the same version.

- [GitHub nodejs/undici](https://github.com/nodejs/undici)
- [Undici Documentation](https://undici.nodejs.org/#/)


### node modules - web-streams-polyfill - README

# web-streams-polyfill

Web Streams, based on the WHATWG spec reference implementation.  

[![build status](https://api.travis-ci.com/MattiasBuelens/web-streams-polyfill.svg?branch=master)](https://travis-ci.com/MattiasBuelens/web-streams-polyfill)
[![npm version](https://img.shields.io/npm/v/web-streams-polyfill.svg)](https://www.npmjs.com/package/web-streams-polyfill)
[![license](https://img.shields.io/npm/l/web-streams-polyfill.svg)](https://github.com/MattiasBuelens/web-streams-polyfill/blob/master/LICENSE)

## Links

 - [Official spec][spec]
 - [Reference implementation][ref-impl]

## Usage

This library comes in multiple variants:
* `web-streams-polyfill`: a polyfill that replaces the native stream implementations.
  Recommended for use in web apps supporting older browsers through a `<script>` tag.
* `web-streams-polyfill/es6`: a polyfill targeting ES2015+ environments.
  Recommended for use in web apps supporting modern browsers through a `<script>` tag.
* `web-streams-polyfill/es2018`: a polyfill targeting ES2018+ environments.
* `web-streams-polyfill/ponyfill`: a [ponyfill] that provides
  the stream implementations without replacing any globals.
  Recommended for use in legacy Node applications, or in web libraries supporting older browsers.
* `web-streams-polyfill/ponyfill/es6`: a ponyfill targeting ES2015+ environments.
  Recommended for use in Node 6+ applications, or in web libraries supporting modern browsers.
* `web-streams-polyfill/ponyfill/es2018`: a ponyfill targeting ES2018+ environments.
  Recommended for use in Node 10+ applications.

Each variant also includes TypeScript type definitions, compatible with the DOM type definitions for streams included in TypeScript.

Usage as a polyfill:
```html
<!-- option 1: hosted by unpkg CDN -->
<script src="https://unpkg.com/web-streams-polyfill/dist/polyfill.min.js"></script>
<!-- option 2: self hosted -->
<script src="/path/to/web-streams-polyfill/dist/polyfill.min.js"></script>
<script>
var readable = new ReadableStream();
</script>
```
Usage as a Node module:
```js
var streams = require("web-streams-polyfill/ponyfill");
var readable = new streams.ReadableStream();
```
Usage as a ES2015 module:
```js
import { ReadableStream } from "web-streams-polyfill/ponyfill";
const readable = new ReadableStream();
```

## Compatibility

The `polyfill` and `ponyfill` variants work in any ES5-compatible environment that has a global `Promise`.
If you need to support older browsers or Node versions that do not have a native `Promise` implementation
(check the [support table][promise-support]), you must first include a `Promise` polyfill
(e.g. [promise-polyfill][promise-polyfill]).

The `polyfill/es6` and `ponyfill/es6` variants work in any ES2015-compatible environment.

The `polyfill/es2018` and `ponyfill/es2018` variants work in any ES2018-compatible environment.

[Async iterable support for `ReadableStream`][rs-asynciterator] is available in all variants, but requires an ES2018-compatible environment or a polyfill for `Symbol.asyncIterator`.

[`WritableStreamDefaultController.signal`][ws-controller-signal] is available in all variants, but requires a global `AbortController` constructor. If necessary, consider using a polyfill such as [abortcontroller-polyfill].

[Reading with a BYOB reader][mdn-byob-read] is available in all variants, but requires `ArrayBuffer.prototype.transfer()` or `structuredClone()` to exist in order to correctly transfer the given view's buffer. If not available, then the buffer won't be transferred during the read.

## Compliance

The polyfill implements [version `4dc123a` (13 Nov 2023)][spec-snapshot] of the streams specification.

The polyfill is tested against the same [web platform tests][wpt] that are used by browsers to test their native implementations.
The polyfill aims to pass all tests, although it allows some exceptions for practical reasons:
* The `es2018` variant passes all of the tests.
* The `es6` variant passes the same tests as the `es2018` variant, except for the [test for the prototype of `ReadableStream`'s async iterator][wpt-async-iterator-prototype].
  Retrieving the correct `%AsyncIteratorPrototype%` requires using an async generator (`async function* () {}`), which is invalid syntax before ES2018.
  Instead, the polyfill [creates its own version][stub-async-iterator-prototype] which is functionally equivalent to the real prototype.
* The `es5` variant passes the same tests as the `es6` variant, except for various tests about specific characteristics of the constructors, properties and methods.
  These test failures do not affect the run-time behavior of the polyfill.
  For example:
  * The `name` property of down-leveled constructors is incorrect.
  * The `length` property of down-leveled constructors and methods with optional arguments is incorrect.
  * Not all properties and methods are correctly marked as non-enumerable.
  * Down-leveled class methods are not correctly marked as non-constructable.

The type definitions are compatible with the built-in stream types of TypeScript 3.3.

## Contributors

Thanks to these people for their work on [the original polyfill][creatorrr-polyfill]:

 - Diwank Singh Tomer ([creatorrr](https://github.com/creatorrr))
 - Anders Riutta ([ariutta](https://github.com/ariutta))

[spec]: https://streams.spec.whatwg.org
[ref-impl]: https://github.com/whatwg/streams
[ponyfill]: https://github.com/sindresorhus/ponyfill
[promise-support]: https://kangax.github.io/compat-table/es6/#test-Promise
[promise-polyfill]: https://www.npmjs.com/package/promise-polyfill
[rs-asynciterator]: https://streams.spec.whatwg.org/#rs-asynciterator
[ws-controller-signal]: https://streams.spec.whatwg.org/#ws-default-controller-signal
[abortcontroller-polyfill]: https://www.npmjs.com/package/abortcontroller-polyfill
[mdn-byob-read]: https://developer.mozilla.org/en-US/docs/Web/API/ReadableStreamBYOBReader/read
[spec-snapshot]: https://streams.spec.whatwg.org/commit-snapshots/4dc123a6e7f7ba89a8c6a7975b021156f39cab52/
[wpt]: https://github.com/web-platform-tests/wpt/tree/2a298b616b7c865917d7198a287310881cbfdd8d/streams
[wpt-async-iterator-prototype]: https://github.com/web-platform-tests/wpt/blob/2a298b616b7c865917d7198a287310881cbfdd8d/streams/readable-streams/async-iterator.any.js#L24
[stub-async-iterator-prototype]: https://github.com/MattiasBuelens/web-streams-polyfill/blob/v2.0.0/src/target/es5/stub/async-iterator-prototype.ts
[creatorrr-polyfill]: https://github.com/creatorrr/web-streams-polyfill

## 关联笔记
- [[11-智囊团与知识蒸馏/MOC]]
- [[popular-web-designs]]
- [[休闲娱乐-索引]]