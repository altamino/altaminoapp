package com.narvii.widget.recycleview;

import android.content.Context;
import android.content.res.TypedArray;
import android.support.v7.widget.RecyclerView;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewStub;
import android.widget.FrameLayout;
import com.narvii.lib.R;
import com.narvii.util.Log;

/* loaded from: classes3.dex */
public class NVRichRecycleView extends FrameLayout {
    private static final String TAG = "RichRecycleView";
    protected View emptyView;
    protected int mEmptyId;
    protected int mMoreProgressId;
    protected int mProgressId;
    protected View mProgressView;
    protected int mRichRecyclerViewLayoutId;
    protected View moreProgressView;
    protected NVHorizontalRecycleView recyclerView;

    public NVRichRecycleView(Context context) {
        this(context, null);
    }

    public NVRichRecycleView(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public NVRichRecycleView(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        TypedArray typedArrayObtainStyledAttributes = getContext().obtainStyledAttributes(attributeSet, R.styleable.NVRichRecycleView);
        this.mRichRecyclerViewLayoutId = typedArrayObtainStyledAttributes.getResourceId(R.styleable.NVRichRecycleView_main_layout_id, R.layout.horizontal_recycleview_layout);
        this.mEmptyId = typedArrayObtainStyledAttributes.getResourceId(R.styleable.NVRichRecycleView_empty_layout_id, 0);
        this.mMoreProgressId = typedArrayObtainStyledAttributes.getResourceId(R.styleable.NVRichRecycleView_more_progress_id, 0);
        this.mProgressId = typedArrayObtainStyledAttributes.getResourceId(R.styleable.NVRichRecycleView_progress_id, R.layout.recycle_progress_layout);
        typedArrayObtainStyledAttributes.recycle();
        initViews();
    }

    private void initViews() {
        int i;
        int i2;
        int i3;
        if (isInEditMode()) {
            return;
        }
        View viewInflate = LayoutInflater.from(getContext()).inflate(this.mRichRecyclerViewLayoutId, this);
        View viewFindViewById = viewInflate.findViewById(android.R.id.progress);
        if ((viewFindViewById instanceof ViewStub) && (i3 = this.mProgressId) != 0) {
            ViewStub viewStub = (ViewStub) viewFindViewById;
            viewStub.setLayoutResource(i3);
            this.mProgressView = viewStub.inflate();
        } else {
            this.mProgressView = viewFindViewById;
        }
        View viewFindViewById2 = viewInflate.findViewById(R.id.more_progress);
        if ((viewFindViewById2 instanceof ViewStub) && (i2 = this.mMoreProgressId) != 0) {
            ViewStub viewStub2 = (ViewStub) viewFindViewById2;
            viewStub2.setLayoutResource(i2);
            this.moreProgressView = viewStub2.inflate();
        } else {
            this.moreProgressView = viewFindViewById2;
        }
        View viewFindViewById3 = viewInflate.findViewById(R.id.empty);
        if ((viewFindViewById3 instanceof ViewStub) && (i = this.mEmptyId) != 0) {
            ViewStub viewStub3 = (ViewStub) viewFindViewById3;
            viewStub3.setLayoutResource(i);
            this.emptyView = viewStub3.inflate();
        } else {
            this.emptyView = viewFindViewById3;
        }
        this.recyclerView = (NVHorizontalRecycleView) viewInflate.findViewById(R.id.recycle_list);
        showProgressViewVisiable(true);
        showMoreProgressViewVisible(false);
        showRecyclerViewVisiable(false);
        showEmptyViewVisible(false);
    }

    public void setRecyclerViewLayoutManager(RecyclerView.LayoutManager layoutManager) {
        NVHorizontalRecycleView nVHorizontalRecycleView = this.recyclerView;
        if (nVHorizontalRecycleView == null) {
            return;
        }
        nVHorizontalRecycleView.setLayoutManager(layoutManager);
    }

    public void setRecyclerViewAdapter(RecyclerView.Adapter adapter) {
        NVHorizontalRecycleView nVHorizontalRecycleView = this.recyclerView;
        if (nVHorizontalRecycleView == null) {
            return;
        }
        nVHorizontalRecycleView.setAdapter(adapter);
        updateViews();
        if (adapter != null) {
            adapter.registerAdapterDataObserver(new RecyclerView.AdapterDataObserver() { // from class: com.narvii.widget.recycleview.NVRichRecycleView.1
                @Override // android.support.v7.widget.RecyclerView.AdapterDataObserver
                public void onItemRangeChanged(int i, int i2) {
                    super.onItemRangeChanged(i, i2);
                    Log.d(NVRichRecycleView.TAG, "item range change " + i + " " + i2);
                    NVRichRecycleView.this.updateViews();
                }

                @Override // android.support.v7.widget.RecyclerView.AdapterDataObserver
                public void onItemRangeInserted(int i, int i2) {
                    super.onItemRangeInserted(i, i2);
                    Log.d(NVRichRecycleView.TAG, "onItemRangeInserted " + i + " " + i2);
                    NVRichRecycleView.this.updateViews();
                }

                @Override // android.support.v7.widget.RecyclerView.AdapterDataObserver
                public void onItemRangeRemoved(int i, int i2) {
                    super.onItemRangeRemoved(i, i2);
                    Log.d(NVRichRecycleView.TAG, "onItemRangeRemoved " + i + " " + i2);
                    NVRichRecycleView.this.updateViews();
                }

                @Override // android.support.v7.widget.RecyclerView.AdapterDataObserver
                public void onItemRangeMoved(int i, int i2, int i3) {
                    super.onItemRangeMoved(i, i2, i3);
                    Log.d(NVRichRecycleView.TAG, "onItemRangeMoved " + i + " " + i2 + " " + i3);
                    NVRichRecycleView.this.updateViews();
                }

                @Override // android.support.v7.widget.RecyclerView.AdapterDataObserver
                public void onChanged() {
                    super.onChanged();
                    Log.d(NVRichRecycleView.TAG, "on change");
                    NVRichRecycleView.this.updateViews();
                }
            });
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void updateViews() {
        RecyclerView.Adapter adapter;
        NVHorizontalRecycleView nVHorizontalRecycleView = this.recyclerView;
        if (nVHorizontalRecycleView == null || (adapter = nVHorizontalRecycleView.getAdapter()) == null) {
            return;
        }
        int itemCount = adapter.getItemCount();
        showRecyclerViewVisiable(true);
        showProgressViewVisiable(false);
        showMoreProgressViewVisible(false);
        this.recyclerView.setIsLoadingMore(false);
        if (itemCount == 0) {
            showEmptyViewVisible(true);
        } else {
            showEmptyViewVisible(false);
        }
    }

    private void showRecyclerViewVisiable(boolean z) {
        NVHorizontalRecycleView nVHorizontalRecycleView = this.recyclerView;
        if (nVHorizontalRecycleView != null) {
            nVHorizontalRecycleView.setVisibility(z ? 0 : 4);
        }
    }

    private void showProgressViewVisiable(boolean z) {
        View view = this.mProgressView;
        if (view == null || (view instanceof ViewStub)) {
            return;
        }
        view.setVisibility(z ? 0 : 4);
    }

    private void showMoreProgressViewVisible(boolean z) {
        View view = this.moreProgressView;
        if (view == null || (view instanceof ViewStub)) {
            return;
        }
        view.setVisibility(z ? 0 : 4);
    }

    private void showEmptyViewVisible(boolean z) {
        View view = this.emptyView;
        if (view == null || (view instanceof ViewStub)) {
            return;
        }
        view.setVisibility(z ? 0 : 4);
    }
}
