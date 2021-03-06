USE [joblink]
GO
/****** Object:  StoredProcedure [dbo].[UP_AddSCM_ETRI]    Script Date: 2020-12-01 오전 12:07:58 ******/
SET ANSI_NULLS OFF
GO
SET QUOTED_IDENTIFIER ON
GO
--  =================================================================================
--  Create Stored Procedure
--  =================================================================================
--[1-1]공지사항 입력
ALTER Proc [dbo].[UP_AddSCM_ETRI]
(	
@NewsTitle		VarChar(100),
@Content 		VarChar(1500),
@section		VarChar(10),
@DateMonthYear	VarChar(100),
@writer			VarChar(100),
@Memo			VarChar(1000),
@upFileName		Varchar(200)
	 
        
)
As
	Set Nocount on

	Insert SCM_ETRI
	(
		NewsTitle, Content, section, DateMonthYear, writer, Memo, upFileName
	)
	Values
	(
			@NewsTitle, @Content, @section, @DateMonthYear, @writer, @Memo,@upFileName
	)