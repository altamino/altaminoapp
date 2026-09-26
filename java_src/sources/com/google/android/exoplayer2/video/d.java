package com.google.android.exoplayer2.video;

import androidx.annotation.Nullable;
import com.google.android.exoplayer2.util.c0;

/* JADX INFO: loaded from: classes10.dex */
public final class d {
    public final String codecs;
    public final int level;
    public final int profile;

    @Nullable
    public static d a(c0 c0Var) {
        String str;
        c0Var.Q(2);
        int iD = c0Var.D();
        int i10 = iD >> 1;
        int iD2 = ((c0Var.D() >> 3) & 31) | ((iD & 1) << 5);
        if (i10 == 4 || i10 == 5 || i10 == 7) {
            str = "dvhe";
        } else if (i10 == 8) {
            str = "hev1";
        } else {
            if (i10 != 9) {
                return null;
            }
            str = "avc3";
        }
        StringBuilder sb = new StringBuilder();
        sb.append(str);
        sb.append(".0");
        sb.append(i10);
        sb.append(iD2 >= 10 ? "." : ".0");
        sb.append(iD2);
        return new d(i10, iD2, sb.toString());
    }

    private d(int i10, int i11, String str) {
        this.profile = i10;
        this.level = i11;
        this.codecs = str;
    }
}
