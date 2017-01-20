SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[spFILE_Credito_SaldoInicial_numeric]
AS
DECLARE @Detalle VARCHAR(1000);
DECLARE @Requerido BIT;
SELECT @Detalle=Detalle, @Requerido=ReqCalificacion FROM dbo.MIGRACION_Validacion WHERE Codename='spFILE_Credito_SaldoInicial_numeric';

IF @Requerido = 1
BEGIN
UPDATE dbo.FILE_Credito
SET errorFormato = 1
WHERE LEN(SaldoInicial)>0 AND (ISNUMERIC(ISNULL(SaldoInicial,'0')) = 0 OR SaldoInicial LIKE '%[^0-9 -.]%');

SET NOCOUNT ON;
END

INSERT INTO dbo.FILE_Credito_errores (identificador, nombreCampo, valor, tipoError, description)
SELECT DISTINCT
 CodigoCredito,
 'SaldoInicial',
 SaldoInicial,
 1,
 ISNULL(NULLIF(LTRIM(RTRIM(Fuente)),'') + ' : ','') + @Detalle
FROM dbo.FILE_Credito
WHERE LEN(SaldoInicial)>0 AND (ISNUMERIC(ISNULL(SaldoInicial,'0')) = 0 OR SaldoInicial LIKE '%[^0-9 -.]%');
GO
