package androidx.media3.common;

import android.os.Parcel;
import android.os.Parcelable;
import androidx.annotation.Nullable;
import androidx.media3.common.util.UnstableApi;
import androidx.media3.common.util.Util;
import java.util.Arrays;
import java.util.List;

/* JADX INFO: loaded from: classes5.dex */
@UnstableApi
public final class Metadata implements Parcelable {
    public static final Parcelable.Creator<Metadata> CREATOR = new Parcelable.Creator<Metadata>() { // from class: androidx.media3.common.Metadata.1
        @Override // android.os.Parcelable.Creator
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public Metadata createFromParcel(Parcel parcel) {
            return new Metadata(parcel);
        }

        @Override // android.os.Parcelable.Creator
        /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
        public Metadata[] newArray(int i10) {
            return new Metadata[i10];
        }
    };
    private final Entry[] entries;
    public final long presentationTimeUs;

    public interface Entry extends Parcelable {
        void k0(MediaMetadata.Builder builder);

        @Nullable
        byte[] q();

        @Nullable
        Format r();
    }

    public Metadata(Entry... entryArr) {
        this(-9223372036854775807L, entryArr);
    }

    public Metadata a(Entry... entryArr) {
        return entryArr.length == 0 ? this : new Metadata(this.presentationTimeUs, (Entry[]) Util.O0(this.entries, entryArr));
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || Metadata.class != obj.getClass()) {
            return false;
        }
        Metadata metadata = (Metadata) obj;
        return Arrays.equals(this.entries, metadata.entries) && this.presentationTimeUs == metadata.presentationTimeUs;
    }

    public Metadata(long j6, Entry... entryArr) {
        this.presentationTimeUs = j6;
        this.entries = entryArr;
    }

    public Metadata c(@Nullable Metadata metadata) {
        return metadata == null ? this : a(metadata.entries);
    }

    public Metadata e(long j6) {
        return this.presentationTimeUs == j6 ? this : new Metadata(j6, this.entries);
    }

    public Entry g(int i10) {
        return this.entries[i10];
    }

    public int h() {
        return this.entries.length;
    }

    public int hashCode() {
        return (Arrays.hashCode(this.entries) * 31) + com.google.common.primitives.g.b(this.presentationTimeUs);
    }

    public String toString() {
        String str;
        StringBuilder sb = new StringBuilder();
        sb.append("entries=");
        sb.append(Arrays.toString(this.entries));
        if (this.presentationTimeUs == -9223372036854775807L) {
            str = "";
        } else {
            str = ", presentationTimeUs=" + this.presentationTimeUs;
        }
        sb.append(str);
        return sb.toString();
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i10) {
        parcel.writeInt(this.entries.length);
        for (Entry entry : this.entries) {
            parcel.writeParcelable(entry, 0);
        }
        parcel.writeLong(this.presentationTimeUs);
    }

    public Metadata(List<? extends Entry> list) {
        this((Entry[]) list.toArray(new Entry[0]));
    }

    public Metadata(long j6, List<? extends Entry> list) {
        this(j6, (Entry[]) list.toArray(new Entry[0]));
    }

    Metadata(Parcel parcel) {
        this.entries = new Entry[parcel.readInt()];
        int i10 = 0;
        while (true) {
            Entry[] entryArr = this.entries;
            if (i10 < entryArr.length) {
                entryArr[i10] = (Entry) parcel.readParcelable(Entry.class.getClassLoader());
                i10++;
            } else {
                this.presentationTimeUs = parcel.readLong();
                return;
            }
        }
    }
}
