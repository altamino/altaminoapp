package com.facebook.ads.redexgen.X;

import android.content.Context;
import android.widget.TextView;
import com.google.android.exoplayer2.upstream.DefaultLoadErrorHandlingPolicy;
import java.util.Arrays;
import java.util.Locale;
import java.util.concurrent.TimeUnit;

/* JADX WARN: Classes with same name are omitted:
  assets.dex
  assets/audience_network.dex
 */
/* renamed from: com.facebook.ads.redexgen.X.Ik, reason: case insensitive filesystem */
/* loaded from: assets/assets/audience_network.dex */
public final class C0624Ik extends AbstractC0692Lc {
    private static byte[] A03;
    private final TextView A00;
    private final AbstractC01971t<K0> A01;
    private final String A02;

    static {
        A07();
    }

    private static String A04(int i, int i2, int i3) {
        byte[] bArrCopyOfRange = Arrays.copyOfRange(A03, i, i + i2);
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
                    bArrCopyOfRange[i4] = (byte) ((bArrCopyOfRange[i4] - i3) - 79);
                    i4++;
                    c = 2;
                    break;
                case 4:
                    return new String(bArrCopyOfRange);
            }
        }
    }

    private static void A07() {
        A03 = new byte[]{-97, -86, -84, -34, -76, -97, -86, -84, -34, 65, 65, 24, 11, 19, 7, 15, 20, 15, 20, 13, 37, 26, 15, 19, 11, 67, 67, -30, -30, -20, -30, -30};
    }

    public C0624Ik(Context context, String str) {
        super(context);
        this.A01 = new C0625Il(this);
        this.A00 = new TextView(context);
        this.A02 = str;
        addView(this.A00);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public String A05(long j) {
        C0624Ik c0624Ik = this;
        String strReplace = null;
        long minutes = 0;
        long seconds = 0;
        char c = j <= 0 ? (char) 2 : (char) 4;
        while (true) {
            switch (c) {
                case 2:
                    strReplace = A04(27, 5, 99);
                    c = 3;
                    break;
                case 3:
                    return strReplace;
                case 4:
                    c0624Ik = c0624Ik;
                    minutes = TimeUnit.MILLISECONDS.toMinutes(j);
                    seconds = TimeUnit.MILLISECONDS.toSeconds(j % DefaultLoadErrorHandlingPolicy.DEFAULT_TRACK_BLACKLIST_MS);
                    if (!c0624Ik.A02.isEmpty()) {
                        c = 6;
                        break;
                    } else {
                        c = 5;
                        break;
                    }
                case 5:
                    strReplace = String.format(Locale.US, A04(0, 9, 43), Long.valueOf(minutes), Long.valueOf(seconds));
                    c = 3;
                    break;
                case 6:
                    c0624Ik = c0624Ik;
                    strReplace = c0624Ik.A02.replace(A04(9, 18, 119), String.format(Locale.US, A04(0, 9, 43), Long.valueOf(minutes), Long.valueOf(seconds)));
                    c = 3;
                    break;
            }
        }
    }

    @Override // com.facebook.ads.redexgen.X.AbstractC0692Lc
    public final void A09() {
        super.A09();
        if (getVideoView() != null) {
            getVideoView().getEventBus().A05(this.A01);
        }
    }

    @Override // com.facebook.ads.redexgen.X.AbstractC0692Lc
    public final void A0A() {
        if (getVideoView() != null) {
            getVideoView().getEventBus().A06(this.A01);
        }
        super.A0A();
    }

    public void setCountdownTextColor(int i) {
        this.A00.setTextColor(i);
    }
}
