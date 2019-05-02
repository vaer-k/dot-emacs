## Installing

1. Close Emacs.
2. Delete `~/.emacs` or `~/.emacs.d` if they exist. (Windows users, your
   emacs files will probably live in
   `C:\Users\your_user_name\AppData\Roaming\`. So, for example, you
   would delete `C:\Users\skeletor\AppData\Roaming\.emacs.d`.) This is
   where Emacs looks for configuration files, and deleting these files
   and directories will ensure that you start with a clean slate.
3. Clone and rename dir to `~/.emacs.d`.
4. For Python support, run `pip install jedi flake8 autopep8 yapf`
5. `neotree` requires some special fonts: `M-x all-the-icons-install-fonts`. I have experienced an issue with this function where the fonts aren't properly downloaded. You may have to manually download those fonts. See this issue for more info: https://github.com/domtronn/all-the-icons.el/issues/134

Then open Emacs.

## Organization

I've tried to separate everything logically and document the purpose
of every line. [`init.el`](./init.el) acts as a kind of table of
contents.  It's a good idea to eventually go through `init.el` and the
files under the `customizations` directory so that you know exactly
what's going on.
