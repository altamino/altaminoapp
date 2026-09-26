package com.google.android.exoplayer2.decoder;

import androidx.annotation.Nullable;
import com.google.android.exoplayer2.a2;

/* JADX INFO: loaded from: classes10.dex */
public final class i {
    public static final int DISCARD_REASON_APP_OVERRIDE = 4;
    public static final int DISCARD_REASON_AUDIO_CHANNEL_COUNT_CHANGED = 4096;
    public static final int DISCARD_REASON_AUDIO_ENCODING_CHANGED = 16384;
    public static final int DISCARD_REASON_AUDIO_SAMPLE_RATE_CHANGED = 8192;
    public static final int DISCARD_REASON_DRM_SESSION_CHANGED = 128;
    public static final int DISCARD_REASON_INITIALIZATION_DATA_CHANGED = 32;
    public static final int DISCARD_REASON_MAX_INPUT_SIZE_EXCEEDED = 64;
    public static final int DISCARD_REASON_MIME_TYPE_CHANGED = 8;
    public static final int DISCARD_REASON_OPERATING_RATE_CHANGED = 16;
    public static final int DISCARD_REASON_REUSE_NOT_IMPLEMENTED = 1;
    public static final int DISCARD_REASON_VIDEO_COLOR_INFO_CHANGED = 2048;
    public static final int DISCARD_REASON_VIDEO_MAX_RESOLUTION_EXCEEDED = 256;
    public static final int DISCARD_REASON_VIDEO_RESOLUTION_CHANGED = 512;
    public static final int DISCARD_REASON_VIDEO_ROTATION_CHANGED = 1024;
    public static final int DISCARD_REASON_WORKAROUND = 2;
    public static final int REUSE_RESULT_NO = 0;
    public static final int REUSE_RESULT_YES_WITHOUT_RECONFIGURATION = 3;
    public static final int REUSE_RESULT_YES_WITH_FLUSH = 1;
    public static final int REUSE_RESULT_YES_WITH_RECONFIGURATION = 2;
    public final String decoderName;
    public final int discardReasons;
    public final a2 newFormat;
    public final a2 oldFormat;
    public final int result;

    public boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || i.class != obj.getClass()) {
            return false;
        }
        i iVar = (i) obj;
        return this.result == iVar.result && this.discardReasons == iVar.discardReasons && this.decoderName.equals(iVar.decoderName) && this.oldFormat.equals(iVar.oldFormat) && this.newFormat.equals(iVar.newFormat);
    }

    public int hashCode() {
        return ((((((((527 + this.result) * 31) + this.discardReasons) * 31) + this.decoderName.hashCode()) * 31) + this.oldFormat.hashCode()) * 31) + this.newFormat.hashCode();
    }

    public i(String str, a2 a2Var, a2 a2Var2, int i10, int i11) {
        boolean z6;
        if (i10 != 0 && i11 != 0) {
            z6 = false;
        } else {
            z6 = true;
        }
        com.google.android.exoplayer2.util.a.a(z6);
        this.decoderName = com.google.android.exoplayer2.util.a.d(str);
        this.oldFormat = (a2) com.google.android.exoplayer2.util.a.e(a2Var);
        this.newFormat = (a2) com.google.android.exoplayer2.util.a.e(a2Var2);
        this.result = i10;
        this.discardReasons = i11;
    }
}
