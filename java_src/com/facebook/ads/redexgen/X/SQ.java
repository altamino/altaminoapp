package com.facebook.ads.redexgen.X;

import android.support.annotation.Nullable;
import android.text.TextUtils;
import android.util.SparseBooleanArray;
import android.view.ViewGroup;

/* JADX WARN: Classes with same name are omitted:
  assets.dex
  assets/audience_network.dex
 */
/* loaded from: assets/assets/audience_network.dex */
public final class SQ extends C8G {
    private AbstractC02052b A00;
    private C6K A01;

    @Nullable
    private C6K A02;
    private final int A03;
    private final int A04;
    private final int A05;
    private final int A06;
    private final SparseBooleanArray A07;
    private final TT A08;

    public SQ(TT tt, SparseBooleanArray sparseBooleanArray, C6K c6k, int i, int i2, int i3, int i4) {
        super(tt);
        this.A08 = tt;
        this.A07 = sparseBooleanArray;
        this.A01 = c6k;
        this.A03 = i;
        this.A04 = i2;
        this.A05 = i3;
        this.A06 = i4;
    }

    private void A07(KM km, OP op, String str, UB ub) {
        UB ub2 = ub;
        String str2 = str;
        OP op2 = op;
        KM km2 = km;
        SQ sq = this;
        char c = sq.A07.get(ub2.A02()) ? (char) 2 : (char) 3;
        while (true) {
            switch (c) {
                case 2:
                    return;
                case 3:
                    sq = sq;
                    if (sq.A02 == null) {
                        c = 5;
                        break;
                    } else {
                        c = 4;
                        break;
                    }
                case 4:
                    sq = sq;
                    sq.A02.A0U();
                    sq.A02 = null;
                    c = 5;
                    break;
                case 5:
                    sq = sq;
                    km2 = km2;
                    op2 = op2;
                    str2 = str2;
                    ub2 = ub2;
                    sq.A00 = new TR(sq, str2, ub2, km2, ub2.A04(), op2);
                    sq.A02 = new C6K(sq.A08, 10, sq.A00);
                    sq.A02.A0V(100);
                    sq.A02.A0W(100);
                    sq.A08.setOnAssetsLoadedListener(new SR(sq, ub2));
                    c = 2;
                    break;
            }
        }
    }

    public final void A0l(UB ub, KM km, C0607Ht c0607Ht, OP op, String videoUrl) {
        UB ub2 = ub;
        C0607Ht c0607Ht2 = c0607Ht;
        SQ sq = this;
        int i = 0;
        String strA07 = null;
        int i2 = 0;
        TT tt = null;
        String strA06 = null;
        boolean z = false;
        int iA02 = ub2.A02();
        sq.A08.setTag(-1593835536, Integer.valueOf(iA02));
        ViewGroup.MarginLayoutParams marginLayoutParams = new ViewGroup.MarginLayoutParams(sq.A03, -2);
        char c = iA02 == 0 ? (char) 2 : '\f';
        while (true) {
            switch (c) {
                case 2:
                    sq = sq;
                    i2 = sq.A04;
                    c = 3;
                    break;
                case 3:
                    sq = sq;
                    if (iA02 < sq.A06 - 1) {
                        c = 11;
                        break;
                    } else {
                        c = 4;
                        break;
                    }
                case 4:
                    sq = sq;
                    i = sq.A04;
                    c = 5;
                    break;
                case 5:
                    sq = sq;
                    ub2 = ub2;
                    marginLayoutParams = marginLayoutParams;
                    z = false;
                    marginLayoutParams.setMargins(i2, 0, i, 0);
                    strA06 = ub2.A03().A03().A06();
                    strA07 = ub2.A03().A03().A07();
                    tt = sq.A08;
                    if (!TextUtils.isEmpty(strA07)) {
                        c = 6;
                        break;
                    } else {
                        c = 7;
                        break;
                    }
                case 6:
                    z = true;
                    c = 7;
                    break;
                case 7:
                    sq = sq;
                    tt = tt;
                    tt.setIsVideo(z);
                    if (!sq.A08.A0f()) {
                        c = '\n';
                        break;
                    } else {
                        c = '\b';
                        break;
                    }
                case '\b':
                    sq = sq;
                    c0607Ht2 = c0607Ht2;
                    strA06 = strA06;
                    strA07 = strA07;
                    sq.A08.setVideoPlaceholderUrl(strA06);
                    sq.A08.setVideoUrl(c0607Ht2.A0Q(strA07));
                    c = '\t';
                    break;
                case '\t':
                    SQ sq2 = sq;
                    UB ub3 = ub2;
                    sq2.A08.setLayoutParams(marginLayoutParams);
                    sq2.A08.setAdTitleAndDescription(ub3.A03().A04().A08(), ub3.A03().A04().A02());
                    sq2.A08.setCTAInfo(ub3.A03().A05(), ub3.A04());
                    sq2.A08.A0d(ub3.A04());
                    sq2.A07(km, op, videoUrl, ub3);
                    return;
                case '\n':
                    sq = sq;
                    strA06 = strA06;
                    sq.A08.setImageUrl(strA06);
                    c = '\t';
                    break;
                case 11:
                    sq = sq;
                    i = sq.A05;
                    c = 5;
                    break;
                case '\f':
                    sq = sq;
                    i2 = sq.A05;
                    c = 3;
                    break;
            }
        }
    }
}
