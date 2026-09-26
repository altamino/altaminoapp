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

/* JADX INFO: loaded from: classes6.dex */
@UnstableApi
public final class MdtaMetadataEntry implements Metadata.Entry {
    public static final Parcelable.Creator<MdtaMetadataEntry> CREATOR = new Parcelable.Creator<MdtaMetadataEntry>() { // from class: androidx.media3.container.MdtaMetadataEntry.1
        @Override // android.os.Parcelable.Creator
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public MdtaMetadataEntry createFromParcel(Parcel parcel) {
            return new MdtaMetadataEntry(parcel);
        }

        @Override // android.os.Parcelable.Creator
        /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
        public MdtaMetadataEntry[] newArray(int i10) {
            return new MdtaMetadataEntry[i10];
        }
    };
    public static final String KEY_ANDROID_CAPTURE_FPS = "com.android.capture.fps";
    public static final int TYPE_INDICATOR_FLOAT32 = 23;
    public static final int TYPE_INDICATOR_INT32 = 67;
    public static final int TYPE_INDICATOR_STRING = 1;
    public final String key;
    public final int localeIndicator;
    public final int typeIndicator;
    public final byte[] value;

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
        String strE;
        int i10 = this.typeIndicator;
        if (i10 == 1) {
            strE = Util.E(this.value);
        } else if (i10 != 23) {
            strE = i10 != 67 ? Util.l1(this.value) : String.valueOf(Util.m1(this.value));
        } else {
            strE = String.valueOf(Util.k1(this.value));
        }
        return "mdta: key=" + this.key + ", value=" + strE;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i10) {
        parcel.writeString(this.key);
        parcel.writeByteArray(this.value);
        parcel.writeInt(this.localeIndicator);
        parcel.writeInt(this.typeIndicator);
    }

    private MdtaMetadataEntry(Parcel parcel) {
        this.key = (String) Util.j(parcel.readString());
        this.value = (byte[]) Util.j(parcel.createByteArray());
        this.localeIndicator = parcel.readInt();
        this.typeIndicator = parcel.readInt();
    }
}
