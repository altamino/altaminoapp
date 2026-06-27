package com.facebook.ads.redexgen.X;

import android.text.TextUtils;
import android.webkit.ConsoleMessage;
import android.webkit.WebChromeClient;
import android.webkit.WebView;
import java.lang.ref.WeakReference;

/* JADX WARN: Classes with same name are omitted:
  assets.dex
  assets/audience_network.dex
 */
/* loaded from: assets/assets/audience_network.dex */
public class S7 extends WebChromeClient {
    private final WeakReference<PO> A00;
    private final WeakReference<S4> A01;

    public S7(WeakReference<PO> weakReference, WeakReference<S4> weakReference2) {
        this.A00 = weakReference;
        this.A01 = weakReference2;
    }

    @Override // android.webkit.WebChromeClient
    public final boolean onConsoleMessage(ConsoleMessage consoleMessage) {
        S7 s7 = this;
        String strMessage = consoleMessage.message();
        char c = !TextUtils.isEmpty(strMessage) ? (char) 2 : (char) 5;
        while (true) {
            switch (c) {
                case 2:
                    consoleMessage = consoleMessage;
                    if (consoleMessage.messageLevel() != ConsoleMessage.MessageLevel.LOG) {
                        c = 5;
                        break;
                    } else {
                        c = 3;
                        break;
                    }
                case 3:
                    s7 = s7;
                    if (s7.A01.get() == null) {
                        c = 5;
                        break;
                    } else {
                        c = 4;
                        break;
                    }
                case 4:
                    s7 = s7;
                    strMessage = strMessage;
                    s7.A01.get().A04(strMessage);
                    c = 5;
                    break;
                case 5:
                    return true;
            }
        }
    }

    @Override // android.webkit.WebChromeClient
    public final void onProgressChanged(WebView webView, int i) {
        S7 s7 = this;
        super.onProgressChanged(webView, i);
        char c = s7.A01.get() != null ? (char) 2 : (char) 3;
        while (true) {
            switch (c) {
                case 2:
                    s7 = s7;
                    s7.A01.get().A03();
                    c = 3;
                    break;
                case 3:
                    s7 = s7;
                    if (s7.A00.get() == null) {
                        c = 5;
                        break;
                    } else {
                        c = 4;
                        break;
                    }
                case 4:
                    s7 = s7;
                    s7.A00.get().A64(i);
                    c = 5;
                    break;
                case 5:
                    return;
            }
        }
    }

    @Override // android.webkit.WebChromeClient
    public final void onReceivedTitle(WebView webView, String str) {
        super.onReceivedTitle(webView, str);
        if (this.A00.get() != null) {
            this.A00.get().A66(str);
        }
    }
}
