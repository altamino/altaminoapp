package com.facebook.ads.redexgen.X;

import android.annotation.SuppressLint;
import android.content.Context;
import android.support.annotation.Nullable;
import android.support.annotation.VisibleForTesting;
import java.util.Map;

/* JADX WARN: Classes with same name are omitted:
  assets.dex
  assets/audience_network.dex
 */
/* loaded from: assets/assets/audience_network.dex */
public final class Jn {
    private static Jn A00 = new Jn();

    @VisibleForTesting
    private Jn() {
    }

    public static Jn A00() {
        return A00;
    }

    @Nullable
    public static Map<String, String> A01() {
        return C0654Jp.A05();
    }

    @SuppressLint({"InstanceMethodCanBeStatic"})
    public final InterfaceC0652Jm A02(Context context, boolean z) {
        return new C0654Jp(context, z);
    }

    @SuppressLint({"CatchGeneralException"})
    public final Map<String, String> A03(Context context) {
        try {
            return A02(context, false).A3T();
        } catch (Throwable th) {
            P7.A0F(th);
            return C0647Jh.A01(context);
        }
    }
}
