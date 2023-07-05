unit Presenter.Principal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Menus;

type
  TfrmPrincipal = class(TForm)
    mainMenu: TMainMenu;
    menuItem: TMenuItem;
    menuItemCidade: TMenuItem;
    menuItemPessoa: TMenuItem;
    procedure menuItemCidadeClick(Sender: TObject);
    procedure menuItemPessoaClick(Sender: TObject);
  end;

var frmPrincipal: TfrmPrincipal;

implementation

uses Presenter.Cidade, Presenter.Pessoa, Util.Form;

{$R *.dfm}

procedure TfrmPrincipal.menuItemCidadeClick(Sender: TObject);
var
  LForm: TfrmPresenterCidade;
begin
  TFormUtils.show(TfrmPresenterCidade, LForm);
end;

procedure TfrmPrincipal.menuItemPessoaClick(Sender: TObject);
var
  LForm: TfrmPresenterPessoa;
begin
  TFormUtils.show(TfrmPresenterPessoa, LForm);
end;
end.
