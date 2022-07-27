# This file has been generated by node2nix 1.11.1. Do not edit!

{nodeEnv, fetchurl, fetchgit, nix-gitignore, stdenv, lib, globalBuildInputs ? []}:

let
  sources = {
    "core-js-3.23.5" = {
      name = "core-js";
      packageName = "core-js";
      version = "3.23.5";
      src = fetchurl {
        url = "https://registry.npmjs.org/core-js/-/core-js-3.23.5.tgz";
        sha512 = "7Vh11tujtAZy82da4duVreQysIoO2EvVrur7y6IzZkH1IHPSekuDi8Vuw1+YKjkbfWLRD7Nc9ICQ/sIUDutcyg==";
      };
    };
    "core_d-5.0.1" = {
      name = "core_d";
      packageName = "core_d";
      version = "5.0.1";
      src = fetchurl {
        url = "https://registry.npmjs.org/core_d/-/core_d-5.0.1.tgz";
        sha512 = "37lZyhJY1hzgFbfU4LzY4zL09QPwPfV2W/3YBOtN7mkdvVaeP1OVnDZI6zxggtlPwG/BuE5wIr0xptlVJk5EPA==";
      };
    };
    "has-flag-4.0.0" = {
      name = "has-flag";
      packageName = "has-flag";
      version = "4.0.0";
      src = fetchurl {
        url = "https://registry.npmjs.org/has-flag/-/has-flag-4.0.0.tgz";
        sha512 = "EykJT/Q1KjTWctppgIAgfSO0tKVuZUjhgMr17kqTumMl6Afv3EISleU7qZUzoXDFTAHTDC4NOoG/ZxU3EvlMPQ==";
      };
    };
    "jsonc-parser-3.1.0" = {
      name = "jsonc-parser";
      packageName = "jsonc-parser";
      version = "3.1.0";
      src = fetchurl {
        url = "https://registry.npmjs.org/jsonc-parser/-/jsonc-parser-3.1.0.tgz";
        sha512 = "DRf0QjnNeCUds3xTjKlQQ3DpJD51GvDjJfnxUVWg6PZTo2otSm+slzNAxU/35hF8/oJIKoG9slq30JYOsF2azg==";
      };
    };
    "nanolru-1.0.0" = {
      name = "nanolru";
      packageName = "nanolru";
      version = "1.0.0";
      src = fetchurl {
        url = "https://registry.npmjs.org/nanolru/-/nanolru-1.0.0.tgz";
        sha512 = "GyQkE8M32pULhQk7Sko5raoIbPalAk90ICG+An4fq6fCsFHsP6fB2K46WGXVdoJpy4SGMnZ/EKbo123fZJomWg==";
      };
    };
    "picomatch-2.3.1" = {
      name = "picomatch";
      packageName = "picomatch";
      version = "2.3.1";
      src = fetchurl {
        url = "https://registry.npmjs.org/picomatch/-/picomatch-2.3.1.tgz";
        sha512 = "JU3teHTNjmE2VCGFzuY8EXzCDVwEqB2a8fsIvwaStHhAWJEeVd1o1QD80CU6+ZdEXXSLbSsuLwJjkCBWqRQUVA==";
      };
    };
    "prettier-2.7.1" = {
      name = "prettier";
      packageName = "prettier";
      version = "2.7.1";
      src = fetchurl {
        url = "https://registry.npmjs.org/prettier/-/prettier-2.7.1.tgz";
        sha512 = "ujppO+MkdPqoVINuDFDRLClm7D78qbDt0/NR+wp5FqEZOoTNAjPHWj17QRhu7geIHJfcNhRk1XVQmF8Bp3ye+g==";
      };
    };
    "regenerator-runtime-0.13.9" = {
      name = "regenerator-runtime";
      packageName = "regenerator-runtime";
      version = "0.13.9";
      src = fetchurl {
        url = "https://registry.npmjs.org/regenerator-runtime/-/regenerator-runtime-0.13.9.tgz";
        sha512 = "p3VT+cOEgxFsRRA9X4lkI1E+k2/CtnKtU4gcxyaCUreilL/vqI6CdZ3wxVUx3UOUg+gnUOQQcRI7BmSI656MYA==";
      };
    };
    "request-light-0.5.8" = {
      name = "request-light";
      packageName = "request-light";
      version = "0.5.8";
      src = fetchurl {
        url = "https://registry.npmjs.org/request-light/-/request-light-0.5.8.tgz";
        sha512 = "3Zjgh+8b5fhRJBQZoy+zbVKpAQGLyka0MPgW3zruTF4dFFJ8Fqcfu9YsAvi/rvdcaTeWG3MkbZv4WKxAn/84Lg==";
      };
    };
    "supports-color-8.1.1" = {
      name = "supports-color";
      packageName = "supports-color";
      version = "8.1.1";
      src = fetchurl {
        url = "https://registry.npmjs.org/supports-color/-/supports-color-8.1.1.tgz";
        sha512 = "MpUEN2OodtUzxvKQl72cUF7RQ5EiHsGvSsVG0ia9c5RbWGL2CI4C7EpPS8UTBIplnlzZiNuV56w+FuNxy3ty2Q==";
      };
    };
    "typescript-4.7.4" = {
      name = "typescript";
      packageName = "typescript";
      version = "4.7.4";
      src = fetchurl {
        url = "https://registry.npmjs.org/typescript/-/typescript-4.7.4.tgz";
        sha512 = "C0WQT0gezHuw6AdY1M2jxUO83Rjf0HP7Sk1DtXj6j1EwkQNZrHAg2XPWlq62oqEhYvONq5pkC2Y9oPljWToLmQ==";
      };
    };
    "vscode-css-languageservice-6.0.1" = {
      name = "vscode-css-languageservice";
      packageName = "vscode-css-languageservice";
      version = "6.0.1";
      src = fetchurl {
        url = "https://registry.npmjs.org/vscode-css-languageservice/-/vscode-css-languageservice-6.0.1.tgz";
        sha512 = "81n/eeYuJwQdvpoy6IK1258PtPbO720fl13FcJ5YQECPyHMFkmld1qKHwPJkyLbLPfboqJPM53ys4xW8v+iBVw==";
      };
    };
    "vscode-html-languageservice-5.0.1" = {
      name = "vscode-html-languageservice";
      packageName = "vscode-html-languageservice";
      version = "5.0.1";
      src = fetchurl {
        url = "https://registry.npmjs.org/vscode-html-languageservice/-/vscode-html-languageservice-5.0.1.tgz";
        sha512 = "OYsyn5HGAhxs0OIG+M0jc34WnftLtD67Wg7+TfrYwvf0waOkkr13zUqtdrVm2JPNQ6fJx+qnuM+vTbq7o1dCdQ==";
      };
    };
    "vscode-json-languageservice-5.1.0" = {
      name = "vscode-json-languageservice";
      packageName = "vscode-json-languageservice";
      version = "5.1.0";
      src = fetchurl {
        url = "https://registry.npmjs.org/vscode-json-languageservice/-/vscode-json-languageservice-5.1.0.tgz";
        sha512 = "D5612D7h/Gh4A0JmdttPveWzT9dur21WXvBHWKPdOt0sLO6ILz8vN6+IzWnvwDOVAEFTpzIAMVMZwbKZkwGGiA==";
      };
    };
    "vscode-jsonrpc-8.0.2" = {
      name = "vscode-jsonrpc";
      packageName = "vscode-jsonrpc";
      version = "8.0.2";
      src = fetchurl {
        url = "https://registry.npmjs.org/vscode-jsonrpc/-/vscode-jsonrpc-8.0.2.tgz";
        sha512 = "RY7HwI/ydoC1Wwg4gJ3y6LpU9FJRZAUnTYMXthqhFXXu77ErDd/xkREpGuk4MyYkk4a+XDWAMqe0S3KkelYQEQ==";
      };
    };
    "vscode-languageserver-8.0.2" = {
      name = "vscode-languageserver";
      packageName = "vscode-languageserver";
      version = "8.0.2";
      src = fetchurl {
        url = "https://registry.npmjs.org/vscode-languageserver/-/vscode-languageserver-8.0.2.tgz";
        sha512 = "bpEt2ggPxKzsAOZlXmCJ50bV7VrxwCS5BI4+egUmure/oI/t4OlFzi/YNtVvY24A2UDOZAgwFGgnZPwqSJubkA==";
      };
    };
    "vscode-languageserver-protocol-3.17.2" = {
      name = "vscode-languageserver-protocol";
      packageName = "vscode-languageserver-protocol";
      version = "3.17.2";
      src = fetchurl {
        url = "https://registry.npmjs.org/vscode-languageserver-protocol/-/vscode-languageserver-protocol-3.17.2.tgz";
        sha512 = "8kYisQ3z/SQ2kyjlNeQxbkkTNmVFoQCqkmGrzLH6A9ecPlgTbp3wDTnUNqaUxYr4vlAcloxx8zwy7G5WdguYNg==";
      };
    };
    "vscode-languageserver-textdocument-1.0.5" = {
      name = "vscode-languageserver-textdocument";
      packageName = "vscode-languageserver-textdocument";
      version = "1.0.5";
      src = fetchurl {
        url = "https://registry.npmjs.org/vscode-languageserver-textdocument/-/vscode-languageserver-textdocument-1.0.5.tgz";
        sha512 = "1ah7zyQjKBudnMiHbZmxz5bYNM9KKZYz+5VQLj+yr8l+9w3g+WAhCkUkWbhMEdC5u0ub4Ndiye/fDyS8ghIKQg==";
      };
    };
    "vscode-languageserver-types-3.17.2" = {
      name = "vscode-languageserver-types";
      packageName = "vscode-languageserver-types";
      version = "3.17.2";
      src = fetchurl {
        url = "https://registry.npmjs.org/vscode-languageserver-types/-/vscode-languageserver-types-3.17.2.tgz";
        sha512 = "zHhCWatviizPIq9B7Vh9uvrH6x3sK8itC84HkamnBWoDFJtzBf7SWlpLCZUit72b3os45h6RWQNC9xHRDF8dRA==";
      };
    };
    "vscode-markdown-languageservice-0.0.0-alpha.11" = {
      name = "vscode-markdown-languageservice";
      packageName = "vscode-markdown-languageservice";
      version = "0.0.0-alpha.11";
      src = fetchurl {
        url = "https://registry.npmjs.org/vscode-markdown-languageservice/-/vscode-markdown-languageservice-0.0.0-alpha.11.tgz";
        sha512 = "syFamf99xx+Q9DkA66+8fbSz2A2LJkyOV+nSziGgAzdDPv4jkb7eWF6l+nUteHTGbRLQ+q0tfkj0A7OovueCSQ==";
      };
    };
    "vscode-nls-5.0.1" = {
      name = "vscode-nls";
      packageName = "vscode-nls";
      version = "5.0.1";
      src = fetchurl {
        url = "https://registry.npmjs.org/vscode-nls/-/vscode-nls-5.0.1.tgz";
        sha512 = "hHQV6iig+M21lTdItKPkJAaWrxALQb/nqpVffakO4knJOh3DrU2SXOMzUzNgo1eADPzu3qSsJY1weCzvR52q9A==";
      };
    };
    "vscode-uri-3.0.3" = {
      name = "vscode-uri";
      packageName = "vscode-uri";
      version = "3.0.3";
      src = fetchurl {
        url = "https://registry.npmjs.org/vscode-uri/-/vscode-uri-3.0.3.tgz";
        sha512 = "EcswR2S8bpR7fD0YPeS7r2xXExrScVMxg4MedACaWHEtx9ftCF/qHG1xGkolzTPcEmjTavCQgbVzHUIdTMzFGA==";
      };
    };
  };
in
{
  "@fsouza/prettierd" = nodeEnv.buildNodePackage {
    name = "_at_fsouza_slash_prettierd";
    packageName = "@fsouza/prettierd";
    version = "0.21.1";
    src = fetchurl {
      url = "https://registry.npmjs.org/@fsouza/prettierd/-/prettierd-0.21.1.tgz";
      sha512 = "xLGvk2csfCqTT3MZfXC7uGxdAy0HkMiYoVz2vCQbxNHCLSLBEoejNcbNh+MPWulRPSVBYN8jJJge6yychCU5KA==";
    };
    dependencies = [
      sources."core_d-5.0.1"
      sources."has-flag-4.0.0"
      sources."nanolru-1.0.0"
      sources."prettier-2.7.1"
      sources."supports-color-8.1.1"
    ];
    buildInputs = globalBuildInputs;
    meta = {
      description = "prettier, as a daemon";
      homepage = "https://github.com/fsouza/prettierd";
      license = "ISC";
    };
    production = true;
    bypassCache = true;
    reconstructLock = true;
  };
  vscode-langservers-extracted = nodeEnv.buildNodePackage {
    name = "vscode-langservers-extracted";
    packageName = "vscode-langservers-extracted";
    version = "4.4.0";
    src = fetchurl {
      url = "https://registry.npmjs.org/vscode-langservers-extracted/-/vscode-langservers-extracted-4.4.0.tgz";
      sha512 = "sWXDFmAvXMUhF5E+6v4e77SwhVPSvdLxGGfkOz15LmAsfKoamKMnW7aARnu6mRWOzqz3hKJqVZN4hnCpdvtLKg==";
    };
    dependencies = [
      sources."core-js-3.23.5"
      sources."jsonc-parser-3.1.0"
      sources."picomatch-2.3.1"
      sources."regenerator-runtime-0.13.9"
      sources."request-light-0.5.8"
      sources."typescript-4.7.4"
      sources."vscode-css-languageservice-6.0.1"
      sources."vscode-html-languageservice-5.0.1"
      sources."vscode-json-languageservice-5.1.0"
      sources."vscode-jsonrpc-8.0.2"
      sources."vscode-languageserver-8.0.2"
      sources."vscode-languageserver-protocol-3.17.2"
      sources."vscode-languageserver-textdocument-1.0.5"
      sources."vscode-languageserver-types-3.17.2"
      sources."vscode-markdown-languageservice-0.0.0-alpha.11"
      sources."vscode-nls-5.0.1"
      sources."vscode-uri-3.0.3"
    ];
    buildInputs = globalBuildInputs;
    meta = {
      description = "HTML/CSS/JSON/ESLint language servers extracted from [vscode](https://github.com/Microsoft/vscode).";
      homepage = "https://github.com/hrsh7th/vscode-langservers-extracted#readme";
      license = "MIT";
    };
    production = true;
    bypassCache = true;
    reconstructLock = true;
  };
}
