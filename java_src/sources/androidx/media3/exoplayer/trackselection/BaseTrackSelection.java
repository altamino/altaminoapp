package androidx.media3.exoplayer.trackselection;

import android.os.SystemClock;
import androidx.annotation.Nullable;
import androidx.media3.common.Format;
import androidx.media3.common.TrackGroup;
import androidx.media3.common.util.Assertions;
import androidx.media3.common.util.UnstableApi;
import androidx.media3.common.util.Util;
import androidx.media3.exoplayer.source.chunk.Chunk;
import androidx.media3.exoplayer.source.chunk.MediaChunk;
import java.util.Arrays;
import java.util.Comparator;
import java.util.List;

/* JADX INFO: loaded from: classes4.dex */
@UnstableApi
public abstract class BaseTrackSelection implements ExoTrackSelection {
    private final long[] excludeUntilTimes;
    private final Format[] formats;
    protected final TrackGroup group;
    private int hashCode;
    protected final int length;
    protected final int[] tracks;
    private final int type;

    public BaseTrackSelection(TrackGroup trackGroup, int... iArr) {
        this(trackGroup, iArr, 0);
    }

    @Override // androidx.media3.exoplayer.trackselection.ExoTrackSelection
    public /* synthetic */ void a() {
        v.b(this);
    }

    @Override // androidx.media3.exoplayer.trackselection.ExoTrackSelection
    public /* synthetic */ void b() {
        v.d(this);
    }

    @Override // androidx.media3.exoplayer.trackselection.ExoTrackSelection
    public /* synthetic */ void c(boolean z6) {
        v.c(this, z6);
    }

    @Override // androidx.media3.exoplayer.trackselection.ExoTrackSelection
    public /* synthetic */ long d() {
        return v.a(this);
    }

    @Override // androidx.media3.exoplayer.trackselection.ExoTrackSelection
    public void disable() {
    }

    @Override // androidx.media3.exoplayer.trackselection.ExoTrackSelection
    public void enable() {
    }

    public boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || getClass() != obj.getClass()) {
            return false;
        }
        BaseTrackSelection baseTrackSelection = (BaseTrackSelection) obj;
        return this.group == baseTrackSelection.group && Arrays.equals(this.tracks, baseTrackSelection.tracks);
    }

    @Override // androidx.media3.exoplayer.trackselection.ExoTrackSelection
    public /* synthetic */ boolean g(long j6, Chunk chunk, List list) {
        return v.e(this, j6, chunk, list);
    }

    @Override // androidx.media3.exoplayer.trackselection.TrackSelection
    public final TrackGroup getTrackGroup() {
        return this.group;
    }

    @Override // androidx.media3.exoplayer.trackselection.TrackSelection
    public final int h(Format format) {
        for (int i10 = 0; i10 < this.length; i10++) {
            if (this.formats[i10] == format) {
                return i10;
            }
        }
        return -1;
    }

    @Override // androidx.media3.exoplayer.trackselection.TrackSelection
    public final int indexOf(int i10) {
        for (int i11 = 0; i11 < this.length; i11++) {
            if (this.tracks[i11] == i10) {
                return i11;
            }
        }
        return -1;
    }

    @Override // androidx.media3.exoplayer.trackselection.ExoTrackSelection
    public void onPlaybackSpeed(float f) {
    }

    public BaseTrackSelection(TrackGroup trackGroup, int[] iArr, int i10) {
        int i11 = 0;
        Assertions.g(iArr.length > 0);
        this.type = i10;
        this.group = (TrackGroup) Assertions.e(trackGroup);
        int length = iArr.length;
        this.length = length;
        this.formats = new Format[length];
        for (int i12 = 0; i12 < iArr.length; i12++) {
            this.formats[i12] = trackGroup.c(iArr[i12]);
        }
        Arrays.sort(this.formats, new Comparator() { // from class: androidx.media3.exoplayer.trackselection.a
            @Override // java.util.Comparator
            public final int compare(Object obj, Object obj2) {
                return BaseTrackSelection.k((Format) obj, (Format) obj2);
            }
        });
        this.tracks = new int[this.length];
        while (true) {
            int i13 = this.length;
            if (i11 >= i13) {
                this.excludeUntilTimes = new long[i13];
                return;
            } else {
                this.tracks[i11] = trackGroup.d(this.formats[i11]);
                i11++;
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ int k(Format format, Format format2) {
        return format2.bitrate - format.bitrate;
    }

    @Override // androidx.media3.exoplayer.trackselection.ExoTrackSelection
    public boolean e(int i10, long j6) {
        return this.excludeUntilTimes[i10] > j6;
    }

    @Override // androidx.media3.exoplayer.trackselection.TrackSelection
    public final Format getFormat(int i10) {
        return this.formats[i10];
    }

    @Override // androidx.media3.exoplayer.trackselection.TrackSelection
    public final int getIndexInTrackGroup(int i10) {
        return this.tracks[i10];
    }

    @Override // androidx.media3.exoplayer.trackselection.ExoTrackSelection
    public final Format getSelectedFormat() {
        return this.formats[getSelectedIndex()];
    }

    @Override // androidx.media3.exoplayer.trackselection.ExoTrackSelection
    public final int getSelectedIndexInTrackGroup() {
        return this.tracks[getSelectedIndex()];
    }

    public int hashCode() {
        if (this.hashCode == 0) {
            this.hashCode = (System.identityHashCode(this.group) * 31) + Arrays.hashCode(this.tracks);
        }
        return this.hashCode;
    }

    @Override // androidx.media3.exoplayer.trackselection.TrackSelection
    public final int length() {
        return this.tracks.length;
    }

    @Override // androidx.media3.exoplayer.trackselection.ExoTrackSelection
    public int evaluateQueueSize(long j6, List<? extends MediaChunk> list) {
        return list.size();
    }

    @Override // androidx.media3.exoplayer.trackselection.ExoTrackSelection
    public boolean f(int i10, long j6) {
        long jElapsedRealtime = SystemClock.elapsedRealtime();
        boolean zE = e(i10, jElapsedRealtime);
        for (int i11 = 0; i11 < this.length && !zE; i11++) {
            if (i11 != i10 && !e(i11, jElapsedRealtime)) {
                zE = true;
            } else {
                zE = false;
            }
        }
        if (!zE) {
            return false;
        }
        long[] jArr = this.excludeUntilTimes;
        jArr[i10] = Math.max(jArr[i10], Util.b(jElapsedRealtime, j6, Long.MAX_VALUE));
        return true;
    }
}
