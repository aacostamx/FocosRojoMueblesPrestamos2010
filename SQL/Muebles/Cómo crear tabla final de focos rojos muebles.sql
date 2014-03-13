use FocosRojos_Muebles
go

select * into tmp_VentasMuebles from Mily.dbo.VentasMuebles2
CREATE NONCLUSTERED INDEX idx_NumeroCliente ON tmp_VentasMuebles (NumeroCliente ASC)

select a.*, b.DesdeCuandoVive, b.AntiguedadDelTrabajo, c.FechaPrimerCompraMuebles
into FocosRojos_MueblesFinal_2010
from tmp_VentasMuebles a
left join ODS.Dic2010.dbo.MaeDirectorio b
 on (a.NumeroCliente=b.NumeroCliente)
left join ODS.Dic2010.dbo.CreHistoricoCredSem5 c
 on (a.NumeroCliente=c.NumeroCliente)
 
 
select count(*) from tmp_VentasMuebles
--10,688,810
select count(*) from FocosRojos_MueblesFinal_2010
--10,688,810