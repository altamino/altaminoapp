package com.google.firebase.perf.util;

import android.os.Parcel;
import android.os.Parcelable;
import android.os.SystemClock;
import androidx.annotation.NonNull;
import com.google.android.gms.common.util.VisibleForTesting;
import java.util.concurrent.TimeUnit;

/* JADX INFO: loaded from: classes6.dex */
public class Timer implements Parcelable {
    public static final Parcelable.Creator<Timer> CREATOR = new a();
    private long elapsedRealtimeMicros;
    private long wallClockMicros;

    class a implements Parcelable.Creator<Timer> {
        @Override // android.os.Parcelable.Creator
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public Timer createFromParcel(Parcel parcel) {
            return new Timer(parcel, (a) null);
        }

        @Override // android.os.Parcelable.Creator
        /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
        public Timer[] newArray(int i10) {
            return new Timer[i10];
        }

        a() {
        }
    }

    /* synthetic */ Timer(Parcel parcel, a aVar) {
        this(parcel);
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public long i() {
        return this.wallClockMicros;
    }

    public Timer() {
        this(m(), c());
    }

    private static long c() {
        return TimeUnit.NANOSECONDS.toMicros(SystemClock.elapsedRealtimeNanos());
    }

    public static Timer k(long j6) {
        long micros = TimeUnit.MILLISECONDS.toMicros(j6);
        return new Timer(m() + (micros - c()), micros);
    }

    private static long m() {
        return TimeUnit.MILLISECONDS.toMicros(System.currentTimeMillis());
    }

    public long e() {
        return this.wallClockMicros + g();
    }

    public long g() {
        return h(new Timer());
    }

    public long h(@NonNull Timer timer) {
        return timer.elapsedRealtimeMicros - this.elapsedRealtimeMicros;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i10) {
        parcel.writeLong(this.wallClockMicros);
        parcel.writeLong(this.elapsedRealtimeMicros);
    }

    @VisibleForTesting
    Timer(long j6, long j10) {
        this.wallClockMicros = j6;
        this.elapsedRealtimeMicros = j10;
    }

    public void l() {
        this.wallClockMicros = m();
        this.elapsedRealtimeMicros = c();
    }

    @VisibleForTesting
    public Timer(long j6) {
        this(j6, j6);
    }

    private Timer(Parcel parcel) {
        this(parcel.readLong(), parcel.readLong());
    }
}
