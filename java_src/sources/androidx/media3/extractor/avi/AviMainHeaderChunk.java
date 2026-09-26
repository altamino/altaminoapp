package androidx.media3.extractor.avi;

import androidx.media3.common.util.ParsableByteArray;

/* JADX INFO: loaded from: classes6.dex */
final class AviMainHeaderChunk implements AviChunk {
    private static final int AVIF_HAS_INDEX = 16;
    public final int flags;
    public final int frameDurationUs;
    public final int streams;
    public final int totalFrames;

    public boolean a() {
        return (this.flags & 16) == 16;
    }

    @Override // androidx.media3.extractor.avi.AviChunk
    public int getType() {
        return 1751742049;
    }

    private AviMainHeaderChunk(int i10, int i11, int i12, int i13) {
        this.frameDurationUs = i10;
        this.flags = i11;
        this.totalFrames = i12;
        this.streams = i13;
    }

    public static AviMainHeaderChunk b(ParsableByteArray parsableByteArray) {
        int iU = parsableByteArray.u();
        parsableByteArray.V(8);
        int iU2 = parsableByteArray.u();
        int iU3 = parsableByteArray.u();
        parsableByteArray.V(4);
        int iU4 = parsableByteArray.u();
        parsableByteArray.V(12);
        return new AviMainHeaderChunk(iU, iU2, iU3, iU4);
    }
}
