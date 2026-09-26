package com.google.firebase.perf.metrics;

import android.os.Parcel;
import android.os.Parcelable;
import androidx.annotation.NonNull;
import java.util.concurrent.atomic.AtomicLong;

/* JADX INFO: loaded from: classes10.dex */
public class Counter implements Parcelable {
    public static final Parcelable.Creator<Counter> CREATOR = new a();
    private final AtomicLong count;
    private final String name;

    class a implements Parcelable.Creator<Counter> {
        @Override // android.os.Parcelable.Creator
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public Counter createFromParcel(Parcel parcel) {
            return new Counter(parcel, null);
        }

        @Override // android.os.Parcelable.Creator
        /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
        public Counter[] newArray(int i10) {
            return new Counter[i10];
        }

        a() {
        }
    }

    /* synthetic */ Counter(Parcel parcel, a aVar) {
        this(parcel);
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    @NonNull
    String e() {
        return this.name;
    }

    public Counter(@NonNull String str) {
        this.name = str;
        this.count = new AtomicLong(0L);
    }

    long c() {
        return this.count.get();
    }

    public void g(long j6) {
        this.count.addAndGet(j6);
    }

    void h(long j6) {
        this.count.set(j6);
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i10) {
        parcel.writeString(this.name);
        parcel.writeLong(this.count.get());
    }

    private Counter(Parcel parcel) {
        this.name = parcel.readString();
        this.count = new AtomicLong(parcel.readLong());
    }
}
