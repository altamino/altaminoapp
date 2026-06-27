package com.facebook.ads.redexgen.X;

import android.content.Context;
import android.view.View;
import android.view.ViewGroup;
import android.widget.LinearLayout;
import android.widget.TextView;
import com.facebook.ads.AdOptionsView;
import java.util.Arrays;

/* JADX WARN: Classes with same name are omitted:
  assets.dex
  assets/audience_network.dex
 */
/* renamed from: com.facebook.ads.redexgen.X.Sc, reason: case insensitive filesystem */
/* loaded from: assets/assets/audience_network.dex */
public final class C0871Sc extends LinearLayout {
    private static byte[] A02;
    private int A00;
    private R0 A01;

    static {
        A01();
    }

    private static String A00(int i, int i2, int i3) {
        byte[] bArrCopyOfRange = Arrays.copyOfRange(A02, i, i + i2);
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
                    bArrCopyOfRange[i4] = (byte) ((bArrCopyOfRange[i4] ^ i3) ^ 95);
                    i4++;
                    c = 2;
                    break;
                case 4:
                    return new String(bArrCopyOfRange);
            }
        }
    }

    private static void A01() {
        A02 = new byte[]{49, 60, 56, 61, 53, 48, 55, 60};
    }

    public C0871Sc(Context context, L8 l8, LI li, AdOptionsView adOptionsView) {
        super(context);
        setOrientation(1);
        setVerticalGravity(16);
        this.A01 = new R0(getContext(), 2);
        this.A01.setMinTextSize(14.0f);
        this.A01.setText(l8.A12(A00(0, 8, 6)));
        li.A08(this.A01);
        LinearLayout linearLayout = new LinearLayout(getContext());
        linearLayout.setOrientation(0);
        linearLayout.setGravity(16);
        LinearLayout.LayoutParams layoutParams = new LinearLayout.LayoutParams(0, -2);
        layoutParams.weight = 1.0f;
        linearLayout.addView(this.A01, layoutParams);
        linearLayout.addView((View) adOptionsView, (ViewGroup.LayoutParams) new LinearLayout.LayoutParams(-2, -2));
        this.A00 = l8.A12(A00(0, 8, 6)) != null ? Math.min(l8.A12(A00(0, 8, 6)).length(), 21) : 21;
        addView(linearLayout, new LinearLayout.LayoutParams(-1, -2));
        addView(AbstractC0753No.A00(context, l8, li));
    }

    public int getMinVisibleTitleCharacters() {
        return this.A00;
    }

    public TextView getTitleTextView() {
        return this.A01;
    }
}
