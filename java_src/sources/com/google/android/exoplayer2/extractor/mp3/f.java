package com.google.android.exoplayer2.extractor.mp3;

import android.net.Uri;
import androidx.annotation.Nullable;
import androidx.renderscript.ScriptIntrinsicBLAS;
import com.google.android.exoplayer2.a2;
import com.google.android.exoplayer2.audio.h0;
import com.google.android.exoplayer2.extractor.a0;
import com.google.android.exoplayer2.extractor.e0;
import com.google.android.exoplayer2.extractor.k;
import com.google.android.exoplayer2.extractor.l;
import com.google.android.exoplayer2.extractor.m;
import com.google.android.exoplayer2.extractor.n;
import com.google.android.exoplayer2.extractor.q;
import com.google.android.exoplayer2.extractor.r;
import com.google.android.exoplayer2.extractor.x;
import com.google.android.exoplayer2.extractor.y;
import com.google.android.exoplayer2.metadata.Metadata;
import com.google.android.exoplayer2.metadata.id3.MlltFrame;
import com.google.android.exoplayer2.metadata.id3.TextInformationFrame;
import com.google.android.exoplayer2.util.c0;
import com.google.android.exoplayer2.util.o0;
import com.google.android.exoplayer2.v2;
import java.io.EOFException;
import java.io.IOException;
import java.util.Map;

/* JADX INFO: loaded from: classes10.dex */
public final class f implements l {
    public static final int FLAG_DISABLE_ID3_METADATA = 8;
    public static final int FLAG_ENABLE_CONSTANT_BITRATE_SEEKING = 1;
    public static final int FLAG_ENABLE_CONSTANT_BITRATE_SEEKING_ALWAYS = 2;
    public static final int FLAG_ENABLE_INDEX_SEEKING = 4;
    private static final int MAX_SNIFF_BYTES = 32768;
    private static final int MAX_SYNC_BYTES = 131072;
    private static final int MPEG_AUDIO_HEADER_MASK = -128000;
    private static final int SCRATCH_LENGTH = 10;
    private static final int SEEK_HEADER_INFO = 1231971951;
    private static final int SEEK_HEADER_UNSET = 0;
    private static final int SEEK_HEADER_VBRI = 1447187017;
    private static final int SEEK_HEADER_XING = 1483304551;
    private long basisTimeUs;
    private e0 currentTrackOutput;
    private boolean disableSeeking;
    private n extractorOutput;
    private long firstSamplePosition;
    private final int flags;
    private final long forcedFirstSampleTimestampUs;
    private final x gaplessInfoHolder;
    private final y id3Peeker;
    private boolean isSeekInProgress;

    @Nullable
    private Metadata metadata;
    private e0 realTrackOutput;
    private int sampleBytesRemaining;
    private long samplesRead;
    private final c0 scratch;
    private long seekTimeUs;
    private g seeker;
    private final e0 skippingTrackOutput;
    private final h0.a synchronizedHeader;
    private int synchronizedHeaderData;
    public static final r FACTORY = new r() { // from class: com.google.android.exoplayer2.extractor.mp3.d
        @Override // com.google.android.exoplayer2.extractor.r
        public /* synthetic */ l[] a(Uri uri, Map map) {
            return q.a(this, uri, map);
        }

        @Override // com.google.android.exoplayer2.extractor.r
        public final l[] createExtractors() {
            return f.n();
        }
    };
    private static final v2.b.a REQUIRED_ID3_FRAME_PREDICATE = new v2.b.a() { // from class: com.google.android.exoplayer2.extractor.mp3.e
        @Override // v2.b.a
        public final boolean evaluate(int i10, int i11, int i12, int i13, int i14) {
            return f.o(i10, i11, i12, i13, i14);
        }
    };

    public f() {
        this(0);
    }

    private static boolean m(int i10, long j6) {
        return ((long) (i10 & MPEG_AUDIO_HEADER_MASK)) == (j6 & (-128000));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ l[] n() {
        return new l[]{new f()};
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ boolean o(int i10, int i11, int i12, int i13, int i14) {
        return (i11 == 67 && i12 == 79 && i13 == 77 && (i14 == 77 || i10 == 2)) || (i11 == 77 && i12 == 76 && i13 == 76 && (i14 == 84 || i10 == 2));
    }

    @Override // com.google.android.exoplayer2.extractor.l
    public boolean b(m mVar) throws IOException {
        return u(mVar, true);
    }

    public void i() {
        this.disableSeeking = true;
    }

    @Override // com.google.android.exoplayer2.extractor.l
    public void release() {
    }

    @Override // com.google.android.exoplayer2.extractor.l
    public void seek(long j6, long j10) {
        this.synchronizedHeaderData = 0;
        this.basisTimeUs = -9223372036854775807L;
        this.samplesRead = 0L;
        this.sampleBytesRemaining = 0;
        this.seekTimeUs = j10;
        g gVar = this.seeker;
        if (!(gVar instanceof b) || ((b) gVar).b(j10)) {
            return;
        }
        this.isSeekInProgress = true;
        this.currentTrackOutput = this.skippingTrackOutput;
    }

    public f(int i10) {
        this(i10, -9223372036854775807L);
    }

    private void f() {
        com.google.android.exoplayer2.util.a.i(this.realTrackOutput);
        o0.j(this.extractorOutput);
    }

    private long h(long j6) {
        return this.basisTimeUs + ((j6 * 1000000) / ((long) this.synchronizedHeader.sampleRate));
    }

    private g j(m mVar, boolean z6) throws IOException {
        mVar.peekFully(this.scratch.d(), 0, 4);
        this.scratch.P(0);
        this.synchronizedHeader.a(this.scratch.n());
        return new a(mVar.getLength(), mVar.getPosition(), this.synchronizedHeader, z6);
    }

    private static long k(@Nullable Metadata metadata) {
        if (metadata == null) {
            return -9223372036854775807L;
        }
        int iH = metadata.h();
        for (int i10 = 0; i10 < iH; i10++) {
            Metadata.Entry entryG = metadata.g(i10);
            if (entryG instanceof TextInformationFrame) {
                TextInformationFrame textInformationFrame = (TextInformationFrame) entryG;
                if (textInformationFrame.id.equals("TLEN")) {
                    return o0.w0(Long.parseLong(textInformationFrame.value));
                }
            }
        }
        return -9223372036854775807L;
    }

    @Nullable
    private static c p(@Nullable Metadata metadata, long j6) {
        if (metadata == null) {
            return null;
        }
        int iH = metadata.h();
        for (int i10 = 0; i10 < iH; i10++) {
            Metadata.Entry entryG = metadata.g(i10);
            if (entryG instanceof MlltFrame) {
                return c.b(j6, (MlltFrame) entryG, k(metadata));
            }
        }
        return null;
    }

    @Nullable
    private g q(m mVar) throws IOException {
        c0 c0Var = new c0(this.synchronizedHeader.frameSize);
        mVar.peekFully(c0Var.d(), 0, this.synchronizedHeader.frameSize);
        h0.a aVar = this.synchronizedHeader;
        int i10 = 21;
        if ((aVar.version & 1) != 0) {
            if (aVar.channels != 1) {
                i10 = 36;
            }
        } else if (aVar.channels == 1) {
            i10 = 13;
        }
        int i11 = i10;
        int iL = l(c0Var, i11);
        if (iL != SEEK_HEADER_XING && iL != SEEK_HEADER_INFO) {
            if (iL != SEEK_HEADER_VBRI) {
                mVar.resetPeekPosition();
                return null;
            }
            h hVarB = h.b(mVar.getLength(), mVar.getPosition(), this.synchronizedHeader, c0Var);
            mVar.skipFully(this.synchronizedHeader.frameSize);
            return hVarB;
        }
        i iVarB = i.b(mVar.getLength(), mVar.getPosition(), this.synchronizedHeader, c0Var);
        if (iVarB != null && !this.gaplessInfoHolder.a()) {
            mVar.resetPeekPosition();
            mVar.advancePeekPosition(i11 + ScriptIntrinsicBLAS.LEFT);
            mVar.peekFully(this.scratch.d(), 0, 3);
            this.scratch.P(0);
            this.gaplessInfoHolder.d(this.scratch.G());
        }
        mVar.skipFully(this.synchronizedHeader.frameSize);
        return (iVarB == null || iVarB.isSeekable() || iL != SEEK_HEADER_INFO) ? iVarB : j(mVar, false);
    }

    private boolean r(m mVar) throws IOException {
        g gVar = this.seeker;
        if (gVar != null) {
            long jA = gVar.a();
            if (jA != -1 && mVar.getPeekPosition() > jA - 4) {
                return true;
            }
        }
        try {
            return !mVar.peekFully(this.scratch.d(), 0, 4, true);
        } catch (EOFException unused) {
            return true;
        }
    }

    private int s(m mVar) throws IOException {
        if (this.synchronizedHeaderData == 0) {
            try {
                u(mVar, false);
            } catch (EOFException unused) {
                return -1;
            }
        }
        if (this.seeker == null) {
            g gVarG = g(mVar);
            this.seeker = gVarG;
            this.extractorOutput.h(gVarG);
            this.currentTrackOutput.d(new a2.b().e0(this.synchronizedHeader.mimeType).W(4096).H(this.synchronizedHeader.channels).f0(this.synchronizedHeader.sampleRate).N(this.gaplessInfoHolder.encoderDelay).O(this.gaplessInfoHolder.encoderPadding).X((this.flags & 8) != 0 ? null : this.metadata).E());
            this.firstSamplePosition = mVar.getPosition();
        } else if (this.firstSamplePosition != 0) {
            long position = mVar.getPosition();
            long j6 = this.firstSamplePosition;
            if (position < j6) {
                mVar.skipFully((int) (j6 - position));
            }
        }
        return t(mVar);
    }

    private int t(m mVar) throws IOException {
        if (this.sampleBytesRemaining == 0) {
            mVar.resetPeekPosition();
            if (r(mVar)) {
                return -1;
            }
            this.scratch.P(0);
            int iN = this.scratch.n();
            if (!m(iN, this.synchronizedHeaderData) || h0.j(iN) == -1) {
                mVar.skipFully(1);
                this.synchronizedHeaderData = 0;
                return 0;
            }
            this.synchronizedHeader.a(iN);
            if (this.basisTimeUs == -9223372036854775807L) {
                this.basisTimeUs = this.seeker.getTimeUs(mVar.getPosition());
                if (this.forcedFirstSampleTimestampUs != -9223372036854775807L) {
                    this.basisTimeUs += this.forcedFirstSampleTimestampUs - this.seeker.getTimeUs(0L);
                }
            }
            h0.a aVar = this.synchronizedHeader;
            this.sampleBytesRemaining = aVar.frameSize;
            g gVar = this.seeker;
            if (gVar instanceof b) {
                b bVar = (b) gVar;
                bVar.c(h(this.samplesRead + ((long) aVar.samplesPerFrame)), mVar.getPosition() + ((long) this.synchronizedHeader.frameSize));
                if (this.isSeekInProgress && bVar.b(this.seekTimeUs)) {
                    this.isSeekInProgress = false;
                    this.currentTrackOutput = this.realTrackOutput;
                }
            }
        }
        int iB = this.currentTrackOutput.b(mVar, this.sampleBytesRemaining, true);
        if (iB == -1) {
            return -1;
        }
        int i10 = this.sampleBytesRemaining - iB;
        this.sampleBytesRemaining = i10;
        if (i10 > 0) {
            return 0;
        }
        this.currentTrackOutput.e(h(this.samplesRead), 1, this.synchronizedHeader.frameSize, 0, null);
        this.samplesRead += (long) this.synchronizedHeader.samplesPerFrame;
        this.sampleBytesRemaining = 0;
        return 0;
    }

    private boolean u(m mVar, boolean z6) throws IOException {
        int peekPosition;
        int i10;
        int iJ;
        int i11 = z6 ? 32768 : 131072;
        mVar.resetPeekPosition();
        if (mVar.getPosition() == 0) {
            Metadata metadataA = this.id3Peeker.a(mVar, (this.flags & 8) == 0 ? null : REQUIRED_ID3_FRAME_PREDICATE);
            this.metadata = metadataA;
            if (metadataA != null) {
                this.gaplessInfoHolder.c(metadataA);
            }
            peekPosition = (int) mVar.getPeekPosition();
            if (!z6) {
                mVar.skipFully(peekPosition);
            }
            i10 = 0;
        } else {
            peekPosition = 0;
            i10 = 0;
        }
        int i12 = i10;
        int i13 = i12;
        while (true) {
            if (r(mVar)) {
                if (i12 > 0) {
                    break;
                }
                throw new EOFException();
            }
            this.scratch.P(0);
            int iN = this.scratch.n();
            if ((i10 == 0 || m(iN, i10)) && (iJ = h0.j(iN)) != -1) {
                i12++;
                if (i12 != 1) {
                    if (i12 == 4) {
                        break;
                    }
                } else {
                    this.synchronizedHeader.a(iN);
                    i10 = iN;
                }
                mVar.advancePeekPosition(iJ - 4);
            } else {
                int i14 = i13 + 1;
                if (i13 == i11) {
                    if (z6) {
                        return false;
                    }
                    throw v2.a("Searched too many bytes.", null);
                }
                if (z6) {
                    mVar.resetPeekPosition();
                    mVar.advancePeekPosition(peekPosition + i14);
                } else {
                    mVar.skipFully(1);
                }
                i12 = 0;
                i13 = i14;
                i10 = 0;
            }
        }
        if (z6) {
            mVar.skipFully(peekPosition + i13);
        } else {
            mVar.resetPeekPosition();
        }
        this.synchronizedHeaderData = i10;
        return true;
    }

    @Override // com.google.android.exoplayer2.extractor.l
    public void d(n nVar) {
        this.extractorOutput = nVar;
        e0 e0VarTrack = nVar.track(0, 1);
        this.realTrackOutput = e0VarTrack;
        this.currentTrackOutput = e0VarTrack;
        this.extractorOutput.endTracks();
    }

    public f(int i10, long j6) {
        this.flags = (i10 & 2) != 0 ? i10 | 1 : i10;
        this.forcedFirstSampleTimestampUs = j6;
        this.scratch = new c0(10);
        this.synchronizedHeader = new h0.a();
        this.gaplessInfoHolder = new x();
        this.basisTimeUs = -9223372036854775807L;
        this.id3Peeker = new y();
        k kVar = new k();
        this.skippingTrackOutput = kVar;
        this.currentTrackOutput = kVar;
    }

    private g g(m mVar) throws IOException {
        long jK;
        long jA;
        g gVarQ = q(mVar);
        c cVarP = p(this.metadata, mVar.getPosition());
        if (this.disableSeeking) {
            return new g.a();
        }
        if ((this.flags & 4) != 0) {
            if (cVarP != null) {
                jK = cVarP.getDurationUs();
                jA = cVarP.a();
            } else if (gVarQ != null) {
                jK = gVarQ.getDurationUs();
                jA = gVarQ.a();
            } else {
                jK = k(this.metadata);
                jA = -1;
            }
            gVarQ = new b(jK, mVar.getPosition(), jA);
        } else if (cVarP != null) {
            gVarQ = cVarP;
        } else if (gVarQ == null) {
            gVarQ = null;
        }
        boolean z6 = true;
        if (gVarQ == null || (!gVarQ.isSeekable() && (this.flags & 1) != 0)) {
            if ((this.flags & 2) == 0) {
                z6 = false;
            }
            return j(mVar, z6);
        }
        return gVarQ;
    }

    private static int l(c0 c0Var, int i10) {
        if (c0Var.f() >= i10 + 4) {
            c0Var.P(i10);
            int iN = c0Var.n();
            if (iN == SEEK_HEADER_XING || iN == SEEK_HEADER_INFO) {
                return iN;
            }
        }
        if (c0Var.f() >= 40) {
            c0Var.P(36);
            if (c0Var.n() == SEEK_HEADER_VBRI) {
                return SEEK_HEADER_VBRI;
            }
            return 0;
        }
        return 0;
    }

    @Override // com.google.android.exoplayer2.extractor.l
    public int c(m mVar, a0 a0Var) throws IOException {
        f();
        int iS = s(mVar);
        if (iS == -1 && (this.seeker instanceof b)) {
            long jH = h(this.samplesRead);
            if (this.seeker.getDurationUs() != jH) {
                ((b) this.seeker).d(jH);
                this.extractorOutput.h(this.seeker);
            }
        }
        return iS;
    }
}
