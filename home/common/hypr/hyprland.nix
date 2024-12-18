{
  wayland.windowManager.hyprland = {
    enable = true;

    settings = {
      monitor = [
        "desc:Hisense Electric Co. Ltd. HISENSE 0x00000001, preferred, auto, 2, bitdepth, 10, vrr, 2"
        "desc:Samsung Display Corp. 0x4161, preferred, auto, 1.2"
      ];

      "$term" = "kitty";
      "$menu" = "rofi -show drun";

      exec-once = "hyprpaper";

      general = {
        gaps_in = 5;
        gaps_out = 20;

        border_size = 2;

        "col.active_border" = "rgba(33ccffee) rgba(00ff99ee) 45deg";
        "col.inactive_border" = "rgba(595959aa)";

        resize_on_border = false;

        allow_tearing = false;

        layout = "dwindle";
      };

      decoration = {
        rounding = 10;

        active_opacity = 0.9;
        inactive_opacity = 0.75;

        shadow = {
          enabled = true;

          range = 4;
          render_power = 3;
          color = "rgba(1a1a1aee)";
        };

        blur = {
          enabled = true;

          size = 1;
          passes = 6;
          new_optimizations = 1;
          noise = 0.0117;
          contrast = 1;
          brightness = 1;
          ignore_opacity = true;
        };
      };

      animations = {
        bezier = [
          "easeOutQuint, 0.23, 1, 0.32, 1"
          "easeInOutCubic, 0.65, 0.05, 0.36, 1"
          "linear, 0, 0, 1, 1"
          "almostLinear, 0.5, 0.5, 0.75, 1.0"
          "quick, 0.15, 0, 0.1, 1"
        ];

        animation = [
          "global, 1, 10, default"
          "border, 1, 5.39, easeOutQuint"
          "windows, 1, 4.79, easeOutQuint"
          "windowsIn, 1, 4.1, easeOutQuint, popin 87%"
          "windowsOut, 1, 1.49, linear, popin 87%"
          "fadeIn, 1, 1.73, almostLinear"
          "fadeOut, 1, 1.46, almostLinear"
          "fade, 1, 3.03, quick"
          "layers, 1, 3.81, easeOutQuint"
          "layersIn, 1, 4, easeOutQuint, fade"
          "layersOut, 1, 1.5, linear, fade"
          "fadeLayersIn, 1, 1.79, almostLinear"
          "fadeLayersOut, 1, 1.39, almostLinear"
          "workspaces, 1, 1.94, almostLinear, fade"
          "workspacesIn, 1, 1.21, almostLinear, fade"
          "workspacesOut, 1, 1.92, almostLinear, fade"
        ];
      };

      dwindle = {
        pseudotile = true;
        preserve_split = true;
      };

      master = {
        new_status = "master";
      };

      misc = {
        force_default_wallpaper = -1;
        disable_hyprland_logo = false;
      };

      input = {
        kb_layout = "gb";
        kb_variant = "";
        kb_model = "";
        kb_options = "";
        kb_rules = "";

        follow_mouse = 1;

        sensitivity = 0;

        touchpad = {
          natural_scroll = false;
        };
      };

      gestures = {
        workspace_swipe = false;
      };

      device = [
        {
          name = "logitech-k400-plus-1";
          natural_scroll = true;
        }

        {
          name = "asup1200:00-093a:200a-touchpad";
          natural_scroll = true;
        }
      ];

      "$mod" = "SUPER";

      bind = [
        "$mod, Return, exec, $term"
        "$mod, C, killactive"
        "$mod, M, exit"
        "$mod, E, exec, $fileManager"
        "$mod, Space, exec, $menu"
        "$mod, P, pseudo"
        "$mod, S, togglesplit"

        "$mod, left, moveFocus, l"
        "$mod, right, moveFocus, r"
        "$mod, up, moveFocus, u"
        "$mod, down, moveFocus, d"

        "$mod, 1, workspace, 1"
        "$mod, 2, workspace, 2"
        "$mod, 3, workspace, 3"
        "$mod, 4, workspace, 4"
        "$mod, 5, workspace, 5"
        "$mod, 6, workspace, 6"

        "$mod SHIFT, 1, movetoworkspace, 1"
        "$mod SHIFT, 2, movetoworkspace, 2"
        "$mod SHIFT, 3, movetoworkspace, 3"
        "$mod SHIFT, 4, movetoworkspace, 4"
        "$mod SHIFT, 5, movetoworkspace, 5"
        "$mod SHIFT, 6, movetoworkspace, 6"
      ];

      bindm = [
        "$mod, mouse:272, movewindow"
        "$mod, mouse:273, resizewindow"
      ];

      windowrule = [
        "workspace 1, ^(kitty)$"

        "workspace 2, ^(firefox)$"

        "workspace 3, ^(code)$"

        "workspace 4 silent, ^(discord)$"

        "workspace 6, ^(steam)$"
        "workspace 6, ^(heroic)$"
        "workspace 6, ^(mpv)$"
      ];

      windowrulev2 = [
        "suppressevent maximize, class:.*"
        "nofocus, class:^$, title:^$, xwayland:1, floating:1, fullscreen:0, pinned:0"
      ];
    };
  };
}
