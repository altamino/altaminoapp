package com.facebook.ads.redexgen.X;

import android.content.Context;
import android.support.annotation.Nullable;
import android.text.TextUtils;
import android.util.Pair;
import android.view.View;
import android.widget.LinearLayout;
import java.util.Arrays;
import java.util.HashMap;
import java.util.Map;

/* JADX WARN: Classes with same name are omitted:
  assets.dex
  assets/audience_network.dex
 */
/* renamed from: com.facebook.ads.redexgen.X.Ou, reason: case insensitive filesystem */
/* loaded from: assets/assets/audience_network.dex */
public final class C0785Ou {
    private static byte[] A0F;
    private static final int A0G;
    private static final int A0H;
    private static final int A0I;

    @Nullable
    private InterfaceC03688m A00;
    private ViewOnClickListenerC0869Sa A01;
    private final Context A02;
    private final C02172n A03;
    private final C02212r A04;
    private final C02252v A05;
    private final C02292z A06;
    private final AnonymousClass30 A07;
    private final AnonymousClass38 A08;
    private final KM A09;
    private final KX A0A;
    private final OP A0B;
    private final OQ A0C;
    private final C6K A0D;
    private final String A0E;

    private static String A03(int i, int i2, int i3) {
        byte[] bArrCopyOfRange = Arrays.copyOfRange(A0F, i, i + i2);
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
                    bArrCopyOfRange[i4] = (byte) ((bArrCopyOfRange[i4] ^ i3) ^ 117);
                    i4++;
                    c = 2;
                    break;
                case 4:
                    return new String(bArrCopyOfRange);
            }
        }
    }

    private static void A04() {
        A0F = new byte[]{90, 85, 64, 93, 66, 81, 107, 87, 88, 93, 87, 95, 40, 39, 34, 40, 32, 20, 36, 57, 34, 44, 34, 37};
    }

    static {
        A04();
        A0I = (int) (4.0f * OY.A01);
        A0G = (int) (72.0f * OY.A01);
        A0H = (int) (8.0f * OY.A01);
    }

    public C0785Ou(Context context, KM km, AnonymousClass31 anonymousClass31, AnonymousClass32 anonymousClass32, InterfaceC03688m interfaceC03688m, C6K c6k, OP op) {
        this(context, anonymousClass31.A0D(), km, anonymousClass31.A09(), anonymousClass32.A04(), anonymousClass32.A03(), anonymousClass31.A0B(), anonymousClass32.A05(), anonymousClass32.A06(), interfaceC03688m, c6k, op, new OQ(context, new RL(anonymousClass32.A07()), anonymousClass32.A06().A00(), interfaceC03688m));
    }

    public C0785Ou(Context context, KM km, C3D c3d, InterfaceC03688m interfaceC03688m, C6K c6k, OP op) {
        this(context, c3d.A0C(), km, c3d.A0G(), c3d.A0I(), c3d.A0H(), c3d.A0N(), c3d.A0J(), c3d.A0K(), interfaceC03688m, c6k, op, new OQ(context, new RM(), c3d.A0K().A00(), interfaceC03688m));
    }

    private C0785Ou(Context context, String str, KM km, C02172n c02172n, C02252v c02252v, C02212r c02212r, AnonymousClass38 anonymousClass38, C02292z c02292z, AnonymousClass30 anonymousClass30, InterfaceC03688m interfaceC03688m, C6K c6k, OP op, OQ oq) {
        this.A02 = context;
        this.A0E = str;
        this.A09 = km;
        this.A0A = new KX(this.A0E, this.A09);
        this.A00 = interfaceC03688m;
        this.A03 = c02172n;
        this.A05 = c02252v;
        this.A04 = c02212r;
        this.A08 = anonymousClass38;
        this.A06 = c02292z;
        this.A07 = anonymousClass30;
        this.A0D = c6k;
        this.A0B = op;
        this.A0C = oq;
    }

    private View A00() {
        C0785Ou c0785Ou = this;
        C0837Qu c0837Qu = null;
        C0883So c0883So = new C0883So(c0785Ou.A02, c0785Ou.A03.A01(), true, false, false);
        c0883So.A00(c0785Ou.A05.A08(), c0785Ou.A05.A02(), null, false, true);
        c0883So.setAlignment(17);
        HashMap map = new HashMap();
        map.put(A03(12, 12, 62), A03(0, 12, 65));
        ViewOnClickListenerC0869Sa viewOnClickListenerC0869SaA02 = c0785Ou.A02(map);
        OY.A0L(viewOnClickListenerC0869SaA02);
        char c = TextUtils.isEmpty(viewOnClickListenerC0869SaA02.getText()) ? (char) 2 : (char) 3;
        while (true) {
            switch (c) {
                case 2:
                    viewOnClickListenerC0869SaA02 = viewOnClickListenerC0869SaA02;
                    OY.A0I(viewOnClickListenerC0869SaA02);
                    c = 3;
                    break;
                case 3:
                    c0785Ou = c0785Ou;
                    c0837Qu = new C0837Qu(c0785Ou.A02);
                    OY.A0P(c0837Qu, 0);
                    if (!K1.A0w(c0785Ou.A02)) {
                        c = 5;
                        break;
                    } else {
                        c = 4;
                        break;
                    }
                case 4:
                    c0785Ou = c0785Ou;
                    viewOnClickListenerC0869SaA02 = viewOnClickListenerC0869SaA02;
                    c0837Qu = c0837Qu;
                    c0837Qu.setOnClickListener(new PG(c0785Ou, viewOnClickListenerC0869SaA02));
                    c = 5;
                    break;
                case 5:
                    c0785Ou = c0785Ou;
                    if (!K1.A0x(c0785Ou.A02)) {
                        c = 7;
                        break;
                    } else {
                        c = 6;
                        break;
                    }
                case 6:
                    c0785Ou = c0785Ou;
                    c0883So = c0883So;
                    viewOnClickListenerC0869SaA02 = viewOnClickListenerC0869SaA02;
                    c0883So.setOnClickListener(new PD(c0785Ou, viewOnClickListenerC0869SaA02));
                    c = 7;
                    break;
                case 7:
                    C0785Ou c0785Ou2 = c0785Ou;
                    C0837Qu c0837Qu2 = c0837Qu;
                    c0837Qu2.setRadius(50);
                    new SM(c0837Qu2).A04().A07(c0785Ou2.A08.A01());
                    LinearLayout linearLayout = new LinearLayout(c0785Ou2.A02);
                    linearLayout.setOrientation(1);
                    linearLayout.setGravity(17);
                    linearLayout.addView(c0837Qu2, new LinearLayout.LayoutParams(A0G, A0G));
                    LinearLayout.LayoutParams layoutParams = new LinearLayout.LayoutParams(-2, -2);
                    layoutParams.setMargins(0, A0H, 0, A0H);
                    linearLayout.addView(c0883So, layoutParams);
                    linearLayout.addView(viewOnClickListenerC0869SaA02, layoutParams);
                    return linearLayout;
            }
        }
    }

    private View A01() {
        C8H c8h = new C8H(this.A02);
        c8h.setLayoutManager(new C7P(this.A02, 0, false));
        c8h.setAdapter(new C0776Ol(this.A07.A01(), A0I));
        return c8h;
    }

    private ViewOnClickListenerC0869Sa A02(Map<String, String> map) {
        C0785Ou c0785Ou = this;
        ViewOnClickListenerC0869Sa viewOnClickListenerC0869Sa = null;
        char c = c0785Ou.A01 != null ? (char) 2 : (char) 4;
        while (true) {
            switch (c) {
                case 2:
                    c0785Ou = c0785Ou;
                    viewOnClickListenerC0869Sa = c0785Ou.A01;
                    c = 3;
                    break;
                case 3:
                    return viewOnClickListenerC0869Sa;
                case 4:
                    c0785Ou = c0785Ou;
                    map = map;
                    c0785Ou.A01 = new ViewOnClickListenerC0869Sa(c0785Ou.A02, J8.A04.A02(), c0785Ou.A03.A01(), c0785Ou.A09, c0785Ou.A00, c0785Ou.A0D, c0785Ou.A0B);
                    c0785Ou.A01.setCta(c0785Ou.A06, c0785Ou.A0E, map);
                    viewOnClickListenerC0869Sa = c0785Ou.A01;
                    c = 3;
                    break;
            }
        }
    }

    public final Pair<EnumC0786Ov, View> A05() {
        char c;
        C0785Ou c0785Ou = this;
        View viewA00 = null;
        EnumC0786Ov enumC0786OvA06 = c0785Ou.A06();
        switch (P3.A00[enumC0786OvA06.ordinal()]) {
            case 1:
                c = 4;
                break;
            default:
                c = 2;
                break;
        }
        while (true) {
            switch (c) {
                case 2:
                    c0785Ou = c0785Ou;
                    viewA00 = c0785Ou.A00();
                    c = 3;
                    break;
                case 3:
                    View view = viewA00;
                    KZ.A07(view, c0785Ou.A0A, KW.A0T);
                    return new Pair<>(enumC0786OvA06, view);
                case 4:
                    c0785Ou = c0785Ou;
                    viewA00 = c0785Ou.A01();
                    c = 3;
                    break;
            }
        }
    }

    public final EnumC0786Ov A06() {
        EnumC0786Ov enumC0786Ov = null;
        char c = !this.A07.A01().isEmpty() ? (char) 2 : (char) 4;
        while (true) {
            switch (c) {
                case 2:
                    enumC0786Ov = EnumC0786Ov.A03;
                    c = 3;
                    break;
                case 3:
                    return enumC0786Ov;
                case 4:
                    enumC0786Ov = EnumC0786Ov.A02;
                    c = 3;
                    break;
            }
        }
    }

    public final void A07() {
        this.A0C.A05();
    }
}
