#ifdef __MINGW32__
    #include <windows.h>
#else
    #include <Windows.h>
#endif

#include <tchar.h>
#include <assert.h>

HINSTANCE g_hInstance;
LPCTSTR g_lpszClass = _T("WinForm");
LPCTSTR g_lpszTitle = _T("WinForm");

LRESULT CALLBACK WndProc(HWND hWnd, UINT Message, WPARAM wParam, LPARAM lParam);

int _tWinMain(HINSTANCE hInstance, HINSTANCE hPreInstance, LPTSTR lpszCmdParam, int nCmdShow) {
    HWND hWnd;
    MSG Message;
    WNDCLASS WndClass;
    BOOL bResult;

    WndClass.cbClsExtra = 0;
    WndClass.cbWndExtra = 0;
    WndClass.hbrBackground = (HBRUSH)(COLOR_WINDOW + 1);
    WndClass.hCursor = LoadCursor(NULL, IDC_ARROW);
    WndClass.hIcon = LoadIcon(NULL, IDI_APPLICATION);
    WndClass.hInstance = hInstance;
    WndClass.lpfnWndProc = (WNDPROC)WndProc;
    WndClass.lpszClassName = g_lpszClass;
    WndClass.lpszMenuName = (LPCTSTR)NULL;
    WndClass.style = CS_HREDRAW | CS_VREDRAW;
    RegisterClass(&WndClass);

    g_hInstance = hInstance;
    hWnd = CreateWindow(
        g_lpszClass, g_lpszTitle, 
        WS_OVERLAPPEDWINDOW, 
        CW_USEDEFAULT, CW_USEDEFAULT,
        CW_USEDEFAULT, CW_USEDEFAULT,
        (HWND)NULL, (HMENU)NULL, hInstance,
        (LPVOID)NULL
    );
    assert(hWnd);

    ShowWindow(hWnd, nCmdShow);
    while(GetMessage(&Message, (HWND)NULL, 0, 0)) {
        TranslateMessage(&Message);
        DispatchMessage(&Message);
    }

    return (int)Message.wParam;
}

LRESULT CALLBACK WndProc(HWND hWnd, UINT Message, WPARAM wParam, LPARAM lParam) {
    HDC hDC;
    PAINTSTRUCT ps;

    switch(Message) {
        case WM_CREATE:
        break;
        
        case WM_DESTROY:
            PostQuitMessage(0);
        break;

        case WM_PAINT:
            hDC = BeginPaint(hWnd, &ps);

            EndPaint(hWnd, &ps);
        break;

        default:
            return DefWindowProc(hWnd, Message, wParam, lParam);
    }

    return 0;
}