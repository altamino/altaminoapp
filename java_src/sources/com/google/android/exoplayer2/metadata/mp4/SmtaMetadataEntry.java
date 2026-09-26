package com.google.android.exoplayer2.metadata.mp4;

import android.os.Parcel;
import android.os.Parcelable;
import androidx.annotation.Nullable;
import com.google.android.exoplayer2.a2;
import com.google.android.exoplayer2.metadata.Metadata;
import com.google.android.exoplayer2.n2;
import com.google.common.primitives.c;

/* JADX INFO: loaded from: classes7.dex */
public final class SmtaMetadataEntry implements Metadata.Entry {
    public static final Parcelable.Creator<SmtaMetadataEntry> CREATOR = new a();
    public final float captureFrameRate;
    public final int svcTemporalLayerCount;

    class a implements Parcelable.Creator<SmtaMetadataEntry> {
        @Override // android.os.Parcelable.Creator
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public SmtaMetadataEntry createFromParcel(Parcel parcel) {
            return new SmtaMetadataEntry(parcel, (a) null);
        }

        @Override // android.os.Parcelable.Creator
        /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
        public SmtaMetadataEntry[] newArray(int i10) {
            return new SmtaMetadataEntry[i10];
        }

        a() {
        }
    }

    /* synthetic */ SmtaMetadataEntry(Parcel parcel, a aVar) {
        this(parcel);
    }

    @Override // com.google.android.exoplayer2.metadata.Metadata.Entry
    public /* synthetic */ void b(n2.b bVar) {
        r2.a.c(this, bVar);
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || SmtaMetadataEntry.class != obj.getClass()) {
            return false;
        }
        SmtaMetadataEntry smtaMetadataEntry = (SmtaMetadataEntry) obj;
        return this.captureFrameRate == smtaMetadataEntry.captureFrameRate && this.svcTemporalLayerCount == smtaMetadataEntry.svcTemporalLayerCount;
    }

    @Override // com.google.android.exoplayer2.metadata.Metadata.Entry
    public /* synthetic */ byte[] q() {
        return r2.a.a(this);
    }

    @Override // com.google.android.exoplayer2.metadata.Metadata.Entry
    public /* synthetic */ a2 r() {
        return r2.a.b(this);
    }

    public SmtaMetadataEntry(float f, int i10) {
        this.captureFrameRate = f;
        this.svcTemporalLayerCount = i10;
    }

    public int hashCode() {
        return ((527 + c.a(this.captureFrameRate)) * 31) + this.svcTemporalLayerCount;
    }

    public String toString() {
        return "smta: captureFrameRate=" + this.captureFrameRate + ", svcTemporalLayerCount=" + this.svcTemporalLayerCount;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i10) {
        parcel.writeFloat(this.captureFrameRate);
        parcel.writeInt(this.svcTemporalLayerCount);
    }

    private SmtaMetadataEntry(Parcel parcel) {
        this.captureFrameRate = parcel.readFloat();
        this.svcTemporalLayerCount = parcel.readInt();
    }
}
