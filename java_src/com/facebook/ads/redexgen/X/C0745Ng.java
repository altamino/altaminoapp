package com.facebook.ads.redexgen.X;

import android.app.Activity;
import android.app.AlertDialog;
import android.content.Context;
import android.content.DialogInterface;
import android.support.annotation.Nullable;

/* JADX WARN: Classes with same name are omitted:
  assets.dex
  assets/audience_network.dex
 */
/* renamed from: com.facebook.ads.redexgen.X.Ng, reason: case insensitive filesystem */
/* loaded from: assets/assets/audience_network.dex */
public final class C0745Ng {
    private C0745Ng() {
    }

    public static void A00(DialogInterface.OnClickListener onClickListener, DialogInterface.OnClickListener onClickListener2, @Nullable Context context) {
        char c = context != null ? (char) 2 : (char) 3;
        while (true) {
            switch (c) {
                case 2:
                    context = context;
                    if (!(context instanceof Activity)) {
                        c = 3;
                        break;
                    } else {
                        c = 5;
                        break;
                    }
                case 3:
                    onClickListener = onClickListener;
                    onClickListener.onClick(null, 0);
                    c = 4;
                    break;
                case 4:
                    return;
                case 5:
                    onClickListener = onClickListener;
                    onClickListener2 = onClickListener2;
                    context = context;
                    new AlertDialog.Builder(context).setTitle(K1.A0f(context)).setMessage(K1.A0d(context)).setPositiveButton(K1.A0e(context), new DialogInterfaceOnClickListenerC0744Nf(onClickListener)).setNegativeButton(K1.A0c(context), new DialogInterfaceOnClickListenerC0743Ne(onClickListener2)).show();
                    c = 4;
                    break;
            }
        }
    }
}
