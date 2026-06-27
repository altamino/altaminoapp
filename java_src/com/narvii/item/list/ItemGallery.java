package com.narvii.item.list;

import android.content.Context;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.BaseAdapter;
import android.widget.SpinnerAdapter;
import com.narvii.amino.mastes.R;
import com.narvii.model.Item;
import com.narvii.widget.AdapterView;
import com.narvii.widget.CardView;
import com.narvii.widget.Gallery;
import java.util.List;

/* loaded from: classes.dex */
public class ItemGallery extends Gallery implements AdapterView.OnItemClickListener {
    private Adapter adapter;
    private int layoutId;
    private List<Item> list;
    private OnItemClickListener listener;

    public interface OnItemClickListener {
        void onItemClick(Item item, int i);
    }

    public ItemGallery(Context context) {
        this(context, null);
    }

    public ItemGallery(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.layoutId = R.layout.gallery_item_card;
        setOnItemClickListener(this);
    }

    public void setLayout(int i) {
        if (this.adapter != null) {
            throw new IllegalStateException();
        }
        this.layoutId = i;
    }

    public void setItems(List<Item> list) {
        this.list = list;
        Adapter adapter = this.adapter;
        if (adapter == null) {
            this.adapter = new Adapter();
            setAdapter((SpinnerAdapter) this.adapter);
        } else {
            adapter.notifyDataSetChanged();
        }
    }

    public void setOnItemClickListener(OnItemClickListener onItemClickListener) {
        this.listener = onItemClickListener;
    }

    private class Adapter extends BaseAdapter {
        LayoutInflater inflater;

        private Adapter() {
            this.inflater = LayoutInflater.from(ItemGallery.this.getContext());
        }

        @Override // android.widget.Adapter
        public int getCount() {
            if (ItemGallery.this.list == null) {
                return 0;
            }
            return ItemGallery.this.list.size();
        }

        @Override // android.widget.Adapter
        public Item getItem(int i) {
            return (Item) ItemGallery.this.list.get(i);
        }

        @Override // android.widget.Adapter
        public long getItemId(int i) {
            return getItem(i).itemId.hashCode();
        }

        @Override // android.widget.Adapter
        public View getView(int i, View view, ViewGroup viewGroup) {
            CardView cardView;
            if (!(view instanceof CardView)) {
                cardView = (CardView) this.inflater.inflate(ItemGallery.this.layoutId, viewGroup, false);
            } else {
                cardView = (CardView) view;
            }
            cardView.setItem(getItem(i));
            return cardView;
        }
    }

    @Override // com.narvii.widget.AdapterView.OnItemClickListener
    public void onItemClick(AdapterView<?> adapterView, View view, int i, long j) {
        if (this.listener != null) {
            this.listener.onItemClick(this.adapter.getItem(i), i);
        }
    }
}
