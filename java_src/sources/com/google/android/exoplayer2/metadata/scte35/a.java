package com.google.android.exoplayer2.metadata.scte35;

import com.google.android.exoplayer2.metadata.Metadata;
import com.google.android.exoplayer2.util.b0;
import com.google.android.exoplayer2.util.c0;
import com.google.android.exoplayer2.util.l0;
import java.nio.ByteBuffer;
import r2.d;
import r2.f;

/* JADX INFO: loaded from: classes11.dex */
public final class a extends f {
    private static final int TYPE_PRIVATE_COMMAND = 255;
    private static final int TYPE_SPLICE_INSERT = 5;
    private static final int TYPE_SPLICE_NULL = 0;
    private static final int TYPE_SPLICE_SCHEDULE = 4;
    private static final int TYPE_TIME_SIGNAL = 6;
    private final c0 sectionData = new c0();
    private final b0 sectionHeader = new b0();
    private l0 timestampAdjuster;

    @Override // r2.f
    protected Metadata b(d dVar, ByteBuffer byteBuffer) {
        Metadata.Entry spliceNullCommand;
        l0 l0Var = this.timestampAdjuster;
        if (l0Var == null || dVar.subsampleOffsetUs != l0Var.e()) {
            l0 l0Var2 = new l0(dVar.timeUs);
            this.timestampAdjuster = l0Var2;
            l0Var2.a(dVar.timeUs - dVar.subsampleOffsetUs);
        }
        byte[] bArrArray = byteBuffer.array();
        int iLimit = byteBuffer.limit();
        this.sectionData.N(bArrArray, iLimit);
        this.sectionHeader.o(bArrArray, iLimit);
        this.sectionHeader.r(39);
        long jH = (((long) this.sectionHeader.h(1)) << 32) | ((long) this.sectionHeader.h(32));
        this.sectionHeader.r(20);
        int iH = this.sectionHeader.h(12);
        int iH2 = this.sectionHeader.h(8);
        this.sectionData.Q(14);
        if (iH2 == 0) {
            spliceNullCommand = new SpliceNullCommand();
        } else if (iH2 == 255) {
            spliceNullCommand = PrivateCommand.a(this.sectionData, iH, jH);
        } else if (iH2 == 4) {
            spliceNullCommand = SpliceScheduleCommand.a(this.sectionData);
        } else if (iH2 != 5) {
            spliceNullCommand = iH2 != 6 ? null : TimeSignalCommand.a(this.sectionData, jH, this.timestampAdjuster);
        } else {
            spliceNullCommand = SpliceInsertCommand.a(this.sectionData, jH, this.timestampAdjuster);
        }
        return spliceNullCommand == null ? new Metadata(new Metadata.Entry[0]) : new Metadata(spliceNullCommand);
    }
}
