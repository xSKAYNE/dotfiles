{
  programs.git = {
    enable = true;
    userName = "Shane Wilson";
    userEmail = "shane.wilson@myyahoo.com";

    extraConfig = {
      init.defaultBranch = "main";
      push.autoSetupRemote = true;
    };
  };
}
