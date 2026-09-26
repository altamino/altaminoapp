package androidx.media3.extractor.text.dvb;

import androidx.media3.common.util.ParsableByteArray;
import androidx.media3.common.util.UnstableApi;
import androidx.media3.extractor.text.SimpleSubtitleDecoder;
import androidx.media3.extractor.text.Subtitle;
import java.util.List;

/* JADX INFO: loaded from: classes9.dex */
@UnstableApi
public final class DvbDecoder extends SimpleSubtitleDecoder {
    private final DvbParser parser;

    public DvbDecoder(List<byte[]> list) {
        super("DvbDecoder");
        ParsableByteArray parsableByteArray = new ParsableByteArray(list.get(0));
        this.parser = new DvbParser(parsableByteArray.N(), parsableByteArray.N());
    }

    @Override // androidx.media3.extractor.text.SimpleSubtitleDecoder
    protected Subtitle v(byte[] bArr, int i10, boolean z6) {
        if (z6) {
            this.parser.r();
        }
        return new DvbSubtitle(this.parser.b(bArr, i10));
    }
}
