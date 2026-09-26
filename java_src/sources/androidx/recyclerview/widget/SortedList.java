package androidx.recyclerview.widget;

import android.annotation.SuppressLint;
import androidx.annotation.NonNull;
import java.lang.reflect.Array;
import java.util.Comparator;

/* JADX INFO: loaded from: classes5.dex */
public class SortedList<T> {
    private static final int CAPACITY_GROWTH = 10;
    private static final int DELETION = 2;
    private static final int INSERTION = 1;
    public static final int INVALID_POSITION = -1;
    private static final int LOOKUP = 4;
    private static final int MIN_CAPACITY = 10;
    private BatchedCallback mBatchedCallback;
    private Callback mCallback;
    T[] mData;
    private int mNewDataStart;
    private T[] mOldData;
    private int mOldDataSize;
    private int mOldDataStart;
    private int mSize;
    private final Class<T> mTClass;

    public static class BatchedCallback<T2> extends Callback<T2> {
        private final BatchingListUpdateCallback mBatchingListUpdateCallback;
        final Callback<T2> mWrappedCallback;

        @Override // androidx.recyclerview.widget.SortedList.Callback, androidx.recyclerview.widget.ListUpdateCallback
        @SuppressLint({"UnknownNullness"})
        public void a(int i10, int i11, Object obj) {
            this.mBatchingListUpdateCallback.a(i10, i11, obj);
        }

        @Override // androidx.recyclerview.widget.ListUpdateCallback
        public void b(int i10, int i11) {
            this.mBatchingListUpdateCallback.b(i10, i11);
        }

        @Override // androidx.recyclerview.widget.ListUpdateCallback
        public void c(int i10, int i11) {
            this.mBatchingListUpdateCallback.c(i10, i11);
        }

        @Override // androidx.recyclerview.widget.SortedList.Callback, java.util.Comparator
        public int compare(T2 t5, T2 t10) {
            return this.mWrappedCallback.compare(t5, t10);
        }

        @Override // androidx.recyclerview.widget.ListUpdateCallback
        public void d(int i10, int i11) {
            this.mBatchingListUpdateCallback.d(i10, i11);
        }

        @Override // androidx.recyclerview.widget.SortedList.Callback
        public void e(int i10, int i11) {
            this.mBatchingListUpdateCallback.a(i10, i11, null);
        }

        @SuppressLint({"UnknownNullness"})
        public BatchedCallback(Callback<T2> callback) {
            this.mWrappedCallback = callback;
            this.mBatchingListUpdateCallback = new BatchingListUpdateCallback(callback);
        }
    }

    public SortedList(@NonNull Class<T> cls, @NonNull Callback<T> callback) {
        this(cls, callback, 10);
    }

    public static abstract class Callback<T2> implements Comparator<T2>, ListUpdateCallback {
        @Override // java.util.Comparator
        public abstract int compare(T2 t5, T2 t10);

        public abstract void e(int i10, int i11);

        @SuppressLint({"UnknownNullness"})
        public void a(int i10, int i11, Object obj) {
            e(i10, i11);
        }
    }

    public SortedList(@NonNull Class<T> cls, @NonNull Callback<T> callback, int i10) {
        this.mTClass = cls;
        this.mData = (T[]) ((Object[]) Array.newInstance((Class<?>) cls, i10));
        this.mCallback = callback;
        this.mSize = 0;
    }
}
