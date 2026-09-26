package com.google.android.exoplayer2.metadata.id3;

import android.os.Parcel;
import android.os.Parcelable;
import androidx.annotation.Nullable;
import com.google.android.exoplayer2.n2;
import com.google.android.exoplayer2.util.o0;
import java.util.Arrays;

/* JADX INFO: loaded from: classes11.dex */
public final class ApicFrame extends Id3Frame {
    public static final Parcelable.Creator<ApicFrame> CREATOR = new a();
    public static final String ID = "APIC";

    @Nullable
    public final String description;
    public final String mimeType;
    public final byte[] pictureData;
    public final int pictureType;

    class a implements Parcelable.Creator<ApicFrame> {
        @Override // android.os.Parcelable.Creator
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public ApicFrame createFromParcel(Parcel parcel) {
            return new ApicFrame(parcel);
        }

        @Override // android.os.Parcelable.Creator
        /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
        public ApicFrame[] newArray(int i10) {
            return new ApicFrame[i10];
        }

        a() {
        }
    }

    public ApicFrame(String str, @Nullable String str2, int i10, byte[] bArr) {
        super("APIC");
        this.mimeType = str;
        this.description = str2;
        this.pictureType = i10;
        this.pictureData = bArr;
    }

    public boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || ApicFrame.class != obj.getClass()) {
            return false;
        }
        ApicFrame apicFrame = (ApicFrame) obj;
        return this.pictureType == apicFrame.pictureType && o0.c(this.mimeType, apicFrame.mimeType) && o0.c(this.description, apicFrame.description) && Arrays.equals(this.pictureData, apicFrame.pictureData);
    }

    ApicFrame(Parcel parcel) {
        super("APIC");
        this.mimeType = (String) o0.j(parcel.readString());
        this.description = parcel.readString();
        this.pictureType = parcel.readInt();
        this.pictureData = (byte[]) o0.j(parcel.createByteArray());
    }

    @Override // com.google.android.exoplayer2.metadata.id3.Id3Frame, com.google.android.exoplayer2.metadata.Metadata.Entry
    public void b(n2.b bVar) {
        bVar.G(this.pictureData, this.pictureType);
    }

    public int hashCode() {
        int i10 = (527 + this.pictureType) * 31;
        String str = this.mimeType;
        int iHashCode = (i10 + (str != null ? str.hashCode() : 0)) * 31;
        String str2 = this.description;
        return ((iHashCode + (str2 != null ? str2.hashCode() : 0)) * 31) + Arrays.hashCode(this.pictureData);
    }

    @Override // com.google.android.exoplayer2.metadata.id3.Id3Frame
    public String toString() {
        return this.id + ": mimeType=" + this.mimeType + ", description=" + this.description;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i10) {
        parcel.writeString(this.mimeType);
        parcel.writeString(this.description);
        parcel.writeInt(this.pictureType);
        parcel.writeByteArray(this.pictureData);
    }
}
