package androidx.recyclerview.widget;

import java.util.List;

/* JADX INFO: loaded from: classes7.dex */
class OpReorderer {
    final Callback mCallback;

    interface Callback {
        AdapterHelper.UpdateOp a(int i10, int i11, int i12, Object obj);

        void b(AdapterHelper.UpdateOp updateOp);
    }

    private void c(List<AdapterHelper.UpdateOp> list, int i10, AdapterHelper.UpdateOp updateOp, int i11, AdapterHelper.UpdateOp updateOp2) {
        int i12 = updateOp.itemCount;
        int i13 = updateOp2.positionStart;
        int i14 = i12 < i13 ? -1 : 0;
        int i15 = updateOp.positionStart;
        if (i15 < i13) {
            i14++;
        }
        if (i13 <= i15) {
            updateOp.positionStart = i15 + updateOp2.itemCount;
        }
        int i16 = updateOp2.positionStart;
        if (i16 <= i12) {
            updateOp.itemCount = i12 + updateOp2.itemCount;
        }
        updateOp2.positionStart = i16 + i14;
        list.set(i10, updateOp2);
        list.set(i11, updateOp);
    }

    void e(List<AdapterHelper.UpdateOp> list, int i10, AdapterHelper.UpdateOp updateOp, int i11, AdapterHelper.UpdateOp updateOp2) {
        boolean z6;
        int i12 = updateOp.positionStart;
        int i13 = updateOp.itemCount;
        boolean z10 = false;
        if (i12 < i13) {
            if (updateOp2.positionStart == i12 && updateOp2.itemCount == i13 - i12) {
                z6 = false;
                z10 = true;
            } else {
                z6 = false;
            }
        } else if (updateOp2.positionStart == i13 + 1 && updateOp2.itemCount == i12 - i13) {
            z6 = true;
            z10 = true;
        } else {
            z6 = true;
        }
        int i14 = updateOp2.positionStart;
        if (i13 < i14) {
            updateOp2.positionStart = i14 - 1;
        } else {
            int i15 = updateOp2.itemCount;
            if (i13 < i14 + i15) {
                updateOp2.itemCount = i15 - 1;
                updateOp.cmd = 2;
                updateOp.itemCount = 1;
                if (updateOp2.itemCount == 0) {
                    list.remove(i11);
                    this.mCallback.b(updateOp2);
                    return;
                }
                return;
            }
        }
        int i16 = updateOp.positionStart;
        int i17 = updateOp2.positionStart;
        AdapterHelper.UpdateOp updateOpA = null;
        if (i16 <= i17) {
            updateOp2.positionStart = i17 + 1;
        } else {
            int i18 = updateOp2.itemCount;
            if (i16 < i17 + i18) {
                updateOpA = this.mCallback.a(2, i16 + 1, (i17 + i18) - i16, null);
                updateOp2.itemCount = updateOp.positionStart - updateOp2.positionStart;
            }
        }
        if (z10) {
            list.set(i10, updateOp2);
            list.remove(i11);
            this.mCallback.b(updateOp);
            return;
        }
        if (z6) {
            if (updateOpA != null) {
                int i19 = updateOp.positionStart;
                if (i19 > updateOpA.positionStart) {
                    updateOp.positionStart = i19 - updateOpA.itemCount;
                }
                int i20 = updateOp.itemCount;
                if (i20 > updateOpA.positionStart) {
                    updateOp.itemCount = i20 - updateOpA.itemCount;
                }
            }
            int i21 = updateOp.positionStart;
            if (i21 > updateOp2.positionStart) {
                updateOp.positionStart = i21 - updateOp2.itemCount;
            }
            int i22 = updateOp.itemCount;
            if (i22 > updateOp2.positionStart) {
                updateOp.itemCount = i22 - updateOp2.itemCount;
            }
        } else {
            if (updateOpA != null) {
                int i23 = updateOp.positionStart;
                if (i23 >= updateOpA.positionStart) {
                    updateOp.positionStart = i23 - updateOpA.itemCount;
                }
                int i24 = updateOp.itemCount;
                if (i24 >= updateOpA.positionStart) {
                    updateOp.itemCount = i24 - updateOpA.itemCount;
                }
            }
            int i25 = updateOp.positionStart;
            if (i25 >= updateOp2.positionStart) {
                updateOp.positionStart = i25 - updateOp2.itemCount;
            }
            int i26 = updateOp.itemCount;
            if (i26 >= updateOp2.positionStart) {
                updateOp.itemCount = i26 - updateOp2.itemCount;
            }
        }
        list.set(i10, updateOp2);
        if (updateOp.positionStart != updateOp.itemCount) {
            list.set(i11, updateOp);
        } else {
            list.remove(i11);
        }
        if (updateOpA != null) {
            list.add(i10, updateOpA);
        }
    }

    /* JADX WARN: Code duplicated, block: B:11:0x0027  */
    /* JADX WARN: Code duplicated, block: B:12:0x002b  */
    /* JADX WARN: Code duplicated, block: B:14:0x0031  */
    /* JADX WARN: Code duplicated, block: B:17:0x0048  */
    /* JADX WARN: Code duplicated, block: B:18:0x004c  */
    /* JADX WARN: Code duplicated, block: B:20:0x0056  */
    /* JADX WARN: Code duplicated, block: B:22:0x005b  */
    /* JADX WARN: Code duplicated, block: B:24:? A[RETURN, SYNTHETIC] */
    void f(List<AdapterHelper.UpdateOp> list, int i10, AdapterHelper.UpdateOp updateOp, int i11, AdapterHelper.UpdateOp updateOp2) {
        AdapterHelper.UpdateOp updateOpA;
        int i12;
        int i13;
        int i14;
        int i15 = updateOp.itemCount;
        int i16 = updateOp2.positionStart;
        AdapterHelper.UpdateOp updateOpA2 = null;
        if (i15 >= i16) {
            int i17 = updateOp2.itemCount;
            if (i15 < i16 + i17) {
                updateOp2.itemCount = i17 - 1;
                updateOpA = this.mCallback.a(4, updateOp.positionStart, 1, updateOp2.payload);
            }
            i12 = updateOp.positionStart;
            i13 = updateOp2.positionStart;
            if (i12 <= i13) {
                updateOp2.positionStart = i13 + 1;
            } else {
                i14 = updateOp2.itemCount;
                if (i12 < i13 + i14) {
                    int i18 = (i13 + i14) - i12;
                    updateOpA2 = this.mCallback.a(4, i12 + 1, i18, updateOp2.payload);
                    updateOp2.itemCount -= i18;
                }
            }
            list.set(i11, updateOp);
            if (updateOp2.itemCount > 0) {
                list.set(i10, updateOp2);
            } else {
                list.remove(i10);
                this.mCallback.b(updateOp2);
            }
            if (updateOpA != null) {
                list.add(i10, updateOpA);
            }
            if (updateOpA2 != null) {
                list.add(i10, updateOpA2);
            }
        }
        updateOp2.positionStart = i16 - 1;
        updateOpA = null;
        i12 = updateOp.positionStart;
        i13 = updateOp2.positionStart;
        if (i12 <= i13) {
            updateOp2.positionStart = i13 + 1;
        } else {
            i14 = updateOp2.itemCount;
            if (i12 < i13 + i14) {
                int i19 = (i13 + i14) - i12;
                updateOpA2 = this.mCallback.a(4, i12 + 1, i19, updateOp2.payload);
                updateOp2.itemCount -= i19;
            }
        }
        list.set(i11, updateOp);
        if (updateOp2.itemCount > 0) {
            list.set(i10, updateOp2);
        } else {
            list.remove(i10);
            this.mCallback.b(updateOp2);
        }
        if (updateOpA != null) {
            list.add(i10, updateOpA);
        }
        if (updateOpA2 != null) {
            list.add(i10, updateOpA2);
        }
    }

    OpReorderer(Callback callback) {
        this.mCallback = callback;
    }

    private int a(List<AdapterHelper.UpdateOp> list) {
        boolean z6 = false;
        for (int size = list.size() - 1; size >= 0; size--) {
            if (list.get(size).cmd == 8) {
                if (z6) {
                    return size;
                }
            } else {
                z6 = true;
            }
        }
        return -1;
    }

    private void d(List<AdapterHelper.UpdateOp> list, int i10, int i11) {
        AdapterHelper.UpdateOp updateOp = list.get(i10);
        AdapterHelper.UpdateOp updateOp2 = list.get(i11);
        int i12 = updateOp2.cmd;
        if (i12 != 1) {
            if (i12 != 2) {
                if (i12 == 4) {
                    f(list, i10, updateOp, i11, updateOp2);
                    return;
                }
                return;
            }
            e(list, i10, updateOp, i11, updateOp2);
            return;
        }
        c(list, i10, updateOp, i11, updateOp2);
    }

    void b(List<AdapterHelper.UpdateOp> list) {
        while (true) {
            int iA = a(list);
            if (iA != -1) {
                d(list, iA, iA + 1);
            } else {
                return;
            }
        }
    }
}
