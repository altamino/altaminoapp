package androidx.recyclerview.widget;

import androidx.core.util.Pools;
import com.narvii.notification.Notification;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: classes8.dex */
final class AdapterHelper implements OpReorderer.Callback {
    private static final boolean DEBUG = false;
    static final int POSITION_TYPE_INVISIBLE = 0;
    static final int POSITION_TYPE_NEW_OR_LAID_OUT = 1;
    private static final String TAG = "AHT";
    final Callback mCallback;
    final boolean mDisableRecycler;
    private int mExistingUpdateTypes;
    Runnable mOnItemProcessedCallback;
    final OpReorderer mOpReorderer;
    final ArrayList<UpdateOp> mPendingUpdates;
    final ArrayList<UpdateOp> mPostponedList;
    private Pools.Pool<UpdateOp> mUpdateOpPool;

    interface Callback {
        void a(int i10, int i11);

        void b(UpdateOp updateOp);

        void c(UpdateOp updateOp);

        RecyclerView.ViewHolder d(int i10);

        void e(int i10, int i11);

        void f(int i10, int i11);

        void g(int i10, int i11);

        void h(int i10, int i11, Object obj);
    }

    static final class UpdateOp {
        static final int ADD = 1;
        static final int MOVE = 8;
        static final int POOL_SIZE = 30;
        static final int REMOVE = 2;
        static final int UPDATE = 4;
        int cmd;
        int itemCount;
        Object payload;
        int positionStart;

        String a() {
            int i10 = this.cmd;
            if (i10 == 1) {
                return Notification.ACTION_ADD;
            }
            if (i10 == 2) {
                return "rm";
            }
            if (i10 != 4) {
                return i10 != 8 ? "??" : "mv";
            }
            return "up";
        }

        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof UpdateOp)) {
                return false;
            }
            UpdateOp updateOp = (UpdateOp) obj;
            int i10 = this.cmd;
            if (i10 != updateOp.cmd) {
                return false;
            }
            if (i10 == 8 && Math.abs(this.itemCount - this.positionStart) == 1 && this.itemCount == updateOp.positionStart && this.positionStart == updateOp.itemCount) {
                return true;
            }
            if (this.itemCount != updateOp.itemCount || this.positionStart != updateOp.positionStart) {
                return false;
            }
            Object obj2 = this.payload;
            if (obj2 != null) {
                if (!obj2.equals(updateOp.payload)) {
                    return false;
                }
            } else if (updateOp.payload != null) {
                return false;
            }
            return true;
        }

        public int hashCode() {
            return (((this.cmd * 31) + this.positionStart) * 31) + this.itemCount;
        }

        public String toString() {
            return Integer.toHexString(System.identityHashCode(this)) + "[" + a() + ",s:" + this.positionStart + "c:" + this.itemCount + ",p:" + this.payload + "]";
        }

        UpdateOp(int i10, int i11, int i12, Object obj) {
            this.cmd = i10;
            this.positionStart = i11;
            this.itemCount = i12;
            this.payload = obj;
        }
    }

    AdapterHelper(Callback callback) {
        this(callback, false);
    }

    int m(int i10) {
        return n(i10, 0);
    }

    boolean o(int i10) {
        return (i10 & this.mExistingUpdateTypes) != 0;
    }

    boolean r(int i10, int i11, Object obj) {
        if (i11 < 1) {
            return false;
        }
        this.mPendingUpdates.add(a(4, i10, i11, obj));
        this.mExistingUpdateTypes |= 4;
        return this.mPendingUpdates.size() == 1;
    }

    boolean s(int i10, int i11) {
        if (i11 < 1) {
            return false;
        }
        this.mPendingUpdates.add(a(1, i10, i11, null));
        this.mExistingUpdateTypes |= 1;
        return this.mPendingUpdates.size() == 1;
    }

    boolean t(int i10, int i11, int i12) {
        if (i10 == i11) {
            return false;
        }
        if (i12 != 1) {
            throw new IllegalArgumentException("Moving more than 1 item is not supported yet");
        }
        this.mPendingUpdates.add(a(8, i10, i11, null));
        this.mExistingUpdateTypes |= 8;
        return this.mPendingUpdates.size() == 1;
    }

    boolean u(int i10, int i11) {
        if (i11 < 1) {
            return false;
        }
        this.mPendingUpdates.add(a(2, i10, i11, null));
        this.mExistingUpdateTypes |= 2;
        return this.mPendingUpdates.size() == 1;
    }

    AdapterHelper(Callback callback, boolean z6) {
        this.mUpdateOpPool = new Pools.SimplePool(30);
        this.mPendingUpdates = new ArrayList<>();
        this.mPostponedList = new ArrayList<>();
        this.mExistingUpdateTypes = 0;
        this.mCallback = callback;
        this.mDisableRecycler = z6;
        this.mOpReorderer = new OpReorderer(this);
    }

    private void f(UpdateOp updateOp) {
        boolean z6;
        byte b7;
        int i10 = updateOp.positionStart;
        int i11 = updateOp.itemCount + i10;
        byte b10 = -1;
        int i12 = i10;
        int i13 = 0;
        while (i12 < i11) {
            if (this.mCallback.d(i12) != null || h(i12)) {
                if (b10 == 0) {
                    k(a(2, i10, i13, null));
                    z6 = true;
                } else {
                    z6 = false;
                }
                b7 = 1;
            } else {
                if (b10 == 1) {
                    v(a(2, i10, i13, null));
                    z6 = true;
                } else {
                    z6 = false;
                }
                b7 = 0;
            }
            if (z6) {
                i12 -= i13;
                i11 -= i13;
                i13 = 1;
            } else {
                i13++;
            }
            i12++;
            b10 = b7;
        }
        if (i13 != updateOp.itemCount) {
            b(updateOp);
            updateOp = a(2, i10, i13, null);
        }
        if (b10 == 0) {
            k(updateOp);
        } else {
            v(updateOp);
        }
    }

    private void g(UpdateOp updateOp) {
        int i10 = updateOp.positionStart;
        int i11 = updateOp.itemCount + i10;
        int i12 = 0;
        byte b7 = -1;
        int i13 = i10;
        while (i10 < i11) {
            if (this.mCallback.d(i10) != null || h(i10)) {
                if (b7 == 0) {
                    k(a(4, i13, i12, updateOp.payload));
                    i13 = i10;
                    i12 = 0;
                }
                b7 = 1;
            } else {
                if (b7 == 1) {
                    v(a(4, i13, i12, updateOp.payload));
                    i13 = i10;
                    i12 = 0;
                }
                b7 = 0;
            }
            i12++;
            i10++;
        }
        if (i12 != updateOp.itemCount) {
            Object obj = updateOp.payload;
            b(updateOp);
            updateOp = a(4, i13, i12, obj);
        }
        if (b7 == 0) {
            k(updateOp);
        } else {
            v(updateOp);
        }
    }

    private boolean h(int i10) {
        int size = this.mPostponedList.size();
        for (int i11 = 0; i11 < size; i11++) {
            UpdateOp updateOp = this.mPostponedList.get(i11);
            int i12 = updateOp.cmd;
            if (i12 == 8) {
                if (n(updateOp.itemCount, i11 + 1) == i10) {
                    return true;
                }
            } else if (i12 == 1) {
                int i13 = updateOp.positionStart;
                int i14 = updateOp.itemCount + i13;
                while (i13 < i14) {
                    if (n(i13, i11 + 1) == i10) {
                        return true;
                    }
                    i13++;
                }
            } else {
                continue;
            }
        }
        return false;
    }

    private void k(UpdateOp updateOp) {
        int i10;
        int i11 = updateOp.cmd;
        if (i11 == 1 || i11 == 8) {
            throw new IllegalArgumentException("should not dispatch add or move for pre layout");
        }
        int iZ = z(updateOp.positionStart, i11);
        int i12 = updateOp.positionStart;
        int i13 = updateOp.cmd;
        if (i13 == 2) {
            i10 = 0;
        } else {
            if (i13 != 4) {
                throw new IllegalArgumentException("op should be remove or update." + updateOp);
            }
            i10 = 1;
        }
        int i14 = 1;
        for (int i15 = 1; i15 < updateOp.itemCount; i15++) {
            int iZ2 = z(updateOp.positionStart + (i10 * i15), updateOp.cmd);
            int i16 = updateOp.cmd;
            if (i16 == 2 ? iZ2 != iZ : !(i16 == 4 && iZ2 == iZ + 1)) {
                UpdateOp updateOpA = a(i16, iZ, i14, updateOp.payload);
                l(updateOpA, i12);
                b(updateOpA);
                if (updateOp.cmd == 4) {
                    i12 += i14;
                }
                i14 = 1;
                iZ = iZ2;
            } else {
                i14++;
            }
        }
        Object obj = updateOp.payload;
        b(updateOp);
        if (i14 > 0) {
            UpdateOp updateOpA2 = a(updateOp.cmd, iZ, i14, obj);
            l(updateOpA2, i12);
            b(updateOpA2);
        }
    }

    private void v(UpdateOp updateOp) {
        this.mPostponedList.add(updateOp);
        int i10 = updateOp.cmd;
        if (i10 == 1) {
            this.mCallback.e(updateOp.positionStart, updateOp.itemCount);
            return;
        }
        if (i10 == 2) {
            this.mCallback.g(updateOp.positionStart, updateOp.itemCount);
            return;
        }
        if (i10 == 4) {
            this.mCallback.h(updateOp.positionStart, updateOp.itemCount, updateOp.payload);
        } else {
            if (i10 == 8) {
                this.mCallback.a(updateOp.positionStart, updateOp.itemCount);
                return;
            }
            throw new IllegalArgumentException("Unknown update op type for " + updateOp);
        }
    }

    private int z(int i10, int i11) {
        int i12;
        int i13;
        for (int size = this.mPostponedList.size() - 1; size >= 0; size--) {
            UpdateOp updateOp = this.mPostponedList.get(size);
            int i14 = updateOp.cmd;
            if (i14 == 8) {
                int i15 = updateOp.positionStart;
                int i16 = updateOp.itemCount;
                if (i15 < i16) {
                    i13 = i15;
                    i12 = i16;
                } else {
                    i12 = i15;
                    i13 = i16;
                }
                if (i10 < i13 || i10 > i12) {
                    if (i10 < i15) {
                        if (i11 == 1) {
                            updateOp.positionStart = i15 + 1;
                            updateOp.itemCount = i16 + 1;
                        } else if (i11 == 2) {
                            updateOp.positionStart = i15 - 1;
                            updateOp.itemCount = i16 - 1;
                        }
                    }
                } else if (i13 == i15) {
                    if (i11 == 1) {
                        updateOp.itemCount = i16 + 1;
                    } else if (i11 == 2) {
                        updateOp.itemCount = i16 - 1;
                    }
                    i10++;
                } else {
                    if (i11 == 1) {
                        updateOp.positionStart = i15 + 1;
                    } else if (i11 == 2) {
                        updateOp.positionStart = i15 - 1;
                    }
                    i10--;
                }
            } else {
                int i17 = updateOp.positionStart;
                if (i17 <= i10) {
                    if (i14 == 1) {
                        i10 -= updateOp.itemCount;
                    } else if (i14 == 2) {
                        i10 += updateOp.itemCount;
                    }
                } else if (i11 == 1) {
                    updateOp.positionStart = i17 + 1;
                } else if (i11 == 2) {
                    updateOp.positionStart = i17 - 1;
                }
            }
        }
        for (int size2 = this.mPostponedList.size() - 1; size2 >= 0; size2--) {
            UpdateOp updateOp2 = this.mPostponedList.get(size2);
            if (updateOp2.cmd == 8) {
                int i18 = updateOp2.itemCount;
                if (i18 == updateOp2.positionStart || i18 < 0) {
                    this.mPostponedList.remove(size2);
                    b(updateOp2);
                }
            } else if (updateOp2.itemCount <= 0) {
                this.mPostponedList.remove(size2);
                b(updateOp2);
            }
        }
        return i10;
    }

    @Override // androidx.recyclerview.widget.OpReorderer.Callback
    public UpdateOp a(int i10, int i11, int i12, Object obj) {
        UpdateOp updateOpA = this.mUpdateOpPool.a();
        if (updateOpA == null) {
            return new UpdateOp(i10, i11, i12, obj);
        }
        updateOpA.cmd = i10;
        updateOpA.positionStart = i11;
        updateOpA.itemCount = i12;
        updateOpA.payload = obj;
        return updateOpA;
    }

    @Override // androidx.recyclerview.widget.OpReorderer.Callback
    public void b(UpdateOp updateOp) {
        if (this.mDisableRecycler) {
            return;
        }
        updateOp.payload = null;
        this.mUpdateOpPool.b(updateOp);
    }

    public int e(int i10) {
        int size = this.mPendingUpdates.size();
        for (int i11 = 0; i11 < size; i11++) {
            UpdateOp updateOp = this.mPendingUpdates.get(i11);
            int i12 = updateOp.cmd;
            if (i12 != 1) {
                if (i12 == 2) {
                    int i13 = updateOp.positionStart;
                    if (i13 <= i10) {
                        int i14 = updateOp.itemCount;
                        if (i13 + i14 > i10) {
                            return -1;
                        }
                        i10 -= i14;
                    } else {
                        continue;
                    }
                } else if (i12 == 8) {
                    int i15 = updateOp.positionStart;
                    if (i15 == i10) {
                        i10 = updateOp.itemCount;
                    } else {
                        if (i15 < i10) {
                            i10--;
                        }
                        if (updateOp.itemCount <= i10) {
                            i10++;
                        }
                    }
                }
            } else if (updateOp.positionStart <= i10) {
                i10 += updateOp.itemCount;
            }
        }
        return i10;
    }

    void i() {
        int size = this.mPostponedList.size();
        for (int i10 = 0; i10 < size; i10++) {
            this.mCallback.c(this.mPostponedList.get(i10));
        }
        x(this.mPostponedList);
        this.mExistingUpdateTypes = 0;
    }

    void l(UpdateOp updateOp, int i10) {
        this.mCallback.b(updateOp);
        int i11 = updateOp.cmd;
        if (i11 == 2) {
            this.mCallback.f(i10, updateOp.itemCount);
        } else {
            if (i11 != 4) {
                throw new IllegalArgumentException("only remove and update ops can be dispatched in first pass");
            }
            this.mCallback.h(i10, updateOp.itemCount, updateOp.payload);
        }
    }

    int n(int i10, int i11) {
        int size = this.mPostponedList.size();
        while (i11 < size) {
            UpdateOp updateOp = this.mPostponedList.get(i11);
            int i12 = updateOp.cmd;
            if (i12 == 8) {
                int i13 = updateOp.positionStart;
                if (i13 == i10) {
                    i10 = updateOp.itemCount;
                } else {
                    if (i13 < i10) {
                        i10--;
                    }
                    if (updateOp.itemCount <= i10) {
                        i10++;
                    }
                }
            } else {
                int i14 = updateOp.positionStart;
                if (i14 > i10) {
                    continue;
                } else if (i12 == 2) {
                    int i15 = updateOp.itemCount;
                    if (i10 < i14 + i15) {
                        return -1;
                    }
                    i10 -= i15;
                } else if (i12 == 1) {
                    i10 += updateOp.itemCount;
                }
            }
            i11++;
        }
        return i10;
    }

    boolean p() {
        return this.mPendingUpdates.size() > 0;
    }

    boolean q() {
        return (this.mPostponedList.isEmpty() || this.mPendingUpdates.isEmpty()) ? false : true;
    }

    void w() {
        this.mOpReorderer.b(this.mPendingUpdates);
        int size = this.mPendingUpdates.size();
        for (int i10 = 0; i10 < size; i10++) {
            UpdateOp updateOp = this.mPendingUpdates.get(i10);
            int i11 = updateOp.cmd;
            if (i11 == 1) {
                c(updateOp);
            } else if (i11 == 2) {
                f(updateOp);
            } else if (i11 == 4) {
                g(updateOp);
            } else if (i11 == 8) {
                d(updateOp);
            }
            Runnable runnable = this.mOnItemProcessedCallback;
            if (runnable != null) {
                runnable.run();
            }
        }
        this.mPendingUpdates.clear();
    }

    void y() {
        x(this.mPendingUpdates);
        x(this.mPostponedList);
        this.mExistingUpdateTypes = 0;
    }

    private void c(UpdateOp updateOp) {
        v(updateOp);
    }

    private void d(UpdateOp updateOp) {
        v(updateOp);
    }

    void j() {
        i();
        int size = this.mPendingUpdates.size();
        for (int i10 = 0; i10 < size; i10++) {
            UpdateOp updateOp = this.mPendingUpdates.get(i10);
            int i11 = updateOp.cmd;
            if (i11 != 1) {
                if (i11 != 2) {
                    if (i11 != 4) {
                        if (i11 == 8) {
                            this.mCallback.c(updateOp);
                            this.mCallback.a(updateOp.positionStart, updateOp.itemCount);
                        }
                    } else {
                        this.mCallback.c(updateOp);
                        this.mCallback.h(updateOp.positionStart, updateOp.itemCount, updateOp.payload);
                    }
                } else {
                    this.mCallback.c(updateOp);
                    this.mCallback.f(updateOp.positionStart, updateOp.itemCount);
                }
            } else {
                this.mCallback.c(updateOp);
                this.mCallback.e(updateOp.positionStart, updateOp.itemCount);
            }
            Runnable runnable = this.mOnItemProcessedCallback;
            if (runnable != null) {
                runnable.run();
            }
        }
        x(this.mPendingUpdates);
        this.mExistingUpdateTypes = 0;
    }

    void x(List<UpdateOp> list) {
        int size = list.size();
        for (int i10 = 0; i10 < size; i10++) {
            b(list.get(i10));
        }
        list.clear();
    }
}
