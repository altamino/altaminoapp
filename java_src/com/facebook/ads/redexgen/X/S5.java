package com.facebook.ads.redexgen.X;

import android.annotation.TargetApi;
import android.content.Context;
import android.graphics.drawable.Drawable;
import android.net.Uri;
import android.support.v4.view.ViewCompat;
import android.text.TextUtils;
import android.widget.LinearLayout;
import android.widget.TextView;
import java.util.Arrays;

/* JADX WARN: Classes with same name are omitted:
  assets.dex
  assets/audience_network.dex
 */
@TargetApi(19)
/* loaded from: assets/assets/audience_network.dex */
public final class S5 extends LinearLayout {
    private static byte[] A03;
    private Drawable A00;
    private TextView A01;
    private TextView A02;

    static {
        A02();
    }

    private static String A00(int i, int i2, int i3) {
        byte[] bArrCopyOfRange = Arrays.copyOfRange(A03, i, i + i2);
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
                    bArrCopyOfRange[i4] = (byte) ((bArrCopyOfRange[i4] - i3) - 2);
                    i4++;
                    c = 2;
                    break;
                case 4:
                    return new String(bArrCopyOfRange);
            }
        }
    }

    private static void A02() {
        A03 = new byte[]{127, -117, -117, -121, -118};
    }

    public S5(Context context) {
        super(context);
        A01();
    }

    private void A01() {
        float f = getResources().getDisplayMetrics().density;
        setOrientation(1);
        this.A02 = new TextView(getContext());
        LinearLayout.LayoutParams layoutParams = new LinearLayout.LayoutParams(-1, -2);
        this.A02.setTextColor(ViewCompat.MEASURED_STATE_MASK);
        this.A02.setTextSize(2, 20.0f);
        this.A02.setEllipsize(TextUtils.TruncateAt.END);
        this.A02.setSingleLine(true);
        this.A02.setVisibility(8);
        addView(this.A02, layoutParams);
        this.A01 = new TextView(getContext());
        LinearLayout.LayoutParams layoutParams2 = new LinearLayout.LayoutParams(-1, -2);
        this.A01.setAlpha(0.5f);
        this.A01.setTextColor(ViewCompat.MEASURED_STATE_MASK);
        this.A01.setTextSize(2, 15.0f);
        this.A01.setCompoundDrawablePadding((int) (5.0f * f));
        this.A01.setEllipsize(TextUtils.TruncateAt.END);
        this.A01.setSingleLine(true);
        this.A01.setVisibility(8);
        addView(this.A01, layoutParams2);
    }

    private Drawable getPadlockDrawable() {
        if (this.A00 == null) {
            this.A00 = C0769Oe.A04(getContext(), EnumC0768Od.BROWSER_PADLOCK);
        }
        return this.A00;
    }

    public void setSubtitle(String str) {
        S5 s5 = this;
        TextView textView = null;
        Drawable padlockDrawable = null;
        Drawable drawable = null;
        char c = TextUtils.isEmpty(str) ? (char) 2 : (char) 4;
        while (true) {
            switch (c) {
                case 2:
                    s5 = s5;
                    drawable = null;
                    s5.A01.setText((CharSequence) null);
                    s5.A01.setVisibility(8);
                    c = 3;
                    break;
                case 3:
                    return;
                case 4:
                    s5 = s5;
                    str = str;
                    Uri uri = Uri.parse(str);
                    s5.A01.setText(uri.getHost());
                    textView = s5.A01;
                    if (!A00(0, 5, 21).equals(uri.getScheme())) {
                        c = 7;
                        break;
                    } else {
                        c = 5;
                        break;
                    }
                case 5:
                    s5 = s5;
                    padlockDrawable = s5.getPadlockDrawable();
                    c = 6;
                    break;
                case 6:
                    s5 = s5;
                    textView = textView;
                    textView.setCompoundDrawablesRelativeWithIntrinsicBounds(padlockDrawable, drawable, drawable, drawable);
                    s5.A01.setVisibility(0);
                    c = 3;
                    break;
                case 7:
                    drawable = null;
                    padlockDrawable = null;
                    c = 6;
                    break;
            }
        }
    }

    public void setTitle(String str) {
        S5 s5 = this;
        char c = TextUtils.isEmpty(str) ? (char) 2 : (char) 4;
        while (true) {
            switch (c) {
                case 2:
                    s5 = s5;
                    s5.A02.setText((CharSequence) null);
                    s5.A02.setVisibility(8);
                    c = 3;
                    break;
                case 3:
                    return;
                case 4:
                    s5 = s5;
                    str = str;
                    s5.A02.setText(str);
                    s5.A02.setVisibility(0);
                    c = 3;
                    break;
            }
        }
    }
}
