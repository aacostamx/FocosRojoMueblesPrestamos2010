use FocosRojos_Prestamos
go

select * into tmp_VentasPrestamos from Mily.dbo.VentasPrestamos2
CREATE NONCLUSTERED INDEX idx_NumeroCliente ON tmp_VentasPrestamos (NumeroCliente ASC)

select a.*, b.DesdeCuandoVive, b.AntiguedadDelTrabajo, c.FechadelPrimerPrestamo
into FocosRojos_PrestamosFinal_2010
from tmp_VentasPrestamos a
left join ODS.Dic2010.dbo.MaeDirectorio b
 on (a.NumeroCliente=b.NumeroCliente)
left join ODS.Dic2010.dbo.CreHistoricoCredSem5 c
 on (a.NumeroCliente=c.NumeroCliente)


select count(*) from tmp_VentasPrestamos
--2,693,429
select count(*) from FocosRojos_PrestamosFinal_2010
--2,693,429