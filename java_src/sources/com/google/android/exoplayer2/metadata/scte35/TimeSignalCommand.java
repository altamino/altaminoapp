package com.google.android.exoplayer2.metadata.scte35;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.exoplayer2.util.c0;
import com.google.android.exoplayer2.util.l0;
import org.apache.commons.compress.archivers.tar.TarConstants;

/* JADX INFO: loaded from: classes6.dex */
public final class TimeSignalCommand extends SpliceCommand {
    public static final Parcelable.Creator<TimeSignalCommand> CREATOR = new a();
    public final long playbackPositionUs;
    public final long ptsTime;

    class a implements Parcelable.Creator<TimeSignalCommand> {
        @Override // android.os.Parcelable.Creator
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public TimeSignalCommand createFromParcel(Parcel parcel) {
            return new TimeSignalCommand(parcel.readLong(), parcel.readLong(), null);
        }

        @Override // android.os.Parcelable.Creator
        /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
        public TimeSignalCommand[] newArray(int i10) {
            return new TimeSignalCommand[i10];
        }

        a() {
        }
    }

    /* synthetic */ TimeSignalCommand(long j6, long j10, a aVar) {
        this(j6, j10);
    }

    private TimeSignalCommand(long j6, long j10) {
        this.ptsTime = j6;
        this.playbackPositionUs = j10;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i10) {
        parcel.writeLong(this.ptsTime);
        parcel.writeLong(this.playbackPositionUs);
    }

    static TimeSignalCommand a(c0 c0Var, long j6, l0 l0Var) {
        long jC = c(c0Var, j6);
        return new TimeSignalCommand(jC, l0Var.b(jC));
    }

    static long c(c0 c0Var, long j6) {
        long jD = c0Var.D();
        if ((128 & jD) != 0) {
            return TarConstants.MAXSIZE & ((((jD & 1) << 32) | c0Var.F()) + j6);
        }
        return -9223372036854775807L;
    }
}
