package com.facebook.ads.redexgen.X;

import android.os.Handler;
import android.os.Looper;
import android.util.Log;
import android.webkit.JavascriptInterface;
import java.lang.ref.WeakReference;
import java.util.concurrent.atomic.AtomicBoolean;

/* JADX WARN: Classes with same name are omitted:
  assets.dex
  assets/audience_network.dex
 */
/* loaded from: assets/assets/audience_network.dex */
public class SC {
    private final String A00 = SC.class.getSimpleName();
    private final WeakReference<AtomicBoolean> A01;
    private final WeakReference<AtomicBoolean> A02;
    private final WeakReference<InterfaceC01921o> A03;
    private final WeakReference<C6K> A04;
    private final WeakReference<SI> A05;
    private final boolean A06;

    public SC(SI si, InterfaceC01921o interfaceC01921o, C6K c6k, AtomicBoolean atomicBoolean, AtomicBoolean atomicBoolean2, boolean z) {
        this.A05 = new WeakReference<>(si);
        this.A03 = new WeakReference<>(interfaceC01921o);
        this.A04 = new WeakReference<>(c6k);
        this.A01 = new WeakReference<>(atomicBoolean);
        this.A02 = new WeakReference<>(atomicBoolean2);
        this.A06 = z;
    }

    @JavascriptInterface
    public void alert(String str) {
        Log.e(this.A00, str);
    }

    @JavascriptInterface
    public String getAnalogInfo() {
        return C0760Nv.A01(JE.A02());
    }

    @JavascriptInterface
    public void onMainAssetLoaded() {
        SC sc = this;
        char c = sc.A05.get() != null ? (char) 2 : (char) 4;
        while (true) {
            switch (c) {
                case 2:
                    sc = sc;
                    if (sc.A01.get() == null) {
                        c = 4;
                        break;
                    } else {
                        c = 3;
                        break;
                    }
                case 3:
                    sc = sc;
                    if (sc.A02.get() != null) {
                        c = 5;
                        break;
                    } else {
                        c = 4;
                        break;
                    }
                case 4:
                    return;
                case 5:
                    sc = sc;
                    if (!sc.A06) {
                        c = 4;
                        break;
                    } else {
                        c = 6;
                        break;
                    }
                case 6:
                    sc = sc;
                    if (!sc.A02.get().get()) {
                        c = 4;
                        break;
                    } else {
                        c = 7;
                        break;
                    }
                case 7:
                    sc = sc;
                    sc.A01.get().set(true);
                    if (!sc.A05.get().isShown()) {
                        c = 4;
                        break;
                    } else {
                        c = '\b';
                        break;
                    }
                case '\b':
                    sc = sc;
                    new Handler(Looper.getMainLooper()).post(new SE(sc.A04));
                    c = 4;
                    break;
            }
        }
    }

    @JavascriptInterface
    public void onPageInitialized() {
        SC sc = this;
        InterfaceC01921o interfaceC01921o = null;
        SI si = sc.A05.get();
        char c = si != null ? (char) 2 : (char) 3;
        while (true) {
            switch (c) {
                case 2:
                    si = si;
                    if (!si.A03()) {
                        c = 4;
                        break;
                    } else {
                        c = 3;
                        break;
                    }
                case 3:
                    return;
                case 4:
                    sc = sc;
                    interfaceC01921o = sc.A03.get();
                    if (interfaceC01921o == null) {
                        c = 6;
                        break;
                    } else {
                        c = 5;
                        break;
                    }
                case 5:
                    interfaceC01921o = interfaceC01921o;
                    interfaceC01921o.A5v();
                    c = 6;
                    break;
                case 6:
                    sc = sc;
                    if (!sc.A06) {
                        c = 7;
                        break;
                    } else {
                        c = 3;
                        break;
                    }
                case 7:
                    sc = sc;
                    SI webView = sc.A05.get();
                    if (!webView.isShown()) {
                        c = 3;
                        break;
                    } else {
                        c = '\b';
                        break;
                    }
                case '\b':
                    sc = sc;
                    new Handler(Looper.getMainLooper()).post(new SE(sc.A04));
                    c = 3;
                    break;
            }
        }
    }
}
