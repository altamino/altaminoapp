package com.narvii.paging.adapter;

import android.support.v7.widget.RecyclerView;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.LinearLayout;
import com.narvii.app.NVContext;
import com.narvii.lib.R;
import com.narvii.util.LibConstants;
import com.narvii.util.Tag;
import java.util.ArrayList;
import java.util.List;

/* loaded from: classes3.dex */
public class RecyclerViewColumnAdapter extends RecyclerViewProxyAdapter {
    public static final Tag GRID_CONTAINER = new Tag("gridContainer");
    protected int column;
    private LinearLayout.LayoutParams lp;
    protected int paddingBottom;
    protected int paddingLeft;
    protected int paddingRight;
    protected int paddingTop;

    @Override // com.narvii.paging.adapter.RecyclerViewProxyAdapter, android.support.v7.widget.RecyclerView.Adapter
    public int getItemViewType(int i) {
        return 0;
    }

    public RecyclerViewColumnAdapter(NVContext nVContext) {
        this(nVContext, 0, 0, 0, 0);
    }

    public RecyclerViewColumnAdapter(NVContext nVContext, int i, int i2) {
        this(nVContext, i, i, i2, i2);
    }

    public RecyclerViewColumnAdapter(NVContext nVContext, int i, int i2, int i3, int i4) {
        super(nVContext);
        this.lp = new LinearLayout.LayoutParams(0, -2);
        this.lp.weight = 1.0f;
        this.paddingLeft = i;
        this.paddingRight = i2;
        this.paddingTop = i3;
        this.paddingBottom = i4;
    }

    public void setAdapter(NVRecyclerViewBaseAdapter nVRecyclerViewBaseAdapter, int i) {
        this.column = i;
        nVRecyclerViewBaseAdapter.parentAdapter = this;
        super.setAdapter(nVRecyclerViewBaseAdapter);
    }

    @Override // com.narvii.paging.adapter.RecyclerViewProxyAdapter, com.narvii.paging.adapter.NVRecyclerViewBaseAdapter
    public Object getItem(int i) {
        return Integer.valueOf(i);
    }

    @Override // com.narvii.paging.adapter.RecyclerViewProxyAdapter, android.support.v7.widget.RecyclerView.Adapter
    public int getItemCount() {
        NVRecyclerViewBaseAdapter nVRecyclerViewBaseAdapter = this.wrapped;
        if (nVRecyclerViewBaseAdapter == null) {
            return 0;
        }
        int itemCount = nVRecyclerViewBaseAdapter.getItemCount();
        return ((itemCount + r1) - 1) / this.column;
    }

    @Override // com.narvii.paging.adapter.RecyclerViewProxyAdapter, android.support.v7.widget.RecyclerView.Adapter
    public RecyclerView.ViewHolder onCreateViewHolder(ViewGroup viewGroup, int i) {
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

    @Override // com.narvii.paging.adapter.RecyclerViewProxyAdapter, android.support.v7.widget.RecyclerView.Adapter
    public void onBindViewHolder(RecyclerView.ViewHolder viewHolder, int i) {
        if (viewHolder instanceof ViewHolder) {
            ViewHolder viewHolder2 = (ViewHolder) viewHolder;
            viewHolder2.ll.setPadding(this.paddingLeft, this.paddingTop, this.paddingRight, this.paddingBottom);
            for (int i2 = 0; i2 < viewHolder2.ll.getChildCount(); i2++) {
                int i3 = (this.column * i) + i2;
                boolean z = i3 >= this.wrapped.getItemCount();
                int itemViewType = z ? -100 : this.wrapped.getItemViewType(i3);
                LinearLayout linearLayout = (LinearLayout) viewHolder2.ll.getChildAt(i2);
                linearLayout.setVisibility(z ? 4 : 0);
                Object tag = linearLayout.getTag(R.id.child_view_type);
                if (!(tag instanceof Integer) || ((Integer) tag).intValue() != itemViewType) {
                    linearLayout.removeAllViews();
                    viewHolder2.removeChildViewHolder(i2);
                    RecyclerView.ViewHolder viewHolderOnCreateViewHolder = this.wrapped.onCreateViewHolder(linearLayout, itemViewType);
                    linearLayout.addView(viewHolderOnCreateViewHolder.itemView);
                    linearLayout.setTag(R.id.child_view_type, Integer.valueOf(itemViewType));
                    viewHolder2.addChildViewHolder(i2, viewHolderOnCreateViewHolder);
                }
                if (viewHolder2.getChildViewHolder(i2) != null && !z) {
                    this.wrapped.onBindViewHolder(viewHolder2.getChildViewHolder(i2), i3);
                }
            }
        }
    }

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

        public void addChildViewHolder(int i, RecyclerView.ViewHolder viewHolder) {
            this.childViewHolders.add(i, viewHolder);
        }

        public void removeChildViewHolder(int i) {
            if (i < this.childViewHolders.size()) {
                this.childViewHolders.remove(i);
            }
        }

        public RecyclerView.ViewHolder getChildViewHolder(int i) {
            if (i < this.childViewHolders.size()) {
                return this.childViewHolders.get(i);
            }
            return null;
        }
    }

    @Override // com.narvii.paging.adapter.NVRecyclerViewBaseAdapter
    public boolean onItemClick(NVRecyclerViewBaseAdapter nVRecyclerViewBaseAdapter, int i, Object obj, View view, View view2) {
        if (view2 == null || !(view instanceof LinearLayout) || this.wrapped == null) {
            return false;
        }
        View view3 = view2;
        while (view3.getParent() instanceof ViewGroup) {
            ViewGroup viewGroup = (ViewGroup) view3.getParent();
            if (view3.getTag() == GRID_CONTAINER) {
                ViewGroup viewGroup2 = (ViewGroup) view3.getParent();
                int i2 = 0;
                while (i2 < viewGroup2.getChildCount() && viewGroup2.getChildAt(i2) != view3) {
                    i2++;
                }
                int i3 = (this.column * i) + i2;
                Object item = this.wrapped.getItem(i3);
                View childAt = ((ViewGroup) view3).getChildAt(0);
                if (view2 == viewGroup || view2 == childAt || view2.getTag() == GRID_CONTAINER) {
                    view2 = null;
                }
                NVRecyclerViewBaseAdapter nVRecyclerViewBaseAdapter2 = this.wrapped;
                return nVRecyclerViewBaseAdapter2.dispatchOnItemClick(nVRecyclerViewBaseAdapter2, i3, item, childAt, view2);
            }
            view3 = viewGroup;
        }
        return super.onItemClick(nVRecyclerViewBaseAdapter, i, obj, view, view2);
    }

    @Override // com.narvii.paging.adapter.NVRecyclerViewBaseAdapter
    public boolean onLongClick(NVRecyclerViewBaseAdapter nVRecyclerViewBaseAdapter, int i, Object obj, View view, View view2) {
        if (view2 == null || !(view instanceof LinearLayout) || this.wrapped == null) {
            return false;
        }
        View view3 = view2;
        while (view3.getParent() instanceof ViewGroup) {
            ViewGroup viewGroup = (ViewGroup) view3.getParent();
            if (view3.getTag() == GRID_CONTAINER) {
                ViewGroup viewGroup2 = (ViewGroup) view3.getParent();
                int i2 = 0;
                while (i2 < viewGroup2.getChildCount() && viewGroup2.getChildAt(i2) != view3) {
                    i2++;
                }
                int i3 = (this.column * i) + i2;
                Object item = this.wrapped.getItem(i3);
                View childAt = ((ViewGroup) view3).getChildAt(0);
                if (view2 == viewGroup || view2 == childAt || view2.getTag() == GRID_CONTAINER) {
                    view2 = null;
                }
                NVRecyclerViewBaseAdapter nVRecyclerViewBaseAdapter2 = this.wrapped;
                return nVRecyclerViewBaseAdapter2.onLongClick(nVRecyclerViewBaseAdapter2, i3, item, childAt, view2);
            }
            view3 = viewGroup;
        }
        return super.onLongClick(nVRecyclerViewBaseAdapter, i, obj, view, view2);
    }

    @Override // com.narvii.paging.adapter.NVRecyclerViewBaseAdapter
    public void resetEmptyList() {
        super.resetEmptyList();
        this.wrapped.resetEmptyList();
    }
}
