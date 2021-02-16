module.exports = {
   plugins: [
      [
         "postcss-preset-env",
         {
            stage: 2,
            browsers: COMPATIBILITY,
            autoprefixer: { grid: true, cascade: false },
            features: { 'nesting-rules': true }
         },
      ],
   ],
};