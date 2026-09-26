package androidx.media3.exoplayer.dash;

import android.os.Handler;
import android.os.Message;
import androidx.annotation.Nullable;
import androidx.exifinterface.media.ExifInterface;
import androidx.media3.common.DataReader;
import androidx.media3.common.Format;
import androidx.media3.common.Metadata;
import androidx.media3.common.ParserException;
import androidx.media3.common.util.ParsableByteArray;
import androidx.media3.common.util.UnstableApi;
import androidx.media3.common.util.Util;
import androidx.media3.exoplayer.FormatHolder;
import androidx.media3.exoplayer.dash.manifest.DashManifest;
import androidx.media3.exoplayer.source.SampleQueue;
import androidx.media3.exoplayer.source.chunk.Chunk;
import androidx.media3.exoplayer.upstream.Allocator;
import androidx.media3.extractor.TrackOutput;
import androidx.media3.extractor.f;
import androidx.media3.extractor.metadata.MetadataInputBuffer;
import androidx.media3.extractor.metadata.emsg.EventMessage;
import androidx.media3.extractor.metadata.emsg.EventMessageDecoder;
import java.io.IOException;
import java.util.Iterator;
import java.util.Map;
import java.util.TreeMap;

/* JADX INFO: loaded from: classes8.dex */
@UnstableApi
public final class PlayerEmsgHandler implements Handler.Callback {
    private static final int EMSG_MANIFEST_EXPIRED = 1;
    private final Allocator allocator;
    private boolean chunkLoadedCompletedSinceLastManifestRefreshRequest;
    private long expiredManifestPublishTimeUs;
    private boolean isWaitingForManifestRefresh;
    private DashManifest manifest;
    private final PlayerEmsgCallback playerEmsgCallback;
    private boolean released;
    private final TreeMap<Long, Long> manifestPublishTimeToExpiryTimeUs = new TreeMap<>();
    private final Handler handler = Util.x(this);
    private final EventMessageDecoder decoder = new EventMessageDecoder();

    public interface PlayerEmsgCallback {
        void a(long j6);

        void b();
    }

    public final class PlayerTrackEmsgHandler implements TrackOutput {
        private final SampleQueue sampleQueue;
        private final FormatHolder formatHolder = new FormatHolder();
        private final MetadataInputBuffer buffer = new MetadataInputBuffer();
        private long maxLoadedChunkEndTimeUs = -9223372036854775807L;

        @Override // androidx.media3.extractor.TrackOutput
        public /* synthetic */ void b(ParsableByteArray parsableByteArray, int i10) {
            f.b(this, parsableByteArray, i10);
        }

        @Override // androidx.media3.extractor.TrackOutput
        public /* synthetic */ int e(DataReader dataReader, int i10, boolean z6) {
            return f.a(this, dataReader, i10, z6);
        }

        PlayerTrackEmsgHandler(Allocator allocator) {
            this.sampleQueue = SampleQueue.l(allocator);
        }

        @Nullable
        private MetadataInputBuffer g() {
            this.buffer.b();
            if (this.sampleQueue.S(this.formatHolder, this.buffer, 0, false) != -4) {
                return null;
            }
            this.buffer.p();
            return this.buffer;
        }

        private void k(long j6, long j10) {
            PlayerEmsgHandler.this.handler.sendMessage(PlayerEmsgHandler.this.handler.obtainMessage(1, new ManifestExpiryEventInfo(j6, j10)));
        }

        private void l() {
            while (this.sampleQueue.K(false)) {
                MetadataInputBuffer metadataInputBufferG = g();
                if (metadataInputBufferG != null) {
                    long j6 = metadataInputBufferG.timeUs;
                    Metadata metadataA = PlayerEmsgHandler.this.decoder.a(metadataInputBufferG);
                    if (metadataA != null) {
                        EventMessage eventMessage = (EventMessage) metadataA.g(0);
                        if (PlayerEmsgHandler.h(eventMessage.schemeIdUri, eventMessage.value)) {
                            m(j6, eventMessage);
                        }
                    }
                }
            }
            this.sampleQueue.s();
        }

        @Override // androidx.media3.extractor.TrackOutput
        public void a(ParsableByteArray parsableByteArray, int i10, int i11) {
            this.sampleQueue.b(parsableByteArray, i10);
        }

        @Override // androidx.media3.extractor.TrackOutput
        public int c(DataReader dataReader, int i10, boolean z6, int i11) throws IOException {
            return this.sampleQueue.e(dataReader, i10, z6);
        }

        @Override // androidx.media3.extractor.TrackOutput
        public void d(Format format) {
            this.sampleQueue.d(format);
        }

        @Override // androidx.media3.extractor.TrackOutput
        public void f(long j6, int i10, int i11, int i12, @Nullable TrackOutput.CryptoData cryptoData) {
            this.sampleQueue.f(j6, i10, i11, i12, cryptoData);
            l();
        }

        public boolean h(long j6) {
            return PlayerEmsgHandler.this.j(j6);
        }

        public void i(Chunk chunk) {
            long j6 = this.maxLoadedChunkEndTimeUs;
            if (j6 == -9223372036854775807L || chunk.endTimeUs > j6) {
                this.maxLoadedChunkEndTimeUs = chunk.endTimeUs;
            }
            PlayerEmsgHandler.this.m(chunk);
        }

        public boolean j(Chunk chunk) {
            long j6 = this.maxLoadedChunkEndTimeUs;
            return PlayerEmsgHandler.this.n(j6 != -9223372036854775807L && j6 < chunk.startTimeUs);
        }

        public void n() {
            this.sampleQueue.T();
        }

        private void m(long j6, EventMessage eventMessage) {
            long jF = PlayerEmsgHandler.f(eventMessage);
            if (jF == -9223372036854775807L) {
                return;
            }
            k(j6, jF);
        }
    }

    void m(Chunk chunk) {
        this.chunkLoadedCompletedSinceLastManifestRefreshRequest = true;
    }

    public void o() {
        this.released = true;
        this.handler.removeCallbacksAndMessages(null);
    }

    public void q(DashManifest dashManifest) {
        this.isWaitingForManifestRefresh = false;
        this.expiredManifestPublishTimeUs = -9223372036854775807L;
        this.manifest = dashManifest;
        p();
    }

    private static final class ManifestExpiryEventInfo {
        public final long eventTimeUs;
        public final long manifestPublishTimeMsInEmsg;

        public ManifestExpiryEventInfo(long j6, long j10) {
            this.eventTimeUs = j6;
            this.manifestPublishTimeMsInEmsg = j10;
        }
    }

    @Nullable
    private Map.Entry<Long, Long> e(long j6) {
        return this.manifestPublishTimeToExpiryTimeUs.ceilingEntry(Long.valueOf(j6));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static long f(EventMessage eventMessage) {
        try {
            return Util.R0(Util.E(eventMessage.messageData));
        } catch (ParserException unused) {
            return -9223372036854775807L;
        }
    }

    private void g(long j6, long j10) {
        Long l = this.manifestPublishTimeToExpiryTimeUs.get(Long.valueOf(j10));
        if (l == null) {
            this.manifestPublishTimeToExpiryTimeUs.put(Long.valueOf(j10), Long.valueOf(j6));
        } else if (l.longValue() > j6) {
            this.manifestPublishTimeToExpiryTimeUs.put(Long.valueOf(j10), Long.valueOf(j6));
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static boolean h(String str, String str2) {
        return "urn:mpeg:dash:event:2012".equals(str) && ("1".equals(str2) || ExifInterface.GPS_MEASUREMENT_2D.equals(str2) || ExifInterface.GPS_MEASUREMENT_3D.equals(str2));
    }

    private void i() {
        if (this.chunkLoadedCompletedSinceLastManifestRefreshRequest) {
            this.isWaitingForManifestRefresh = true;
            this.chunkLoadedCompletedSinceLastManifestRefreshRequest = false;
            this.playerEmsgCallback.b();
        }
    }

    private void l() {
        this.playerEmsgCallback.a(this.expiredManifestPublishTimeUs);
    }

    private void p() {
        Iterator<Map.Entry<Long, Long>> it = this.manifestPublishTimeToExpiryTimeUs.entrySet().iterator();
        while (it.hasNext()) {
            if (it.next().getKey().longValue() < this.manifest.publishTimeMs) {
                it.remove();
            }
        }
    }

    @Override // android.os.Handler.Callback
    public boolean handleMessage(Message message) {
        if (this.released) {
            return true;
        }
        if (message.what != 1) {
            return false;
        }
        ManifestExpiryEventInfo manifestExpiryEventInfo = (ManifestExpiryEventInfo) message.obj;
        g(manifestExpiryEventInfo.eventTimeUs, manifestExpiryEventInfo.manifestPublishTimeMsInEmsg);
        return true;
    }

    boolean j(long j6) {
        DashManifest dashManifest = this.manifest;
        boolean z6 = false;
        if (!dashManifest.dynamic) {
            return false;
        }
        if (this.isWaitingForManifestRefresh) {
            return true;
        }
        Map.Entry<Long, Long> entryE = e(dashManifest.publishTimeMs);
        if (entryE != null && entryE.getValue().longValue() < j6) {
            this.expiredManifestPublishTimeUs = entryE.getKey().longValue();
            l();
            z6 = true;
        }
        if (z6) {
            i();
        }
        return z6;
    }

    public PlayerTrackEmsgHandler k() {
        return new PlayerTrackEmsgHandler(this.allocator);
    }

    boolean n(boolean z6) {
        if (!this.manifest.dynamic) {
            return false;
        }
        if (this.isWaitingForManifestRefresh) {
            return true;
        }
        if (!z6) {
            return false;
        }
        i();
        return true;
    }

    public PlayerEmsgHandler(DashManifest dashManifest, PlayerEmsgCallback playerEmsgCallback, Allocator allocator) {
        this.manifest = dashManifest;
        this.playerEmsgCallback = playerEmsgCallback;
        this.allocator = allocator;
    }
}
