USE [joblink]
GO
/****** Object:  StoredProcedure [dbo].[UP_ModifySCM_ETRI]    Script Date: 2020-12-01 오전 12:11:33 ******/
SET ANSI_NULLS OFF
GO
SET QUOTED_IDENTIFIER ON
GO
 ALTER Proc [dbo].[UP_ModifySCM_ETRI]
(
@NewsTitle		VarChar(100),
@Content 		VarChar(1000),
@section		VarChar(10),
@DateMonthYear	VarChar(100),
@writer			VarChar(100),
@Memo			VarChar(1500), 
@upFileName		Varchar(200),
@SCM_NewsID		Int	
	
	
)
AS
	Set nocount on
	UPdate
		SCM_ETRI
	Set
		 NewsTitle = @NewsTitle
		,Content = @Content
        ,DateMonthYear = @DateMonthYear
        ,section = @section             
		,writer = @writer
		,Memo = @Memo
		
		,upFileName	= @upFileName	          
		,ModifyDate = GetDate()
		
	Where
		SCM_NewsID = @SCM_NewsID