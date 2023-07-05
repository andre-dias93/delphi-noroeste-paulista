program Sample;

uses
  Vcl.Forms,
  Presenter.Principal in 'presenter\Presenter.Principal.pas' {frmPrincipal},
  Service.Cidade in 'service\Service.Cidade.pas',
  Util.Consts in 'util\Util.Consts.pas',
  Presenter.Cidade in 'presenter\Presenter.Cidade.pas' {frmPresenterCidade},
  Presenter.Pessoa in 'presenter\Presenter.Pessoa.pas' {frmPresenterPessoa},
  Container.Cidade in 'container\Container.Cidade.pas' {ContainerCidade: TDataModule},
  Container.Pessoa in 'container\Container.Pessoa.pas' {ContainerPessoa: TDataModule},
  Util.Form in 'util\Util.Form.pas',
  Shared.Container.Base in 'shared\cadastro-base\Shared.Container.Base.pas' {ContainerBase: TDataModule},
  Shared.Presenter.Base in 'shared\cadastro-base\Shared.Presenter.Base.pas' {frmPresenterBase};

{$R *.res}

begin
{$IFDEF DEBUG}
  ReportMemoryLeaksOnShutdown := True;
{$ENDIF}
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TfrmPrincipal, frmPrincipal);
  Application.Run;
end.
