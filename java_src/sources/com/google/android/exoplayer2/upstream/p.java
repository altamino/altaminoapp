package com.google.android.exoplayer2.upstream;

import androidx.annotation.Nullable;
import com.google.android.exoplayer2.util.o0;
import java.util.Arrays;

/* JADX INFO: loaded from: classes10.dex */
public final class p implements b {
    private static final int AVAILABLE_EXTRA_CAPACITY = 100;
    private int allocatedCount;
    private a[] availableAllocations;
    private int availableCount;
    private final int individualAllocationSize;

    @Nullable
    private final byte[] initialAllocationBlock;
    private int targetBufferSize;
    private final boolean trimOnReset;

    public p(boolean z6, int i10) {
        this(z6, i10, 0);
    }

    @Override // com.google.android.exoplayer2.upstream.b
    public synchronized void a(a aVar) {
        a[] aVarArr = this.availableAllocations;
        int i10 = this.availableCount;
        this.availableCount = i10 + 1;
        aVarArr[i10] = aVar;
        this.allocatedCount--;
        notifyAll();
    }

    @Override // com.google.android.exoplayer2.upstream.b
    public synchronized a allocate() {
        a aVar;
        try {
            this.allocatedCount++;
            int i10 = this.availableCount;
            if (i10 > 0) {
                a[] aVarArr = this.availableAllocations;
                int i11 = i10 - 1;
                this.availableCount = i11;
                aVar = (a) com.google.android.exoplayer2.util.a.e(aVarArr[i11]);
                this.availableAllocations[this.availableCount] = null;
            } else {
                aVar = new a(new byte[this.individualAllocationSize], 0);
                int i12 = this.allocatedCount;
                a[] aVarArr2 = this.availableAllocations;
                if (i12 > aVarArr2.length) {
                    this.availableAllocations = (a[]) Arrays.copyOf(aVarArr2, aVarArr2.length * 2);
                }
            }
        } catch (Throwable th) {
            throw th;
        }
        return aVar;
    }

    @Override // com.google.android.exoplayer2.upstream.b
    public synchronized void b(@Nullable b.a aVar) {
        while (aVar != null) {
            try {
                a[] aVarArr = this.availableAllocations;
                int i10 = this.availableCount;
                this.availableCount = i10 + 1;
                aVarArr[i10] = aVar.a();
                this.allocatedCount--;
                aVar = aVar.next();
            } catch (Throwable th) {
                throw th;
            }
        }
        notifyAll();
    }

    public synchronized int c() {
        return this.allocatedCount * this.individualAllocationSize;
    }

    public synchronized void d() {
        if (this.trimOnReset) {
            e(0);
        }
    }

    public synchronized void e(int i10) {
        boolean z6 = i10 < this.targetBufferSize;
        this.targetBufferSize = i10;
        if (z6) {
            trim();
        }
    }

    @Override // com.google.android.exoplayer2.upstream.b
    public int getIndividualAllocationLength() {
        return this.individualAllocationSize;
    }

    @Override // com.google.android.exoplayer2.upstream.b
    public synchronized void trim() {
        try {
            int i10 = 0;
            int iMax = Math.max(0, o0.l(this.targetBufferSize, this.individualAllocationSize) - this.allocatedCount);
            int i11 = this.availableCount;
            if (iMax >= i11) {
                return;
            }
            if (this.initialAllocationBlock != null) {
                int i12 = i11 - 1;
                while (i10 <= i12) {
                    a aVar = (a) com.google.android.exoplayer2.util.a.e(this.availableAllocations[i10]);
                    if (aVar.data == this.initialAllocationBlock) {
                        i10++;
                    } else {
                        a aVar2 = (a) com.google.android.exoplayer2.util.a.e(this.availableAllocations[i12]);
                        if (aVar2.data != this.initialAllocationBlock) {
                            i12--;
                        } else {
                            a[] aVarArr = this.availableAllocations;
                            aVarArr[i10] = aVar2;
                            aVarArr[i12] = aVar;
                            i12--;
                            i10++;
                        }
                    }
                }
                iMax = Math.max(iMax, i10);
                if (iMax >= this.availableCount) {
                    return;
                }
            }
            Arrays.fill(this.availableAllocations, iMax, this.availableCount, (Object) null);
            this.availableCount = iMax;
        } catch (Throwable th) {
            throw th;
        }
    }

    public p(boolean z6, int i10, int i11) {
        com.google.android.exoplayer2.util.a.a(i10 > 0);
        com.google.android.exoplayer2.util.a.a(i11 >= 0);
        this.trimOnReset = z6;
        this.individualAllocationSize = i10;
        this.availableCount = i11;
        this.availableAllocations = new a[i11 + 100];
        if (i11 <= 0) {
            this.initialAllocationBlock = null;
            return;
        }
        this.initialAllocationBlock = new byte[i11 * i10];
        for (int i12 = 0; i12 < i11; i12++) {
            this.availableAllocations[i12] = new a(this.initialAllocationBlock, i12 * i10);
        }
    }
}
