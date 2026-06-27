package com.facebook.ads.redexgen.X;

import android.content.Context;
import android.os.Build;
import android.util.Log;
import android.webkit.CookieManager;
import android.webkit.WebChromeClient;
import android.webkit.WebView;
import android.webkit.WebViewClient;
import com.facebook.ads.internal.api.BuildConfigApi;
import java.lang.reflect.InvocationTargetException;
import java.util.Arrays;

/* JADX WARN: Classes with same name are omitted:
  assets.dex
  assets/audience_network.dex
 */
/* renamed from: com.facebook.ads.redexgen.X.Om, reason: case insensitive filesystem */
/* loaded from: assets/assets/audience_network.dex */
public abstract class AbstractC0777Om extends WebView {
    private static byte[] A01;
    private static final String A02;
    private boolean A00;

    private static String A00(int i, int i2, int i3) {
        byte[] bArrCopyOfRange = Arrays.copyOfRange(A01, i, i + i2);
        int i4 = 0;
        char c = 2;
        while (true) {
            switch (c) {
                case 2:
                    bArrCopyOfRange = bArrCopyOfRange;
                    if (i4 >= bArrCopyOfRange.length) {
                        c = 4;
                        break;
                    } else {
                        c = 3;
                        break;
                    }
                case 3:
                    bArrCopyOfRange = bArrCopyOfRange;
                    bArrCopyOfRange[i4] = (byte) ((bArrCopyOfRange[i4] ^ i3) ^ 55);
                    i4++;
                    c = 2;
                    break;
                case 4:
                    return new String(bArrCopyOfRange);
            }
        }
    }

    private static void A02() {
        A01 = new byte[]{98, 69, 77, 72, 65, 64, 4, 80, 75, 4, 77, 74, 77, 80, 77, 69, 72, 77, 94, 65, 4, 103, 75, 75, 79, 77, 65, 105, 69, 74, 69, 67, 65, 86, 10};
    }

    static {
        A02();
        A02 = AbstractC0777Om.class.getSimpleName();
    }

    public AbstractC0777Om(Context context) throws IllegalAccessException, IllegalArgumentException, InvocationTargetException {
        super(context);
        A01();
    }

    private void A01() throws IllegalAccessException, IllegalArgumentException, InvocationTargetException {
        AbstractC0777Om abstractC0777Om = this;
        boolean z = false;
        abstractC0777Om.setWebChromeClient(abstractC0777Om.A09());
        abstractC0777Om.setWebViewClient(abstractC0777Om.A0A());
        C0778On.A04(abstractC0777Om);
        abstractC0777Om.getSettings().setJavaScriptEnabled(true);
        abstractC0777Om.getSettings().setDomStorageEnabled(true);
        char c = Build.VERSION.SDK_INT >= 17 ? (char) 2 : (char) 3;
        while (true) {
            switch (c) {
                case 2:
                    abstractC0777Om = abstractC0777Om;
                    z = false;
                    abstractC0777Om.getSettings().setMediaPlaybackRequiresUserGesture(false);
                    c = 3;
                    break;
                case 3:
                    if (!BuildConfigApi.isDebug()) {
                        c = 6;
                        break;
                    } else {
                        c = 4;
                        break;
                    }
                case 4:
                    if (Build.VERSION.SDK_INT < 19) {
                        c = 6;
                        break;
                    } else {
                        c = 5;
                        break;
                    }
                case 5:
                    setWebContentsDebuggingEnabled(true);
                    c = 6;
                    break;
                case 6:
                    AbstractC0777Om abstractC0777Om2 = abstractC0777Om;
                    abstractC0777Om2.setHorizontalScrollBarEnabled(z);
                    abstractC0777Om2.setHorizontalScrollbarOverlay(z);
                    abstractC0777Om2.setVerticalScrollBarEnabled(z);
                    abstractC0777Om2.setVerticalScrollbarOverlay(z);
                    if (Build.VERSION.SDK_INT >= 21) {
                        try {
                            CookieManager.getInstance().setAcceptThirdPartyCookies(abstractC0777Om2, true);
                            return;
                        } catch (Exception unused) {
                            Log.w(A02, A00(0, 35, 19));
                            return;
                        }
                    }
                    return;
            }
        }
    }

    public final boolean A03() {
        return this.A00;
    }

    public WebChromeClient A09() {
        return new WebChromeClient();
    }

    public WebViewClient A0A() {
        return new WebViewClient();
    }

    @Override // android.webkit.WebView
    public void destroy() {
        this.A00 = true;
        super.destroy();
    }
}
