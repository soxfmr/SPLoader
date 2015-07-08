unit ServerInfo;

interface

uses
  Windows, WinSock2, SysUtils;

type
  TServerInfo = class(TOBject)
    public
      function GetServerAddress(): String;
  end;

implementation

function TServerInfo.GetServerAddress(): String;
var
  Host: pHostEnt;
  wsaData: TWsaData;
  addr: in_addr;

  address: LongInt;
  HostNameBuffer: array [0..MAX_PATH] of AnsiChar;
begin
  Result:= '';
  // �ݿջ�����
  FillChar(HostNameBuffer, MAX_PATH, #0);
  // ��ʼ��Socket
  if WSAStartup(MakeWord(2, 2), wsaData) <> 0 then
  begin
    Exit;
  end;
  // ��ȡ������
  GetHostName(HostNameBuffer, MAX_PATH);
  // ��ȡHostEnt�ṹ��ָ��
  host:= GetHostByName(HostNameBuffer);
  // ��ȡ�����ֽڻ���IP��ַ
  //p:= host^.h_addr_list^;
  address:= LongInt(Pointer(host^.h_addr_list^)^);
  addr.S_addr := ntohl(address);
  // ת��Ϊ���ʮ����
  Result:= String(inet_ntoa(addr));

  WSACleanup;
end;

end.