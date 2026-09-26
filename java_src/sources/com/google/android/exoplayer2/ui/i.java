package com.google.android.exoplayer2.ui;

import android.content.res.Resources;
import android.text.TextUtils;
import com.google.android.exoplayer2.a2;
import java.util.Locale;

/* JADX INFO: loaded from: classes2.dex */
public class i implements c1 {
    private final Resources resources;

    private String j(String... strArr) {
        String string = "";
        for (String str : strArr) {
            if (str.length() > 0) {
                string = TextUtils.isEmpty(string) ? str : this.resources.getString(t.exo_item_list, string, str);
            }
        }
        return string;
    }

    private String b(a2 a2Var) {
        int i10 = a2Var.channelCount;
        if (i10 == -1 || i10 < 1) {
            return "";
        }
        if (i10 == 1) {
            return this.resources.getString(t.exo_track_mono);
        }
        if (i10 == 2) {
            return this.resources.getString(t.exo_track_stereo);
        }
        if (i10 == 6 || i10 == 7) {
            return this.resources.getString(t.exo_track_surround_5_point_1);
        }
        return i10 != 8 ? this.resources.getString(t.exo_track_surround) : this.resources.getString(t.exo_track_surround_7_point_1);
    }

    private String c(a2 a2Var) {
        int i10 = a2Var.bitrate;
        return i10 == -1 ? "" : this.resources.getString(t.exo_track_bitrate, Float.valueOf(i10 / 1000000.0f));
    }

    private String d(a2 a2Var) {
        return TextUtils.isEmpty(a2Var.label) ? "" : a2Var.label;
    }

    private String f(a2 a2Var) {
        String str = a2Var.language;
        if (TextUtils.isEmpty(str) || "und".equals(str)) {
            return "";
        }
        Locale localeForLanguageTag = com.google.android.exoplayer2.util.o0.SDK_INT >= 21 ? Locale.forLanguageTag(str) : new Locale(str);
        Locale localeL = com.google.android.exoplayer2.util.o0.L();
        String displayName = localeForLanguageTag.getDisplayName(localeL);
        if (TextUtils.isEmpty(displayName)) {
            return "";
        }
        try {
            int iOffsetByCodePoints = displayName.offsetByCodePoints(0, 1);
            return displayName.substring(0, iOffsetByCodePoints).toUpperCase(localeL) + displayName.substring(iOffsetByCodePoints);
        } catch (IndexOutOfBoundsException unused) {
            return displayName;
        }
    }

    private String g(a2 a2Var) {
        int i10 = a2Var.width;
        int i11 = a2Var.height;
        return (i10 == -1 || i11 == -1) ? "" : this.resources.getString(t.exo_track_resolution, Integer.valueOf(i10), Integer.valueOf(i11));
    }

    private String h(a2 a2Var) {
        String string = (a2Var.roleFlags & 2) != 0 ? this.resources.getString(t.exo_track_role_alternate) : "";
        if ((a2Var.roleFlags & 4) != 0) {
            string = j(string, this.resources.getString(t.exo_track_role_supplementary));
        }
        if ((a2Var.roleFlags & 8) != 0) {
            string = j(string, this.resources.getString(t.exo_track_role_commentary));
        }
        return (a2Var.roleFlags & 1088) != 0 ? j(string, this.resources.getString(t.exo_track_role_closed_captions)) : string;
    }

    private static int i(a2 a2Var) {
        int i10 = com.google.android.exoplayer2.util.x.i(a2Var.sampleMimeType);
        if (i10 != -1) {
            return i10;
        }
        if (com.google.android.exoplayer2.util.x.k(a2Var.codecs) != null) {
            return 2;
        }
        if (com.google.android.exoplayer2.util.x.b(a2Var.codecs) != null) {
            return 1;
        }
        if (a2Var.width == -1 && a2Var.height == -1) {
            return (a2Var.channelCount == -1 && a2Var.sampleRate == -1) ? -1 : 1;
        }
        return 2;
    }

    public i(Resources resources) {
        this.resources = (Resources) com.google.android.exoplayer2.util.a.e(resources);
    }

    private String e(a2 a2Var) {
        String strJ = j(f(a2Var), h(a2Var));
        if (TextUtils.isEmpty(strJ)) {
            return d(a2Var);
        }
        return strJ;
    }

    @Override // com.google.android.exoplayer2.ui.c1
    public String a(a2 a2Var) {
        String strE;
        int i10 = i(a2Var);
        if (i10 == 2) {
            strE = j(h(a2Var), g(a2Var), c(a2Var));
        } else if (i10 == 1) {
            strE = j(e(a2Var), b(a2Var), c(a2Var));
        } else {
            strE = e(a2Var);
        }
        if (strE.length() == 0) {
            return this.resources.getString(t.exo_track_unknown);
        }
        return strE;
    }
}
