package androidx.media3.exoplayer.dash.manifest;

import android.net.Uri;
import androidx.annotation.Nullable;
import androidx.annotation.VisibleForTesting;
import androidx.media3.common.Format;
import androidx.media3.common.util.Assertions;
import androidx.media3.common.util.UnstableApi;
import androidx.media3.exoplayer.dash.DashSegmentIndex;
import com.google.common.collect.a0;
import java.util.Collections;
import java.util.List;

/* JADX INFO: loaded from: classes5.dex */
@UnstableApi
public abstract class Representation {
    public static final long REVISION_ID_DEFAULT = -1;
    public final a0<BaseUrl> baseUrls;
    public final List<Descriptor> essentialProperties;
    public final Format format;
    public final List<Descriptor> inbandEventStreams;
    private final RangedUri initializationUri;
    public final long presentationTimeOffsetUs;
    public final long revisionId;
    public final List<Descriptor> supplementalProperties;

    public static class MultiSegmentRepresentation extends Representation implements DashSegmentIndex {

        @VisibleForTesting
        final SegmentBase.MultiSegmentBase segmentBase;

        public MultiSegmentRepresentation(long j6, Format format, List<BaseUrl> list, SegmentBase.MultiSegmentBase multiSegmentBase, @Nullable List<Descriptor> list2, List<Descriptor> list3, List<Descriptor> list4) {
            super(j6, format, list, multiSegmentBase, list2, list3, list4);
            this.segmentBase = multiSegmentBase;
        }

        @Override // androidx.media3.exoplayer.dash.manifest.Representation
        @Nullable
        public String j() {
            return null;
        }

        @Override // androidx.media3.exoplayer.dash.manifest.Representation
        public DashSegmentIndex k() {
            return this;
        }

        @Override // androidx.media3.exoplayer.dash.manifest.Representation
        @Nullable
        public RangedUri l() {
            return null;
        }

        @Override // androidx.media3.exoplayer.dash.DashSegmentIndex
        public long a(long j6, long j10) {
            return this.segmentBase.h(j6, j10);
        }

        @Override // androidx.media3.exoplayer.dash.DashSegmentIndex
        public long b(long j6, long j10) {
            return this.segmentBase.d(j6, j10);
        }

        @Override // androidx.media3.exoplayer.dash.DashSegmentIndex
        public long c(long j6, long j10) {
            return this.segmentBase.f(j6, j10);
        }

        @Override // androidx.media3.exoplayer.dash.DashSegmentIndex
        public long d(long j6, long j10) {
            return this.segmentBase.i(j6, j10);
        }

        @Override // androidx.media3.exoplayer.dash.DashSegmentIndex
        public long e(long j6) {
            return this.segmentBase.g(j6);
        }

        @Override // androidx.media3.exoplayer.dash.DashSegmentIndex
        public long f() {
            return this.segmentBase.e();
        }

        @Override // androidx.media3.exoplayer.dash.DashSegmentIndex
        public RangedUri g(long j6) {
            return this.segmentBase.k(this, j6);
        }

        @Override // androidx.media3.exoplayer.dash.DashSegmentIndex
        public long getTimeUs(long j6) {
            return this.segmentBase.j(j6);
        }

        @Override // androidx.media3.exoplayer.dash.DashSegmentIndex
        public boolean h() {
            return this.segmentBase.l();
        }

        @Override // androidx.media3.exoplayer.dash.DashSegmentIndex
        public long i(long j6, long j10) {
            return this.segmentBase.c(j6, j10);
        }
    }

    public static class SingleSegmentRepresentation extends Representation {

        @Nullable
        private final String cacheKey;
        public final long contentLength;

        @Nullable
        private final RangedUri indexUri;

        @Nullable
        private final SingleSegmentIndex segmentIndex;
        public final Uri uri;

        public SingleSegmentRepresentation(long j6, Format format, List<BaseUrl> list, SegmentBase.SingleSegmentBase singleSegmentBase, @Nullable List<Descriptor> list2, List<Descriptor> list3, List<Descriptor> list4, @Nullable String str, long j10) {
            super(j6, format, list, singleSegmentBase, list2, list3, list4);
            this.uri = Uri.parse(list.get(0).url);
            RangedUri rangedUriC = singleSegmentBase.c();
            this.indexUri = rangedUriC;
            this.cacheKey = str;
            this.contentLength = j10;
            this.segmentIndex = rangedUriC != null ? null : new SingleSegmentIndex(new RangedUri(null, 0L, j10));
        }

        @Override // androidx.media3.exoplayer.dash.manifest.Representation
        @Nullable
        public String j() {
            return this.cacheKey;
        }

        @Override // androidx.media3.exoplayer.dash.manifest.Representation
        @Nullable
        public DashSegmentIndex k() {
            return this.segmentIndex;
        }

        @Override // androidx.media3.exoplayer.dash.manifest.Representation
        @Nullable
        public RangedUri l() {
            return this.indexUri;
        }
    }

    @Nullable
    public abstract String j();

    @Nullable
    public abstract DashSegmentIndex k();

    @Nullable
    public abstract RangedUri l();

    @Nullable
    public RangedUri m() {
        return this.initializationUri;
    }

    private Representation(long j6, Format format, List<BaseUrl> list, SegmentBase segmentBase, @Nullable List<Descriptor> list2, List<Descriptor> list3, List<Descriptor> list4) {
        Assertions.a(!list.isEmpty());
        this.revisionId = j6;
        this.format = format;
        this.baseUrls = a0.t(list);
        this.inbandEventStreams = list2 == null ? Collections.emptyList() : Collections.unmodifiableList(list2);
        this.essentialProperties = list3;
        this.supplementalProperties = list4;
        this.initializationUri = segmentBase.a(this);
        this.presentationTimeOffsetUs = segmentBase.b();
    }

    public static Representation n(long j6, Format format, List<BaseUrl> list, SegmentBase segmentBase, @Nullable List<Descriptor> list2, List<Descriptor> list3, List<Descriptor> list4, @Nullable String str) {
        if (segmentBase instanceof SegmentBase.SingleSegmentBase) {
            return new SingleSegmentRepresentation(j6, format, list, (SegmentBase.SingleSegmentBase) segmentBase, list2, list3, list4, str, -1L);
        }
        if (segmentBase instanceof SegmentBase.MultiSegmentBase) {
            return new MultiSegmentRepresentation(j6, format, list, (SegmentBase.MultiSegmentBase) segmentBase, list2, list3, list4);
        }
        throw new IllegalArgumentException("segmentBase must be of type SingleSegmentBase or MultiSegmentBase");
    }
}
