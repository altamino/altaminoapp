package com.facebook.ads.redexgen.X;

import android.annotation.SuppressLint;
import android.content.Context;
import android.os.Message;
import android.view.MotionEvent;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;
import java.util.concurrent.atomic.AtomicBoolean;
import javax.annotation.Nullable;

/* JADX WARN: Classes with same name are omitted:
  assets.dex
  assets/audience_network.dex
 */
/* loaded from: assets/assets/audience_network.dex */
public final class BH {

    @Nullable
    private static BH A07;
    private static final AtomicBoolean A08 = new AtomicBoolean();
    private BG A00 = new BG(this, FE.A00().A03().getLooper());
    private BS A01;
    private BT A02;
    private List<BX> A03;
    private final Context A04;
    private final C0430Ay A05;
    private final EnumC0525Ep A06;

    private BH(C0430Ay c0430Ay, Context context) {
        this.A05 = c0430Ay;
        this.A04 = context;
        this.A06 = c0430Ay.A0T();
    }

    public static synchronized BH A00(Context context, C0430Ay c0430Ay) {
        if (A07 == null) {
            A07 = new BH(c0430Ay, context);
        }
        return A07;
    }

    private synchronized void A02() {
        A08.set(false);
        this.A03 = new ArrayList();
    }

    public final synchronized void A03() {
        if (this.A01 != null) {
            this.A01.A03(this.A03);
        }
        A02();
    }

    @SuppressLint({"POSSIBLE_VARIABLE_NAME_TYPO"})
    public final synchronized void A04(Map<Integer, C0519Ej> map, EnumC0522Em enumC0522Em) {
        A02();
        BM bm = new BM(this.A05, map);
        for (Map.Entry<Integer, C0519Ej> entry : map.entrySet()) {
            C0519Ej value = entry.getValue();
            if (value != null && value.A03(enumC0522Em)) {
                switch (entry.getKey().intValue()) {
                    case 10800:
                        this.A02 = new BT(this.A04, bm, this.A06);
                        A08.set(true);
                        break;
                    case 10810:
                        this.A03.add(BX.A03);
                        break;
                    case 10811:
                        this.A03.add(BX.A07);
                        break;
                    case 10812:
                        this.A03.add(BX.A09);
                        break;
                    case 10813:
                        this.A03.add(BX.A06);
                        break;
                    case 10814:
                        this.A03.add(BX.A0A);
                        break;
                    case 10815:
                        this.A03.add(BX.A0B);
                        break;
                    case 10816:
                        this.A03.add(BX.A0D);
                        break;
                    case 10817:
                        this.A03.add(BX.A08);
                        break;
                    case 10818:
                        this.A03.add(BX.A05);
                        break;
                    case 10819:
                        this.A03.add(BX.A04);
                        break;
                    case 10820:
                        this.A03.add(BX.A0C);
                        break;
                }
            }
        }
        this.A01 = new BS(this.A04, bm, this.A06);
        this.A01.A02(this.A03);
    }

    public final boolean A05(MotionEvent motionEvent) {
        BH bh = this;
        boolean z = false;
        char c = !A08.get() ? (char) 2 : (char) 4;
        while (true) {
            switch (c) {
                case 2:
                    z = false;
                    c = 3;
                    break;
                case 3:
                    return z;
                case 4:
                    bh = bh;
                    motionEvent = motionEvent;
                    Message message = new Message();
                    message.what = BF.A02.ordinal();
                    message.obj = motionEvent;
                    bh.A00.sendMessage(message);
                    z = true;
                    c = 3;
                    break;
            }
        }
    }
}
