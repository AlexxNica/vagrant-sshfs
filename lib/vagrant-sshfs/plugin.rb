require "vagrant"

module VagrantPlugins
  module SyncedFolderSSHFS
    # This plugin implements SSHFS synced folders.
    class Plugin < Vagrant.plugin("2")
      name "SSHFS synced folders"
      description <<-EOF
      The SSHFS synced folders plugin enables you to use SSHFS as a synced folder
      implementation.
      EOF

      synced_folder("sshfs", 5) do
        require_relative "synced_folder"
        SyncedFolder
      end

      command("sshfs", primary: true) do
        require_relative "command"
        Command::SSHFS
      end

      host_capability("linux", "sshfs_reverse_mount_folder") do
        require_relative "cap/host/linux/sshfs_reverse_mount"
        VagrantPlugins::HostLinux::Cap::MountSSHFS
      end

      host_capability("linux", "sshfs_reverse_unmount_folder") do
        require_relative "cap/host/linux/sshfs_reverse_mount"
        VagrantPlugins::HostLinux::Cap::MountSSHFS
      end

      host_capability("linux", "sshfs_reverse_is_folder_mounted") do
        require_relative "cap/host/linux/sshfs_reverse_mount"
        VagrantPlugins::HostLinux::Cap::MountSSHFS
      end

      host_capability("darwin", "sshfs_reverse_mount_folder") do
        require_relative "cap/host/darwin/sshfs_reverse_mount"
        VagrantPlugins::HostDarwin::Cap::MountSSHFS
      end

      host_capability("darwin", "sshfs_reverse_unmount_folder") do
        require_relative "cap/host/darwin/sshfs_reverse_mount"
        VagrantPlugins::HostDarwin::Cap::MountSSHFS
      end

      host_capability("darwin", "sshfs_reverse_is_folder_mounted") do
        require_relative "cap/host/darwin/sshfs_reverse_mount"
        VagrantPlugins::HostDarwin::Cap::MountSSHFS
      end

      host_capability("windows", "sshfs_reverse_mount_folder") do
        require_relative "cap/host/windows/sshfs_reverse_mount"
        VagrantPlugins::HostWindows::Cap::MountSSHFS
      end

      host_capability("windows", "sshfs_reverse_unmount_folder") do
        require_relative "cap/host/windows/sshfs_reverse_mount"
        VagrantPlugins::HostWindows::Cap::MountSSHFS
      end

      host_capability("windows", "sshfs_reverse_is_folder_mounted") do
        require_relative "cap/host/windows/sshfs_reverse_mount"
        VagrantPlugins::HostWindows::Cap::MountSSHFS
      end

      guest_capability("linux", "sshfs_forward_mount_folder") do
        require_relative "cap/guest/linux/sshfs_forward_mount"
        VagrantPlugins::GuestLinux::Cap::MountSSHFS
      end

      guest_capability("linux", "sshfs_forward_unmount_folder") do
        require_relative "cap/guest/linux/sshfs_forward_mount"
        VagrantPlugins::GuestLinux::Cap::MountSSHFS
      end

      guest_capability("linux", "sshfs_forward_is_folder_mounted") do
        require_relative "cap/guest/linux/sshfs_forward_mount"
        VagrantPlugins::GuestLinux::Cap::MountSSHFS
      end

      guest_capability("linux", "sshfs_get_absolute_path") do
        require_relative "cap/guest/linux/sshfs_get_absolute_path"
        VagrantPlugins::GuestLinux::Cap::SSHFSGetAbsolutePath
      end

      guest_capability("redhat", "sshfs_installed") do
        require_relative "cap/guest/redhat/sshfs_client"
        VagrantPlugins::GuestRedHat::Cap::SSHFSClient
      end

      guest_capability("redhat", "sshfs_install") do
        require_relative "cap/guest/redhat/sshfs_client"
        VagrantPlugins::GuestRedHat::Cap::SSHFSClient
      end

      guest_capability("fedora", "sshfs_installed") do
        require_relative "cap/guest/fedora/sshfs_client"
        VagrantPlugins::GuestFedora::Cap::SSHFSClient
      end

      guest_capability("fedora", "sshfs_install") do
        require_relative "cap/guest/fedora/sshfs_client"
        VagrantPlugins::GuestFedora::Cap::SSHFSClient
      end

      guest_capability("debian", "sshfs_installed") do
        require_relative "cap/guest/debian/sshfs_client"
        VagrantPlugins::GuestDebian::Cap::SSHFSClient
      end

      guest_capability("debian", "sshfs_install") do
        require_relative "cap/guest/debian/sshfs_client"
        VagrantPlugins::GuestDebian::Cap::SSHFSClient
      end

      guest_capability("arch", "sshfs_installed") do
        require_relative "cap/guest/arch/sshfs_client"
        VagrantPlugins::GuestArch::Cap::SSHFSClient
      end

      guest_capability("arch", "sshfs_install") do
        require_relative "cap/guest/arch/sshfs_client"
        VagrantPlugins::GuestArch::Cap::SSHFSClient
      end

      guest_capability("suse", "sshfs_installed") do
        require_relative "cap/guest/suse/sshfs_client"
        VagrantPlugins::GuestSUSE::Cap::SSHFSClient
      end

      guest_capability("suse", "sshfs_install") do
        require_relative "cap/guest/suse/sshfs_client"
        VagrantPlugins::GuestSUSE::Cap::SSHFSClient
      end

    end
  end
end
