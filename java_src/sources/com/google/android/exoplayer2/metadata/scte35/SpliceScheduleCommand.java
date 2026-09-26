package com.google.android.exoplayer2.metadata.scte35;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.exoplayer2.util.c0;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;

/* JADX INFO: loaded from: classes7.dex */
public final class SpliceScheduleCommand extends SpliceCommand {
    public static final Parcelable.Creator<SpliceScheduleCommand> CREATOR = new a();
    public final List<c> events;

    class a implements Parcelable.Creator<SpliceScheduleCommand> {
        @Override // android.os.Parcelable.Creator
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public SpliceScheduleCommand createFromParcel(Parcel parcel) {
            return new SpliceScheduleCommand(parcel, null);
        }

        @Override // android.os.Parcelable.Creator
        /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
        public SpliceScheduleCommand[] newArray(int i10) {
            return new SpliceScheduleCommand[i10];
        }

        a() {
        }
    }

    public static final class b {
        public final int componentTag;
        public final long utcSpliceTime;

        /* synthetic */ b(int i10, long j6, a aVar) {
            this(i10, j6);
        }

        private b(int i10, long j6) {
            this.componentTag = i10;
            this.utcSpliceTime = j6;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static b c(Parcel parcel) {
            return new b(parcel.readInt(), parcel.readLong());
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void d(Parcel parcel) {
            parcel.writeInt(this.componentTag);
            parcel.writeLong(this.utcSpliceTime);
        }
    }

    public static final class c {
        public final boolean autoReturn;
        public final int availNum;
        public final int availsExpected;
        public final long breakDurationUs;
        public final List<b> componentSpliceList;
        public final boolean outOfNetworkIndicator;
        public final boolean programSpliceFlag;
        public final boolean spliceEventCancelIndicator;
        public final long spliceEventId;
        public final int uniqueProgramId;
        public final long utcSpliceTime;

        private c(long j6, boolean z6, boolean z10, boolean z11, List<b> list, long j10, boolean z12, long j11, int i10, int i11, int i12) {
            this.spliceEventId = j6;
            this.spliceEventCancelIndicator = z6;
            this.outOfNetworkIndicator = z10;
            this.programSpliceFlag = z11;
            this.componentSpliceList = Collections.unmodifiableList(list);
            this.utcSpliceTime = j10;
            this.autoReturn = z12;
            this.breakDurationUs = j11;
            this.uniqueProgramId = i10;
            this.availNum = i11;
            this.availsExpected = i12;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static c d(Parcel parcel) {
            return new c(parcel);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void f(Parcel parcel) {
            parcel.writeLong(this.spliceEventId);
            parcel.writeByte(this.spliceEventCancelIndicator ? (byte) 1 : (byte) 0);
            parcel.writeByte(this.outOfNetworkIndicator ? (byte) 1 : (byte) 0);
            parcel.writeByte(this.programSpliceFlag ? (byte) 1 : (byte) 0);
            int size = this.componentSpliceList.size();
            parcel.writeInt(size);
            for (int i10 = 0; i10 < size; i10++) {
                this.componentSpliceList.get(i10).d(parcel);
            }
            parcel.writeLong(this.utcSpliceTime);
            parcel.writeByte(this.autoReturn ? (byte) 1 : (byte) 0);
            parcel.writeLong(this.breakDurationUs);
            parcel.writeInt(this.uniqueProgramId);
            parcel.writeInt(this.availNum);
            parcel.writeInt(this.availsExpected);
        }

        private c(Parcel parcel) {
            this.spliceEventId = parcel.readLong();
            this.spliceEventCancelIndicator = parcel.readByte() == 1;
            this.outOfNetworkIndicator = parcel.readByte() == 1;
            this.programSpliceFlag = parcel.readByte() == 1;
            int i10 = parcel.readInt();
            ArrayList arrayList = new ArrayList(i10);
            for (int i11 = 0; i11 < i10; i11++) {
                arrayList.add(b.c(parcel));
            }
            this.componentSpliceList = Collections.unmodifiableList(arrayList);
            this.utcSpliceTime = parcel.readLong();
            this.autoReturn = parcel.readByte() == 1;
            this.breakDurationUs = parcel.readLong();
            this.uniqueProgramId = parcel.readInt();
            this.availNum = parcel.readInt();
            this.availsExpected = parcel.readInt();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static c e(c0 c0Var) {
            boolean z6;
            ArrayList arrayList;
            boolean z10;
            long j6;
            boolean z11;
            long j10;
            int i10;
            int i11;
            int iD;
            boolean z12;
            boolean z13;
            boolean z14;
            boolean z15;
            long jF;
            boolean z16;
            long jF2;
            boolean z17;
            long jF3 = c0Var.F();
            if ((c0Var.D() & 128) != 0) {
                z6 = true;
            } else {
                z6 = false;
            }
            ArrayList arrayList2 = new ArrayList();
            if (!z6) {
                int iD2 = c0Var.D();
                if ((iD2 & 128) != 0) {
                    z13 = true;
                } else {
                    z13 = false;
                }
                if ((iD2 & 64) != 0) {
                    z14 = true;
                } else {
                    z14 = false;
                }
                if ((iD2 & 32) != 0) {
                    z15 = true;
                } else {
                    z15 = false;
                }
                if (z14) {
                    jF = c0Var.F();
                } else {
                    jF = -9223372036854775807L;
                }
                if (!z14) {
                    int iD3 = c0Var.D();
                    ArrayList arrayList3 = new ArrayList(iD3);
                    for (int i12 = 0; i12 < iD3; i12++) {
                        arrayList3.add(new b(c0Var.D(), c0Var.F(), null));
                    }
                    arrayList2 = arrayList3;
                }
                if (z15) {
                    long jD = c0Var.D();
                    if ((128 & jD) != 0) {
                        z17 = true;
                    } else {
                        z17 = false;
                    }
                    jF2 = ((((jD & 1) << 32) | c0Var.F()) * 1000) / 90;
                    z16 = z17;
                } else {
                    z16 = false;
                    jF2 = -9223372036854775807L;
                }
                int iJ = c0Var.J();
                int iD4 = c0Var.D();
                z12 = z14;
                iD = c0Var.D();
                j10 = jF2;
                arrayList = arrayList2;
                long j11 = jF;
                i10 = iJ;
                i11 = iD4;
                j6 = j11;
                boolean z18 = z13;
                z11 = z16;
                z10 = z18;
            } else {
                arrayList = arrayList2;
                z10 = false;
                j6 = -9223372036854775807L;
                z11 = false;
                j10 = -9223372036854775807L;
                i10 = 0;
                i11 = 0;
                iD = 0;
                z12 = false;
            }
            return new c(jF3, z6, z10, z12, arrayList, j6, z11, j10, i10, i11, iD);
        }
    }

    /* synthetic */ SpliceScheduleCommand(Parcel parcel, a aVar) {
        this(parcel);
    }

    private SpliceScheduleCommand(List<c> list) {
        this.events = Collections.unmodifiableList(list);
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i10) {
        int size = this.events.size();
        parcel.writeInt(size);
        for (int i11 = 0; i11 < size; i11++) {
            this.events.get(i11).f(parcel);
        }
    }

    static SpliceScheduleCommand a(c0 c0Var) {
        int iD = c0Var.D();
        ArrayList arrayList = new ArrayList(iD);
        for (int i10 = 0; i10 < iD; i10++) {
            arrayList.add(c.e(c0Var));
        }
        return new SpliceScheduleCommand(arrayList);
    }

    private SpliceScheduleCommand(Parcel parcel) {
        int i10 = parcel.readInt();
        ArrayList arrayList = new ArrayList(i10);
        for (int i11 = 0; i11 < i10; i11++) {
            arrayList.add(c.d(parcel));
        }
        this.events = Collections.unmodifiableList(arrayList);
    }
}
