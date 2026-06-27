package com.narvii.user.profile;

import android.content.Context;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.BaseAdapter;
import android.widget.SpinnerAdapter;
import com.narvii.amino.mastes.R;
import com.narvii.model.Item;
import com.narvii.util.Tag;
import com.narvii.widget.AdapterView;
import com.narvii.widget.CardView;
import com.narvii.widget.Gallery;
import com.narvii.widget.TintButton;
import java.util.ArrayList;
import java.util.List;

/* loaded from: classes3.dex */
public class UserFavoriteGallery extends Gallery implements AdapterView.OnItemClickListener {
    public static final Tag ADD = new Tag("gallery.add");
    public static final Tag GOTO = new Tag("gallery.goto");
    public static final Tag PADDING = new Tag("gallery.PADDING");
    private Adapter adapter;
    boolean darkTheme;
    private final ArrayList<Object> list;
    private OnItemClickListener listener;

    public interface OnItemClickListener {
        void onItemClick(Object obj, int i);
    }

    public void setDarkTheme(boolean z) {
        this.darkTheme = z;
        Adapter adapter = this.adapter;
        if (adapter != null) {
            adapter.notifyDataSetChanged();
        }
    }

    public UserFavoriteGallery(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.list = new ArrayList<>();
        setOnItemClickListener(this);
    }

    public void setItems(List<Item> list, boolean z, boolean z2) {
        this.list.clear();
        this.list.add(PADDING);
        if (list != null) {
            int size = list.size();
            if (z) {
                this.list.add(ADD);
            }
            if (size > 0) {
                this.list.addAll(list);
            }
            if (z2) {
                this.list.add(GOTO);
            }
        }
        this.list.add(PADDING);
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

        @Override // android.widget.BaseAdapter, android.widget.Adapter
        public int getViewTypeCount() {
            return 5;
        }

        @Override // android.widget.BaseAdapter, android.widget.Adapter
        public boolean hasStableIds() {
            return true;
        }

        private Adapter() {
            this.inflater = LayoutInflater.from(UserFavoriteGallery.this.getContext());
        }

        @Override // android.widget.Adapter
        public int getCount() {
            if (UserFavoriteGallery.this.list == null) {
                return 0;
            }
            return UserFavoriteGallery.this.list.size();
        }

        @Override // android.widget.Adapter
        public Object getItem(int i) {
            return UserFavoriteGallery.this.list.get(i);
        }

        @Override // android.widget.Adapter
        public long getItemId(int i) {
            int iHashCode;
            Object item = getItem(i);
            if (item instanceof Item) {
                iHashCode = ((Item) item).itemId.hashCode();
            } else {
                iHashCode = item.hashCode();
            }
            return iHashCode;
        }

        @Override // android.widget.BaseAdapter, android.widget.Adapter
        public int getItemViewType(int i) {
            Object item = getItem(i);
            if (item instanceof Item) {
                return 0;
            }
            if (item == UserFavoriteGallery.ADD) {
                return 1;
            }
            if (item == UserFavoriteGallery.GOTO) {
                return 2;
            }
            return item == UserFavoriteGallery.PADDING ? 3 : 4;
        }

        @Override // android.widget.Adapter
        public View getView(int i, View view, ViewGroup viewGroup) {
            CardView cardView;
            Object item = getItem(i);
            if (item instanceof Item) {
                if (view instanceof CardView) {
                    cardView = (CardView) view;
                } else {
                    cardView = (CardView) this.inflater.inflate(R.layout.gallery_item_card, viewGroup, false);
                }
                cardView.setItem((Item) item);
                return cardView;
            }
            if (item != UserFavoriteGallery.ADD) {
                return item == UserFavoriteGallery.PADDING ? view == null ? this.inflater.inflate(R.layout.gallery_item_padding, viewGroup, false) : view : view == null ? this.inflater.inflate(R.layout.gallery_see_all, viewGroup, false) : view;
            }
            if (view == null) {
                view = this.inflater.inflate(R.layout.gallery_item_placeholder, viewGroup, false);
            }
            view.findViewById(R.id.bg).setBackgroundResource(UserFavoriteGallery.this.darkTheme ? R.drawable.wiki_entry_add_bg_dark : R.drawable.wiki_entry_add_bg);
            ((TintButton) view.findViewById(R.id.plus)).setTintColor(UserFavoriteGallery.this.darkTheme ? -1 : -3618616);
            return view;
        }
    }

    @Override // com.narvii.widget.AdapterView.OnItemClickListener
    public void onItemClick(AdapterView<?> adapterView, View view, int i, long j) {
        if (this.listener != null) {
            this.listener.onItemClick(this.adapter.getItem(i), i);
        }
    }
}
