USE [NASCARForever]
GO
/****** Object:  StoredProcedure [dbo].[GetBestDrivers]    Script Date: 2/3/2020 1:01:22 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
ALTER PROCEDURE [dbo].[GetBestDrivers] 
	-- Add the parameters for the stored procedure here
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	SELECT * FROM Drivers
	WHERE CupWins > 0
	ORDER BY CupChampionships DESC, CupWins DESC;
END
