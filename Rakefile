task :install do
  root = File.expand_path(File.dirname(__FILE__))

  puts 'Installing Bundles'
  system "vim -c BundleInstall! -c q -c q -u bundles.vim"

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

  puts '*' * 79
  puts
  puts 'All done!'
  puts 'Be sure to checkout the helpful links in the README'
  puts 'Issues/Wiki: https://github.com/krisleech/vimfiles'
  puts
  puts '*' * 79
end

desc 'Update to latest and greatest'
task :update do
  system('git pull origin master') 
  puts 'Updating Bundles'
  system "vim -c BundleInstall! -c BundleClean! -c q -c q"

  puts '*' * 79
  puts
  puts 'Finished'
  puts
  puts '*' * 79
end
