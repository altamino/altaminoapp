package com.facebook.ads.redexgen.X;

import android.app.Activity;
import android.os.Bundle;
import android.view.Window;

/* JADX WARN: Classes with same name are omitted:
  assets.dex
  assets/audience_network.dex
 */
/* loaded from: assets/assets/audience_network.dex */
public class FO implements InterfaceC0416Aj {
    @Override // com.facebook.ads.redexgen.X.InterfaceC0416Aj
    public final void onActivityCreated(Activity activity, Bundle bundle) {
        FO fo = this;
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
                    fo = fo;
                    activity = activity;
                    NO no = new NO(callback, activity);
                    NO.A00(new FN(fo));
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
