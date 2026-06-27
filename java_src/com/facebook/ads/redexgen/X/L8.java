package com.facebook.ads.redexgen.X;

import android.content.Context;
import android.graphics.drawable.Drawable;
import android.net.Uri;
import android.os.Build;
import android.support.annotation.Nullable;
import android.text.TextUtils;
import android.util.Log;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import com.facebook.ads.AdSettings;
import com.facebook.ads.ExtraHints;
import com.facebook.ads.MediaView;
import com.facebook.ads.NativeAd;
import com.facebook.ads.NativeAdBase;
import com.facebook.ads.NativeAdLayout;
import com.facebook.ads.NativeAdListener;
import com.facebook.ads.NativeBannerAd;
import com.facebook.ads.internal.api.AdNativeComponentView;
import com.facebook.ads.internal.api.NativeAdBaseApi;
import com.facebook.ads.internal.api.NativeAdImageApi;
import com.facebook.ads.internal.logging.AdEventManagerImpl;
import com.facebook.ads.internal.protocol.AdErrorType;
import com.facebook.ads.internal.protocol.AdPlacementType;
import com.facebook.ads.internal.settings.AdInternalSettings;
import com.narvii.visitor.RecentVisitorListFragment;
import java.lang.ref.WeakReference;
import java.lang.reflect.Proxy;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;
import java.util.UUID;
import java.util.WeakHashMap;
import org.apache.commons.compress.archivers.zip.UnixStat;

/* JADX WARN: Classes with same name are omitted:
  assets.dex
  assets/audience_network.dex
 */
/* loaded from: assets/assets/audience_network.dex */
public final class L8 implements NativeAdBaseApi {
    private static C0607Ht A0d;
    private static byte[] A0e;
    private static final String A0f;
    private static final WeakHashMap<View, WeakReference<L8>> A0g;

    @Nullable
    private Drawable A00;
    private View.OnTouchListener A01;

    @Nullable
    private View A02;
    private View A03;

    @Nullable
    private View A04;

    @Nullable
    private NativeAdLayout A05;
    private C2U A06;

    @Nullable
    private C2W A07;
    private C02423m A08;

    @Nullable
    private C02473r A09;

    @Nullable
    private IB A0A;

    @Nullable
    private JK A0B;
    private EnumC0685Kv A0C;
    private L6 A0D;

    @Nullable
    private LA A0E;
    private LI A0F;
    private LJ A0G;
    private LW A0H;
    private RJ A0I;

    @Nullable
    private SL A0J;
    private AbstractC02052b A0K;
    private C6K A0L;
    private String A0M;

    @Nullable
    private String A0N;
    private WeakReference<C03618f> A0O;
    private WeakReference<AbstractC02052b> A0P;
    private boolean A0Q;
    private boolean A0R;
    private boolean A0S;
    private boolean A0T;

    @Nullable
    public AnonymousClass29 A0U;
    private final Context A0V;
    private final C0607Ht A0W;
    private final L2 A0X;
    private final OP A0Y;
    private final String A0Z;
    private final String A0a;
    private final List<View> A0b;
    private volatile boolean A0c;

    private static String A0P(int i, int i2, int i3) {
        byte[] bArrCopyOfRange = Arrays.copyOfRange(A0e, i, i + i2);
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
                    bArrCopyOfRange[i4] = (byte) ((bArrCopyOfRange[i4] ^ i3) ^ 60);
                    i4++;
                    c = 2;
                    break;
                case 4:
                    return new String(bArrCopyOfRange);
            }
        }
    }

    private static void A0U() {
        A0e = new byte[]{75, 116, 120, 106, 61, 115, 114, 105, 61, 111, 120, 122, 116, 110, 105, 120, 111, 120, 121, 61, 106, 116, 105, 117, 61, 105, 117, 116, 110, 61, 83, 124, 105, 116, 107, 120, 92, 121, 37, 0, 45, 7, 11, 10, 50, 13, 1, 19, 68, 13, 23, 68, 9, 13, 23, 23, 13, 10, 3, 74, 117, 113, 114, 70, 87, 90, 86, 93, 80, 86, 125, 86, 71, 68, 92, 65, 88, 81, 83, 78, 76, 78, 85, 68, 69, 126, 85, 83, 64, 79, 82, 77, 64, 85, 72, 78, 79, 28, 26, 75, 79, 26, 19, 29, 29, 9, 12, 15, 93, 91, 9, 92, 14, 103, 100, 106, 111, 74, 111, 77, 121, 100, 102, 73, 98, 111, 116, 113, 53, 120, 112, 113, 124, 116, 53, 97, 108, 101, 112, 53, 124, 102, 53, 123, 122, 97, 53, 102, 96, 101, 101, 122, 103, 97, 112, 113, 59, 125, 69, 67, 68, 16, 64, 66, 95, 70, 89, 84, 85, 16, 81, 16, 102, 89, 85, 71, 46, 1, 20, 9, 22, 5, 64, 33, 4, 64, 23, 1, 19, 64, 1, 12, 18, 5, 1, 4, 25, 64, 18, 5, 7, 9, 19, 20, 5, 18, 5, 4, 64, 23, 9, 20, 8, 64, 1, 64, 54, 9, 5, 23, 78, 64, 33, 21, 20, 15, 64, 21, 14, 18, 5, 7, 9, 19, 20, 5, 18, 9, 14, 7, 64, 1, 14, 4, 64, 16, 18, 15, 3, 5, 5, 4, 9, 14, 7, 78, 83, 80, 94, 91, 126, 91, 44, 4, 5, 8, 0, 55, 8, 4, 22, 65, 8, 18, 65, 12, 8, 18, 18, 8, 15, 6, 79, 47, 42, 45, 40, 28, 39, 38, 48, 32, 49, 42, 51, 55, 42, 44, 45, 96, 50, 48, 50, 98, 50, 52, 100, 124, 91, 83, 86, 95, 94, 26, 78, 85, 26, 86, 85, 91, 94, 26, 119, 95, 94, 83, 91, 20, 56, 29, 89, 23, 22, 13, 89, 21, 22, 24, 29, 28, 29, 40, 52, 56, 50, 58, 55, 4, 56, 52, 53, 47, 62, 35, 47, 113, 112, 102, 97, 103, 122, 108, 121, 123, 118, 118, 69, 110, 117, 69, 123, 121, 110, 115, 117, 116, 114, 114, 34, 117, 117, 113, 35, 35, 66, 79, 68, 89, 120, 87, 66, 95, 64, 83, 22, 87, 82, 22, 82, 83, 69, 66, 68, 89, 79, 83, 82, 127, 110, 119, 89, 90, 69, 68, 89, 69, 88, 79, 78, 117, 94, 88, 75, 68, 89, 70, 75, 94, 67, 69, 68, 63, 58, 1, 42, 44, 63, 48, 45, 50, 63, 42, 55, 49, 48, 83, 81, 84, 6, 93, 82, 87, 1, 95, 112, 101, 120, 103, 116, 49, 112, 117, 49, 125, 126, 112, 117, 49, 99, 116, 96, 100, 116, 98, 101, 116, 117, 27, 62, 14, 63, 55, 42, 54, 59, 46, 63, 122, 125, 127, 41, 125, 122, 51, 41, 122, 52, 53, 46, 122, 59, 122, 52, 59, 46, 51, 44, 63, 122, 59, 62, 87, 82, 64, 83, 68, 66, 95, 69, 83, 68, 105, 88, 87, 91, 83, 8, 7, 18, 15, 16, 3, 50, 21, 29, 24, 17, 16, 84, 0, 27, 84, 27, 22, 0, 21, 29, 26, 84, 0, 17, 25, 4, 24, 21, 0, 17, 84, 61, 48, 84, 18, 6, 27, 25, 84, 22, 29, 16, 84, 4, 21, 13, 24, 27, 21, 16, 84, 83, 81, 7, 83, 49, 60, 56, 61, 53, 48, 55, 60, 56, 59, 53, 48, 21, 48, 124, 125, 116, 55, 53, 56, 56, 49, 48, 116, 57, 59, 38, 49, 116, 32, 60, 53, 58, 116, 59, 58, 55, 49, 49, 14, 2, 16, 71, 6, 11, 21, 2, 6, 3, 30, 71, 21, 2, 0, 14, 20, 19, 2, 21, 2, 3, 71, 16, 14, 19, 15, 71, 6, 71, 41, 6, 19, 14, 17, 2, 38, 3, 73, 71, 38, 18, 19, 8, 71, 18, 9, 21, 2, 0, 14, 20, 19, 2, 21, 14, 9, 0, 71, 6, 9, 3, 71, 23, 21, 8, 4, 2, 2, 3, 14, 9, 0, 73, 37, 2, 26, 13, 0, 5, 8, 76, 31, 9, 24, 76, 3, 10, 76, 15, 0, 5, 15, 7, 13, 14, 0, 9, 76, 26, 5, 9, 27, 31, 22, 16, 70, 67, 66, 69, 23};
    }

    static {
        A0U();
        A0f = L8.class.getSimpleName();
        A0g = new WeakHashMap<>();
    }

    public L8(Context context, AnonymousClass29 anonymousClass29, @Nullable JK jk, L2 l2) {
        this(context, null, l2);
        this.A0U = anonymousClass29;
        this.A0B = jk;
        this.A0c = true;
        this.A03 = new View(context);
    }

    public L8(Context context, AnonymousClass29 anonymousClass29, @Nullable JK jk, L2 l2, @Nullable C02473r c02473r) {
        this(context, anonymousClass29, jk, l2);
        this.A09 = c02473r;
    }

    public L8(Context context, String str, L2 l2) {
        this.A0a = UUID.randomUUID().toString();
        this.A0H = LW.A06;
        this.A0O = new WeakReference<>(null);
        this.A0b = new ArrayList();
        this.A0Y = new OP();
        this.A0T = false;
        this.A0S = false;
        this.A0C = EnumC0685Kv.A04;
        this.A06 = C2U.A03;
        this.A0V = context;
        this.A0Z = str;
        this.A0X = l2;
        if (A0d != null) {
            this.A0W = A0d;
        } else {
            this.A0W = new C0607Ht(context);
        }
        this.A03 = new View(context);
    }

    public L8(L8 l8) {
        this(l8.A0V, null, l8.A0X);
        this.A0B = l8.A0B;
        this.A0U = l8.A0U;
        this.A09 = l8.A09;
        this.A0c = true;
        this.A03 = new View(this.A0V);
    }

    private int A00() {
        L8 l8 = this;
        int iA04 = 1;
        char c = l8.A0B != null ? (char) 2 : (char) 4;
        while (true) {
            switch (c) {
                case 2:
                    l8 = l8;
                    iA04 = l8.A0B.A04();
                    c = 3;
                    break;
                case 3:
                    return iA04;
                case 4:
                    l8 = l8;
                    if (l8.A08 == null) {
                        c = 3;
                        break;
                    } else {
                        c = 5;
                        break;
                    }
                case 5:
                    l8 = l8;
                    if (l8.A08.A07() == null) {
                        c = 3;
                        break;
                    } else {
                        c = 6;
                        break;
                    }
                case 6:
                    l8 = l8;
                    iA04 = l8.A08.A07().A04();
                    c = 3;
                    break;
            }
        }
    }

    private int A01() {
        L8 l8 = this;
        int iA07 = 0;
        char c = l8.A0B != null ? (char) 2 : (char) 4;
        while (true) {
            switch (c) {
                case 2:
                    l8 = l8;
                    iA07 = l8.A0B.A07();
                    c = 3;
                    break;
                case 3:
                    return iA07;
                case 4:
                    l8 = l8;
                    if (l8.A0U == null) {
                        c = 6;
                        break;
                    } else {
                        c = 5;
                        break;
                    }
                case 5:
                    l8 = l8;
                    iA07 = l8.A0U.A0F();
                    c = 3;
                    break;
                case 6:
                    l8 = l8;
                    if (l8.A08 == null) {
                        c = '\t';
                        break;
                    } else {
                        c = 7;
                        break;
                    }
                case 7:
                    l8 = l8;
                    if (l8.A08.A07() == null) {
                        c = '\t';
                        break;
                    } else {
                        c = '\b';
                        break;
                    }
                case '\b':
                    l8 = l8;
                    iA07 = l8.A08.A07().A07();
                    c = 3;
                    break;
                case '\t':
                    iA07 = 0;
                    c = 3;
                    break;
            }
        }
    }

    private int A02() {
        L8 l8 = this;
        int iA0G = 0;
        char c = l8.A0B != null ? (char) 2 : (char) 4;
        while (true) {
            switch (c) {
                case 2:
                    l8 = l8;
                    iA0G = l8.A0B.A08();
                    c = 3;
                    break;
                case 3:
                    return iA0G;
                case 4:
                    l8 = l8;
                    if (l8.A0U == null) {
                        c = 6;
                        break;
                    } else {
                        c = 5;
                        break;
                    }
                case 5:
                    l8 = l8;
                    iA0G = l8.A0U.A0G();
                    c = 3;
                    break;
                case 6:
                    l8 = l8;
                    if (l8.A08 == null) {
                        c = '\t';
                        break;
                    } else {
                        c = 7;
                        break;
                    }
                case 7:
                    l8 = l8;
                    if (l8.A08.A07() == null) {
                        c = '\t';
                        break;
                    } else {
                        c = '\b';
                        break;
                    }
                case '\b':
                    l8 = l8;
                    iA0G = l8.A08.A07().A08();
                    c = 3;
                    break;
                case '\t':
                    iA0G = 1000;
                    c = 3;
                    break;
            }
        }
    }

    private int A03() {
        L8 l8 = this;
        int iA09 = 0;
        char c = l8.A0B != null ? (char) 2 : (char) 4;
        while (true) {
            switch (c) {
                case 2:
                    l8 = l8;
                    iA09 = l8.A0B.A09();
                    c = 3;
                    break;
                case 3:
                    return iA09;
                case 4:
                    l8 = l8;
                    if (l8.A08 == null) {
                        c = 3;
                        break;
                    } else {
                        c = 5;
                        break;
                    }
                case 5:
                    l8 = l8;
                    if (l8.A08.A07() == null) {
                        c = 3;
                        break;
                    } else {
                        c = 6;
                        break;
                    }
                case 6:
                    l8 = l8;
                    iA09 = l8.A08.A07().A09();
                    c = 3;
                    break;
            }
        }
    }

    public static NativeAdBase A09(Context context, String str, String str2) throws LR {
        NativeAd nativeBannerAd = null;
        LW lwA00 = C0691Lb.A00(str2);
        char c = lwA00 == null ? (char) 2 : (char) 3;
        while (true) {
            switch (c) {
                case 2:
                    throw new LR(AdErrorType.BID_PAYLOAD_ERROR, String.format(Locale.US, A0P(532, 50, 72), str2));
                case 3:
                    lwA00 = lwA00;
                    if (lwA00 != LW.A05) {
                        c = 6;
                        break;
                    } else {
                        c = 4;
                        break;
                    }
                case 4:
                    context = context;
                    str = str;
                    nativeBannerAd = new NativeBannerAd(context, str);
                    c = 5;
                    break;
                case 5:
                    return (NativeAdBase) nativeBannerAd;
                case 6:
                    lwA00 = lwA00;
                    if (lwA00 != LW.A06) {
                        c = '\b';
                        break;
                    } else {
                        c = 7;
                        break;
                    }
                case 7:
                    context = context;
                    str = str;
                    nativeBannerAd = new NativeAd(context, str);
                    c = 5;
                    break;
                case '\b':
                    throw new LR(AdErrorType.BID_PAYLOAD_ERROR, String.format(Locale.US, A0P(477, 34, 102), lwA00));
            }
        }
    }

    @Nullable
    private final AnonymousClass29 A0B() {
        AnonymousClass29 anonymousClass29 = this.A0U;
        char c = anonymousClass29 != null ? (char) 2 : (char) 4;
        while (true) {
            switch (c) {
                case 2:
                    anonymousClass29 = anonymousClass29;
                    if (!anonymousClass29.A0g()) {
                        c = 4;
                        break;
                    } else {
                        c = 3;
                        break;
                    }
                case 3:
                    return anonymousClass29;
                case 4:
                    anonymousClass29 = null;
                    c = 3;
                    break;
            }
        }
    }

    public static L2 A0G() {
        return new L3();
    }

    public static L8 A0H(NativeAdBaseApi nativeAdBaseApi) {
        L8 l8 = null;
        char c = nativeAdBaseApi instanceof Proxy ? (char) 2 : (char) 4;
        while (true) {
            switch (c) {
                case 2:
                    nativeAdBaseApi = nativeAdBaseApi;
                    l8 = (L8) ((C8U) Proxy.getInvocationHandler(nativeAdBaseApi)).A04();
                    c = 3;
                    break;
                case 3:
                    return l8;
                case 4:
                    nativeAdBaseApi = nativeAdBaseApi;
                    l8 = (L8) nativeAdBaseApi;
                    c = 3;
                    break;
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    @Nullable
    /* renamed from: A0J, reason: merged with bridge method [inline-methods] */
    public final LH getAdStarRating() {
        L8 l8 = this;
        LH lhA0K = null;
        char c = !l8.isAdLoaded() ? (char) 2 : (char) 4;
        while (true) {
            switch (c) {
                case 2:
                    lhA0K = null;
                    c = 3;
                    break;
                case 3:
                    return lhA0K;
                case 4:
                    l8 = l8;
                    lhA0K = l8.A0U.A0K();
                    c = 3;
                    break;
            }
        }
    }

    private AdPlacementType A0L() {
        AdPlacementType adPlacementType = null;
        char c = this.A0H == LW.A06 ? (char) 2 : (char) 4;
        while (true) {
            switch (c) {
                case 2:
                    adPlacementType = AdPlacementType.NATIVE;
                    c = 3;
                    break;
                case 3:
                    return adPlacementType;
                case 4:
                    adPlacementType = AdPlacementType.NATIVE_BANNER;
                    c = 3;
                    break;
            }
        }
    }

    private void A0S() {
        Iterator<View> it = this.A0b.iterator();
        char c = 2;
        while (true) {
            switch (c) {
                case 2:
                    it = it;
                    if (!it.hasNext()) {
                        c = 4;
                        break;
                    } else {
                        c = 3;
                        break;
                    }
                case 3:
                    it = it;
                    View next = it.next();
                    next.setOnClickListener(null);
                    next.setOnTouchListener(null);
                    next.setOnLongClickListener(null);
                    c = 2;
                    break;
                case 4:
                    this.A0b.clear();
                    return;
            }
        }
    }

    private void A0T() {
        if (!TextUtils.isEmpty(getAdChoicesLinkUrl())) {
            C0784Ot.A08(new C0784Ot(), this.A0V, Uri.parse(getAdChoicesLinkUrl()), A0y());
        }
    }

    private void A0V(View view) {
        L8 l8 = this;
        l8.A0b.add(view);
        view.setOnClickListener(l8.A0D);
        view.setOnTouchListener(l8.A0D);
        char c = Build.VERSION.SDK_INT >= 18 ? (char) 2 : (char) 4;
        while (true) {
            switch (c) {
                case 2:
                    view = view;
                    if (!K1.A12(view.getContext())) {
                        c = 4;
                        break;
                    } else {
                        c = 3;
                        break;
                    }
                case 3:
                    l8 = l8;
                    view = view;
                    view.setOnLongClickListener(l8.A0D);
                    c = 4;
                    break;
                case 4:
                    return;
            }
        }
    }

    private void A0W(View view, View view2, List<View> list, boolean z) {
        View view3 = view;
        View view4 = view2;
        List<View> list2 = list;
        L8 l8 = this;
        boolean z2 = false;
        C03618f c03618f = null;
        boolean z3 = false;
        AnonymousClass29 adapter = null;
        ArrayList arrayList = null;
        Iterator it = null;
        int iA00 = 0;
        View adContentsView = null;
        char c = view3 == null ? (char) 2 : (char) 3;
        while (true) {
            switch (c) {
                case 2:
                    throw new IllegalArgumentException(A0P(157, 19, 12));
                case 3:
                    list2 = list2;
                    if (list2 == null) {
                        c = 5;
                        break;
                    } else {
                        c = 4;
                        break;
                    }
                case 4:
                    list2 = list2;
                    if (list2.size() != 0) {
                        c = 6;
                        break;
                    } else {
                        c = 5;
                        break;
                    }
                case 5:
                    throw new IllegalArgumentException(A0P(695, 30, 80));
                case 6:
                    l8 = l8;
                    adapter = l8.A0B();
                    if (adapter != null) {
                        c = '\t';
                        break;
                    } else {
                        c = 7;
                        break;
                    }
                case 7:
                    Log.e(A0f, A0P(328, 13, 69));
                    c = '\b';
                    break;
                case '\b':
                    return;
                case '\t':
                    l8 = l8;
                    if (l8.A05 == null) {
                        c = 11;
                        break;
                    } else {
                        c = '\n';
                        break;
                    }
                case '\n':
                    l8 = l8;
                    C03778w c03778w = (C03778w) l8.A05.getNativeAdLayoutApi();
                    c03778w.A02();
                    c03778w.A04(l8.A0N);
                    c = 11;
                    break;
                case 11:
                    l8 = l8;
                    c03618f = l8.A0O.get();
                    if (c03618f == null) {
                        c = 14;
                        break;
                    } else {
                        c = '\f';
                        break;
                    }
                case '\f':
                    adapter = adapter;
                    if (adapter.A0A() != 1) {
                        c = 14;
                        break;
                    } else {
                        c = '\r';
                        break;
                    }
                case '\r':
                    c03618f = c03618f;
                    c03618f.A02(EnumC0768Od.AN_INFO_ICON);
                    c = 14;
                    break;
                case 14:
                    view4 = view4;
                    if (view4 != null) {
                        c = 24;
                        break;
                    } else {
                        c = 15;
                        break;
                    }
                case 15:
                    l8 = l8;
                    if (l8.A0H != LW.A06) {
                        c = 20;
                        break;
                    } else {
                        c = 16;
                        break;
                    }
                case 16:
                    l8 = l8;
                    if (l8.A0E == null) {
                        c = 18;
                        break;
                    } else {
                        c = 17;
                        break;
                    }
                case 17:
                    l8 = l8;
                    l8.A0E.A5G(new LQ(AdErrorType.NO_MEDIAVIEW_IN_NATIVEAD, A0P(262, 21, 93)));
                    c = 18;
                    break;
                case 18:
                    if (!AdInternalSettings.isDebugBuild()) {
                        c = '\b';
                        break;
                    } else {
                        c = 19;
                        break;
                    }
                case 19:
                    Log.e(A0f, A0P(262, 21, 93));
                    c = '\b';
                    break;
                case 20:
                    l8 = l8;
                    if (l8.A0E == null) {
                        c = 22;
                        break;
                    } else {
                        c = 21;
                        break;
                    }
                case 21:
                    l8 = l8;
                    l8.A0E.A5G(new LQ(AdErrorType.NO_ICONVIEW_IN_NATIVEBANNERAD, A0P(38, 22, 88)));
                    c = 22;
                    break;
                case 22:
                    if (!AdInternalSettings.isDebugBuild()) {
                        c = '\b';
                        break;
                    } else {
                        c = 23;
                        break;
                    }
                case 23:
                    Log.e(A0f, A0P(38, 22, 88));
                    c = '\b';
                    break;
                case 24:
                    view4 = view4;
                    if (!(view4 instanceof AdNativeComponentView)) {
                        c = '#';
                        break;
                    } else {
                        c = 25;
                        break;
                    }
                case 25:
                    view4 = view4;
                    if (((AdNativeComponentView) view4).getAdContentsView() == null) {
                        c = '#';
                        break;
                    } else {
                        c = 26;
                        break;
                    }
                case 26:
                    z3 = true;
                    c = 27;
                    break;
                case 27:
                    if (!z) {
                        c = '\"';
                        break;
                    } else {
                        c = 28;
                        break;
                    }
                case 28:
                    view4 = view4;
                    if (!(view4 instanceof ImageView)) {
                        c = '\"';
                        break;
                    } else {
                        c = 29;
                        break;
                    }
                case 29:
                    z2 = true;
                    c = 30;
                    break;
                case 30:
                    if (!z3) {
                        c = 31;
                        break;
                    } else {
                        c = '$';
                        break;
                    }
                case 31:
                    if (!z2) {
                        c = ' ';
                        break;
                    } else {
                        c = '$';
                        break;
                    }
                case ' ':
                    l8 = l8;
                    if (l8.A0E == null) {
                        c = '\b';
                        break;
                    } else {
                        c = '!';
                        break;
                    }
                case '!':
                    l8 = l8;
                    l8.A0E.A5G(new LQ(AdErrorType.UNSUPPORTED_AD_ASSET_NATIVEAD, A0P(126, 31, 41)));
                    c = '\b';
                    break;
                case '\"':
                    z2 = false;
                    c = 30;
                    break;
                case '#':
                    z3 = false;
                    c = 27;
                    break;
                case '$':
                    l8 = l8;
                    if (l8.A02 == null) {
                        c = '&';
                        break;
                    } else {
                        c = '%';
                        break;
                    }
                case '%':
                    l8 = l8;
                    Log.w(A0f, A0P(176, 80, 92));
                    l8.unregisterView();
                    c = '&';
                    break;
                case '&':
                    view3 = view3;
                    if (!A0g.containsKey(view3)) {
                        c = ')';
                        break;
                    } else {
                        c = '\'';
                        break;
                    }
                case '\'':
                    view3 = view3;
                    if (A0g.get(view3).get() == null) {
                        c = ')';
                        break;
                    } else {
                        c = '(';
                        break;
                    }
                case '(':
                    view3 = view3;
                    Log.w(A0f, A0P(620, 75, 91));
                    A0g.get(view3).get().unregisterView();
                    c = ')';
                    break;
                case ')':
                    l8 = l8;
                    view3 = view3;
                    view4 = view4;
                    l8.A0D = new L6(l8, null);
                    l8.A02 = view3;
                    l8.A04 = view4;
                    if (!(view3 instanceof ViewGroup)) {
                        c = '+';
                        break;
                    } else {
                        c = '*';
                        break;
                    }
                case '*':
                    l8 = l8;
                    view3 = view3;
                    l8.A0I = new RJ(view3.getContext(), new L0(l8));
                    ((ViewGroup) view3).addView(l8.A0I);
                    c = '+';
                    break;
                case '+':
                    l8 = l8;
                    list2 = list2;
                    arrayList = new ArrayList(list2);
                    if (l8.A03 == null) {
                        c = '-';
                        break;
                    } else {
                        c = ',';
                        break;
                    }
                case ',':
                    l8 = l8;
                    arrayList = arrayList;
                    arrayList.add(l8.A03);
                    c = '-';
                    break;
                case '-':
                    arrayList = arrayList;
                    it = arrayList.iterator();
                    c = '.';
                    break;
                case '.':
                    it = it;
                    if (!it.hasNext()) {
                        c = '0';
                        break;
                    } else {
                        c = '/';
                        break;
                    }
                case '/':
                    l8 = l8;
                    it = it;
                    l8.A0V((View) it.next());
                    c = '.';
                    break;
                case '0':
                    l8 = l8;
                    view3 = view3;
                    view4 = view4;
                    arrayList = arrayList;
                    l8.A0U.A0X(view3, arrayList);
                    iA00 = l8.A00();
                    l8.A0K = new L1(l8, view4, z2);
                    if (!(view4 instanceof AdNativeComponentView)) {
                        c = '<';
                        break;
                    } else {
                        c = '1';
                        break;
                    }
                case '1':
                    view4 = view4;
                    adContentsView = ((AdNativeComponentView) view4).getAdContentsView();
                    c = '2';
                    break;
                case '2':
                    l8 = l8;
                    view3 = view3;
                    arrayList = arrayList;
                    adContentsView = adContentsView;
                    l8.A0L = new C6K(adContentsView, iA00, l8.A03(), true, l8.A0K);
                    l8.A0L.A0V(l8.A01());
                    l8.A0L.A0W(l8.A02());
                    l8.A07 = new C2W(l8.A0V, new L7(l8, null), l8.A0L, l8.A0U);
                    l8.A07.A0D(arrayList);
                    A0g.put(view3, new WeakReference<>(l8));
                    if (Build.VERSION.SDK_INT < 18) {
                        c = '\b';
                        break;
                    } else {
                        c = '3';
                        break;
                    }
                case '3':
                    l8 = l8;
                    if (!K1.A12(l8.A0V)) {
                        c = '\b';
                        break;
                    } else {
                        c = '4';
                        break;
                    }
                case '4':
                    l8 = l8;
                    l8.A0J = new SL();
                    l8.A0J.A0C(l8.A0Z);
                    l8.A0J.A0B(l8.A0V.getPackageName());
                    l8.A0J.A0A(l8.A0L);
                    if (l8.A0U.A0B() <= 0) {
                        c = '6';
                        break;
                    } else {
                        c = '5';
                        break;
                    }
                case '5':
                    l8 = l8;
                    l8.A0J.A08(l8.A0U.A0B(), l8.A0U.A0C());
                    c = '6';
                    break;
                case '6':
                    l8 = l8;
                    if (l8.A0B == null) {
                        c = '9';
                        break;
                    } else {
                        c = '7';
                        break;
                    }
                case '7':
                    l8 = l8;
                    l8.A0J.A09(l8.A0B.A0C());
                    c = '8';
                    break;
                case '8':
                    l8 = l8;
                    l8.A02.getOverlay().add(l8.A0J);
                    c = '\b';
                    break;
                case '9':
                    l8 = l8;
                    if (l8.A08 == null) {
                        c = '8';
                        break;
                    } else {
                        c = ':';
                        break;
                    }
                case ':':
                    l8 = l8;
                    if (l8.A08.A07() == null) {
                        c = '8';
                        break;
                    } else {
                        c = ';';
                        break;
                    }
                case ';':
                    l8 = l8;
                    l8.A0J.A09(l8.A08.A07().A0C());
                    c = '8';
                    break;
                case '<':
                    view4 = view4;
                    adContentsView = view4;
                    c = '2';
                    break;
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void A0X(@Nullable AnonymousClass29 anonymousClass29, boolean z) {
        AnonymousClass29 anonymousClass292 = anonymousClass29;
        L8 l8 = this;
        String strA3P = null;
        Iterator<L8> it = null;
        C0603Hp c0603Hp = null;
        String videoUrl = null;
        L8 next = null;
        char c = anonymousClass292 == null ? (char) 2 : (char) 3;
        while (true) {
            switch (c) {
                case 2:
                    return;
                case 3:
                    l8 = l8;
                    if (!l8.A0C.equals(EnumC0685Kv.A04)) {
                        c = 20;
                        break;
                    } else {
                        c = 4;
                        break;
                    }
                case 4:
                    anonymousClass292 = anonymousClass292;
                    strA3P = anonymousClass292.A3P();
                    if (!TextUtils.isEmpty(strA3P)) {
                        c = 5;
                        break;
                    } else {
                        c = 6;
                        break;
                    }
                case 5:
                    l8 = l8;
                    strA3P = strA3P;
                    l8.A0W.A0c(new KX(strA3P, AdEventManagerImpl.getInstance(l8.A0V)));
                    c = 6;
                    break;
                case 6:
                    anonymousClass292 = anonymousClass292;
                    if (anonymousClass292.A0J() == null) {
                        c = '\n';
                        break;
                    } else {
                        c = 7;
                        break;
                    }
                case 7:
                    l8 = l8;
                    anonymousClass292 = anonymousClass292;
                    c0603Hp = new C0603Hp(anonymousClass292.A0J().getUrl(), anonymousClass292.A0J().getHeight(), anonymousClass292.A0J().getWidth(), anonymousClass292.A0P(), A0P(526, 6, 90));
                    if (!l8.A0H.equals(LW.A05)) {
                        c = '\t';
                        break;
                    } else {
                        c = '\b';
                        break;
                    }
                case '\b':
                    l8 = l8;
                    c0603Hp = c0603Hp;
                    c0603Hp.A00 = l8.A0A;
                    c = '\t';
                    break;
                case '\t':
                    l8 = l8;
                    c0603Hp = c0603Hp;
                    l8.A0W.A0U();
                    l8.A0W.A0W(c0603Hp);
                    c = '\n';
                    break;
                case '\n':
                    l8 = l8;
                    if (!l8.A0H.equals(LW.A05)) {
                        c = 11;
                        break;
                    } else {
                        c = 20;
                        break;
                    }
                case 11:
                    anonymousClass292 = anonymousClass292;
                    if (anonymousClass292.A0I() == null) {
                        c = '\r';
                        break;
                    } else {
                        c = '\f';
                        break;
                    }
                case '\f':
                    l8 = l8;
                    anonymousClass292 = anonymousClass292;
                    l8.A0W.A0W(new C0603Hp(anonymousClass292.A0I().getUrl(), anonymousClass292.A0I().getHeight(), anonymousClass292.A0I().getWidth(), anonymousClass292.A0P(), A0P(526, 6, 90)));
                    c = '\r';
                    break;
                case '\r':
                    anonymousClass292 = anonymousClass292;
                    if (anonymousClass292.A0T() == null) {
                        c = 18;
                        break;
                    } else {
                        c = 14;
                        break;
                    }
                case 14:
                    anonymousClass292 = anonymousClass292;
                    it = anonymousClass292.A0T().iterator();
                    c = 15;
                    break;
                case 15:
                    it = it;
                    if (!it.hasNext()) {
                        c = 18;
                        break;
                    } else {
                        c = 16;
                        break;
                    }
                case 16:
                    it = it;
                    next = it.next();
                    if (next.getAdCoverImage() == null) {
                        c = 15;
                        break;
                    } else {
                        c = 17;
                        break;
                    }
                case 17:
                    l8 = l8;
                    anonymousClass292 = anonymousClass292;
                    next = next;
                    l8.A0W.A0W(new C0603Hp(next.getAdCoverImage().getUrl(), next.getAdCoverImage().getHeight(), next.getAdCoverImage().getWidth(), anonymousClass292.A0P(), A0P(526, 6, 90)));
                    c = 15;
                    break;
                case 18:
                    anonymousClass292 = anonymousClass292;
                    videoUrl = anonymousClass292.A0R();
                    if (!TextUtils.isEmpty(videoUrl)) {
                        c = 19;
                        break;
                    } else {
                        c = 20;
                        break;
                    }
                case 19:
                    l8 = l8;
                    anonymousClass292 = anonymousClass292;
                    videoUrl = videoUrl;
                    l8.A0W.A0a(new C0605Hr(videoUrl, anonymousClass292.A0P(), A0P(526, 6, 90)));
                    c = 20;
                    break;
                case 20:
                    l8 = l8;
                    anonymousClass292 = anonymousClass292;
                    l8.A0W.A0V(new C0688Ky(l8, anonymousClass292, z), new C0600Hm(anonymousClass292.A0P(), A0P(526, 6, 90)));
                    c = 2;
                    break;
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void A0Y(C2X c2x) {
        if (this.A0U == null) {
            return;
        }
        this.A0U.A0Y(c2x);
    }

    public static void A0Z(NativeAdImageApi nativeAdImageApi, ImageView imageView) {
        char c = nativeAdImageApi != null ? (char) 2 : (char) 4;
        while (true) {
            switch (c) {
                case 2:
                    imageView = imageView;
                    if (imageView == null) {
                        c = 4;
                        break;
                    } else {
                        c = 3;
                        break;
                    }
                case 3:
                    nativeAdImageApi = nativeAdImageApi;
                    imageView = imageView;
                    new SM(imageView).A05(nativeAdImageApi.getHeight(), nativeAdImageApi.getWidth()).A07(nativeAdImageApi.getUrl());
                    c = 4;
                    break;
                case 4:
                    return;
            }
        }
    }

    private final void A0a(EnumC0685Kv enumC0685Kv, @Nullable String str) {
        A1E(enumC0685Kv, str, new IB(false, -1, -1));
    }

    private final void A0d(LA la) {
        this.A0E = la;
    }

    private final void A0e(String str) {
        this.A0M = str;
    }

    private void A0f(List<View> list, View view) {
        L8 l8 = this;
        ViewGroup viewGroup = null;
        int i = 0;
        char c = l8.A0X != null ? (char) 2 : (char) 4;
        while (true) {
            switch (c) {
                case 2:
                    l8 = l8;
                    view = view;
                    if (!l8.A0X.A75(view)) {
                        c = 4;
                        break;
                    } else {
                        c = 3;
                        break;
                    }
                case 3:
                    return;
                case 4:
                    view = view;
                    if (!(view instanceof ViewGroup)) {
                        c = '\b';
                        break;
                    } else {
                        c = 5;
                        break;
                    }
                case 5:
                    view = view;
                    viewGroup = (ViewGroup) view;
                    i = 0;
                    c = 6;
                    break;
                case 6:
                    viewGroup = viewGroup;
                    if (i >= viewGroup.getChildCount()) {
                        c = 3;
                        break;
                    } else {
                        c = 7;
                        break;
                    }
                case 7:
                    l8 = l8;
                    list = list;
                    viewGroup = viewGroup;
                    l8.A0f(list, viewGroup.getChildAt(i));
                    i++;
                    c = 6;
                    break;
                case '\b':
                    list = list;
                    view = view;
                    list.add(view);
                    c = 3;
                    break;
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean A0g() {
        boolean z = false;
        char c = A0x() == LL.A04 ? (char) 2 : (char) 4;
        while (true) {
            switch (c) {
                case 2:
                    z = true;
                    c = 3;
                    break;
                case 3:
                    return z;
                case 4:
                    z = false;
                    c = 3;
                    break;
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean A0h() {
        L8 l8 = this;
        boolean z = false;
        char c = l8.A0U != null ? (char) 2 : (char) 5;
        while (true) {
            switch (c) {
                case 2:
                    l8 = l8;
                    if (!l8.A0U.A0h()) {
                        c = 5;
                        break;
                    } else {
                        c = 3;
                        break;
                    }
                case 3:
                    z = true;
                    c = 4;
                    break;
                case 4:
                    return z;
                case 5:
                    z = false;
                    c = 4;
                    break;
            }
        }
    }

    public final Context A0o() {
        return this.A0V;
    }

    @Nullable
    public final AnonymousClass29 A0p() {
        return this.A0U;
    }

    public final C0607Ht A0q() {
        return this.A0W;
    }

    @Nullable
    /* renamed from: A0r, reason: merged with bridge method [inline-methods] */
    public final L9 getAdChoicesIcon() {
        L8 l8 = this;
        L9 l9A0H = null;
        char c = !l8.isAdLoaded() ? (char) 2 : (char) 4;
        while (true) {
            switch (c) {
                case 2:
                    l9A0H = null;
                    c = 3;
                    break;
                case 3:
                    return l9A0H;
                case 4:
                    l8 = l8;
                    l9A0H = l8.A0U.A0H();
                    c = 3;
                    break;
            }
        }
    }

    @Nullable
    /* renamed from: A0s, reason: merged with bridge method [inline-methods] */
    public final L9 getAdCoverImage() {
        L8 l8 = this;
        L9 l9A0I = null;
        char c = !l8.isAdLoaded() ? (char) 2 : (char) 4;
        while (true) {
            switch (c) {
                case 2:
                    l9A0I = null;
                    c = 3;
                    break;
                case 3:
                    return l9A0I;
                case 4:
                    l8 = l8;
                    l9A0I = l8.A0U.A0I();
                    c = 3;
                    break;
            }
        }
    }

    @Nullable
    /* renamed from: A0t, reason: merged with bridge method [inline-methods] */
    public final L9 getAdIcon() {
        L8 l8 = this;
        L9 l9A0J = null;
        char c = !l8.isAdLoaded() ? (char) 2 : (char) 4;
        while (true) {
            switch (c) {
                case 2:
                    l9A0J = null;
                    c = 3;
                    break;
                case 3:
                    return l9A0J;
                case 4:
                    l8 = l8;
                    l9A0J = l8.A0U.A0J();
                    c = 3;
                    break;
            }
        }
    }

    @Nullable
    public final LA A0u() {
        return this.A0E;
    }

    public final LI A0v() {
        return this.A0F;
    }

    public final LJ A0w() {
        return this.A0G;
    }

    public final LL A0x() {
        L8 l8 = this;
        LL llA0L = null;
        char c = !l8.isAdLoaded() ? (char) 2 : (char) 4;
        while (true) {
            switch (c) {
                case 2:
                    llA0L = LL.A02;
                    c = 3;
                    break;
                case 3:
                    return llA0L;
                case 4:
                    l8 = l8;
                    llA0L = l8.A0U.A0L();
                    c = 3;
                    break;
            }
        }
    }

    @Nullable
    public final String A0y() {
        L8 l8 = this;
        String strA3P = null;
        char c = !l8.isAdLoaded() ? (char) 2 : (char) 4;
        while (true) {
            switch (c) {
                case 2:
                    strA3P = null;
                    c = 3;
                    break;
                case 3:
                    return strA3P;
                case 4:
                    l8 = l8;
                    strA3P = l8.A0U.A3P();
                    c = 3;
                    break;
            }
        }
    }

    @Nullable
    public final String A0z() {
        return this.A0N;
    }

    @Nullable
    public final String A10() {
        L8 l8 = this;
        String strA0Q = null;
        char c = !l8.isAdLoaded() ? (char) 2 : (char) 4;
        while (true) {
            switch (c) {
                case 2:
                    strA0Q = null;
                    c = 3;
                    break;
                case 3:
                    return strA0Q;
                case 4:
                    l8 = l8;
                    strA0Q = l8.A0U.A0Q();
                    c = 3;
                    break;
            }
        }
    }

    @Nullable
    public final String A11() {
        L8 l8 = this;
        String strA0Q = null;
        char c = l8.isAdLoaded() ? (char) 2 : (char) 3;
        while (true) {
            switch (c) {
                case 2:
                    l8 = l8;
                    if (!TextUtils.isEmpty(l8.A0U.A0R())) {
                        c = 5;
                        break;
                    } else {
                        c = 3;
                        break;
                    }
                case 3:
                    strA0Q = null;
                    c = 4;
                    break;
                case 4:
                    return strA0Q;
                case 5:
                    l8 = l8;
                    strA0Q = l8.A0W.A0Q(l8.A0U.A0R());
                    c = 4;
                    break;
            }
        }
    }

    @Nullable
    public final String A12(String str) {
        L8 l8 = this;
        String strA0S = null;
        char c = !l8.isAdLoaded() ? (char) 2 : (char) 4;
        while (true) {
            switch (c) {
                case 2:
                    strA0S = null;
                    c = 3;
                    break;
                case 3:
                    return strA0S;
                case 4:
                    l8 = l8;
                    str = str;
                    strA0S = l8.A0U.A0S(str);
                    c = 3;
                    break;
            }
        }
    }

    @Nullable
    public final List<L8> A13() {
        L8 l8 = this;
        List<L8> listA0T = null;
        char c = !l8.isAdLoaded() ? (char) 2 : (char) 4;
        while (true) {
            switch (c) {
                case 2:
                    listA0T = null;
                    c = 3;
                    break;
                case 3:
                    return listA0T;
                case 4:
                    l8 = l8;
                    listA0T = l8.A0U.A0T();
                    c = 3;
                    break;
            }
        }
    }

    public final void A14() {
        L8 l8 = this;
        RU ruA01 = null;
        char c = !C02654j.A0P(l8.A0V, false) ? (char) 2 : (char) 4;
        while (true) {
            switch (c) {
                case 2:
                    l8 = l8;
                    l8.A0T();
                    c = 3;
                    break;
                case 3:
                    return;
                case 4:
                    l8 = l8;
                    ruA01 = RV.A01(l8.A0V, AdEventManagerImpl.getInstance(l8.A0V), l8.A0y(), l8.A05);
                    if (ruA01 != null) {
                        c = 6;
                        break;
                    } else {
                        c = 5;
                        break;
                    }
                case 5:
                    l8 = l8;
                    l8.A0T();
                    c = 3;
                    break;
                case 6:
                    l8 = l8;
                    ruA01 = ruA01;
                    ((C03778w) l8.A05.getNativeAdLayoutApi()).A03(ruA01);
                    ruA01.A0J();
                    c = 3;
                    break;
            }
        }
    }

    public final void A15(@Nullable Drawable drawable) {
        boolean z = false;
        this.A00 = drawable;
        char c = drawable != null ? (char) 2 : (char) 4;
        while (true) {
            switch (c) {
                case 2:
                    z = true;
                    c = 3;
                    break;
                case 3:
                    A1L(z, true);
                    return;
                case 4:
                    z = false;
                    c = 3;
                    break;
            }
        }
    }

    public final void A16(View view, ImageView imageView) {
        ArrayList arrayList = new ArrayList();
        A0f(arrayList, view);
        A0W(view, imageView, arrayList, true);
    }

    public final void A17(View view, ImageView imageView, List<View> list) {
        A0W(view, imageView, list, true);
    }

    public final void A18(View view, AdNativeComponentView adNativeComponentView) {
        ArrayList arrayList = new ArrayList();
        A0f(arrayList, view);
        A0W(view, adNativeComponentView, arrayList, false);
    }

    public final void A19(View view, AdNativeComponentView adNativeComponentView, List<View> list) {
        A0W(view, adNativeComponentView, list, false);
    }

    public final void A1A(MediaView mediaView) {
        if (mediaView != null) {
            this.A0S = true;
        }
    }

    public final void A1B(MediaView mediaView) {
        if (mediaView != null) {
            this.A0T = true;
        }
    }

    public final void A1C(@Nullable NativeAdLayout nativeAdLayout) {
        this.A05 = nativeAdLayout;
    }

    public final void A1D(@Nullable C03618f c03618f) {
        this.A0O = new WeakReference<>(c03618f);
    }

    public final void A1E(EnumC0685Kv enumC0685Kv, @Nullable String str, IB ib) {
        L8 l8 = this;
        String strA0P = null;
        char c = l8.A0c ? (char) 2 : (char) 7;
        while (true) {
            switch (c) {
                case 2:
                    l8 = l8;
                    AdSettings.IntegrationErrorMode integrationErrorModeA00 = C02363g.A00(l8.A0V);
                    strA0P = A0P(590, 30, 104);
                    AdSettings.IntegrationErrorMode integrationErrorMode = AdSettings.IntegrationErrorMode.INTEGRATION_ERROR_CRASH_DEBUG_MODE;
                    if (!integrationErrorMode.equals(integrationErrorModeA00)) {
                        c = 4;
                        break;
                    } else {
                        c = 3;
                        break;
                    }
                case 3:
                    throw new AnonymousClass45(strA0P);
                case 4:
                    l8 = l8;
                    if (l8.A0E == null) {
                        c = '\n';
                        break;
                    } else {
                        c = 5;
                        break;
                    }
                case 5:
                    l8 = l8;
                    l8.A0E.A5G(new LQ(AdErrorType.LOAD_AD_CALLED_MORE_THAN_ONCE, A0P(590, 30, 104)));
                    c = 6;
                    break;
                case 6:
                    l8 = l8;
                    strA0P = strA0P;
                    P7.A07(l8.A0o(), A0P(407, 3, 34), P8.A0P, new PA(strA0P));
                    c = 7;
                    break;
                case 7:
                    l8 = l8;
                    enumC0685Kv = enumC0685Kv;
                    l8.A0c = true;
                    l8.A0C = enumC0685Kv;
                    if (!enumC0685Kv.equals(EnumC0685Kv.A05)) {
                        c = '\t';
                        break;
                    } else {
                        c = '\b';
                        break;
                    }
                case '\b':
                    l8 = l8;
                    l8.A06 = C2U.A05;
                    c = '\t';
                    break;
                case '\t':
                    L8 l82 = l8;
                    l82.A0A = ib;
                    C3V c3v = new C3V(l82.A0Z, l82.A0H, l82.A0L(), null, 1);
                    c3v.A05(enumC0685Kv);
                    c3v.A06(l82.A0M);
                    c3v.A07(l82.A0N);
                    l82.A08 = new C02423m(l82.A0V, c3v);
                    l82.A08.A0E(new C0687Kx(l82));
                    l82.A08.A0G(str);
                    return;
                case '\n':
                    strA0P = strA0P;
                    Log.e(A0P(60, 17, 15), strA0P);
                    c = 6;
                    break;
            }
        }
    }

    public final void A1F(LI li) {
        this.A0F = li;
    }

    public final void A1G(LJ lj) {
        this.A0G = lj;
    }

    public final void A1H(LW lw) {
        this.A0H = lw;
    }

    public final void A1I(AbstractC02052b abstractC02052b) {
        this.A0P = new WeakReference<>(abstractC02052b);
    }

    public final void A1J(boolean z) {
        this.A0Q = z;
    }

    public final void A1K(boolean z) {
        this.A0R = z;
    }

    public final void A1L(boolean z, boolean z2) {
        L8 l8 = this;
        char c = z ? (char) 2 : '\t';
        while (true) {
            switch (c) {
                case 2:
                    l8 = l8;
                    if (!l8.A0C.equals(EnumC0685Kv.A05)) {
                        c = 6;
                        break;
                    } else {
                        c = 3;
                        break;
                    }
                case 3:
                    l8 = l8;
                    if (!l8.A0h()) {
                        c = 4;
                        break;
                    } else {
                        c = 6;
                        break;
                    }
                case 4:
                    l8 = l8;
                    if (l8.A0E == null) {
                        c = 6;
                        break;
                    } else {
                        c = 5;
                        break;
                    }
                case 5:
                    l8 = l8;
                    l8.A0E.A5k();
                    c = 6;
                    break;
                case 6:
                    l8 = l8;
                    if (l8.A0L == null) {
                        c = '\b';
                        break;
                    } else {
                        c = 7;
                        break;
                    }
                case 7:
                    l8 = l8;
                    l8.A0L.A0T();
                    c = '\b';
                    break;
                case '\b':
                    return;
                case '\t':
                    l8 = l8;
                    if (l8.A0L == null) {
                        c = 11;
                        break;
                    } else {
                        c = '\n';
                        break;
                    }
                case '\n':
                    l8 = l8;
                    l8.A0L.A0U();
                    c = 11;
                    break;
                case 11:
                    l8 = l8;
                    if (l8.A0E == null) {
                        c = '\b';
                        break;
                    } else {
                        c = '\f';
                        break;
                    }
                case '\f':
                    if (!z2) {
                        c = '\b';
                        break;
                    } else {
                        c = '\r';
                        break;
                    }
                case '\r':
                    l8 = l8;
                    l8.A0E.A5G(LQ.A02(AdErrorType.BROKEN_MEDIA_ERROR, A0P(307, 21, 6)));
                    c = '\b';
                    break;
            }
        }
    }

    public final boolean A1M() {
        boolean z = false;
        char c = this.A05 == null ? (char) 2 : (char) 4;
        while (true) {
            switch (c) {
                case 2:
                    z = true;
                    c = 3;
                    break;
                case 3:
                    return z;
                case 4:
                    z = false;
                    c = 3;
                    break;
            }
        }
    }

    public final NativeAdBase.NativeAdLoadConfigBuilder buildLoadAdConfig(NativeAdBase nativeAdBase) {
        return new LM(this, nativeAdBase);
    }

    public final void destroy() {
        C0695Lf.A05(A0P(355, 7, 41), A0P(388, 19, 10), A0P(105, 8, 3));
        if (this.A08 != null) {
            this.A08.A0J(true);
            this.A08 = null;
        }
    }

    public final void downloadMedia() {
        if (this.A0C.equals(EnumC0685Kv.A05)) {
            this.A06 = C2U.A04;
        }
        this.A0C = EnumC0685Kv.A04;
        A0X(this.A0U, false);
    }

    @Nullable
    public final String getAdBodyText() {
        L8 l8 = this;
        String strA0M = null;
        char c = !l8.isAdLoaded() ? (char) 2 : (char) 4;
        while (true) {
            switch (c) {
                case 2:
                    strA0M = null;
                    c = 3;
                    break;
                case 3:
                    return strA0M;
                case 4:
                    l8 = l8;
                    strA0M = l8.A0U.A0M();
                    c = 3;
                    break;
            }
        }
    }

    @Nullable
    public final String getAdCallToAction() {
        return A12(A0P(362, 14, 38));
    }

    @Nullable
    public final String getAdChoicesImageUrl() {
        L8 l8 = this;
        String url = null;
        char c = l8.getAdChoicesIcon() == null ? (char) 2 : (char) 4;
        while (true) {
            switch (c) {
                case 2:
                    url = null;
                    c = 3;
                    break;
                case 3:
                    return url;
                case 4:
                    l8 = l8;
                    url = l8.getAdChoicesIcon().getUrl();
                    c = 3;
                    break;
            }
        }
    }

    @Nullable
    public final String getAdChoicesLinkUrl() {
        L8 l8 = this;
        String strA0N = null;
        char c = !l8.isAdLoaded() ? (char) 2 : (char) 4;
        while (true) {
            switch (c) {
                case 2:
                    strA0N = null;
                    c = 3;
                    break;
                case 3:
                    return strA0N;
                case 4:
                    l8 = l8;
                    strA0N = l8.A0U.A0N();
                    c = 3;
                    break;
            }
        }
    }

    @Nullable
    public final String getAdChoicesText() {
        L8 l8 = this;
        String strA0O = null;
        char c = !l8.isAdLoaded() ? (char) 2 : (char) 4;
        while (true) {
            switch (c) {
                case 2:
                    strA0O = null;
                    c = 3;
                    break;
                case 3:
                    return strA0O;
                case 4:
                    l8 = l8;
                    strA0O = l8.A0U.A0O();
                    c = 3;
                    break;
            }
        }
    }

    @Nullable
    public final String getAdHeadline() {
        return A12(A0P(582, 8, 101));
    }

    @Nullable
    public final String getAdLinkDescription() {
        return A12(A0P(283, 16, 127));
    }

    @Nullable
    public final String getAdSocialContext() {
        return A12(A0P(341, 14, 103));
    }

    @Nullable
    public final String getAdTranslation() {
        return A12(A0P(431, 14, 98));
    }

    @Nullable
    public final String getAdUntrimmedBodyText() {
        return A12(A0P(384, 4, 28));
    }

    @Nullable
    public final String getAdvertiserName() {
        return A12(A0P(UnixStat.DEFAULT_LINK_PERM, 15, 10));
    }

    public final float getAspectRatio() {
        L8 l8 = this;
        int width = 0;
        int width2 = 0;
        float f = 0.0f;
        char c = l8.A0U != null ? (char) 2 : (char) 4;
        while (true) {
            switch (c) {
                case 2:
                    l8 = l8;
                    L9 l9A0I = l8.A0U.A0I();
                    width = l9A0I.getWidth();
                    width2 = l9A0I.getHeight();
                    if (width2 <= 0) {
                        c = 4;
                        break;
                    } else {
                        c = 3;
                        break;
                    }
                case 3:
                    f = width / width2;
                    c = 4;
                    break;
                case 4:
                    return f;
            }
        }
    }

    @Nullable
    public final String getId() {
        L8 l8 = this;
        String str = null;
        char c = !l8.isAdLoaded() ? (char) 2 : (char) 4;
        while (true) {
            switch (c) {
                case 2:
                    str = null;
                    c = 3;
                    break;
                case 3:
                    return str;
                case 4:
                    l8 = l8;
                    str = l8.A0a;
                    c = 3;
                    break;
            }
        }
    }

    public final String getPlacementId() {
        return this.A0Z;
    }

    @Nullable
    public final String getPromotedTranslation() {
        return A12(A0P(77, 20, 29));
    }

    @Nullable
    public final String getSponsoredTranslation() {
        return A12(A0P(410, 21, 22));
    }

    public final boolean hasCallToAction() {
        L8 l8 = this;
        boolean z = false;
        char c = l8.A0U != null ? (char) 2 : (char) 5;
        while (true) {
            switch (c) {
                case 2:
                    l8 = l8;
                    if (!l8.A0U.A0f()) {
                        c = 5;
                        break;
                    } else {
                        c = 3;
                        break;
                    }
                case 3:
                    z = true;
                    c = 4;
                    break;
                case 4:
                    return z;
                case 5:
                    z = false;
                    c = 4;
                    break;
            }
        }
    }

    public final boolean isAdInvalidated() {
        L8 l8 = this;
        boolean zA0L = false;
        char c = l8.A08 != null ? (char) 2 : (char) 4;
        while (true) {
            switch (c) {
                case 2:
                    l8 = l8;
                    zA0L = l8.A08.A0L();
                    c = 3;
                    break;
                case 3:
                    return zA0L;
                case 4:
                    l8 = l8;
                    if (l8.A09 == null) {
                        c = 6;
                        break;
                    } else {
                        c = 5;
                        break;
                    }
                case 5:
                    l8 = l8;
                    zA0L = l8.A09.A0B();
                    c = 3;
                    break;
                case 6:
                    zA0L = true;
                    c = 3;
                    break;
            }
        }
    }

    public final boolean isAdLoaded() {
        L8 l8 = this;
        boolean z = false;
        char c = l8.A0U != null ? (char) 2 : (char) 5;
        while (true) {
            switch (c) {
                case 2:
                    l8 = l8;
                    if (!l8.A0U.A0g()) {
                        c = 5;
                        break;
                    } else {
                        c = 3;
                        break;
                    }
                case 3:
                    z = true;
                    c = 4;
                    break;
                case 4:
                    return z;
                case 5:
                    z = false;
                    c = 4;
                    break;
            }
        }
    }

    public final void loadAd() {
        C0695Lf.A05(A0P(256, 6, 3), A0P(453, 24, 45), A0P(725, 7, 27));
        loadAd(NativeAdBase.MediaCacheFlag.ALL);
    }

    public final void loadAd(NativeAdBase.MediaCacheFlag mediaCacheFlag) {
        C0695Lf.A05(A0P(256, 6, 3), A0P(453, 24, 45), A0P(97, 8, 22));
        A0a(EnumC0685Kv.A00(mediaCacheFlag), null);
    }

    public final void loadAd(NativeAdBase.NativeLoadAdConfig nativeLoadAdConfig) {
        C0695Lf.A05(A0P(256, 6, 3), A0P(453, 24, 45), A0P(RecentVisitorListFragment.ERROR_CODE_OWNER_IN_PRIVATE_MODE, 8, 106));
        ((LM) nativeLoadAdConfig).loadAd();
    }

    public final void loadAdFromBid(String str) {
        C0695Lf.A05(A0P(113, 13, 55), A0P(453, 24, 45), A0P(376, 8, 125));
        loadAdFromBid(str, NativeAdBase.MediaCacheFlag.ALL);
    }

    public final void loadAdFromBid(String str, NativeAdBase.MediaCacheFlag mediaCacheFlag) {
        C0695Lf.A05(A0P(113, 13, 55), A0P(453, 24, 45), A0P(445, 8, 89));
        A0a(EnumC0685Kv.A00(mediaCacheFlag), str);
    }

    public final void onCtaBroadcast() {
        this.A03.performClick();
    }

    public final void setAdListener(NativeAdListener nativeAdListener, NativeAdBase nativeAdBase) {
        if (nativeAdListener == null) {
            return;
        }
        A0d(new LG(nativeAdListener, nativeAdBase));
    }

    public final void setExtraHints(ExtraHints extraHints) {
        if (extraHints == null) {
            return;
        }
        A0e(extraHints.getHints());
        this.A0N = extraHints.getMediationData();
    }

    public final void setOnTouchListener(View.OnTouchListener onTouchListener) {
        this.A01 = onTouchListener;
    }

    /* JADX WARN: Type inference failed for: r2v0 */
    /* JADX WARN: Type inference failed for: r2v1, types: [android.view.View, com.facebook.ads.redexgen.X.2W, com.facebook.ads.redexgen.X.6K] */
    /* JADX WARN: Type inference failed for: r2v3 */
    /* JADX WARN: Type inference failed for: r2v4 */
    public final void unregisterView() {
        L8 l8 = this;
        ?? r2 = 0;
        char c = l8.A02 != null ? (char) 2 : (char) 3;
        while (true) {
            switch (c) {
                case 2:
                    l8 = l8;
                    if (l8.A04 != null) {
                        c = 4;
                        break;
                    } else {
                        c = 3;
                        break;
                    }
                case 3:
                    return;
                case 4:
                    l8 = l8;
                    if (!A0g.containsKey(l8.A02)) {
                        c = 6;
                        break;
                    } else {
                        c = 5;
                        break;
                    }
                case 5:
                    l8 = l8;
                    if (A0g.get(l8.A02).get() == l8) {
                        c = 7;
                        break;
                    } else {
                        c = 6;
                        break;
                    }
                case 6:
                    throw new IllegalStateException(A0P(0, 38, 33));
                case 7:
                    l8 = l8;
                    if (!(l8.A02 instanceof ViewGroup)) {
                        c = '\n';
                        break;
                    } else {
                        c = '\b';
                        break;
                    }
                case '\b':
                    l8 = l8;
                    if (l8.A0I == null) {
                        c = '\n';
                        break;
                    } else {
                        c = '\t';
                        break;
                    }
                case '\t':
                    l8 = l8;
                    r2 = 0;
                    ((ViewGroup) l8.A02).removeView(l8.A0I);
                    l8.A0I = null;
                    c = '\n';
                    break;
                case '\n':
                    l8 = l8;
                    if (l8.A0U == null) {
                        c = '\f';
                        break;
                    } else {
                        c = 11;
                        break;
                    }
                case 11:
                    l8 = l8;
                    l8.A0U.A0U();
                    c = '\f';
                    break;
                case '\f':
                    if (Build.VERSION.SDK_INT < 18) {
                        c = 16;
                        break;
                    } else {
                        c = '\r';
                        break;
                    }
                case '\r':
                    l8 = l8;
                    if (l8.A0J == null) {
                        c = 16;
                        break;
                    } else {
                        c = 14;
                        break;
                    }
                case 14:
                    l8 = l8;
                    if (!K1.A12(l8.A0V)) {
                        c = 16;
                        break;
                    } else {
                        c = 15;
                        break;
                    }
                case 15:
                    l8 = l8;
                    l8.A0J.A07();
                    l8.A02.getOverlay().remove(l8.A0J);
                    c = 16;
                    break;
                case 16:
                    l8 = l8;
                    A0g.remove(l8.A02);
                    l8.A0S();
                    l8.A02 = r2;
                    l8.A04 = r2;
                    if (l8.A0L == null) {
                        c = 18;
                        break;
                    } else {
                        c = 17;
                        break;
                    }
                case 17:
                    l8 = l8;
                    l8.A0L.A0U();
                    l8.A0L = r2;
                    c = 18;
                    break;
                case 18:
                    l8 = l8;
                    l8.A07 = r2;
                    c = 3;
                    break;
            }
        }
    }
}
