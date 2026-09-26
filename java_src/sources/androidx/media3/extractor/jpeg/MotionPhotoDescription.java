package androidx.media3.extractor.jpeg;

import androidx.annotation.Nullable;
import androidx.media3.extractor.metadata.mp4.MotionPhotoMetadata;
import java.util.List;

/* JADX INFO: loaded from: classes6.dex */
final class MotionPhotoDescription {
    public final List<ContainerItem> items;
    public final long photoPresentationTimestampUs;

    public static final class ContainerItem {
        public final long length;
        public final String mime;
        public final long padding;
        public final String semantic;

        public ContainerItem(String str, String str2, long j6, long j10) {
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
            ContainerItem containerItem = this.items.get(size);
            boolean zEquals = "video/mp4".equals(containerItem.mime) | z6;
            if (size == 0) {
                j11 -= containerItem.padding;
                j10 = 0;
            } else {
                j10 = j11 - containerItem.length;
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

    public MotionPhotoDescription(long j6, List<ContainerItem> list) {
        this.photoPresentationTimestampUs = j6;
        this.items = list;
    }
}
