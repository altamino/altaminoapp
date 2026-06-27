package com.linkedin.urls;

/* loaded from: classes2.dex */
public class UrlMarker {
    private int _originalIndex;
    private String _originalUrl;
    private int _schemeIndex = -1;
    private int _usernamePasswordIndex = -1;
    private int _hostIndex = -1;
    private int _portIndex = -1;
    private int _pathIndex = -1;
    private int _queryIndex = -1;
    private int _fragmentIndex = -1;

    /* renamed from: com.linkedin.urls.UrlMarker$1, reason: invalid class name */
    static /* synthetic */ class AnonymousClass1 {
        static final /* synthetic */ int[] $SwitchMap$com$linkedin$urls$UrlPart = new int[UrlPart.values().length];

        static {
            try {
                $SwitchMap$com$linkedin$urls$UrlPart[UrlPart.SCHEME.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                $SwitchMap$com$linkedin$urls$UrlPart[UrlPart.USERNAME_PASSWORD.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                $SwitchMap$com$linkedin$urls$UrlPart[UrlPart.HOST.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                $SwitchMap$com$linkedin$urls$UrlPart[UrlPart.PORT.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                $SwitchMap$com$linkedin$urls$UrlPart[UrlPart.PATH.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                $SwitchMap$com$linkedin$urls$UrlPart[UrlPart.QUERY.ordinal()] = 6;
            } catch (NoSuchFieldError unused6) {
            }
            try {
                $SwitchMap$com$linkedin$urls$UrlPart[UrlPart.FRAGMENT.ordinal()] = 7;
            } catch (NoSuchFieldError unused7) {
            }
        }
    }

    public void setIndex(UrlPart urlPart, int i) {
        switch (AnonymousClass1.$SwitchMap$com$linkedin$urls$UrlPart[urlPart.ordinal()]) {
            case 1:
                this._schemeIndex = i;
                break;
            case 2:
                this._usernamePasswordIndex = i;
                break;
            case 3:
                this._hostIndex = i;
                break;
            case 4:
                this._portIndex = i;
                break;
            case 5:
                this._pathIndex = i;
                break;
            case 6:
                this._queryIndex = i;
                break;
            case 7:
                this._fragmentIndex = i;
                break;
        }
    }

    public int indexOf(UrlPart urlPart) {
        switch (AnonymousClass1.$SwitchMap$com$linkedin$urls$UrlPart[urlPart.ordinal()]) {
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

    public void unsetIndex(UrlPart urlPart) {
        setIndex(urlPart, -1);
    }
}
