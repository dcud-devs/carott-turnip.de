module.exports = function (eleventyConfig) {
  eleventyConfig.addPassthroughCopy("./src/public/");
  eleventyConfig.addPassthroughCopy("./src/assets/");
  eleventyConfig.addPassthroughCopy("./src/_redirects");

  return {
    dir: {
      input: "src",
      output: "_site",
    },
  };
};
