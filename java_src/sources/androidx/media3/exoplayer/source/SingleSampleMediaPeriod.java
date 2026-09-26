package androidx.media3.exoplayer.source;

import androidx.annotation.Nullable;
import androidx.media3.common.Format;
import androidx.media3.common.MimeTypes;
import androidx.media3.common.TrackGroup;
import androidx.media3.common.util.Assertions;
import androidx.media3.common.util.Log;
import androidx.media3.common.util.Util;
import androidx.media3.datasource.DataSource;
import androidx.media3.datasource.DataSourceUtil;
import androidx.media3.datasource.DataSpec;
import androidx.media3.datasource.StatsDataSource;
import androidx.media3.datasource.TransferListener;
import androidx.media3.decoder.DecoderInputBuffer;
import androidx.media3.exoplayer.FormatHolder;
import androidx.media3.exoplayer.SeekParameters;
import androidx.media3.exoplayer.trackselection.ExoTrackSelection;
import androidx.media3.exoplayer.upstream.LoadErrorHandlingPolicy;
import androidx.media3.exoplayer.upstream.Loader;
import java.io.IOException;
import java.nio.ByteBuffer;
import java.util.ArrayList;
import java.util.Arrays;

/* JADX INFO: loaded from: classes3.dex */
final class SingleSampleMediaPeriod implements MediaPeriod, Loader.Callback<SourceLoadable> {
    private static final int INITIAL_SAMPLE_SIZE = 1024;
    private static final String TAG = "SingleSampleMediaPeriod";
    private final DataSource.Factory dataSourceFactory;
    private final DataSpec dataSpec;
    private final long durationUs;
    private final MediaSourceEventListener.EventDispatcher eventDispatcher;
    final Format format;
    private final LoadErrorHandlingPolicy loadErrorHandlingPolicy;
    boolean loadingFinished;
    byte[] sampleData;
    int sampleSize;
    private final TrackGroupArray tracks;

    @Nullable
    private final TransferListener transferListener;
    final boolean treatLoadErrorsAsEndOfStream;
    private final ArrayList<SampleStreamImpl> sampleStreams = new ArrayList<>();
    final Loader loader = new Loader(TAG);

    private final class SampleStreamImpl implements SampleStream {
        private static final int STREAM_STATE_END_OF_STREAM = 2;
        private static final int STREAM_STATE_SEND_FORMAT = 0;
        private static final int STREAM_STATE_SEND_SAMPLE = 1;
        private boolean notifiedDownstreamFormat;
        private int streamState;

        private SampleStreamImpl() {
        }

        public void c() {
            if (this.streamState == 2) {
                this.streamState = 1;
            }
        }

        private void a() {
            if (this.notifiedDownstreamFormat) {
                return;
            }
            SingleSampleMediaPeriod.this.eventDispatcher.h(MimeTypes.k(SingleSampleMediaPeriod.this.format.sampleMimeType), SingleSampleMediaPeriod.this.format, 0, null, 0L);
            this.notifiedDownstreamFormat = true;
        }

        @Override // androidx.media3.exoplayer.source.SampleStream
        public boolean isReady() {
            return SingleSampleMediaPeriod.this.loadingFinished;
        }

        @Override // androidx.media3.exoplayer.source.SampleStream
        public void maybeThrowError() throws IOException {
            SingleSampleMediaPeriod singleSampleMediaPeriod = SingleSampleMediaPeriod.this;
            if (singleSampleMediaPeriod.treatLoadErrorsAsEndOfStream) {
                return;
            }
            singleSampleMediaPeriod.loader.maybeThrowError();
        }

        @Override // androidx.media3.exoplayer.source.SampleStream
        public int b(FormatHolder formatHolder, DecoderInputBuffer decoderInputBuffer, int i10) {
            a();
            SingleSampleMediaPeriod singleSampleMediaPeriod = SingleSampleMediaPeriod.this;
            boolean z6 = singleSampleMediaPeriod.loadingFinished;
            if (z6 && singleSampleMediaPeriod.sampleData == null) {
                this.streamState = 2;
            }
            int i11 = this.streamState;
            if (i11 == 2) {
                decoderInputBuffer.a(4);
                return -4;
            }
            if ((i10 & 2) == 0 && i11 != 0) {
                if (!z6) {
                    return -3;
                }
                Assertions.e(singleSampleMediaPeriod.sampleData);
                decoderInputBuffer.a(1);
                decoderInputBuffer.timeUs = 0L;
                if ((i10 & 4) == 0) {
                    decoderInputBuffer.o(SingleSampleMediaPeriod.this.sampleSize);
                    ByteBuffer byteBuffer = decoderInputBuffer.data;
                    SingleSampleMediaPeriod singleSampleMediaPeriod2 = SingleSampleMediaPeriod.this;
                    byteBuffer.put(singleSampleMediaPeriod2.sampleData, 0, singleSampleMediaPeriod2.sampleSize);
                }
                if ((i10 & 1) == 0) {
                    this.streamState = 2;
                }
                return -4;
            }
            formatHolder.format = singleSampleMediaPeriod.format;
            this.streamState = 1;
            return -5;
        }

        @Override // androidx.media3.exoplayer.source.SampleStream
        public int skipData(long j6) {
            a();
            if (j6 > 0 && this.streamState != 2) {
                this.streamState = 2;
                return 1;
            }
            return 0;
        }
    }

    static final class SourceLoadable implements Loader.Loadable {
        private final StatsDataSource dataSource;
        public final DataSpec dataSpec;
        public final long loadTaskId = LoadEventInfo.a();

        @Nullable
        private byte[] sampleData;

        @Override // androidx.media3.exoplayer.upstream.Loader.Loadable
        public void cancelLoad() {
        }

        @Override // androidx.media3.exoplayer.upstream.Loader.Loadable
        public void load() throws IOException {
            int iD;
            StatsDataSource statsDataSource;
            byte[] bArr;
            this.dataSource.g();
            try {
                this.dataSource.b(this.dataSpec);
                do {
                    iD = (int) this.dataSource.d();
                    byte[] bArr2 = this.sampleData;
                    if (bArr2 == null) {
                        this.sampleData = new byte[1024];
                    } else if (iD == bArr2.length) {
                        this.sampleData = Arrays.copyOf(bArr2, bArr2.length * 2);
                    }
                    statsDataSource = this.dataSource;
                    bArr = this.sampleData;
                } while (statsDataSource.read(bArr, iD, bArr.length - iD) != -1);
            } finally {
                DataSourceUtil.a(this.dataSource);
            }
        }

        public SourceLoadable(DataSpec dataSpec, DataSource dataSource) {
            this.dataSpec = dataSpec;
            this.dataSource = new StatsDataSource(dataSource);
        }
    }

    @Override // androidx.media3.exoplayer.source.MediaPeriod
    public long a(long j6, SeekParameters seekParameters) {
        return j6;
    }

    @Override // androidx.media3.exoplayer.source.MediaPeriod
    public long c(ExoTrackSelection[] exoTrackSelectionArr, boolean[] zArr, SampleStream[] sampleStreamArr, boolean[] zArr2, long j6) {
        for (int i10 = 0; i10 < exoTrackSelectionArr.length; i10++) {
            SampleStream sampleStream = sampleStreamArr[i10];
            if (sampleStream != null && (exoTrackSelectionArr[i10] == null || !zArr[i10])) {
                this.sampleStreams.remove(sampleStream);
                sampleStreamArr[i10] = null;
            }
            if (sampleStreamArr[i10] == null && exoTrackSelectionArr[i10] != null) {
                SampleStreamImpl sampleStreamImpl = new SampleStreamImpl();
                this.sampleStreams.add(sampleStreamImpl);
                sampleStreamArr[i10] = sampleStreamImpl;
                zArr2[i10] = true;
            }
        }
        return j6;
    }

    @Override // androidx.media3.exoplayer.source.MediaPeriod
    public void discardBuffer(long j6, boolean z6) {
    }

    @Override // androidx.media3.exoplayer.source.MediaPeriod, androidx.media3.exoplayer.source.SequenceableLoader
    public long getBufferedPositionUs() {
        return this.loadingFinished ? Long.MIN_VALUE : 0L;
    }

    @Override // androidx.media3.exoplayer.source.MediaPeriod
    public TrackGroupArray getTrackGroups() {
        return this.tracks;
    }

    @Override // androidx.media3.exoplayer.source.MediaPeriod
    public void maybeThrowPrepareError() {
    }

    @Override // androidx.media3.exoplayer.source.MediaPeriod
    public long readDiscontinuity() {
        return -9223372036854775807L;
    }

    @Override // androidx.media3.exoplayer.source.MediaPeriod, androidx.media3.exoplayer.source.SequenceableLoader
    public void reevaluateBuffer(long j6) {
    }

    @Override // androidx.media3.exoplayer.source.MediaPeriod
    public long seekToUs(long j6) {
        for (int i10 = 0; i10 < this.sampleStreams.size(); i10++) {
            this.sampleStreams.get(i10).c();
        }
        return j6;
    }

    @Override // androidx.media3.exoplayer.source.MediaPeriod, androidx.media3.exoplayer.source.SequenceableLoader
    public boolean continueLoading(long j6) {
        if (this.loadingFinished || this.loader.i() || this.loader.h()) {
            return false;
        }
        DataSource dataSourceCreateDataSource = this.dataSourceFactory.createDataSource();
        TransferListener transferListener = this.transferListener;
        if (transferListener != null) {
            dataSourceCreateDataSource.c(transferListener);
        }
        SourceLoadable sourceLoadable = new SourceLoadable(this.dataSpec, dataSourceCreateDataSource);
        this.eventDispatcher.z(new LoadEventInfo(sourceLoadable.loadTaskId, this.dataSpec, this.loader.m(sourceLoadable, this, this.loadErrorHandlingPolicy.b(1))), 1, -1, this.format, 0, null, 0L, this.durationUs);
        return true;
    }

    @Override // androidx.media3.exoplayer.upstream.Loader.Callback
    /* JADX INFO: renamed from: d, reason: merged with bridge method [inline-methods] */
    public void H(SourceLoadable sourceLoadable, long j6, long j10, boolean z6) {
        StatsDataSource statsDataSource = sourceLoadable.dataSource;
        LoadEventInfo loadEventInfo = new LoadEventInfo(sourceLoadable.loadTaskId, sourceLoadable.dataSpec, statsDataSource.e(), statsDataSource.f(), j6, j10, statsDataSource.d());
        this.loadErrorHandlingPolicy.a(sourceLoadable.loadTaskId);
        this.eventDispatcher.q(loadEventInfo, 1, -1, null, 0, null, 0L, this.durationUs);
    }

    @Override // androidx.media3.exoplayer.upstream.Loader.Callback
    /* JADX INFO: renamed from: f, reason: merged with bridge method [inline-methods] */
    public void Y(SourceLoadable sourceLoadable, long j6, long j10) {
        this.sampleSize = (int) sourceLoadable.dataSource.d();
        this.sampleData = (byte[]) Assertions.e(sourceLoadable.sampleData);
        this.loadingFinished = true;
        StatsDataSource statsDataSource = sourceLoadable.dataSource;
        LoadEventInfo loadEventInfo = new LoadEventInfo(sourceLoadable.loadTaskId, sourceLoadable.dataSpec, statsDataSource.e(), statsDataSource.f(), j6, j10, this.sampleSize);
        this.loadErrorHandlingPolicy.a(sourceLoadable.loadTaskId);
        this.eventDispatcher.t(loadEventInfo, 1, -1, this.format, 0, null, 0L, this.durationUs);
    }

    @Override // androidx.media3.exoplayer.upstream.Loader.Callback
    /* JADX INFO: renamed from: g, reason: merged with bridge method [inline-methods] */
    public Loader.LoadErrorAction w(SourceLoadable sourceLoadable, long j6, long j10, IOException iOException, int i10) {
        Loader.LoadErrorAction loadErrorActionG;
        StatsDataSource statsDataSource = sourceLoadable.dataSource;
        LoadEventInfo loadEventInfo = new LoadEventInfo(sourceLoadable.loadTaskId, sourceLoadable.dataSpec, statsDataSource.e(), statsDataSource.f(), j6, j10, statsDataSource.d());
        long jD = this.loadErrorHandlingPolicy.d(new LoadErrorHandlingPolicy.LoadErrorInfo(loadEventInfo, new MediaLoadData(1, -1, this.format, 0, null, 0L, Util.q1(this.durationUs)), iOException, i10));
        boolean z6 = jD == -9223372036854775807L || i10 >= this.loadErrorHandlingPolicy.b(1);
        if (this.treatLoadErrorsAsEndOfStream && z6) {
            Log.j(TAG, "Loading failed, treating as end-of-stream.", iOException);
            this.loadingFinished = true;
            loadErrorActionG = Loader.DONT_RETRY;
        } else {
            loadErrorActionG = jD != -9223372036854775807L ? Loader.g(false, jD) : Loader.DONT_RETRY_FATAL;
        }
        Loader.LoadErrorAction loadErrorAction = loadErrorActionG;
        boolean z10 = !loadErrorAction.c();
        this.eventDispatcher.v(loadEventInfo, 1, -1, this.format, 0, null, 0L, this.durationUs, iOException, z10);
        if (z10) {
            this.loadErrorHandlingPolicy.a(sourceLoadable.loadTaskId);
        }
        return loadErrorAction;
    }

    @Override // androidx.media3.exoplayer.source.MediaPeriod, androidx.media3.exoplayer.source.SequenceableLoader
    public long getNextLoadPositionUs() {
        return (this.loadingFinished || this.loader.i()) ? Long.MIN_VALUE : 0L;
    }

    public void h() {
        this.loader.k();
    }

    @Override // androidx.media3.exoplayer.source.MediaPeriod, androidx.media3.exoplayer.source.SequenceableLoader
    public boolean isLoading() {
        return this.loader.i();
    }

    public SingleSampleMediaPeriod(DataSpec dataSpec, DataSource.Factory factory, @Nullable TransferListener transferListener, Format format, long j6, LoadErrorHandlingPolicy loadErrorHandlingPolicy, MediaSourceEventListener.EventDispatcher eventDispatcher, boolean z6) {
        this.dataSpec = dataSpec;
        this.dataSourceFactory = factory;
        this.transferListener = transferListener;
        this.format = format;
        this.durationUs = j6;
        this.loadErrorHandlingPolicy = loadErrorHandlingPolicy;
        this.eventDispatcher = eventDispatcher;
        this.treatLoadErrorsAsEndOfStream = z6;
        this.tracks = new TrackGroupArray(new TrackGroup(format));
    }

    @Override // androidx.media3.exoplayer.source.MediaPeriod
    public void e(MediaPeriod.Callback callback, long j6) {
        callback.d(this);
    }
}
