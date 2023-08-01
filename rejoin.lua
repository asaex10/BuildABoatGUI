local TPS = game:GetService("TeleportService")
return function() 
  TPS:TeleportToPlaceInstance(game.PlaceId, game.JobId, game:GetService("Players").LocalPlayer)
end
