package q2;

import android.net.Uri;
import android.util.Pair;
import com.google.android.exoplayer2.a2;
import com.google.android.exoplayer2.extractor.a0;
import com.google.android.exoplayer2.extractor.e0;
import com.google.android.exoplayer2.extractor.l;
import com.google.android.exoplayer2.extractor.m;
import com.google.android.exoplayer2.extractor.n;
import com.google.android.exoplayer2.extractor.q;
import com.google.android.exoplayer2.extractor.r;
import com.google.android.exoplayer2.util.c0;
import com.google.android.exoplayer2.util.o0;
import com.google.android.exoplayer2.util.t;
import com.google.android.exoplayer2.v2;
import com.narvii.model.User;
import com.narvii.util.http.ApiService;
import io.agora.rtc.Constants;
import java.io.IOException;
import java.util.Map;

/* JADX INFO: loaded from: classes7.dex */
public final class b implements l {
    public static final r FACTORY = new r() { // from class: q2.a
        @Override // com.google.android.exoplayer2.extractor.r
        public /* synthetic */ l[] a(Uri uri, Map map) {
            return q.a(this, uri, map);
        }

        @Override // com.google.android.exoplayer2.extractor.r
        public final l[] createExtractors() {
            return b.f();
        }
    };
    private static final int STATE_READING_FILE_TYPE = 0;
    private static final int STATE_READING_FORMAT = 2;
    private static final int STATE_READING_RF64_SAMPLE_DATA_SIZE = 1;
    private static final int STATE_READING_SAMPLE_DATA = 4;
    private static final int STATE_SKIPPING_TO_SAMPLE_DATA = 3;
    private static final String TAG = "WavExtractor";
    private static final int TARGET_SAMPLES_PER_SECOND = 10;
    private n extractorOutput;
    private InterfaceC0493b outputWriter;
    private e0 trackOutput;
    private int state = 0;
    private long rf64SampleDataSize = -1;
    private int dataStartPosition = -1;
    private long dataEndPosition = -1;

    private static final class a implements InterfaceC0493b {
        private static final int[] INDEX_TABLE = {-1, -1, -1, -1, 2, 4, 6, 8, -1, -1, -1, -1, 2, 4, 6, 8};
        private static final int[] STEP_TABLE = {7, 8, 9, 10, 11, 12, 13, 14, 16, 17, 19, 21, 23, 25, 28, 31, 34, 37, 41, 45, 50, 55, 60, 66, 73, 80, 88, 97, 107, 118, 130, 143, Constants.ERR_MODULE_NOT_FOUND, 173, 190, 209, ApiService.API_ERR_USER_NOT_IN_COMMUNITY, User.USER_ROLE_NEWS_FEED, 279, 307, 337, 371, 408, 449, 494, 544, 598, 658, 724, 796, 876, 963, 1060, 1166, 1282, 1411, 1552, 1707, 1878, 2066, 2272, 2499, 2749, 3024, 3327, 3660, 4026, 4428, 4871, 5358, 5894, 6484, 7132, 7845, 8630, 9493, 10442, 11487, 12635, 13899, 15289, 16818, 18500, 20350, 22385, 24623, 27086, 29794, 32767};
        private final c0 decodedData;
        private final n extractorOutput;
        private final a2 format;
        private final int framesPerBlock;
        private final byte[] inputData;
        private long outputFrameCount;
        private int pendingInputBytes;
        private int pendingOutputBytes;
        private long startTimeUs;
        private final int targetSampleSizeFrames;
        private final e0 trackOutput;
        private final q2.c wavFormat;

        private void d(byte[] bArr, int i10, c0 c0Var) {
            for (int i11 = 0; i11 < i10; i11++) {
                for (int i12 = 0; i12 < this.wavFormat.numChannels; i12++) {
                    e(bArr, i11, i12, c0Var.d());
                }
            }
            int iG = g(this.framesPerBlock * i10);
            c0Var.P(0);
            c0Var.O(iG);
        }

        private static int h(int i10, int i11) {
            return i10 * 2 * i11;
        }

        @Override // q2.b.InterfaceC0493b
        public void b(long j6) {
            this.pendingInputBytes = 0;
            this.startTimeUs = j6;
            this.pendingOutputBytes = 0;
            this.outputFrameCount = 0L;
        }

        private void e(byte[] bArr, int i10, int i11, byte[] bArr2) {
            q2.c cVar = this.wavFormat;
            int i12 = cVar.blockSize;
            int i13 = cVar.numChannels;
            int i14 = (i10 * i12) + (i11 * 4);
            int i15 = (i13 * 4) + i14;
            int i16 = (i12 / i13) - 4;
            int iP = (short) (((bArr[i14 + 1] & 255) << 8) | (bArr[i14] & 255));
            int iMin = Math.min(bArr[i14 + 2] & 255, 88);
            int i17 = STEP_TABLE[iMin];
            int i18 = ((i10 * this.framesPerBlock * i13) + i11) * 2;
            bArr2[i18] = (byte) (iP & 255);
            bArr2[i18 + 1] = (byte) (iP >> 8);
            for (int i19 = 0; i19 < i16 * 2; i19++) {
                byte b7 = bArr[((i19 / 8) * i13 * 4) + i15 + ((i19 / 2) % 4)];
                int i20 = i19 % 2 == 0 ? b7 & com.google.common.base.c.SI : (b7 & 255) >> 4;
                int i21 = ((((i20 & 7) * 2) + 1) * i17) >> 3;
                if ((i20 & 8) != 0) {
                    i21 = -i21;
                }
                iP = o0.p(iP + i21, -32768, 32767);
                i18 += i13 * 2;
                bArr2[i18] = (byte) (iP & 255);
                bArr2[i18 + 1] = (byte) (iP >> 8);
                int i22 = iMin + INDEX_TABLE[i20];
                int[] iArr = STEP_TABLE;
                iMin = o0.p(i22, 0, iArr.length - 1);
                i17 = iArr[iMin];
            }
        }

        private int f(int i10) {
            return i10 / (this.wavFormat.numChannels * 2);
        }

        private int g(int i10) {
            return h(i10, this.wavFormat.numChannels);
        }

        private void i(int i10) {
            long jF0 = this.startTimeUs + o0.F0(this.outputFrameCount, 1000000L, this.wavFormat.frameRateHz);
            int iG = g(i10);
            this.trackOutput.e(jF0, 1, iG, this.pendingOutputBytes - iG, null);
            this.outputFrameCount += (long) i10;
            this.pendingOutputBytes -= iG;
        }

        @Override // q2.b.InterfaceC0493b
        public void a(int i10, long j6) {
            this.extractorOutput.h(new e(this.wavFormat, this.framesPerBlock, i10, j6));
            this.trackOutput.d(this.format);
        }

        /* JADX WARN: Code duplicated, block: B:12:0x0038 A[LOOP:0: B:6:0x001e->B:12:0x0038, LOOP_END] */
        /* JADX WARN: Code duplicated, block: B:23:0x003e A[SYNTHETIC] */
        /* JADX WARN: Code duplicated, block: B:25:0x001b A[SYNTHETIC] */
        /* JADX WARN: Code duplicated, block: B:7:0x0020  */
        /* JADX WARN: Code duplicated, block: B:9:0x0024  */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:10:0x0035 -> B:4:0x001b). Please report as a decompilation issue!!! */
        /*  JADX ERROR: JadxOverflowException in pass: RegionMakerVisitor
            jadx.core.utils.exceptions.JadxOverflowException: Regions stack size limit reached
            	at jadx.core.utils.ErrorsCounter.addError(ErrorsCounter.java:59)
            	at jadx.core.utils.ErrorsCounter.error(ErrorsCounter.java:31)
            	at jadx.core.dex.attributes.nodes.NotificationAttrNode.addError(NotificationAttrNode.java:19)
            */
        @Override // q2.b.InterfaceC0493b
        public boolean c(com.google.android.exoplayer2.extractor.m r7, long r8) throws java.io.IOException {
            /*
                r6 = this;
                int r0 = r6.targetSampleSizeFrames
                int r1 = r6.pendingOutputBytes
                int r1 = r6.f(r1)
                int r0 = r0 - r1
                int r1 = r6.framesPerBlock
                int r0 = com.google.android.exoplayer2.util.o0.l(r0, r1)
                q2.c r1 = r6.wavFormat
                int r1 = r1.blockSize
                int r0 = r0 * r1
                r1 = 0
                int r1 = (r8 > r1 ? 1 : (r8 == r1 ? 0 : -1))
                r2 = 1
                if (r1 != 0) goto L1d
            L1b:
                r1 = r2
                goto L1e
            L1d:
                r1 = 0
            L1e:
                if (r1 != 0) goto L3e
                int r3 = r6.pendingInputBytes
                if (r3 >= r0) goto L3e
                int r3 = r0 - r3
                long r3 = (long) r3
                long r3 = java.lang.Math.min(r3, r8)
                int r3 = (int) r3
                byte[] r4 = r6.inputData
                int r5 = r6.pendingInputBytes
                int r3 = r7.read(r4, r5, r3)
                r4 = -1
                if (r3 != r4) goto L38
                goto L1b
            L38:
                int r4 = r6.pendingInputBytes
                int r4 = r4 + r3
                r6.pendingInputBytes = r4
                goto L1e
            L3e:
                int r7 = r6.pendingInputBytes
                q2.c r8 = r6.wavFormat
                int r8 = r8.blockSize
                int r7 = r7 / r8
                if (r7 <= 0) goto L75
                byte[] r8 = r6.inputData
                com.google.android.exoplayer2.util.c0 r9 = r6.decodedData
                r6.d(r8, r7, r9)
                int r8 = r6.pendingInputBytes
                q2.c r9 = r6.wavFormat
                int r9 = r9.blockSize
                int r7 = r7 * r9
                int r8 = r8 - r7
                r6.pendingInputBytes = r8
                com.google.android.exoplayer2.util.c0 r7 = r6.decodedData
                int r7 = r7.f()
                com.google.android.exoplayer2.extractor.e0 r8 = r6.trackOutput
                com.google.android.exoplayer2.util.c0 r9 = r6.decodedData
                r8.c(r9, r7)
                int r8 = r6.pendingOutputBytes
                int r8 = r8 + r7
                r6.pendingOutputBytes = r8
                int r7 = r6.f(r8)
                int r8 = r6.targetSampleSizeFrames
                if (r7 < r8) goto L75
                r6.i(r8)
            L75:
                if (r1 == 0) goto L82
                int r7 = r6.pendingOutputBytes
                int r7 = r6.f(r7)
                if (r7 <= 0) goto L82
                r6.i(r7)
            L82:
                return r1
            */
            throw new UnsupportedOperationException("Method not decompiled: q2.b.a.c(com.google.android.exoplayer2.extractor.m, long):boolean");
        }

        public a(n nVar, e0 e0Var, q2.c cVar) throws v2 {
            this.extractorOutput = nVar;
            this.trackOutput = e0Var;
            this.wavFormat = cVar;
            int iMax = Math.max(1, cVar.frameRateHz / 10);
            this.targetSampleSizeFrames = iMax;
            c0 c0Var = new c0(cVar.extraData);
            c0Var.v();
            int iV = c0Var.v();
            this.framesPerBlock = iV;
            int i10 = cVar.numChannels;
            int i11 = (((cVar.blockSize - (i10 * 4)) * 8) / (cVar.bitsPerSample * i10)) + 1;
            if (iV == i11) {
                int iL = o0.l(iMax, iV);
                this.inputData = new byte[cVar.blockSize * iL];
                this.decodedData = new c0(iL * h(iV, i10));
                int i12 = ((cVar.frameRateHz * cVar.blockSize) * 8) / iV;
                this.format = new a2.b().e0("audio/raw").G(i12).Z(i12).W(h(iMax, i10)).H(cVar.numChannels).f0(cVar.frameRateHz).Y(2).E();
                return;
            }
            throw v2.a("Expected frames per block: " + i11 + "; got: " + iV, null);
        }
    }

    /* JADX INFO: renamed from: q2.b$b, reason: collision with other inner class name */
    private interface InterfaceC0493b {
        void a(int i10, long j6) throws v2;

        void b(long j6);

        boolean c(m mVar, long j6) throws IOException;
    }

    private static final class c implements InterfaceC0493b {
        private final n extractorOutput;
        private final a2 format;
        private long outputFrameCount;
        private int pendingOutputBytes;
        private long startTimeUs;
        private final int targetSampleSizeBytes;
        private final e0 trackOutput;
        private final q2.c wavFormat;

        @Override // q2.b.InterfaceC0493b
        public void b(long j6) {
            this.startTimeUs = j6;
            this.pendingOutputBytes = 0;
            this.outputFrameCount = 0L;
        }

        @Override // q2.b.InterfaceC0493b
        public void a(int i10, long j6) {
            this.extractorOutput.h(new e(this.wavFormat, 1, i10, j6));
            this.trackOutput.d(this.format);
        }

        @Override // q2.b.InterfaceC0493b
        public boolean c(m mVar, long j6) throws IOException {
            int i10;
            int i11;
            long j10 = j6;
            while (j10 > 0 && (i10 = this.pendingOutputBytes) < (i11 = this.targetSampleSizeBytes)) {
                int iB = this.trackOutput.b(mVar, (int) Math.min(i11 - i10, j10), true);
                if (iB == -1) {
                    j10 = 0;
                } else {
                    this.pendingOutputBytes += iB;
                    j10 -= (long) iB;
                }
            }
            q2.c cVar = this.wavFormat;
            int i12 = cVar.blockSize;
            int i13 = this.pendingOutputBytes / i12;
            if (i13 > 0) {
                long jF0 = this.startTimeUs + o0.F0(this.outputFrameCount, 1000000L, cVar.frameRateHz);
                int i14 = i13 * i12;
                int i15 = this.pendingOutputBytes - i14;
                this.trackOutput.e(jF0, 1, i14, i15, null);
                this.outputFrameCount += (long) i13;
                this.pendingOutputBytes = i15;
            }
            return j10 <= 0;
        }

        public c(n nVar, e0 e0Var, q2.c cVar, String str, int i10) throws v2 {
            this.extractorOutput = nVar;
            this.trackOutput = e0Var;
            this.wavFormat = cVar;
            int i11 = (cVar.numChannels * cVar.bitsPerSample) / 8;
            if (cVar.blockSize == i11) {
                int i12 = cVar.frameRateHz;
                int i13 = i12 * i11 * 8;
                int iMax = Math.max(i11, (i12 * i11) / 10);
                this.targetSampleSizeBytes = iMax;
                this.format = new a2.b().e0(str).G(i13).Z(i13).W(iMax).H(cVar.numChannels).f0(cVar.frameRateHz).Y(i10).E();
                return;
            }
            throw v2.a("Expected block size: " + i11 + "; got: " + cVar.blockSize, null);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ l[] f() {
        return new l[]{new b()};
    }

    @Override // com.google.android.exoplayer2.extractor.l
    public void release() {
    }

    private void e() {
        com.google.android.exoplayer2.util.a.i(this.trackOutput);
        o0.j(this.extractorOutput);
    }

    private int j(m mVar) throws IOException {
        com.google.android.exoplayer2.util.a.g(this.dataEndPosition != -1);
        return ((InterfaceC0493b) com.google.android.exoplayer2.util.a.e(this.outputWriter)).c(mVar, this.dataEndPosition - mVar.getPosition()) ? -1 : 0;
    }

    @Override // com.google.android.exoplayer2.extractor.l
    public void d(n nVar) {
        this.extractorOutput = nVar;
        this.trackOutput = nVar.track(0, 1);
        nVar.endTracks();
    }

    @Override // com.google.android.exoplayer2.extractor.l
    public void seek(long j6, long j10) {
        this.state = j6 == 0 ? 0 : 4;
        InterfaceC0493b interfaceC0493b = this.outputWriter;
        if (interfaceC0493b != null) {
            interfaceC0493b.b(j10);
        }
    }

    private void g(m mVar) throws IOException {
        boolean z6;
        if (mVar.getPosition() == 0) {
            z6 = true;
        } else {
            z6 = false;
        }
        com.google.android.exoplayer2.util.a.g(z6);
        int i10 = this.dataStartPosition;
        if (i10 != -1) {
            mVar.skipFully(i10);
            this.state = 4;
        } else {
            if (d.a(mVar)) {
                mVar.skipFully((int) (mVar.getPeekPosition() - mVar.getPosition()));
                this.state = 1;
                return;
            }
            throw v2.a("Unsupported or unrecognized wav file type.", null);
        }
    }

    private void h(m mVar) throws IOException {
        q2.c cVarB = d.b(mVar);
        int i10 = cVarB.formatType;
        if (i10 == 17) {
            this.outputWriter = new a(this.extractorOutput, this.trackOutput, cVarB);
        } else if (i10 == 6) {
            this.outputWriter = new c(this.extractorOutput, this.trackOutput, cVarB, "audio/g711-alaw", -1);
        } else if (i10 == 7) {
            this.outputWriter = new c(this.extractorOutput, this.trackOutput, cVarB, "audio/g711-mlaw", -1);
        } else {
            int iA = com.google.android.exoplayer2.audio.o0.a(i10, cVarB.bitsPerSample);
            if (iA != 0) {
                this.outputWriter = new c(this.extractorOutput, this.trackOutput, cVarB, "audio/raw", iA);
            } else {
                throw v2.c("Unsupported WAV format type: " + cVarB.formatType);
            }
        }
        this.state = 3;
    }

    private void i(m mVar) throws IOException {
        this.rf64SampleDataSize = d.c(mVar);
        this.state = 2;
    }

    private void k(m mVar) throws IOException {
        Pair<Long, Long> pairE = d.e(mVar);
        this.dataStartPosition = ((Long) pairE.first).intValue();
        long jLongValue = ((Long) pairE.second).longValue();
        long j6 = this.rf64SampleDataSize;
        if (j6 != -1 && jLongValue == 4294967295L) {
            jLongValue = j6;
        }
        this.dataEndPosition = ((long) this.dataStartPosition) + jLongValue;
        long length = mVar.getLength();
        if (length != -1 && this.dataEndPosition > length) {
            t.i(TAG, "Data exceeds input length: " + this.dataEndPosition + ", " + length);
            this.dataEndPosition = length;
        }
        ((InterfaceC0493b) com.google.android.exoplayer2.util.a.e(this.outputWriter)).a(this.dataStartPosition, this.dataEndPosition);
        this.state = 4;
    }

    @Override // com.google.android.exoplayer2.extractor.l
    public boolean b(m mVar) throws IOException {
        return d.a(mVar);
    }

    @Override // com.google.android.exoplayer2.extractor.l
    public int c(m mVar, a0 a0Var) throws IOException {
        e();
        int i10 = this.state;
        if (i10 != 0) {
            if (i10 != 1) {
                if (i10 != 2) {
                    if (i10 != 3) {
                        if (i10 == 4) {
                            return j(mVar);
                        }
                        throw new IllegalStateException();
                    }
                    k(mVar);
                    return 0;
                }
                h(mVar);
                return 0;
            }
            i(mVar);
            return 0;
        }
        g(mVar);
        return 0;
    }
}
