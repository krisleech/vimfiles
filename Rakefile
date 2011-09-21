task :install do
  unless File.exists?('~/.vim')
    puts 'Vim does not appear to be installed'
    exit
  end

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
  puts 'Finished'
end

desc 'Update to latest and greatest'
task :update do
  system('git pull origin master') 
  puts 'Install Bundles'
  system "vim -c BundleInstall -c q -c q"
  puts 'Finished'
end
