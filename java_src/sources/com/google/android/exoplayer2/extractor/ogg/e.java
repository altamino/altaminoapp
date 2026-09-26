package com.google.android.exoplayer2.extractor.ogg;

import com.google.android.exoplayer2.extractor.m;
import com.google.android.exoplayer2.extractor.o;
import com.google.android.exoplayer2.util.c0;
import java.io.IOException;
import java.util.Arrays;

/* JADX INFO: loaded from: classes9.dex */
final class e {
    private boolean populated;
    private int segmentCount;
    private final f pageHeader = new f();
    private final c0 packetArray = new c0(new byte[65025], 0);
    private int currentSegmentIndex = -1;

    private int a(int i10) {
        int i11;
        int i12 = 0;
        this.segmentCount = 0;
        do {
            int i13 = this.segmentCount;
            int i14 = i10 + i13;
            f fVar = this.pageHeader;
            if (i14 >= fVar.pageSegmentCount) {
                break;
            }
            int[] iArr = fVar.laces;
            this.segmentCount = i13 + 1;
            i11 = iArr[i13 + i10];
            i12 += i11;
        } while (i11 == 255);
        return i12;
    }

    public f b() {
        return this.pageHeader;
    }

    public c0 c() {
        return this.packetArray;
    }

    public boolean d(m mVar) throws IOException {
        int i10;
        com.google.android.exoplayer2.util.a.g(mVar != null);
        if (this.populated) {
            this.populated = false;
            this.packetArray.L(0);
        }
        while (!this.populated) {
            if (this.currentSegmentIndex < 0) {
                if (!this.pageHeader.c(mVar) || !this.pageHeader.a(mVar, true)) {
                    return false;
                }
                f fVar = this.pageHeader;
                int iA = fVar.headerSize;
                if ((fVar.type & 1) == 1 && this.packetArray.f() == 0) {
                    iA += a(0);
                    i10 = this.segmentCount;
                } else {
                    i10 = 0;
                }
                if (!o.e(mVar, iA)) {
                    return false;
                }
                this.currentSegmentIndex = i10;
            }
            int iA2 = a(this.currentSegmentIndex);
            int i11 = this.currentSegmentIndex + this.segmentCount;
            if (iA2 > 0) {
                c0 c0Var = this.packetArray;
                c0Var.c(c0Var.f() + iA2);
                if (!o.d(mVar, this.packetArray.d(), this.packetArray.f(), iA2)) {
                    return false;
                }
                c0 c0Var2 = this.packetArray;
                c0Var2.O(c0Var2.f() + iA2);
                this.populated = this.pageHeader.laces[i11 + (-1)] != 255;
            }
            if (i11 == this.pageHeader.pageSegmentCount) {
                i11 = -1;
            }
            this.currentSegmentIndex = i11;
        }
        return true;
    }

    public void e() {
        this.pageHeader.b();
        this.packetArray.L(0);
        this.currentSegmentIndex = -1;
        this.populated = false;
    }

    public void f() {
        if (this.packetArray.d().length == 65025) {
            return;
        }
        c0 c0Var = this.packetArray;
        c0Var.N(Arrays.copyOf(c0Var.d(), Math.max(65025, this.packetArray.f())), this.packetArray.f());
    }

    e() {
    }
}
