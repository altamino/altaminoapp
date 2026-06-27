package com.facebook.ads.redexgen.X;

import android.os.Build;

/* JADX WARN: Classes with same name are omitted:
  assets.dex
  assets/audience_network.dex
 */
/* renamed from: com.facebook.ads.redexgen.X.El, reason: case insensitive filesystem */
/* loaded from: assets/assets/audience_network.dex */
public final class C0521El<T> {
    private final int A00;
    private final int A01;
    private final T A02;

    /* JADX WARN: Generic types in debug info not equals: com.facebook.ads.redexgen.X.El != com.facebook.ads.internal.botdetection.signals.model.BundledSignalMetadata<T> */
    public C0521El(T bundledSignalMetadataKey, int i, int i2) {
        this.A02 = bundledSignalMetadataKey;
        this.A00 = i;
        this.A01 = i2;
    }

    /* JADX WARN: Generic types in debug info not equals: com.facebook.ads.redexgen.X.El != com.facebook.ads.internal.botdetection.signals.model.BundledSignalMetadata<T> */
    private boolean A00() {
        C0521El<T> c0521El = this;
        boolean z = false;
        char c = c0521El.A00 > 0 ? (char) 2 : '\b';
        while (true) {
            switch (c) {
                case 2:
                    c0521El = c0521El;
                    if (c0521El.A00 >= 9999) {
                        c = '\b';
                        break;
                    } else {
                        c = 3;
                        break;
                    }
                case 3:
                    c0521El = c0521El;
                    if (c0521El.A01 <= 0) {
                        c = '\b';
                        break;
                    } else {
                        c = 4;
                        break;
                    }
                case 4:
                    c0521El = c0521El;
                    if (c0521El.A01 >= 10000) {
                        c = '\b';
                        break;
                    } else {
                        c = 5;
                        break;
                    }
                case 5:
                    c0521El = c0521El;
                    if (c0521El.A00 >= c0521El.A01) {
                        c = '\b';
                        break;
                    } else {
                        c = 6;
                        break;
                    }
                case 6:
                    z = true;
                    c = 7;
                    break;
                case 7:
                    return z;
                case '\b':
                    z = false;
                    c = 7;
                    break;
            }
        }
    }

    /* JADX WARN: Generic types in debug info not equals: com.facebook.ads.redexgen.X.El != com.facebook.ads.internal.botdetection.signals.model.BundledSignalMetadata<T> */
    public final T A01() {
        return this.A02;
    }

    /* JADX WARN: Generic types in debug info not equals: com.facebook.ads.redexgen.X.El != com.facebook.ads.internal.botdetection.signals.model.BundledSignalMetadata<T> */
    public final boolean A02() {
        C0521El<T> c0521El = this;
        boolean z = false;
        char c = c0521El.A00() ? (char) 2 : (char) 6;
        while (true) {
            switch (c) {
                case 2:
                    c0521El = c0521El;
                    if (Build.VERSION.SDK_INT < c0521El.A00) {
                        c = 6;
                        break;
                    } else {
                        c = 3;
                        break;
                    }
                case 3:
                    c0521El = c0521El;
                    if (Build.VERSION.SDK_INT >= c0521El.A01) {
                        c = 6;
                        break;
                    } else {
                        c = 4;
                        break;
                    }
                case 4:
                    z = true;
                    c = 5;
                    break;
                case 5:
                    return z;
                case 6:
                    z = false;
                    c = 5;
                    break;
            }
        }
    }
}
