// @ts-check
import { defineConfig } from "astro/config";
import starlight from "@astrojs/starlight";

import tailwind from "@astrojs/tailwind";

// https://astro.build/config
export default defineConfig({
  integrations: [
    starlight({
      title: "Flutter",
      customCss: ["./src/tailwind.css"],
      social: {
        github: "https://github.com/thecodexhub",
      },
    }),
    tailwind({
      applyBaseStyles: false,
    }),
  ],
});
