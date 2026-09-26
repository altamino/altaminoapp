package androidx.recyclerview.widget;

import android.view.View;
import kotlinx.serialization.json.internal.b;

/* JADX INFO: loaded from: classes8.dex */
class LayoutState {
    static final int INVALID_LAYOUT = Integer.MIN_VALUE;
    static final int ITEM_DIRECTION_HEAD = -1;
    static final int ITEM_DIRECTION_TAIL = 1;
    static final int LAYOUT_END = 1;
    static final int LAYOUT_START = -1;
    int mAvailable;
    int mCurrentPosition;
    boolean mInfinite;
    int mItemDirection;
    int mLayoutDirection;
    boolean mStopInFocusable;
    boolean mRecycle = true;
    int mStartLine = 0;
    int mEndLine = 0;

    boolean a(RecyclerView.State state) {
        int i10 = this.mCurrentPosition;
        return i10 >= 0 && i10 < state.b();
    }

    View b(RecyclerView.Recycler recycler) {
        View viewO = recycler.o(this.mCurrentPosition);
        this.mCurrentPosition += this.mItemDirection;
        return viewO;
    }

    public String toString() {
        return "LayoutState{mAvailable=" + this.mAvailable + ", mCurrentPosition=" + this.mCurrentPosition + ", mItemDirection=" + this.mItemDirection + ", mLayoutDirection=" + this.mLayoutDirection + ", mStartLine=" + this.mStartLine + ", mEndLine=" + this.mEndLine + b.END_OBJ;
    }

    LayoutState() {
    }
}
