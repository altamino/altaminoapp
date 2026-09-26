package androidx.media3.extractor;

import androidx.annotation.Nullable;
import androidx.media3.common.util.ParsableByteArray;
import androidx.media3.common.util.UnstableApi;

/* JADX INFO: loaded from: classes11.dex */
@UnstableApi
public final class DolbyVisionConfig {
    public final String codecs;
    public final int level;
    public final int profile;

    @Nullable
    public static DolbyVisionConfig a(ParsableByteArray parsableByteArray) {
        String str;
        parsableByteArray.V(2);
        int iH = parsableByteArray.H();
        int i10 = iH >> 1;
        int iH2 = ((parsableByteArray.H() >> 3) & 31) | ((iH & 1) << 5);
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
        sb.append(iH2 >= 10 ? "." : ".0");
        sb.append(iH2);
        return new DolbyVisionConfig(i10, iH2, sb.toString());
    }

    private DolbyVisionConfig(int i10, int i11, String str) {
        this.profile = i10;
        this.level = i11;
        this.codecs = str;
    }
}
