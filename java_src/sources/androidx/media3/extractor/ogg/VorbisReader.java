package androidx.media3.extractor.ogg;

import androidx.annotation.Nullable;
import androidx.annotation.VisibleForTesting;
import androidx.media3.common.Format;
import androidx.media3.common.ParserException;
import androidx.media3.common.util.Assertions;
import androidx.media3.common.util.ParsableByteArray;
import androidx.media3.extractor.VorbisUtil;
import com.google.common.collect.a0;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Arrays;

/* JADX INFO: loaded from: classes2.dex */
final class VorbisReader extends StreamReader {

    @Nullable
    private VorbisUtil.CommentHeader commentHeader;
    private int previousPacketBlockSize;
    private boolean seenFirstAudioPacket;

    @Nullable
    private VorbisUtil.VorbisIdHeader vorbisIdHeader;

    @Nullable
    private VorbisSetup vorbisSetup;

    @VisibleForTesting
    static int p(byte b7, int i10, int i11) {
        return (b7 >> i11) & (255 >>> (8 - i10));
    }

    public static boolean r(ParsableByteArray parsableByteArray) {
        try {
            return VorbisUtil.m(1, parsableByteArray, true);
        } catch (ParserException unused) {
            return false;
        }
    }

    static final class VorbisSetup {
        public final VorbisUtil.CommentHeader commentHeader;
        public final int iLogModes;
        public final VorbisUtil.VorbisIdHeader idHeader;
        public final VorbisUtil.Mode[] modes;
        public final byte[] setupHeaderData;

        public VorbisSetup(VorbisUtil.VorbisIdHeader vorbisIdHeader, VorbisUtil.CommentHeader commentHeader, byte[] bArr, VorbisUtil.Mode[] modeArr, int i10) {
            this.idHeader = vorbisIdHeader;
            this.commentHeader = commentHeader;
            this.setupHeaderData = bArr;
            this.modes = modeArr;
            this.iLogModes = i10;
        }
    }

    private static int o(byte b7, VorbisSetup vorbisSetup) {
        return !vorbisSetup.modes[p(b7, vorbisSetup.iLogModes, 1)].blockFlag ? vorbisSetup.idHeader.blockSize0 : vorbisSetup.idHeader.blockSize1;
    }

    @Override // androidx.media3.extractor.ogg.StreamReader
    protected boolean h(ParsableByteArray parsableByteArray, long j6, StreamReader.SetupData setupData) throws IOException {
        if (this.vorbisSetup != null) {
            Assertions.e(setupData.format);
            return false;
        }
        VorbisSetup vorbisSetupQ = q(parsableByteArray);
        this.vorbisSetup = vorbisSetupQ;
        if (vorbisSetupQ == null) {
            return true;
        }
        VorbisUtil.VorbisIdHeader vorbisIdHeader = vorbisSetupQ.idHeader;
        ArrayList arrayList = new ArrayList();
        arrayList.add(vorbisIdHeader.data);
        arrayList.add(vorbisSetupQ.setupHeaderData);
        setupData.format = new Format.Builder().g0("audio/vorbis").I(vorbisIdHeader.bitrateNominal).b0(vorbisIdHeader.bitrateMaximum).J(vorbisIdHeader.channels).h0(vorbisIdHeader.sampleRate).V(arrayList).Z(VorbisUtil.c(a0.u(vorbisSetupQ.commentHeader.comments))).G();
        return true;
    }

    @Nullable
    @VisibleForTesting
    VorbisSetup q(ParsableByteArray parsableByteArray) throws IOException {
        VorbisUtil.VorbisIdHeader vorbisIdHeader = this.vorbisIdHeader;
        if (vorbisIdHeader == null) {
            this.vorbisIdHeader = VorbisUtil.j(parsableByteArray);
            return null;
        }
        VorbisUtil.CommentHeader commentHeader = this.commentHeader;
        if (commentHeader == null) {
            this.commentHeader = VorbisUtil.h(parsableByteArray);
            return null;
        }
        byte[] bArr = new byte[parsableByteArray.g()];
        System.arraycopy(parsableByteArray.e(), 0, bArr, 0, parsableByteArray.g());
        VorbisUtil.Mode[] modeArrK = VorbisUtil.k(parsableByteArray, vorbisIdHeader.channels);
        return new VorbisSetup(vorbisIdHeader, commentHeader, bArr, modeArrK, VorbisUtil.a(modeArrK.length - 1));
    }

    VorbisReader() {
    }

    @VisibleForTesting
    static void n(ParsableByteArray parsableByteArray, long j6) {
        if (parsableByteArray.b() < parsableByteArray.g() + 4) {
            parsableByteArray.R(Arrays.copyOf(parsableByteArray.e(), parsableByteArray.g() + 4));
        } else {
            parsableByteArray.T(parsableByteArray.g() + 4);
        }
        byte[] bArrE = parsableByteArray.e();
        bArrE[parsableByteArray.g() - 4] = (byte) (j6 & 255);
        bArrE[parsableByteArray.g() - 3] = (byte) ((j6 >>> 8) & 255);
        bArrE[parsableByteArray.g() - 2] = (byte) ((j6 >>> 16) & 255);
        bArrE[parsableByteArray.g() - 1] = (byte) ((j6 >>> 24) & 255);
    }

    @Override // androidx.media3.extractor.ogg.StreamReader
    protected void e(long j6) {
        boolean z6;
        super.e(j6);
        int i10 = 0;
        if (j6 != 0) {
            z6 = true;
        } else {
            z6 = false;
        }
        this.seenFirstAudioPacket = z6;
        VorbisUtil.VorbisIdHeader vorbisIdHeader = this.vorbisIdHeader;
        if (vorbisIdHeader != null) {
            i10 = vorbisIdHeader.blockSize0;
        }
        this.previousPacketBlockSize = i10;
    }

    @Override // androidx.media3.extractor.ogg.StreamReader
    protected long f(ParsableByteArray parsableByteArray) {
        int i10 = 0;
        if ((parsableByteArray.e()[0] & 1) == 1) {
            return -1L;
        }
        int iO = o(parsableByteArray.e()[0], (VorbisSetup) Assertions.i(this.vorbisSetup));
        if (this.seenFirstAudioPacket) {
            i10 = (this.previousPacketBlockSize + iO) / 4;
        }
        long j6 = i10;
        n(parsableByteArray, j6);
        this.seenFirstAudioPacket = true;
        this.previousPacketBlockSize = iO;
        return j6;
    }

    @Override // androidx.media3.extractor.ogg.StreamReader
    protected void l(boolean z6) {
        super.l(z6);
        if (z6) {
            this.vorbisSetup = null;
            this.vorbisIdHeader = null;
            this.commentHeader = null;
        }
        this.previousPacketBlockSize = 0;
        this.seenFirstAudioPacket = false;
    }
}
