package androidx.recyclerview.widget;

import android.util.SparseArray;
import androidx.annotation.NonNull;
import java.lang.reflect.Array;

/* JADX INFO: loaded from: classes8.dex */
class TileList<T> {
    Tile<T> mLastAccessedTile;
    final int mTileSize;
    private final SparseArray<Tile<T>> mTiles = new SparseArray<>(10);

    public static class Tile<T> {
        public int mItemCount;
        public final T[] mItems;
        Tile<T> mNext;
        public int mStartPosition;

        Tile(@NonNull Class<T> cls, int i10) {
            this.mItems = (T[]) ((Object[]) Array.newInstance((Class<?>) cls, i10));
        }
    }

    public Tile<T> a(Tile<T> tile) {
        int iIndexOfKey = this.mTiles.indexOfKey(tile.mStartPosition);
        if (iIndexOfKey < 0) {
            this.mTiles.put(tile.mStartPosition, tile);
            return null;
        }
        Tile<T> tileValueAt = this.mTiles.valueAt(iIndexOfKey);
        this.mTiles.setValueAt(iIndexOfKey, tile);
        if (this.mLastAccessedTile == tileValueAt) {
            this.mLastAccessedTile = tile;
        }
        return tileValueAt;
    }

    public void b() {
        this.mTiles.clear();
    }

    public Tile<T> c(int i10) {
        if (i10 < 0 || i10 >= this.mTiles.size()) {
            return null;
        }
        return this.mTiles.valueAt(i10);
    }

    public Tile<T> d(int i10) {
        Tile<T> tile = this.mTiles.get(i10);
        if (this.mLastAccessedTile == tile) {
            this.mLastAccessedTile = null;
        }
        this.mTiles.delete(i10);
        return tile;
    }

    public int e() {
        return this.mTiles.size();
    }

    public TileList(int i10) {
        this.mTileSize = i10;
    }
}
