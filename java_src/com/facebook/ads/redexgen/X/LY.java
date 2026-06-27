package com.facebook.ads.redexgen.X;

import android.util.DisplayMetrics;
import android.view.View;
import android.widget.RelativeLayout;
import com.facebook.ads.AdSize;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;

/* JADX WARN: Classes with same name are omitted:
  assets.dex
  assets/audience_network.dex
 */
/* loaded from: assets/assets/audience_network.dex */
public final class LY {
    private static final Map<LV, LW> A00 = new HashMap();

    static {
        A00.put(LV.A08, LW.A09);
        A00.put(LV.A06, LW.A0B);
        A00.put(LV.A05, LW.A0A);
    }

    private LY() {
    }

    public static AdSize A00(LW lw) {
        AdSize adSizeA05 = null;
        Map.Entry<LV, LW> next = null;
        Iterator<Map.Entry<LV, LW>> it = A00.entrySet().iterator();
        char c = 2;
        while (true) {
            switch (c) {
                case 2:
                    it = it;
                    if (!it.hasNext()) {
                        c = 6;
                        break;
                    } else {
                        c = 3;
                        break;
                    }
                case 3:
                    lw = lw;
                    it = it;
                    next = it.next();
                    if (next.getValue() != lw) {
                        c = 2;
                        break;
                    } else {
                        c = 4;
                        break;
                    }
                case 4:
                    next = next;
                    adSizeA05 = next.getKey().A05();
                    c = 5;
                    break;
                case 5:
                    return adSizeA05;
                case 6:
                    adSizeA05 = AdSize.BANNER_320_50;
                    c = 5;
                    break;
            }
        }
    }

    public static LW A01(DisplayMetrics displayMetrics) {
        LW lw = null;
        int i = (int) (displayMetrics.widthPixels / displayMetrics.density);
        int i2 = (int) (displayMetrics.heightPixels / displayMetrics.density);
        char c = C0746Nh.A04(i, i2) ? (char) 2 : (char) 4;
        while (true) {
            switch (c) {
                case 2:
                    lw = LW.A0E;
                    c = 3;
                    break;
                case 3:
                    return lw;
                case 4:
                    if (i2 <= i) {
                        c = 6;
                        break;
                    } else {
                        c = 5;
                        break;
                    }
                case 5:
                    lw = LW.A0G;
                    c = 3;
                    break;
                case 6:
                    lw = LW.A0D;
                    c = 3;
                    break;
            }
        }
    }

    public static LW A02(LV lv) {
        LW lw = A00.get(lv);
        if (lw == null) {
            return LW.A0C;
        }
        return lw;
    }

    public static void A03(DisplayMetrics displayMetrics, View view, LV lv) {
        RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(((int) (((float) displayMetrics.widthPixels) / displayMetrics.density)) >= lv.getWidth() ? displayMetrics.widthPixels : (int) Math.ceil(lv.getWidth() * displayMetrics.density), (int) Math.ceil(lv.getHeight() * displayMetrics.density));
        layoutParams.addRule(14, -1);
        view.setLayoutParams(layoutParams);
    }
}
