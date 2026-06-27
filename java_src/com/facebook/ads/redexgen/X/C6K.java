package com.facebook.ads.redexgen.X;

import android.content.Context;
import android.graphics.Rect;
import android.os.Build;
import android.os.Handler;
import android.support.annotation.VisibleForTesting;
import android.util.DisplayMetrics;
import android.util.Log;
import android.view.Display;
import android.view.View;
import android.view.ViewGroup;
import android.view.WindowManager;
import android.view.animation.AlphaAnimation;
import com.facebook.ads.internal.api.BuildConfigApi;
import com.facebook.ads.internal.settings.AdInternalSettings;
import com.narvii.account.ThirdPartyAccountBaseFragment;
import com.narvii.util.ws.WsMessage;
import com.tonyodev.fetch.FetchService;
import java.lang.ref.WeakReference;
import java.lang.reflect.Array;
import java.util.Arrays;
import java.util.HashMap;
import java.util.Locale;
import java.util.Map;
import java.util.Vector;
import org.json.JSONObject;
import tv.danmaku.ijk.media.player.IjkMediaMeta;

/* JADX WARN: Classes with same name are omitted:
  assets.dex
  assets/audience_network.dex
 */
/* renamed from: com.facebook.ads.redexgen.X.6K, reason: invalid class name */
/* loaded from: assets/assets/audience_network.dex */
public final class C6K {
    private static byte[] A0E;
    private static final String A0F;
    private int A00;
    private int A01;
    private int A02;
    private long A03;
    private AnonymousClass27 A04;
    private AnonymousClass68 A05;
    private Map<String, Integer> A06;
    private boolean A07;
    private final int A08;
    private final int A09;
    private final Handler A0A;
    private final View A0B;
    private final WeakReference<AbstractC02052b> A0C;
    private final boolean A0D;

    private static String A0H(int i, int i2, int i3) {
        byte[] bArrCopyOfRange = Arrays.copyOfRange(A0E, i, i + i2);
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

    private static void A0M() {
        A0E = new byte[]{52, 99, 125, 96, 124, 52, 102, 113, 117, 103, 123, 122, 46, 52, 21, 55, 56, 56, 57, 34, 118, 49, 51, 34, 118, 58, 57, 53, 55, 34, 63, 57, 56, 118, 57, 56, 118, 37, 53, 36, 51, 51, 56, 120, 2, 46, 11, 57, 6, 10, 24, 79, 7, 14, 28, 79, 6, 1, 25, 6, 28, 6, 13, 3, 10, 79, 11, 6, 2, 10, 1, 28, 6, 0, 1, 28, 79, 71, 24, 82, 73, 87, 80, 90, 81, 73, 1, 30, 18, 0, 22, 21, 27, 18, 47, 3, 38, 20, 43, 39, 53, 98, 43, 49, 98, 52, 43, 49, 43, 32, 46, 39, 108, 72, 120, 105, 126, 126, 117, 59, 114, 104, 59, 117, 116, 111, 59, 114, 117, 111, 126, 105, 122, 120, 111, 114, 109, 126, 53, 114, 77, 65, 83, 4, 30, 50, 23, 37, 26, 22, 4, 83, 5, 26, 0, 26, 17, 31, 22, 83, 18, 1, 22, 18, 83, 26, 0, 83, 7, 28, 28, 83, 0, 30, 18, 31, 31, 83, 40, 86, 93, 65, 21, 86, 86, 83, 5, 26, 0, 26, 17, 31, 22, 95, 83, 16, 6, 1, 1, 22, 29, 7, 83, 7, 27, 1, 22, 0, 27, 28, 31, 23, 83, 86, 93, 65, 21, 86, 86, 46, 92, 121, 61, 116, 110, 61, 114, 115, 61, 105, 114, 109, 61, 114, 123, 61, 105, 117, 120, 61, 81, 114, 126, 118, 110, 126, 111, 120, 120, 115, 51, 0, 46, 50, 44, 62, 42, 57, 47, 107, 34, 56, 107, 36, 41, 56, 63, 57, 62, 40, 63, 34, 37, 44, 107, 61, 34, 46, 60, 101, 55, 59, 115, 38, 92, 90, 27, 55, 18, 32, 31, 19, 1, 86, 6, 23, 4, 19, 24, 2, 86, 31, 5, 86, 24, 25, 2, 86, 5, 19, 2, 86, 2, 25, 86, 32, 63, 37, 63, 52, 58, 51, 88, 60, 16, 53, 7, 56, 52, 38, 113, 56, 34, 113, 63, 62, 37, 113, 39, 56, 34, 56, 51, 61, 52, 113, 55, 35, 62, 60, 113, 37, 57, 52, 113, 37, 62, 33, 127, 98, 78, 107, 89, 102, 106, 120, 47, 102, 124, 47, 97, 122, 99, 99, 33, 70, 15, 21, 70, 3, 47, 10, 56, 7, 11, 25, 78, 7, 29, 78, 0, 1, 26, 78, 7, 0, 78, 26, 6, 11, 78, 26, 1, 30, 78, 15, 13, 26, 7, 24, 7, 26, 23, 58, 56, 85, 121, 92, 110, 81, 93, 79, 24, 81, 75, 24, 76, 87, 87, 24, 76, 74, 89, 86, 75, 72, 89, 74, 93, 86, 76, 22, 38, 39, 60, 104, 62, 33, 45, 63, 41, 42, 36, 45, 124, 116, 121, 114, 109, 58, 121, 121, 117, 92, 66, 17, 58, 48, 38, 59, 114, 33, 117, 56, 52, 62, 48, 117, 38, 48, 59, 38, 48, 117, 33, 58, 117, 38, 48, 33, 117, 54, 61, 48, 54, 62, 117, 60, 59, 33, 48, 39, 35, 52, 57, 117, 51, 58, 39, 117, 59, 58, 59, 120, 39, 48, 37, 48, 52, 33, 117, 54, 61, 48, 54, 62, 48, 39, 123, 7, 43, 14, 60, 3, 15, 29, 74, 2, 11, 25, 74, 4, 5, 74, 26, 11, 24, 15, 4, 30, 68, 17, 21, 4, 24, 52, 17, 35, 28, 16, 2, 85, 28, 6, 85, 27, 26, 1, 85, 19, 0, 25, 25, 12, 85, 26, 27, 85, 6, 22, 7, 16, 16, 27, 85, 29, 26, 7, 28, 15, 26, 27, 1, 20, 25, 25, 12, 91, 68, 120, 117, 48, 100, 121, 115, 123, 117, 98, 48, 115, 113, 126, 126, 127, 100, 48, 114, 117, 48, 126, 117, 119, 113, 100, 121, 102, 117, 72, 100, 65, 115, 76, 64, 82, 5, 82, 76, 75, 65, 74, 82, 5, 76, 86, 5, 75, 74, 81, 5, 86, 64, 81, 5, 81, 74, 5, 115, 108, 118, 108, 103, 105, 96, 11, 10, 38, 3, 49, 14, 2, 16, 71, 14, 20, 71, 9, 8, 19, 71, 17, 14, 20, 14, 5, 11, 2, 16, 60, 25, 43, 20, 24, 10, 93, 20, 14, 93, 19, 18, 9, 93, 11, 20, 14, 20, 31, 17, 24, 93, 27, 15, 18, 16, 93, 9, 21, 24, 93, 31, 18, 9, 9, 18, 16, 83};
    }

    static {
        A0M();
        A0F = C6K.class.getSimpleName();
    }

    public C6K(View view, int i, int i2, boolean z, AbstractC02052b abstractC02052b) {
        this.A0A = new Handler();
        this.A01 = 0;
        this.A02 = 1000;
        this.A07 = true;
        this.A05 = new AnonymousClass68(EnumC02865g.A0K);
        this.A06 = new HashMap();
        this.A03 = 0L;
        this.A00 = 0;
        this.A0B = view;
        if (this.A0B.getId() == -1) {
            OY.A0N(this.A0B);
        }
        this.A09 = i;
        this.A0C = new WeakReference<>(abstractC02052b);
        this.A0D = z;
        if (i2 < 0) {
            if (BuildConfigApi.isDebug()) {
                Log.w(A0F, A0H(598, 29, 44));
            }
            i2 = 0;
        }
        this.A08 = i2;
    }

    public C6K(View view, int i, AbstractC02052b abstractC02052b) {
        this(view, i, 0, false, abstractC02052b);
    }

    public C6K(View view, int i, boolean z, AbstractC02052b abstractC02052b) {
        this(view, i, 0, z, abstractC02052b);
    }

    @VisibleForTesting
    private static float A00(View view) {
        float alpha = 0.0f;
        float alpha2 = view.getAlpha();
        float resultAlpha = 2.8E-45f;
        while (true) {
            switch (resultAlpha) {
                case 2.8E-45f:
                    view = view;
                    if (!(view.getParent() instanceof ViewGroup)) {
                        resultAlpha = 1.1E-44f;
                        break;
                    } else {
                        resultAlpha = 4.2E-45f;
                        break;
                    }
                case 4.2E-45f:
                    view = (View) view.getParent();
                    alpha = view.getAlpha();
                    if (alpha >= 0.0f) {
                        resultAlpha = 7.0E-45f;
                        break;
                    } else {
                        resultAlpha = 5.6E-45f;
                        break;
                    }
                case 5.6E-45f:
                    alpha = 0.0f;
                    resultAlpha = 7.0E-45f;
                    break;
                case 7.0E-45f:
                    if (alpha <= 1.0f) {
                        resultAlpha = 9.8E-45f;
                        break;
                    } else {
                        resultAlpha = 8.4E-45f;
                        break;
                    }
                case 8.4E-45f:
                    alpha = 1.0f;
                    resultAlpha = 9.8E-45f;
                    break;
                case 9.8E-45f:
                    alpha2 *= alpha;
                    resultAlpha = 2.8E-45f;
                    break;
                case 1.1E-44f:
                    return alpha2;
            }
        }
    }

    @VisibleForTesting
    private static int A01(int i, View view) {
        return (int) Math.max(i, Math.ceil(view.getWidth() * view.getHeight() > 0 ? 100.0f / r1 : 100.0f));
    }

    public static /* synthetic */ int A05(C6K c6k) {
        int i = c6k.A00;
        c6k.A00 = i + 1;
        return i;
    }

    private static int A08(Vector<Rect> vector) {
        Vector<Rect> vector2 = vector;
        int leftEdgeIndex = 0;
        int i = 0;
        int rightEdgeIndex = 0;
        int size = 0;
        int topEdgeIndex = 0;
        int iA09 = 0;
        int xPos = 0;
        int i2 = 0;
        int yPos = 0;
        int i3 = 0;
        int size2 = vector2.size();
        int[] iArr = new int[size2 * 2];
        int[] iArr2 = new int[size2 * 2];
        boolean[][] zArr = (boolean[][]) Array.newInstance((Class<?>) Boolean.TYPE, size2 * 2, size2 * 2);
        int i4 = 0;
        int i5 = 0;
        int i6 = 0;
        int i7 = 2;
        while (true) {
            switch (i7) {
                case 2:
                    if (i6 >= size2) {
                        i7 = 4;
                        break;
                    } else {
                        i7 = 3;
                        break;
                    }
                case 3:
                    vector2 = vector2;
                    iArr = iArr;
                    iArr2 = iArr2;
                    Rect rectElementAt = vector2.elementAt(i6);
                    int i8 = i4 + 1;
                    int m = rectElementAt.left;
                    iArr[i4] = m;
                    int i9 = i5 + 1;
                    iArr2[i5] = rectElementAt.bottom;
                    i4 = i8 + 1;
                    int m2 = rectElementAt.right;
                    iArr[i8] = m2;
                    i5 = i9 + 1;
                    int m3 = rectElementAt.top;
                    iArr2[i9] = m3;
                    i6++;
                    i7 = 2;
                    break;
                case 4:
                    iArr = iArr;
                    iArr2 = iArr2;
                    Arrays.sort(iArr);
                    Arrays.sort(iArr2);
                    i = 0;
                    i7 = 5;
                    break;
                case 5:
                    if (i >= size2) {
                        i7 = 13;
                        break;
                    } else {
                        i7 = 6;
                        break;
                    }
                case 6:
                    vector2 = vector2;
                    iArr = iArr;
                    iArr2 = iArr2;
                    Rect rectElementAt2 = vector2.elementAt(i);
                    int m4 = rectElementAt2.left;
                    int iA092 = A09(iArr, m4);
                    int m5 = rectElementAt2.right;
                    size = A09(iArr, m5);
                    int m6 = rectElementAt2.top;
                    iA09 = A09(iArr2, m6);
                    int m7 = rectElementAt2.bottom;
                    xPos = A09(iArr2, m7);
                    topEdgeIndex = iA092 + 1;
                    i7 = 7;
                    break;
                case 7:
                    if (topEdgeIndex > size) {
                        i7 = 12;
                        break;
                    } else {
                        i7 = 8;
                        break;
                    }
                case 8:
                    rightEdgeIndex = iA09 + 1;
                    i7 = 9;
                    break;
                case 9:
                    if (rightEdgeIndex > xPos) {
                        i7 = 11;
                        break;
                    } else {
                        i7 = 10;
                        break;
                    }
                case 10:
                    zArr = zArr;
                    zArr[topEdgeIndex][rightEdgeIndex] = true;
                    rightEdgeIndex++;
                    i7 = 9;
                    break;
                case 11:
                    topEdgeIndex++;
                    i7 = 7;
                    break;
                case 12:
                    i++;
                    i7 = 5;
                    break;
                case 13:
                    yPos = 0;
                    i2 = 0;
                    i7 = 14;
                    break;
                case 14:
                    int bottomEdgeIndex = size2 * 2;
                    if (i2 >= bottomEdgeIndex) {
                        i7 = 22;
                        break;
                    } else {
                        i7 = 15;
                        break;
                    }
                case 15:
                    leftEdgeIndex = 0;
                    i7 = 16;
                    break;
                case 16:
                    int j = size2 * 2;
                    if (leftEdgeIndex >= j) {
                        i7 = 21;
                        break;
                    } else {
                        i7 = 17;
                        break;
                    }
                case 17:
                    zArr = zArr;
                    if (!zArr[i2][leftEdgeIndex]) {
                        i7 = 20;
                        break;
                    } else {
                        i7 = 18;
                        break;
                    }
                case 18:
                    iArr = iArr;
                    iArr2 = iArr2;
                    int bottomEdgeIndex2 = i2 - 1;
                    int i10 = iArr[i2] - iArr[bottomEdgeIndex2];
                    int bottomEdgeIndex3 = leftEdgeIndex - 1;
                    i3 = i10 * (iArr2[leftEdgeIndex] - iArr2[bottomEdgeIndex3]);
                    i7 = 19;
                    break;
                case 19:
                    yPos += i3;
                    leftEdgeIndex++;
                    i7 = 16;
                    break;
                case 20:
                    i3 = 0;
                    i7 = 19;
                    break;
                case 21:
                    i2++;
                    i7 = 14;
                    break;
                case 22:
                    return yPos;
            }
        }
    }

    private static int A09(int[] iArr, int low) {
        int i = 0;
        int i2 = 0;
        int length = iArr.length;
        int mid = 2;
        while (true) {
            switch (mid) {
                case 2:
                    if (i2 >= length) {
                        mid = 8;
                        break;
                    } else {
                        mid = 3;
                        break;
                    }
                case 3:
                    iArr = iArr;
                    i = i2 + ((length - i2) / 2);
                    int mid2 = iArr[i];
                    if (mid2 != low) {
                        mid = 5;
                        break;
                    } else {
                        mid = 4;
                        break;
                    }
                case 4:
                    return i;
                case 5:
                    iArr = iArr;
                    int mid3 = iArr[i];
                    if (mid3 <= low) {
                        mid = 7;
                        break;
                    } else {
                        mid = 6;
                        break;
                    }
                case 6:
                    length = i;
                    mid = 2;
                    break;
                case 7:
                    i2 = i + 1;
                    mid = 2;
                    break;
                case 8:
                    i = -1;
                    mid = 4;
                    break;
            }
        }
    }

    public static AnonymousClass68 A0E(View view, int i) {
        DisplayMetrics displayMetrics;
        if (view == null) {
            A0N(null, false, A0H(359, 16, 51));
            return new AnonymousClass68(EnumC02865g.A07);
        }
        if (view.getParent() == null) {
            A0N(view, false, A0H(529, 22, 86));
            return new AnonymousClass68(EnumC02865g.A0G);
        }
        if (!view.isShown()) {
            A0N(view, false, A0H(286, 37, 74));
            return new AnonymousClass68(EnumC02865g.A0G);
        }
        if (view.getWindowVisibility() != 0) {
            A0N(view, false, A0H(627, 37, 25));
            return new AnonymousClass68(EnumC02865g.A0H);
        }
        if (view.getMeasuredWidth() <= 0 || view.getMeasuredHeight() <= 0) {
            A0N(view, false, A0H(44, 36, 83) + view.getMeasuredWidth() + A0H(280, 4, 39) + view.getMeasuredHeight());
            return new AnonymousClass68(EnumC02865g.A0F);
        }
        if (A00(view) < 0.9f) {
            A0N(view, false, A0H(415, 27, 4));
            return new AnonymousClass68(EnumC02865g.A0A);
        }
        int width = view.getWidth();
        int height = view.getHeight();
        int[] iArr = new int[2];
        try {
            view.getLocationOnScreen(iArr);
            Rect rect = new Rect();
            if (!view.getGlobalVisibleRect(rect)) {
                return new AnonymousClass68(EnumC02865g.A06);
            }
            Context context = view.getContext();
            int widthPixels = Build.VERSION.SDK_INT;
            if (widthPixels >= 17) {
                WindowManager wm = (WindowManager) context.getSystemService(A0H(80, 6, 2));
                Display defaultDisplay = wm.getDefaultDisplay();
                displayMetrics = new DisplayMetrics();
                defaultDisplay.getRealMetrics(displayMetrics);
            } else {
                displayMetrics = context.getResources().getDisplayMetrics();
            }
            Vector<Rect> vectorA0K = A0K(view);
            int iA08 = A08(vectorA0K);
            vectorA0K.add(rect);
            int iA082 = A08(vectorA0K) - iA08;
            int measuredHeight = view.getMeasuredHeight();
            int targetVisibleAreaSize = view.getMeasuredWidth();
            float f = (iA082 * 1.0f) / (measuredHeight * targetVisibleAreaSize);
            boolean zA1g = K1.A1g(context);
            int iA01 = A01(i, view);
            float f2 = iA01 / 100.0f;
            if (zA1g) {
                if (f < f2) {
                    A0N(view, false, String.format(Locale.US, A0H(IjkMediaMeta.FF_PROFILE_H264_HIGH_444, 76, 79), Float.valueOf(f), Float.valueOf(f2)));
                    return new AnonymousClass68(EnumC02865g.A03, f);
                }
            } else {
                if (iArr[0] < 0 || displayMetrics.widthPixels - iArr[0] < width) {
                    A0N(view, false, A0H(554, 44, 73));
                    return new AnonymousClass68(EnumC02865g.A0C, f);
                }
                int i2 = (int) ((height * (100.0d - iA01)) / 100.0d);
                int i3 = rect.top;
                int verticalInvisibleThreshold = iArr[1];
                if (i3 - verticalInvisibleThreshold > i2) {
                    A0N(view, false, A0H(FetchService.ACTION_ON_UPDATE_INTERVAL, 36, 109));
                    return new AnonymousClass68(EnumC02865g.A0D, f);
                }
                int i4 = iArr[1] + height;
                int verticalInvisibleThreshold2 = rect.bottom;
                if (i4 - verticalInvisibleThreshold2 > i2) {
                    A0N(view, false, A0H(686, 39, 65));
                    return new AnonymousClass68(EnumC02865g.A0B, f);
                }
            }
            if (!PE.A03(context)) {
                A0N(view, false, A0H(113, 26, 39));
                return new AnonymousClass68(EnumC02865g.A0J, f);
            }
            Map<String, String> mapA01 = PF.A01(context);
            if (OZ.A04(mapA01)) {
                A0N(view, false, A0H(ThirdPartyAccountBaseFragment.API_ERR_EMAIL_NO_PASSWORD, 29, 119));
                return new AnonymousClass68(EnumC02865g.A09, f);
            }
            if (K1.A1L(context) && OZ.A03(mapA01)) {
                A0N(view, false, A0H(220, 31, 33));
                return new AnonymousClass68(EnumC02865g.A04, f, mapA01);
            }
            Float fA00 = null;
            if (K1.A1Q(context)) {
                fA00 = C5f.A00(view);
            }
            if (fA00 != null) {
                if (fA00.floatValue() == -1.0f) {
                    A0N(view, false, A0H(379, 34, 82));
                    return new AnonymousClass68(EnumC02865g.A05);
                }
                if (fA00.floatValue() == 0.0f) {
                    A0N(view, false, A0H(664, 22, 91));
                    return new AnonymousClass68(EnumC02865g.A06);
                }
            }
            if (K1.A1O(context) && fA00 != null && fA00.floatValue() < f2) {
                Locale locale = Locale.US;
                String strA0H = A0H(IjkMediaMeta.FF_PROFILE_H264_HIGH_444, 76, 79);
                Float topActivityViewabilityPercent = Float.valueOf(f2);
                A0N(view, false, String.format(locale, strA0H, fA00, topActivityViewabilityPercent));
                return new AnonymousClass68(EnumC02865g.A03, f, mapA01);
            }
            A0N(view, true, A0H(94, 19, 126));
            return new AnonymousClass68(EnumC02865g.A0I, f, mapA01);
        } catch (NullPointerException unused) {
            A0N(view, false, A0H(14, 30, 106));
            return new AnonymousClass68(EnumC02865g.A0F);
        }
    }

    private static Vector<Rect> A0K(View view) {
        ViewGroup parent = null;
        int i = 0;
        View childAt = null;
        Vector<Rect> vector = new Vector<>();
        int i2 = !(view.getParent() instanceof ViewGroup) ? 2 : 3;
        while (true) {
            switch (i2) {
                case 2:
                    return vector;
                case 3:
                    view = view;
                    parent = (ViewGroup) view.getParent();
                    int i3 = parent.indexOfChild(view);
                    i = i3 + 1;
                    i2 = 4;
                    break;
                case 4:
                    parent = parent;
                    int i4 = parent.getChildCount();
                    if (i >= i4) {
                        i2 = 8;
                        break;
                    } else {
                        i2 = 5;
                        break;
                    }
                case 5:
                    parent = parent;
                    childAt = parent.getChildAt(i);
                    if (!(childAt instanceof S6)) {
                        i2 = 6;
                        break;
                    } else {
                        i2 = 7;
                        break;
                    }
                case 6:
                    vector = vector;
                    childAt = childAt;
                    vector.addAll(A0L(childAt));
                    i2 = 7;
                    break;
                case 7:
                    i++;
                    i2 = 4;
                    break;
                case 8:
                    vector = vector;
                    parent = parent;
                    vector.addAll(A0K(parent));
                    i2 = 2;
                    break;
            }
        }
    }

    private static Vector<Rect> A0L(View view) {
        ViewGroup viewGroup = null;
        Rect rect = null;
        int i = 0;
        Vector<Rect> vector = new Vector<>();
        char c = view.isShown() ? (char) 2 : (char) 4;
        while (true) {
            switch (c) {
                case 2:
                    if (Build.VERSION.SDK_INT < 11) {
                        c = 5;
                        break;
                    } else {
                        c = 3;
                        break;
                    }
                case 3:
                    view = view;
                    if (view.getAlpha() > 0.0f) {
                        c = 5;
                        break;
                    } else {
                        c = 4;
                        break;
                    }
                case 4:
                    return vector;
                case 5:
                    view = view;
                    if (!(view instanceof ViewGroup)) {
                        c = '\n';
                        break;
                    } else {
                        c = 6;
                        break;
                    }
                case 6:
                    view = view;
                    if (!A0O(view)) {
                        c = '\n';
                        break;
                    } else {
                        c = 7;
                        break;
                    }
                case 7:
                    view = view;
                    viewGroup = (ViewGroup) view;
                    i = 0;
                    c = '\b';
                    break;
                case '\b':
                    viewGroup = viewGroup;
                    if (i >= viewGroup.getChildCount()) {
                        c = 4;
                        break;
                    } else {
                        c = '\t';
                        break;
                    }
                case '\t':
                    vector = vector;
                    viewGroup = viewGroup;
                    vector.addAll(A0L(viewGroup.getChildAt(i)));
                    i++;
                    c = '\b';
                    break;
                case '\n':
                    view = view;
                    rect = new Rect();
                    if (!view.getGlobalVisibleRect(rect)) {
                        c = 4;
                        break;
                    } else {
                        c = 11;
                        break;
                    }
                case 11:
                    vector = vector;
                    rect = rect;
                    vector.add(rect);
                    c = 4;
                    break;
            }
        }
    }

    private static void A0N(View view, boolean z, String str) {
        StringBuilder sbAppend = null;
        String strA0H = null;
        char c = BuildConfigApi.isDebug() ? (char) 2 : (char) 5;
        while (true) {
            switch (c) {
                case 2:
                    view = view;
                    sbAppend = new StringBuilder().append(A0H(WsMessage.THREAD_WAIT_LIST_JOIN_RESPONSE, 5, 24)).append(view).append(A0H(375, 4, 90));
                    if (!z) {
                        c = 6;
                        break;
                    } else {
                        c = 3;
                        break;
                    }
                case 3:
                    strA0H = A0H(86, 8, 75);
                    c = 4;
                    break;
                case 4:
                    str = str;
                    sbAppend = sbAppend;
                    strA0H = strA0H;
                    sbAppend.append(strA0H).append(A0H(0, 14, 40)).append(str).toString();
                    c = 5;
                    break;
                case 5:
                    return;
                case 6:
                    strA0H = A0H(442, 12, 116);
                    c = 4;
                    break;
            }
        }
    }

    private static boolean A0O(View view) {
        boolean z = false;
        char c = view.getBackground() != null ? (char) 2 : (char) 4;
        while (true) {
            switch (c) {
                case 2:
                    if (Build.VERSION.SDK_INT < 19) {
                        c = 6;
                        break;
                    } else {
                        c = 3;
                        break;
                    }
                case 3:
                    view = view;
                    if (view.getBackground().getAlpha() > 0) {
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

    public final synchronized String A0R() {
        return EnumC02865g.values()[this.A05.A01()].toString() + String.format(Locale.US, A0H(454, 9, 96), Float.valueOf(this.A05.A00() * 100.0f));
    }

    public final synchronized Map<String, String> A0S() {
        HashMap map;
        map = new HashMap();
        map.put(A0H(551, 3, 91), String.valueOf(this.A05.A01()));
        map.put(A0H(284, 2, 22), String.valueOf(this.A05.A00()));
        map.put(A0H(463, 2, 22), new JSONObject(this.A06).toString());
        map.put(A0H(413, 2, 112), OO.A05(this.A03));
        map.putAll(this.A05.A02());
        return map;
    }

    public final synchronized void A0T() {
        if (this.A04 != null) {
            A0U();
        }
        this.A04 = new AbstractC02453p<C6K>(this) { // from class: com.facebook.ads.redexgen.X.6W
            {
                super(this);
            }

            @Override // com.facebook.ads.redexgen.X.AnonymousClass27
            public final void A03() {
                C6K c6kA04 = A04();
                if (c6kA04 != null) {
                    View view = c6kA04.A0B;
                    AbstractC02052b abstractC02052b = (AbstractC02052b) c6kA04.A0C.get();
                    if (view != null && abstractC02052b != null) {
                        AnonymousClass68 anonymousClass68A0E = C6K.A0E(view, c6kA04.A09);
                        if (!anonymousClass68A0E.A03()) {
                            c6kA04.A00 = 0;
                        } else {
                            C6K.A05(c6kA04);
                        }
                        boolean z = c6kA04.A00 > c6kA04.A08;
                        boolean z2 = c6kA04.A05 != null && c6kA04.A05.A03();
                        if (z || !anonymousClass68A0E.A03()) {
                            c6kA04.A05 = anonymousClass68A0E;
                        }
                        String strValueOf = String.valueOf(anonymousClass68A0E.A01());
                        synchronized (c6kA04) {
                            int historicalCount = c6kA04.A06.containsKey(strValueOf) ? ((Integer) c6kA04.A06.get(strValueOf)).intValue() : 0;
                            c6kA04.A06.put(strValueOf, Integer.valueOf(historicalCount + 1));
                        }
                        if (z && !z2) {
                            c6kA04.A03 = System.currentTimeMillis();
                            abstractC02052b.A02();
                            if (BuildConfigApi.isDebug() && AdInternalSettings.isVisibleAnimation()) {
                                AlphaAnimation alphaAnimation = new AlphaAnimation(1.0f, 0.0f);
                                alphaAnimation.setDuration(500L);
                                view.startAnimation(alphaAnimation);
                            }
                            if (!c6kA04.A0D) {
                                return;
                            }
                        } else if (!z && z2) {
                            abstractC02052b.A00();
                        }
                        if (c6kA04.A07 || c6kA04.A04 == null) {
                            return;
                        }
                        c6kA04.A0A.postDelayed(c6kA04.A04, c6kA04.A02);
                    }
                }
            }
        };
        this.A0A.postDelayed(this.A04, this.A01);
        this.A07 = false;
        this.A00 = 0;
        this.A05 = new AnonymousClass68(EnumC02865g.A0K);
        this.A06 = new HashMap();
    }

    public final synchronized void A0U() {
        this.A0A.removeCallbacks(this.A04);
        this.A04 = null;
        this.A07 = true;
        this.A00 = 0;
    }

    public final void A0V(int i) {
        this.A01 = i;
    }

    public final void A0W(int i) {
        C6K c6k = this;
        char c = BuildConfigApi.isDebug() ? (char) 2 : (char) 4;
        while (true) {
            switch (c) {
                case 2:
                    c6k = c6k;
                    if (!c6k.A0D) {
                        c = 3;
                        break;
                    } else {
                        c = 4;
                        break;
                    }
                case 3:
                    Log.w(A0F, A0H(465, 64, 105));
                    c = 4;
                    break;
                case 4:
                    c6k.A02 = i;
                    return;
            }
        }
    }

    public final synchronized boolean A0X() {
        return this.A07;
    }
}
