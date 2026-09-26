package com.google.android.exoplayer2.metadata.scte35;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.exoplayer2.util.c0;
import com.google.android.exoplayer2.util.l0;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;

/* JADX INFO: loaded from: classes8.dex */
public final class SpliceInsertCommand extends SpliceCommand {
    public static final Parcelable.Creator<SpliceInsertCommand> CREATOR = new a();
    public final boolean autoReturn;
    public final int availNum;
    public final int availsExpected;
    public final long breakDurationUs;
    public final List<b> componentSpliceList;
    public final boolean outOfNetworkIndicator;
    public final boolean programSpliceFlag;
    public final long programSplicePlaybackPositionUs;
    public final long programSplicePts;
    public final boolean spliceEventCancelIndicator;
    public final long spliceEventId;
    public final boolean spliceImmediateFlag;
    public final int uniqueProgramId;

    class a implements Parcelable.Creator<SpliceInsertCommand> {
        @Override // android.os.Parcelable.Creator
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public SpliceInsertCommand createFromParcel(Parcel parcel) {
            return new SpliceInsertCommand(parcel, null);
        }

        @Override // android.os.Parcelable.Creator
        /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
        public SpliceInsertCommand[] newArray(int i10) {
            return new SpliceInsertCommand[i10];
        }

        a() {
        }
    }

    public static final class b {
        public final long componentSplicePlaybackPositionUs;
        public final long componentSplicePts;
        public final int componentTag;

        /* synthetic */ b(int i10, long j6, long j10, a aVar) {
            this(i10, j6, j10);
        }

        private b(int i10, long j6, long j10) {
            this.componentTag = i10;
            this.componentSplicePts = j6;
            this.componentSplicePlaybackPositionUs = j10;
        }

        public static b a(Parcel parcel) {
            return new b(parcel.readInt(), parcel.readLong(), parcel.readLong());
        }

        public void b(Parcel parcel) {
            parcel.writeInt(this.componentTag);
            parcel.writeLong(this.componentSplicePts);
            parcel.writeLong(this.componentSplicePlaybackPositionUs);
        }
    }

    /* synthetic */ SpliceInsertCommand(Parcel parcel, a aVar) {
        this(parcel);
    }

    private SpliceInsertCommand(long j6, boolean z6, boolean z10, boolean z11, boolean z12, long j10, long j11, List<b> list, boolean z13, long j12, int i10, int i11, int i12) {
        this.spliceEventId = j6;
        this.spliceEventCancelIndicator = z6;
        this.outOfNetworkIndicator = z10;
        this.programSpliceFlag = z11;
        this.spliceImmediateFlag = z12;
        this.programSplicePts = j10;
        this.programSplicePlaybackPositionUs = j11;
        this.componentSpliceList = Collections.unmodifiableList(list);
        this.autoReturn = z13;
        this.breakDurationUs = j12;
        this.uniqueProgramId = i10;
        this.availNum = i11;
        this.availsExpected = i12;
    }

    static SpliceInsertCommand a(c0 c0Var, long j6, l0 l0Var) {
        List list;
        boolean z6;
        boolean z10;
        long j10;
        boolean z11;
        long j11;
        int iJ;
        int iD;
        int iD2;
        boolean z12;
        boolean z13;
        long jF;
        long jF2 = c0Var.F();
        boolean z14 = (c0Var.D() & 128) != 0;
        List listEmptyList = Collections.emptyList();
        if (z14) {
            list = listEmptyList;
            z6 = false;
            z10 = false;
            j10 = -9223372036854775807L;
            z11 = false;
            j11 = -9223372036854775807L;
            iJ = 0;
            iD = 0;
            iD2 = 0;
            z12 = false;
        } else {
            int iD3 = c0Var.D();
            boolean z15 = (iD3 & 128) != 0;
            boolean z16 = (iD3 & 64) != 0;
            boolean z17 = (iD3 & 32) != 0;
            boolean z18 = (iD3 & 16) != 0;
            long jC = (!z16 || z18) ? -9223372036854775807L : TimeSignalCommand.c(c0Var, j6);
            if (!z16) {
                int iD4 = c0Var.D();
                ArrayList arrayList = new ArrayList(iD4);
                for (int i10 = 0; i10 < iD4; i10++) {
                    int iD5 = c0Var.D();
                    long jC2 = !z18 ? TimeSignalCommand.c(c0Var, j6) : -9223372036854775807L;
                    arrayList.add(new b(iD5, jC2, l0Var.b(jC2), null));
                }
                listEmptyList = arrayList;
            }
            if (z17) {
                long jD = c0Var.D();
                boolean z19 = (128 & jD) != 0;
                jF = ((((jD & 1) << 32) | c0Var.F()) * 1000) / 90;
                z13 = z19;
            } else {
                z13 = false;
                jF = -9223372036854775807L;
            }
            iJ = c0Var.J();
            z12 = z16;
            iD = c0Var.D();
            iD2 = c0Var.D();
            list = listEmptyList;
            long j12 = jC;
            z11 = z13;
            j11 = jF;
            z10 = z18;
            z6 = z15;
            j10 = j12;
        }
        return new SpliceInsertCommand(jF2, z14, z6, z12, z10, j10, l0Var.b(j10), list, z11, j11, iJ, iD, iD2);
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i10) {
        parcel.writeLong(this.spliceEventId);
        parcel.writeByte(this.spliceEventCancelIndicator ? (byte) 1 : (byte) 0);
        parcel.writeByte(this.outOfNetworkIndicator ? (byte) 1 : (byte) 0);
        parcel.writeByte(this.programSpliceFlag ? (byte) 1 : (byte) 0);
        parcel.writeByte(this.spliceImmediateFlag ? (byte) 1 : (byte) 0);
        parcel.writeLong(this.programSplicePts);
        parcel.writeLong(this.programSplicePlaybackPositionUs);
        int size = this.componentSpliceList.size();
        parcel.writeInt(size);
        for (int i11 = 0; i11 < size; i11++) {
            this.componentSpliceList.get(i11).b(parcel);
        }
        parcel.writeByte(this.autoReturn ? (byte) 1 : (byte) 0);
        parcel.writeLong(this.breakDurationUs);
        parcel.writeInt(this.uniqueProgramId);
        parcel.writeInt(this.availNum);
        parcel.writeInt(this.availsExpected);
    }

    private SpliceInsertCommand(Parcel parcel) {
        this.spliceEventId = parcel.readLong();
        this.spliceEventCancelIndicator = parcel.readByte() == 1;
        this.outOfNetworkIndicator = parcel.readByte() == 1;
        this.programSpliceFlag = parcel.readByte() == 1;
        this.spliceImmediateFlag = parcel.readByte() == 1;
        this.programSplicePts = parcel.readLong();
        this.programSplicePlaybackPositionUs = parcel.readLong();
        int i10 = parcel.readInt();
        ArrayList arrayList = new ArrayList(i10);
        for (int i11 = 0; i11 < i10; i11++) {
            arrayList.add(b.a(parcel));
        }
        this.componentSpliceList = Collections.unmodifiableList(arrayList);
        this.autoReturn = parcel.readByte() == 1;
        this.breakDurationUs = parcel.readLong();
        this.uniqueProgramId = parcel.readInt();
        this.availNum = parcel.readInt();
        this.availsExpected = parcel.readInt();
    }
}
