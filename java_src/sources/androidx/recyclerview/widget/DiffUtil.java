package androidx.recyclerview.widget;

import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import java.util.ArrayDeque;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collection;
import java.util.Collections;
import java.util.Comparator;
import java.util.Iterator;
import java.util.List;

/* JADX INFO: loaded from: classes6.dex */
public class DiffUtil {
    private static final Comparator<Diagonal> DIAGONAL_COMPARATOR = new Comparator<Diagonal>() { // from class: androidx.recyclerview.widget.DiffUtil.1
        @Override // java.util.Comparator
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public int compare(Diagonal diagonal, Diagonal diagonal2) {
            return diagonal.f765x - diagonal2.f765x;
        }
    };

    public static abstract class Callback {
        public abstract boolean a(int i10, int i11);

        public abstract boolean b(int i10, int i11);

        @Nullable
        public Object c(int i10, int i11) {
            return null;
        }

        public abstract int d();

        public abstract int e();
    }

    static class CenteredArray {
        private final int[] mData;
        private final int mMid;

        int[] a() {
            return this.mData;
        }

        int b(int i10) {
            return this.mData[i10 + this.mMid];
        }

        void c(int i10, int i11) {
            this.mData[i10 + this.mMid] = i11;
        }

        CenteredArray(int i10) {
            int[] iArr = new int[i10];
            this.mData = iArr;
            this.mMid = iArr.length / 2;
        }
    }

    public static class DiffResult {
        private static final int FLAG_CHANGED = 2;
        private static final int FLAG_MASK = 15;
        private static final int FLAG_MOVED = 12;
        private static final int FLAG_MOVED_CHANGED = 4;
        private static final int FLAG_MOVED_NOT_CHANGED = 8;
        private static final int FLAG_NOT_CHANGED = 1;
        private static final int FLAG_OFFSET = 4;
        public static final int NO_POSITION = -1;
        private final Callback mCallback;
        private final boolean mDetectMoves;
        private final List<Diagonal> mDiagonals;
        private final int[] mNewItemStatuses;
        private final int mNewListSize;
        private final int[] mOldItemStatuses;
        private final int mOldListSize;

        private void a() {
            Diagonal diagonal = this.mDiagonals.isEmpty() ? null : this.mDiagonals.get(0);
            if (diagonal == null || diagonal.f765x != 0 || diagonal.f766y != 0) {
                this.mDiagonals.add(0, new Diagonal(0, 0, 0));
            }
            this.mDiagonals.add(new Diagonal(this.mOldListSize, this.mNewListSize, 0));
        }

        private void d(int i10) {
            int size = this.mDiagonals.size();
            int iB = 0;
            for (int i11 = 0; i11 < size; i11++) {
                Diagonal diagonal = this.mDiagonals.get(i11);
                while (iB < diagonal.f766y) {
                    if (this.mNewItemStatuses[iB] == 0 && this.mCallback.b(i10, iB)) {
                        int i12 = this.mCallback.a(i10, iB) ? 8 : 4;
                        this.mOldItemStatuses[i10] = (iB << 4) | i12;
                        this.mNewItemStatuses[iB] = (i10 << 4) | i12;
                        return;
                    }
                    iB++;
                }
                iB = diagonal.b();
            }
        }

        private void e() {
            for (Diagonal diagonal : this.mDiagonals) {
                for (int i10 = 0; i10 < diagonal.size; i10++) {
                    int i11 = diagonal.f765x + i10;
                    int i12 = diagonal.f766y + i10;
                    int i13 = this.mCallback.a(i11, i12) ? 1 : 2;
                    this.mOldItemStatuses[i11] = (i12 << 4) | i13;
                    this.mNewItemStatuses[i12] = (i11 << 4) | i13;
                }
            }
            if (this.mDetectMoves) {
                f();
            }
        }

        private void f() {
            int iA = 0;
            for (Diagonal diagonal : this.mDiagonals) {
                while (iA < diagonal.f765x) {
                    if (this.mOldItemStatuses[iA] == 0) {
                        d(iA);
                    }
                    iA++;
                }
                iA = diagonal.a();
            }
        }

        public void b(@NonNull ListUpdateCallback listUpdateCallback) {
            int i10;
            BatchingListUpdateCallback batchingListUpdateCallback = listUpdateCallback instanceof BatchingListUpdateCallback ? (BatchingListUpdateCallback) listUpdateCallback : new BatchingListUpdateCallback(listUpdateCallback);
            int i11 = this.mOldListSize;
            ArrayDeque arrayDeque = new ArrayDeque();
            int i12 = this.mOldListSize;
            int i13 = this.mNewListSize;
            for (int size = this.mDiagonals.size() - 1; size >= 0; size--) {
                Diagonal diagonal = this.mDiagonals.get(size);
                int iA = diagonal.a();
                int iB = diagonal.b();
                while (true) {
                    if (i12 <= iA) {
                        break;
                    }
                    i12--;
                    int i14 = this.mOldItemStatuses[i12];
                    if ((i14 & 12) != 0) {
                        int i15 = i14 >> 4;
                        PostponedUpdate postponedUpdateG = g(arrayDeque, i15, false);
                        if (postponedUpdateG != null) {
                            int i16 = (i11 - postponedUpdateG.currentPos) - 1;
                            batchingListUpdateCallback.d(i12, i16);
                            if ((i14 & 4) != 0) {
                                batchingListUpdateCallback.a(i16, 1, this.mCallback.c(i12, i15));
                            }
                        } else {
                            arrayDeque.add(new PostponedUpdate(i12, (i11 - i12) - 1, true));
                        }
                    } else {
                        batchingListUpdateCallback.c(i12, 1);
                        i11--;
                    }
                }
                while (i13 > iB) {
                    i13--;
                    int i17 = this.mNewItemStatuses[i13];
                    if ((i17 & 12) != 0) {
                        int i18 = i17 >> 4;
                        PostponedUpdate postponedUpdateG2 = g(arrayDeque, i18, true);
                        if (postponedUpdateG2 == null) {
                            arrayDeque.add(new PostponedUpdate(i13, i11 - i12, false));
                        } else {
                            batchingListUpdateCallback.d((i11 - postponedUpdateG2.currentPos) - 1, i12);
                            if ((i17 & 4) != 0) {
                                batchingListUpdateCallback.a(i12, 1, this.mCallback.c(i18, i13));
                            }
                        }
                    } else {
                        batchingListUpdateCallback.b(i12, 1);
                        i11++;
                    }
                }
                int i19 = diagonal.f765x;
                int i20 = diagonal.f766y;
                for (i10 = 0; i10 < diagonal.size; i10++) {
                    if ((this.mOldItemStatuses[i19] & 15) == 2) {
                        batchingListUpdateCallback.a(i19, 1, this.mCallback.c(i19, i20));
                    }
                    i19++;
                    i20++;
                }
                i12 = diagonal.f765x;
                i13 = diagonal.f766y;
            }
            batchingListUpdateCallback.e();
        }

        public void c(@NonNull RecyclerView.Adapter adapter) {
            b(new AdapterListUpdateCallback(adapter));
        }

        DiffResult(Callback callback, List<Diagonal> list, int[] iArr, int[] iArr2, boolean z6) {
            this.mDiagonals = list;
            this.mOldItemStatuses = iArr;
            this.mNewItemStatuses = iArr2;
            Arrays.fill(iArr, 0);
            Arrays.fill(iArr2, 0);
            this.mCallback = callback;
            this.mOldListSize = callback.e();
            this.mNewListSize = callback.d();
            this.mDetectMoves = z6;
            a();
            e();
        }

        @Nullable
        private static PostponedUpdate g(Collection<PostponedUpdate> collection, int i10, boolean z6) {
            PostponedUpdate next;
            Iterator<PostponedUpdate> it = collection.iterator();
            while (true) {
                if (it.hasNext()) {
                    next = it.next();
                    if (next.posInOwnerList == i10 && next.removal == z6) {
                        it.remove();
                        break;
                    }
                } else {
                    next = null;
                    break;
                }
            }
            while (it.hasNext()) {
                PostponedUpdate next2 = it.next();
                if (z6) {
                    next2.currentPos--;
                } else {
                    next2.currentPos++;
                }
            }
            return next;
        }
    }

    public static abstract class ItemCallback<T> {
        public abstract boolean a(@NonNull T t5, @NonNull T t10);

        public abstract boolean b(@NonNull T t5, @NonNull T t10);

        @Nullable
        public Object c(@NonNull T t5, @NonNull T t10) {
            return null;
        }
    }

    static class Range {
        int newListEnd;
        int newListStart;
        int oldListEnd;
        int oldListStart;

        public Range() {
        }

        int a() {
            return this.newListEnd - this.newListStart;
        }

        int b() {
            return this.oldListEnd - this.oldListStart;
        }

        public Range(int i10, int i11, int i12, int i13) {
            this.oldListStart = i10;
            this.oldListEnd = i11;
            this.newListStart = i12;
            this.newListEnd = i13;
        }
    }

    static class Snake {
        public int endX;
        public int endY;
        public boolean reverse;
        public int startX;
        public int startY;

        boolean b() {
            return this.endY - this.startY != this.endX - this.startX;
        }

        boolean c() {
            return this.endY - this.startY > this.endX - this.startX;
        }

        int a() {
            return Math.min(this.endX - this.startX, this.endY - this.startY);
        }

        Snake() {
        }

        @NonNull
        Diagonal d() {
            if (b()) {
                if (this.reverse) {
                    return new Diagonal(this.startX, this.startY, a());
                }
                if (c()) {
                    return new Diagonal(this.startX, this.startY + 1, a());
                }
                return new Diagonal(this.startX + 1, this.startY, a());
            }
            int i10 = this.startX;
            return new Diagonal(i10, this.startY, this.endX - i10);
        }
    }

    @NonNull
    public static DiffResult b(@NonNull Callback callback) {
        return c(callback, true);
    }

    static class Diagonal {
        public final int size;

        /* JADX INFO: renamed from: x, reason: collision with root package name */
        public final int f765x;

        /* JADX INFO: renamed from: y, reason: collision with root package name */
        public final int f766y;

        int a() {
            return this.f765x + this.size;
        }

        int b() {
            return this.f766y + this.size;
        }

        Diagonal(int i10, int i11, int i12) {
            this.f765x = i10;
            this.f766y = i11;
            this.size = i12;
        }
    }

    private static class PostponedUpdate {
        int currentPos;
        int posInOwnerList;
        boolean removal;

        PostponedUpdate(int i10, int i11, boolean z6) {
            this.posInOwnerList = i10;
            this.currentPos = i11;
            this.removal = z6;
        }
    }

    private DiffUtil() {
    }

    @Nullable
    private static Snake a(Range range, Callback callback, CenteredArray centeredArray, CenteredArray centeredArray2, int i10) {
        boolean z6;
        int iB;
        int i11;
        int i12;
        int i13;
        if ((range.b() - range.a()) % 2 == 0) {
            z6 = true;
        } else {
            z6 = false;
        }
        int iB2 = range.b() - range.a();
        int i14 = -i10;
        for (int i15 = i14; i15 <= i10; i15 += 2) {
            if (i15 != i14 && (i15 == i10 || centeredArray2.b(i15 + 1) >= centeredArray2.b(i15 - 1))) {
                iB = centeredArray2.b(i15 - 1);
                i11 = iB - 1;
            } else {
                iB = centeredArray2.b(i15 + 1);
                i11 = iB;
            }
            int i16 = range.newListEnd - ((range.oldListEnd - i11) - i15);
            if (i10 != 0 && i11 == iB) {
                i12 = i16 + 1;
            } else {
                i12 = i16;
            }
            while (i11 > range.oldListStart && i16 > range.newListStart && callback.b(i11 - 1, i16 - 1)) {
                i11--;
                i16--;
            }
            centeredArray2.c(i15, i11);
            if (z6 && (i13 = iB2 - i15) >= i14 && i13 <= i10 && centeredArray.b(i13) >= i11) {
                Snake snake = new Snake();
                snake.startX = i11;
                snake.startY = i16;
                snake.endX = iB;
                snake.endY = i12;
                snake.reverse = true;
                return snake;
            }
        }
        return null;
    }

    @NonNull
    public static DiffResult c(@NonNull Callback callback, boolean z6) {
        Range range;
        int iE = callback.e();
        int iD = callback.d();
        ArrayList arrayList = new ArrayList();
        ArrayList arrayList2 = new ArrayList();
        arrayList2.add(new Range(0, iE, 0, iD));
        int i10 = ((((iE + iD) + 1) / 2) * 2) + 1;
        CenteredArray centeredArray = new CenteredArray(i10);
        CenteredArray centeredArray2 = new CenteredArray(i10);
        ArrayList arrayList3 = new ArrayList();
        while (!arrayList2.isEmpty()) {
            Range range2 = (Range) arrayList2.remove(arrayList2.size() - 1);
            Snake snakeE = e(range2, callback, centeredArray, centeredArray2);
            if (snakeE != null) {
                if (snakeE.a() > 0) {
                    arrayList.add(snakeE.d());
                }
                if (arrayList3.isEmpty()) {
                    range = new Range();
                } else {
                    range = (Range) arrayList3.remove(arrayList3.size() - 1);
                }
                range.oldListStart = range2.oldListStart;
                range.newListStart = range2.newListStart;
                range.oldListEnd = snakeE.startX;
                range.newListEnd = snakeE.startY;
                arrayList2.add(range);
                range2.oldListEnd = range2.oldListEnd;
                range2.newListEnd = range2.newListEnd;
                range2.oldListStart = snakeE.endX;
                range2.newListStart = snakeE.endY;
                arrayList2.add(range2);
            } else {
                arrayList3.add(range2);
            }
        }
        Collections.sort(arrayList, DIAGONAL_COMPARATOR);
        return new DiffResult(callback, arrayList, centeredArray.a(), centeredArray2.a(), z6);
    }

    @Nullable
    private static Snake d(Range range, Callback callback, CenteredArray centeredArray, CenteredArray centeredArray2, int i10) {
        int iB;
        int i11;
        int i12;
        int i13;
        boolean z6 = true;
        if (Math.abs(range.b() - range.a()) % 2 != 1) {
            z6 = false;
        }
        int iB2 = range.b() - range.a();
        int i14 = -i10;
        for (int i15 = i14; i15 <= i10; i15 += 2) {
            if (i15 != i14 && (i15 == i10 || centeredArray.b(i15 + 1) <= centeredArray.b(i15 - 1))) {
                iB = centeredArray.b(i15 - 1);
                i11 = iB + 1;
            } else {
                iB = centeredArray.b(i15 + 1);
                i11 = iB;
            }
            int i16 = (range.newListStart + (i11 - range.oldListStart)) - i15;
            if (i10 != 0 && i11 == iB) {
                i12 = i16 - 1;
            } else {
                i12 = i16;
            }
            while (i11 < range.oldListEnd && i16 < range.newListEnd && callback.b(i11, i16)) {
                i11++;
                i16++;
            }
            centeredArray.c(i15, i11);
            if (z6 && (i13 = iB2 - i15) >= i14 + 1 && i13 <= i10 - 1 && centeredArray2.b(i13) <= i11) {
                Snake snake = new Snake();
                snake.startX = iB;
                snake.startY = i12;
                snake.endX = i11;
                snake.endY = i16;
                snake.reverse = false;
                return snake;
            }
        }
        return null;
    }

    @Nullable
    private static Snake e(Range range, Callback callback, CenteredArray centeredArray, CenteredArray centeredArray2) {
        if (range.b() >= 1 && range.a() >= 1) {
            int iB = ((range.b() + range.a()) + 1) / 2;
            centeredArray.c(1, range.oldListStart);
            centeredArray2.c(1, range.oldListEnd);
            for (int i10 = 0; i10 < iB; i10++) {
                Snake snakeD = d(range, callback, centeredArray, centeredArray2, i10);
                if (snakeD != null) {
                    return snakeD;
                }
                Snake snakeA = a(range, callback, centeredArray, centeredArray2, i10);
                if (snakeA != null) {
                    return snakeA;
                }
            }
        }
        return null;
    }
}
