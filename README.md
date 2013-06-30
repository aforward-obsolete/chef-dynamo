# Overview #
Chef cookbook for [dynamo](https://github.com/elixir-lang/dynamo), a web framework for elixir.

# How to add to your cookbook repository #

Consider using our chef-solo bootstrap project (includes a simple deployment script for synching with your remote servers).

More information at: https://github.com/aforward/chef-bootstrap

```
git clone https://github.com/aforward/chef-bootstrap YOUR_REPO_ROOT
cd YOUR_REPO_ROOT
cp ~/.ssh/id_dsa.pub ./bootstrap/root_authorized_keys
bundle install
```

Then, consider using a git submodule so that you can monitor changes in this cookbook separately.

For more info, check out the [Pro Git](http://progit.org/book/ch6-6.html) book.

```
cd YOUR_REPO_ROOT
git submodule add https://github.com/aforward/chef-dynamo.git chef/cookbooks/dynamo
```

History
=======

2013-06-30
------------
Initial commit
