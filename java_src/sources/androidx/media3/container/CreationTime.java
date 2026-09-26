package androidx.media3.container;

import android.os.Parcel;
import android.os.Parcelable;
import androidx.annotation.Nullable;
import androidx.media3.common.Format;
import androidx.media3.common.MediaMetadata;
import androidx.media3.common.Metadata;
import androidx.media3.common.util.UnstableApi;
import androidx.media3.common.x;
import com.google.common.primitives.g;

/* JADX INFO: loaded from: classes8.dex */
@UnstableApi
public final class CreationTime implements Metadata.Entry {
    public static final Parcelable.Creator<CreationTime> CREATOR = new Parcelable.Creator<CreationTime>() { // from class: androidx.media3.container.CreationTime.1
        @Override // android.os.Parcelable.Creator
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public CreationTime createFromParcel(Parcel parcel) {
            return new CreationTime(parcel);
        }

        @Override // android.os.Parcelable.Creator
        /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
        public CreationTime[] newArray(int i10) {
            return new CreationTime[i10];
        }
    };
    public final long timestampMs;

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        return (obj instanceof CreationTime) && this.timestampMs == ((CreationTime) obj).timestampMs;
    }

    @Override // androidx.media3.common.Metadata.Entry
    public /* synthetic */ void k0(MediaMetadata.Builder builder) {
        x.c(this, builder);
    }

    @Override // androidx.media3.common.Metadata.Entry
    public /* synthetic */ byte[] q() {
        return x.a(this);
    }

    @Override // androidx.media3.common.Metadata.Entry
    public /* synthetic */ Format r() {
        return x.b(this);
    }

    public CreationTime(long j6) {
        this.timestampMs = j6;
    }

    public int hashCode() {
        return g.b(this.timestampMs);
    }

    public String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append("Creation time: ");
        long j6 = this.timestampMs;
        sb.append(j6 == -2082844800000L ? "unset" : Long.valueOf(j6));
        return sb.toString();
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i10) {
        parcel.writeLong(this.timestampMs);
    }

    private CreationTime(Parcel parcel) {
        this.timestampMs = parcel.readLong();
    }
}
