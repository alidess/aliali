do

local function run(msg, matches)
   if matches[1] == "chat_add_user_link" then
      if msg.from.id == 0 then
          return
      else
          if not msg.from.username then
              nama = string.gsub(msg.from.print_name, "_", " ")
          else
              name = "@"..msg.from.username
          end
      end
              return "Code created by @iq_plus 👾 \n\n you are welcome 👤➰ \n".."your ID: "..msg.from.id.."\n".."your name: "..msg.from.first_name.."\n".."your username : ".."@"..(msg.from.username or "لا يوجد").."\n\n".."group type :"..msg.to.type.."\n".."group name :"..msg.to.title.."\n".."group id :"..msg.to.id.."\n please show #rules "
   elseif matches[1] == "chat_add_user" then
      if msg.from.id == 0 then
          return
      else
          if not msg.from.username then
              nama = string.gsub(msg.from.print_name, "_", " ")
          else
              name = "@"..msg.from.username
          end
      end
              return "Code created by @iq_plus 👾 \n\n you are welcome 👤➰ \n".."your ID: "..msg.from.id.."\n".."your name: "..msg.from.first_name.."\n".."your username : ".."@"..(msg.from.username or "لا يوجد").."\n\n".."group type :"..msg.to.type.."\n".."group name :"..msg.to.title.."\n".."group id :"..msg.to.id.."\n please show #rules "
   else 
       return
   end
end

return {  
  patterns = {
       "^!!tgservice (chat_add_user)$",
       "^!!tgservice (chat_add_user_link)$",
  },
  run = run,
}

end
-- by @iq_plus
