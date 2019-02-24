SELECT 
	t.user_id,
	t.session_id,
	t.cookie_id,
	MIN(visit_time) in_time,
	MAX(visit_time) out_time,
		(
		case 
		WHEN MIN(visit_time) = MAX(visit_time) 
		then 3 
		else unix_timestamp(MAX(visit_time)) - unix_timestamp(MIN(visit_time)) 
		end
		) stay_time,
	COUNT(1) pv,
	t.visit_os,
	t.browser_name,
	t.visit_ip,
	t.province,
	t.city 
FROM 
 qfbap_ods.ods_user_pc_click_log t 
GROUP BY 
	t.session_id,
	t.cookie_id,
	t.user_id,
	t.visit_os,
	t.browser_name,
	t.visit_ip,
	t.province,
	t.city;