package androidx.media3.extractor.ogg;

import androidx.media3.common.Format;
import androidx.media3.common.Metadata;
import androidx.media3.common.ParserException;
import androidx.media3.common.util.Assertions;
import androidx.media3.common.util.ParsableByteArray;
import androidx.media3.extractor.OpusUtil;
import androidx.media3.extractor.VorbisUtil;
import com.google.common.collect.a0;
import java.util.Arrays;
import java.util.List;
import org.apache.commons.compress.archivers.tar.TarConstants;

/* JADX INFO: loaded from: classes10.dex */
final class OpusReader extends StreamReader {
    private boolean firstCommentHeaderSeen;
    private static final byte[] OPUS_ID_HEADER_SIGNATURE = {79, 112, 117, 115, 72, 101, 97, 100};
    private static final byte[] OPUS_COMMENT_HEADER_SIGNATURE = {79, 112, 117, 115, 84, 97, TarConstants.LF_PAX_GLOBAL_EXTENDED_HEADER, 115};

    public static boolean o(ParsableByteArray parsableByteArray) {
        return n(parsableByteArray, OPUS_ID_HEADER_SIGNATURE);
    }

    @Override // androidx.media3.extractor.ogg.StreamReader
    protected boolean h(ParsableByteArray parsableByteArray, long j6, StreamReader.SetupData setupData) throws ParserException {
        if (n(parsableByteArray, OPUS_ID_HEADER_SIGNATURE)) {
            byte[] bArrCopyOf = Arrays.copyOf(parsableByteArray.e(), parsableByteArray.g());
            int iC = OpusUtil.c(bArrCopyOf);
            List<byte[]> listA = OpusUtil.a(bArrCopyOf);
            if (setupData.format != null) {
                return true;
            }
            setupData.format = new Format.Builder().g0("audio/opus").J(iC).h0(48000).V(listA).G();
            return true;
        }
        byte[] bArr = OPUS_COMMENT_HEADER_SIGNATURE;
        if (!n(parsableByteArray, bArr)) {
            Assertions.i(setupData.format);
            return false;
        }
        Assertions.i(setupData.format);
        if (this.firstCommentHeaderSeen) {
            return true;
        }
        this.firstCommentHeaderSeen = true;
        parsableByteArray.V(bArr.length);
        Metadata metadataC = VorbisUtil.c(a0.u(VorbisUtil.i(parsableByteArray, false, false).comments));
        if (metadataC == null) {
            return true;
        }
        setupData.format = setupData.format.b().Z(metadataC.c(setupData.format.metadata)).G();
        return true;
    }

    OpusReader() {
    }

    private static boolean n(ParsableByteArray parsableByteArray, byte[] bArr) {
        if (parsableByteArray.a() < bArr.length) {
            return false;
        }
        int iF = parsableByteArray.f();
        byte[] bArr2 = new byte[bArr.length];
        parsableByteArray.l(bArr2, 0, bArr.length);
        parsableByteArray.U(iF);
        return Arrays.equals(bArr2, bArr);
    }

    @Override // androidx.media3.extractor.ogg.StreamReader
    protected long f(ParsableByteArray parsableByteArray) {
        return c(OpusUtil.e(parsableByteArray.e()));
    }

    @Override // androidx.media3.extractor.ogg.StreamReader
    protected void l(boolean z6) {
        super.l(z6);
        if (z6) {
            this.firstCommentHeaderSeen = false;
        }
    }
}
