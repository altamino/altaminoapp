package androidx.media3.extractor.mp4;

import android.net.Uri;
import android.util.Pair;
import android.util.SparseArray;
import androidx.annotation.Nullable;
import androidx.media3.common.DrmInitData;
import androidx.media3.common.Format;
import androidx.media3.common.ParserException;
import androidx.media3.common.util.Assertions;
import androidx.media3.common.util.Log;
import androidx.media3.common.util.ParsableByteArray;
import androidx.media3.common.util.TimestampAdjuster;
import androidx.media3.common.util.UnstableApi;
import androidx.media3.common.util.Util;
import androidx.media3.container.NalUnitUtil;
import androidx.media3.extractor.Ac4Util;
import androidx.media3.extractor.CeaUtil;
import androidx.media3.extractor.ChunkIndex;
import androidx.media3.extractor.Extractor;
import androidx.media3.extractor.ExtractorInput;
import androidx.media3.extractor.ExtractorOutput;
import androidx.media3.extractor.ExtractorsFactory;
import androidx.media3.extractor.GaplessInfoHolder;
import androidx.media3.extractor.PositionHolder;
import androidx.media3.extractor.SeekMap;
import androidx.media3.extractor.TrackOutput;
import androidx.media3.extractor.e;
import androidx.media3.extractor.metadata.emsg.EventMessage;
import androidx.media3.extractor.metadata.emsg.EventMessageEncoder;
import com.google.common.base.g;
import java.io.IOException;
import java.lang.annotation.Documented;
import java.lang.annotation.ElementType;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.lang.annotation.Target;
import java.util.ArrayDeque;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.List;
import java.util.Map;
import java.util.UUID;

/* JADX INFO: loaded from: classes4.dex */
@UnstableApi
public class FragmentedMp4Extractor implements Extractor {
    private static final int EXTRA_TRACKS_BASE_ID = 100;
    public static final int FLAG_ENABLE_EMSG_TRACK = 4;
    public static final int FLAG_WORKAROUND_EVERY_VIDEO_FRAME_IS_SYNC_FRAME = 1;
    public static final int FLAG_WORKAROUND_IGNORE_EDIT_LISTS = 16;
    public static final int FLAG_WORKAROUND_IGNORE_TFDT_BOX = 2;
    private static final int SAMPLE_GROUP_TYPE_seig = 1936025959;
    private static final int STATE_READING_ATOM_HEADER = 0;
    private static final int STATE_READING_ATOM_PAYLOAD = 1;
    private static final int STATE_READING_ENCRYPTION_DATA = 2;
    private static final int STATE_READING_SAMPLE_CONTINUE = 4;
    private static final int STATE_READING_SAMPLE_START = 3;
    private static final String TAG = "FragmentedMp4Extractor";

    @Nullable
    private final TrackOutput additionalEmsgTrackOutput;

    @Nullable
    private ParsableByteArray atomData;
    private final ParsableByteArray atomHeader;
    private int atomHeaderBytesRead;
    private long atomSize;
    private int atomType;
    private TrackOutput[] ceaTrackOutputs;
    private final List<Format> closedCaptionFormats;
    private final ArrayDeque<Atom.ContainerAtom> containerAtoms;

    @Nullable
    private TrackBundle currentTrackBundle;
    private long durationUs;
    private TrackOutput[] emsgTrackOutputs;
    private long endOfMdatPosition;
    private final EventMessageEncoder eventMessageEncoder;
    private ExtractorOutput extractorOutput;
    private final int flags;
    private boolean haveOutputSeekMap;
    private final ParsableByteArray nalBuffer;
    private final ParsableByteArray nalPrefix;
    private final ParsableByteArray nalStartCode;
    private int parserState;
    private int pendingMetadataSampleBytes;
    private final ArrayDeque<MetadataSampleInfo> pendingMetadataSampleInfos;
    private long pendingSeekTimeUs;
    private boolean processSeiNalUnitPayload;
    private int sampleBytesWritten;
    private int sampleCurrentNalBytesRemaining;
    private int sampleSize;
    private final ParsableByteArray scratch;
    private final byte[] scratchBytes;
    private long segmentIndexEarliestPresentationTimeUs;

    @Nullable
    private final Track sideloadedTrack;

    @Nullable
    private final TimestampAdjuster timestampAdjuster;
    private final SparseArray<TrackBundle> trackBundles;
    public static final ExtractorsFactory FACTORY = new ExtractorsFactory() { // from class: androidx.media3.extractor.mp4.a
        @Override // androidx.media3.extractor.ExtractorsFactory
        public /* synthetic */ Extractor[] a(Uri uri, Map map) {
            return e.a(this, uri, map);
        }

        @Override // androidx.media3.extractor.ExtractorsFactory
        public final Extractor[] createExtractors() {
            return FragmentedMp4Extractor.l();
        }
    };
    private static final byte[] PIFF_SAMPLE_ENCRYPTION_BOX_EXTENDED_TYPE = {-94, 57, 79, 82, 90, -101, 79, com.google.common.base.c.DC4, -94, 68, 108, 66, 124, 100, -115, -12};
    private static final Format EMSG_FORMAT = new Format.Builder().g0("application/x-emsg").G();

    @Target({ElementType.TYPE_USE})
    @Documented
    @Retention(RetentionPolicy.SOURCE)
    public @interface Flags {
    }

    private static final class TrackBundle {
        private static final int SINGLE_SUBSAMPLE_ENCRYPTION_DATA_LENGTH = 8;
        public int currentSampleInTrackRun;
        public int currentSampleIndex;
        public int currentTrackRunIndex;
        private boolean currentlyInFragment;
        public DefaultSampleValues defaultSampleValues;
        public int firstSampleToOutputIndex;
        public TrackSampleTable moovSampleTable;
        public final TrackOutput output;
        public final TrackFragment fragment = new TrackFragment();
        public final ParsableByteArray scratch = new ParsableByteArray();
        private final ParsableByteArray encryptionSignalByte = new ParsableByteArray(1);
        private final ParsableByteArray defaultInitializationVector = new ParsableByteArray();

        public int c() {
            int i10;
            if (this.currentlyInFragment) {
                i10 = this.fragment.sampleIsSyncFrameTable[this.currentSampleIndex] ? 1 : 0;
            } else {
                i10 = this.moovSampleTable.flags[this.currentSampleIndex];
            }
            return g() != null ? i10 | 1073741824 : i10;
        }

        public long d() {
            return !this.currentlyInFragment ? this.moovSampleTable.offsets[this.currentSampleIndex] : this.fragment.trunDataPosition[this.currentTrackRunIndex];
        }

        public long e() {
            return !this.currentlyInFragment ? this.moovSampleTable.timestampsUs[this.currentSampleIndex] : this.fragment.c(this.currentSampleIndex);
        }

        public int f() {
            return !this.currentlyInFragment ? this.moovSampleTable.sizes[this.currentSampleIndex] : this.fragment.sampleSizeTable[this.currentSampleIndex];
        }

        @Nullable
        public TrackEncryptionBox g() {
            if (!this.currentlyInFragment) {
                return null;
            }
            int i10 = ((DefaultSampleValues) Util.j(this.fragment.header)).sampleDescriptionIndex;
            TrackEncryptionBox trackEncryptionBoxA = this.fragment.trackEncryptionBox;
            if (trackEncryptionBoxA == null) {
                trackEncryptionBoxA = this.moovSampleTable.track.a(i10);
            }
            if (trackEncryptionBoxA == null || !trackEncryptionBoxA.isEncrypted) {
                return null;
            }
            return trackEncryptionBoxA;
        }

        public boolean h() {
            this.currentSampleIndex++;
            if (!this.currentlyInFragment) {
                return false;
            }
            int i10 = this.currentSampleInTrackRun + 1;
            this.currentSampleInTrackRun = i10;
            int[] iArr = this.fragment.trunLength;
            int i11 = this.currentTrackRunIndex;
            if (i10 != iArr[i11]) {
                return true;
            }
            this.currentTrackRunIndex = i11 + 1;
            this.currentSampleInTrackRun = 0;
            return false;
        }

        public void j(TrackSampleTable trackSampleTable, DefaultSampleValues defaultSampleValues) {
            this.moovSampleTable = trackSampleTable;
            this.defaultSampleValues = defaultSampleValues;
            this.output.d(trackSampleTable.track.format);
            k();
        }

        public void k() {
            this.fragment.f();
            this.currentSampleIndex = 0;
            this.currentTrackRunIndex = 0;
            this.currentSampleInTrackRun = 0;
            this.firstSampleToOutputIndex = 0;
            this.currentlyInFragment = false;
        }

        public void l(long j6) {
            int i10 = this.currentSampleIndex;
            while (true) {
                TrackFragment trackFragment = this.fragment;
                if (i10 >= trackFragment.sampleCount || trackFragment.c(i10) > j6) {
                    return;
                }
                if (this.fragment.sampleIsSyncFrameTable[i10]) {
                    this.firstSampleToOutputIndex = i10;
                }
                i10++;
            }
        }

        public void n(DrmInitData drmInitData) {
            TrackEncryptionBox trackEncryptionBoxA = this.moovSampleTable.track.a(((DefaultSampleValues) Util.j(this.fragment.header)).sampleDescriptionIndex);
            this.output.d(this.moovSampleTable.track.format.b().O(drmInitData.e(trackEncryptionBoxA != null ? trackEncryptionBoxA.schemeType : null)).G());
        }

        public TrackBundle(TrackOutput trackOutput, TrackSampleTable trackSampleTable, DefaultSampleValues defaultSampleValues) {
            this.output = trackOutput;
            this.moovSampleTable = trackSampleTable;
            this.defaultSampleValues = defaultSampleValues;
            j(trackSampleTable, defaultSampleValues);
        }

        public int i(int i10, int i11) {
            ParsableByteArray parsableByteArray;
            boolean z6;
            int i12;
            TrackEncryptionBox trackEncryptionBoxG = g();
            if (trackEncryptionBoxG == null) {
                return 0;
            }
            int length = trackEncryptionBoxG.perSampleIvSize;
            if (length != 0) {
                parsableByteArray = this.fragment.sampleEncryptionData;
            } else {
                byte[] bArr = (byte[]) Util.j(trackEncryptionBoxG.defaultInitializationVector);
                this.defaultInitializationVector.S(bArr, bArr.length);
                ParsableByteArray parsableByteArray2 = this.defaultInitializationVector;
                length = bArr.length;
                parsableByteArray = parsableByteArray2;
            }
            boolean zG = this.fragment.g(this.currentSampleIndex);
            if (!zG && i11 == 0) {
                z6 = false;
            } else {
                z6 = true;
            }
            byte[] bArrE = this.encryptionSignalByte.e();
            if (z6) {
                i12 = 128;
            } else {
                i12 = 0;
            }
            bArrE[0] = (byte) (i12 | length);
            this.encryptionSignalByte.U(0);
            this.output.a(this.encryptionSignalByte, 1, 1);
            this.output.a(parsableByteArray, length, 1);
            if (!z6) {
                return length + 1;
            }
            if (!zG) {
                this.scratch.Q(8);
                byte[] bArrE2 = this.scratch.e();
                bArrE2[0] = 0;
                bArrE2[1] = 1;
                bArrE2[2] = (byte) ((i11 >> 8) & 255);
                bArrE2[3] = (byte) (i11 & 255);
                bArrE2[4] = (byte) ((i10 >> 24) & 255);
                bArrE2[5] = (byte) ((i10 >> 16) & 255);
                bArrE2[6] = (byte) ((i10 >> 8) & 255);
                bArrE2[7] = (byte) (i10 & 255);
                this.output.a(this.scratch, 8, 1);
                return length + 9;
            }
            ParsableByteArray parsableByteArray3 = this.fragment.sampleEncryptionData;
            int iN = parsableByteArray3.N();
            parsableByteArray3.V(-2);
            int i13 = (iN * 6) + 2;
            if (i11 != 0) {
                this.scratch.Q(i13);
                byte[] bArrE3 = this.scratch.e();
                parsableByteArray3.l(bArrE3, 0, i13);
                int i14 = (((bArrE3[2] & 255) << 8) | (bArrE3[3] & 255)) + i11;
                bArrE3[2] = (byte) ((i14 >> 8) & 255);
                bArrE3[3] = (byte) (i14 & 255);
                parsableByteArray3 = this.scratch;
            }
            this.output.a(parsableByteArray3, i13, 1);
            return length + 1 + i13;
        }

        public void m() {
            TrackEncryptionBox trackEncryptionBoxG = g();
            if (trackEncryptionBoxG == null) {
                return;
            }
            ParsableByteArray parsableByteArray = this.fragment.sampleEncryptionData;
            int i10 = trackEncryptionBoxG.perSampleIvSize;
            if (i10 != 0) {
                parsableByteArray.V(i10);
            }
            if (this.fragment.g(this.currentSampleIndex)) {
                parsableByteArray.V(parsableByteArray.N() * 6);
            }
        }
    }

    public FragmentedMp4Extractor() {
        this(0);
    }

    private static boolean N(int i10) {
        return i10 == 1836019574 || i10 == 1953653099 || i10 == 1835297121 || i10 == 1835626086 || i10 == 1937007212 || i10 == 1836019558 || i10 == 1953653094 || i10 == 1836475768 || i10 == 1701082227;
    }

    private static boolean O(int i10) {
        return i10 == 1751411826 || i10 == 1835296868 || i10 == 1836476516 || i10 == 1936286840 || i10 == 1937011556 || i10 == 1937011827 || i10 == 1668576371 || i10 == 1937011555 || i10 == 1937011578 || i10 == 1937013298 || i10 == 1937007471 || i10 == 1668232756 || i10 == 1937011571 || i10 == 1952867444 || i10 == 1952868452 || i10 == 1953196132 || i10 == 1953654136 || i10 == 1953658222 || i10 == 1886614376 || i10 == 1935763834 || i10 == 1935763823 || i10 == 1936027235 || i10 == 1970628964 || i10 == 1935828848 || i10 == 1936158820 || i10 == 1701606260 || i10 == 1835362404 || i10 == 1701671783;
    }

    private void f() {
        this.parserState = 0;
        this.atomHeaderBytesRead = 0;
    }

    private void j() {
        int i10;
        TrackOutput[] trackOutputArr = new TrackOutput[2];
        this.emsgTrackOutputs = trackOutputArr;
        TrackOutput trackOutput = this.additionalEmsgTrackOutput;
        int i11 = 0;
        if (trackOutput != null) {
            trackOutputArr[0] = trackOutput;
            i10 = 1;
        } else {
            i10 = 0;
        }
        int i12 = 100;
        if ((this.flags & 4) != 0) {
            trackOutputArr[i10] = this.extractorOutput.track(100, 5);
            i12 = 101;
            i10++;
        }
        TrackOutput[] trackOutputArr2 = (TrackOutput[]) Util.P0(this.emsgTrackOutputs, i10);
        this.emsgTrackOutputs = trackOutputArr2;
        for (TrackOutput trackOutput2 : trackOutputArr2) {
            trackOutput2.d(EMSG_FORMAT);
        }
        this.ceaTrackOutputs = new TrackOutput[this.closedCaptionFormats.size()];
        while (i11 < this.ceaTrackOutputs.length) {
            TrackOutput trackOutputTrack = this.extractorOutput.track(i12, 3);
            trackOutputTrack.d(this.closedCaptionFormats.get(i11));
            this.ceaTrackOutputs[i11] = trackOutputTrack;
            i11++;
            i12++;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ Extractor[] l() {
        return new Extractor[]{new FragmentedMp4Extractor()};
    }

    private static void z(ParsableByteArray parsableByteArray, TrackFragment trackFragment) throws ParserException {
        y(parsableByteArray, 0, trackFragment);
    }

    @Nullable
    protected Track m(@Nullable Track track) {
        return track;
    }

    @Override // androidx.media3.extractor.Extractor
    public void release() {
    }

    private static final class MetadataSampleInfo {
        public final boolean sampleTimeIsRelative;
        public final long sampleTimeUs;
        public final int size;

        public MetadataSampleInfo(long j6, boolean z6, int i10) {
            this.sampleTimeUs = j6;
            this.sampleTimeIsRelative = z6;
            this.size = i10;
        }
    }

    public FragmentedMp4Extractor(int i10) {
        this(i10, null);
    }

    private static Pair<Long, ChunkIndex> A(ParsableByteArray parsableByteArray, long j6) throws ParserException {
        long jM;
        long jM2;
        parsableByteArray.U(8);
        int iC = Atom.c(parsableByteArray.q());
        parsableByteArray.V(4);
        long J = parsableByteArray.J();
        if (iC == 0) {
            jM = parsableByteArray.J();
            jM2 = parsableByteArray.J();
        } else {
            jM = parsableByteArray.M();
            jM2 = parsableByteArray.M();
        }
        long j10 = jM;
        long j11 = j6 + jM2;
        long jX0 = Util.X0(j10, 1000000L, J);
        parsableByteArray.V(2);
        int iN = parsableByteArray.N();
        int[] iArr = new int[iN];
        long[] jArr = new long[iN];
        long[] jArr2 = new long[iN];
        long[] jArr3 = new long[iN];
        long j12 = jX0;
        int i10 = 0;
        long j13 = j10;
        while (i10 < iN) {
            int iQ = parsableByteArray.q();
            if ((iQ & Integer.MIN_VALUE) != 0) {
                throw ParserException.a("Unhandled indirect reference", null);
            }
            long J2 = parsableByteArray.J();
            iArr[i10] = iQ & Integer.MAX_VALUE;
            jArr[i10] = j11;
            jArr3[i10] = j12;
            long j14 = j13 + J2;
            long[] jArr4 = jArr2;
            long[] jArr5 = jArr3;
            int i11 = iN;
            int[] iArr2 = iArr;
            long jX1 = Util.X0(j14, 1000000L, J);
            jArr4[i10] = jX1 - jArr5[i10];
            parsableByteArray.V(4);
            j11 += (long) iArr2[i10];
            i10++;
            iArr = iArr2;
            jArr3 = jArr5;
            jArr2 = jArr4;
            jArr = jArr;
            iN = i11;
            j13 = j14;
            j12 = jX1;
        }
        return Pair.create(Long.valueOf(jX0), new ChunkIndex(iArr, jArr, jArr2, jArr3));
    }

    private static long B(ParsableByteArray parsableByteArray) {
        parsableByteArray.U(8);
        return Atom.c(parsableByteArray.q()) == 1 ? parsableByteArray.M() : parsableByteArray.J();
    }

    @Nullable
    private static TrackBundle C(ParsableByteArray parsableByteArray, SparseArray<TrackBundle> sparseArray, boolean z6) {
        parsableByteArray.U(8);
        int iB = Atom.b(parsableByteArray.q());
        TrackBundle trackBundleValueAt = z6 ? sparseArray.valueAt(0) : sparseArray.get(parsableByteArray.q());
        if (trackBundleValueAt == null) {
            return null;
        }
        if ((iB & 1) != 0) {
            long jM = parsableByteArray.M();
            TrackFragment trackFragment = trackBundleValueAt.fragment;
            trackFragment.dataPosition = jM;
            trackFragment.auxiliaryDataPosition = jM;
        }
        DefaultSampleValues defaultSampleValues = trackBundleValueAt.defaultSampleValues;
        trackBundleValueAt.fragment.header = new DefaultSampleValues((iB & 2) != 0 ? parsableByteArray.q() - 1 : defaultSampleValues.sampleDescriptionIndex, (iB & 8) != 0 ? parsableByteArray.q() : defaultSampleValues.duration, (iB & 16) != 0 ? parsableByteArray.q() : defaultSampleValues.size, (iB & 32) != 0 ? parsableByteArray.q() : defaultSampleValues.flags);
        return trackBundleValueAt;
    }

    private static Pair<Integer, DefaultSampleValues> E(ParsableByteArray parsableByteArray) {
        parsableByteArray.U(12);
        return Pair.create(Integer.valueOf(parsableByteArray.q()), new DefaultSampleValues(parsableByteArray.q() - 1, parsableByteArray.q(), parsableByteArray.q(), parsableByteArray.q()));
    }

    private static int F(TrackBundle trackBundle, int i10, int i11, ParsableByteArray parsableByteArray, int i12) throws ParserException {
        int iQ;
        TrackBundle trackBundle2 = trackBundle;
        parsableByteArray.U(8);
        int iB = Atom.b(parsableByteArray.q());
        Track track = trackBundle2.moovSampleTable.track;
        TrackFragment trackFragment = trackBundle2.fragment;
        DefaultSampleValues defaultSampleValues = (DefaultSampleValues) Util.j(trackFragment.header);
        trackFragment.trunLength[i10] = parsableByteArray.L();
        long[] jArr = trackFragment.trunDataPosition;
        long j6 = trackFragment.dataPosition;
        jArr[i10] = j6;
        if ((iB & 1) != 0) {
            jArr[i10] = j6 + ((long) parsableByteArray.q());
        }
        boolean z6 = (iB & 4) != 0;
        int iQ2 = defaultSampleValues.flags;
        if (z6) {
            iQ2 = parsableByteArray.q();
        }
        boolean z10 = (iB & 256) != 0;
        boolean z11 = (iB & 512) != 0;
        boolean z12 = (iB & 1024) != 0;
        boolean z13 = (iB & 2048) != 0;
        long j10 = k(track) ? ((long[]) Util.j(track.editListMediaTimes))[0] : 0L;
        int[] iArr = trackFragment.sampleSizeTable;
        long[] jArr2 = trackFragment.samplePresentationTimesUs;
        boolean[] zArr = trackFragment.sampleIsSyncFrameTable;
        int i13 = iQ2;
        boolean z14 = track.type == 2 && (i11 & 1) != 0;
        int i14 = i12 + trackFragment.trunLength[i10];
        boolean z15 = z14;
        long j11 = track.timescale;
        long j12 = trackFragment.nextFragmentDecodeTime;
        int i15 = i12;
        while (i15 < i14) {
            int iE = e(z10 ? parsableByteArray.q() : defaultSampleValues.duration);
            int iE2 = e(z11 ? parsableByteArray.q() : defaultSampleValues.size);
            if (z12) {
                iQ = parsableByteArray.q();
            } else {
                iQ = (i15 == 0 && z6) ? i13 : defaultSampleValues.flags;
            }
            long jX0 = Util.X0((((long) (z13 ? parsableByteArray.q() : 0)) + j12) - j10, 1000000L, j11);
            jArr2[i15] = jX0;
            if (!trackFragment.nextFragmentDecodeTimeIncludesMoov) {
                jArr2[i15] = jX0 + trackBundle2.moovSampleTable.durationUs;
            }
            iArr[i15] = iE2;
            zArr[i15] = ((iQ >> 16) & 1) == 0 && (!z15 || i15 == 0);
            j12 += (long) iE;
            i15++;
            trackBundle2 = trackBundle;
            z10 = z10;
            z6 = z6;
            z13 = z13;
            z11 = z11;
            z12 = z12;
        }
        trackFragment.nextFragmentDecodeTime = j12;
        return i14;
    }

    private static void G(Atom.ContainerAtom containerAtom, TrackBundle trackBundle, int i10) throws ParserException {
        List<Atom.LeafAtom> list = containerAtom.leafChildren;
        int size = list.size();
        int i11 = 0;
        int i12 = 0;
        for (int i13 = 0; i13 < size; i13++) {
            Atom.LeafAtom leafAtom = list.get(i13);
            if (leafAtom.type == 1953658222) {
                ParsableByteArray parsableByteArray = leafAtom.data;
                parsableByteArray.U(12);
                int iL = parsableByteArray.L();
                if (iL > 0) {
                    i12 += iL;
                    i11++;
                }
            }
        }
        trackBundle.currentTrackRunIndex = 0;
        trackBundle.currentSampleInTrackRun = 0;
        trackBundle.currentSampleIndex = 0;
        trackBundle.fragment.e(i11, i12);
        int i14 = 0;
        int iF = 0;
        for (int i15 = 0; i15 < size; i15++) {
            Atom.LeafAtom leafAtom2 = list.get(i15);
            if (leafAtom2.type == 1953658222) {
                iF = F(trackBundle, i14, i10, leafAtom2.data, iF);
                i14++;
            }
        }
    }

    private static void H(ParsableByteArray parsableByteArray, TrackFragment trackFragment, byte[] bArr) throws ParserException {
        parsableByteArray.U(8);
        parsableByteArray.l(bArr, 0, 16);
        if (Arrays.equals(bArr, PIFF_SAMPLE_ENCRYPTION_BOX_EXTENDED_TYPE)) {
            y(parsableByteArray, 16, trackFragment);
        }
    }

    private void I(long j6) throws ParserException {
        while (!this.containerAtoms.isEmpty() && this.containerAtoms.peek().endPosition == j6) {
            n(this.containerAtoms.pop());
        }
        f();
    }

    private boolean J(ExtractorInput extractorInput) throws IOException {
        if (this.atomHeaderBytesRead == 0) {
            if (!extractorInput.readFully(this.atomHeader.e(), 0, 8, true)) {
                return false;
            }
            this.atomHeaderBytesRead = 8;
            this.atomHeader.U(0);
            this.atomSize = this.atomHeader.J();
            this.atomType = this.atomHeader.q();
        }
        long j6 = this.atomSize;
        if (j6 == 1) {
            extractorInput.readFully(this.atomHeader.e(), 8, 8);
            this.atomHeaderBytesRead += 8;
            this.atomSize = this.atomHeader.M();
        } else if (j6 == 0) {
            long length = extractorInput.getLength();
            if (length == -1 && !this.containerAtoms.isEmpty()) {
                length = this.containerAtoms.peek().endPosition;
            }
            if (length != -1) {
                this.atomSize = (length - extractorInput.getPosition()) + ((long) this.atomHeaderBytesRead);
            }
        }
        if (this.atomSize < this.atomHeaderBytesRead) {
            throw ParserException.d("Atom size less than header length (unsupported).");
        }
        long position = extractorInput.getPosition() - ((long) this.atomHeaderBytesRead);
        int i10 = this.atomType;
        if ((i10 == 1836019558 || i10 == 1835295092) && !this.haveOutputSeekMap) {
            this.extractorOutput.d(new SeekMap.Unseekable(this.durationUs, position));
            this.haveOutputSeekMap = true;
        }
        if (this.atomType == 1836019558) {
            int size = this.trackBundles.size();
            for (int i11 = 0; i11 < size; i11++) {
                TrackFragment trackFragment = this.trackBundles.valueAt(i11).fragment;
                trackFragment.atomPosition = position;
                trackFragment.auxiliaryDataPosition = position;
                trackFragment.dataPosition = position;
            }
        }
        int i12 = this.atomType;
        if (i12 == 1835295092) {
            this.currentTrackBundle = null;
            this.endOfMdatPosition = position + this.atomSize;
            this.parserState = 2;
            return true;
        }
        if (N(i12)) {
            long position2 = (extractorInput.getPosition() + this.atomSize) - 8;
            this.containerAtoms.push(new Atom.ContainerAtom(this.atomType, position2));
            if (this.atomSize == this.atomHeaderBytesRead) {
                I(position2);
            } else {
                f();
            }
        } else if (O(this.atomType)) {
            if (this.atomHeaderBytesRead != 8) {
                throw ParserException.d("Leaf atom defines extended atom size (unsupported).");
            }
            if (this.atomSize > 2147483647L) {
                throw ParserException.d("Leaf atom with length > 2147483647 (unsupported).");
            }
            ParsableByteArray parsableByteArray = new ParsableByteArray((int) this.atomSize);
            System.arraycopy(this.atomHeader.e(), 0, parsableByteArray.e(), 0, 8);
            this.atomData = parsableByteArray;
            this.parserState = 1;
        } else {
            if (this.atomSize > 2147483647L) {
                throw ParserException.d("Skipping atom with length > 2147483647 (unsupported).");
            }
            this.atomData = null;
            this.parserState = 1;
        }
        return true;
    }

    private void K(ExtractorInput extractorInput) throws IOException {
        int i10 = ((int) this.atomSize) - this.atomHeaderBytesRead;
        ParsableByteArray parsableByteArray = this.atomData;
        if (parsableByteArray != null) {
            extractorInput.readFully(parsableByteArray.e(), 8, i10);
            p(new Atom.LeafAtom(this.atomType, parsableByteArray), extractorInput.getPosition());
        } else {
            extractorInput.skipFully(i10);
        }
        I(extractorInput.getPosition());
    }

    private void L(ExtractorInput extractorInput) throws IOException {
        int size = this.trackBundles.size();
        long j6 = Long.MAX_VALUE;
        TrackBundle trackBundleValueAt = null;
        for (int i10 = 0; i10 < size; i10++) {
            TrackFragment trackFragment = this.trackBundles.valueAt(i10).fragment;
            if (trackFragment.sampleEncryptionDataNeedsFill) {
                long j10 = trackFragment.auxiliaryDataPosition;
                if (j10 < j6) {
                    trackBundleValueAt = this.trackBundles.valueAt(i10);
                    j6 = j10;
                }
            }
        }
        if (trackBundleValueAt == null) {
            this.parserState = 3;
            return;
        }
        int position = (int) (j6 - extractorInput.getPosition());
        if (position < 0) {
            throw ParserException.a("Offset to encryption data was negative.", null);
        }
        extractorInput.skipFully(position);
        trackBundleValueAt.fragment.b(extractorInput);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference fix 'apply assigned field type' failed
    java.lang.UnsupportedOperationException: ArgType.getObject(), call class: class jadx.core.dex.instructions.args.ArgType$UnknownArg
    	at jadx.core.dex.instructions.args.ArgType.getObject(ArgType.java:596)
    	at jadx.core.dex.attributes.nodes.ClassTypeVarsAttr.getTypeVarsMapFor(ClassTypeVarsAttr.java:35)
    	at jadx.core.dex.nodes.utils.TypeUtils.replaceClassGenerics(TypeUtils.java:177)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.insertExplicitUseCast(FixTypesVisitor.java:397)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.tryFieldTypeWithNewCasts(FixTypesVisitor.java:359)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.applyFieldType(FixTypesVisitor.java:309)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.visit(FixTypesVisitor.java:94)
     */
    private boolean M(ExtractorInput extractorInput) throws IOException {
        int iE;
        TrackBundle trackBundleI = this.currentTrackBundle;
        Throwable th = null;
        if (trackBundleI == null) {
            trackBundleI = i(this.trackBundles);
            if (trackBundleI == null) {
                int position = (int) (this.endOfMdatPosition - extractorInput.getPosition());
                if (position < 0) {
                    throw ParserException.a("Offset to end of mdat was negative.", null);
                }
                extractorInput.skipFully(position);
                f();
                return false;
            }
            int iD = (int) (trackBundleI.d() - extractorInput.getPosition());
            if (iD < 0) {
                Log.i(TAG, "Ignoring negative offset to sample data.");
                iD = 0;
            }
            extractorInput.skipFully(iD);
            this.currentTrackBundle = trackBundleI;
        }
        int i10 = 4;
        int i11 = 1;
        if (this.parserState == 3) {
            int iF = trackBundleI.f();
            this.sampleSize = iF;
            if (trackBundleI.currentSampleIndex < trackBundleI.firstSampleToOutputIndex) {
                extractorInput.skipFully(iF);
                trackBundleI.m();
                if (!trackBundleI.h()) {
                    this.currentTrackBundle = null;
                }
                this.parserState = 3;
                return true;
            }
            if (trackBundleI.moovSampleTable.track.sampleTransformation == 1) {
                this.sampleSize = iF - 8;
                extractorInput.skipFully(8);
            }
            if ("audio/ac4".equals(trackBundleI.moovSampleTable.track.format.sampleMimeType)) {
                this.sampleBytesWritten = trackBundleI.i(this.sampleSize, 7);
                Ac4Util.a(this.sampleSize, this.scratch);
                trackBundleI.output.b(this.scratch, 7);
                this.sampleBytesWritten += 7;
            } else {
                this.sampleBytesWritten = trackBundleI.i(this.sampleSize, 0);
            }
            this.sampleSize += this.sampleBytesWritten;
            this.parserState = 4;
            this.sampleCurrentNalBytesRemaining = 0;
        }
        Track track = trackBundleI.moovSampleTable.track;
        TrackOutput trackOutput = trackBundleI.output;
        long jE = trackBundleI.e();
        TimestampAdjuster timestampAdjuster = this.timestampAdjuster;
        if (timestampAdjuster != null) {
            jE = timestampAdjuster.a(jE);
        }
        long j6 = jE;
        if (track.nalUnitLengthFieldLength == 0) {
            while (true) {
                int i12 = this.sampleBytesWritten;
                int i13 = this.sampleSize;
                if (i12 >= i13) {
                    break;
                }
                this.sampleBytesWritten += trackOutput.e(extractorInput, i13 - i12, false);
            }
        } else {
            byte[] bArrE = this.nalPrefix.e();
            bArrE[0] = 0;
            bArrE[1] = 0;
            bArrE[2] = 0;
            int i14 = track.nalUnitLengthFieldLength;
            int i15 = i14 + 1;
            int i16 = 4 - i14;
            while (this.sampleBytesWritten < this.sampleSize) {
                int i17 = this.sampleCurrentNalBytesRemaining;
                if (i17 == 0) {
                    extractorInput.readFully(bArrE, i16, i15);
                    this.nalPrefix.U(0);
                    int iQ = this.nalPrefix.q();
                    if (iQ < i11) {
                        throw ParserException.a("Invalid NAL length", th);
                    }
                    this.sampleCurrentNalBytesRemaining = iQ - 1;
                    this.nalStartCode.U(0);
                    trackOutput.b(this.nalStartCode, i10);
                    trackOutput.b(this.nalPrefix, i11);
                    this.processSeiNalUnitPayload = (this.ceaTrackOutputs.length <= 0 || !NalUnitUtil.g(track.format.sampleMimeType, bArrE[i10])) ? 0 : i11;
                    this.sampleBytesWritten += 5;
                    this.sampleSize += i16;
                } else {
                    if (this.processSeiNalUnitPayload) {
                        this.nalBuffer.Q(i17);
                        extractorInput.readFully(this.nalBuffer.e(), 0, this.sampleCurrentNalBytesRemaining);
                        trackOutput.b(this.nalBuffer, this.sampleCurrentNalBytesRemaining);
                        iE = this.sampleCurrentNalBytesRemaining;
                        int iQ2 = NalUnitUtil.q(this.nalBuffer.e(), this.nalBuffer.g());
                        this.nalBuffer.U("video/hevc".equals(track.format.sampleMimeType) ? 1 : 0);
                        this.nalBuffer.T(iQ2);
                        CeaUtil.a(j6, this.nalBuffer, this.ceaTrackOutputs);
                    } else {
                        iE = trackOutput.e(extractorInput, i17, false);
                    }
                    this.sampleBytesWritten += iE;
                    this.sampleCurrentNalBytesRemaining -= iE;
                    th = null;
                    i10 = 4;
                    i11 = 1;
                }
            }
        }
        int iC = trackBundleI.c();
        TrackEncryptionBox trackEncryptionBoxG = trackBundleI.g();
        trackOutput.f(j6, iC, this.sampleSize, 0, trackEncryptionBoxG != null ? trackEncryptionBoxG.cryptoData : null);
        s(j6);
        if (!trackBundleI.h()) {
            this.currentTrackBundle = null;
        }
        this.parserState = 3;
        return true;
    }

    private static int e(int i10) throws ParserException {
        if (i10 >= 0) {
            return i10;
        }
        throw ParserException.a("Unexpected negative value: " + i10, null);
    }

    private static boolean k(Track track) {
        long[] jArr;
        long[] jArr2 = track.editListDurations;
        if (jArr2 == null || jArr2.length != 1 || (jArr = track.editListMediaTimes) == null) {
            return false;
        }
        long j6 = jArr2[0];
        return j6 == 0 || Util.X0(j6 + jArr[0], 1000000L, track.movieTimescale) >= track.durationUs;
    }

    private void n(Atom.ContainerAtom containerAtom) throws ParserException {
        int i10 = containerAtom.type;
        if (i10 == 1836019574) {
            r(containerAtom);
        } else if (i10 == 1836019558) {
            q(containerAtom);
        } else {
            if (this.containerAtoms.isEmpty()) {
                return;
            }
            this.containerAtoms.peek().d(containerAtom);
        }
    }

    private void o(ParsableByteArray parsableByteArray) {
        long jX0;
        String str;
        long jX1;
        String str2;
        long J;
        long jA;
        if (this.emsgTrackOutputs.length == 0) {
            return;
        }
        parsableByteArray.U(8);
        int iC = Atom.c(parsableByteArray.q());
        if (iC == 0) {
            String str3 = (String) Assertions.e(parsableByteArray.B());
            String str4 = (String) Assertions.e(parsableByteArray.B());
            long J2 = parsableByteArray.J();
            jX0 = Util.X0(parsableByteArray.J(), 1000000L, J2);
            long j6 = this.segmentIndexEarliestPresentationTimeUs;
            long j10 = j6 != -9223372036854775807L ? j6 + jX0 : -9223372036854775807L;
            str = str3;
            jX1 = Util.X0(parsableByteArray.J(), 1000L, J2);
            str2 = str4;
            J = parsableByteArray.J();
            jA = j10;
        } else {
            if (iC != 1) {
                Log.i(TAG, "Skipping unsupported emsg version: " + iC);
                return;
            }
            long J3 = parsableByteArray.J();
            jA = Util.X0(parsableByteArray.M(), 1000000L, J3);
            long jX2 = Util.X0(parsableByteArray.J(), 1000L, J3);
            long J4 = parsableByteArray.J();
            str = (String) Assertions.e(parsableByteArray.B());
            jX1 = jX2;
            J = J4;
            str2 = (String) Assertions.e(parsableByteArray.B());
            jX0 = -9223372036854775807L;
        }
        byte[] bArr = new byte[parsableByteArray.a()];
        parsableByteArray.l(bArr, 0, parsableByteArray.a());
        ParsableByteArray parsableByteArray2 = new ParsableByteArray(this.eventMessageEncoder.a(new EventMessage(str, str2, jX1, J, bArr)));
        int iA = parsableByteArray2.a();
        for (TrackOutput trackOutput : this.emsgTrackOutputs) {
            parsableByteArray2.U(0);
            trackOutput.b(parsableByteArray2, iA);
        }
        if (jA == -9223372036854775807L) {
            this.pendingMetadataSampleInfos.addLast(new MetadataSampleInfo(jX0, true, iA));
            this.pendingMetadataSampleBytes += iA;
            return;
        }
        if (!this.pendingMetadataSampleInfos.isEmpty()) {
            this.pendingMetadataSampleInfos.addLast(new MetadataSampleInfo(jA, false, iA));
            this.pendingMetadataSampleBytes += iA;
            return;
        }
        TimestampAdjuster timestampAdjuster = this.timestampAdjuster;
        if (timestampAdjuster != null && !timestampAdjuster.f()) {
            this.pendingMetadataSampleInfos.addLast(new MetadataSampleInfo(jA, false, iA));
            this.pendingMetadataSampleBytes += iA;
            return;
        }
        TimestampAdjuster timestampAdjuster2 = this.timestampAdjuster;
        if (timestampAdjuster2 != null) {
            jA = timestampAdjuster2.a(jA);
        }
        for (TrackOutput trackOutput2 : this.emsgTrackOutputs) {
            trackOutput2.f(jA, 1, iA, 0, null);
        }
    }

    private void p(Atom.LeafAtom leafAtom, long j6) throws ParserException {
        if (!this.containerAtoms.isEmpty()) {
            this.containerAtoms.peek().e(leafAtom);
            return;
        }
        int i10 = leafAtom.type;
        if (i10 != 1936286840) {
            if (i10 == 1701671783) {
                o(leafAtom.data);
            }
        } else {
            Pair<Long, ChunkIndex> pairA = A(leafAtom.data, j6);
            this.segmentIndexEarliestPresentationTimeUs = ((Long) pairA.first).longValue();
            this.extractorOutput.d((SeekMap) pairA.second);
            this.haveOutputSeekMap = true;
        }
    }

    private void q(Atom.ContainerAtom containerAtom) throws ParserException {
        u(containerAtom, this.trackBundles, this.sideloadedTrack != null, this.flags, this.scratchBytes);
        DrmInitData drmInitDataH = h(containerAtom.leafChildren);
        if (drmInitDataH != null) {
            int size = this.trackBundles.size();
            for (int i10 = 0; i10 < size; i10++) {
                this.trackBundles.valueAt(i10).n(drmInitDataH);
            }
        }
        if (this.pendingSeekTimeUs != -9223372036854775807L) {
            int size2 = this.trackBundles.size();
            for (int i11 = 0; i11 < size2; i11++) {
                this.trackBundles.valueAt(i11).l(this.pendingSeekTimeUs);
            }
            this.pendingSeekTimeUs = -9223372036854775807L;
        }
    }

    private void r(Atom.ContainerAtom containerAtom) throws ParserException {
        int i10 = 0;
        Assertions.h(this.sideloadedTrack == null, "Unexpected moov box.");
        DrmInitData drmInitDataH = h(containerAtom.leafChildren);
        Atom.ContainerAtom containerAtom2 = (Atom.ContainerAtom) Assertions.e(containerAtom.f(1836475768));
        SparseArray<DefaultSampleValues> sparseArray = new SparseArray<>();
        int size = containerAtom2.leafChildren.size();
        long jT = -9223372036854775807L;
        for (int i11 = 0; i11 < size; i11++) {
            Atom.LeafAtom leafAtom = containerAtom2.leafChildren.get(i11);
            int i12 = leafAtom.type;
            if (i12 == 1953654136) {
                Pair<Integer, DefaultSampleValues> pairE = E(leafAtom.data);
                sparseArray.put(((Integer) pairE.first).intValue(), (DefaultSampleValues) pairE.second);
            } else if (i12 == 1835362404) {
                jT = t(leafAtom.data);
            }
        }
        List<TrackSampleTable> listB = AtomParsers.B(containerAtom, new GaplessInfoHolder(), jT, drmInitDataH, (this.flags & 16) != 0, false, new g() { // from class: androidx.media3.extractor.mp4.b
            @Override // com.google.common.base.g
            public final Object apply(Object obj) {
                return this.f716a.m((Track) obj);
            }
        });
        int size2 = listB.size();
        if (this.trackBundles.size() != 0) {
            Assertions.g(this.trackBundles.size() == size2);
            while (i10 < size2) {
                TrackSampleTable trackSampleTable = listB.get(i10);
                Track track = trackSampleTable.track;
                this.trackBundles.get(track.id).j(trackSampleTable, g(sparseArray, track.id));
                i10++;
            }
            return;
        }
        while (i10 < size2) {
            TrackSampleTable trackSampleTable2 = listB.get(i10);
            Track track2 = trackSampleTable2.track;
            this.trackBundles.put(track2.id, new TrackBundle(this.extractorOutput.track(i10, track2.type), trackSampleTable2, g(sparseArray, track2.id)));
            this.durationUs = Math.max(this.durationUs, track2.durationUs);
            i10++;
        }
        this.extractorOutput.endTracks();
    }

    private void s(long j6) {
        while (!this.pendingMetadataSampleInfos.isEmpty()) {
            MetadataSampleInfo metadataSampleInfoRemoveFirst = this.pendingMetadataSampleInfos.removeFirst();
            this.pendingMetadataSampleBytes -= metadataSampleInfoRemoveFirst.size;
            long jA = metadataSampleInfoRemoveFirst.sampleTimeUs;
            if (metadataSampleInfoRemoveFirst.sampleTimeIsRelative) {
                jA += j6;
            }
            TimestampAdjuster timestampAdjuster = this.timestampAdjuster;
            if (timestampAdjuster != null) {
                jA = timestampAdjuster.a(jA);
            }
            for (TrackOutput trackOutput : this.emsgTrackOutputs) {
                trackOutput.f(jA, 1, metadataSampleInfoRemoveFirst.size, this.pendingMetadataSampleBytes, null);
            }
        }
    }

    private static long t(ParsableByteArray parsableByteArray) {
        parsableByteArray.U(8);
        return Atom.c(parsableByteArray.q()) == 0 ? parsableByteArray.J() : parsableByteArray.M();
    }

    private static void u(Atom.ContainerAtom containerAtom, SparseArray<TrackBundle> sparseArray, boolean z6, int i10, byte[] bArr) throws ParserException {
        int size = containerAtom.containerChildren.size();
        for (int i11 = 0; i11 < size; i11++) {
            Atom.ContainerAtom containerAtom2 = containerAtom.containerChildren.get(i11);
            if (containerAtom2.type == 1953653094) {
                D(containerAtom2, sparseArray, z6, i10, bArr);
            }
        }
    }

    private static void v(ParsableByteArray parsableByteArray, TrackFragment trackFragment) throws ParserException {
        parsableByteArray.U(8);
        int iQ = parsableByteArray.q();
        if ((Atom.b(iQ) & 1) == 1) {
            parsableByteArray.V(8);
        }
        int iL = parsableByteArray.L();
        if (iL == 1) {
            trackFragment.auxiliaryDataPosition += Atom.c(iQ) == 0 ? parsableByteArray.J() : parsableByteArray.M();
        } else {
            throw ParserException.a("Unexpected saio entry count: " + iL, null);
        }
    }

    private static void w(TrackEncryptionBox trackEncryptionBox, ParsableByteArray parsableByteArray, TrackFragment trackFragment) throws ParserException {
        int i10;
        int i11 = trackEncryptionBox.perSampleIvSize;
        parsableByteArray.U(8);
        if ((Atom.b(parsableByteArray.q()) & 1) == 1) {
            parsableByteArray.V(8);
        }
        int iH = parsableByteArray.H();
        int iL = parsableByteArray.L();
        if (iL > trackFragment.sampleCount) {
            throw ParserException.a("Saiz sample count " + iL + " is greater than fragment sample count" + trackFragment.sampleCount, null);
        }
        if (iH == 0) {
            boolean[] zArr = trackFragment.sampleHasSubsampleEncryptionTable;
            i10 = 0;
            for (int i12 = 0; i12 < iL; i12++) {
                int iH2 = parsableByteArray.H();
                i10 += iH2;
                zArr[i12] = iH2 > i11;
            }
        } else {
            i10 = iH * iL;
            Arrays.fill(trackFragment.sampleHasSubsampleEncryptionTable, 0, iL, iH > i11);
        }
        Arrays.fill(trackFragment.sampleHasSubsampleEncryptionTable, iL, trackFragment.sampleCount, false);
        if (i10 > 0) {
            trackFragment.d(i10);
        }
    }

    private static void x(Atom.ContainerAtom containerAtom, @Nullable String str, TrackFragment trackFragment) throws ParserException {
        byte[] bArr = null;
        ParsableByteArray parsableByteArray = null;
        ParsableByteArray parsableByteArray2 = null;
        for (int i10 = 0; i10 < containerAtom.leafChildren.size(); i10++) {
            Atom.LeafAtom leafAtom = containerAtom.leafChildren.get(i10);
            ParsableByteArray parsableByteArray3 = leafAtom.data;
            int i11 = leafAtom.type;
            if (i11 == 1935828848) {
                parsableByteArray3.U(12);
                if (parsableByteArray3.q() == SAMPLE_GROUP_TYPE_seig) {
                    parsableByteArray = parsableByteArray3;
                }
            } else if (i11 == 1936158820) {
                parsableByteArray3.U(12);
                if (parsableByteArray3.q() == SAMPLE_GROUP_TYPE_seig) {
                    parsableByteArray2 = parsableByteArray3;
                }
            }
        }
        if (parsableByteArray == null || parsableByteArray2 == null) {
            return;
        }
        parsableByteArray.U(8);
        int iC = Atom.c(parsableByteArray.q());
        parsableByteArray.V(4);
        if (iC == 1) {
            parsableByteArray.V(4);
        }
        if (parsableByteArray.q() != 1) {
            throw ParserException.d("Entry count in sbgp != 1 (unsupported).");
        }
        parsableByteArray2.U(8);
        int iC2 = Atom.c(parsableByteArray2.q());
        parsableByteArray2.V(4);
        if (iC2 == 1) {
            if (parsableByteArray2.J() == 0) {
                throw ParserException.d("Variable length description in sgpd found (unsupported)");
            }
        } else if (iC2 >= 2) {
            parsableByteArray2.V(4);
        }
        if (parsableByteArray2.J() != 1) {
            throw ParserException.d("Entry count in sgpd != 1 (unsupported).");
        }
        parsableByteArray2.V(1);
        int iH = parsableByteArray2.H();
        int i12 = (iH & 240) >> 4;
        int i13 = iH & 15;
        boolean z6 = parsableByteArray2.H() == 1;
        if (z6) {
            int iH2 = parsableByteArray2.H();
            byte[] bArr2 = new byte[16];
            parsableByteArray2.l(bArr2, 0, 16);
            if (iH2 == 0) {
                int iH3 = parsableByteArray2.H();
                bArr = new byte[iH3];
                parsableByteArray2.l(bArr, 0, iH3);
            }
            trackFragment.definesEncryptionData = true;
            trackFragment.trackEncryptionBox = new TrackEncryptionBox(z6, str, iH2, bArr2, i12, i13, bArr);
        }
    }

    private static void y(ParsableByteArray parsableByteArray, int i10, TrackFragment trackFragment) throws ParserException {
        parsableByteArray.U(i10 + 8);
        int iB = Atom.b(parsableByteArray.q());
        if ((iB & 1) != 0) {
            throw ParserException.d("Overriding TrackEncryptionBox parameters is unsupported.");
        }
        boolean z6 = (iB & 2) != 0;
        int iL = parsableByteArray.L();
        if (iL == 0) {
            Arrays.fill(trackFragment.sampleHasSubsampleEncryptionTable, 0, trackFragment.sampleCount, false);
            return;
        }
        if (iL == trackFragment.sampleCount) {
            Arrays.fill(trackFragment.sampleHasSubsampleEncryptionTable, 0, iL, z6);
            trackFragment.d(parsableByteArray.a());
            trackFragment.a(parsableByteArray);
        } else {
            throw ParserException.a("Senc sample count " + iL + " is different from fragment sample count" + trackFragment.sampleCount, null);
        }
    }

    @Override // androidx.media3.extractor.Extractor
    public void b(ExtractorOutput extractorOutput) {
        this.extractorOutput = extractorOutput;
        f();
        j();
        Track track = this.sideloadedTrack;
        if (track != null) {
            this.trackBundles.put(0, new TrackBundle(extractorOutput.track(0, track.type), new TrackSampleTable(this.sideloadedTrack, new long[0], new int[0], 0, new long[0], new int[0], 0L), new DefaultSampleValues(0, 0, 0, 0)));
            this.extractorOutput.endTracks();
        }
    }

    @Override // androidx.media3.extractor.Extractor
    public int c(ExtractorInput extractorInput, PositionHolder positionHolder) throws IOException {
        while (true) {
            int i10 = this.parserState;
            if (i10 != 0) {
                if (i10 == 1) {
                    K(extractorInput);
                } else if (i10 == 2) {
                    L(extractorInput);
                } else if (M(extractorInput)) {
                    return 0;
                }
            } else if (!J(extractorInput)) {
                return -1;
            }
        }
    }

    @Override // androidx.media3.extractor.Extractor
    public void seek(long j6, long j10) {
        int size = this.trackBundles.size();
        for (int i10 = 0; i10 < size; i10++) {
            this.trackBundles.valueAt(i10).k();
        }
        this.pendingMetadataSampleInfos.clear();
        this.pendingMetadataSampleBytes = 0;
        this.pendingSeekTimeUs = j10;
        this.containerAtoms.clear();
        f();
    }

    public FragmentedMp4Extractor(int i10, @Nullable TimestampAdjuster timestampAdjuster) {
        this(i10, timestampAdjuster, null, Collections.emptyList());
    }

    private static void D(Atom.ContainerAtom containerAtom, SparseArray<TrackBundle> sparseArray, boolean z6, int i10, byte[] bArr) throws ParserException {
        String str;
        TrackBundle trackBundleC = C(((Atom.LeafAtom) Assertions.e(containerAtom.g(1952868452))).data, sparseArray, z6);
        if (trackBundleC == null) {
            return;
        }
        TrackFragment trackFragment = trackBundleC.fragment;
        long j6 = trackFragment.nextFragmentDecodeTime;
        boolean z10 = trackFragment.nextFragmentDecodeTimeIncludesMoov;
        trackBundleC.k();
        trackBundleC.currentlyInFragment = true;
        Atom.LeafAtom leafAtomG = containerAtom.g(1952867444);
        if (leafAtomG != null && (i10 & 2) == 0) {
            trackFragment.nextFragmentDecodeTime = B(leafAtomG.data);
            trackFragment.nextFragmentDecodeTimeIncludesMoov = true;
        } else {
            trackFragment.nextFragmentDecodeTime = j6;
            trackFragment.nextFragmentDecodeTimeIncludesMoov = z10;
        }
        G(containerAtom, trackBundleC, i10);
        TrackEncryptionBox trackEncryptionBoxA = trackBundleC.moovSampleTable.track.a(((DefaultSampleValues) Assertions.e(trackFragment.header)).sampleDescriptionIndex);
        Atom.LeafAtom leafAtomG2 = containerAtom.g(1935763834);
        if (leafAtomG2 != null) {
            w((TrackEncryptionBox) Assertions.e(trackEncryptionBoxA), leafAtomG2.data, trackFragment);
        }
        Atom.LeafAtom leafAtomG3 = containerAtom.g(1935763823);
        if (leafAtomG3 != null) {
            v(leafAtomG3.data, trackFragment);
        }
        Atom.LeafAtom leafAtomG4 = containerAtom.g(1936027235);
        if (leafAtomG4 != null) {
            z(leafAtomG4.data, trackFragment);
        }
        if (trackEncryptionBoxA != null) {
            str = trackEncryptionBoxA.schemeType;
        } else {
            str = null;
        }
        x(containerAtom, str, trackFragment);
        int size = containerAtom.leafChildren.size();
        for (int i11 = 0; i11 < size; i11++) {
            Atom.LeafAtom leafAtom = containerAtom.leafChildren.get(i11);
            if (leafAtom.type == 1970628964) {
                H(leafAtom.data, trackFragment, bArr);
            }
        }
    }

    private DefaultSampleValues g(SparseArray<DefaultSampleValues> sparseArray, int i10) {
        if (sparseArray.size() == 1) {
            return sparseArray.valueAt(0);
        }
        return (DefaultSampleValues) Assertions.e(sparseArray.get(i10));
    }

    @Nullable
    private static DrmInitData h(List<Atom.LeafAtom> list) {
        int size = list.size();
        ArrayList arrayList = null;
        for (int i10 = 0; i10 < size; i10++) {
            Atom.LeafAtom leafAtom = list.get(i10);
            if (leafAtom.type == 1886614376) {
                if (arrayList == null) {
                    arrayList = new ArrayList();
                }
                byte[] bArrE = leafAtom.data.e();
                UUID uuidF = PsshAtomUtil.f(bArrE);
                if (uuidF == null) {
                    Log.i(TAG, "Skipped pssh atom (failed to extract uuid)");
                } else {
                    arrayList.add(new DrmInitData.SchemeData(uuidF, "video/mp4", bArrE));
                }
            }
        }
        if (arrayList == null) {
            return null;
        }
        return new DrmInitData(arrayList);
    }

    @Nullable
    private static TrackBundle i(SparseArray<TrackBundle> sparseArray) {
        int size = sparseArray.size();
        TrackBundle trackBundle = null;
        long j6 = Long.MAX_VALUE;
        for (int i10 = 0; i10 < size; i10++) {
            TrackBundle trackBundleValueAt = sparseArray.valueAt(i10);
            if ((trackBundleValueAt.currentlyInFragment || trackBundleValueAt.currentSampleIndex != trackBundleValueAt.moovSampleTable.sampleCount) && (!trackBundleValueAt.currentlyInFragment || trackBundleValueAt.currentTrackRunIndex != trackBundleValueAt.fragment.trunCount)) {
                long jD = trackBundleValueAt.d();
                if (jD < j6) {
                    trackBundle = trackBundleValueAt;
                    j6 = jD;
                }
            }
        }
        return trackBundle;
    }

    @Override // androidx.media3.extractor.Extractor
    public boolean d(ExtractorInput extractorInput) throws IOException {
        return Sniffer.b(extractorInput);
    }

    public FragmentedMp4Extractor(int i10, @Nullable TimestampAdjuster timestampAdjuster, @Nullable Track track) {
        this(i10, timestampAdjuster, track, Collections.emptyList());
    }

    public FragmentedMp4Extractor(int i10, @Nullable TimestampAdjuster timestampAdjuster, @Nullable Track track, List<Format> list) {
        this(i10, timestampAdjuster, track, list, null);
    }

    public FragmentedMp4Extractor(int i10, @Nullable TimestampAdjuster timestampAdjuster, @Nullable Track track, List<Format> list, @Nullable TrackOutput trackOutput) {
        this.flags = i10;
        this.timestampAdjuster = timestampAdjuster;
        this.sideloadedTrack = track;
        this.closedCaptionFormats = Collections.unmodifiableList(list);
        this.additionalEmsgTrackOutput = trackOutput;
        this.eventMessageEncoder = new EventMessageEncoder();
        this.atomHeader = new ParsableByteArray(16);
        this.nalStartCode = new ParsableByteArray(NalUnitUtil.NAL_START_CODE);
        this.nalPrefix = new ParsableByteArray(5);
        this.nalBuffer = new ParsableByteArray();
        byte[] bArr = new byte[16];
        this.scratchBytes = bArr;
        this.scratch = new ParsableByteArray(bArr);
        this.containerAtoms = new ArrayDeque<>();
        this.pendingMetadataSampleInfos = new ArrayDeque<>();
        this.trackBundles = new SparseArray<>();
        this.durationUs = -9223372036854775807L;
        this.pendingSeekTimeUs = -9223372036854775807L;
        this.segmentIndexEarliestPresentationTimeUs = -9223372036854775807L;
        this.extractorOutput = ExtractorOutput.PLACEHOLDER;
        this.emsgTrackOutputs = new TrackOutput[0];
        this.ceaTrackOutputs = new TrackOutput[0];
    }
}
