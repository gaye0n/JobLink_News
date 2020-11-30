USE [joblink]
GO
/****** Object:  StoredProcedure [dbo].[UP_ViewSCM_ETRI]    Script Date: 2020-12-01 오전 12:12:16 ******/
SET ANSI_NULLS OFF
GO
SET QUOTED_IDENTIFIER ON
GO
--[1-3]공지사항 상제보기
ALTER Proc [dbo].[UP_ViewSCM_ETRI]
	@SCM_NewsID Int
AS
	Set Nocount on
	--조회수증가
	Update 
		SCM_ETRI
	Set
		ReadCount = ReadCount + 1
	Where
		SCM_NewsID = @SCM_NewsID
	--번호값에 해당하는 정보 읽어오기
	
 	
	Select 
		*
	From
		SCM_ETRI
	Where
		SCM_NewsID = @SCM_NewsID
   		


