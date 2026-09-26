package androidx.recyclerview.widget;

import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.VisibleForTesting;
import androidx.collection.LongSparseArray;
import androidx.collection.SimpleArrayMap;
import androidx.core.util.Pools;

/* JADX INFO: loaded from: classes8.dex */
class ViewInfoStore {
    private static final boolean DEBUG = false;

    @VisibleForTesting
    final SimpleArrayMap<RecyclerView.ViewHolder, InfoRecord> mLayoutHolderMap = new SimpleArrayMap<>();

    @VisibleForTesting
    final LongSparseArray<RecyclerView.ViewHolder> mOldChangedHolders = new LongSparseArray<>();

    static class InfoRecord {
        static final int FLAG_APPEAR = 2;
        static final int FLAG_APPEAR_AND_DISAPPEAR = 3;
        static final int FLAG_APPEAR_PRE_AND_POST = 14;
        static final int FLAG_DISAPPEARED = 1;
        static final int FLAG_POST = 8;
        static final int FLAG_PRE = 4;
        static final int FLAG_PRE_AND_POST = 12;
        static Pools.Pool<InfoRecord> sPool = new Pools.SimplePool(20);
        int flags;

        @Nullable
        RecyclerView.ItemAnimator.ItemHolderInfo postInfo;

        @Nullable
        RecyclerView.ItemAnimator.ItemHolderInfo preInfo;

        static void c(InfoRecord infoRecord) {
            infoRecord.flags = 0;
            infoRecord.preInfo = null;
            infoRecord.postInfo = null;
            sPool.b(infoRecord);
        }

        static void a() {
            while (sPool.a() != null) {
            }
        }

        static InfoRecord b() {
            InfoRecord infoRecordA = sPool.a();
            return infoRecordA == null ? new InfoRecord() : infoRecordA;
        }

        private InfoRecord() {
        }
    }

    interface ProcessCallback {
        void a(RecyclerView.ViewHolder viewHolder, @Nullable RecyclerView.ItemAnimator.ItemHolderInfo itemHolderInfo, RecyclerView.ItemAnimator.ItemHolderInfo itemHolderInfo2);

        void b(RecyclerView.ViewHolder viewHolder);

        void c(RecyclerView.ViewHolder viewHolder, @NonNull RecyclerView.ItemAnimator.ItemHolderInfo itemHolderInfo, @Nullable RecyclerView.ItemAnimator.ItemHolderInfo itemHolderInfo2);

        void d(RecyclerView.ViewHolder viewHolder, @NonNull RecyclerView.ItemAnimator.ItemHolderInfo itemHolderInfo, @NonNull RecyclerView.ItemAnimator.ItemHolderInfo itemHolderInfo2);
    }

    @Nullable
    RecyclerView.ItemAnimator.ItemHolderInfo n(RecyclerView.ViewHolder viewHolder) {
        return l(viewHolder, 4);
    }

    private RecyclerView.ItemAnimator.ItemHolderInfo l(RecyclerView.ViewHolder viewHolder, int i10) {
        InfoRecord infoRecordP;
        RecyclerView.ItemAnimator.ItemHolderInfo itemHolderInfo;
        int i11 = this.mLayoutHolderMap.i(viewHolder);
        if (i11 >= 0 && (infoRecordP = this.mLayoutHolderMap.p(i11)) != null) {
            int i12 = infoRecordP.flags;
            if ((i12 & i10) != 0) {
                int i13 = (~i10) & i12;
                infoRecordP.flags = i13;
                if (i10 == 4) {
                    itemHolderInfo = infoRecordP.preInfo;
                } else {
                    if (i10 != 8) {
                        throw new IllegalArgumentException("Must provide flag PRE or POST");
                    }
                    itemHolderInfo = infoRecordP.postInfo;
                }
                if ((i13 & 12) == 0) {
                    this.mLayoutHolderMap.n(i11);
                    InfoRecord.c(infoRecordP);
                }
                return itemHolderInfo;
            }
        }
        return null;
    }

    void a(RecyclerView.ViewHolder viewHolder, RecyclerView.ItemAnimator.ItemHolderInfo itemHolderInfo) {
        InfoRecord infoRecordB = this.mLayoutHolderMap.get(viewHolder);
        if (infoRecordB == null) {
            infoRecordB = InfoRecord.b();
            this.mLayoutHolderMap.put(viewHolder, infoRecordB);
        }
        infoRecordB.flags |= 2;
        infoRecordB.preInfo = itemHolderInfo;
    }

    void b(RecyclerView.ViewHolder viewHolder) {
        InfoRecord infoRecordB = this.mLayoutHolderMap.get(viewHolder);
        if (infoRecordB == null) {
            infoRecordB = InfoRecord.b();
            this.mLayoutHolderMap.put(viewHolder, infoRecordB);
        }
        infoRecordB.flags |= 1;
    }

    void c(long j6, RecyclerView.ViewHolder viewHolder) {
        this.mOldChangedHolders.m(j6, viewHolder);
    }

    void d(RecyclerView.ViewHolder viewHolder, RecyclerView.ItemAnimator.ItemHolderInfo itemHolderInfo) {
        InfoRecord infoRecordB = this.mLayoutHolderMap.get(viewHolder);
        if (infoRecordB == null) {
            infoRecordB = InfoRecord.b();
            this.mLayoutHolderMap.put(viewHolder, infoRecordB);
        }
        infoRecordB.postInfo = itemHolderInfo;
        infoRecordB.flags |= 8;
    }

    void e(RecyclerView.ViewHolder viewHolder, RecyclerView.ItemAnimator.ItemHolderInfo itemHolderInfo) {
        InfoRecord infoRecordB = this.mLayoutHolderMap.get(viewHolder);
        if (infoRecordB == null) {
            infoRecordB = InfoRecord.b();
            this.mLayoutHolderMap.put(viewHolder, infoRecordB);
        }
        infoRecordB.preInfo = itemHolderInfo;
        infoRecordB.flags |= 4;
    }

    void f() {
        this.mLayoutHolderMap.clear();
        this.mOldChangedHolders.c();
    }

    RecyclerView.ViewHolder g(long j6) {
        return this.mOldChangedHolders.h(j6);
    }

    boolean h(RecyclerView.ViewHolder viewHolder) {
        InfoRecord infoRecord = this.mLayoutHolderMap.get(viewHolder);
        return (infoRecord == null || (infoRecord.flags & 1) == 0) ? false : true;
    }

    boolean i(RecyclerView.ViewHolder viewHolder) {
        InfoRecord infoRecord = this.mLayoutHolderMap.get(viewHolder);
        return (infoRecord == null || (infoRecord.flags & 4) == 0) ? false : true;
    }

    @Nullable
    RecyclerView.ItemAnimator.ItemHolderInfo m(RecyclerView.ViewHolder viewHolder) {
        return l(viewHolder, 8);
    }

    void o(ProcessCallback processCallback) {
        for (int size = this.mLayoutHolderMap.size() - 1; size >= 0; size--) {
            RecyclerView.ViewHolder viewHolderL = this.mLayoutHolderMap.l(size);
            InfoRecord infoRecordN = this.mLayoutHolderMap.n(size);
            int i10 = infoRecordN.flags;
            if ((i10 & 3) == 3) {
                processCallback.b(viewHolderL);
            } else if ((i10 & 1) != 0) {
                RecyclerView.ItemAnimator.ItemHolderInfo itemHolderInfo = infoRecordN.preInfo;
                if (itemHolderInfo == null) {
                    processCallback.b(viewHolderL);
                } else {
                    processCallback.c(viewHolderL, itemHolderInfo, infoRecordN.postInfo);
                }
            } else if ((i10 & 14) == 14) {
                processCallback.a(viewHolderL, infoRecordN.preInfo, infoRecordN.postInfo);
            } else if ((i10 & 12) == 12) {
                processCallback.d(viewHolderL, infoRecordN.preInfo, infoRecordN.postInfo);
            } else if ((i10 & 4) != 0) {
                processCallback.c(viewHolderL, infoRecordN.preInfo, null);
            } else if ((i10 & 8) != 0) {
                processCallback.a(viewHolderL, infoRecordN.preInfo, infoRecordN.postInfo);
            }
            InfoRecord.c(infoRecordN);
        }
    }

    void p(RecyclerView.ViewHolder viewHolder) {
        InfoRecord infoRecord = this.mLayoutHolderMap.get(viewHolder);
        if (infoRecord == null) {
            return;
        }
        infoRecord.flags &= -2;
    }

    void q(RecyclerView.ViewHolder viewHolder) {
        for (int iP = this.mOldChangedHolders.p() - 1; iP >= 0; iP--) {
            if (viewHolder == this.mOldChangedHolders.q(iP)) {
                this.mOldChangedHolders.o(iP);
                break;
            }
        }
        InfoRecord infoRecordRemove = this.mLayoutHolderMap.remove(viewHolder);
        if (infoRecordRemove != null) {
            InfoRecord.c(infoRecordRemove);
        }
    }

    ViewInfoStore() {
    }

    void j() {
        InfoRecord.a();
    }

    public void k(RecyclerView.ViewHolder viewHolder) {
        p(viewHolder);
    }
}
