package com.google.android.exoplayer2.metadata.mp4;

import android.os.Parcel;
import android.os.Parcelable;
import androidx.annotation.Nullable;
import com.google.android.exoplayer2.a2;
import com.google.android.exoplayer2.metadata.Metadata;
import com.google.android.exoplayer2.n2;
import com.google.android.exoplayer2.util.o0;
import java.util.Arrays;

/* JADX INFO: loaded from: classes7.dex */
public final class MdtaMetadataEntry implements Metadata.Entry {
    public static final Parcelable.Creator<MdtaMetadataEntry> CREATOR = new a();
    public static final String KEY_ANDROID_CAPTURE_FPS = "com.android.capture.fps";
    public final String key;
    public final int localeIndicator;
    public final int typeIndicator;
    public final byte[] value;

    class a implements Parcelable.Creator<MdtaMetadataEntry> {
        @Override // android.os.Parcelable.Creator
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public MdtaMetadataEntry createFromParcel(Parcel parcel) {
            return new MdtaMetadataEntry(parcel, null);
        }

        @Override // android.os.Parcelable.Creator
        /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
        public MdtaMetadataEntry[] newArray(int i10) {
            return new MdtaMetadataEntry[i10];
        }

        a() {
        }
    }

    /* synthetic */ MdtaMetadataEntry(Parcel parcel, a aVar) {
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
        if (obj == null || MdtaMetadataEntry.class != obj.getClass()) {
            return false;
        }
        MdtaMetadataEntry mdtaMetadataEntry = (MdtaMetadataEntry) obj;
        return this.key.equals(mdtaMetadataEntry.key) && Arrays.equals(this.value, mdtaMetadataEntry.value) && this.localeIndicator == mdtaMetadataEntry.localeIndicator && this.typeIndicator == mdtaMetadataEntry.typeIndicator;
    }

    @Override // com.google.android.exoplayer2.metadata.Metadata.Entry
    public /* synthetic */ byte[] q() {
        return r2.a.a(this);
    }

    @Override // com.google.android.exoplayer2.metadata.Metadata.Entry
    public /* synthetic */ a2 r() {
        return r2.a.b(this);
    }

    public MdtaMetadataEntry(String str, byte[] bArr, int i10, int i11) {
        this.key = str;
        this.value = bArr;
        this.localeIndicator = i10;
        this.typeIndicator = i11;
    }

    public int hashCode() {
        return ((((((527 + this.key.hashCode()) * 31) + Arrays.hashCode(this.value)) * 31) + this.localeIndicator) * 31) + this.typeIndicator;
    }

    public String toString() {
        return "mdta: key=" + this.key;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i10) {
        parcel.writeString(this.key);
        parcel.writeByteArray(this.value);
        parcel.writeInt(this.localeIndicator);
        parcel.writeInt(this.typeIndicator);
    }

    private MdtaMetadataEntry(Parcel parcel) {
        this.key = (String) o0.j(parcel.readString());
        this.value = (byte[]) o0.j(parcel.createByteArray());
        this.localeIndicator = parcel.readInt();
        this.typeIndicator = parcel.readInt();
    }
}
