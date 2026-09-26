package androidx.media3.exoplayer.upstream;

import androidx.annotation.Nullable;
import androidx.media3.common.util.UnstableApi;

/* JADX INFO: loaded from: classes5.dex */
@UnstableApi
public interface Allocator {

    public interface AllocationNode {
        Allocation a();

        @Nullable
        AllocationNode next();
    }

    void a(AllocationNode allocationNode);

    Allocation allocate();

    void b(Allocation allocation);

    int getIndividualAllocationLength();

    void trim();
}
