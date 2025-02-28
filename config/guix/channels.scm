(use-modules (guix channels))

(list (channel
        (name 'guix)
        (branch "master")
        (url "https://codeberg.org/guix/guix-mirror")
        (introduction (channel-introduction %default-guix-channel))))
