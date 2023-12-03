module.exports = {
  entry: './app/javascript/components/index.jsx',
  resolve: {
    extensions: ['.js', '.jsx']
  },
  module: {
    rules: [
      // Use esbuild to compile JavaScript & TypeScript
      {
          // Match `.js`, `.jsx`, `.ts` or `.tsx` files
          test: /\.[jt]sx?$/,
          loader: 'esbuild-loader',
          options: {
              // JavaScript version to compile to
              target: 'es2015'
          }
      },
    ],
  },
};
