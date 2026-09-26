package com.google.android.exoplayer2.extractor.ts;

import com.google.android.exoplayer2.util.l0;
import com.google.android.exoplayer2.util.o0;

/* JADX INFO: loaded from: classes7.dex */
public final class c0 implements i0 {
    private static final int DEFAULT_SECTION_BUFFER_LENGTH = 32;
    private static final int MAX_SECTION_LENGTH = 4098;
    private static final int SECTION_HEADER_LENGTH = 3;
    private int bytesRead;
    private final b0 reader;
    private final com.google.android.exoplayer2.util.c0 sectionData = new com.google.android.exoplayer2.util.c0(32);
    private boolean sectionSyntaxIndicator;
    private int totalSectionLength;
    private boolean waitingForPayloadStart;

    @Override // com.google.android.exoplayer2.extractor.ts.i0
    public void b(com.google.android.exoplayer2.util.c0 c0Var, int i10) {
        int iE;
        boolean z6 = (i10 & 1) != 0;
        if (z6) {
            iE = c0Var.e() + c0Var.D();
        } else {
            iE = -1;
        }
        if (this.waitingForPayloadStart) {
            if (!z6) {
                return;
            }
            this.waitingForPayloadStart = false;
            c0Var.P(iE);
            this.bytesRead = 0;
        }
        while (c0Var.a() > 0) {
            int i11 = this.bytesRead;
            if (i11 < 3) {
                if (i11 == 0) {
                    int iD = c0Var.D();
                    c0Var.P(c0Var.e() - 1);
                    if (iD == 255) {
                        this.waitingForPayloadStart = true;
                        return;
                    }
                }
                int iMin = Math.min(c0Var.a(), 3 - this.bytesRead);
                c0Var.j(this.sectionData.d(), this.bytesRead, iMin);
                int i12 = this.bytesRead + iMin;
                this.bytesRead = i12;
                if (i12 == 3) {
                    this.sectionData.P(0);
                    this.sectionData.O(3);
                    this.sectionData.Q(1);
                    int iD2 = this.sectionData.D();
                    int iD3 = this.sectionData.D();
                    this.sectionSyntaxIndicator = (iD2 & 128) != 0;
                    this.totalSectionLength = (((iD2 & 15) << 8) | iD3) + 3;
                    int iB = this.sectionData.b();
                    int i13 = this.totalSectionLength;
                    if (iB < i13) {
                        this.sectionData.c(Math.min(4098, Math.max(i13, this.sectionData.b() * 2)));
                    }
                }
            } else {
                int iMin2 = Math.min(c0Var.a(), this.totalSectionLength - this.bytesRead);
                c0Var.j(this.sectionData.d(), this.bytesRead, iMin2);
                int i14 = this.bytesRead + iMin2;
                this.bytesRead = i14;
                int i15 = this.totalSectionLength;
                if (i14 != i15) {
                    continue;
                } else {
                    if (!this.sectionSyntaxIndicator) {
                        this.sectionData.O(i15);
                    } else {
                        if (o0.r(this.sectionData.d(), 0, this.totalSectionLength, -1) != 0) {
                            this.waitingForPayloadStart = true;
                            return;
                        }
                        this.sectionData.O(this.totalSectionLength - 4);
                    }
                    this.sectionData.P(0);
                    this.reader.c(this.sectionData);
                    this.bytesRead = 0;
                }
            }
        }
    }

    @Override // com.google.android.exoplayer2.extractor.ts.i0
    public void seek() {
        this.waitingForPayloadStart = true;
    }

    @Override // com.google.android.exoplayer2.extractor.ts.i0
    public void a(l0 l0Var, com.google.android.exoplayer2.extractor.n nVar, i0.d dVar) {
        this.reader.a(l0Var, nVar, dVar);
        this.waitingForPayloadStart = true;
    }

    public c0(b0 b0Var) {
        this.reader = b0Var;
    }
}
