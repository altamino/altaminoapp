package androidx.media3.extractor.metadata.flac;

import android.os.Parcel;
import android.os.Parcelable;
import androidx.annotation.Nullable;
import androidx.media3.common.Format;
import androidx.media3.common.MediaMetadata;
import androidx.media3.common.Metadata;
import androidx.media3.common.util.UnstableApi;
import androidx.media3.common.util.Util;
import androidx.media3.common.x;

/* JADX INFO: loaded from: classes7.dex */
@UnstableApi
@Deprecated
public class VorbisComment implements Metadata.Entry {
    public static final Parcelable.Creator<VorbisComment> CREATOR = new Parcelable.Creator<VorbisComment>() { // from class: androidx.media3.extractor.metadata.flac.VorbisComment.1
        @Override // android.os.Parcelable.Creator
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public VorbisComment createFromParcel(Parcel parcel) {
            return new VorbisComment(parcel);
        }

        @Override // android.os.Parcelable.Creator
        /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
        public VorbisComment[] newArray(int i10) {
            return new VorbisComment[i10];
        }
    };
    public final String key;
    public final String value;

    public VorbisComment(String str, String str2) {
        this.key = str;
        this.value = str2;
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || getClass() != obj.getClass()) {
            return false;
        }
        VorbisComment vorbisComment = (VorbisComment) obj;
        return this.key.equals(vorbisComment.key) && this.value.equals(vorbisComment.value);
    }

    @Override // androidx.media3.common.Metadata.Entry
    public /* synthetic */ byte[] q() {
        return x.a(this);
    }

    @Override // androidx.media3.common.Metadata.Entry
    public /* synthetic */ Format r() {
        return x.b(this);
    }

    protected VorbisComment(Parcel parcel) {
        this.key = (String) Util.j(parcel.readString());
        this.value = (String) Util.j(parcel.readString());
    }

    public int hashCode() {
        return ((527 + this.key.hashCode()) * 31) + this.value.hashCode();
    }

    @Override // androidx.media3.common.Metadata.Entry
    public void k0(MediaMetadata.Builder builder) {
        String str = this.key;
        str.hashCode();
        switch (str) {
            case "ALBUM":
                builder.N(this.value);
                break;
            case "TITLE":
                builder.m0(this.value);
                break;
            case "DESCRIPTION":
                builder.U(this.value);
                break;
            case "ALBUMARTIST":
                builder.M(this.value);
                break;
            case "ARTIST":
                builder.O(this.value);
                break;
        }
    }

    public String toString() {
        return "VC: " + this.key + "=" + this.value;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i10) {
        parcel.writeString(this.key);
        parcel.writeString(this.value);
    }
}
