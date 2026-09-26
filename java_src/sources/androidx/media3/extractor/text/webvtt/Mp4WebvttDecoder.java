package androidx.media3.extractor.text.webvtt;

import androidx.media3.common.text.Cue;
import androidx.media3.common.util.ParsableByteArray;
import androidx.media3.common.util.UnstableApi;
import androidx.media3.common.util.Util;
import androidx.media3.extractor.text.SimpleSubtitleDecoder;
import androidx.media3.extractor.text.Subtitle;
import androidx.media3.extractor.text.SubtitleDecoderException;
import java.util.ArrayList;
import java.util.Collections;

/* JADX INFO: loaded from: classes4.dex */
@UnstableApi
public final class Mp4WebvttDecoder extends SimpleSubtitleDecoder {
    private static final int BOX_HEADER_SIZE = 8;
    private static final int TYPE_payl = 1885436268;
    private static final int TYPE_sttg = 1937011815;
    private static final int TYPE_vttc = 1987343459;
    private final ParsableByteArray sampleData;

    private static Cue x(ParsableByteArray parsableByteArray, int i10) throws SubtitleDecoderException {
        CharSequence charSequenceQ = null;
        Cue.Builder builderO = null;
        while (i10 > 0) {
            if (i10 < 8) {
                throw new SubtitleDecoderException("Incomplete vtt cue box header found.");
            }
            int iQ = parsableByteArray.q();
            int iQ2 = parsableByteArray.q();
            int i11 = iQ - 8;
            String strF = Util.F(parsableByteArray.e(), parsableByteArray.f(), i11);
            parsableByteArray.V(i11);
            i10 = (i10 - 8) - i11;
            if (iQ2 == TYPE_sttg) {
                builderO = WebvttCueParser.o(strF);
            } else if (iQ2 == TYPE_payl) {
                charSequenceQ = WebvttCueParser.q(null, strF.trim(), Collections.emptyList());
            }
        }
        if (charSequenceQ == null) {
            charSequenceQ = "";
        }
        return builderO != null ? builderO.o(charSequenceQ).a() : WebvttCueParser.l(charSequenceQ);
    }

    public Mp4WebvttDecoder() {
        super("Mp4WebvttDecoder");
        this.sampleData = new ParsableByteArray();
    }

    @Override // androidx.media3.extractor.text.SimpleSubtitleDecoder
    protected Subtitle v(byte[] bArr, int i10, boolean z6) throws SubtitleDecoderException {
        this.sampleData.S(bArr, i10);
        ArrayList arrayList = new ArrayList();
        while (this.sampleData.a() > 0) {
            if (this.sampleData.a() < 8) {
                throw new SubtitleDecoderException("Incomplete Mp4Webvtt Top Level box header found.");
            }
            int iQ = this.sampleData.q();
            if (this.sampleData.q() == TYPE_vttc) {
                arrayList.add(x(this.sampleData, iQ - 8));
            } else {
                this.sampleData.V(iQ - 8);
            }
        }
        return new Mp4WebvttSubtitle(arrayList);
    }
}
