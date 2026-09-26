package com.linkedin.urls;

/* JADX INFO: loaded from: classes7.dex */
public class b {
    private int _originalIndex;
    private String _originalUrl;
    private int _schemeIndex = -1;
    private int _usernamePasswordIndex = -1;
    private int _hostIndex = -1;
    private int _portIndex = -1;
    private int _pathIndex = -1;
    private int _queryIndex = -1;
    private int _fragmentIndex = -1;

    public void c(c cVar) {
        b(cVar, -1);
    }

    static /* synthetic */ class a {
        static final /* synthetic */ int[] $SwitchMap$com$linkedin$urls$UrlPart;

        static {
            int[] iArr = new int[c.values().length];
            $SwitchMap$com$linkedin$urls$UrlPart = iArr;
            try {
                iArr[c.SCHEME.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                $SwitchMap$com$linkedin$urls$UrlPart[c.USERNAME_PASSWORD.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                $SwitchMap$com$linkedin$urls$UrlPart[c.HOST.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                $SwitchMap$com$linkedin$urls$UrlPart[c.PORT.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                $SwitchMap$com$linkedin$urls$UrlPart[c.PATH.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                $SwitchMap$com$linkedin$urls$UrlPart[c.QUERY.ordinal()] = 6;
            } catch (NoSuchFieldError unused6) {
            }
            try {
                $SwitchMap$com$linkedin$urls$UrlPart[c.FRAGMENT.ordinal()] = 7;
            } catch (NoSuchFieldError unused7) {
            }
        }
    }

    public int a(c cVar) {
        switch (a.$SwitchMap$com$linkedin$urls$UrlPart[cVar.ordinal()]) {
            case 1:
                return this._schemeIndex;
            case 2:
                return this._usernamePasswordIndex;
            case 3:
                return this._hostIndex;
            case 4:
                return this._portIndex;
            case 5:
                return this._pathIndex;
            case 6:
                return this._queryIndex;
            case 7:
                return this._fragmentIndex;
            default:
                return -1;
        }
    }

    public void b(c cVar, int i10) {
        switch (a.$SwitchMap$com$linkedin$urls$UrlPart[cVar.ordinal()]) {
            case 1:
                this._schemeIndex = i10;
                break;
            case 2:
                this._usernamePasswordIndex = i10;
                break;
            case 3:
                this._hostIndex = i10;
                break;
            case 4:
                this._portIndex = i10;
                break;
            case 5:
                this._pathIndex = i10;
                break;
            case 6:
                this._queryIndex = i10;
                break;
            case 7:
                this._fragmentIndex = i10;
                break;
        }
    }
}
