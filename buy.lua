local args = {
    [1]="Cousin",
    [2]="Buy"
   }
   
   game:GetService("ReplicatedStorage"):WaitForChild("Remotes"):WaitForChild("CommF_"):InvokeServer(unpack(args))