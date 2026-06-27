package com.facebook.ads.redexgen.X;

import android.app.Activity;
import android.os.Bundle;
import android.view.Window;

/* JADX WARN: Classes with same name are omitted:
  assets.dex
  assets/audience_network.dex
 */
/* renamed from: com.facebook.ads.redexgen.X.Ak, reason: case insensitive filesystem */
/* loaded from: assets/assets/audience_network.dex */
public class C0417Ak implements InterfaceC0416Aj {
    @Override // com.facebook.ads.redexgen.X.InterfaceC0416Aj
    public final void onActivityCreated(Activity activity, Bundle bundle) {
        C0417Ak c0417Ak = this;
        Window.Callback callback = null;
        char c = activity.getWindow() != null ? (char) 2 : (char) 6;
        while (true) {
            switch (c) {
                case 2:
                    activity = activity;
                    callback = activity.getWindow().getCallback();
                    c = 3;
                    break;
                case 3:
                    if (callback == null) {
                        c = 5;
                        break;
                    } else {
                        c = 4;
                        break;
                    }
                case 4:
                    c0417Ak = c0417Ak;
                    activity = activity;
                    NO no = new NO(callback, activity);
                    NO.A00(new C0415Ai(c0417Ak));
                    activity.getWindow().setCallback(no);
                    c = 5;
                    break;
                case 5:
                    return;
                case 6:
                    callback = null;
                    c = 3;
                    break;
            }
        }
    }
}
