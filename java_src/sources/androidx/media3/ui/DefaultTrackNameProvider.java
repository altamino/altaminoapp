package androidx.media3.ui;

import android.content.res.Resources;
import android.text.TextUtils;
import androidx.media3.common.Format;
import androidx.media3.common.MimeTypes;
import androidx.media3.common.util.Assertions;
import androidx.media3.common.util.UnstableApi;
import androidx.media3.common.util.Util;
import java.util.Locale;

/* JADX INFO: loaded from: classes7.dex */
@UnstableApi
public class DefaultTrackNameProvider implements TrackNameProvider {
    private final Resources resources;

    private String j(String... strArr) {
        String string = "";
        for (String str : strArr) {
            if (str.length() > 0) {
                string = TextUtils.isEmpty(string) ? str : this.resources.getString(R.string.exo_item_list, string, str);
            }
        }
        return string;
    }

    private String b(Format format) {
        int i10 = format.channelCount;
        if (i10 == -1 || i10 < 1) {
            return "";
        }
        if (i10 == 1) {
            return this.resources.getString(R.string.exo_track_mono);
        }
        if (i10 == 2) {
            return this.resources.getString(R.string.exo_track_stereo);
        }
        if (i10 == 6 || i10 == 7) {
            return this.resources.getString(R.string.exo_track_surround_5_point_1);
        }
        return i10 != 8 ? this.resources.getString(R.string.exo_track_surround) : this.resources.getString(R.string.exo_track_surround_7_point_1);
    }

    private String c(Format format) {
        int i10 = format.bitrate;
        return i10 == -1 ? "" : this.resources.getString(R.string.exo_track_bitrate, Float.valueOf(i10 / 1000000.0f));
    }

    private String d(Format format) {
        return TextUtils.isEmpty(format.label) ? "" : format.label;
    }

    private String f(Format format) {
        String str = format.language;
        if (TextUtils.isEmpty(str) || "und".equals(str)) {
            return "";
        }
        Locale localeForLanguageTag = Util.SDK_INT >= 21 ? Locale.forLanguageTag(str) : new Locale(str);
        Locale localeS = Util.S();
        String displayName = localeForLanguageTag.getDisplayName(localeS);
        if (TextUtils.isEmpty(displayName)) {
            return "";
        }
        try {
            int iOffsetByCodePoints = displayName.offsetByCodePoints(0, 1);
            return displayName.substring(0, iOffsetByCodePoints).toUpperCase(localeS) + displayName.substring(iOffsetByCodePoints);
        } catch (IndexOutOfBoundsException unused) {
            return displayName;
        }
    }

    private String g(Format format) {
        int i10 = format.width;
        int i11 = format.height;
        return (i10 == -1 || i11 == -1) ? "" : this.resources.getString(R.string.exo_track_resolution, Integer.valueOf(i10), Integer.valueOf(i11));
    }

    private String h(Format format) {
        String string = (format.roleFlags & 2) != 0 ? this.resources.getString(R.string.exo_track_role_alternate) : "";
        if ((format.roleFlags & 4) != 0) {
            string = j(string, this.resources.getString(R.string.exo_track_role_supplementary));
        }
        if ((format.roleFlags & 8) != 0) {
            string = j(string, this.resources.getString(R.string.exo_track_role_commentary));
        }
        return (format.roleFlags & 1088) != 0 ? j(string, this.resources.getString(R.string.exo_track_role_closed_captions)) : string;
    }

    private static int i(Format format) {
        int iK = MimeTypes.k(format.sampleMimeType);
        if (iK != -1) {
            return iK;
        }
        if (MimeTypes.n(format.codecs) != null) {
            return 2;
        }
        if (MimeTypes.c(format.codecs) != null) {
            return 1;
        }
        if (format.width == -1 && format.height == -1) {
            return (format.channelCount == -1 && format.sampleRate == -1) ? -1 : 1;
        }
        return 2;
    }

    public DefaultTrackNameProvider(Resources resources) {
        this.resources = (Resources) Assertions.e(resources);
    }

    private String e(Format format) {
        String strJ = j(f(format), h(format));
        if (TextUtils.isEmpty(strJ)) {
            return d(format);
        }
        return strJ;
    }

    @Override // androidx.media3.ui.TrackNameProvider
    public String a(Format format) {
        String strE;
        int i10 = i(format);
        if (i10 == 2) {
            strE = j(h(format), g(format), c(format));
        } else if (i10 == 1) {
            strE = j(e(format), b(format), c(format));
        } else {
            strE = e(format);
        }
        if (strE.length() == 0) {
            return this.resources.getString(R.string.exo_track_unknown);
        }
        return strE;
    }
}
