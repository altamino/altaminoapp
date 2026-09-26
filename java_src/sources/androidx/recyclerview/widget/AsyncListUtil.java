package androidx.recyclerview.widget;

import android.util.Log;
import android.util.SparseBooleanArray;
import android.util.SparseIntArray;
import androidx.annotation.NonNull;
import androidx.annotation.UiThread;
import androidx.annotation.WorkerThread;

/* JADX INFO: loaded from: classes4.dex */
public class AsyncListUtil<T> {
    static final boolean DEBUG = false;
    static final String TAG = "AsyncListUtil";
    boolean mAllowScrollHints;
    private final ThreadUtil.BackgroundCallback<T> mBackgroundCallback;
    final ThreadUtil.BackgroundCallback<T> mBackgroundProxy;
    final DataCallback<T> mDataCallback;
    private final ThreadUtil.MainThreadCallback<T> mMainThreadCallback;
    final ThreadUtil.MainThreadCallback<T> mMainThreadProxy;
    final Class<T> mTClass;
    final TileList<T> mTileList;
    final int mTileSize;
    final ViewCallback mViewCallback;
    final int[] mTmpRange = new int[2];
    final int[] mPrevRange = new int[2];
    final int[] mTmpRangeExtended = new int[2];
    private int mScrollHint = 0;
    int mItemCount = 0;
    int mDisplayedGeneration = 0;
    int mRequestedGeneration = 0;
    final SparseIntArray mMissingPositions = new SparseIntArray();

    public static abstract class DataCallback<T> {
        @WorkerThread
        public abstract void a(@NonNull T[] tArr, int i10, int i11);

        @WorkerThread
        public int b() {
            return 10;
        }

        @WorkerThread
        public void c(@NonNull T[] tArr, int i10) {
        }

        @WorkerThread
        public abstract int d();
    }

    public static abstract class ViewCallback {
        public static final int HINT_SCROLL_ASC = 2;
        public static final int HINT_SCROLL_DESC = 1;
        public static final int HINT_SCROLL_NONE = 0;

        @UiThread
        public void a(@NonNull int[] iArr, @NonNull int[] iArr2, int i10) {
            int i11 = iArr[1];
            int i12 = iArr[0];
            int i13 = (i11 - i12) + 1;
            int i14 = i13 / 2;
            iArr2[0] = i12 - (i10 == 1 ? i13 : i14);
            if (i10 != 2) {
                i13 = i14;
            }
            iArr2[1] = i11 + i13;
        }

        @UiThread
        public abstract void b(@NonNull int[] iArr);

        @UiThread
        public abstract void c();

        @UiThread
        public abstract void d(int i10);
    }

    public void a() {
        this.mMissingPositions.clear();
        ThreadUtil.BackgroundCallback<T> backgroundCallback = this.mBackgroundProxy;
        int i10 = this.mRequestedGeneration + 1;
        this.mRequestedGeneration = i10;
        backgroundCallback.c(i10);
    }

    void b() {
        int i10;
        this.mViewCallback.b(this.mTmpRange);
        int[] iArr = this.mTmpRange;
        int i11 = iArr[0];
        int i12 = iArr[1];
        if (i11 > i12 || i11 < 0 || i12 >= this.mItemCount) {
            return;
        }
        if (this.mAllowScrollHints) {
            int[] iArr2 = this.mPrevRange;
            if (i11 > iArr2[1] || (i10 = iArr2[0]) > i12) {
                this.mScrollHint = 0;
            } else if (i11 < i10) {
                this.mScrollHint = 1;
            } else if (i11 > i10) {
                this.mScrollHint = 2;
            }
        } else {
            this.mScrollHint = 0;
        }
        int[] iArr3 = this.mPrevRange;
        iArr3[0] = i11;
        iArr3[1] = i12;
        this.mViewCallback.a(iArr, this.mTmpRangeExtended, this.mScrollHint);
        int[] iArr4 = this.mTmpRangeExtended;
        iArr4[0] = Math.min(this.mTmpRange[0], Math.max(iArr4[0], 0));
        int[] iArr5 = this.mTmpRangeExtended;
        iArr5[1] = Math.max(this.mTmpRange[1], Math.min(iArr5[1], this.mItemCount - 1));
        ThreadUtil.BackgroundCallback<T> backgroundCallback = this.mBackgroundProxy;
        int[] iArr6 = this.mTmpRange;
        int i13 = iArr6[0];
        int i14 = iArr6[1];
        int[] iArr7 = this.mTmpRangeExtended;
        backgroundCallback.a(i13, i14, iArr7[0], iArr7[1], this.mScrollHint);
    }

    public AsyncListUtil(@NonNull Class<T> cls, int i10, @NonNull DataCallback<T> dataCallback, @NonNull ViewCallback viewCallback) {
        ThreadUtil.MainThreadCallback<T> mainThreadCallback = new ThreadUtil.MainThreadCallback<T>() { // from class: androidx.recyclerview.widget.AsyncListUtil.1
            private void e() {
                for (int i11 = 0; i11 < AsyncListUtil.this.mTileList.e(); i11++) {
                    AsyncListUtil asyncListUtil = AsyncListUtil.this;
                    asyncListUtil.mBackgroundProxy.d(asyncListUtil.mTileList.c(i11));
                }
                AsyncListUtil.this.mTileList.b();
            }

            private boolean d(int i11) {
                return i11 == AsyncListUtil.this.mRequestedGeneration;
            }

            @Override // androidx.recyclerview.widget.ThreadUtil.MainThreadCallback
            public void a(int i11, int i12) {
                if (!d(i11)) {
                    return;
                }
                AsyncListUtil asyncListUtil = AsyncListUtil.this;
                asyncListUtil.mItemCount = i12;
                asyncListUtil.mViewCallback.c();
                AsyncListUtil asyncListUtil2 = AsyncListUtil.this;
                asyncListUtil2.mDisplayedGeneration = asyncListUtil2.mRequestedGeneration;
                e();
                AsyncListUtil asyncListUtil3 = AsyncListUtil.this;
                asyncListUtil3.mAllowScrollHints = false;
                asyncListUtil3.b();
            }

            @Override // androidx.recyclerview.widget.ThreadUtil.MainThreadCallback
            public void b(int i11, int i12) {
                if (!d(i11)) {
                    return;
                }
                TileList.Tile<T> tileD = AsyncListUtil.this.mTileList.d(i12);
                if (tileD == null) {
                    Log.e(AsyncListUtil.TAG, "tile not found @" + i12);
                    return;
                }
                AsyncListUtil.this.mBackgroundProxy.d(tileD);
            }

            @Override // androidx.recyclerview.widget.ThreadUtil.MainThreadCallback
            public void c(int i11, TileList.Tile<T> tile) {
                if (!d(i11)) {
                    AsyncListUtil.this.mBackgroundProxy.d(tile);
                    return;
                }
                TileList.Tile<T> tileA = AsyncListUtil.this.mTileList.a(tile);
                if (tileA != null) {
                    Log.e(AsyncListUtil.TAG, "duplicate tile @" + tileA.mStartPosition);
                    AsyncListUtil.this.mBackgroundProxy.d(tileA);
                }
                int i12 = tile.mStartPosition + tile.mItemCount;
                int i13 = 0;
                while (i13 < AsyncListUtil.this.mMissingPositions.size()) {
                    int iKeyAt = AsyncListUtil.this.mMissingPositions.keyAt(i13);
                    if (tile.mStartPosition <= iKeyAt && iKeyAt < i12) {
                        AsyncListUtil.this.mMissingPositions.removeAt(i13);
                        AsyncListUtil.this.mViewCallback.d(iKeyAt);
                    } else {
                        i13++;
                    }
                }
            }
        };
        this.mMainThreadCallback = mainThreadCallback;
        ThreadUtil.BackgroundCallback<T> backgroundCallback = new ThreadUtil.BackgroundCallback<T>() { // from class: androidx.recyclerview.widget.AsyncListUtil.2
            private int mFirstRequiredTileStart;
            private int mGeneration;
            private int mItemCount;
            private int mLastRequiredTileStart;
            final SparseBooleanArray mLoadedTiles = new SparseBooleanArray();
            private TileList.Tile<T> mRecycledRoot;

            private void k(int i11, int i12, int i13, boolean z6) {
                int i14 = i11;
                while (i14 <= i12) {
                    AsyncListUtil.this.mBackgroundProxy.b(z6 ? (i12 + i11) - i14 : i14, i13);
                    i14 += AsyncListUtil.this.mTileSize;
                }
            }

            private TileList.Tile<T> e() {
                TileList.Tile<T> tile = this.mRecycledRoot;
                if (tile != null) {
                    this.mRecycledRoot = tile.mNext;
                    return tile;
                }
                AsyncListUtil asyncListUtil = AsyncListUtil.this;
                return new TileList.Tile<>(asyncListUtil.mTClass, asyncListUtil.mTileSize);
            }

            private void f(TileList.Tile<T> tile) {
                this.mLoadedTiles.put(tile.mStartPosition, true);
                AsyncListUtil.this.mMainThreadProxy.c(this.mGeneration, tile);
            }

            private void g(int i11) {
                int iB = AsyncListUtil.this.mDataCallback.b();
                while (this.mLoadedTiles.size() >= iB) {
                    int iKeyAt = this.mLoadedTiles.keyAt(0);
                    SparseBooleanArray sparseBooleanArray = this.mLoadedTiles;
                    int iKeyAt2 = sparseBooleanArray.keyAt(sparseBooleanArray.size() - 1);
                    int i12 = this.mFirstRequiredTileStart - iKeyAt;
                    int i13 = iKeyAt2 - this.mLastRequiredTileStart;
                    if (i12 > 0 && (i12 >= i13 || i11 == 2)) {
                        j(iKeyAt);
                    } else {
                        if (i13 <= 0) {
                            return;
                        }
                        if (i12 >= i13 && i11 != 1) {
                            return;
                        } else {
                            j(iKeyAt2);
                        }
                    }
                }
            }

            private int h(int i11) {
                return i11 - (i11 % AsyncListUtil.this.mTileSize);
            }

            private boolean i(int i11) {
                return this.mLoadedTiles.get(i11);
            }

            private void j(int i11) {
                this.mLoadedTiles.delete(i11);
                AsyncListUtil.this.mMainThreadProxy.b(this.mGeneration, i11);
            }

            @Override // androidx.recyclerview.widget.ThreadUtil.BackgroundCallback
            public void a(int i11, int i12, int i13, int i14, int i15) {
                if (i11 > i12) {
                    return;
                }
                int iH = h(i11);
                int iH2 = h(i12);
                this.mFirstRequiredTileStart = h(i13);
                int iH3 = h(i14);
                this.mLastRequiredTileStart = iH3;
                if (i15 == 1) {
                    k(this.mFirstRequiredTileStart, iH2, i15, true);
                    k(iH2 + AsyncListUtil.this.mTileSize, this.mLastRequiredTileStart, i15, false);
                } else {
                    k(iH, iH3, i15, false);
                    k(this.mFirstRequiredTileStart, iH - AsyncListUtil.this.mTileSize, i15, true);
                }
            }

            @Override // androidx.recyclerview.widget.ThreadUtil.BackgroundCallback
            public void c(int i11) {
                this.mGeneration = i11;
                this.mLoadedTiles.clear();
                int iD = AsyncListUtil.this.mDataCallback.d();
                this.mItemCount = iD;
                AsyncListUtil.this.mMainThreadProxy.a(this.mGeneration, iD);
            }

            @Override // androidx.recyclerview.widget.ThreadUtil.BackgroundCallback
            public void d(TileList.Tile<T> tile) {
                AsyncListUtil.this.mDataCallback.c(tile.mItems, tile.mItemCount);
                tile.mNext = this.mRecycledRoot;
                this.mRecycledRoot = tile;
            }

            @Override // androidx.recyclerview.widget.ThreadUtil.BackgroundCallback
            public void b(int i11, int i12) {
                if (i(i11)) {
                    return;
                }
                TileList.Tile<T> tileE = e();
                tileE.mStartPosition = i11;
                int iMin = Math.min(AsyncListUtil.this.mTileSize, this.mItemCount - i11);
                tileE.mItemCount = iMin;
                AsyncListUtil.this.mDataCallback.a(tileE.mItems, tileE.mStartPosition, iMin);
                g(i12);
                f(tileE);
            }
        };
        this.mBackgroundCallback = backgroundCallback;
        this.mTClass = cls;
        this.mTileSize = i10;
        this.mDataCallback = dataCallback;
        this.mViewCallback = viewCallback;
        this.mTileList = new TileList<>(i10);
        MessageThreadUtil messageThreadUtil = new MessageThreadUtil();
        this.mMainThreadProxy = messageThreadUtil.a(mainThreadCallback);
        this.mBackgroundProxy = messageThreadUtil.b(backgroundCallback);
        a();
    }
}
