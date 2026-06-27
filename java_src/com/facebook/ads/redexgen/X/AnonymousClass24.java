package com.facebook.ads.redexgen.X;

import android.content.Context;
import android.os.Bundle;
import android.support.annotation.Nullable;
import android.support.v8.renderscript.ScriptIntrinsicBLAS;
import android.text.TextUtils;
import android.util.Log;
import android.widget.RelativeLayout;
import com.facebook.ads.AdError;
import com.facebook.ads.CacheFlag;
import com.facebook.ads.internal.adquality.AdQualityRule;
import com.facebook.ads.internal.api.BuildConfigApi;
import com.narvii.util.ws.WsMessage;
import io.agora.rtc.Constants;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.EnumSet;
import java.util.HashMap;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX WARN: Classes with same name are omitted:
  assets.dex
  assets/audience_network.dex
 */
/* renamed from: com.facebook.ads.redexgen.X.24, reason: invalid class name */
/* loaded from: assets/assets/audience_network.dex */
public final class AnonymousClass24 extends AnonymousClass23 implements AnonymousClass22<Bundle> {
    private static byte[] A0F;
    public static final /* synthetic */ boolean A0G;

    @Nullable
    private C2L A00;
    private C0607Ht A01;

    @Nullable
    private QL A02;

    @Nullable
    private MB A03;

    @Nullable
    private String A04;

    @Nullable
    private String A05;

    @Nullable
    private JSONObject A06;

    @Nullable
    public Context A09;

    @Nullable
    public KM A0A;
    private final AbstractC01971t<LN> A0C = new AbstractC01971t<LN>() { // from class: com.facebook.ads.redexgen.X.1u
        /* JADX INFO: Access modifiers changed from: private */
        @Override // com.facebook.ads.redexgen.X.AbstractC01971t
        /* renamed from: A00, reason: merged with bridge method [inline-methods] */
        public final void A03(LN ln) {
            if (this.A00.A00 == null) {
                return;
            }
            this.A00.A00.A5V(this.A00);
        }

        @Override // com.facebook.ads.redexgen.X.AbstractC01971t
        public final Class<LN> A01() {
            return LN.class;
        }
    };
    private final AbstractC01971t<K2> A0E = new AbstractC01971t<K2>() { // from class: com.facebook.ads.redexgen.X.1v
        /* JADX INFO: Access modifiers changed from: private */
        @Override // com.facebook.ads.redexgen.X.AbstractC01971t
        /* renamed from: A00, reason: merged with bridge method [inline-methods] */
        public final void A03(K2 k2) {
            this.A00.A07 = true;
            if (this.A00.A00 == null) {
                return;
            }
            this.A00.A00.A5T(this.A00);
        }

        @Override // com.facebook.ads.redexgen.X.AbstractC01971t
        public final Class<K2> A01() {
            return K2.class;
        }
    };
    private final AbstractC01971t<C0667Kc> A0D = new AbstractC01971t<C0667Kc>() { // from class: com.facebook.ads.redexgen.X.1w
        /* JADX INFO: Access modifiers changed from: private */
        @Override // com.facebook.ads.redexgen.X.AbstractC01971t
        /* renamed from: A00, reason: merged with bridge method [inline-methods] */
        public final void A03(C0667Kc c0667Kc) {
            if (this.A00.A00 == null) {
                return;
            }
            this.A00.A00.A5X(this.A00, AdError.internalError(2003));
        }

        @Override // com.facebook.ads.redexgen.X.AbstractC01971t
        public final Class<C0667Kc> A01() {
            return C0667Kc.class;
        }
    };
    private final AbstractC01971t<LO> A0B = new AbstractC01971t<LO>() { // from class: com.facebook.ads.redexgen.X.1x
        /* JADX INFO: Access modifiers changed from: private */
        @Override // com.facebook.ads.redexgen.X.AbstractC01971t
        /* renamed from: A00, reason: merged with bridge method [inline-methods] */
        public final void A03(LO lo) {
            if (this.A00.A00 == null) {
                return;
            }
            this.A00.A00.A5S(this.A00);
        }

        @Override // com.facebook.ads.redexgen.X.AbstractC01971t
        public final Class<LO> A01() {
            return LO.class;
        }
    };
    private boolean A07 = false;
    private boolean A08 = false;

    private static String A06(int i, int i2, int i3) {
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
                    bArrCopyOfRange[i4] = (byte) ((bArrCopyOfRange[i4] ^ i3) ^ 115);
                    i4++;
                    c = 2;
                    break;
                case 4:
                    return new String(bArrCopyOfRange);
            }
        }
    }

    private static void A0A() {
        A0F = new byte[]{127, 126, 125, 114, 117, 114, 111, 114, 116, 117, 76, 91, 79, 75, 91, 77, 74, 119, 90, 23, 8, 5, 4, 14, 52, 51, 45, 19, 4, 17, 73, 88, 69, 73, 29, 26, 4, 59, 50, 47, 48, 60, 41, 90, 95, 74, 95, 89, 65, 67, 90, 107, 78, 99, 68, 8, 10, 27, 10, 9, 2, 7, 2, 31, 2, 14, 24, 113, 102, 121, 117, 111, 116, 110, 126, 117, 109, 116, 71, 127, 125, 100, 52, 85, 112, 14, 17, 28, 29, 23, 39, 12, 17, 21, 29, 39, 8, 23, 20, 20, 17, 22, 31, 39, 17, 22, 12, 29, 10, 14, 25, 20, 33, 25, 27, 2, 82, 51, 22, 82, 27, 28, 10, 9, 1, 1, 3, 20, 121, 124, 91, 112, 119, 113, 123, 125, 107, 125, 98, 111, 110, 100, 105, 108, 87, 122, 109, 123, 120, 103, 102, 123, 109, 14, 22, 20, 13, 63, 8, 9, 9, 18, 19, 78, 86, 84, 77, 77, 92, 95, 81, 88, 110, 88, 94, 82, 83, 89, 78, 49, 54, 43, 44, 42, 61, 57, 53, 122, 98, 96, 121, 72, 109, 101, 122, 119, 118, 124, 91, 87, 70, 65, 95};
    }

    static {
        A0A();
        A0G = !AnonymousClass24.class.desiredAssertionStatus();
    }

    private int A00() throws JSONException {
        AnonymousClass24 anonymousClass24 = this;
        JSONObject jSONObject = null;
        JSONObject jSONObject2 = null;
        int i = -1;
        char c = !A0G ? (char) 2 : (char) 4;
        while (true) {
            switch (c) {
                case 2:
                    anonymousClass24 = anonymousClass24;
                    JSONObject capabilities = anonymousClass24.A06;
                    if (capabilities != null) {
                        c = 4;
                        break;
                    } else {
                        c = 3;
                        break;
                    }
                case 3:
                    throw new AssertionError();
                case 4:
                    anonymousClass24 = anonymousClass24;
                    jSONObject = anonymousClass24.A06.getJSONObject(A06(55, 12, 24));
                    if (!jSONObject.has(A06(Constants.ERR_PUBLISH_STREAM_NOT_AUTHORIZED, 10, 14))) {
                        c = 22;
                        break;
                    } else {
                        c = '\n';
                        break;
                    }
                case '\n':
                    if (!jSONObject.isNull(A06(Constants.ERR_PUBLISH_STREAM_NOT_AUTHORIZED, 10, 14))) {
                        c = '\r';
                        break;
                    } else {
                        c = 22;
                        break;
                    }
                case '\r':
                    jSONObject2 = jSONObject.getJSONObject(A06(Constants.ERR_PUBLISH_STREAM_NOT_AUTHORIZED, 10, 14));
                    if (!jSONObject2.has(A06(163, 16, 78))) {
                        c = 22;
                        break;
                    } else {
                        c = 18;
                        break;
                    }
                case 18:
                    try {
                        i = jSONObject2.getInt(A06(163, 16, 78));
                        c = 22;
                        break;
                    } catch (Exception e) {
                        Log.w(String.valueOf(AnonymousClass24.class), C0694Le.A00(2L), e);
                        c = 22;
                        break;
                    }
                case 22:
                    return i;
            }
        }
    }

    @Nullable
    private String A03() throws JSONException {
        AnonymousClass24 anonymousClass24 = this;
        JSONObject jSONObject = null;
        JSONObject jSONObject2 = null;
        String string = null;
        char c = !A0G ? (char) 2 : (char) 4;
        while (true) {
            switch (c) {
                case 2:
                    anonymousClass24 = anonymousClass24;
                    JSONObject adChoicesSetting = anonymousClass24.A06;
                    if (adChoicesSetting != null) {
                        c = 4;
                        break;
                    } else {
                        c = 3;
                        break;
                    }
                case 3:
                    throw new AssertionError();
                case 4:
                    anonymousClass24 = anonymousClass24;
                    jSONObject = anonymousClass24.A06.getJSONObject(A06(55, 12, 24));
                    if (!jSONObject.has(A06(128, 9, 107))) {
                        c = 22;
                        break;
                    } else {
                        c = '\n';
                        break;
                    }
                case '\n':
                    if (!jSONObject.isNull(A06(128, 9, 107))) {
                        c = '\r';
                        break;
                    } else {
                        c = 22;
                        break;
                    }
                case '\r':
                    jSONObject2 = jSONObject.getJSONObject(A06(128, 9, 107));
                    if (!jSONObject2.has(A06(34, 3, 27))) {
                        c = 22;
                        break;
                    } else {
                        c = 18;
                        break;
                    }
                case 18:
                    try {
                        string = jSONObject2.getString(A06(34, 3, 27));
                        c = 22;
                        break;
                    } catch (Exception e) {
                        Log.w(String.valueOf(AnonymousClass24.class), C0694Le.A00(0L), e);
                        c = 22;
                        break;
                    }
                case 22:
                    return string;
            }
        }
    }

    private String A04() throws JSONException {
        AnonymousClass24 anonymousClass24 = this;
        JSONObject jSONObject = null;
        JSONObject jSONObject2 = null;
        String strOptString = null;
        char c = !A0G ? (char) 2 : (char) 4;
        while (true) {
            switch (c) {
                case 2:
                    anonymousClass24 = anonymousClass24;
                    if (anonymousClass24.A06 != null) {
                        c = 4;
                        break;
                    } else {
                        c = 3;
                        break;
                    }
                case 3:
                    throw new AssertionError();
                case 4:
                    anonymousClass24 = anonymousClass24;
                    jSONObject = anonymousClass24.A06.getJSONObject(A06(55, 12, 24));
                    if (!jSONObject.has(A06(69, 9, 105))) {
                        c = 22;
                        break;
                    } else {
                        c = '\n';
                        break;
                    }
                case '\n':
                    try {
                        if (!jSONObject.isNull(A06(69, 9, 105))) {
                            c = '\r';
                            break;
                        } else {
                            c = 22;
                            break;
                        }
                    } catch (Exception e) {
                        Log.w(String.valueOf(AnonymousClass24.class), C0694Le.A00(1L), e);
                        c = 22;
                        break;
                    }
                case '\r':
                    jSONObject2 = jSONObject.getJSONObject(A06(69, 9, 105));
                    if (!jSONObject2.has(A06(37, 6, 46))) {
                        c = 22;
                        break;
                    } else {
                        c = 18;
                        break;
                    }
                case 18:
                    strOptString = jSONObject2.optString(A06(37, 6, 46));
                    c = 22;
                    break;
                case 22:
                    return strOptString;
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public String A05() {
        AnonymousClass24 anonymousClass24 = this;
        String strA0Q = null;
        char c = anonymousClass24.A01 != null ? (char) 2 : (char) 5;
        while (true) {
            switch (c) {
                case 2:
                    anonymousClass24 = anonymousClass24;
                    if (anonymousClass24.A05 == null) {
                        c = 5;
                        break;
                    } else {
                        c = 3;
                        break;
                    }
                case 3:
                    anonymousClass24 = anonymousClass24;
                    strA0Q = anonymousClass24.A01.A0Q(anonymousClass24.A05);
                    c = 4;
                    break;
                case 4:
                    return strA0Q;
                case 5:
                    anonymousClass24 = anonymousClass24;
                    strA0Q = anonymousClass24.A05;
                    c = 4;
                    break;
            }
        }
    }

    private void A08() throws JSONException {
        KX kx;
        if (!A0G && this.A09 == null) {
            throw new AssertionError();
        }
        if (!A0G && this.A06 == null) {
            throw new AssertionError();
        }
        JSONObject text = this.A06.optJSONObject(A06(30, 4, 78));
        if (text == null) {
            text = new JSONObject();
        }
        this.A02.A0Q(new FK(this.A09));
        Context context = this.A09;
        if (this.A0A != null) {
            kx = new KX(A3P(), this.A0A);
        } else {
            kx = null;
        }
        C0438Bg c0438Bg = new C0438Bg(context, kx);
        this.A02.A0Q(c0438Bg);
        this.A02.A0Q(new IS(c0438Bg, IT.A03));
        this.A02.A0Q(new C0626Im(this.A09));
        String strA04 = A04();
        if (strA04 != null) {
            C0624Ik countdownPlugin = new C0624Ik(this.A09, strA04);
            RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(-2, -2);
            layoutParams.addRule(12);
            layoutParams.addRule(9);
            countdownPlugin.setLayoutParams(layoutParams);
            countdownPlugin.setCountdownTextColor(-1);
            this.A02.A0Q(countdownPlugin);
        }
        JSONObject jSONObject = this.A06;
        String countdownFormat = A06(27, 3, 3);
        if (jSONObject.has(countdownFormat)) {
            JSONObject jSONObject2 = this.A06;
            String countdownFormat2 = A06(27, 3, 3);
            if (!jSONObject2.isNull(countdownFormat2)) {
                JSONObject jSONObject3 = this.A06;
                String countdownFormat3 = A06(27, 3, 3);
                JSONObject jSONObject4 = jSONObject3.getJSONObject(countdownFormat3);
                Context context2 = this.A09;
                String countdownFormat4 = A06(34, 3, 27);
                String string = jSONObject4.getString(countdownFormat4);
                KM km = this.A0A;
                String str = this.A04;
                String countdownFormat5 = A06(30, 4, 78);
                IE ie = new IE(context2, string, km, str, jSONObject4.getString(countdownFormat5));
                RelativeLayout.LayoutParams layoutParams2 = new RelativeLayout.LayoutParams(-2, -2);
                layoutParams2.addRule(10);
                layoutParams2.addRule(11);
                ie.setLayoutParams(layoutParams2);
                this.A02.A0Q(ie);
            }
        }
        String strA03 = A03();
        if (!TextUtils.isEmpty(strA03)) {
            this.A02.A0Q(new J0(this.A09, strA03, this.A04, new float[]{0.0f, 0.0f, 8.0f, 0.0f}));
        }
        int iA00 = A00();
        if (iA00 > 0) {
            FT ft = new FT(this.A09, iA00, text.optString(A06(47, 8, 89), A06(112, 10, 1)), text.optString(A06(187, 6, 122), A06(78, 7, 103)));
            RelativeLayout.LayoutParams layoutParams3 = new RelativeLayout.LayoutParams(-2, -2);
            layoutParams3.addRule(12);
            layoutParams3.addRule(11);
            ft.setLayoutParams(layoutParams3);
            ft.setPadding(0, 0, 0, 30);
            this.A02.A0Q(ft);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void A09() {
        AnonymousClass24 anonymousClass24 = this;
        char c = anonymousClass24.A0A == null ? (char) 2 : (char) 3;
        while (true) {
            switch (c) {
                case 2:
                    return;
                case 3:
                    anonymousClass24 = anonymousClass24;
                    if (!anonymousClass24.A08) {
                        c = 4;
                        break;
                    } else {
                        c = 2;
                        break;
                    }
                case 4:
                    anonymousClass24 = anonymousClass24;
                    anonymousClass24.A08 = true;
                    anonymousClass24.A0A.A4H(anonymousClass24.A04, new HashMap());
                    if (anonymousClass24.A00 == null) {
                        c = 2;
                        break;
                    } else {
                        c = 5;
                        break;
                    }
                case 5:
                    anonymousClass24 = anonymousClass24;
                    anonymousClass24.A00.A5U(anonymousClass24);
                    c = 2;
                    break;
            }
        }
    }

    private void A0B(Context context, C2L c2l, JSONObject jSONObject, KM km, @Nullable Bundle bundle, EnumSet<CacheFlag> enumSet, int i) throws JSONException {
        JSONObject jSONObject2 = jSONObject;
        Bundle bundle2 = bundle;
        KM km2 = km;
        EnumSet<CacheFlag> enumSet2 = enumSet;
        Context context2 = context;
        final AnonymousClass24 anonymousClass24 = this;
        anonymousClass24.A09 = context2;
        anonymousClass24.A00 = c2l;
        anonymousClass24.A0A = km2;
        anonymousClass24.A06 = jSONObject2;
        anonymousClass24.A07 = false;
        JSONObject jSONObject3 = jSONObject2.getJSONObject(A06(WsMessage.THREAD_WAIT_LIST_JOIN_CANCEL_RESPENSE, 5, 120));
        anonymousClass24.A04 = jSONObject2.optString(A06(67, 2, 97));
        anonymousClass24.A02 = new QL(context2);
        anonymousClass24.A02.setVideoProgressReportIntervalMs(i);
        anonymousClass24.A08();
        anonymousClass24.A02.getEventBus().A03(anonymousClass24.A0C, anonymousClass24.A0E, anonymousClass24.A0D, anonymousClass24.A0B);
        ArrayList<AdQualityRule> adQualityRules = new ArrayList<>();
        final double d = 1.0E-7d;
        final double d2 = -1.0d;
        final double d3 = 0.001d;
        final boolean z = false;
        adQualityRules.add(new AbstractC02021y(d, d2, d3, z) { // from class: com.facebook.ads.redexgen.X.1z
            @Override // com.facebook.ads.redexgen.X.AbstractC02021y
            public final void A00(boolean z2, boolean z3, C02594d c02594d) {
                this.A00.A09();
            }
        });
        char c = bundle2 != null ? (char) 2 : '\f';
        while (true) {
            switch (c) {
                case 2:
                    anonymousClass24 = anonymousClass24;
                    context2 = context2;
                    km2 = km2;
                    bundle2 = bundle2;
                    adQualityRules = adQualityRules;
                    anonymousClass24.A03 = new MA(context2, km2, anonymousClass24.A02, adQualityRules, anonymousClass24.A04, bundle2.getBundle(A06(122, 6, 21)), null);
                    c = 3;
                    break;
                case 3:
                    anonymousClass24 = anonymousClass24;
                    context2 = context2;
                    anonymousClass24.A00.A5W(anonymousClass24, anonymousClass24.A02);
                    if (OL.A00(context2) != OK.A06) {
                        c = 11;
                        break;
                    } else {
                        c = 4;
                        break;
                    }
                case 4:
                    jSONObject3 = jSONObject3;
                    if (!jSONObject3.has(A06(193, 10, 96))) {
                        c = 11;
                        break;
                    } else {
                        c = 5;
                        break;
                    }
                case 5:
                    jSONObject3 = jSONObject3;
                    if (!jSONObject3.isNull(A06(193, 10, 96))) {
                        c = 6;
                        break;
                    } else {
                        c = 11;
                        break;
                    }
                case 6:
                    anonymousClass24 = anonymousClass24;
                    jSONObject3 = jSONObject3;
                    anonymousClass24.A05 = jSONObject3.getString(A06(193, 10, 96));
                    c = 7;
                    break;
                case 7:
                    enumSet2 = enumSet2;
                    if (!enumSet2.contains(CacheFlag.VIDEO)) {
                        c = '\n';
                        break;
                    } else {
                        c = '\b';
                        break;
                    }
                case '\b':
                    anonymousClass24 = anonymousClass24;
                    context2 = context2;
                    jSONObject2 = jSONObject2;
                    anonymousClass24.A01 = new C0607Ht(context2);
                    String strOptString = jSONObject2.optString(A06(10, 9, 77));
                    anonymousClass24.A01.A0a(new C0605Hr(anonymousClass24.A05, strOptString, A06(179, 8, 43)));
                    anonymousClass24.A01.A0V(new AnonymousClass20() { // from class: com.facebook.ads.redexgen.X.21
                        @Override // com.facebook.ads.redexgen.X.AnonymousClass20
                        public final void A50() {
                            this.A00.A02.setVideoURI(this.A00.A05());
                        }

                        @Override // com.facebook.ads.redexgen.X.AnonymousClass20
                        public final void A57() {
                            this.A00.A02.setVideoURI(this.A00.A05());
                        }
                    }, new C0600Hm(strOptString, A06(179, 8, 43)));
                    c = '\t';
                    break;
                case '\t':
                    return;
                case '\n':
                    anonymousClass24 = anonymousClass24;
                    anonymousClass24.A02.setVideoURI(anonymousClass24.A05());
                    c = '\t';
                    break;
                case 11:
                    anonymousClass24 = anonymousClass24;
                    jSONObject3 = jSONObject3;
                    anonymousClass24.A05 = jSONObject3.getString(A06(19, 8, 18));
                    c = 7;
                    break;
                case '\f':
                    anonymousClass24 = anonymousClass24;
                    context2 = context2;
                    km2 = km2;
                    adQualityRules = adQualityRules;
                    anonymousClass24.A03 = new MA(context2, km2, anonymousClass24.A02, adQualityRules, anonymousClass24.A04);
                    c = 3;
                    break;
            }
        }
    }

    @Override // com.facebook.ads.redexgen.X.AnonymousClass23
    public final boolean A0E() {
        AnonymousClass24 anonymousClass24 = this;
        boolean z = false;
        char c = anonymousClass24.A07 ? (char) 2 : (char) 3;
        while (true) {
            switch (c) {
                case 2:
                    anonymousClass24 = anonymousClass24;
                    if (anonymousClass24.A02 != null) {
                        c = 5;
                        break;
                    } else {
                        c = 3;
                        break;
                    }
                case 3:
                    z = false;
                    c = 4;
                    break;
                case 4:
                    return z;
                case 5:
                    anonymousClass24 = anonymousClass24;
                    if (anonymousClass24.A03.A0U() <= 0) {
                        c = 7;
                        break;
                    } else {
                        c = 6;
                        break;
                    }
                case 6:
                    anonymousClass24 = anonymousClass24;
                    anonymousClass24.A02.A0O(anonymousClass24.A03.A0U());
                    c = 7;
                    break;
                case 7:
                    anonymousClass24 = anonymousClass24;
                    anonymousClass24.A02.A0P(EnumC0697Lh.A03);
                    z = true;
                    c = 4;
                    break;
            }
        }
    }

    public final void A0F(Context context, C2L c2l, KM km, Bundle bundle, EnumSet<CacheFlag> enumSet) {
        try {
            JSONObject jSONObject = new JSONObject(bundle.getString(A06(ScriptIntrinsicBLAS.RIGHT, 11, 123)));
            A0B(context, c2l, jSONObject, km, bundle, enumSet, jSONObject.optInt(A06(85, 27, 11), 200));
        } catch (JSONException e) {
            if (BuildConfigApi.isDebug()) {
                Log.e(AnonymousClass24.class.toString(), C0694Le.A00(3L), e);
            }
            c2l.A5X(this, AdError.INTERNAL_ERROR);
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:28:0x0078 A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:29:0x0075 A[SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void A0G(android.content.Context r15, com.facebook.ads.redexgen.X.C2L r16, java.util.Map<java.lang.String, java.lang.Object> r17, com.facebook.ads.redexgen.X.KM r18, java.util.EnumSet<com.facebook.ads.CacheFlag> r19) {
        /*
            r14 = this;
            r12 = r19
            r10 = r18
            r8 = r16
            r7 = r15
            r6 = r14
            r4 = 0
            r3 = 0
            r9 = 0
            r13 = 0
            r0 = 2
        Ld:
            switch(r0) {
                case 2: goto L44;
                case 9: goto L3f;
                case 10: goto L36;
                case 12: goto L25;
                case 14: goto L11;
                case 15: goto L7b;
                default: goto L10;
            }
        L10:
            goto Ld
        L11:
            java.lang.Throwable r4 = (java.lang.Throwable) r4
            java.lang.Class<com.facebook.ads.redexgen.X.24> r0 = com.facebook.ads.redexgen.X.AnonymousClass24.class
            java.lang.String r2 = r0.toString()
            r0 = 4
            java.lang.String r0 = com.facebook.ads.redexgen.X.C0694Le.A00(r0)
            android.util.Log.e(r2, r0, r4)
            r0 = 15
            goto Ld
        L25:
            com.facebook.ads.redexgen.X.24 r6 = (com.facebook.ads.redexgen.X.AnonymousClass24) r6     // Catch: org.json.JSONException -> L6e
            android.content.Context r7 = (android.content.Context) r7     // Catch: org.json.JSONException -> L6e
            com.facebook.ads.redexgen.X.2L r8 = (com.facebook.ads.redexgen.X.C2L) r8     // Catch: org.json.JSONException -> L6e
            com.facebook.ads.redexgen.X.KM r10 = (com.facebook.ads.redexgen.X.KM) r10     // Catch: org.json.JSONException -> L6e
            java.util.EnumSet r12 = (java.util.EnumSet) r12     // Catch: org.json.JSONException -> L6e
            org.json.JSONObject r9 = (org.json.JSONObject) r9     // Catch: org.json.JSONException -> L6e
            r11 = 0
            r6.A0B(r7, r8, r9, r10, r11, r12, r13)     // Catch: org.json.JSONException -> L6e
            goto L84
        L36:
            com.facebook.ads.redexgen.X.JK r3 = (com.facebook.ads.redexgen.X.JK) r3     // Catch: org.json.JSONException -> L6e
            int r13 = r3.A06()     // Catch: org.json.JSONException -> L6e
            r0 = 12
            goto Ld
        L3f:
            r13 = 200(0xc8, float:2.8E-43)
            r0 = 12
            goto Ld
        L44:
            r2 = 43
            r1 = 4
            r0 = 77
            java.lang.String r0 = A06(r2, r1, r0)     // Catch: org.json.JSONException -> L6e
            r5 = r17
            java.lang.Object r0 = r5.get(r0)     // Catch: org.json.JSONException -> L6e
            r9 = r0
            org.json.JSONObject r9 = (org.json.JSONObject) r9     // Catch: org.json.JSONException -> L6e
            r2 = 0
            r1 = 10
            r0 = 104(0x68, float:1.46E-43)
            java.lang.String r0 = A06(r2, r1, r0)     // Catch: org.json.JSONException -> L6e
            java.lang.Object r0 = r5.get(r0)     // Catch: org.json.JSONException -> L6e
            r3 = r0
            com.facebook.ads.redexgen.X.JK r3 = (com.facebook.ads.redexgen.X.JK) r3     // Catch: org.json.JSONException -> L6e
            if (r3 != 0) goto L6b
            r0 = 9
            goto Ld
        L6b:
            r0 = 10
            goto Ld
        L6e:
            r4 = move-exception
            boolean r0 = com.facebook.ads.internal.api.BuildConfigApi.isDebug()
            if (r0 == 0) goto L78
            r0 = 14
            goto Ld
        L78:
            r0 = 15
            goto Ld
        L7b:
            com.facebook.ads.redexgen.X.24 r6 = (com.facebook.ads.redexgen.X.AnonymousClass24) r6
            com.facebook.ads.redexgen.X.2L r8 = (com.facebook.ads.redexgen.X.C2L) r8
            com.facebook.ads.AdError r0 = com.facebook.ads.AdError.INTERNAL_ERROR
            r8.A5X(r6, r0)
        L84:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.facebook.ads.redexgen.X.AnonymousClass24.A0G(android.content.Context, com.facebook.ads.redexgen.X.2L, java.util.Map, com.facebook.ads.redexgen.X.KM, java.util.EnumSet):void");
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC01851h
    public final String A3P() {
        return this.A04;
    }

    @Override // com.facebook.ads.redexgen.X.AnonymousClass22
    public final Bundle getSaveInstanceState() {
        AnonymousClass24 anonymousClass24 = this;
        Bundle bundle = null;
        char c = anonymousClass24.A03 != null ? (char) 2 : (char) 5;
        while (true) {
            switch (c) {
                case 2:
                    anonymousClass24 = anonymousClass24;
                    if (anonymousClass24.A06 == null) {
                        c = 5;
                        break;
                    } else {
                        c = 3;
                        break;
                    }
                case 3:
                    anonymousClass24 = anonymousClass24;
                    if (anonymousClass24.A02 == null) {
                        c = 5;
                        break;
                    } else {
                        c = 4;
                        break;
                    }
                case 4:
                    anonymousClass24 = anonymousClass24;
                    if (anonymousClass24.A02.getState() != EnumC03216q.A04) {
                        c = 7;
                        break;
                    } else {
                        c = 5;
                        break;
                    }
                case 5:
                    bundle = null;
                    c = 6;
                    break;
                case 6:
                    return bundle;
                case 7:
                    anonymousClass24 = anonymousClass24;
                    bundle = new Bundle();
                    bundle.putBundle(A06(122, 6, 21), anonymousClass24.A03.getSaveInstanceState());
                    bundle.putString(A06(ScriptIntrinsicBLAS.RIGHT, 11, 123), anonymousClass24.A06.toString());
                    c = 6;
                    break;
            }
        }
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC01851h
    public final void onDestroy() {
        if (this.A02 != null) {
            this.A02.A0N();
            this.A02.A0J();
        }
        this.A00 = null;
        this.A0A = null;
        this.A05 = null;
        this.A07 = false;
        this.A04 = null;
        this.A02 = null;
        this.A03 = null;
        this.A06 = null;
        this.A09 = null;
        this.A08 = false;
    }
}
