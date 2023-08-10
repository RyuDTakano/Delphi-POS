program Project2;

uses
  Vcl.Forms,
  Front in 'Front.pas' {PFront},
  UnitMain in '..\Zint-Barcode-Generator-for-Delphi-master\Demo\FMX\UnitMain.pas' {Barcode},
  zint in '..\Zint-Barcode-Generator-for-Delphi-master\zint.pas',
  zint_2of5 in '..\Zint-Barcode-Generator-for-Delphi-master\zint_2of5.pas',
  zint_auspost in '..\Zint-Barcode-Generator-for-Delphi-master\zint_auspost.pas',
  zint_aztec in '..\Zint-Barcode-Generator-for-Delphi-master\zint_aztec.pas',
  zint_code in '..\Zint-Barcode-Generator-for-Delphi-master\zint_code.pas',
  zint_code1 in '..\Zint-Barcode-Generator-for-Delphi-master\zint_code1.pas',
  zint_code16k in '..\Zint-Barcode-Generator-for-Delphi-master\zint_code16k.pas',
  zint_code49 in '..\Zint-Barcode-Generator-for-Delphi-master\zint_code49.pas',
  zint_code128 in '..\Zint-Barcode-Generator-for-Delphi-master\zint_code128.pas',
  zint_common in '..\Zint-Barcode-Generator-for-Delphi-master\zint_common.pas',
  zint_composite in '..\Zint-Barcode-Generator-for-Delphi-master\zint_composite.pas',
  zint_dmatrix in '..\Zint-Barcode-Generator-for-Delphi-master\zint_dmatrix.pas',
  zint_dotcode in '..\Zint-Barcode-Generator-for-Delphi-master\zint_dotcode.pas',
  zint_gb2312 in '..\Zint-Barcode-Generator-for-Delphi-master\zint_gb2312.pas',
  zint_gridmtx in '..\Zint-Barcode-Generator-for-Delphi-master\zint_gridmtx.pas',
  zint_gs1 in '..\Zint-Barcode-Generator-for-Delphi-master\zint_gs1.pas',
  zint_helper in '..\Zint-Barcode-Generator-for-Delphi-master\zint_helper.pas',
  zint_imail in '..\Zint-Barcode-Generator-for-Delphi-master\zint_imail.pas',
  zint_large in '..\Zint-Barcode-Generator-for-Delphi-master\zint_large.pas',
  zint_maxicode in '..\Zint-Barcode-Generator-for-Delphi-master\zint_maxicode.pas',
  zint_medical in '..\Zint-Barcode-Generator-for-Delphi-master\zint_medical.pas',
  zint_pdf417 in '..\Zint-Barcode-Generator-for-Delphi-master\zint_pdf417.pas',
  zint_plessey in '..\Zint-Barcode-Generator-for-Delphi-master\zint_plessey.pas',
  zint_postal in '..\Zint-Barcode-Generator-for-Delphi-master\zint_postal.pas',
  zint_qr in '..\Zint-Barcode-Generator-for-Delphi-master\zint_qr.pas',
  zint_qr_epc in '..\Zint-Barcode-Generator-for-Delphi-master\zint_qr_epc.pas',
  zint_reedsol in '..\Zint-Barcode-Generator-for-Delphi-master\zint_reedsol.pas',
  zint_render_bmp in '..\Zint-Barcode-Generator-for-Delphi-master\zint_render_bmp.pas',
  zint_render_canvas in '..\Zint-Barcode-Generator-for-Delphi-master\zint_render_canvas.pas',
  zint_render_fmx_bmp in '..\Zint-Barcode-Generator-for-Delphi-master\zint_render_fmx_bmp.pas',
  zint_render_fmx_canvas in '..\Zint-Barcode-Generator-for-Delphi-master\zint_render_fmx_canvas.pas',
  zint_render_svg in '..\Zint-Barcode-Generator-for-Delphi-master\zint_render_svg.pas',
  zint_render_wmf in '..\Zint-Barcode-Generator-for-Delphi-master\zint_render_wmf.pas',
  zint_rss in '..\Zint-Barcode-Generator-for-Delphi-master\zint_rss.pas',
  zint_sjis in '..\Zint-Barcode-Generator-for-Delphi-master\zint_sjis.pas',
  zint_telepen in '..\Zint-Barcode-Generator-for-Delphi-master\zint_telepen.pas',
  zint_upcean in '..\Zint-Barcode-Generator-for-Delphi-master\zint_upcean.pas',
  Cash in 'Cash.pas' {Form9},
  Unit8 in 'Unit8.pas' {DataModule8: TDataModule},
  StockProduct in 'StockProduct.pas' {PStock};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TPFront, PFront);
  Application.CreateForm(TBarcode, Barcode);
  Application.CreateForm(TForm9, Form9);
  Application.CreateForm(TDataModule8, DataModule8);
  Application.CreateForm(TPStock, PStock);
  Application.Run;
end.
