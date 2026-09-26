package androidx.media3.container;

import android.os.Parcel;
import android.os.Parcelable;
import androidx.annotation.Nullable;
import androidx.media3.common.Format;
import androidx.media3.common.MediaMetadata;
import androidx.media3.common.Metadata;
import androidx.media3.common.util.UnstableApi;
import androidx.media3.common.util.Util;
import androidx.media3.common.x;
import java.util.Arrays;

/* JADX INFO: loaded from: classes10.dex */
@UnstableApi
public final class XmpData implements Metadata.Entry {
    public static final Parcelable.Creator<XmpData> CREATOR = new Parcelable.Creator<XmpData>() { // from class: androidx.media3.container.XmpData.1
        @Override // android.os.Parcelable.Creator
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public XmpData createFromParcel(Parcel parcel) {
            return new XmpData(parcel);
        }

        @Override // android.os.Parcelable.Creator
        /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
        public XmpData[] newArray(int i10) {
            return new XmpData[i10];
        }
    };
    public final byte[] data;

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
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

    public XmpData(byte[] bArr) {
        this.data = bArr;
    }

    public boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || XmpData.class != obj.getClass()) {
            return false;
        }
        return Arrays.equals(this.data, ((XmpData) obj).data);
    }

    public int hashCode() {
        return Arrays.hashCode(this.data);
    }

    public String toString() {
        return "XMP: " + Util.l1(this.data);
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i10) {
        parcel.writeByteArray(this.data);
    }

    private XmpData(Parcel parcel) {
        this.data = (byte[]) Util.j(parcel.createByteArray());
    }
}
