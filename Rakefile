task :install do
  root = File.expand_path(File.dirname(__FILE__))

  puts 'Install Bundles'
  system "vim -c BundleInstall -c q -c q -u bundles.vim"

  puts 'Compile command-t extensions'
  cmds = [
    "cd #{File.join(root, 'bundle', 'command-t', 'ruby', 'command-t')}",
    "ruby extconf.rb",
    "make"
  ]

  system cmds.join(' && ')

  puts 'Install additional snippets'

  cmds = [
"cd #{File.join(root, 'bundle', 'snipmate-snippets')}",
"rake deploy_local"
  ]

  system cmds.join(' && ')
end
