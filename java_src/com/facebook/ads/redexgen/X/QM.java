package com.facebook.ads.redexgen.X;

import android.content.Context;
import android.content.Intent;
import android.net.Uri;
import android.support.annotation.Nullable;
import android.util.AttributeSet;
import android.util.Log;
import com.facebook.ads.NativeAd;
import com.facebook.ads.internal.protocol.AdErrorType;
import com.facebook.ads.internal.settings.AdInternalSettings;
import com.google.android.exoplayer2.C;
import com.tonyodev.fetch.FetchService;
import java.util.Arrays;
import java.util.UUID;

/* JADX WARN: Classes with same name are omitted:
  assets.dex
  assets/audience_network.dex
 */
/* loaded from: assets/assets/audience_network.dex */
public final class QM extends QL {
    private static byte[] A0D;
    private static final String A0E;

    @Nullable
    private Uri A00;

    @Nullable
    private NativeAd A01;
    private KM A02;

    @Nullable
    private C9I A03;

    @Nullable
    private MA A04;

    @Nullable
    private String A05;

    @Nullable
    private String A06;

    @Nullable
    private String A07;
    private final C02042a A08;
    private final C9T A09;
    private final C9P A0A;
    private final C9N A0B;
    private final String A0C;

    private static String A09(int i, int i2, int i3) {
        byte[] bArrCopyOfRange = Arrays.copyOfRange(A0D, i, i + i2);
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
                    bArrCopyOfRange[i4] = (byte) ((bArrCopyOfRange[i4] - i3) - 56);
                    i4++;
                    c = 2;
                    break;
                case 4:
                    return new String(bArrCopyOfRange);
            }
        }
    }

    private static void A0B() {
        A0D = new byte[]{-13, 27, 25, 26, -58, 25, 11, 26, -4, 15, 10, 11, 21, -5, -8, -17, -58, 21, 24, -58, 25, 11, 26, -4, 15, 10, 11, 21, -13, -10, -22, -58, 12, 15, 24, 25, 26, -39, -52, -56, -38, -73, -36, -45, -56, -122, -126, -127, -75, -92, -87, -91, -82, -93, -91, -114, -91, -76, -73, -81, -78, -85, -65, -78, -83, -82, -72, -106, -103, -115, -19, -32, -37, -36, -26, -52, -55, -61, 7, -8, 9, 10, 0, 5, -2, 123, -103, -90, 95, -84, 88, -85, -84, -103, -86, -84, 88, 121, -83, -100, -95, -99, -90, -101, -99, -122, -99, -84, -81, -89, -86, -93, 121, -101, -84, -95, -82, -95, -84, -79, 102, 88, -123, -103, -93, -99, 88, -85, -83, -86, -99, 88, -84, -96, -103, -84, 88, -95, -84, 95, -85, 88, -95, -90, 88, -79, -89, -83, -86, 88, 121, -90, -100, -86, -89, -95, -100, -123, -103, -90, -95, -98, -99, -85, -84, 102, -80, -91, -92, 88, -98, -95, -92, -99, 102, 0, -13, -18, -17, -7, -23, -2, -13, -9, -17, -23, -6, -7, -10, -10, -13, -8, -15, -23, -13, -8, -2, -17, -4, 0, -21, -10, 7, 5, -9, -32, -13, 6, -5, 8, -9, -43, 6, -13, -44, 7, 6, 6, 1, 0, -21, -12, -15, -19, -10, -4, -36, -9, -13, -19, -10, -47, -54, -59, -51, -47, -63, -91, -64, -23, -36, -41, -40, -30, -58, -40, -40, -34, -57, -36, -32, -40, -35, -33, -46, -47, -46, -45, -42, -37, -46, -47, -68, -33, -42, -46, -37, -31, -50, -31, -42, -36, -37, -72, -46, -26, -29, -42, -47, -46, -36, -71, -36, -44, -44, -46, -33, -67, -54, -69, -67, -65, -48, -59, -46, -59, -48, -43, -7, 33, 31, 32, -52, 31, 17, 32, -17, 24, 21, 17, 26, 32, 0, 27, 23, 17, 26, -52, 18, 21, 30, 31, 32, -6, 39, 39, 36, 39, -17, -43};
    }

    static {
        A0B();
        A0E = QM.class.getSimpleName();
    }

    public QM(Context context) {
        super(context);
        this.A0C = UUID.randomUUID().toString();
        this.A0B = new QF(this);
        this.A0A = new QG(this);
        this.A09 = new QH(this);
        this.A08 = new C02042a(this, context);
        A0A();
    }

    public QM(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.A0C = UUID.randomUUID().toString();
        this.A0B = new QF(this);
        this.A0A = new QG(this);
        this.A09 = new QH(this);
        this.A08 = new C02042a(this, context);
        A0A();
    }

    public QM(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.A0C = UUID.randomUUID().toString();
        this.A0B = new QF(this);
        this.A0A = new QG(this);
        this.A09 = new QH(this);
        this.A08 = new C02042a(this, context);
        A0A();
    }

    private void A0A() {
        getEventBus().A03(this.A0B, this.A0A, this.A09);
    }

    private void A0E(Intent intent) {
        QM qm = this;
        String strA09 = null;
        String strA092 = null;
        char c = qm.A04 == null ? (char) 2 : (char) 4;
        while (true) {
            switch (c) {
                case 2:
                    qm = qm;
                    qm.A0F(A09(298, 25, 116));
                    c = 3;
                    break;
                case 3:
                    return;
                case 4:
                    qm = qm;
                    if (qm.A00 != null) {
                        c = 7;
                        break;
                    } else {
                        c = 5;
                        break;
                    }
                case 5:
                    qm = qm;
                    if (qm.A07 != null) {
                        c = 7;
                        break;
                    } else {
                        c = 6;
                        break;
                    }
                case 6:
                    qm = qm;
                    qm.A0F(A09(0, 37, 110));
                    c = 3;
                    break;
                case 7:
                    qm = qm;
                    intent = intent;
                    intent.putExtra(A09(202, 18, 90), qm.A06);
                    intent.putExtra(A09(37, 8, 43), M6.A05);
                    intent.putExtra(A09(70, 8, 63), qm.A00.toString());
                    strA09 = A09(220, 11, 80);
                    if (qm.A05 != null) {
                        c = '\n';
                        break;
                    } else {
                        c = '\b';
                        break;
                    }
                case '\b':
                    strA092 = A09(231, 0, 52);
                    c = '\t';
                    break;
                case '\t':
                    qm = qm;
                    intent = intent;
                    strA09 = strA09;
                    strA092 = strA092;
                    intent.putExtra(strA09, strA092);
                    intent.putExtra(A09(62, 8, 17), qm.A07);
                    intent.putExtra(A09(252, 24, 53), 13);
                    intent.putExtra(A09(239, 13, 59), qm.getCurrentPositionInMillis());
                    intent.putExtra(A09(231, 8, 36), qm.A0C);
                    intent.putExtra(A09(276, 11, 53), qm.A04.getSaveInstanceState());
                    intent.putExtra(A09(175, 27, 82), qm.getVideoProgressReportIntervalMs());
                    intent.addFlags(C.ENCODING_PCM_MU_LAW);
                    c = 3;
                    break;
                case '\n':
                    qm = qm;
                    strA092 = qm.A05;
                    c = '\t';
                    break;
            }
        }
    }

    private void A0F(String str) {
        P7.A07(getContext(), A09(78, 7, 95), P8.A1V, new PA(AdErrorType.PARSER_FAILURE.getDefaultErrorMessage(), A09(FetchService.ACTION_ON_UPDATE_INTERVAL, 7, 125) + str));
        if (AdInternalSettings.isDebugBuild()) {
            Log.w(A0E, str);
        }
    }

    public final void A0a() {
        if (this.A01 != null) {
            this.A01.onCtaBroadcast();
        }
    }

    public final void A0b() {
        Context context = getContext();
        Intent intent = new Intent(context, (Class<?>) NQ.A03());
        A0E(intent);
        try {
            A0S(false);
            setVisibility(8);
            NQ.A06(context, intent);
        } catch (Exception e) {
            P7.A07(context, A09(287, 11, 36), P8.A04, new PA(e));
            Log.e(A09(45, 17, 8), A09(85, 90, 0), e);
        }
    }

    @Nullable
    public C9I getListener() {
        return this.A03;
    }

    public String getUniqueId() {
        return this.A0C;
    }

    @Override // com.facebook.ads.redexgen.X.QL, android.view.ViewGroup, android.view.View
    public final void onAttachedToWindow() {
        super.onAttachedToWindow();
        this.A08.A02();
    }

    @Override // com.facebook.ads.redexgen.X.QL, android.view.ViewGroup, android.view.View
    public final void onDetachedFromWindow() {
        this.A08.A03();
        super.onDetachedFromWindow();
    }

    public void setAdEventManager(KM km) {
        this.A02 = km;
    }

    public void setClientToken(@Nullable String str) {
        QM qm = this;
        MA ma = null;
        char c = qm.A04 != null ? (char) 2 : (char) 3;
        while (true) {
            switch (c) {
                case 2:
                    qm = qm;
                    qm.A04.A0f();
                    c = 3;
                    break;
                case 3:
                    qm = qm;
                    str = str;
                    qm.A05 = str;
                    if (str == null) {
                        c = 6;
                        break;
                    } else {
                        c = 4;
                        break;
                    }
                case 4:
                    qm = qm;
                    str = str;
                    ma = new MA(qm.getContext(), qm.A02, qm, str);
                    c = 5;
                    break;
                case 5:
                    qm.A04 = ma;
                    return;
                case 6:
                    ma = null;
                    c = 5;
                    break;
            }
        }
    }

    public void setEnableBackgroundVideo(boolean z) {
        super.A0C.setBackgroundPlaybackEnabled(z);
    }

    public void setListener(@Nullable C9I c9i) {
        this.A03 = c9i;
    }

    public void setNativeAd(@Nullable NativeAd nativeAd) {
        this.A01 = nativeAd;
    }

    public void setVideoCTA(@Nullable String str) {
        this.A06 = str;
    }

    @Override // com.facebook.ads.redexgen.X.QL
    public void setVideoMPD(@Nullable String str) {
        QM qm = this;
        char c = str != null ? (char) 2 : (char) 5;
        while (true) {
            switch (c) {
                case 2:
                    qm = qm;
                    if (qm.A04 != null) {
                        c = 5;
                        break;
                    } else {
                        c = 3;
                        break;
                    }
                case 3:
                    qm = qm;
                    qm.A0F(A09(298, 25, 116));
                    c = 4;
                    break;
                case 4:
                    return;
                case 5:
                    qm = qm;
                    str = str;
                    qm.A07 = str;
                    super.setVideoMPD(str);
                    c = 4;
                    break;
            }
        }
    }

    @Override // com.facebook.ads.redexgen.X.QL
    public void setVideoURI(@Nullable Uri uri) {
        QM qm = this;
        char c = uri != null ? (char) 2 : (char) 5;
        while (true) {
            switch (c) {
                case 2:
                    qm = qm;
                    if (qm.A04 != null) {
                        c = 5;
                        break;
                    } else {
                        c = 3;
                        break;
                    }
                case 3:
                    qm = qm;
                    qm.A0F(A09(298, 25, 116));
                    c = 4;
                    break;
                case 4:
                    return;
                case 5:
                    qm = qm;
                    uri = uri;
                    qm.A00 = uri;
                    super.setVideoURI(uri);
                    c = 4;
                    break;
            }
        }
    }
}
