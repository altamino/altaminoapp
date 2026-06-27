package com.facebook.ads.redexgen.X;

import android.os.Build;
import android.util.Log;
import android.view.View;
import android.view.ViewParent;
import com.narvii.poweruser.history.ModerationHistory;
import io.agora.rtc.Constants;
import java.util.Arrays;

/* JADX WARN: Classes with same name are omitted:
  assets.dex
  assets/audience_network.dex
 */
/* renamed from: com.facebook.ads.redexgen.X.6E, reason: invalid class name */
/* loaded from: assets/assets/audience_network.dex */
public final class C6E {
    public static final C6B A00;

    static {
        if (Build.VERSION.SDK_INT >= 21) {
            A00 = new C6C() { // from class: com.facebook.ads.redexgen.X.6D
                private static byte[] A00;

                static {
                    A01();
                }

                private static String A00(int i, int i2, int i3) {
                    byte[] bArrCopyOfRange = Arrays.copyOfRange(A00, i, i + i2);
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
                                bArrCopyOfRange[i4] = (byte) ((bArrCopyOfRange[i4] - i3) - 61);
                                i4++;
                                c = 2;
                                break;
                            case 4:
                                return new String(bArrCopyOfRange);
                        }
                    }
                }

                private static void A01() {
                    A00 = new byte[]{-4, -12, 3, -9, -2, -13, -81, -2, -3, -30, 3, -16, 1, 3, -35, -12, 2, 3, -12, -13, -30, -14, 1, -2, -5, -5, -53, -61, -46, -58, -51, -62, 126, -51, -52, -79, -46, -51, -50, -84, -61, -47, -46, -61, -62, -79, -63, -48, -51, -54, -54, 14, 6, 21, 9, 16, 5, -63, 16, 15, -17, 6, 20, 21, 6, 5, -12, 4, 19, 16, 13, 13, -37, -45, -30, -42, -35, -46, -114, -35, -36, -68, -45, -31, -30, -45, -46, -66, -32, -45, -76, -38, -41, -36, -43, -119, -51, -40, -50, -36, -119, -41, -40, -35, -119, -46, -42, -39, -43, -50, -42, -50, -41, -35, -119, -46, -41, -35, -50, -37, -49, -54, -52, -50, -119, -77, -85, -70, -82, -75, -86, 102, -75, -76, -108, -85, -71, -70, -85, -86, -103, -87, -72, -75, -78, -78, -121, -87, -87, -85, -74, -70, -85, -86, -21, -2, -6, 12, -27, -10, 7, -6, 3, 9, -40, 4, 2, 5, -10, 9, -4, 15, 11, 29, -10, 7, 24, 11, 20, 26, -58, -16, -24, -9, -21, -14, -25, -93, -14, -15, -47, -24, -10, -9, -24, -25, -45, -11, -24, -42, -26, -11, -14, -17, -17, 2, -6, 9, -3, 4, -7, -75, 4, 3, -29, -6, 8, 9, -6, -7, -37, 1, -2, 3, -4};
                }

                @Override // com.facebook.ads.redexgen.X.C6B
                public final void A02(ViewParent viewParent, View view) {
                    try {
                        viewParent.onStopNestedScroll(view);
                    } catch (AbstractMethodError e) {
                        Log.e(A00(Constants.ERR_PUBLISH_STREAM_INTERNAL_SERVER_ERROR, 16, 88), A00(170, 11, 105) + viewParent + A00(95, 30, 44) + A00(26, 25, 33), e);
                    }
                }

                @Override // com.facebook.ads.redexgen.X.C6B
                public final void A03(ViewParent viewParent, View view, int i, int i2, int i3, int i4) {
                    try {
                        viewParent.onNestedScroll(view, i, i2, i3, i4);
                    } catch (AbstractMethodError e) {
                        Log.e(A00(Constants.ERR_PUBLISH_STREAM_INTERNAL_SERVER_ERROR, 16, 88), A00(170, 11, 105) + viewParent + A00(95, 30, 44) + A00(51, 21, 100), e);
                    }
                }

                @Override // com.facebook.ads.redexgen.X.C6B
                public final void A04(ViewParent viewParent, View view, int i, int i2, int[] iArr) {
                    try {
                        viewParent.onNestedPreScroll(view, i, i2, iArr);
                    } catch (AbstractMethodError e) {
                        Log.e(A00(Constants.ERR_PUBLISH_STREAM_INTERNAL_SERVER_ERROR, 16, 88), A00(170, 11, 105) + viewParent + A00(95, 30, 44) + A00(181, 24, 70), e);
                    }
                }

                @Override // com.facebook.ads.redexgen.X.C6B
                public final void A05(ViewParent viewParent, View view, View view2, int i) {
                    try {
                        viewParent.onNestedScrollAccepted(view, view2, i);
                    } catch (AbstractMethodError e) {
                        Log.e(A00(Constants.ERR_PUBLISH_STREAM_INTERNAL_SERVER_ERROR, 16, 88), A00(170, 11, 105) + viewParent + A00(95, 30, 44) + A00(125, 29, 9), e);
                    }
                }

                @Override // com.facebook.ads.redexgen.X.C6B
                public final boolean A06(ViewParent viewParent, View view, float f, float f2) {
                    try {
                        return viewParent.onNestedPreFling(view, f, f2);
                    } catch (AbstractMethodError e) {
                        Log.e(A00(Constants.ERR_PUBLISH_STREAM_INTERNAL_SERVER_ERROR, 16, 88), A00(170, 11, 105) + viewParent + A00(95, 30, 44) + A00(72, 23, 49), e);
                        return false;
                    }
                }

                @Override // com.facebook.ads.redexgen.X.C6B
                public final boolean A07(ViewParent viewParent, View view, float f, float f2, boolean z) {
                    try {
                        return viewParent.onNestedFling(view, f, f2, z);
                    } catch (AbstractMethodError e) {
                        Log.e(A00(Constants.ERR_PUBLISH_STREAM_INTERNAL_SERVER_ERROR, 16, 88), A00(170, 11, 105) + viewParent + A00(95, 30, 44) + A00(ModerationHistory.OP_ADMIN_SEND_STRIKE_TO_USER, 20, 88), e);
                        return false;
                    }
                }

                @Override // com.facebook.ads.redexgen.X.C6B
                public final boolean A08(ViewParent viewParent, View view, View view2, int i) {
                    try {
                        return viewParent.onStartNestedScroll(view, view2, i);
                    } catch (AbstractMethodError e) {
                        Log.e(A00(Constants.ERR_PUBLISH_STREAM_INTERNAL_SERVER_ERROR, 16, 88), A00(170, 11, 105) + viewParent + A00(95, 30, 44) + A00(0, 26, 82), e);
                        return false;
                    }
                }
            };
        } else if (Build.VERSION.SDK_INT >= 19) {
            A00 = new C6C();
        } else {
            A00 = new C6B();
        }
    }

    private C6E() {
    }

    public static void A00(ViewParent viewParent, View view, int i) {
        char c = viewParent instanceof C5S ? (char) 2 : (char) 4;
        while (true) {
            switch (c) {
                case 2:
                    viewParent = viewParent;
                    view = view;
                    ((C5S) viewParent).onStopNestedScroll(view, i);
                    c = 3;
                    break;
                case 3:
                    return;
                case 4:
                    if (i != 0) {
                        c = 3;
                        break;
                    } else {
                        c = 5;
                        break;
                    }
                case 5:
                    viewParent = viewParent;
                    view = view;
                    A00.A02(viewParent, view);
                    c = 3;
                    break;
            }
        }
    }

    public static void A01(ViewParent viewParent, View view, int i, int i2, int i3, int i4, int i5) {
        ViewParent viewParent2 = viewParent;
        View view2 = view;
        char c = viewParent2 instanceof C5S ? (char) 2 : (char) 4;
        while (true) {
            switch (c) {
                case 2:
                    viewParent2 = viewParent2;
                    view2 = view2;
                    ((C5S) viewParent2).onNestedScroll(view2, i, i2, i3, i4, i5);
                    c = 3;
                    break;
                case 3:
                    return;
                case 4:
                    if (i5 != 0) {
                        c = 3;
                        break;
                    } else {
                        c = 5;
                        break;
                    }
                case 5:
                    viewParent2 = viewParent2;
                    view2 = view2;
                    A00.A03(viewParent2, view2, i, i2, i3, i4);
                    c = 3;
                    break;
            }
        }
    }

    public static void A02(ViewParent viewParent, View view, int i, int i2, int[] iArr, int i3) {
        ViewParent viewParent2 = viewParent;
        int[] iArr2 = iArr;
        View view2 = view;
        char c = viewParent2 instanceof C5S ? (char) 2 : (char) 4;
        while (true) {
            switch (c) {
                case 2:
                    viewParent2 = viewParent2;
                    view2 = view2;
                    iArr2 = iArr2;
                    ((C5S) viewParent2).onNestedPreScroll(view2, i, i2, iArr2, i3);
                    c = 3;
                    break;
                case 3:
                    return;
                case 4:
                    if (i3 != 0) {
                        c = 3;
                        break;
                    } else {
                        c = 5;
                        break;
                    }
                case 5:
                    viewParent2 = viewParent2;
                    view2 = view2;
                    iArr2 = iArr2;
                    A00.A04(viewParent2, view2, i, i2, iArr2);
                    c = 3;
                    break;
            }
        }
    }

    public static void A03(ViewParent viewParent, View view, View view2, int i, int i2) {
        char c = viewParent instanceof C5S ? (char) 2 : (char) 4;
        while (true) {
            switch (c) {
                case 2:
                    viewParent = viewParent;
                    view = view;
                    view2 = view2;
                    ((C5S) viewParent).onNestedScrollAccepted(view, view2, i, i2);
                    c = 3;
                    break;
                case 3:
                    return;
                case 4:
                    if (i2 != 0) {
                        c = 3;
                        break;
                    } else {
                        c = 5;
                        break;
                    }
                case 5:
                    viewParent = viewParent;
                    view = view;
                    view2 = view2;
                    A00.A05(viewParent, view, view2, i);
                    c = 3;
                    break;
            }
        }
    }

    public static boolean A04(ViewParent viewParent, View view, float f, float f2) {
        return A00.A06(viewParent, view, f, f2);
    }

    public static boolean A05(ViewParent viewParent, View view, float f, float f2, boolean z) {
        return A00.A07(viewParent, view, f, f2, z);
    }

    public static boolean A06(ViewParent viewParent, View view, View view2, int i, int i2) {
        boolean zOnStartNestedScroll = false;
        char c = viewParent instanceof C5S ? (char) 2 : (char) 4;
        while (true) {
            switch (c) {
                case 2:
                    viewParent = viewParent;
                    view = view;
                    view2 = view2;
                    zOnStartNestedScroll = ((C5S) viewParent).onStartNestedScroll(view, view2, i, i2);
                    c = 3;
                    break;
                case 3:
                    return zOnStartNestedScroll;
                case 4:
                    if (i2 != 0) {
                        c = 6;
                        break;
                    } else {
                        c = 5;
                        break;
                    }
                case 5:
                    viewParent = viewParent;
                    view = view;
                    view2 = view2;
                    zOnStartNestedScroll = A00.A08(viewParent, view, view2, i);
                    c = 3;
                    break;
                case 6:
                    zOnStartNestedScroll = false;
                    c = 3;
                    break;
            }
        }
    }
}
