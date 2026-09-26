package com.google.android.exoplayer2.metadata.scte35;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.exoplayer2.util.c0;
import com.google.android.exoplayer2.util.o0;

/* JADX INFO: loaded from: classes9.dex */
public final class PrivateCommand extends SpliceCommand {
    public static final Parcelable.Creator<PrivateCommand> CREATOR = new a();
    public final byte[] commandBytes;
    public final long identifier;
    public final long ptsAdjustment;

    class a implements Parcelable.Creator<PrivateCommand> {
        @Override // android.os.Parcelable.Creator
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public PrivateCommand createFromParcel(Parcel parcel) {
            return new PrivateCommand(parcel, null);
        }

        @Override // android.os.Parcelable.Creator
        /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
        public PrivateCommand[] newArray(int i10) {
            return new PrivateCommand[i10];
        }

        a() {
        }
    }

    /* synthetic */ PrivateCommand(Parcel parcel, a aVar) {
        this(parcel);
    }

    private PrivateCommand(long j6, byte[] bArr, long j10) {
        this.ptsAdjustment = j10;
        this.identifier = j6;
        this.commandBytes = bArr;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i10) {
        parcel.writeLong(this.ptsAdjustment);
        parcel.writeLong(this.identifier);
        parcel.writeByteArray(this.commandBytes);
    }

    private PrivateCommand(Parcel parcel) {
        this.ptsAdjustment = parcel.readLong();
        this.identifier = parcel.readLong();
        this.commandBytes = (byte[]) o0.j(parcel.createByteArray());
    }

    static PrivateCommand a(c0 c0Var, int i10, long j6) {
        long jF = c0Var.F();
        int i11 = i10 - 4;
        byte[] bArr = new byte[i11];
        c0Var.j(bArr, 0, i11);
        return new PrivateCommand(jF, bArr, j6);
    }
}
