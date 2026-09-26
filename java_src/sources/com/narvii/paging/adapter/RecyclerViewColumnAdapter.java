package com.narvii.paging.adapter;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.LinearLayout;
import androidx.annotation.NonNull;
import androidx.recyclerview.widget.RecyclerView;
import com.narvii.app.NVContext;
import com.narvii.lib.R;
import com.narvii.util.LibConstants;
import com.narvii.util.Tag;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: classes9.dex */
public class RecyclerViewColumnAdapter extends RecyclerViewProxyAdapter {
    public static final Tag GRID_CONTAINER = new Tag("gridContainer");
    protected int column;
    private LinearLayout.LayoutParams lp;
    protected int paddingBottom;
    protected int paddingLeft;
    protected int paddingRight;
    protected int paddingTop;

    class ViewHolder extends RecyclerView.ViewHolder {
        List<RecyclerView.ViewHolder> childViewHolders;
        LinearLayout ll;

        public void bindView() {
        }

        public ViewHolder(View view) {
            super(view);
            this.childViewHolders = new ArrayList();
            this.ll = (LinearLayout) view.findViewById(R.id.column_layout);
        }

        public void addChildViewHolder(int i10, RecyclerView.ViewHolder viewHolder) {
            this.childViewHolders.add(i10, viewHolder);
        }

        public RecyclerView.ViewHolder getChildViewHolder(int i10) {
            if (i10 < this.childViewHolders.size()) {
                return this.childViewHolders.get(i10);
            }
            return null;
        }

        public void removeChildViewHolder(int i10) {
            if (i10 < this.childViewHolders.size()) {
                this.childViewHolders.remove(i10);
            }
        }
    }

    public RecyclerViewColumnAdapter(NVContext nVContext) {
        this(nVContext, 0, 0, 0, 0);
    }

    @Override // com.narvii.paging.adapter.RecyclerViewProxyAdapter, androidx.recyclerview.widget.RecyclerView.Adapter
    public int getItemViewType(int i10) {
        return 0;
    }

    @Override // com.narvii.paging.adapter.NVRecyclerViewBaseAdapter
    public boolean onItemClick(NVRecyclerViewBaseAdapter nVRecyclerViewBaseAdapter, int i10, Object obj, View view, View view2) {
        if (view2 == null || !(view instanceof LinearLayout) || this.wrapped == null) {
            return false;
        }
        View view3 = view2;
        while (view3.getParent() instanceof ViewGroup) {
            ViewGroup viewGroup = (ViewGroup) view3.getParent();
            if (view3.getTag() == GRID_CONTAINER) {
                ViewGroup viewGroup2 = (ViewGroup) view3.getParent();
                int i11 = 0;
                while (i11 < viewGroup2.getChildCount() && viewGroup2.getChildAt(i11) != view3) {
                    i11++;
                }
                int i12 = (this.column * i10) + i11;
                Object item = this.wrapped.getItem(i12);
                View childAt = ((ViewGroup) view3).getChildAt(0);
                if (view2 == viewGroup || view2 == childAt || view2.getTag() == GRID_CONTAINER) {
                    view2 = null;
                }
                View view4 = view2;
                NVRecyclerViewBaseAdapter nVRecyclerViewBaseAdapter2 = this.wrapped;
                return nVRecyclerViewBaseAdapter2.dispatchOnItemClick(nVRecyclerViewBaseAdapter2, i12, item, childAt, view4);
            }
            view3 = viewGroup;
        }
        return super.onItemClick(nVRecyclerViewBaseAdapter, i10, obj, view, view2);
    }

    @Override // com.narvii.paging.adapter.NVRecyclerViewBaseAdapter
    public boolean onLongClick(NVRecyclerViewBaseAdapter nVRecyclerViewBaseAdapter, int i10, Object obj, View view, View view2) {
        if (view2 == null || !(view instanceof LinearLayout) || this.wrapped == null) {
            return false;
        }
        View view3 = view2;
        while (view3.getParent() instanceof ViewGroup) {
            ViewGroup viewGroup = (ViewGroup) view3.getParent();
            if (view3.getTag() == GRID_CONTAINER) {
                ViewGroup viewGroup2 = (ViewGroup) view3.getParent();
                int i11 = 0;
                while (i11 < viewGroup2.getChildCount() && viewGroup2.getChildAt(i11) != view3) {
                    i11++;
                }
                int i12 = (this.column * i10) + i11;
                Object item = this.wrapped.getItem(i12);
                View childAt = ((ViewGroup) view3).getChildAt(0);
                if (view2 == viewGroup || view2 == childAt || view2.getTag() == GRID_CONTAINER) {
                    view2 = null;
                }
                View view4 = view2;
                NVRecyclerViewBaseAdapter nVRecyclerViewBaseAdapter2 = this.wrapped;
                return nVRecyclerViewBaseAdapter2.onLongClick(nVRecyclerViewBaseAdapter2, i12, item, childAt, view4);
            }
            view3 = viewGroup;
        }
        return super.onLongClick(nVRecyclerViewBaseAdapter, i10, obj, view, view2);
    }

    public RecyclerViewColumnAdapter(NVContext nVContext, int i10, int i11) {
        this(nVContext, i10, i10, i11, i11);
    }

    @Override // com.narvii.paging.adapter.RecyclerViewProxyAdapter, androidx.recyclerview.widget.RecyclerView.Adapter
    public int getItemCount() {
        NVRecyclerViewBaseAdapter nVRecyclerViewBaseAdapter = this.wrapped;
        if (nVRecyclerViewBaseAdapter == null) {
            return 0;
        }
        int itemCount = nVRecyclerViewBaseAdapter.getItemCount();
        int i10 = this.column;
        return ((itemCount + i10) - 1) / i10;
    }

    @Override // com.narvii.paging.adapter.RecyclerViewProxyAdapter, androidx.recyclerview.widget.RecyclerView.Adapter
    public void onBindViewHolder(@NonNull RecyclerView.ViewHolder viewHolder, int i10) {
        if (viewHolder instanceof ViewHolder) {
            ViewHolder viewHolder2 = (ViewHolder) viewHolder;
            viewHolder2.ll.setPadding(this.paddingLeft, this.paddingTop, this.paddingRight, this.paddingBottom);
            for (int i11 = 0; i11 < viewHolder2.ll.getChildCount(); i11++) {
                int i12 = (this.column * i10) + i11;
                boolean z6 = i12 >= this.wrapped.getItemCount();
                int itemViewType = z6 ? -100 : this.wrapped.getItemViewType(i12);
                LinearLayout linearLayout = (LinearLayout) viewHolder2.ll.getChildAt(i11);
                linearLayout.setVisibility(z6 ? 4 : 0);
                int i13 = R.id.child_view_type;
                Object tag = linearLayout.getTag(i13);
                if (!(tag instanceof Integer) || ((Integer) tag).intValue() != itemViewType) {
                    linearLayout.removeAllViews();
                    viewHolder2.removeChildViewHolder(i11);
                    RecyclerView.ViewHolder viewHolderOnCreateViewHolder = this.wrapped.onCreateViewHolder(linearLayout, itemViewType);
                    linearLayout.addView(viewHolderOnCreateViewHolder.itemView);
                    linearLayout.setTag(i13, Integer.valueOf(itemViewType));
                    viewHolder2.addChildViewHolder(i11, viewHolderOnCreateViewHolder);
                }
                if (viewHolder2.getChildViewHolder(i11) != null && !z6) {
                    this.wrapped.onBindViewHolder(viewHolder2.getChildViewHolder(i11), i12);
                }
            }
        }
    }

    public void setAdapter(NVRecyclerViewBaseAdapter nVRecyclerViewBaseAdapter, int i10) {
        this.column = i10;
        nVRecyclerViewBaseAdapter.parentAdapter = this;
        super.setAdapter(nVRecyclerViewBaseAdapter);
    }

    public RecyclerViewColumnAdapter(NVContext nVContext, int i10, int i11, int i12, int i13) {
        super(nVContext);
        LinearLayout.LayoutParams layoutParams = new LinearLayout.LayoutParams(0, -2);
        this.lp = layoutParams;
        layoutParams.weight = 1.0f;
        this.paddingLeft = i10;
        this.paddingRight = i11;
        this.paddingTop = i12;
        this.paddingBottom = i13;
    }

    @Override // com.narvii.paging.adapter.RecyclerViewProxyAdapter, com.narvii.paging.adapter.NVRecyclerViewBaseAdapter
    public Object getItem(int i10) {
        return Integer.valueOf(i10);
    }

    @Override // com.narvii.paging.adapter.RecyclerViewProxyAdapter, androidx.recyclerview.widget.RecyclerView.Adapter
    @NonNull
    public RecyclerView.ViewHolder onCreateViewHolder(@NonNull ViewGroup viewGroup, int i10) {
        LinearLayout linearLayout = (LinearLayout) LayoutInflater.from(viewGroup.getContext()).inflate(R.layout.item_column_layout, viewGroup, false);
        linearLayout.setTag(LibConstants.GRID_ROW);
        ViewHolder viewHolder = new ViewHolder(linearLayout);
        while (linearLayout.getChildCount() < this.column) {
            LinearLayout linearLayout2 = new LinearLayout(viewGroup.getContext());
            linearLayout2.setGravity(17);
            linearLayout2.setId(Integer.MAX_VALUE);
            linearLayout2.setTag(GRID_CONTAINER);
            linearLayout2.setClipChildren(false);
            linearLayout2.setClipToPadding(false);
            linearLayout.addView(linearLayout2, this.lp);
        }
        while (linearLayout.getChildCount() > this.column) {
            linearLayout.removeViewAt(linearLayout.getChildCount() - 1);
        }
        return viewHolder;
    }

    @Override // com.narvii.paging.adapter.NVRecyclerViewBaseAdapter
    public void resetEmptyList() {
        super.resetEmptyList();
        this.wrapped.resetEmptyList();
    }
}
