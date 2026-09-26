package androidx.media3.exoplayer.dash.manifest;

import android.net.Uri;
import androidx.annotation.Nullable;
import androidx.media3.common.util.UnstableApi;
import androidx.media3.common.util.UriUtil;

/* JADX INFO: loaded from: classes7.dex */
@UnstableApi
public final class RangedUri {
    private int hashCode;
    public final long length;
    private final String referenceUri;
    public final long start;

    public boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || RangedUri.class != obj.getClass()) {
            return false;
        }
        RangedUri rangedUri = (RangedUri) obj;
        return this.start == rangedUri.start && this.length == rangedUri.length && this.referenceUri.equals(rangedUri.referenceUri);
    }

    public Uri b(String str) {
        return UriUtil.e(str, this.referenceUri);
    }

    public String c(String str) {
        return UriUtil.d(str, this.referenceUri);
    }

    public int hashCode() {
        if (this.hashCode == 0) {
            this.hashCode = ((((527 + ((int) this.start)) * 31) + ((int) this.length)) * 31) + this.referenceUri.hashCode();
        }
        return this.hashCode;
    }

    public String toString() {
        return "RangedUri(referenceUri=" + this.referenceUri + ", start=" + this.start + ", length=" + this.length + ")";
    }

    public RangedUri(@Nullable String str, long j6, long j10) {
        this.referenceUri = str == null ? "" : str;
        this.start = j6;
        this.length = j10;
    }

    @Nullable
    public RangedUri a(@Nullable RangedUri rangedUri, String str) {
        String strC = c(str);
        if (rangedUri != null && strC.equals(rangedUri.c(str))) {
            long j6 = this.length;
            long j10 = -1;
            if (j6 != -1) {
                long j11 = this.start;
                if (j11 + j6 == rangedUri.start) {
                    long j12 = rangedUri.length;
                    if (j12 != -1) {
                        j10 = j6 + j12;
                    }
                    return new RangedUri(strC, j11, j10);
                }
            }
            long j13 = rangedUri.length;
            if (j13 != -1) {
                long j14 = rangedUri.start;
                if (j14 + j13 == this.start) {
                    if (j6 != -1) {
                        j10 = j13 + j6;
                    }
                    return new RangedUri(strC, j14, j10);
                }
            }
        }
        return null;
    }
}
