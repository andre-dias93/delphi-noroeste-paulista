unit Util.Form;

interface

uses Vcl.Forms, System.Classes;
type
  TFormUtils = class
  public
    class procedure show(AClass: TComponentClass; var AForm);
  end;

implementation

uses System.SysUtils;

class procedure TFormUtils.show(AClass: TComponentClass; var AForm);
begin
  try
    Application.CreateForm(TComponentClass(AClass), AForm);
    TForm(AForm).ShowModal;
  finally
    FreeAndNil(TForm(AForm));
  end;
end;

end.
