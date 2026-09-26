package com.google.android.exoplayer2.extractor.mp4;

import com.google.android.exoplayer2.extractor.a0;
import com.google.android.exoplayer2.metadata.Metadata;
import com.google.android.exoplayer2.metadata.mp4.SlowMotionData;
import com.google.android.exoplayer2.util.c0;
import com.google.android.exoplayer2.v2;
import com.google.common.base.s;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: classes9.dex */
final class m {
    private static final int LENGTH_OF_ONE_SDR = 12;
    private static final int SAMSUNG_TAIL_SIGNATURE = 1397048916;
    private static final int STATE_CHECKING_FOR_SEF = 1;
    private static final int STATE_READING_SDRS = 2;
    private static final int STATE_READING_SEF_DATA = 3;
    private static final int STATE_SHOULD_CHECK_FOR_SEF = 0;
    private static final String TAG = "SefReader";
    private static final int TAIL_FOOTER_LENGTH = 8;
    private static final int TAIL_HEADER_LENGTH = 12;
    private static final int TYPE_SLOW_MOTION_DATA = 2192;
    private static final int TYPE_SUPER_SLOW_DEFLICKERING_ON = 2820;
    private static final int TYPE_SUPER_SLOW_MOTION_BGM = 2817;
    private static final int TYPE_SUPER_SLOW_MOTION_DATA = 2816;
    private static final int TYPE_SUPER_SLOW_MOTION_EDIT_DATA = 2819;
    private final List<a> dataReferences = new ArrayList();
    private int readerState = 0;
    private int tailLength;
    private static final s COLON_SPLITTER = s.d(kotlinx.serialization.json.internal.b.COLON);
    private static final s ASTERISK_SPLITTER = s.d('*');

    private static final class a {
        public final int dataType;
        public final int size;
        public final long startOffset;

        public a(int i10, long j6, int i11) {
            this.dataType = i10;
            this.startOffset = j6;
            this.size = i11;
        }
    }

    private void a(com.google.android.exoplayer2.extractor.m mVar, a0 a0Var) throws IOException {
        c0 c0Var = new c0(8);
        mVar.readFully(c0Var.d(), 0, 8);
        this.tailLength = c0Var.q() + 8;
        if (c0Var.n() != SAMSUNG_TAIL_SIGNATURE) {
            a0Var.position = 0L;
        } else {
            a0Var.position = mVar.getPosition() - ((long) (this.tailLength - 12));
            this.readerState = 2;
        }
    }

    private static SlowMotionData f(c0 c0Var, int i10) throws v2 {
        ArrayList arrayList = new ArrayList();
        List<String> listF = ASTERISK_SPLITTER.f(c0Var.A(i10));
        for (int i11 = 0; i11 < listF.size(); i11++) {
            List<String> listF2 = COLON_SPLITTER.f(listF.get(i11));
            if (listF2.size() != 3) {
                throw v2.a(null, null);
            }
            try {
                arrayList.add(new SlowMotionData.Segment(Long.parseLong(listF2.get(0)), Long.parseLong(listF2.get(1)), 1 << (Integer.parseInt(listF2.get(2)) - 1)));
            } catch (NumberFormatException e) {
                throw v2.a(null, e);
            }
        }
        return new SlowMotionData(arrayList);
    }

    public int c(com.google.android.exoplayer2.extractor.m mVar, a0 a0Var, List<Metadata.Entry> list) throws IOException {
        int i10 = this.readerState;
        long j6 = 0;
        if (i10 == 0) {
            long length = mVar.getLength();
            if (length != -1 && length >= 8) {
                j6 = length - 8;
            }
            a0Var.position = j6;
            this.readerState = 1;
        } else if (i10 == 1) {
            a(mVar, a0Var);
        } else if (i10 == 2) {
            d(mVar, a0Var);
        } else {
            if (i10 != 3) {
                throw new IllegalStateException();
            }
            e(mVar, list);
            a0Var.position = 0L;
        }
        return 1;
    }

    public void g() {
        this.dataReferences.clear();
        this.readerState = 0;
    }

    private static int b(String str) throws v2 {
        str.hashCode();
        switch (str) {
            case "SlowMotion_Data":
                return TYPE_SLOW_MOTION_DATA;
            case "Super_SlowMotion_Edit_Data":
                return TYPE_SUPER_SLOW_MOTION_EDIT_DATA;
            case "Super_SlowMotion_Data":
                return TYPE_SUPER_SLOW_MOTION_DATA;
            case "Super_SlowMotion_Deflickering_On":
                return TYPE_SUPER_SLOW_DEFLICKERING_ON;
            case "Super_SlowMotion_BGM":
                return TYPE_SUPER_SLOW_MOTION_BGM;
            default:
                throw v2.a("Invalid SEF name", null);
        }
    }

    private void d(com.google.android.exoplayer2.extractor.m mVar, a0 a0Var) throws IOException {
        long length = mVar.getLength();
        int i10 = this.tailLength - 20;
        c0 c0Var = new c0(i10);
        mVar.readFully(c0Var.d(), 0, i10);
        for (int i11 = 0; i11 < i10 / 12; i11++) {
            c0Var.Q(2);
            short s = c0Var.s();
            if (s != TYPE_SLOW_MOTION_DATA && s != TYPE_SUPER_SLOW_MOTION_DATA && s != TYPE_SUPER_SLOW_MOTION_BGM && s != TYPE_SUPER_SLOW_MOTION_EDIT_DATA && s != TYPE_SUPER_SLOW_DEFLICKERING_ON) {
                c0Var.Q(8);
            } else {
                this.dataReferences.add(new a(s, (length - ((long) this.tailLength)) - ((long) c0Var.q()), c0Var.q()));
            }
        }
        if (this.dataReferences.isEmpty()) {
            a0Var.position = 0L;
        } else {
            this.readerState = 3;
            a0Var.position = this.dataReferences.get(0).startOffset;
        }
    }

    private void e(com.google.android.exoplayer2.extractor.m mVar, List<Metadata.Entry> list) throws IOException {
        long position = mVar.getPosition();
        int length = (int) ((mVar.getLength() - mVar.getPosition()) - ((long) this.tailLength));
        c0 c0Var = new c0(length);
        mVar.readFully(c0Var.d(), 0, length);
        for (int i10 = 0; i10 < this.dataReferences.size(); i10++) {
            a aVar = this.dataReferences.get(i10);
            c0Var.P((int) (aVar.startOffset - position));
            c0Var.Q(4);
            int iQ = c0Var.q();
            int iB = b(c0Var.A(iQ));
            int i11 = aVar.size - (iQ + 8);
            if (iB != TYPE_SLOW_MOTION_DATA) {
                if (iB != TYPE_SUPER_SLOW_MOTION_DATA && iB != TYPE_SUPER_SLOW_MOTION_BGM && iB != TYPE_SUPER_SLOW_MOTION_EDIT_DATA && iB != TYPE_SUPER_SLOW_DEFLICKERING_ON) {
                    throw new IllegalStateException();
                }
            } else {
                list.add(f(c0Var, i11));
            }
        }
    }
}
