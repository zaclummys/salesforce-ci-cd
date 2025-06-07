import js from "@eslint/js";
import globals from "globals";
import { defineConfig } from "eslint/config";


export default defineConfig({
  "extends": ["@salesforce/eslint-config-lwc/recommended"],
  "overrides": [
    {
      "files": ["*.test.js"],
      "rules": {
        "@lwc/lwc/no-unexpected-wire-adapter-usages": "off"
      },
      "env": {
        "node": true
      }
    }
  ]
});


