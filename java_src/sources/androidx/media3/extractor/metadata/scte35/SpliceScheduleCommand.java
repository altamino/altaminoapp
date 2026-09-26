package androidx.media3.extractor.metadata.scte35;

import android.os.Parcel;
import android.os.Parcelable;
import androidx.media3.common.util.ParsableByteArray;
import androidx.media3.common.util.UnstableApi;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;

/* JADX INFO: loaded from: classes6.dex */
@UnstableApi
public final class SpliceScheduleCommand extends SpliceCommand {
    public static final Parcelable.Creator<SpliceScheduleCommand> CREATOR = new Parcelable.Creator<SpliceScheduleCommand>() { // from class: androidx.media3.extractor.metadata.scte35.SpliceScheduleCommand.1
        @Override // android.os.Parcelable.Creator
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public SpliceScheduleCommand createFromParcel(Parcel parcel) {
            return new SpliceScheduleCommand(parcel);
        }

        @Override // android.os.Parcelable.Creator
        /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
        public SpliceScheduleCommand[] newArray(int i10) {
            return new SpliceScheduleCommand[i10];
        }
    };
    public final List<Event> events;

    public static final class ComponentSplice {
        public final int componentTag;
        public final long utcSpliceTime;

        private ComponentSplice(int i10, long j6) {
            this.componentTag = i10;
            this.utcSpliceTime = j6;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static ComponentSplice c(Parcel parcel) {
            return new ComponentSplice(parcel.readInt(), parcel.readLong());
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void d(Parcel parcel) {
            parcel.writeInt(this.componentTag);
            parcel.writeLong(this.utcSpliceTime);
        }
    }

    public static final class Event {
        public final boolean autoReturn;
        public final int availNum;
        public final int availsExpected;
        public final long breakDurationUs;
        public final List<ComponentSplice> componentSpliceList;
        public final boolean outOfNetworkIndicator;
        public final boolean programSpliceFlag;
        public final boolean spliceEventCancelIndicator;
        public final long spliceEventId;
        public final int uniqueProgramId;
        public final long utcSpliceTime;

        private Event(long j6, boolean z6, boolean z10, boolean z11, List<ComponentSplice> list, long j10, boolean z12, long j11, int i10, int i11, int i12) {
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
        public static Event d(Parcel parcel) {
            return new Event(parcel);
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

        private Event(Parcel parcel) {
            this.spliceEventId = parcel.readLong();
            this.spliceEventCancelIndicator = parcel.readByte() == 1;
            this.outOfNetworkIndicator = parcel.readByte() == 1;
            this.programSpliceFlag = parcel.readByte() == 1;
            int i10 = parcel.readInt();
            ArrayList arrayList = new ArrayList(i10);
            for (int i11 = 0; i11 < i10; i11++) {
                arrayList.add(ComponentSplice.c(parcel));
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
        public static Event e(ParsableByteArray parsableByteArray) {
            boolean z6;
            ArrayList arrayList;
            boolean z10;
            long j6;
            boolean z11;
            long j10;
            int i10;
            int i11;
            int iH;
            boolean z12;
            boolean z13;
            boolean z14;
            boolean z15;
            long J;
            boolean z16;
            long J2;
            boolean z17;
            long J3 = parsableByteArray.J();
            if ((parsableByteArray.H() & 128) != 0) {
                z6 = true;
            } else {
                z6 = false;
            }
            ArrayList arrayList2 = new ArrayList();
            if (!z6) {
                int iH2 = parsableByteArray.H();
                if ((iH2 & 128) != 0) {
                    z13 = true;
                } else {
                    z13 = false;
                }
                if ((iH2 & 64) != 0) {
                    z14 = true;
                } else {
                    z14 = false;
                }
                if ((iH2 & 32) != 0) {
                    z15 = true;
                } else {
                    z15 = false;
                }
                if (z14) {
                    J = parsableByteArray.J();
                } else {
                    J = -9223372036854775807L;
                }
                if (!z14) {
                    int iH3 = parsableByteArray.H();
                    ArrayList arrayList3 = new ArrayList(iH3);
                    for (int i12 = 0; i12 < iH3; i12++) {
                        arrayList3.add(new ComponentSplice(parsableByteArray.H(), parsableByteArray.J()));
                    }
                    arrayList2 = arrayList3;
                }
                if (z15) {
                    long jH = parsableByteArray.H();
                    if ((128 & jH) != 0) {
                        z17 = true;
                    } else {
                        z17 = false;
                    }
                    J2 = ((((jH & 1) << 32) | parsableByteArray.J()) * 1000) / 90;
                    z16 = z17;
                } else {
                    z16 = false;
                    J2 = -9223372036854775807L;
                }
                int iN = parsableByteArray.N();
                int iH4 = parsableByteArray.H();
                z12 = z14;
                iH = parsableByteArray.H();
                j10 = J2;
                arrayList = arrayList2;
                long j11 = J;
                i10 = iN;
                i11 = iH4;
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
                iH = 0;
                z12 = false;
            }
            return new Event(J3, z6, z10, z12, arrayList, j6, z11, j10, i10, i11, iH);
        }
    }

    private SpliceScheduleCommand(List<Event> list) {
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

    static SpliceScheduleCommand a(ParsableByteArray parsableByteArray) {
        int iH = parsableByteArray.H();
        ArrayList arrayList = new ArrayList(iH);
        for (int i10 = 0; i10 < iH; i10++) {
            arrayList.add(Event.e(parsableByteArray));
        }
        return new SpliceScheduleCommand(arrayList);
    }

    private SpliceScheduleCommand(Parcel parcel) {
        int i10 = parcel.readInt();
        ArrayList arrayList = new ArrayList(i10);
        for (int i11 = 0; i11 < i10; i11++) {
            arrayList.add(Event.d(parcel));
        }
        this.events = Collections.unmodifiableList(arrayList);
    }
}
