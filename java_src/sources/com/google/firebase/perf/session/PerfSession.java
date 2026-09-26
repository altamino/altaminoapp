package com.google.firebase.perf.session;

import android.os.Parcel;
import android.os.Parcelable;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.VisibleForTesting;
import com.google.firebase.perf.util.Timer;
import com.google.firebase.perf.v1.k;
import com.google.firebase.perf.v1.l;
import java.util.List;
import java.util.concurrent.TimeUnit;

/* JADX INFO: loaded from: classes8.dex */
public class PerfSession implements Parcelable {
    public static final Parcelable.Creator<PerfSession> CREATOR = new a();
    private final Timer creationTime;
    private boolean isGaugeAndEventCollectionEnabled;
    private final String sessionId;

    class a implements Parcelable.Creator<PerfSession> {
        @Override // android.os.Parcelable.Creator
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public PerfSession createFromParcel(@NonNull Parcel parcel) {
            return new PerfSession(parcel, (a) null);
        }

        @Override // android.os.Parcelable.Creator
        /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
        public PerfSession[] newArray(int i10) {
            return new PerfSession[i10];
        }

        a() {
        }
    }

    /* synthetic */ PerfSession(Parcel parcel, a aVar) {
        this(parcel);
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public Timer h() {
        return this.creationTime;
    }

    public boolean i() {
        return this.isGaugeAndEventCollectionEnabled;
    }

    public boolean l() {
        return this.isGaugeAndEventCollectionEnabled;
    }

    public String m() {
        return this.sessionId;
    }

    public void n(boolean z6) {
        this.isGaugeAndEventCollectionEnabled = z6;
    }

    @VisibleForTesting
    public PerfSession(String str, com.google.firebase.perf.util.a aVar) {
        this.isGaugeAndEventCollectionEnabled = false;
        this.sessionId = str;
        this.creationTime = aVar.a();
    }

    public static PerfSession g(@NonNull String str) {
        PerfSession perfSession = new PerfSession(str.replace("-", ""), new com.google.firebase.perf.util.a());
        perfSession.n(o());
        return perfSession;
    }

    public boolean k() {
        return TimeUnit.MICROSECONDS.toMinutes(this.creationTime.g()) > com.google.firebase.perf.config.a.g().A();
    }

    @Override // android.os.Parcelable
    public void writeToParcel(@NonNull Parcel parcel, int i10) {
        parcel.writeString(this.sessionId);
        parcel.writeByte(this.isGaugeAndEventCollectionEnabled ? (byte) 1 : (byte) 0);
        parcel.writeParcelable(this.creationTime, 0);
    }

    @Nullable
    public static k[] e(@NonNull List<PerfSession> list) {
        if (list.isEmpty()) {
            return null;
        }
        k[] kVarArr = new k[list.size()];
        k kVarC = list.get(0).c();
        boolean z6 = false;
        for (int i10 = 1; i10 < list.size(); i10++) {
            k kVarC2 = list.get(i10).c();
            if (!z6 && list.get(i10).l()) {
                kVarArr[0] = kVarC2;
                kVarArr[i10] = kVarC;
                z6 = true;
            } else {
                kVarArr[i10] = kVarC2;
            }
        }
        if (!z6) {
            kVarArr[0] = kVarC;
        }
        return kVarArr;
    }

    public static boolean o() {
        com.google.firebase.perf.config.a aVarG = com.google.firebase.perf.config.a.g();
        if (aVarG.K() && Math.random() < aVarG.D()) {
            return true;
        }
        return false;
    }

    public k c() {
        k.c cVarH = k.n().h(this.sessionId);
        if (this.isGaugeAndEventCollectionEnabled) {
            cVarH.d(l.GAUGES_AND_SYSTEM_EVENTS);
        }
        return cVarH.build();
    }

    private PerfSession(@NonNull Parcel parcel) {
        this.isGaugeAndEventCollectionEnabled = false;
        this.sessionId = parcel.readString();
        this.isGaugeAndEventCollectionEnabled = parcel.readByte() != 0;
        this.creationTime = (Timer) parcel.readParcelable(Timer.class.getClassLoader());
    }
}
