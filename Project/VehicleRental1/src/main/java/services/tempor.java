package services;



public owner getOne(owner own) {
	try {
		
		String query ="select * from vehicle where registrationNO ='"+own.getRegistrationNo()+"' and voID='"+own.getVoId()+"'";   // and description ='"+own.getDescription()+"'and registrationNO='"+own.getRegistrationNo()+"' and AMT='"+own.getAmt()+"' and added_date='"+own.getAdded_date()+"' and catID='"+own.getCatid()+"' and ftype='"+own.getFtype()+"'and passengers='"+own.getPassengers()+"'and rentalPrice='"+own.getRentalprice()+"' and image='"+own.getImage()+"'and rating="+own.getRating()+"and status='"+own.getStatus()+"'and voID='"+own.getVoId()+"'";
		
		Statement statement = DBConnect.getConnection().createStatement();
		
		ResultSet rs = statement.executeQuery(query);
		
		if(rs.next()) {
			
			//18.dn data gnnwa wrahn athu denne modelclass eke attributes 
			own.setVid(rs.getInt("vid"));
			own.setDescription(rs.getString("description"));
			own.setRegistrationNo(rs.getString("registrationNo"));
			own.setAmt(rs.getString("amt"));
			own.setAdded_date(rs.getString("added_date"));
			own.setCatid(rs.getInt("catid"));
			own.setFtype(rs.getString("ftype"));
			own.setPassengers(rs.getInt("passengers"));
			own.setRentalprice(rs.getInt("rentalprice"));
			own.setImage(rs.getString("image"));
			own.setRating(rs.getInt("rating"));
			own.setStatus(rs.getString("status"));
			own.setVoId(rs.getInt("voId"));
			own.setTradeName(rs.getString("tradeName"));
			own.setBrand(rs.getString("brand"));
			
			
			return own;
		}
		
	} catch (Exception e) {
		e.printStackTrace();
	}

	return null;//17.sqlquery ekata  galapene kenek nattan null retuen krnwa
}