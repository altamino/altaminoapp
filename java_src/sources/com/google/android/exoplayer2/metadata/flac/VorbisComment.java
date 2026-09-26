package com.google.android.exoplayer2.metadata.flac;

import android.os.Parcel;
import android.os.Parcelable;
import androidx.annotation.Nullable;
import com.google.android.exoplayer2.a2;
import com.google.android.exoplayer2.metadata.Metadata;
import com.google.android.exoplayer2.n2;
import com.google.android.exoplayer2.util.o0;

/* JADX INFO: loaded from: classes8.dex */
@Deprecated
public class VorbisComment implements Metadata.Entry {
    public static final Parcelable.Creator<VorbisComment> CREATOR = new a();
    public final String key;
    public final String value;

    class a implements Parcelable.Creator<VorbisComment> {
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

        a() {
        }
    }

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

    @Override // com.google.android.exoplayer2.metadata.Metadata.Entry
    public /* synthetic */ byte[] q() {
        return r2.a.a(this);
    }

    @Override // com.google.android.exoplayer2.metadata.Metadata.Entry
    public /* synthetic */ a2 r() {
        return r2.a.b(this);
    }

    protected VorbisComment(Parcel parcel) {
        this.key = (String) o0.j(parcel.readString());
        this.value = (String) o0.j(parcel.readString());
    }

    @Override // com.google.android.exoplayer2.metadata.Metadata.Entry
    public void b(n2.b bVar) {
        String str = this.key;
        str.hashCode();
        switch (str) {
            case "ALBUM":
                bVar.L(this.value);
                break;
            case "TITLE":
                bVar.i0(this.value);
                break;
            case "DESCRIPTION":
                bVar.S(this.value);
                break;
            case "ALBUMARTIST":
                bVar.K(this.value);
                break;
            case "ARTIST":
                bVar.M(this.value);
                break;
        }
    }

    public int hashCode() {
        return ((527 + this.key.hashCode()) * 31) + this.value.hashCode();
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
