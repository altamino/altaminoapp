package com.google.android.exoplayer2.source;

import androidx.annotation.Nullable;

/* JADX INFO: loaded from: classes.dex */
public class z {
    public final int adGroupIndex;
    public final int adIndexInAdGroup;
    public final int nextAdGroupIndex;
    public final Object periodUid;
    public final long windowSequenceNumber;

    public z(Object obj) {
        this(obj, -1L);
    }

    public boolean b() {
        return this.adGroupIndex != -1;
    }

    public boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof z)) {
            return false;
        }
        z zVar = (z) obj;
        return this.periodUid.equals(zVar.periodUid) && this.adGroupIndex == zVar.adGroupIndex && this.adIndexInAdGroup == zVar.adIndexInAdGroup && this.windowSequenceNumber == zVar.windowSequenceNumber && this.nextAdGroupIndex == zVar.nextAdGroupIndex;
    }

    public z(Object obj, long j6) {
        this(obj, -1, -1, j6, -1);
    }

    public z a(Object obj) {
        return this.periodUid.equals(obj) ? this : new z(obj, this.adGroupIndex, this.adIndexInAdGroup, this.windowSequenceNumber, this.nextAdGroupIndex);
    }

    public int hashCode() {
        return ((((((((527 + this.periodUid.hashCode()) * 31) + this.adGroupIndex) * 31) + this.adIndexInAdGroup) * 31) + ((int) this.windowSequenceNumber)) * 31) + this.nextAdGroupIndex;
    }

    public z(Object obj, long j6, int i10) {
        this(obj, -1, -1, j6, i10);
    }

    public z(Object obj, int i10, int i11, long j6) {
        this(obj, i10, i11, j6, -1);
    }

    protected z(z zVar) {
        this.periodUid = zVar.periodUid;
        this.adGroupIndex = zVar.adGroupIndex;
        this.adIndexInAdGroup = zVar.adIndexInAdGroup;
        this.windowSequenceNumber = zVar.windowSequenceNumber;
        this.nextAdGroupIndex = zVar.nextAdGroupIndex;
    }

    private z(Object obj, int i10, int i11, long j6, int i12) {
        this.periodUid = obj;
        this.adGroupIndex = i10;
        this.adIndexInAdGroup = i11;
        this.windowSequenceNumber = j6;
        this.nextAdGroupIndex = i12;
    }
}
