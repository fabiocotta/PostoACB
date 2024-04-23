program PostoABC;


uses
  Vcl.Forms,
  untPrincipal in 'untPrincipal.pas' {frmPrincipal},
  untDM in 'untDM.pas' {DM: TDataModule},
  untCadBase in 'untCadBase.pas' {FrmCadBase},
  untCadBomba in 'untCadBomba.pas' {FrmCadBaseBomba},
  untCadPerfilVenda in 'untCadPerfilVenda.pas' {FrmCadBasePerfilVenda},
  untCadMovimento in 'untCadMovimento.pas' {FrmCadBaseMovimento},
  BombaDAO in 'DAO\BombaDAO.pas',
  TanqueDAO in 'DAO\TanqueDAO.pas',
  MovimentoDAO in 'DAO\MovimentoDAO.pas',
  PerfilVendaDAO in 'DAO\PerfilVendaDAO.pas',
  Movimento in 'DTO\Movimento.pas',
  Bomba in 'DTO\Bomba.pas',
  Tanque in 'DTO\Tanque.pas',
  PerfilVenda in 'DTO\PerfilVenda.pas',
  MovimentoBO in 'BO\MovimentoBO.pas',
  PerfilVendaBO in 'BO\PerfilVendaBO.pas',
  BombaBO in 'BO\BombaBO.pas',
  TanqueBO in 'BO\TanqueBO.pas',
  untUtil in 'untUtil.pas',
  View.bomba in 'Views\View.bomba.pas' {ViewBomba};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TfrmPrincipal, frmPrincipal);
  Application.CreateForm(TDM, DM);
  Application.Run;
end.
