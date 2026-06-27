package com.facebook.ads.redexgen.X;

import android.content.Context;
import android.content.res.Configuration;
import android.content.res.Resources;
import android.support.annotation.Nullable;
import android.text.TextUtils;
import android.widget.LinearLayout;
import android.widget.TextView;

/* JADX WARN: Classes with same name are omitted:
  assets.dex
  assets/audience_network.dex
 */
/* renamed from: com.facebook.ads.redexgen.X.So, reason: case insensitive filesystem */
/* loaded from: assets/assets/audience_network.dex */
public final class C0883So extends LinearLayout {
    private boolean A00;
    private final TextView A01;
    private final TextView A02;
    private final TextView A03;
    private static final float A04 = Resources.getSystem().getDisplayMetrics().density;
    private static final int A06 = (int) (6.0f * A04);
    private static final int A05 = (int) (8.0f * A04);

    public C0883So(Context context, C02282y c02282y, boolean z, int i, int i2, int i3) {
        super(context);
        this.A00 = false;
        setOrientation(1);
        this.A03 = new TextView(context);
        OY.A0Y(this.A03, true, i);
        this.A03.setTextColor(c02282y.A06(z));
        this.A03.setEllipsize(TextUtils.TruncateAt.END);
        this.A03.setLineSpacing(A06, 1.0f);
        this.A02 = new TextView(context);
        this.A02.setTextColor(c02282y.A04(z));
        this.A01 = new TextView(context);
        OY.A0Y(this.A01, false, i2);
        this.A01.setTextColor(c02282y.A05(z));
        this.A01.setEllipsize(TextUtils.TruncateAt.END);
        this.A01.setLineSpacing(A06, 1.0f);
        addView(this.A03, new LinearLayout.LayoutParams(-1, -2));
        addView(this.A02, new LinearLayout.LayoutParams(-1, -2));
        this.A02.setVisibility(8);
        LinearLayout.LayoutParams layoutParams = new LinearLayout.LayoutParams(-1, -2);
        layoutParams.setMargins(0, i3, 0, 0);
        addView(this.A01, layoutParams);
    }

    public C0883So(Context context, C02282y c02282y, boolean z, boolean z2, boolean z3) {
        this(context, c02282y, z, z2 ? 18 : 22, z2 ? 14 : 16, z3 ? A05 / 2 : A05);
    }

    public final void A00(String str, String str2, @Nullable String str3, boolean z, boolean z2) {
        String str4 = str;
        String str5 = str2;
        String str6 = str3;
        C0883So c0883So = this;
        int i = 0;
        int i2 = 0;
        TextView textView = null;
        TextView textView2 = null;
        TextView textView3 = null;
        int i3 = 0;
        TextView textView4 = null;
        int i4 = 0;
        TextView textView5 = null;
        int i5 = 1;
        char c = !TextUtils.isEmpty(str4) ? (char) 2 : (char) 29;
        while (true) {
            switch (c) {
                case 2:
                    i2 = i5;
                    c = 3;
                    break;
                case 3:
                    str5 = str5;
                    if (!TextUtils.isEmpty(str5)) {
                        c = 4;
                        break;
                    } else {
                        c = 28;
                        break;
                    }
                case 4:
                    i = i5;
                    c = 5;
                    break;
                case 5:
                    c0883So = c0883So;
                    textView = c0883So.A03;
                    if (i2 == 0) {
                        c = 27;
                        break;
                    } else {
                        c = 6;
                        break;
                    }
                case 6:
                    str4 = str4;
                    str6 = str6;
                    textView = textView;
                    textView.setText(str4);
                    if (str6 == null) {
                        c = '\b';
                        break;
                    } else {
                        c = 7;
                        break;
                    }
                case 7:
                    c0883So = c0883So;
                    str6 = str6;
                    c0883So.A02.setText(str6);
                    c = '\b';
                    break;
                case '\b':
                    c0883So = c0883So;
                    textView2 = c0883So.A01;
                    if (i2 == 0) {
                        c = 26;
                        break;
                    } else {
                        c = '\t';
                        break;
                    }
                case '\t':
                    str5 = str5;
                    textView2 = textView2;
                    textView2.setText(str5);
                    if (i2 == 0) {
                        c = 11;
                        break;
                    } else {
                        c = '\n';
                        break;
                    }
                case '\n':
                    if (i != 0) {
                        c = 18;
                        break;
                    } else {
                        c = 11;
                        break;
                    }
                case 11:
                    c0883So = c0883So;
                    textView3 = c0883So.A03;
                    if (!z) {
                        c = 15;
                        break;
                    } else {
                        c = '\f';
                        break;
                    }
                case '\f':
                    i3 = 2;
                    c = '\r';
                    break;
                case '\r':
                    textView3 = textView3;
                    textView3.setMaxLines(i3);
                    c = 14;
                    break;
                case 14:
                    return;
                case 15:
                    if (!z2) {
                        c = 17;
                        break;
                    } else {
                        c = 16;
                        break;
                    }
                case 16:
                    i3 = 4;
                    c = '\r';
                    break;
                case 17:
                    i3 = 3;
                    c = '\r';
                    break;
                case 18:
                    c0883So = c0883So;
                    textView4 = c0883So.A03;
                    if (!z) {
                        c = 25;
                        break;
                    } else {
                        c = 19;
                        break;
                    }
                case 19:
                    i4 = i5;
                    c = 20;
                    break;
                case 20:
                    c0883So = c0883So;
                    textView4 = textView4;
                    textView4.setMaxLines(i4);
                    textView5 = c0883So.A01;
                    if (!z) {
                        c = 22;
                        break;
                    } else {
                        c = 21;
                        break;
                    }
                case 21:
                    textView5 = textView5;
                    textView5.setMaxLines(i5);
                    c = 14;
                    break;
                case 22:
                    if (!z2) {
                        c = 24;
                        break;
                    } else {
                        c = 23;
                        break;
                    }
                case 23:
                    i5 = 3;
                    c = 21;
                    break;
                case 24:
                    i5 = 2;
                    c = 21;
                    break;
                case 25:
                    i4 = 2;
                    c = 20;
                    break;
                case 26:
                    str5 = "";
                    c = '\t';
                    break;
                case 27:
                    str5 = str5;
                    str4 = str5;
                    c = 6;
                    break;
                case 28:
                    i = 0;
                    c = 5;
                    break;
                case 29:
                    i2 = 0;
                    c = 3;
                    break;
            }
        }
    }

    public TextView getDescriptionTextView() {
        return this.A01;
    }

    public TextView getTitleTextView() {
        return this.A03;
    }

    @Override // android.view.View
    public final void onConfigurationChanged(Configuration configuration) {
        C0883So c0883So = this;
        TextView textView = null;
        boolean z = false;
        float f = 0.0f;
        TextView textView2 = null;
        float f2 = 0.0f;
        super.onConfigurationChanged(configuration);
        char c = c0883So.A00 ? (char) 2 : '\t';
        while (true) {
            switch (c) {
                case 2:
                    configuration = configuration;
                    if (configuration.orientation != 2) {
                        c = '\f';
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
                    c0883So = c0883So;
                    textView = c0883So.A03;
                    if (!z) {
                        c = 11;
                        break;
                    } else {
                        c = 5;
                        break;
                    }
                case 5:
                    f = 18.0f;
                    c = 6;
                    break;
                case 6:
                    c0883So = c0883So;
                    textView = textView;
                    textView.setTextSize(f);
                    textView2 = c0883So.A01;
                    if (!z) {
                        c = '\n';
                        break;
                    } else {
                        c = 7;
                        break;
                    }
                case 7:
                    f2 = 14.0f;
                    c = '\b';
                    break;
                case '\b':
                    textView2 = textView2;
                    textView2.setTextSize(f2);
                    c = '\t';
                    break;
                case '\t':
                    return;
                case '\n':
                    f2 = 16.0f;
                    c = '\b';
                    break;
                case 11:
                    f = 22.0f;
                    c = 6;
                    break;
                case '\f':
                    z = false;
                    c = 4;
                    break;
            }
        }
    }

    public void setAlignment(int i) {
        this.A03.setGravity(i);
        this.A01.setGravity(i);
    }

    public void setDescriptionGravity(int i) {
        this.A01.setGravity(i);
    }

    public void setTitleGravity(int i) {
        this.A03.setGravity(i);
    }

    public void setUseNewLandscapeEndCard(boolean z) {
        this.A00 = z;
    }
}
