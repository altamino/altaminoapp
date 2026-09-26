package androidx.media3.extractor.avi;

import androidx.media3.common.util.ParsableByteArray;

/* JADX INFO: loaded from: classes10.dex */
final class StreamNameChunk implements AviChunk {
    public final String name;

    @Override // androidx.media3.extractor.avi.AviChunk
    public int getType() {
        return 1852994675;
    }

    public static StreamNameChunk a(ParsableByteArray parsableByteArray) {
        return new StreamNameChunk(parsableByteArray.E(parsableByteArray.a()));
    }

    private StreamNameChunk(String str) {
        this.name = str;
    }
}
