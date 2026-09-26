package androidx.media3.exoplayer.upstream;

import androidx.annotation.Nullable;
import androidx.media3.common.util.Assertions;
import androidx.media3.common.util.UnstableApi;
import androidx.media3.common.util.Util;
import java.util.Arrays;

/* JADX INFO: loaded from: classes8.dex */
@UnstableApi
public final class DefaultAllocator implements Allocator {
    private static final int AVAILABLE_EXTRA_CAPACITY = 100;
    private int allocatedCount;
    private Allocation[] availableAllocations;
    private int availableCount;
    private final int individualAllocationSize;

    @Nullable
    private final byte[] initialAllocationBlock;
    private int targetBufferSize;
    private final boolean trimOnReset;

    public DefaultAllocator(boolean z6, int i10) {
        this(z6, i10, 0);
    }

    @Override // androidx.media3.exoplayer.upstream.Allocator
    public synchronized void a(@Nullable Allocator.AllocationNode allocationNode) {
        while (allocationNode != null) {
            try {
                Allocation[] allocationArr = this.availableAllocations;
                int i10 = this.availableCount;
                this.availableCount = i10 + 1;
                allocationArr[i10] = allocationNode.a();
                this.allocatedCount--;
                allocationNode = allocationNode.next();
            } catch (Throwable th) {
                throw th;
            }
        }
        notifyAll();
    }

    @Override // androidx.media3.exoplayer.upstream.Allocator
    public synchronized Allocation allocate() {
        Allocation allocation;
        try {
            this.allocatedCount++;
            int i10 = this.availableCount;
            if (i10 > 0) {
                Allocation[] allocationArr = this.availableAllocations;
                int i11 = i10 - 1;
                this.availableCount = i11;
                allocation = (Allocation) Assertions.e(allocationArr[i11]);
                this.availableAllocations[this.availableCount] = null;
            } else {
                allocation = new Allocation(new byte[this.individualAllocationSize], 0);
                int i12 = this.allocatedCount;
                Allocation[] allocationArr2 = this.availableAllocations;
                if (i12 > allocationArr2.length) {
                    this.availableAllocations = (Allocation[]) Arrays.copyOf(allocationArr2, allocationArr2.length * 2);
                }
            }
        } catch (Throwable th) {
            throw th;
        }
        return allocation;
    }

    @Override // androidx.media3.exoplayer.upstream.Allocator
    public synchronized void b(Allocation allocation) {
        Allocation[] allocationArr = this.availableAllocations;
        int i10 = this.availableCount;
        this.availableCount = i10 + 1;
        allocationArr[i10] = allocation;
        this.allocatedCount--;
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

    @Override // androidx.media3.exoplayer.upstream.Allocator
    public int getIndividualAllocationLength() {
        return this.individualAllocationSize;
    }

    @Override // androidx.media3.exoplayer.upstream.Allocator
    public synchronized void trim() {
        try {
            int i10 = 0;
            int iMax = Math.max(0, Util.l(this.targetBufferSize, this.individualAllocationSize) - this.allocatedCount);
            int i11 = this.availableCount;
            if (iMax >= i11) {
                return;
            }
            if (this.initialAllocationBlock != null) {
                int i12 = i11 - 1;
                while (i10 <= i12) {
                    Allocation allocation = (Allocation) Assertions.e(this.availableAllocations[i10]);
                    if (allocation.data == this.initialAllocationBlock) {
                        i10++;
                    } else {
                        Allocation allocation2 = (Allocation) Assertions.e(this.availableAllocations[i12]);
                        if (allocation2.data != this.initialAllocationBlock) {
                            i12--;
                        } else {
                            Allocation[] allocationArr = this.availableAllocations;
                            allocationArr[i10] = allocation2;
                            allocationArr[i12] = allocation;
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

    public DefaultAllocator(boolean z6, int i10, int i11) {
        Assertions.a(i10 > 0);
        Assertions.a(i11 >= 0);
        this.trimOnReset = z6;
        this.individualAllocationSize = i10;
        this.availableCount = i11;
        this.availableAllocations = new Allocation[i11 + 100];
        if (i11 <= 0) {
            this.initialAllocationBlock = null;
            return;
        }
        this.initialAllocationBlock = new byte[i11 * i10];
        for (int i12 = 0; i12 < i11; i12++) {
            this.availableAllocations[i12] = new Allocation(this.initialAllocationBlock, i12 * i10);
        }
    }
}
