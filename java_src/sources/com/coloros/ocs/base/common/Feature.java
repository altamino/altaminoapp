package com.coloros.ocs.base.common;

import android.os.Parcel;
import android.os.Parcelable;

/* JADX INFO: loaded from: classes10.dex */
public class Feature implements Parcelable {
    public static final Parcelable.Creator<Feature> CREATOR = new a();

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private String f930a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private long f931b;

    static class a implements Parcelable.Creator<Feature> {
        a() {
        }

        @Override // android.os.Parcelable.Creator
        public final /* synthetic */ Feature createFromParcel(Parcel parcel) {
            return new Feature(parcel);
        }

        @Override // android.os.Parcelable.Creator
        public final /* bridge */ /* synthetic */ Feature[] newArray(int i10) {
            return new Feature[i10];
        }
    }

    public Feature(String str, long j6) {
        this.f930a = str;
        this.f931b = j6;
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    protected Feature(Parcel parcel) {
        this.f930a = parcel.readString();
        this.f931b = parcel.readLong();
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i10) {
        parcel.writeString(this.f930a);
        parcel.writeLong(this.f931b);
    }
}
