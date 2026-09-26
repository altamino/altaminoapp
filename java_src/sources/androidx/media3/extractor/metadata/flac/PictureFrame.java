package androidx.media3.extractor.metadata.flac;

import android.os.Parcel;
import android.os.Parcelable;
import androidx.annotation.Nullable;
import androidx.media3.common.Format;
import androidx.media3.common.MediaMetadata;
import androidx.media3.common.Metadata;
import androidx.media3.common.util.ParsableByteArray;
import androidx.media3.common.util.UnstableApi;
import androidx.media3.common.util.Util;
import androidx.media3.common.x;
import com.google.common.base.e;
import java.util.Arrays;

/* JADX INFO: loaded from: classes5.dex */
@UnstableApi
public final class PictureFrame implements Metadata.Entry {
    public static final Parcelable.Creator<PictureFrame> CREATOR = new Parcelable.Creator<PictureFrame>() { // from class: androidx.media3.extractor.metadata.flac.PictureFrame.1
        @Override // android.os.Parcelable.Creator
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public PictureFrame createFromParcel(Parcel parcel) {
            return new PictureFrame(parcel);
        }

        @Override // android.os.Parcelable.Creator
        /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
        public PictureFrame[] newArray(int i10) {
            return new PictureFrame[i10];
        }
    };
    public final int colors;
    public final int depth;
    public final String description;
    public final int height;
    public final String mimeType;
    public final byte[] pictureData;
    public final int pictureType;
    public final int width;

    public PictureFrame(int i10, String str, String str2, int i11, int i12, int i13, int i14, byte[] bArr) {
        this.pictureType = i10;
        this.mimeType = str;
        this.description = str2;
        this.width = i11;
        this.height = i12;
        this.depth = i13;
        this.colors = i14;
        this.pictureData = bArr;
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || PictureFrame.class != obj.getClass()) {
            return false;
        }
        PictureFrame pictureFrame = (PictureFrame) obj;
        return this.pictureType == pictureFrame.pictureType && this.mimeType.equals(pictureFrame.mimeType) && this.description.equals(pictureFrame.description) && this.width == pictureFrame.width && this.height == pictureFrame.height && this.depth == pictureFrame.depth && this.colors == pictureFrame.colors && Arrays.equals(this.pictureData, pictureFrame.pictureData);
    }

    @Override // androidx.media3.common.Metadata.Entry
    public /* synthetic */ byte[] q() {
        return x.a(this);
    }

    @Override // androidx.media3.common.Metadata.Entry
    public /* synthetic */ Format r() {
        return x.b(this);
    }

    PictureFrame(Parcel parcel) {
        this.pictureType = parcel.readInt();
        this.mimeType = (String) Util.j(parcel.readString());
        this.description = (String) Util.j(parcel.readString());
        this.width = parcel.readInt();
        this.height = parcel.readInt();
        this.depth = parcel.readInt();
        this.colors = parcel.readInt();
        this.pictureData = (byte[]) Util.j(parcel.createByteArray());
    }

    public int hashCode() {
        return ((((((((((((((527 + this.pictureType) * 31) + this.mimeType.hashCode()) * 31) + this.description.hashCode()) * 31) + this.width) * 31) + this.height) * 31) + this.depth) * 31) + this.colors) * 31) + Arrays.hashCode(this.pictureData);
    }

    @Override // androidx.media3.common.Metadata.Entry
    public void k0(MediaMetadata.Builder builder) {
        builder.I(this.pictureData, this.pictureType);
    }

    public String toString() {
        return "Picture: mimeType=" + this.mimeType + ", description=" + this.description;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i10) {
        parcel.writeInt(this.pictureType);
        parcel.writeString(this.mimeType);
        parcel.writeString(this.description);
        parcel.writeInt(this.width);
        parcel.writeInt(this.height);
        parcel.writeInt(this.depth);
        parcel.writeInt(this.colors);
        parcel.writeByteArray(this.pictureData);
    }

    public static PictureFrame a(ParsableByteArray parsableByteArray) {
        int iQ = parsableByteArray.q();
        String strF = parsableByteArray.F(parsableByteArray.q(), e.US_ASCII);
        String strE = parsableByteArray.E(parsableByteArray.q());
        int iQ2 = parsableByteArray.q();
        int iQ3 = parsableByteArray.q();
        int iQ4 = parsableByteArray.q();
        int iQ5 = parsableByteArray.q();
        int iQ6 = parsableByteArray.q();
        byte[] bArr = new byte[iQ6];
        parsableByteArray.l(bArr, 0, iQ6);
        return new PictureFrame(iQ, strF, strE, iQ2, iQ3, iQ4, iQ5, bArr);
    }
}
