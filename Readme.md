# Install VSCloud

Self hosted CodeSpace using Ubuntu & Ansible.

## OS

1. Use [ubuntu server ISO](https://ubuntu.com/download/server).
2. Set static network configuration
3. Create the user (Admin)
4. Allow open SSH
5. Add your public key (`ssh-copy-id username@host`)

## Config sudo

Remove password ask to user:  
```sudo visudo```

Add the following line :  
```username ALL=(ALL) NOPASSWD: ALL```  

## Config Ansible

Setup your host file:  
```cp hosts.demo.yaml hosts.yaml```  

Set the correct `ansible_user` & `ansible_host` into `hosts.yaml` file.

## Deploy VSCloud

Deploy VSCloud using the following command:  
```ansible-playbook -i hosts.yaml playbook.yml```  

## Create Public key

From dev user:  
```ssh-keygen -t ed25519 -C "your_email@example.com"```  

Then follow the [Github doc](https://docs.github.com/en/authentication/connecting-to-github-with-ssh/adding-a-new-ssh-key-to-your-github-account) to add it on your account.  
