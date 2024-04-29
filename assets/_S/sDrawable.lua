SDrawable = Core.class()

function SDrawable:init(xtiny) -- tiny function
	xtiny.system(self) -- called only once on init (no update)
end

function SDrawable:filter(ent) -- tiny function
	return ent.spritelayer and ent.sprite
end

function SDrawable:onAdd(ent) -- tiny function
--	print("SDrawable:onAdd(ent)")
--	ent.sprite:setPosition(ent.x, ent.y)
	ent.spritelayer:addChild(ent.sprite)
end

function SDrawable:onRemove(ent) -- tiny function
--	print("SDrawable:onRemove(ent)")
	ent.spritelayer:removeChild(ent.sprite)
	ent = nil
end
