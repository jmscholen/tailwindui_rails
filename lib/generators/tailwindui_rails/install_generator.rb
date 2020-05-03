# frozen_string_literal: true

require 'rails/generators/base'

module TailwinduiRails
  module Generators
    class InstallGenerator < Rails::Generators::Base
      source_root File.expand_path("../../templates", __FILE__)

      def yarn_add_tailwindcss_and_ui
        run "yarn --ignore-engines add tailwindcss@1.4 @tailwindcss/ui --tilde"
      end

      def init_tailwindcss_and_add_tailwindui
        run "./node_modules/.bin/tailwind init ./tailwind.config.js"
        prepend_to_file  "./tailwind.config.js", "const defaultTheme = require('tailwindcss/defaultTheme');\n\n"
        inject_into_file "./tailwind.config.js", "\n      fontFamily: {\nsans: ['Inter var', ...defaultTheme.fontFamily.sans],\n}", after: "extend: {"
        inject_into_file "./tailwind.config.js", "\n    require('@tailwindcss/ui'),\n", after: "plugins: ["
      end

      def update_application_layout
        gsub_file "app/views/layouts/application.html.erb", /stylesheet_link_tag/, "stylesheet_pack_tag"
        inject_into_file "app/views/layouts/application.html.erb", '    <script src="https://cdn.jsdelivr.net/gh/alpinejs/alpine@v2.0.1/dist/alpine.js" defer></script>', after: "<%= javascript_pack_tag 'application', 'data-turbolinks-track': 'reload' %>\n"
      end

      def setup_tailwindcss
        template "tailwind.css", "app/javascript/stylesheets/application.scss"
        append_to_file "app/javascript/packs/application.js", 'import "stylesheets/application.scss"'
        run "rm -rf app/assets/stylesheets/application.css"
      end

      def configure_postcssrc
        inject_into_file "postcss.config.js", "    require('tailwindcss'),\n", after: "require('postcss-import'),\n"
        inject_into_file "postcss.config.js", "    require('autoprefixer'),\n", after: "plugins: [\n"
      end

      def remove_corejs_3
        gsub_file "babel.config.js", /regenerator: true,\n          corejs: 3/, "regenerator: true,"
      end
    end
  end
end




