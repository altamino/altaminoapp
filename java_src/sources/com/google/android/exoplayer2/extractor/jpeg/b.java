package com.google.android.exoplayer2.extractor.jpeg;

import androidx.annotation.Nullable;
import com.google.android.exoplayer2.metadata.mp4.MotionPhotoMetadata;
import java.util.List;

/* JADX INFO: loaded from: classes6.dex */
final class b {
    public final List<a> items;
    public final long photoPresentationTimestampUs;

    public static final class a {
        public final long length;
        public final String mime;
        public final long padding;
        public final String semantic;

        public a(String str, String str2, long j6, long j10) {
            this.mime = str;
            this.semantic = str2;
            this.length = j6;
            this.padding = j10;
        }
    }

    @Nullable
    public MotionPhotoMetadata a(long j6) {
        long j10;
        if (this.items.size() < 2) {
            return null;
        }
        long j11 = j6;
        long j12 = -1;
        long j13 = -1;
        long j14 = -1;
        long j15 = -1;
        boolean z6 = false;
        for (int size = this.items.size() - 1; size >= 0; size--) {
            a aVar = this.items.get(size);
            boolean zEquals = "video/mp4".equals(aVar.mime) | z6;
            if (size == 0) {
                j11 -= aVar.padding;
                j10 = 0;
            } else {
                j10 = j11 - aVar.length;
            }
            long j16 = j11;
            j11 = j10;
            if (!zEquals || j11 == j16) {
                z6 = zEquals;
            } else {
                j15 = j16 - j11;
                j14 = j11;
                z6 = false;
            }
            if (size == 0) {
                j12 = j11;
                j13 = j16;
            }
        }
        if (j14 == -1 || j15 == -1 || j12 == -1 || j13 == -1) {
            return null;
        }
        return new MotionPhotoMetadata(j12, j13, this.photoPresentationTimestampUs, j14, j15);
    }

    public b(long j6, List<a> list) {
        this.photoPresentationTimestampUs = j6;
        this.items = list;
    }
}
