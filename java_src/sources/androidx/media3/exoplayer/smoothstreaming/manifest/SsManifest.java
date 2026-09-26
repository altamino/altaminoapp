package androidx.media3.exoplayer.smoothstreaming.manifest;

import android.net.Uri;
import androidx.annotation.Nullable;
import androidx.media3.common.Format;
import androidx.media3.common.StreamKey;
import androidx.media3.common.util.Assertions;
import androidx.media3.common.util.UnstableApi;
import androidx.media3.common.util.UriUtil;
import androidx.media3.common.util.Util;
import androidx.media3.exoplayer.offline.FilterableManifest;
import androidx.media3.extractor.mp4.TrackEncryptionBox;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import java.util.UUID;

/* JADX INFO: loaded from: classes9.dex */
@UnstableApi
public class SsManifest implements FilterableManifest<SsManifest> {
    public static final int UNSET_LOOKAHEAD = -1;
    public final long durationUs;
    public final long dvrWindowLengthUs;
    public final boolean isLive;
    public final int lookAheadCount;
    public final int majorVersion;
    public final int minorVersion;

    @Nullable
    public final ProtectionElement protectionElement;
    public final StreamElement[] streamElements;

    public static class StreamElement {
        private static final String URL_PLACEHOLDER_BITRATE_1 = "{bitrate}";
        private static final String URL_PLACEHOLDER_BITRATE_2 = "{Bitrate}";
        private static final String URL_PLACEHOLDER_START_TIME_1 = "{start time}";
        private static final String URL_PLACEHOLDER_START_TIME_2 = "{start_time}";
        private final String baseUri;
        public final int chunkCount;
        private final List<Long> chunkStartTimes;
        private final long[] chunkStartTimesUs;
        private final String chunkTemplate;
        public final int displayHeight;
        public final int displayWidth;
        public final Format[] formats;

        @Nullable
        public final String language;
        private final long lastChunkDurationUs;
        public final int maxHeight;
        public final int maxWidth;
        public final String name;
        public final String subType;
        public final long timescale;
        public final int type;

        public StreamElement(String str, String str2, int i10, String str3, long j6, String str4, int i11, int i12, int i13, int i14, @Nullable String str5, Format[] formatArr, List<Long> list, long j10) {
            this(str, str2, i10, str3, j6, str4, i11, i12, i13, i14, str5, formatArr, list, Util.Y0(list, 1000000L, j6), Util.X0(j10, 1000000L, j6));
        }

        public Uri a(int i10, int i11) {
            Assertions.g(this.formats != null);
            Assertions.g(this.chunkStartTimes != null);
            Assertions.g(i11 < this.chunkStartTimes.size());
            String string = Integer.toString(this.formats[i10].bitrate);
            String string2 = this.chunkStartTimes.get(i11).toString();
            return UriUtil.e(this.baseUri, this.chunkTemplate.replace(URL_PLACEHOLDER_BITRATE_1, string).replace(URL_PLACEHOLDER_BITRATE_2, string).replace(URL_PLACEHOLDER_START_TIME_1, string2).replace(URL_PLACEHOLDER_START_TIME_2, string2));
        }

        public StreamElement b(Format[] formatArr) {
            return new StreamElement(this.baseUri, this.chunkTemplate, this.type, this.subType, this.timescale, this.name, this.maxWidth, this.maxHeight, this.displayWidth, this.displayHeight, this.language, formatArr, this.chunkStartTimes, this.chunkStartTimesUs, this.lastChunkDurationUs);
        }

        public long c(int i10) {
            if (i10 == this.chunkCount - 1) {
                return this.lastChunkDurationUs;
            }
            long[] jArr = this.chunkStartTimesUs;
            return jArr[i10 + 1] - jArr[i10];
        }

        public int d(long j6) {
            return Util.i(this.chunkStartTimesUs, j6, true, true);
        }

        public long e(int i10) {
            return this.chunkStartTimesUs[i10];
        }

        private StreamElement(String str, String str2, int i10, String str3, long j6, String str4, int i11, int i12, int i13, int i14, @Nullable String str5, Format[] formatArr, List<Long> list, long[] jArr, long j10) {
            this.baseUri = str;
            this.chunkTemplate = str2;
            this.type = i10;
            this.subType = str3;
            this.timescale = j6;
            this.name = str4;
            this.maxWidth = i11;
            this.maxHeight = i12;
            this.displayWidth = i13;
            this.displayHeight = i14;
            this.language = str5;
            this.formats = formatArr;
            this.chunkStartTimes = list;
            this.chunkStartTimesUs = jArr;
            this.lastChunkDurationUs = j10;
            this.chunkCount = list.size();
        }
    }

    public SsManifest(int i10, int i11, long j6, long j10, long j11, int i12, boolean z6, @Nullable ProtectionElement protectionElement, StreamElement[] streamElementArr) {
        this(i10, i11, j10 == 0 ? -9223372036854775807L : Util.X0(j10, 1000000L, j6), j11 != 0 ? Util.X0(j11, 1000000L, j6) : -9223372036854775807L, i12, z6, protectionElement, streamElementArr);
    }

    public static class ProtectionElement {
        public final byte[] data;
        public final TrackEncryptionBox[] trackEncryptionBoxes;
        public final UUID uuid;

        public ProtectionElement(UUID uuid, byte[] bArr, TrackEncryptionBox[] trackEncryptionBoxArr) {
            this.uuid = uuid;
            this.data = bArr;
            this.trackEncryptionBoxes = trackEncryptionBoxArr;
        }
    }

    @Override // androidx.media3.exoplayer.offline.FilterableManifest
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public final SsManifest copy(List<StreamKey> list) {
        ArrayList arrayList = new ArrayList(list);
        Collections.sort(arrayList);
        ArrayList arrayList2 = new ArrayList();
        ArrayList arrayList3 = new ArrayList();
        StreamElement streamElement = null;
        int i10 = 0;
        while (i10 < arrayList.size()) {
            StreamKey streamKey = (StreamKey) arrayList.get(i10);
            StreamElement streamElement2 = this.streamElements[streamKey.groupIndex];
            if (streamElement2 != streamElement && streamElement != null) {
                arrayList2.add(streamElement.b((Format[]) arrayList3.toArray(new Format[0])));
                arrayList3.clear();
            }
            arrayList3.add(streamElement2.formats[streamKey.streamIndex]);
            i10++;
            streamElement = streamElement2;
        }
        if (streamElement != null) {
            arrayList2.add(streamElement.b((Format[]) arrayList3.toArray(new Format[0])));
        }
        return new SsManifest(this.majorVersion, this.minorVersion, this.durationUs, this.dvrWindowLengthUs, this.lookAheadCount, this.isLive, this.protectionElement, (StreamElement[]) arrayList2.toArray(new StreamElement[0]));
    }

    private SsManifest(int i10, int i11, long j6, long j10, int i12, boolean z6, @Nullable ProtectionElement protectionElement, StreamElement[] streamElementArr) {
        this.majorVersion = i10;
        this.minorVersion = i11;
        this.durationUs = j6;
        this.dvrWindowLengthUs = j10;
        this.lookAheadCount = i12;
        this.isLive = z6;
        this.protectionElement = protectionElement;
        this.streamElements = streamElementArr;
    }
}
