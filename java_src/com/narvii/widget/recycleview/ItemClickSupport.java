package com.narvii.widget.recycleview;

import android.support.v7.widget.RecyclerView;
import android.view.View;
import com.narvii.lib.R;

/* loaded from: classes3.dex */
public class ItemClickSupport {
    private OnItemClickListener mOnItemClickListener;
    private OnItemLongClickListener mOnItemLongClickListener;
    private final RecyclerView mRecyclerView;
    private View.OnClickListener mOnClickListener = new View.OnClickListener() { // from class: com.narvii.widget.recycleview.ItemClickSupport.1
        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            int adapterPosition;
            if (ItemClickSupport.this.mOnItemClickListener == null || (adapterPosition = ItemClickSupport.this.mRecyclerView.getChildViewHolder(view).getAdapterPosition()) == -1) {
                return;
            }
            ItemClickSupport.this.mOnItemClickListener.onItemClicked(ItemClickSupport.this.mRecyclerView, adapterPosition, view);
        }
    };
    private View.OnLongClickListener mOnLongClickListener = new View.OnLongClickListener() { // from class: com.narvii.widget.recycleview.ItemClickSupport.2
        @Override // android.view.View.OnLongClickListener
        public boolean onLongClick(View view) {
            int adapterPosition;
            if (ItemClickSupport.this.mOnItemLongClickListener == null || (adapterPosition = ItemClickSupport.this.mRecyclerView.getChildViewHolder(view).getAdapterPosition()) == -1) {
                return false;
            }
            return ItemClickSupport.this.mOnItemLongClickListener.onItemLongClicked(ItemClickSupport.this.mRecyclerView, adapterPosition, view);
        }
    };
    private RecyclerView.OnChildAttachStateChangeListener mAttachListener = new RecyclerView.OnChildAttachStateChangeListener() { // from class: com.narvii.widget.recycleview.ItemClickSupport.3
        @Override // android.support.v7.widget.RecyclerView.OnChildAttachStateChangeListener
        public void onChildViewDetachedFromWindow(View view) {
        }

        @Override // android.support.v7.widget.RecyclerView.OnChildAttachStateChangeListener
        public void onChildViewAttachedToWindow(View view) {
            if (ItemClickSupport.this.mOnItemClickListener != null) {
                view.setOnClickListener(ItemClickSupport.this.mOnClickListener);
            }
            if (ItemClickSupport.this.mOnItemLongClickListener != null) {
                view.setOnLongClickListener(ItemClickSupport.this.mOnLongClickListener);
            }
        }
    };

    public interface OnItemClickListener {
        void onItemClicked(RecyclerView recyclerView, int i, View view);
    }

    public interface OnItemLongClickListener {
        boolean onItemLongClicked(RecyclerView recyclerView, int i, View view);
    }

    private ItemClickSupport(RecyclerView recyclerView) {
        this.mRecyclerView = recyclerView;
        this.mRecyclerView.setTag(R.id.item_click_support, this);
        this.mRecyclerView.addOnChildAttachStateChangeListener(this.mAttachListener);
    }

    public static ItemClickSupport addTo(RecyclerView recyclerView) {
        ItemClickSupport itemClickSupport = (ItemClickSupport) recyclerView.getTag(R.id.item_click_support);
        return itemClickSupport == null ? new ItemClickSupport(recyclerView) : itemClickSupport;
    }

    public static ItemClickSupport removeFrom(RecyclerView recyclerView) {
        ItemClickSupport itemClickSupport = (ItemClickSupport) recyclerView.getTag(R.id.item_click_support);
        if (itemClickSupport != null) {
            itemClickSupport.detach(recyclerView);
        }
        return itemClickSupport;
    }

    public ItemClickSupport setOnItemClickListener(OnItemClickListener onItemClickListener) {
        this.mOnItemClickListener = onItemClickListener;
        return this;
    }

    public ItemClickSupport setOnItemLongClickListener(OnItemLongClickListener onItemLongClickListener) {
        this.mOnItemLongClickListener = onItemLongClickListener;
        return this;
    }

    private void detach(RecyclerView recyclerView) {
        recyclerView.removeOnChildAttachStateChangeListener(this.mAttachListener);
        recyclerView.setTag(R.id.item_click_support, null);
    }
}
