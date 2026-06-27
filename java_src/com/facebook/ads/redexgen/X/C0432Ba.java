package com.facebook.ads.redexgen.X;

import android.annotation.SuppressLint;
import android.content.Context;
import java.util.List;
import java.util.Map;
import java.util.Set;
import javax.annotation.Nullable;
import org.json.JSONArray;
import org.json.JSONObject;

/* JADX WARN: Classes with same name are omitted:
  assets.dex
  assets/audience_network.dex
 */
/* renamed from: com.facebook.ads.redexgen.X.Ba, reason: case insensitive filesystem */
/* loaded from: assets/assets/audience_network.dex */
public final class C0432Ba {
    private static final String A07 = C0432Ba.class.getSimpleName();
    private final int A00;
    private final Context A01;
    private final C0430Ay A02;
    private final BI A03;
    private final C0435Bd A04;
    private final C0436Be A05;
    private final C0437Bf A06;

    public C0432Ba(Context context, C0430Ay c0430Ay) {
        C0440Bi c0440Bi = new C0440Bi(context, new C0441Bj(new CQ(context, c0430Ay)), c0430Ay);
        this.A01 = context;
        this.A05 = c0440Bi.A0A();
        this.A06 = c0440Bi.A0B();
        this.A04 = c0440Bi.A09();
        this.A00 = c0440Bi.A08();
        this.A02 = c0430Ay;
        this.A03 = new BI();
        this.A03.A01(this.A04);
    }

    @SuppressLint({"BadMethodUse-android.util.Log.e", "CatchGeneralException"})
    private static JSONObject A00() {
        JSONObject jSONObject = new JSONObject();
        Map<Integer, B6<AbstractC0528Es>> mapA03 = C0523En.A01().A03();
        if (mapA03 != null && !mapA03.isEmpty()) {
            try {
                Set<Integer> keyset = mapA03.keySet();
                for (Integer num : keyset) {
                    List<AbstractC0528Es> listA03 = mapA03.get(num).A03();
                    JSONArray jSONArray = new JSONArray();
                    for (AbstractC0528Es signalValueTypeDef : listA03) {
                        jSONArray.put(signalValueTypeDef.A08());
                    }
                    jSONObject.put(num.toString(), jSONArray);
                }
            } catch (Throwable th) {
                BC.A03(th);
            }
        }
        return jSONObject;
    }

    @SuppressLint({"BadMethodUse-java.lang.System.currentTimeMillis"})
    private void A01(String str, EnumC0522Em enumC0522Em, EnumC0526Eq enumC0526Eq) {
        InterfaceC0421Ao interfaceC0421AoA0R = this.A02.A0R();
        if (interfaceC0421AoA0R != null) {
            interfaceC0421AoA0R.A4U(FH.A05(), str, this.A00, enumC0522Em.A03(), (int) (System.currentTimeMillis() / 1000), A00(), enumC0526Eq);
        }
        FH.A0B(this.A02, BA.A07.A02(), str);
    }

    public final void A02() {
        this.A03.A00();
    }

    public final void A03(EnumC0522Em enumC0522Em) {
        this.A04.A03(enumC0522Em, this.A01);
    }

    public final void A04(EnumC0524Eo enumC0524Eo, EnumC0522Em enumC0522Em, @Nullable String str) {
        A05(enumC0524Eo, enumC0522Em, str, EnumC0526Eq.A04);
    }

    public final void A05(EnumC0524Eo enumC0524Eo, EnumC0522Em enumC0522Em, @Nullable String str, EnumC0526Eq enumC0526Eq) {
        C0432Ba c0432Ba = this;
        c0432Ba.A05.A04(enumC0522Em);
        char c = enumC0524Eo == EnumC0524Eo.A02 ? (char) 2 : (char) 4;
        while (true) {
            switch (c) {
                case 2:
                    c0432Ba = c0432Ba;
                    enumC0522Em = enumC0522Em;
                    str = str;
                    c0432Ba.A06.A03(enumC0522Em);
                    if (str == null) {
                        c = 4;
                        break;
                    } else {
                        c = 3;
                        break;
                    }
                case 3:
                    c0432Ba = c0432Ba;
                    enumC0522Em = enumC0522Em;
                    str = str;
                    enumC0526Eq = enumC0526Eq;
                    c0432Ba.A01(str, enumC0522Em, enumC0526Eq);
                    c = 4;
                    break;
                case 4:
                    return;
            }
        }
    }

    public final boolean A06() {
        boolean z = false;
        List<C0519Ej> listA02 = this.A05.A02();
        char c = listA02 != null ? (char) 2 : (char) 5;
        while (true) {
            switch (c) {
                case 2:
                    listA02 = listA02;
                    if (!listA02.isEmpty()) {
                        c = 3;
                        break;
                    } else {
                        c = 5;
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
}
