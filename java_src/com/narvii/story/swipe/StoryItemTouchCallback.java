package com.narvii.story.swipe;

import android.graphics.Canvas;
import android.support.v7.widget.RecyclerView;
import android.support.v7.widget.helper.ItemTouchHelper;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: StoryItemTouchCallback.kt */
/* loaded from: classes3.dex */
public final class StoryItemTouchCallback extends ItemTouchHelper.Callback {
    public static final Companion Companion = new Companion(null);
    private static final int SWIPE_DOWN = 2;
    private static final int SWIPE_UP = 1;
    private static final String TAG = "StoryItemTouchCallback";
    private IStorySwipeListener swipeListener;

    @Override // android.support.v7.widget.helper.ItemTouchHelper.Callback
    public float getSwipeThreshold(RecyclerView.ViewHolder viewHolder) {
        Intrinsics.checkParameterIsNotNull(viewHolder, "viewHolder");
        return 0.2f;
    }

    @Override // android.support.v7.widget.helper.ItemTouchHelper.Callback
    public boolean isItemViewSwipeEnabled() {
        return true;
    }

    @Override // android.support.v7.widget.helper.ItemTouchHelper.Callback
    public boolean onMove(RecyclerView recyclerView, RecyclerView.ViewHolder viewHolder, RecyclerView.ViewHolder target) {
        Intrinsics.checkParameterIsNotNull(recyclerView, "recyclerView");
        Intrinsics.checkParameterIsNotNull(viewHolder, "viewHolder");
        Intrinsics.checkParameterIsNotNull(target, "target");
        return false;
    }

    public final IStorySwipeListener getSwipeListener() {
        return this.swipeListener;
    }

    public final void setSwipeListener(IStorySwipeListener iStorySwipeListener) {
        this.swipeListener = iStorySwipeListener;
    }

    @Override // android.support.v7.widget.helper.ItemTouchHelper.Callback
    public int getMovementFlags(RecyclerView recyclerView, RecyclerView.ViewHolder viewHolder) {
        Intrinsics.checkParameterIsNotNull(recyclerView, "recyclerView");
        Intrinsics.checkParameterIsNotNull(viewHolder, "viewHolder");
        return ItemTouchHelper.Callback.makeMovementFlags(0, 3);
    }

    @Override // android.support.v7.widget.helper.ItemTouchHelper.Callback
    public void onSwiped(RecyclerView.ViewHolder viewHolder, int i) {
        IStorySwipeListener iStorySwipeListener;
        Intrinsics.checkParameterIsNotNull(viewHolder, "viewHolder");
        if (i != 1) {
            if (i == 2 && (iStorySwipeListener = this.swipeListener) != null) {
                iStorySwipeListener.onSwipeDown();
                return;
            }
            return;
        }
        IStorySwipeListener iStorySwipeListener2 = this.swipeListener;
        if (iStorySwipeListener2 != null) {
            iStorySwipeListener2.onSwipeUp();
        }
    }

    @Override // android.support.v7.widget.helper.ItemTouchHelper.Callback
    public void onChildDraw(Canvas c, RecyclerView recyclerView, RecyclerView.ViewHolder viewHolder, float f, float f2, int i, boolean z) {
        Intrinsics.checkParameterIsNotNull(c, "c");
        Intrinsics.checkParameterIsNotNull(recyclerView, "recyclerView");
        Intrinsics.checkParameterIsNotNull(viewHolder, "viewHolder");
        super.onChildDraw(c, recyclerView, viewHolder, 0.0f, 0.0f, i, z);
    }

    /* compiled from: StoryItemTouchCallback.kt */
    public static final class Companion {
        private Companion() {
        }

        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }
    }
}
