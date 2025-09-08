vim.api.nvim_create_user_command("Swap", function(opts)
  local args = opts.fargs
  if #args ~= 2 then
    print("Usage: :Swap <arg1> <arg2>")
    return
  end
  local arg1 = args[1]
  local arg2 = args[2]
  -- Call your shell script with arguments
  local cmd = string.format(
    "~/Development/shellscript/swap_chapters.sh %s %s",
    vim.fn.shellescape(arg1),
    vim.fn.shellescape(arg2)
  )
  vim.fn.system(cmd)
end, { nargs = 2 })
