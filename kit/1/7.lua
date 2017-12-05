return function(M)

	function M.wait_lsn(server_id, lsn, timeout, pause)
		server_id = server_id or M.node.id
		pause = pause or 0.01
		if box.info.replication[server_id].lsn >= lsn then return true end
		local start = fiber.time()
		repeat
			fiber.sleep(pause)
		until box.info.replication[server_id].lsn >= lsn or ( timeout and fiber.time() > start + timeout )
		return box.info.replication[server_id].lsn >= lsn
	end

	local _node_keys = M._node_keys
	getmetatable(M.node).__index = function(_,k)
			return _node_keys[k] and box.info[k]
	end

end
