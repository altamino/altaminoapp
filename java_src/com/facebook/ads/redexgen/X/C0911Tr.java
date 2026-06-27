package com.facebook.ads.redexgen.X;

import android.webkit.ConsoleMessage;
import android.webkit.WebChromeClient;

/* JADX WARN: Classes with same name are omitted:
  assets.dex
  assets/audience_network.dex
 */
/* renamed from: com.facebook.ads.redexgen.X.Tr, reason: case insensitive filesystem */
/* loaded from: assets/assets/audience_network.dex */
public class C0911Tr extends WebChromeClient {
    public final /* synthetic */ C0914Tu A00;

    private C0911Tr(C0914Tu c0914Tu) {
        this.A00 = c0914Tu;
    }

    public /* synthetic */ C0911Tr(C0914Tu c0914Tu, C0906Tl c0906Tl) {
        this(c0914Tu);
    }

    @Override // android.webkit.WebChromeClient
    public final boolean onConsoleMessage(ConsoleMessage consoleMessage) {
        if (consoleMessage.messageLevel() == ConsoleMessage.MessageLevel.ERROR) {
            this.A00.A0D.A02(KW.A0O, null);
            this.A00.A0H.A04(P8.A0n, consoleMessage.message());
        }
        return super.onConsoleMessage(consoleMessage);
    }
}
