package androidx.media3.extractor.mp4;

import android.net.Uri;
import androidx.annotation.Nullable;
import androidx.media3.common.Format;
import androidx.media3.common.Metadata;
import androidx.media3.common.ParserException;
import androidx.media3.common.util.Assertions;
import androidx.media3.common.util.ParsableByteArray;
import androidx.media3.common.util.UnstableApi;
import androidx.media3.common.util.Util;
import androidx.media3.container.NalUnitUtil;
import androidx.media3.extractor.Ac4Util;
import androidx.media3.extractor.Extractor;
import androidx.media3.extractor.ExtractorInput;
import androidx.media3.extractor.ExtractorOutput;
import androidx.media3.extractor.ExtractorsFactory;
import androidx.media3.extractor.GaplessInfoHolder;
import androidx.media3.extractor.PositionHolder;
import androidx.media3.extractor.SeekMap;
import androidx.media3.extractor.SeekPoint;
import androidx.media3.extractor.TrackOutput;
import androidx.media3.extractor.TrueHdSampleRechunker;
import androidx.media3.extractor.e;
import androidx.media3.extractor.metadata.mp4.MotionPhotoMetadata;
import com.google.common.base.g;
import java.io.IOException;
import java.lang.annotation.Documented;
import java.lang.annotation.ElementType;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.lang.annotation.Target;
import java.util.ArrayDeque;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;

/* JADX INFO: loaded from: classes8.dex */
@UnstableApi
public final class Mp4Extractor implements Extractor, SeekMap {
    public static final ExtractorsFactory FACTORY = new ExtractorsFactory() { // from class: androidx.media3.extractor.mp4.c
        @Override // androidx.media3.extractor.ExtractorsFactory
        public /* synthetic */ Extractor[] a(Uri uri, Map map) {
            return e.a(this, uri, map);
        }

        @Override // androidx.media3.extractor.ExtractorsFactory
        public final Extractor[] createExtractors() {
            return Mp4Extractor.n();
        }
    };
    private static final int FILE_TYPE_HEIC = 2;
    private static final int FILE_TYPE_MP4 = 0;
    private static final int FILE_TYPE_QUICKTIME = 1;
    public static final int FLAG_READ_MOTION_PHOTO_METADATA = 2;
    public static final int FLAG_READ_SEF_DATA = 4;
    public static final int FLAG_WORKAROUND_IGNORE_EDIT_LISTS = 1;
    private static final long MAXIMUM_READ_AHEAD_BYTES_STREAM = 10485760;
    private static final long RELOAD_MINIMUM_SEEK_DISTANCE = 262144;
    private static final int STATE_READING_ATOM_HEADER = 0;
    private static final int STATE_READING_ATOM_PAYLOAD = 1;
    private static final int STATE_READING_SAMPLE = 2;
    private static final int STATE_READING_SEF = 3;
    private long[][] accumulatedSampleSizes;

    @Nullable
    private ParsableByteArray atomData;
    private final ParsableByteArray atomHeader;
    private int atomHeaderBytesRead;
    private long atomSize;
    private int atomType;
    private final ArrayDeque<Atom.ContainerAtom> containerAtoms;
    private long durationUs;
    private ExtractorOutput extractorOutput;
    private int fileType;
    private int firstVideoTrackIndex;
    private final int flags;

    @Nullable
    private MotionPhotoMetadata motionPhotoMetadata;
    private final ParsableByteArray nalLength;
    private final ParsableByteArray nalStartCode;
    private int parserState;
    private int sampleBytesRead;
    private int sampleBytesWritten;
    private int sampleCurrentNalBytesRemaining;
    private int sampleTrackIndex;
    private final ParsableByteArray scratch;
    private final SefReader sefReader;
    private final List<Metadata.Entry> slowMotionMetadataEntries;
    private Mp4Track[] tracks;

    @Target({ElementType.TYPE_USE})
    @Documented
    @Retention(RetentionPolicy.SOURCE)
    public @interface Flags {
    }

    public Mp4Extractor() {
        this(0);
    }

    private static boolean A(int i10) {
        return i10 == 1835296868 || i10 == 1836476516 || i10 == 1751411826 || i10 == 1937011556 || i10 == 1937011827 || i10 == 1937011571 || i10 == 1668576371 || i10 == 1701606260 || i10 == 1937011555 || i10 == 1937011578 || i10 == 1937013298 || i10 == 1937007471 || i10 == 1668232756 || i10 == 1953196132 || i10 == 1718909296 || i10 == 1969517665 || i10 == 1801812339 || i10 == 1768715124;
    }

    private static int g(int i10) {
        if (i10 != 1751476579) {
            return i10 != 1903435808 ? 0 : 1;
        }
        return 2;
    }

    private static long[][] h(Mp4Track[] mp4TrackArr) {
        long[][] jArr = new long[mp4TrackArr.length][];
        int[] iArr = new int[mp4TrackArr.length];
        long[] jArr2 = new long[mp4TrackArr.length];
        boolean[] zArr = new boolean[mp4TrackArr.length];
        for (int i10 = 0; i10 < mp4TrackArr.length; i10++) {
            jArr[i10] = new long[mp4TrackArr[i10].sampleTable.sampleCount];
            jArr2[i10] = mp4TrackArr[i10].sampleTable.timestampsUs[0];
        }
        long j6 = 0;
        int i11 = 0;
        while (i11 < mp4TrackArr.length) {
            long j10 = Long.MAX_VALUE;
            int i12 = -1;
            for (int i13 = 0; i13 < mp4TrackArr.length; i13++) {
                if (!zArr[i13]) {
                    long j11 = jArr2[i13];
                    if (j11 <= j10) {
                        i12 = i13;
                        j10 = j11;
                    }
                }
            }
            int i14 = iArr[i12];
            long[] jArr3 = jArr[i12];
            jArr3[i14] = j6;
            TrackSampleTable trackSampleTable = mp4TrackArr[i12].sampleTable;
            j6 += (long) trackSampleTable.sizes[i14];
            int i15 = i14 + 1;
            iArr[i12] = i15;
            if (i15 < jArr3.length) {
                jArr2[i12] = trackSampleTable.timestampsUs[i15];
            } else {
                zArr[i12] = true;
                i11++;
            }
        }
        return jArr;
    }

    private void i() {
        this.parserState = 0;
        this.atomHeaderBytesRead = 0;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ Track m(Track track) {
        return track;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ Extractor[] n() {
        return new Extractor[]{new Mp4Extractor()};
    }

    private static boolean z(int i10) {
        return i10 == 1836019574 || i10 == 1953653099 || i10 == 1835297121 || i10 == 1835626086 || i10 == 1937007212 || i10 == 1701082227 || i10 == 1835365473;
    }

    @Override // androidx.media3.extractor.Extractor
    public void b(ExtractorOutput extractorOutput) {
        this.extractorOutput = extractorOutput;
    }

    @Override // androidx.media3.extractor.SeekMap
    public long getDurationUs() {
        return this.durationUs;
    }

    @Override // androidx.media3.extractor.SeekMap
    public SeekMap.SeekPoints getSeekPoints(long j6) {
        return j(j6, -1);
    }

    @Override // androidx.media3.extractor.SeekMap
    public boolean isSeekable() {
        return true;
    }

    @Override // androidx.media3.extractor.Extractor
    public void release() {
    }

    private static final class Mp4Track {
        public int sampleIndex;
        public final TrackSampleTable sampleTable;
        public final Track track;
        public final TrackOutput trackOutput;

        @Nullable
        public final TrueHdSampleRechunker trueHdSampleRechunker;

        public Mp4Track(Track track, TrackSampleTable trackSampleTable, TrackOutput trackOutput) {
            TrueHdSampleRechunker trueHdSampleRechunker;
            this.track = track;
            this.sampleTable = trackSampleTable;
            this.trackOutput = trackOutput;
            if ("audio/true-hd".equals(track.format.sampleMimeType)) {
                trueHdSampleRechunker = new TrueHdSampleRechunker();
            } else {
                trueHdSampleRechunker = null;
            }
            this.trueHdSampleRechunker = trueHdSampleRechunker;
        }
    }

    public Mp4Extractor(int i10) {
        this.flags = i10;
        this.parserState = (i10 & 4) != 0 ? 3 : 0;
        this.sefReader = new SefReader();
        this.slowMotionMetadataEntries = new ArrayList();
        this.atomHeader = new ParsableByteArray(16);
        this.containerAtoms = new ArrayDeque<>();
        this.nalStartCode = new ParsableByteArray(NalUnitUtil.NAL_START_CODE);
        this.nalLength = new ParsableByteArray(4);
        this.scratch = new ParsableByteArray();
        this.sampleTrackIndex = -1;
        this.extractorOutput = ExtractorOutput.PLACEHOLDER;
        this.tracks = new Mp4Track[0];
    }

    private void B(Mp4Track mp4Track, long j6) {
        TrackSampleTable trackSampleTable = mp4Track.sampleTable;
        int iA = trackSampleTable.a(j6);
        if (iA == -1) {
            iA = trackSampleTable.b(j6);
        }
        mp4Track.sampleIndex = iA;
    }

    private int l(long j6) {
        int i10 = -1;
        int i11 = -1;
        int i12 = 0;
        long j10 = Long.MAX_VALUE;
        boolean z6 = true;
        long j11 = Long.MAX_VALUE;
        boolean z10 = true;
        long j12 = Long.MAX_VALUE;
        while (true) {
            Mp4Track[] mp4TrackArr = this.tracks;
            if (i12 >= mp4TrackArr.length) {
                break;
            }
            Mp4Track mp4Track = mp4TrackArr[i12];
            int i13 = mp4Track.sampleIndex;
            TrackSampleTable trackSampleTable = mp4Track.sampleTable;
            if (i13 != trackSampleTable.sampleCount) {
                long j13 = trackSampleTable.offsets[i13];
                long j14 = ((long[][]) Util.j(this.accumulatedSampleSizes))[i12][i13];
                long j15 = j13 - j6;
                boolean z11 = j15 < 0 || j15 >= 262144;
                if ((!z11 && z10) || (z11 == z10 && j15 < j12)) {
                    z10 = z11;
                    j12 = j15;
                    i11 = i12;
                    j11 = j14;
                }
                if (j14 < j10) {
                    z6 = z11;
                    i10 = i12;
                    j10 = j14;
                }
            }
            i12++;
        }
        return (j10 == Long.MAX_VALUE || !z6 || j11 < j10 + MAXIMUM_READ_AHEAD_BYTES_STREAM) ? i11 : i10;
    }

    private void p(ExtractorInput extractorInput) throws IOException {
        this.scratch.Q(8);
        extractorInput.peekFully(this.scratch.e(), 0, 8);
        AtomParsers.f(this.scratch);
        extractorInput.skipFully(this.scratch.f());
        extractorInput.resetPeekPosition();
    }

    private void q(long j6) throws ParserException {
        while (!this.containerAtoms.isEmpty() && this.containerAtoms.peek().endPosition == j6) {
            Atom.ContainerAtom containerAtomPop = this.containerAtoms.pop();
            if (containerAtomPop.type == 1836019574) {
                t(containerAtomPop);
                this.containerAtoms.clear();
                this.parserState = 2;
            } else if (!this.containerAtoms.isEmpty()) {
                this.containerAtoms.peek().d(containerAtomPop);
            }
        }
        if (this.parserState != 2) {
            i();
        }
    }

    private void r() {
        if (this.fileType != 2 || (this.flags & 2) == 0) {
            return;
        }
        this.extractorOutput.track(0, 4).d(new Format.Builder().Z(this.motionPhotoMetadata == null ? null : new Metadata(this.motionPhotoMetadata)).G());
        this.extractorOutput.endTracks();
        this.extractorOutput.d(new SeekMap.Unseekable(-9223372036854775807L));
    }

    private static int s(ParsableByteArray parsableByteArray) {
        parsableByteArray.U(8);
        int iG = g(parsableByteArray.q());
        if (iG != 0) {
            return iG;
        }
        parsableByteArray.V(4);
        while (parsableByteArray.a() > 0) {
            int iG2 = g(parsableByteArray.q());
            if (iG2 != 0) {
                return iG2;
            }
        }
        return 0;
    }

    private void t(Atom.ContainerAtom containerAtom) throws ParserException {
        Metadata metadata;
        Metadata metadata2;
        Metadata metadata3;
        int i10;
        ArrayList arrayList = new ArrayList();
        boolean z6 = this.fileType == 1;
        GaplessInfoHolder gaplessInfoHolder = new GaplessInfoHolder();
        Atom.LeafAtom leafAtomG = containerAtom.g(1969517665);
        if (leafAtomG != null) {
            AtomParsers.UdtaInfo udtaInfoC = AtomParsers.C(leafAtomG);
            Metadata metadata4 = udtaInfoC.metaMetadata;
            Metadata metadata5 = udtaInfoC.smtaMetadata;
            Metadata metadata6 = udtaInfoC.xyzMetadata;
            if (metadata4 != null) {
                gaplessInfoHolder.c(metadata4);
            }
            metadata = metadata6;
            metadata2 = metadata4;
            metadata3 = metadata5;
        } else {
            metadata = null;
            metadata2 = null;
            metadata3 = null;
        }
        Atom.ContainerAtom containerAtomF = containerAtom.f(1835365473);
        Metadata metadataO = containerAtomF != null ? AtomParsers.o(containerAtomF) : null;
        Metadata metadata7 = AtomParsers.q(((Atom.LeafAtom) Assertions.e(containerAtom.g(1836476516))).data).metadata;
        Metadata metadata8 = metadataO;
        List<TrackSampleTable> listB = AtomParsers.B(containerAtom, gaplessInfoHolder, -9223372036854775807L, null, (this.flags & 1) != 0, z6, new g() { // from class: androidx.media3.extractor.mp4.d
            @Override // com.google.common.base.g
            public final Object apply(Object obj) {
                return Mp4Extractor.m((Track) obj);
            }
        });
        int size = listB.size();
        long j6 = -9223372036854775807L;
        long j10 = -9223372036854775807L;
        int i11 = 0;
        int size2 = -1;
        while (i11 < size) {
            TrackSampleTable trackSampleTable = listB.get(i11);
            if (trackSampleTable.sampleCount != 0) {
                Track track = trackSampleTable.track;
                long j11 = track.durationUs;
                if (j11 == j6) {
                    j11 = trackSampleTable.durationUs;
                }
                long jMax = Math.max(j10, j11);
                Mp4Track mp4Track = new Mp4Track(track, trackSampleTable, this.extractorOutput.track(i11, track.type));
                int i12 = "audio/true-hd".equals(track.format.sampleMimeType) ? trackSampleTable.maximumSize * 16 : trackSampleTable.maximumSize + 30;
                Format.Builder builderB = track.format.b();
                builderB.Y(i12);
                if (track.type == 2 && j11 > 0 && (i10 = trackSampleTable.sampleCount) > 1) {
                    builderB.R(i10 / (j11 / 1000000.0f));
                }
                MetadataUtil.k(track.type, gaplessInfoHolder, builderB);
                int i13 = track.type;
                Metadata[] metadataArr = new Metadata[4];
                metadataArr[0] = metadata3;
                metadataArr[1] = this.slowMotionMetadataEntries.isEmpty() ? null : new Metadata(this.slowMotionMetadataEntries);
                metadataArr[2] = metadata;
                metadataArr[3] = metadata7;
                MetadataUtil.l(i13, metadata2, metadata8, builderB, metadataArr);
                mp4Track.trackOutput.d(builderB.G());
                if (track.type == 2 && size2 == -1) {
                    size2 = arrayList.size();
                }
                arrayList.add(mp4Track);
                j10 = jMax;
            }
            i11++;
            listB = listB;
            size = size;
            j6 = -9223372036854775807L;
        }
        this.firstVideoTrackIndex = size2;
        this.durationUs = j10;
        Mp4Track[] mp4TrackArr = (Mp4Track[]) arrayList.toArray(new Mp4Track[0]);
        this.tracks = mp4TrackArr;
        this.accumulatedSampleSizes = h(mp4TrackArr);
        this.extractorOutput.endTracks();
        this.extractorOutput.d(this);
    }

    private void u(long j6) {
        if (this.atomType == 1836086884) {
            int i10 = this.atomHeaderBytesRead;
            this.motionPhotoMetadata = new MotionPhotoMetadata(0L, j6, -9223372036854775807L, j6 + ((long) i10), this.atomSize - ((long) i10));
        }
    }

    private boolean v(ExtractorInput extractorInput) throws IOException {
        Atom.ContainerAtom containerAtomPeek;
        if (this.atomHeaderBytesRead == 0) {
            if (!extractorInput.readFully(this.atomHeader.e(), 0, 8, true)) {
                r();
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
            if (length == -1 && (containerAtomPeek = this.containerAtoms.peek()) != null) {
                length = containerAtomPeek.endPosition;
            }
            if (length != -1) {
                this.atomSize = (length - extractorInput.getPosition()) + ((long) this.atomHeaderBytesRead);
            }
        }
        if (this.atomSize < this.atomHeaderBytesRead) {
            throw ParserException.d("Atom size less than header length (unsupported).");
        }
        if (z(this.atomType)) {
            long position = extractorInput.getPosition();
            long j10 = this.atomSize;
            int i10 = this.atomHeaderBytesRead;
            long j11 = (position + j10) - ((long) i10);
            if (j10 != i10 && this.atomType == 1835365473) {
                p(extractorInput);
            }
            this.containerAtoms.push(new Atom.ContainerAtom(this.atomType, j11));
            if (this.atomSize == this.atomHeaderBytesRead) {
                q(j11);
            } else {
                i();
            }
        } else if (A(this.atomType)) {
            Assertions.g(this.atomHeaderBytesRead == 8);
            Assertions.g(this.atomSize <= 2147483647L);
            ParsableByteArray parsableByteArray = new ParsableByteArray((int) this.atomSize);
            System.arraycopy(this.atomHeader.e(), 0, parsableByteArray.e(), 0, 8);
            this.atomData = parsableByteArray;
            this.parserState = 1;
        } else {
            u(extractorInput.getPosition() - ((long) this.atomHeaderBytesRead));
            this.atomData = null;
            this.parserState = 1;
        }
        return true;
    }

    private boolean w(ExtractorInput extractorInput, PositionHolder positionHolder) throws IOException {
        boolean z6;
        long j6 = this.atomSize - ((long) this.atomHeaderBytesRead);
        long position = extractorInput.getPosition() + j6;
        ParsableByteArray parsableByteArray = this.atomData;
        if (parsableByteArray == null) {
            if (j6 < 262144) {
                extractorInput.skipFully((int) j6);
            } else {
                positionHolder.position = extractorInput.getPosition() + j6;
                z6 = true;
            }
            q(position);
            return (z6 || this.parserState == 2) ? false : true;
        }
        extractorInput.readFully(parsableByteArray.e(), this.atomHeaderBytesRead, (int) j6);
        if (this.atomType == 1718909296) {
            this.fileType = s(parsableByteArray);
        } else if (!this.containerAtoms.isEmpty()) {
            this.containerAtoms.peek().e(new Atom.LeafAtom(this.atomType, parsableByteArray));
        }
        z6 = false;
        q(position);
        if (z6) {
        }
    }

    private int x(ExtractorInput extractorInput, PositionHolder positionHolder) throws IOException {
        long position = extractorInput.getPosition();
        if (this.sampleTrackIndex == -1) {
            int iL = l(position);
            this.sampleTrackIndex = iL;
            if (iL == -1) {
                return -1;
            }
        }
        Mp4Track mp4Track = this.tracks[this.sampleTrackIndex];
        TrackOutput trackOutput = mp4Track.trackOutput;
        int i10 = mp4Track.sampleIndex;
        TrackSampleTable trackSampleTable = mp4Track.sampleTable;
        long j6 = trackSampleTable.offsets[i10];
        int i11 = trackSampleTable.sizes[i10];
        TrueHdSampleRechunker trueHdSampleRechunker = mp4Track.trueHdSampleRechunker;
        long j10 = (j6 - position) + ((long) this.sampleBytesRead);
        if (j10 < 0 || j10 >= 262144) {
            positionHolder.position = j6;
            return 1;
        }
        if (mp4Track.track.sampleTransformation == 1) {
            j10 += 8;
            i11 -= 8;
        }
        extractorInput.skipFully((int) j10);
        Track track = mp4Track.track;
        if (track.nalUnitLengthFieldLength == 0) {
            if ("audio/ac4".equals(track.format.sampleMimeType)) {
                if (this.sampleBytesWritten == 0) {
                    Ac4Util.a(i11, this.scratch);
                    trackOutput.b(this.scratch, 7);
                    this.sampleBytesWritten += 7;
                }
                i11 += 7;
            } else if (trueHdSampleRechunker != null) {
                trueHdSampleRechunker.d(extractorInput);
            }
            while (true) {
                int i12 = this.sampleBytesWritten;
                if (i12 >= i11) {
                    break;
                }
                int iE = trackOutput.e(extractorInput, i11 - i12, false);
                this.sampleBytesRead += iE;
                this.sampleBytesWritten += iE;
                this.sampleCurrentNalBytesRemaining -= iE;
            }
        } else {
            byte[] bArrE = this.nalLength.e();
            bArrE[0] = 0;
            bArrE[1] = 0;
            bArrE[2] = 0;
            int i13 = mp4Track.track.nalUnitLengthFieldLength;
            int i14 = 4 - i13;
            while (this.sampleBytesWritten < i11) {
                int i15 = this.sampleCurrentNalBytesRemaining;
                if (i15 == 0) {
                    extractorInput.readFully(bArrE, i14, i13);
                    this.sampleBytesRead += i13;
                    this.nalLength.U(0);
                    int iQ = this.nalLength.q();
                    if (iQ < 0) {
                        throw ParserException.a("Invalid NAL length", null);
                    }
                    this.sampleCurrentNalBytesRemaining = iQ;
                    this.nalStartCode.U(0);
                    trackOutput.b(this.nalStartCode, 4);
                    this.sampleBytesWritten += 4;
                    i11 += i14;
                } else {
                    int iE2 = trackOutput.e(extractorInput, i15, false);
                    this.sampleBytesRead += iE2;
                    this.sampleBytesWritten += iE2;
                    this.sampleCurrentNalBytesRemaining -= iE2;
                }
            }
        }
        int i16 = i11;
        TrackSampleTable trackSampleTable2 = mp4Track.sampleTable;
        long j11 = trackSampleTable2.timestampsUs[i10];
        int i17 = trackSampleTable2.flags[i10];
        if (trueHdSampleRechunker != null) {
            trueHdSampleRechunker.c(trackOutput, j11, i17, i16, 0, null);
            if (i10 + 1 == mp4Track.sampleTable.sampleCount) {
                trueHdSampleRechunker.a(trackOutput, null);
            }
        } else {
            trackOutput.f(j11, i17, i16, 0, null);
        }
        mp4Track.sampleIndex++;
        this.sampleTrackIndex = -1;
        this.sampleBytesRead = 0;
        this.sampleBytesWritten = 0;
        this.sampleCurrentNalBytesRemaining = 0;
        return 0;
    }

    private int y(ExtractorInput extractorInput, PositionHolder positionHolder) throws IOException {
        int iC = this.sefReader.c(extractorInput, positionHolder, this.slowMotionMetadataEntries);
        if (iC == 1 && positionHolder.position == 0) {
            i();
        }
        return iC;
    }

    @Override // androidx.media3.extractor.Extractor
    public int c(ExtractorInput extractorInput, PositionHolder positionHolder) throws IOException {
        while (true) {
            int i10 = this.parserState;
            if (i10 != 0) {
                if (i10 != 1) {
                    if (i10 == 2) {
                        return x(extractorInput, positionHolder);
                    }
                    if (i10 == 3) {
                        return y(extractorInput, positionHolder);
                    }
                    throw new IllegalStateException();
                }
                if (w(extractorInput, positionHolder)) {
                    return 1;
                }
            } else if (!v(extractorInput)) {
                return -1;
            }
        }
    }

    @Override // androidx.media3.extractor.Extractor
    public boolean d(ExtractorInput extractorInput) throws IOException {
        return Sniffer.d(extractorInput, (this.flags & 2) != 0);
    }

    /* JADX WARN: Code duplicated, block: B:27:0x0062  */
    /* JADX WARN: Code duplicated, block: B:30:0x0068  */
    /* JADX WARN: Code duplicated, block: B:32:0x006c  */
    /* JADX WARN: Code duplicated, block: B:34:0x0078  */
    /* JADX WARN: Code duplicated, block: B:39:0x0089  */
    /* JADX WARN: Code duplicated, block: B:41:0x008f  */
    /* JADX WARN: Code duplicated, block: B:43:0x0080 A[EDGE_INSN: B:43:0x0080->B:37:0x0080 BREAK  A[LOOP:0: B:28:0x0063->B:36:0x007d], SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:45:0x007d A[SYNTHETIC] */
    public SeekMap.SeekPoints j(long j6, int i10) {
        long j10;
        long j11;
        long jO;
        long j12;
        int i11;
        Mp4Track[] mp4TrackArr;
        TrackSampleTable trackSampleTable;
        int iB;
        Mp4Track[] mp4TrackArr2 = this.tracks;
        if (mp4TrackArr2.length == 0) {
            return new SeekMap.SeekPoints(SeekPoint.START);
        }
        int i12 = i10 != -1 ? i10 : this.firstVideoTrackIndex;
        if (i12 != -1) {
            TrackSampleTable trackSampleTable2 = mp4TrackArr2[i12].sampleTable;
            int iK = k(trackSampleTable2, j6);
            if (iK == -1) {
                return new SeekMap.SeekPoints(SeekPoint.START);
            }
            j11 = trackSampleTable2.timestampsUs[iK];
            j10 = trackSampleTable2.offsets[iK];
            if (j11 < j6 && iK < trackSampleTable2.sampleCount - 1 && (iB = trackSampleTable2.b(j6)) != -1 && iB != iK) {
                j12 = trackSampleTable2.timestampsUs[iB];
                jO = trackSampleTable2.offsets[iB];
            }
            if (i10 == -1) {
                i11 = 0;
                while (true) {
                    mp4TrackArr = this.tracks;
                    if (i11 < mp4TrackArr.length) {
                        break;
                    }
                    if (i11 != this.firstVideoTrackIndex) {
                        trackSampleTable = mp4TrackArr[i11].sampleTable;
                        long jO2 = o(trackSampleTable, j11, j10);
                        if (j12 != -9223372036854775807L) {
                            jO = o(trackSampleTable, j12, jO);
                        }
                        j10 = jO2;
                    }
                    i11++;
                }
            }
            SeekPoint seekPoint = new SeekPoint(j11, j10);
            return j12 == -9223372036854775807L ? new SeekMap.SeekPoints(seekPoint) : new SeekMap.SeekPoints(seekPoint, new SeekPoint(j12, jO));
        }
        j10 = Long.MAX_VALUE;
        j11 = j6;
        jO = -1;
        j12 = -9223372036854775807L;
        if (i10 == -1) {
            i11 = 0;
            while (true) {
                mp4TrackArr = this.tracks;
                if (i11 < mp4TrackArr.length) {
                    break;
                    break;
                }
                if (i11 != this.firstVideoTrackIndex) {
                    trackSampleTable = mp4TrackArr[i11].sampleTable;
                    long jO3 = o(trackSampleTable, j11, j10);
                    if (j12 != -9223372036854775807L) {
                        jO = o(trackSampleTable, j12, jO);
                    }
                    j10 = jO3;
                }
                i11++;
            }
        }
        SeekPoint seekPoint2 = new SeekPoint(j11, j10);
        if (j12 == -9223372036854775807L) {
        }
    }

    @Override // androidx.media3.extractor.Extractor
    public void seek(long j6, long j10) {
        this.containerAtoms.clear();
        this.atomHeaderBytesRead = 0;
        this.sampleTrackIndex = -1;
        this.sampleBytesRead = 0;
        this.sampleBytesWritten = 0;
        this.sampleCurrentNalBytesRemaining = 0;
        if (j6 == 0) {
            if (this.parserState != 3) {
                i();
                return;
            } else {
                this.sefReader.g();
                this.slowMotionMetadataEntries.clear();
                return;
            }
        }
        for (Mp4Track mp4Track : this.tracks) {
            B(mp4Track, j10);
            TrueHdSampleRechunker trueHdSampleRechunker = mp4Track.trueHdSampleRechunker;
            if (trueHdSampleRechunker != null) {
                trueHdSampleRechunker.b();
            }
        }
    }

    private static int k(TrackSampleTable trackSampleTable, long j6) {
        int iA = trackSampleTable.a(j6);
        if (iA == -1) {
            return trackSampleTable.b(j6);
        }
        return iA;
    }

    private static long o(TrackSampleTable trackSampleTable, long j6, long j10) {
        int iK = k(trackSampleTable, j6);
        if (iK == -1) {
            return j10;
        }
        return Math.min(trackSampleTable.offsets[iK], j10);
    }
}
