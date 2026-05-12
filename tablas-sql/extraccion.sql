SELECT
		rp.name AS cliente,
		pt.name AS producto,
		sol.product_uom_qty AS cantidad,
		sol.price_unit AS precio,
		so.date_order AS fecha
		
	FROM sale_order_line sol
	JOIN sale_order so ON sol.order_id = so.id
	JOIN res_partner rp ON so.partner_id = rp.id
	JOIN product_product pp ON sol.product_id = pp.id
	JOIN product_template pt ON pp.product_tmpl_id = pt.id;