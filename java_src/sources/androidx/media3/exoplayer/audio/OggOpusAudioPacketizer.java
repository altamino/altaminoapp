package androidx.media3.exoplayer.audio;

import androidx.annotation.Nullable;
import androidx.media3.common.audio.AudioProcessor;
import androidx.media3.common.util.Assertions;
import androidx.media3.common.util.UnstableApi;
import androidx.media3.common.util.Util;
import androidx.media3.decoder.DecoderInputBuffer;
import androidx.media3.extractor.OpusUtil;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import java.util.List;
import org.apache.commons.compress.archivers.tar.TarConstants;

/* JADX INFO: loaded from: classes9.dex */
@UnstableApi
public final class OggOpusAudioPacketizer {
    private static final int CHECKSUM_INDEX = 22;
    private static final int FIRST_AUDIO_SAMPLE_PAGE_SEQUENCE_NUMBER = 2;
    private static final int OGG_PACKET_HEADER_LENGTH = 28;
    private static final int SERIAL_NUMBER = 0;
    private static final byte[] OGG_DEFAULT_ID_HEADER_PAGE = {79, TarConstants.LF_PAX_GLOBAL_EXTENDED_HEADER, TarConstants.LF_PAX_GLOBAL_EXTENDED_HEADER, TarConstants.LF_GNUTYPE_SPARSE, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, com.google.common.base.c.FS, -43, -59, -9, 1, 19, 79, 112, 117, 115, 72, 101, 97, 100, 1, 2, 56, 1, -128, -69, 0, 0, 0, 0, 0};
    private static final byte[] OGG_DEFAULT_COMMENT_HEADER_PAGE = {79, TarConstants.LF_PAX_GLOBAL_EXTENDED_HEADER, TarConstants.LF_PAX_GLOBAL_EXTENDED_HEADER, TarConstants.LF_GNUTYPE_SPARSE, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, com.google.common.base.c.VT, -103, 87, TarConstants.LF_GNUTYPE_SPARSE, 1, com.google.common.base.c.DLE, 79, 112, 117, 115, 84, 97, TarConstants.LF_PAX_GLOBAL_EXTENDED_HEADER, 115, 0, 0, 0, 0, 0, 0, 0, 0};
    private ByteBuffer outputBuffer = AudioProcessor.EMPTY_BUFFER;
    private int granulePosition = 0;
    private int pageSequenceNumber = 2;

    private ByteBuffer b(ByteBuffer byteBuffer, @Nullable byte[] bArr) {
        int i10;
        int iPosition = byteBuffer.position();
        int iLimit = byteBuffer.limit();
        int i11 = iLimit - iPosition;
        int i12 = (i11 + 255) / 255;
        int length = i12 + 27 + i11;
        if (this.pageSequenceNumber == 2) {
            int length2 = bArr != null ? bArr.length + 28 : OGG_DEFAULT_ID_HEADER_PAGE.length;
            length += OGG_DEFAULT_COMMENT_HEADER_PAGE.length + length2;
            i10 = length2;
        } else {
            i10 = 0;
        }
        ByteBuffer byteBufferC = c(length);
        if (this.pageSequenceNumber == 2) {
            if (bArr != null) {
                e(byteBufferC, bArr);
            } else {
                byteBufferC.put(OGG_DEFAULT_ID_HEADER_PAGE);
            }
            byteBufferC.put(OGG_DEFAULT_COMMENT_HEADER_PAGE);
        }
        int i13 = this.granulePosition + OpusUtil.i(byteBuffer);
        this.granulePosition = i13;
        f(byteBufferC, i13, this.pageSequenceNumber, i12, false);
        for (int i14 = 0; i14 < i12; i14++) {
            if (i11 >= 255) {
                byteBufferC.put((byte) -1);
                i11 -= 255;
            } else {
                byteBufferC.put((byte) i11);
                i11 = 0;
            }
        }
        while (iPosition < iLimit) {
            byteBufferC.put(byteBuffer.get(iPosition));
            iPosition++;
        }
        byteBuffer.position(byteBuffer.limit());
        byteBufferC.flip();
        if (this.pageSequenceNumber == 2) {
            byte[] bArrArray = byteBufferC.array();
            int iArrayOffset = byteBufferC.arrayOffset() + i10;
            byte[] bArr2 = OGG_DEFAULT_COMMENT_HEADER_PAGE;
            byteBufferC.putInt(i10 + bArr2.length + 22, Util.t(bArrArray, iArrayOffset + bArr2.length, byteBufferC.limit() - byteBufferC.position(), 0));
        } else {
            byteBufferC.putInt(22, Util.t(byteBufferC.array(), byteBufferC.arrayOffset(), byteBufferC.limit() - byteBufferC.position(), 0));
        }
        this.pageSequenceNumber++;
        return byteBufferC;
    }

    private ByteBuffer c(int i10) {
        if (this.outputBuffer.capacity() < i10) {
            this.outputBuffer = ByteBuffer.allocate(i10).order(ByteOrder.LITTLE_ENDIAN);
        } else {
            this.outputBuffer.clear();
        }
        return this.outputBuffer;
    }

    private void e(ByteBuffer byteBuffer, byte[] bArr) {
        f(byteBuffer, 0L, 0, 1, true);
        byteBuffer.put(com.google.common.primitives.h.a(bArr.length));
        byteBuffer.put(bArr);
        byteBuffer.putInt(22, Util.t(byteBuffer.array(), byteBuffer.arrayOffset(), bArr.length + 28, 0));
        byteBuffer.position(bArr.length + 28);
    }

    private void f(ByteBuffer byteBuffer, long j6, int i10, int i11, boolean z6) {
        byteBuffer.put((byte) 79);
        byteBuffer.put(TarConstants.LF_PAX_GLOBAL_EXTENDED_HEADER);
        byteBuffer.put(TarConstants.LF_PAX_GLOBAL_EXTENDED_HEADER);
        byteBuffer.put(TarConstants.LF_GNUTYPE_SPARSE);
        byteBuffer.put((byte) 0);
        byteBuffer.put(z6 ? (byte) 2 : (byte) 0);
        byteBuffer.putLong(j6);
        byteBuffer.putInt(0);
        byteBuffer.putInt(i10);
        byteBuffer.putInt(0);
        byteBuffer.put(com.google.common.primitives.h.a(i11));
    }

    public void a(DecoderInputBuffer decoderInputBuffer, List<byte[]> list) {
        Assertions.e(decoderInputBuffer.data);
        if (decoderInputBuffer.data.limit() - decoderInputBuffer.data.position() == 0) {
            return;
        }
        this.outputBuffer = b(decoderInputBuffer.data, (this.pageSequenceNumber == 2 && (list.size() == 1 || list.size() == 3)) ? list.get(0) : null);
        decoderInputBuffer.b();
        decoderInputBuffer.o(this.outputBuffer.remaining());
        decoderInputBuffer.data.put(this.outputBuffer);
        decoderInputBuffer.p();
    }

    public void d() {
        this.outputBuffer = AudioProcessor.EMPTY_BUFFER;
        this.granulePosition = 0;
        this.pageSequenceNumber = 2;
    }
}
