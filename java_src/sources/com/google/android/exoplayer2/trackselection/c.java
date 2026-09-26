package com.google.android.exoplayer2.trackselection;

import androidx.annotation.Nullable;
import com.google.android.exoplayer2.a2;
import com.google.android.exoplayer2.source.f1;
import java.util.Arrays;
import java.util.Comparator;

/* JADX INFO: loaded from: classes9.dex */
public abstract class c implements s {
    private final long[] excludeUntilTimes;
    private final a2[] formats;
    protected final f1 group;
    private int hashCode;
    protected final int length;
    protected final int[] tracks;
    private final int type;

    public c(f1 f1Var, int... iArr) {
        this(f1Var, iArr, 0);
    }

    @Override // com.google.android.exoplayer2.trackselection.s
    public /* synthetic */ void a() {
        r.a(this);
    }

    @Override // com.google.android.exoplayer2.trackselection.s
    public /* synthetic */ void b() {
        r.c(this);
    }

    @Override // com.google.android.exoplayer2.trackselection.s
    public /* synthetic */ void c(boolean z6) {
        r.b(this, z6);
    }

    @Override // com.google.android.exoplayer2.trackselection.s
    public void disable() {
    }

    @Override // com.google.android.exoplayer2.trackselection.s
    public void enable() {
    }

    public boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || getClass() != obj.getClass()) {
            return false;
        }
        c cVar = (c) obj;
        return this.group == cVar.group && Arrays.equals(this.tracks, cVar.tracks);
    }

    @Override // com.google.android.exoplayer2.trackselection.v
    public final f1 getTrackGroup() {
        return this.group;
    }

    @Override // com.google.android.exoplayer2.trackselection.v
    public final int indexOf(int i10) {
        for (int i11 = 0; i11 < this.length; i11++) {
            if (this.tracks[i11] == i10) {
                return i11;
            }
        }
        return -1;
    }

    @Override // com.google.android.exoplayer2.trackselection.s
    public void onPlaybackSpeed(float f) {
    }

    public c(f1 f1Var, int[] iArr, int i10) {
        int i11 = 0;
        com.google.android.exoplayer2.util.a.g(iArr.length > 0);
        this.type = i10;
        this.group = (f1) com.google.android.exoplayer2.util.a.e(f1Var);
        int length = iArr.length;
        this.length = length;
        this.formats = new a2[length];
        for (int i12 = 0; i12 < iArr.length; i12++) {
            this.formats[i12] = f1Var.c(iArr[i12]);
        }
        Arrays.sort(this.formats, new Comparator() { // from class: com.google.android.exoplayer2.trackselection.b
            @Override // java.util.Comparator
            public final int compare(Object obj, Object obj2) {
                return c.e((a2) obj, (a2) obj2);
            }
        });
        this.tracks = new int[this.length];
        while (true) {
            int i13 = this.length;
            if (i11 >= i13) {
                this.excludeUntilTimes = new long[i13];
                return;
            } else {
                this.tracks[i11] = f1Var.d(this.formats[i11]);
                i11++;
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ int e(a2 a2Var, a2 a2Var2) {
        return a2Var2.bitrate - a2Var.bitrate;
    }

    @Override // com.google.android.exoplayer2.trackselection.v
    public final a2 getFormat(int i10) {
        return this.formats[i10];
    }

    @Override // com.google.android.exoplayer2.trackselection.v
    public final int getIndexInTrackGroup(int i10) {
        return this.tracks[i10];
    }

    @Override // com.google.android.exoplayer2.trackselection.s
    public final a2 getSelectedFormat() {
        return this.formats[getSelectedIndex()];
    }

    public int hashCode() {
        if (this.hashCode == 0) {
            this.hashCode = (System.identityHashCode(this.group) * 31) + Arrays.hashCode(this.tracks);
        }
        return this.hashCode;
    }

    @Override // com.google.android.exoplayer2.trackselection.v
    public final int length() {
        return this.tracks.length;
    }
}
