package com.coloros.ocs.base.common;

import android.os.Parcel;
import android.os.Parcelable;

/* JADX INFO: loaded from: classes5.dex */
public class AuthResult implements Parcelable {
    public static final Parcelable.Creator<AuthResult> CREATOR = new a();

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private String f924a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private int f925b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private int f926c;
    private int d;
    private byte[] e;

    static class a implements Parcelable.Creator<AuthResult> {
        a() {
        }

        @Override // android.os.Parcelable.Creator
        public final /* synthetic */ AuthResult createFromParcel(Parcel parcel) {
            return new AuthResult(parcel);
        }

        @Override // android.os.Parcelable.Creator
        public final /* bridge */ /* synthetic */ AuthResult[] newArray(int i10) {
            return new AuthResult[i10];
        }
    }

    public AuthResult(String str, int i10, int i11, int i12, byte[] bArr) {
        this.f924a = str;
        this.f925b = i10;
        this.f926c = i11;
        this.d = i12;
        this.e = bArr;
        c1.a.d("AuthResult", "AuthResult errorCode is " + this.d);
    }

    public int c() {
        return this.d;
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i10) {
        parcel.writeString(this.f924a);
        parcel.writeInt(this.f925b);
        parcel.writeInt(this.f926c);
        parcel.writeInt(this.d);
        parcel.writeByteArray(this.e);
    }

    protected AuthResult(Parcel parcel) {
        this.f924a = parcel.readString();
        this.f925b = parcel.readInt();
        this.f926c = parcel.readInt();
        this.d = parcel.readInt();
        this.e = parcel.createByteArray();
    }
}
