USE [joblink]
GO
/****** Object:  StoredProcedure [dbo].[UP_ListSCM_ETRI]    Script Date: 2020-12-01 오전 12:10:57 ******/
SET ANSI_NULLS OFF
GO
SET QUOTED_IDENTIFIER ON
GO
ALTER Proc [dbo].[UP_ListSCM_ETRI]
	@section varchar(2)
AS	
	Select 
		* 
		, case  when section='연예' then 'red' else 'black' end as color
	From
		SCM_ETRI
		where section like @section+'%'
	Order by 
	  SCM_NewsID Desc