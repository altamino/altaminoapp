package androidx.recyclerview.widget;

import android.annotation.SuppressLint;

/* JADX INFO: loaded from: classes5.dex */
interface ThreadUtil<T> {

    public interface BackgroundCallback<T> {
        void a(int i10, int i11, int i12, int i13, int i14);

        void b(int i10, int i11);

        void c(int i10);

        @SuppressLint({"UnknownNullness"})
        void d(TileList.Tile<T> tile);
    }

    public interface MainThreadCallback<T> {
        void a(int i10, int i11);

        void b(int i10, int i11);

        @SuppressLint({"UnknownNullness"})
        void c(int i10, TileList.Tile<T> tile);
    }

    MainThreadCallback<T> a(MainThreadCallback<T> mainThreadCallback);

    BackgroundCallback<T> b(BackgroundCallback<T> backgroundCallback);
}
