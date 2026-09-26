package androidx.media3.exoplayer.hls.playlist;

import android.net.Uri;
import androidx.annotation.Nullable;
import androidx.media3.common.DrmInitData;
import androidx.media3.common.StreamKey;
import androidx.media3.common.util.UnstableApi;
import com.google.common.collect.a0;
import com.google.common.collect.b0;
import com.google.common.collect.h0;
import java.lang.annotation.Documented;
import java.lang.annotation.ElementType;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.lang.annotation.Target;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;

/* JADX INFO: loaded from: classes.dex */
@UnstableApi
public final class HlsMediaPlaylist extends HlsPlaylist {
    public static final int PLAYLIST_TYPE_EVENT = 2;
    public static final int PLAYLIST_TYPE_UNKNOWN = 0;
    public static final int PLAYLIST_TYPE_VOD = 1;
    public final int discontinuitySequence;
    public final long durationUs;
    public final boolean hasDiscontinuitySequence;
    public final boolean hasEndTag;
    public final boolean hasPositiveStartOffset;
    public final boolean hasProgramDateTime;
    public final long mediaSequence;
    public final long partTargetDurationUs;
    public final int playlistType;
    public final boolean preciseStart;

    @Nullable
    public final DrmInitData protectionSchemes;
    public final Map<Uri, RenditionReport> renditionReports;
    public final List<Segment> segments;
    public final ServerControl serverControl;
    public final long startOffsetUs;
    public final long startTimeUs;
    public final long targetDurationUs;
    public final List<Part> trailingParts;
    public final int version;

    public static final class Part extends SegmentBase {
        public final boolean isIndependent;
        public final boolean isPreload;

        public Part(String str, @Nullable Segment segment, long j6, int i10, long j10, @Nullable DrmInitData drmInitData, @Nullable String str2, @Nullable String str3, long j11, long j12, boolean z6, boolean z10, boolean z11) {
            super(str, segment, j6, i10, j10, drmInitData, str2, str3, j11, j12, z6);
            this.isIndependent = z10;
            this.isPreload = z11;
        }

        public Part b(long j6, int i10) {
            return new Part(this.url, this.initializationSegment, this.durationUs, i10, j6, this.drmInitData, this.fullSegmentEncryptionKeyUri, this.encryptionIV, this.byteRangeOffset, this.byteRangeLength, this.hasGapTag, this.isIndependent, this.isPreload);
        }
    }

    @Target({ElementType.TYPE_USE})
    @Documented
    @Retention(RetentionPolicy.SOURCE)
    public @interface PlaylistType {
    }

    public static final class Segment extends SegmentBase {
        public final List<Part> parts;
        public final String title;

        public Segment(String str, long j6, long j10, @Nullable String str2, @Nullable String str3) {
            this(str, null, "", 0L, -1, -9223372036854775807L, null, str2, str3, j6, j10, false, a0.x());
        }

        public Segment b(long j6, int i10) {
            ArrayList arrayList = new ArrayList();
            long j10 = j6;
            for (int i11 = 0; i11 < this.parts.size(); i11++) {
                Part part = this.parts.get(i11);
                arrayList.add(part.b(j10, i10));
                j10 += part.durationUs;
            }
            return new Segment(this.url, this.initializationSegment, this.title, this.durationUs, i10, j6, this.drmInitData, this.fullSegmentEncryptionKeyUri, this.encryptionIV, this.byteRangeOffset, this.byteRangeLength, this.hasGapTag, arrayList);
        }

        public Segment(String str, @Nullable Segment segment, String str2, long j6, int i10, long j10, @Nullable DrmInitData drmInitData, @Nullable String str3, @Nullable String str4, long j11, long j12, boolean z6, List<Part> list) {
            super(str, segment, j6, i10, j10, drmInitData, str3, str4, j11, j12, z6);
            this.title = str2;
            this.parts = a0.t(list);
        }
    }

    public static class SegmentBase implements Comparable<Long> {
        public final long byteRangeLength;
        public final long byteRangeOffset;

        @Nullable
        public final DrmInitData drmInitData;
        public final long durationUs;

        @Nullable
        public final String encryptionIV;

        @Nullable
        public final String fullSegmentEncryptionKeyUri;
        public final boolean hasGapTag;

        @Nullable
        public final Segment initializationSegment;
        public final int relativeDiscontinuitySequence;
        public final long relativeStartTimeUs;
        public final String url;

        private SegmentBase(String str, @Nullable Segment segment, long j6, int i10, long j10, @Nullable DrmInitData drmInitData, @Nullable String str2, @Nullable String str3, long j11, long j12, boolean z6) {
            this.url = str;
            this.initializationSegment = segment;
            this.durationUs = j6;
            this.relativeDiscontinuitySequence = i10;
            this.relativeStartTimeUs = j10;
            this.drmInitData = drmInitData;
            this.fullSegmentEncryptionKeyUri = str2;
            this.encryptionIV = str3;
            this.byteRangeOffset = j11;
            this.byteRangeLength = j12;
            this.hasGapTag = z6;
        }

        @Override // java.lang.Comparable
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public int compareTo(Long l) {
            if (this.relativeStartTimeUs > l.longValue()) {
                return 1;
            }
            return this.relativeStartTimeUs < l.longValue() ? -1 : 0;
        }
    }

    public HlsMediaPlaylist(int i10, String str, List<String> list, long j6, boolean z6, long j10, boolean z10, int i11, long j11, int i12, long j12, long j13, boolean z11, boolean z12, boolean z13, @Nullable DrmInitData drmInitData, List<Segment> list2, List<Part> list3, ServerControl serverControl, Map<Uri, RenditionReport> map) {
        super(str, list, z11);
        this.playlistType = i10;
        this.startTimeUs = j10;
        this.preciseStart = z6;
        this.hasDiscontinuitySequence = z10;
        this.discontinuitySequence = i11;
        this.mediaSequence = j11;
        this.version = i12;
        this.targetDurationUs = j12;
        this.partTargetDurationUs = j13;
        this.hasEndTag = z12;
        this.hasProgramDateTime = z13;
        this.protectionSchemes = drmInitData;
        this.segments = a0.t(list2);
        this.trailingParts = a0.t(list3);
        this.renditionReports = b0.f(map);
        if (!list3.isEmpty()) {
            Part part = (Part) h0.e(list3);
            this.durationUs = part.relativeStartTimeUs + part.durationUs;
        } else if (list2.isEmpty()) {
            this.durationUs = 0L;
        } else {
            Segment segment = (Segment) h0.e(list2);
            this.durationUs = segment.relativeStartTimeUs + segment.durationUs;
        }
        this.startOffsetUs = j6 != -9223372036854775807L ? j6 >= 0 ? Math.min(this.durationUs, j6) : Math.max(0L, this.durationUs + j6) : -9223372036854775807L;
        this.hasPositiveStartOffset = j6 >= 0;
        this.serverControl = serverControl;
    }

    @Override // androidx.media3.exoplayer.offline.FilterableManifest
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public HlsMediaPlaylist copy(List<StreamKey> list) {
        return this;
    }

    public long d() {
        return this.startTimeUs + this.durationUs;
    }

    public boolean e(@Nullable HlsMediaPlaylist hlsMediaPlaylist) {
        if (hlsMediaPlaylist == null) {
            return true;
        }
        long j6 = this.mediaSequence;
        long j10 = hlsMediaPlaylist.mediaSequence;
        if (j6 > j10) {
            return true;
        }
        if (j6 < j10) {
            return false;
        }
        int size = this.segments.size() - hlsMediaPlaylist.segments.size();
        if (size != 0) {
            return size > 0;
        }
        int size2 = this.trailingParts.size();
        int size3 = hlsMediaPlaylist.trailingParts.size();
        if (size2 <= size3) {
            return size2 == size3 && this.hasEndTag && !hlsMediaPlaylist.hasEndTag;
        }
        return true;
    }

    public static final class RenditionReport {
        public final long lastMediaSequence;
        public final int lastPartIndex;
        public final Uri playlistUri;

        public RenditionReport(Uri uri, long j6, int i10) {
            this.playlistUri = uri;
            this.lastMediaSequence = j6;
            this.lastPartIndex = i10;
        }
    }

    public static final class ServerControl {
        public final boolean canBlockReload;
        public final boolean canSkipDateRanges;
        public final long holdBackUs;
        public final long partHoldBackUs;
        public final long skipUntilUs;

        public ServerControl(long j6, boolean z6, long j10, long j11, boolean z10) {
            this.skipUntilUs = j6;
            this.canSkipDateRanges = z6;
            this.holdBackUs = j10;
            this.partHoldBackUs = j11;
            this.canBlockReload = z10;
        }
    }

    public HlsMediaPlaylist b(long j6, int i10) {
        return new HlsMediaPlaylist(this.playlistType, this.baseUri, this.tags, this.startOffsetUs, this.preciseStart, j6, true, i10, this.mediaSequence, this.version, this.targetDurationUs, this.partTargetDurationUs, this.hasIndependentSegments, this.hasEndTag, this.hasProgramDateTime, this.protectionSchemes, this.segments, this.trailingParts, this.serverControl, this.renditionReports);
    }

    public HlsMediaPlaylist c() {
        return this.hasEndTag ? this : new HlsMediaPlaylist(this.playlistType, this.baseUri, this.tags, this.startOffsetUs, this.preciseStart, this.startTimeUs, this.hasDiscontinuitySequence, this.discontinuitySequence, this.mediaSequence, this.version, this.targetDurationUs, this.partTargetDurationUs, this.hasIndependentSegments, true, this.hasProgramDateTime, this.protectionSchemes, this.segments, this.trailingParts, this.serverControl, this.renditionReports);
    }
}
