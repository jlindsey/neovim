-- GitHub Actions YAML
vim.filetype.add({
  pattern = {
    [".*/%.github[%w/]+workflows[%w/]+.*%.ya?ml"] = "yaml.github",
  },
})

-- Ansible YAML
vim.filetype.add({
  pattern = {
    [".*/tasks/.*%.ya?ml"] = "yaml.ansible",
    [".*/handlers/.*%.ya?ml"] = "yaml.ansible",
    [".*/ansible/.*%.ya?ml"] = "yaml.ansible",
  },
})
