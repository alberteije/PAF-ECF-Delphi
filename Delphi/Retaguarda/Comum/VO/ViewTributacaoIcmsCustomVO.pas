{*******************************************************************************
Title: T2Ti ERP                                                                 
Description:  VO  relacionado � tabela [VIEW_TRIBUTACAO_ICMS_CUSTOM] 
                                                                                
The MIT License                                                                 
                                                                                
Copyright: Copyright (C) 2014 T2Ti.COM                                          
                                                                                
Permission is hereby granted, free of charge, to any person                     
obtaining a copy of this software and associated documentation                  
files (the "Software"), to deal in the Software without                         
restriction, including without limitation the rights to use,                    
copy, modify, merge, publish, distribute, sublicense, and/or sell               
copies of the Software, and to permit persons to whom the                       
Software is furnished to do so, subject to the following                        
conditions:                                                                     
                                                                                
The above copyright notice and this permission notice shall be                  
included in all copies or substantial portions of the Software.                 
                                                                                
THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND,                 
EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES                 
OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND                        
NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT                     
HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY,                    
WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING                    
FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR                   
OTHER DEALINGS IN THE SOFTWARE.                                                 
                                                                                
       The author may be contacted at:                                          
           t2ti.com@gmail.com                                                   
                                                                                
@author Albert Eije (t2ti.com@gmail.com)                    
@version 2.0                                                                    
*******************************************************************************}
unit ViewTributacaoIcmsCustomVO;

interface

uses
  VO, Atributos, Classes, Constantes, Generics.Collections, SysUtils;

type
  [TEntity]
  [TTable('VIEW_TRIBUTACAO_ICMS_CUSTOM')]
  TViewTributacaoIcmsCustomVO = class(TVO)
  private
    FID: Integer;
    FDESCRICAO: String;
    FORIGEM_MERCADORIA: String;
    FUF_DESTINO: String;
    FCFOP: Integer;
    FCSOSN_B: String;
    FCST_B: String;
    FMODALIDADE_BC: String;
    FALIQUOTA: Extended;
    FVALOR_PAUTA: Extended;
    FVALOR_PRECO_MAXIMO: Extended;
    FMVA: Extended;
    FPORCENTO_BC: Extended;
    FMODALIDADE_BC_ST: String;
    FALIQUOTA_INTERNA_ST: Extended;
    FALIQUOTA_INTERESTADUAL_ST: Extended;
    FPORCENTO_BC_ST: Extended;
    FALIQUOTA_ICMS_ST: Extended;
    FVALOR_PAUTA_ST: Extended;
    FVALOR_PRECO_MAXIMO_ST: Extended;

  public 
    [TId('ID')]
    [TGeneratedValue(sAuto)]
    [TFormatter(ftZerosAEsquerda, taCenter)]
    property Id: Integer  read FID write FID;
    [TColumn('DESCRICAO', 'Descricao', 450, [ldGrid, ldLookup, ldCombobox], False)]
    property Descricao: String  read FDESCRICAO write FDESCRICAO;
    [TColumn('ORIGEM_MERCADORIA', 'Origem Mercadoria', 8, [ldGrid, ldLookup, ldCombobox], False)]
    property OrigemMercadoria: String  read FORIGEM_MERCADORIA write FORIGEM_MERCADORIA;
    [TColumn('UF_DESTINO', 'Uf Destino', 16, [ldGrid, ldLookup, ldCombobox], False)]
    property UfDestino: String  read FUF_DESTINO write FUF_DESTINO;
    [TColumn('CFOP', 'Cfop', 80, [ldGrid, ldLookup, ldCombobox], False)]
    [TFormatter(ftZerosAEsquerda, taCenter)]
    property Cfop: Integer  read FCFOP write FCFOP;
    [TColumn('CSOSN_B', 'Csosn B', 24, [ldGrid, ldLookup, ldCombobox], False)]
    property CsosnB: String  read FCSOSN_B write FCSOSN_B;
    [TColumn('CST_B', 'Cst B', 16, [ldGrid, ldLookup, ldCombobox], False)]
    property CstB: String  read FCST_B write FCST_B;
    [TColumn('MODALIDADE_BC', 'Modalidade Bc', 8, [ldGrid, ldLookup, ldCombobox], False)]
    property ModalidadeBc: String  read FMODALIDADE_BC write FMODALIDADE_BC;
    [TColumn('ALIQUOTA', 'Aliquota', 168, [ldGrid, ldLookup, ldCombobox], False)]
    [TFormatter(ftFloatComSeparador, taRightJustify)]
    property Aliquota: Extended  read FALIQUOTA write FALIQUOTA;
    [TColumn('VALOR_PAUTA', 'Valor Pauta', 168, [ldGrid, ldLookup, ldCombobox], False)]
    [TFormatter(ftFloatComSeparador, taRightJustify)]
    property ValorPauta: Extended  read FVALOR_PAUTA write FVALOR_PAUTA;
    [TColumn('VALOR_PRECO_MAXIMO', 'Valor Preco Maximo', 168, [ldGrid, ldLookup, ldCombobox], False)]
    [TFormatter(ftFloatComSeparador, taRightJustify)]
    property ValorPrecoMaximo: Extended  read FVALOR_PRECO_MAXIMO write FVALOR_PRECO_MAXIMO;
    [TColumn('MVA', 'Mva', 168, [ldGrid, ldLookup, ldCombobox], False)]
    [TFormatter(ftFloatComSeparador, taRightJustify)]
    property Mva: Extended  read FMVA write FMVA;
    [TColumn('PORCENTO_BC', 'Porcento Bc', 168, [ldGrid, ldLookup, ldCombobox], False)]
    [TFormatter(ftFloatComSeparador, taRightJustify)]
    property PorcentoBc: Extended  read FPORCENTO_BC write FPORCENTO_BC;
    [TColumn('MODALIDADE_BC_ST', 'Modalidade Bc St', 8, [ldGrid, ldLookup, ldCombobox], False)]
    property ModalidadeBcSt: String  read FMODALIDADE_BC_ST write FMODALIDADE_BC_ST;
    [TColumn('ALIQUOTA_INTERNA_ST', 'Aliquota Interna St', 168, [ldGrid, ldLookup, ldCombobox], False)]
    [TFormatter(ftFloatComSeparador, taRightJustify)]
    property AliquotaInternaSt: Extended  read FALIQUOTA_INTERNA_ST write FALIQUOTA_INTERNA_ST;
    [TColumn('ALIQUOTA_INTERESTADUAL_ST', 'Aliquota Interestadual St', 168, [ldGrid, ldLookup, ldCombobox], False)]
    [TFormatter(ftFloatComSeparador, taRightJustify)]
    property AliquotaInterestadualSt: Extended  read FALIQUOTA_INTERESTADUAL_ST write FALIQUOTA_INTERESTADUAL_ST;
    [TColumn('PORCENTO_BC_ST', 'Porcento Bc St', 168, [ldGrid, ldLookup, ldCombobox], False)]
    [TFormatter(ftFloatComSeparador, taRightJustify)]
    property PorcentoBcSt: Extended  read FPORCENTO_BC_ST write FPORCENTO_BC_ST;
    [TColumn('ALIQUOTA_ICMS_ST', 'Aliquota Icms St', 168, [ldGrid, ldLookup, ldCombobox], False)]
    [TFormatter(ftFloatComSeparador, taRightJustify)]
    property AliquotaIcmsSt: Extended  read FALIQUOTA_ICMS_ST write FALIQUOTA_ICMS_ST;
    [TColumn('VALOR_PAUTA_ST', 'Valor Pauta St', 168, [ldGrid, ldLookup, ldCombobox], False)]
    [TFormatter(ftFloatComSeparador, taRightJustify)]
    property ValorPautaSt: Extended  read FVALOR_PAUTA_ST write FVALOR_PAUTA_ST;
    [TColumn('VALOR_PRECO_MAXIMO_ST', 'Valor Preco Maximo St', 168, [ldGrid, ldLookup, ldCombobox], False)]
    [TFormatter(ftFloatComSeparador, taRightJustify)]
    property ValorPrecoMaximoSt: Extended  read FVALOR_PRECO_MAXIMO_ST write FVALOR_PRECO_MAXIMO_ST;

  end;

implementation


initialization
  Classes.RegisterClass(TViewTributacaoIcmsCustomVO);

finalization
  Classes.UnRegisterClass(TViewTributacaoIcmsCustomVO);

end.
