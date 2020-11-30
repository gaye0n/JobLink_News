USE [joblink]
GO
/****** Object:  StoredProcedure [dbo].[UP_DeleteSCM_ETRI]    Script Date: 2020-12-01 오전 12:10:14 ******/
SET ANSI_NULLS OFF
GO
SET QUOTED_IDENTIFIER ON
GO
--[1-5]공지사항 삭제
ALTER Proc [dbo].[UP_DeleteSCM_ETRI]
	@SCM_NewsID Int
As
	Set Nocount on
	Delete 
		SCM_ETRI
	Where
		SCM_NewsID = @SCM_NewsID
	Select @@RowCount
