package com.facebook.ads.redexgen.X;

import android.content.Context;
import android.support.annotation.Nullable;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.TextView;
import com.facebook.ads.AdOptionsView;
import com.facebook.ads.MediaView;
import com.facebook.ads.NativeAd;
import java.util.ArrayList;

/* JADX WARN: Classes with same name are omitted:
  assets.dex
  assets/audience_network.dex
 */
/* renamed from: com.facebook.ads.redexgen.X.Np, reason: case insensitive filesystem */
/* loaded from: assets/assets/audience_network.dex */
public final class C0754Np extends FrameLayout implements InterfaceC0671Kg {

    @Nullable
    private TextView A00;

    @Nullable
    private TextView A01;

    @Nullable
    private TextView A02;

    @Nullable
    private TextView A03;
    private final MediaView A04;
    private final NativeAd A05;
    private final C0752Nn A06;
    private final ArrayList<View> A07;
    private static final int A0D = (int) (OY.A01 * 6.0f);
    private static final int A0C = (int) (OY.A01 * 8.0f);
    private static final int A0B = (int) (OY.A01 * 12.0f);
    private static final int A09 = (int) (OY.A01 * 350.0f);
    private static final int A08 = (int) (OY.A01 * 250.0f);
    private static final int A0A = (int) (OY.A01 * 175.0f);

    public C0754Np(Context context, NativeAd nativeAd, LI li, LJ lj, C0837Qu c0837Qu, MediaView mediaView, AdOptionsView adOptionsView) {
        super(context);
        this.A07 = new ArrayList<>();
        this.A05 = nativeAd;
        this.A04 = mediaView;
        this.A06 = new C0752Nn(context, this.A05, li, c0837Qu, adOptionsView);
        this.A06.setPadding(A0B, A0B, A0B, A0D);
        addView(this.A06, new FrameLayout.LayoutParams(-1, -2));
        if (lj == LJ.A09 || lj == LJ.A0B) {
            A07(li);
        }
        addView((View) this.A04, (ViewGroup.LayoutParams) new FrameLayout.LayoutParams(-1, -2));
        if (lj != LJ.A0B || this.A05.getAdCreativeType() != NativeAd.AdCreativeType.CAROUSEL) {
            A06(li);
            A04(li);
            A05(li);
        }
        this.A07.add(c0837Qu);
        this.A07.add(mediaView);
    }

    private int A00() {
        C0754Np c0754Np = this;
        int linkDescHeight = 0;
        int subtitleHeight = 0;
        int titleHeight = 0;
        int measuredHeight = 0;
        char c = c0754Np.A03 != null ? (char) 2 : (char) 17;
        while (true) {
            switch (c) {
                case 2:
                    c0754Np = c0754Np;
                    if (c0754Np.A03.getVisibility() != 0) {
                        c = 17;
                        break;
                    } else {
                        c = 3;
                        break;
                    }
                case 3:
                    c0754Np = c0754Np;
                    subtitleHeight = c0754Np.A03.getMeasuredHeight();
                    c = 4;
                    break;
                case 4:
                    c0754Np = c0754Np;
                    if (c0754Np.A02 == null) {
                        c = 16;
                        break;
                    } else {
                        c = 5;
                        break;
                    }
                case 5:
                    c0754Np = c0754Np;
                    if (c0754Np.A02.getVisibility() != 0) {
                        c = 16;
                        break;
                    } else {
                        c = 6;
                        break;
                    }
                case 6:
                    c0754Np = c0754Np;
                    titleHeight = c0754Np.A02.getMeasuredHeight();
                    c = 7;
                    break;
                case 7:
                    c0754Np = c0754Np;
                    if (c0754Np.A00 == null) {
                        c = 15;
                        break;
                    } else {
                        c = '\b';
                        break;
                    }
                case '\b':
                    c0754Np = c0754Np;
                    if (c0754Np.A00.getVisibility() != 0) {
                        c = 15;
                        break;
                    } else {
                        c = '\t';
                        break;
                    }
                case '\t':
                    c0754Np = c0754Np;
                    measuredHeight = c0754Np.A00.getMeasuredHeight();
                    c = '\n';
                    break;
                case '\n':
                    c0754Np = c0754Np;
                    if (c0754Np.A01 == null) {
                        c = 14;
                        break;
                    } else {
                        c = 11;
                        break;
                    }
                case 11:
                    c0754Np = c0754Np;
                    if (c0754Np.A01.getVisibility() != 0) {
                        c = 14;
                        break;
                    } else {
                        c = '\f';
                        break;
                    }
                case '\f':
                    c0754Np = c0754Np;
                    linkDescHeight = c0754Np.A01.getMeasuredHeight() + A0B + A0C;
                    c = '\r';
                    break;
                case '\r':
                    C0754Np c0754Np2 = c0754Np;
                    return ((((c0754Np2.getMeasuredHeight() - c0754Np2.A06.getMeasuredHeight()) - subtitleHeight) - titleHeight) - measuredHeight) - linkDescHeight;
                case 14:
                    linkDescHeight = 0;
                    c = '\r';
                    break;
                case 15:
                    measuredHeight = 0;
                    c = '\n';
                    break;
                case 16:
                    titleHeight = 0;
                    c = 7;
                    break;
                case 17:
                    subtitleHeight = 0;
                    c = 4;
                    break;
            }
        }
    }

    private void A01() {
        C0754Np c0754Np = this;
        char c = c0754Np.A03 != null ? (char) 2 : (char) 3;
        while (true) {
            switch (c) {
                case 2:
                    c0754Np = c0754Np;
                    c0754Np.A03.setLines(1);
                    c = 3;
                    break;
                case 3:
                    c0754Np = c0754Np;
                    if (c0754Np.A02 == null) {
                        c = 5;
                        break;
                    } else {
                        c = 4;
                        break;
                    }
                case 4:
                    c0754Np = c0754Np;
                    c0754Np.A02.setLines(1);
                    c = 5;
                    break;
                case 5:
                    c0754Np = c0754Np;
                    if (c0754Np.A00 == null) {
                        c = 7;
                        break;
                    } else {
                        c = 6;
                        break;
                    }
                case 6:
                    c0754Np = c0754Np;
                    c0754Np.A00.setLines(1);
                    c = 7;
                    break;
                case 7:
                    return;
            }
        }
    }

    private void A02(int i) {
        C0754Np c0754Np = this;
        int i2 = 0;
        TextView textView = null;
        int i3 = 0;
        TextView textView2 = null;
        int i4 = 0;
        MediaView mediaView = c0754Np.A04;
        char c = i > A0A ? (char) 2 : '\t';
        while (true) {
            switch (c) {
                case 2:
                    i4 = 0;
                    i2 = 0;
                    c = 3;
                    break;
                case 3:
                    c0754Np = c0754Np;
                    mediaView = mediaView;
                    OY.A0Q(mediaView, i2);
                    textView = c0754Np.A03;
                    if (i <= A09) {
                        c = '\b';
                        break;
                    } else {
                        c = 4;
                        break;
                    }
                case 4:
                    i4 = 0;
                    i3 = 0;
                    c = 5;
                    break;
                case 5:
                    c0754Np = c0754Np;
                    textView = textView;
                    OY.A0Q(textView, i3);
                    textView2 = c0754Np.A00;
                    if (i <= A08) {
                        c = 7;
                        break;
                    } else {
                        c = 6;
                        break;
                    }
                case 6:
                    OY.A0Q(textView2, i4);
                    return;
                case 7:
                    i4 = 8;
                    c = 6;
                    break;
                case '\b':
                    i3 = 8;
                    c = 5;
                    break;
                case '\t':
                    i2 = 8;
                    c = 3;
                    break;
            }
        }
    }

    private static void A03(int extraLines, int heightMeasureSpec, TextView... textViewArr) {
        TextView textView = null;
        int length = textViewArr.length;
        int i = 0;
        char c = 2;
        while (true) {
            switch (c) {
                case 2:
                    if (i >= length) {
                        c = 7;
                        break;
                    } else {
                        c = 3;
                        break;
                    }
                case 3:
                    textViewArr = textViewArr;
                    textView = textViewArr[i];
                    if (textView == null) {
                        c = 6;
                        break;
                    } else {
                        c = 4;
                        break;
                    }
                case 4:
                    textView = textView;
                    if (textView.getVisibility() != 0) {
                        c = 6;
                        break;
                    } else {
                        c = 5;
                        break;
                    }
                case 5:
                    textView = textView;
                    int iA05 = OY.A05(textView, heightMeasureSpec);
                    textView.setLines(iA05 + 1);
                    textView.measure(extraLines, View.MeasureSpec.makeMeasureSpec(textView.getMeasuredHeight() + (textView.getLineHeight() * iA05), 1073741824));
                    heightMeasureSpec -= textView.getLineHeight() * iA05;
                    c = 6;
                    break;
                case 6:
                    i++;
                    c = 2;
                    break;
                case 7:
                    return;
            }
        }
    }

    private void A04(LI li) {
        C0754Np c0754Np = this;
        char c = c0754Np.A05.getAdBodyText() != null ? (char) 2 : (char) 4;
        while (true) {
            switch (c) {
                case 2:
                    c0754Np = c0754Np;
                    if (!c0754Np.A05.getAdBodyText().trim().isEmpty()) {
                        c = 3;
                        break;
                    } else {
                        c = 4;
                        break;
                    }
                case 3:
                    c0754Np = c0754Np;
                    li = li;
                    c0754Np.A00 = new TextView(c0754Np.getContext());
                    li.A06(c0754Np.A00);
                    c0754Np.A00.setText(c0754Np.A05.getAdBodyText());
                    c0754Np.A00.setPadding(A0B, 0, A0B, 0);
                    c0754Np.addView(c0754Np.A00, new FrameLayout.LayoutParams(-1, -2));
                    c = 4;
                    break;
                case 4:
                    return;
            }
        }
    }

    private void A05(LI li) {
        if (this.A05.hasCallToAction()) {
            this.A01 = new TextView(getContext());
            OY.A0N(this.A01);
            li.A05(this.A01);
            this.A01.setText(this.A05.getAdCallToAction());
            this.A01.setPadding(A0C, A0C, A0C, A0C);
            FrameLayout.LayoutParams layoutParams = new FrameLayout.LayoutParams(-1, -2);
            layoutParams.setMargins(A0C, 0, A0C, 0);
            addView(this.A01, layoutParams);
            this.A07.add(this.A01);
        }
    }

    private void A06(LI li) {
        C0754Np c0754Np = this;
        char c = c0754Np.A05.getAdHeadline() != null ? (char) 2 : (char) 4;
        while (true) {
            switch (c) {
                case 2:
                    c0754Np = c0754Np;
                    if (!c0754Np.A05.getAdHeadline().trim().isEmpty()) {
                        c = 3;
                        break;
                    } else {
                        c = 4;
                        break;
                    }
                case 3:
                    c0754Np = c0754Np;
                    li = li;
                    c0754Np.A02 = new TextView(c0754Np.getContext());
                    li.A07(c0754Np.A02);
                    c0754Np.A02.setText(c0754Np.A05.getAdHeadline());
                    c0754Np.A02.setPadding(A0B, A0C, A0B, 0);
                    c0754Np.addView(c0754Np.A02, new FrameLayout.LayoutParams(-1, -2));
                    c = 4;
                    break;
                case 4:
                    return;
            }
        }
    }

    private void A07(LI li) {
        C0754Np c0754Np = this;
        char c = c0754Np.A05.getAdLinkDescription() != null ? (char) 2 : (char) 4;
        while (true) {
            switch (c) {
                case 2:
                    c0754Np = c0754Np;
                    if (!c0754Np.A05.getAdLinkDescription().trim().isEmpty()) {
                        c = 3;
                        break;
                    } else {
                        c = 4;
                        break;
                    }
                case 3:
                    c0754Np = c0754Np;
                    li = li;
                    c0754Np.A03 = new TextView(c0754Np.getContext());
                    li.A06(c0754Np.A03);
                    c0754Np.A03.setText(c0754Np.A05.getAdLinkDescription());
                    c0754Np.A03.setPadding(A0B, 0, A0B, A0C);
                    c0754Np.addView(c0754Np.A03, new FrameLayout.LayoutParams(-1, -2));
                    c = 4;
                    break;
                case 4:
                    return;
            }
        }
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC0671Kg
    public View getView() {
        return this;
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC0671Kg
    public ArrayList<View> getViewsForInteraction() {
        return this.A07;
    }

    @Override // android.widget.FrameLayout, android.view.ViewGroup, android.view.View
    public final void onLayout(boolean z, int i, int i2, int i3, int i4) {
        C0754Np c0754Np = this;
        int measuredHeight = 0;
        c0754Np.A06.layout(i, i2, i3, c0754Np.A06.getMeasuredHeight() + i2);
        int measuredHeight2 = i2 + c0754Np.A06.getMeasuredHeight();
        char c = c0754Np.A03 != null ? (char) 2 : (char) 4;
        while (true) {
            switch (c) {
                case 2:
                    c0754Np = c0754Np;
                    if (c0754Np.A03.getVisibility() != 0) {
                        c = 4;
                        break;
                    } else {
                        c = 3;
                        break;
                    }
                case 3:
                    c0754Np = c0754Np;
                    int measuredHeight3 = c0754Np.A03.getMeasuredHeight();
                    c0754Np.A03.layout(i, measuredHeight2, i3, measuredHeight2 + measuredHeight3);
                    measuredHeight2 += measuredHeight3;
                    c = 4;
                    break;
                case 4:
                    c0754Np = c0754Np;
                    c0754Np.A04.layout(i, measuredHeight2, i3, c0754Np.A04.getMeasuredHeight() + measuredHeight2);
                    measuredHeight = measuredHeight2 + c0754Np.A04.getMeasuredHeight();
                    if (c0754Np.A02 == null) {
                        c = 6;
                        break;
                    } else {
                        c = 5;
                        break;
                    }
                case 5:
                    c0754Np = c0754Np;
                    c0754Np.A02.layout(i, measuredHeight, i3, c0754Np.A02.getMeasuredHeight() + measuredHeight);
                    measuredHeight += c0754Np.A02.getMeasuredHeight();
                    c = 6;
                    break;
                case 6:
                    c0754Np = c0754Np;
                    if (c0754Np.A00 == null) {
                        c = '\t';
                        break;
                    } else {
                        c = 7;
                        break;
                    }
                case 7:
                    c0754Np = c0754Np;
                    if (c0754Np.A00.getVisibility() != 0) {
                        c = '\t';
                        break;
                    } else {
                        c = '\b';
                        break;
                    }
                case '\b':
                    c0754Np = c0754Np;
                    c0754Np.A00.layout(i, measuredHeight, i3, c0754Np.A00.getMeasuredHeight() + measuredHeight);
                    c = '\t';
                    break;
                case '\t':
                    c0754Np = c0754Np;
                    if (c0754Np.A01 == null) {
                        c = 11;
                        break;
                    } else {
                        c = '\n';
                        break;
                    }
                case '\n':
                    c0754Np = c0754Np;
                    c0754Np.A01.layout(A0B + i, (i4 - c0754Np.A01.getMeasuredHeight()) - A0B, i3 - A0B, i4 - A0B);
                    c = 11;
                    break;
                case 11:
                    return;
            }
        }
    }

    @Override // android.widget.FrameLayout, android.view.View
    public final void onMeasure(int emptySpace, int i) {
        C0754Np c0754Np = this;
        int iMin = 0;
        c0754Np.A02(View.MeasureSpec.getSize(i));
        c0754Np.A01();
        super.onMeasure(emptySpace, i);
        int iA00 = c0754Np.A00();
        int requiredHeight = c0754Np.A04.getMediaWidth() != 0 ? 2 : 3;
        while (true) {
            switch (requiredHeight) {
                case 2:
                    c0754Np = c0754Np;
                    if (c0754Np.A04.getMediaHeight() != 0) {
                        requiredHeight = 7;
                        break;
                    } else {
                        requiredHeight = 3;
                        break;
                    }
                case 3:
                    iMin = iA00;
                    requiredHeight = 4;
                    break;
                case 4:
                    c0754Np = c0754Np;
                    c0754Np.A04.measure(emptySpace, View.MeasureSpec.makeMeasureSpec(iMin, 1073741824));
                    if (iMin >= iA00) {
                        requiredHeight = 6;
                        break;
                    } else {
                        requiredHeight = 5;
                        break;
                    }
                case 5:
                    c0754Np = c0754Np;
                    A03(emptySpace, iA00 - iMin, c0754Np.A02, c0754Np.A00, c0754Np.A03);
                    requiredHeight = 6;
                    break;
                case 6:
                    return;
                case 7:
                    c0754Np = c0754Np;
                    int requiredHeight2 = (int) (c0754Np.A04.getMeasuredWidth() * (c0754Np.A04.getMediaHeight() / c0754Np.A04.getMediaWidth()));
                    iMin = Math.min(requiredHeight2, iA00);
                    requiredHeight = 4;
                    break;
            }
        }
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC0671Kg
    public final void unregisterView() {
        this.A05.unregisterView();
    }
}
