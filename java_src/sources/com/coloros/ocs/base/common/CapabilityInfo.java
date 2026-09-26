package com.coloros.ocs.base.common;

import android.os.IBinder;
import android.os.Parcel;
import android.os.Parcelable;
import java.util.List;

/* JADX INFO: loaded from: classes2.dex */
public class CapabilityInfo implements Parcelable {
    public static final Parcelable.Creator<CapabilityInfo> CREATOR = new a();

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private List<Feature> f927a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private int f928b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private AuthResult f929c;
    private IBinder d;

    static class a implements Parcelable.Creator<CapabilityInfo> {
        a() {
        }

        @Override // android.os.Parcelable.Creator
        public final /* synthetic */ CapabilityInfo createFromParcel(Parcel parcel) {
            return new CapabilityInfo(parcel);
        }

        @Override // android.os.Parcelable.Creator
        public final /* bridge */ /* synthetic */ CapabilityInfo[] newArray(int i10) {
            return new CapabilityInfo[i10];
        }
    }

    public CapabilityInfo(List<Feature> list, int i10, AuthResult authResult) {
        this(list, i10, authResult, null);
    }

    public AuthResult c() {
        return this.f929c;
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public void e(IBinder iBinder) {
        this.d = iBinder;
    }

    public CapabilityInfo(List<Feature> list, int i10, AuthResult authResult, IBinder iBinder) {
        this.f927a = list;
        this.f928b = i10;
        this.f929c = authResult;
        this.d = iBinder;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i10) {
        parcel.writeList(this.f927a);
        parcel.writeInt(this.f928b);
        parcel.writeParcelable(this.f929c, 0);
        parcel.writeStrongBinder(this.d);
    }

    protected CapabilityInfo(Parcel parcel) {
        this.f927a = parcel.readArrayList(Feature.class.getClassLoader());
        this.f928b = parcel.readInt();
        this.f929c = (AuthResult) parcel.readParcelable(AuthResult.class.getClassLoader());
        this.d = parcel.readStrongBinder();
    }
}
