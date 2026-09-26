package androidx.media3.extractor.metadata.scte35;

import android.os.Parcel;
import android.os.Parcelable;
import androidx.media3.common.util.ParsableByteArray;
import androidx.media3.common.util.TimestampAdjuster;
import androidx.media3.common.util.UnstableApi;
import org.apache.commons.compress.archivers.tar.TarConstants;

/* JADX INFO: loaded from: classes8.dex */
@UnstableApi
public final class TimeSignalCommand extends SpliceCommand {
    public static final Parcelable.Creator<TimeSignalCommand> CREATOR = new Parcelable.Creator<TimeSignalCommand>() { // from class: androidx.media3.extractor.metadata.scte35.TimeSignalCommand.1
        @Override // android.os.Parcelable.Creator
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public TimeSignalCommand createFromParcel(Parcel parcel) {
            return new TimeSignalCommand(parcel.readLong(), parcel.readLong());
        }

        @Override // android.os.Parcelable.Creator
        /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
        public TimeSignalCommand[] newArray(int i10) {
            return new TimeSignalCommand[i10];
        }
    };
    public final long playbackPositionUs;
    public final long ptsTime;

    private TimeSignalCommand(long j6, long j10) {
        this.ptsTime = j6;
        this.playbackPositionUs = j10;
    }

    @Override // androidx.media3.extractor.metadata.scte35.SpliceCommand
    public String toString() {
        return "SCTE-35 TimeSignalCommand { ptsTime=" + this.ptsTime + ", playbackPositionUs= " + this.playbackPositionUs + " }";
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i10) {
        parcel.writeLong(this.ptsTime);
        parcel.writeLong(this.playbackPositionUs);
    }

    static TimeSignalCommand a(ParsableByteArray parsableByteArray, long j6, TimestampAdjuster timestampAdjuster) {
        long jC = c(parsableByteArray, j6);
        return new TimeSignalCommand(jC, timestampAdjuster.b(jC));
    }

    static long c(ParsableByteArray parsableByteArray, long j6) {
        long jH = parsableByteArray.H();
        if ((128 & jH) != 0) {
            return TarConstants.MAXSIZE & ((((jH & 1) << 32) | parsableByteArray.J()) + j6);
        }
        return -9223372036854775807L;
    }
}
