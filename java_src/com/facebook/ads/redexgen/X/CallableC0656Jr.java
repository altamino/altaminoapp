package com.facebook.ads.redexgen.X;

import android.content.Context;
import android.webkit.WebView;
import java.util.concurrent.Callable;

/* JADX WARN: Classes with same name are omitted:
  assets.dex
  assets/audience_network.dex
 */
/* renamed from: com.facebook.ads.redexgen.X.Jr, reason: case insensitive filesystem */
/* loaded from: assets/assets/audience_network.dex */
public class CallableC0656Jr implements Callable<String> {
    public final /* synthetic */ Context A00;

    public CallableC0656Jr(Context context) {
        this.A00 = context;
    }

    /* JADX INFO: Access modifiers changed from: private */
    @Override // java.util.concurrent.Callable
    /* renamed from: A00, reason: merged with bridge method [inline-methods] */
    public final String call() {
        CallableC0656Jr callableC0656Jr = this;
        String userAgentString = null;
        String str = (String) C0657Js.A03.get();
        char c = str != null ? (char) 2 : (char) 3;
        while (true) {
            switch (c) {
                case 2:
                    return str;
                case 3:
                    callableC0656Jr = callableC0656Jr;
                    WebView webView = new WebView(callableC0656Jr.A00.getApplicationContext());
                    userAgentString = webView.getSettings().getUserAgentString();
                    webView.destroy();
                    if (userAgentString == null) {
                        c = 5;
                        break;
                    } else {
                        c = 4;
                        break;
                    }
                case 4:
                    userAgentString = userAgentString;
                    C0657Js.A03.set(userAgentString);
                    c = 5;
                    break;
                case 5:
                    userAgentString = userAgentString;
                    str = userAgentString;
                    c = 2;
                    break;
            }
        }
    }
}
