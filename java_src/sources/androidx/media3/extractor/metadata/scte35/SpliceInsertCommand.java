package androidx.media3.extractor.metadata.scte35;

import android.os.Parcel;
import android.os.Parcelable;
import androidx.media3.common.util.ParsableByteArray;
import androidx.media3.common.util.TimestampAdjuster;
import androidx.media3.common.util.UnstableApi;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
@UnstableApi
public final class SpliceInsertCommand extends SpliceCommand {
    public static final Parcelable.Creator<SpliceInsertCommand> CREATOR = new Parcelable.Creator<SpliceInsertCommand>() { // from class: androidx.media3.extractor.metadata.scte35.SpliceInsertCommand.1
        @Override // android.os.Parcelable.Creator
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public SpliceInsertCommand createFromParcel(Parcel parcel) {
            return new SpliceInsertCommand(parcel);
        }

        @Override // android.os.Parcelable.Creator
        /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
        public SpliceInsertCommand[] newArray(int i10) {
            return new SpliceInsertCommand[i10];
        }
    };
    public final boolean autoReturn;
    public final int availNum;
    public final int availsExpected;
    public final long breakDurationUs;
    public final List<ComponentSplice> componentSpliceList;
    public final boolean outOfNetworkIndicator;
    public final boolean programSpliceFlag;
    public final long programSplicePlaybackPositionUs;
    public final long programSplicePts;
    public final boolean spliceEventCancelIndicator;
    public final long spliceEventId;
    public final boolean spliceImmediateFlag;
    public final int uniqueProgramId;

    public static final class ComponentSplice {
        public final long componentSplicePlaybackPositionUs;
        public final long componentSplicePts;
        public final int componentTag;

        private ComponentSplice(int i10, long j6, long j10) {
            this.componentTag = i10;
            this.componentSplicePts = j6;
            this.componentSplicePlaybackPositionUs = j10;
        }

        public static ComponentSplice a(Parcel parcel) {
            return new ComponentSplice(parcel.readInt(), parcel.readLong(), parcel.readLong());
        }

        public void b(Parcel parcel) {
            parcel.writeInt(this.componentTag);
            parcel.writeLong(this.componentSplicePts);
            parcel.writeLong(this.componentSplicePlaybackPositionUs);
        }
    }

    private SpliceInsertCommand(long j6, boolean z6, boolean z10, boolean z11, boolean z12, long j10, long j11, List<ComponentSplice> list, boolean z13, long j12, int i10, int i11, int i12) {
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

    static SpliceInsertCommand a(ParsableByteArray parsableByteArray, long j6, TimestampAdjuster timestampAdjuster) {
        List list;
        boolean z6;
        boolean z10;
        long j10;
        boolean z11;
        long j11;
        int iN;
        int iH;
        int iH2;
        boolean z12;
        boolean z13;
        long J;
        long J2 = parsableByteArray.J();
        boolean z14 = (parsableByteArray.H() & 128) != 0;
        List listEmptyList = Collections.emptyList();
        if (z14) {
            list = listEmptyList;
            z6 = false;
            z10 = false;
            j10 = -9223372036854775807L;
            z11 = false;
            j11 = -9223372036854775807L;
            iN = 0;
            iH = 0;
            iH2 = 0;
            z12 = false;
        } else {
            int iH3 = parsableByteArray.H();
            boolean z15 = (iH3 & 128) != 0;
            boolean z16 = (iH3 & 64) != 0;
            boolean z17 = (iH3 & 32) != 0;
            boolean z18 = (iH3 & 16) != 0;
            long jC = (!z16 || z18) ? -9223372036854775807L : TimeSignalCommand.c(parsableByteArray, j6);
            if (!z16) {
                int iH4 = parsableByteArray.H();
                ArrayList arrayList = new ArrayList(iH4);
                for (int i10 = 0; i10 < iH4; i10++) {
                    int iH5 = parsableByteArray.H();
                    long jC2 = !z18 ? TimeSignalCommand.c(parsableByteArray, j6) : -9223372036854775807L;
                    arrayList.add(new ComponentSplice(iH5, jC2, timestampAdjuster.b(jC2)));
                }
                listEmptyList = arrayList;
            }
            if (z17) {
                long jH = parsableByteArray.H();
                boolean z19 = (128 & jH) != 0;
                J = ((((jH & 1) << 32) | parsableByteArray.J()) * 1000) / 90;
                z13 = z19;
            } else {
                z13 = false;
                J = -9223372036854775807L;
            }
            iN = parsableByteArray.N();
            z12 = z16;
            iH = parsableByteArray.H();
            iH2 = parsableByteArray.H();
            list = listEmptyList;
            long j12 = jC;
            z11 = z13;
            j11 = J;
            z10 = z18;
            z6 = z15;
            j10 = j12;
        }
        return new SpliceInsertCommand(J2, z14, z6, z12, z10, j10, timestampAdjuster.b(j10), list, z11, j11, iN, iH, iH2);
    }

    @Override // androidx.media3.extractor.metadata.scte35.SpliceCommand
    public String toString() {
        return "SCTE-35 SpliceInsertCommand { programSplicePts=" + this.programSplicePts + ", programSplicePlaybackPositionUs= " + this.programSplicePlaybackPositionUs + " }";
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
            arrayList.add(ComponentSplice.a(parcel));
        }
        this.componentSpliceList = Collections.unmodifiableList(arrayList);
        this.autoReturn = parcel.readByte() == 1;
        this.breakDurationUs = parcel.readLong();
        this.uniqueProgramId = parcel.readInt();
        this.availNum = parcel.readInt();
        this.availsExpected = parcel.readInt();
    }
}
