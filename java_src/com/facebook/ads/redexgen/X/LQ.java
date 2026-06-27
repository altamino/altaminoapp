package com.facebook.ads.redexgen.X;

import android.support.annotation.Nullable;
import android.text.TextUtils;
import com.facebook.ads.AdError;
import com.facebook.ads.internal.protocol.AdErrorType;

/* JADX WARN: Classes with same name are omitted:
  assets.dex
  assets/audience_network.dex
 */
/* loaded from: assets/assets/audience_network.dex */
public final class LQ {
    private final AdErrorType A00;
    private final String A01;

    public LQ(int i, String str) {
        this(AdErrorType.adErrorTypeFromCode(i), str);
    }

    public LQ(AdErrorType adErrorType, @Nullable String str) {
        str = TextUtils.isEmpty(str) ? adErrorType.getDefaultErrorMessage() : str;
        this.A00 = adErrorType;
        this.A01 = str;
    }

    public static AdError A00(LQ lq) {
        AdError adError = null;
        char c = lq.A04().isPublicError() ? (char) 2 : (char) 4;
        while (true) {
            switch (c) {
                case 2:
                    lq = lq;
                    adError = new AdError(lq.A04().getErrorCode(), lq.A05());
                    c = 3;
                    break;
                case 3:
                    return adError;
                case 4:
                    adError = new AdError(AdErrorType.UNKNOWN_ERROR.getErrorCode(), AdErrorType.UNKNOWN_ERROR.getDefaultErrorMessage());
                    c = 3;
                    break;
            }
        }
    }

    public static LQ A01(AdErrorType adErrorType) {
        return new LQ(adErrorType, (String) null);
    }

    public static LQ A02(AdErrorType adErrorType, @Nullable String str) {
        return new LQ(adErrorType, str);
    }

    public static LQ A03(LR lr) {
        return new LQ(lr.A00(), lr.A01());
    }

    public final AdErrorType A04() {
        return this.A00;
    }

    public final String A05() {
        return this.A01;
    }
}
