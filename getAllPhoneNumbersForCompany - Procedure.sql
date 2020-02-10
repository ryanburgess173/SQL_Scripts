-- ================================================
-- Template generated from Template Explorer using:
-- Create Procedure (New Menu).SQL
--
-- Use the Specify Values for Template Parameters 
-- command (Ctrl-Shift-M) to fill in the parameter 
-- values below.
--
-- This block of comments will not be included in
-- the definition of the procedure.
-- ================================================
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE getAllPhoneNumbersForCompany
	-- Add the parameters for the stored procedure here
	@Company nvarchar(30)
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	SELECT dbo.Companies.Company, dbo.CompanyPhones.CompanyPhone
	FROM dbo.Companies, dbo.CompanyPhones
	WHERE dbo.Companies.Company LIKE @Company AND dbo.CompanyPhones.Company = 
		(SELECT dbo.Companies.ID_Companies FROM dbo.Companies WHERE dbo.Companies.Company LIKE @Company);
END
GO
