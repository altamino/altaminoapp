package com.narvii.item.list;

import android.content.Context;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.BaseAdapter;
import android.widget.SpinnerAdapter;
import com.narvii.amino.master.R;
import com.narvii.model.Item;
import com.narvii.widget.AdapterView;
import com.narvii.widget.CardView;
import com.narvii.widget.Gallery;
import java.util.List;

/* JADX INFO: loaded from: classes10.dex */
public class ItemGallery extends Gallery implements AdapterView.OnItemClickListener {
    private Adapter adapter;
    private int layoutId;
    private List<Item> list;
    private OnItemClickListener listener;

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
        public Item getItem(int i10) {
            return (Item) ItemGallery.this.list.get(i10);
        }

        @Override // android.widget.Adapter
        public View getView(int i10, View view, ViewGroup viewGroup) {
            CardView cardView = view instanceof CardView ? (CardView) view : (CardView) this.inflater.inflate(ItemGallery.this.layoutId, viewGroup, false);
            cardView.setItem(getItem(i10));
            return cardView;
        }

        @Override // android.widget.Adapter
        public long getItemId(int i10) {
            return getItem(i10).itemId.hashCode();
        }
    }

    public interface OnItemClickListener {
        void onItemClick(Item item, int i10);
    }

    public ItemGallery(Context context) {
        this(context, null);
    }

    public void setOnItemClickListener(OnItemClickListener onItemClickListener) {
        this.listener = onItemClickListener;
    }

    public ItemGallery(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.layoutId = R.layout.gallery_item_card;
        setOnItemClickListener(this);
    }

    @Override // com.narvii.widget.AdapterView.OnItemClickListener
    public void onItemClick(AdapterView<?> adapterView, View view, int i10, long j6) {
        if (this.listener != null) {
            this.listener.onItemClick(this.adapter.getItem(i10), i10);
        }
    }

    public void setItems(List<Item> list) {
        this.list = list;
        Adapter adapter = this.adapter;
        if (adapter != null) {
            adapter.notifyDataSetChanged();
            return;
        }
        Adapter adapter2 = new Adapter();
        this.adapter = adapter2;
        setAdapter((SpinnerAdapter) adapter2);
    }

    public void setLayout(int i10) {
        if (this.adapter != null) {
            throw new IllegalStateException();
        }
        this.layoutId = i10;
    }
}
