package com.narvii.user.profile;

import android.content.Context;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.BaseAdapter;
import android.widget.SpinnerAdapter;
import com.narvii.amino.master.R;
import com.narvii.model.Item;
import com.narvii.util.Tag;
import com.narvii.widget.AdapterView;
import com.narvii.widget.CardView;
import com.narvii.widget.Gallery;
import com.narvii.widget.TintButton;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public class UserFavoriteGallery extends Gallery implements AdapterView.OnItemClickListener {
    public static final Tag ADD = new Tag("gallery.add");
    public static final Tag GOTO = new Tag("gallery.goto");
    public static final Tag PADDING = new Tag("gallery.PADDING");
    private Adapter adapter;
    boolean darkTheme;
    private final ArrayList<Object> list;
    private OnItemClickListener listener;

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
        public Object getItem(int i10) {
            return UserFavoriteGallery.this.list.get(i10);
        }

        @Override // android.widget.Adapter
        public long getItemId(int i10) {
            int iHashCode;
            Object item = getItem(i10);
            if (item instanceof Item) {
                iHashCode = ((Item) item).itemId.hashCode();
            } else {
                iHashCode = item.hashCode();
            }
            return iHashCode;
        }

        @Override // android.widget.BaseAdapter, android.widget.Adapter
        public int getItemViewType(int i10) {
            Object item = getItem(i10);
            if (item instanceof Item) {
                return 0;
            }
            if (item == UserFavoriteGallery.ADD) {
                return 1;
            }
            if (item == UserFavoriteGallery.GOTO) {
                return 2;
            }
            if (item == UserFavoriteGallery.PADDING) {
                return 3;
            }
            return 4;
        }

        @Override // android.widget.Adapter
        public View getView(int i10, View view, ViewGroup viewGroup) {
            int i11;
            int i12;
            CardView cardView;
            Object item = getItem(i10);
            if (item instanceof Item) {
                if (view instanceof CardView) {
                    cardView = (CardView) view;
                } else {
                    cardView = (CardView) this.inflater.inflate(R.layout.gallery_item_card, viewGroup, false);
                }
                cardView.setItem((Item) item);
                return cardView;
            }
            if (item == UserFavoriteGallery.ADD) {
                if (view == null) {
                    view = this.inflater.inflate(R.layout.gallery_item_placeholder, viewGroup, false);
                }
                View viewFindViewById = view.findViewById(R.id.bg);
                if (UserFavoriteGallery.this.darkTheme) {
                    i11 = R.drawable.wiki_entry_add_bg_dark;
                } else {
                    i11 = R.drawable.wiki_entry_add_bg;
                }
                viewFindViewById.setBackgroundResource(i11);
                TintButton tintButton = (TintButton) view.findViewById(R.id.plus);
                if (UserFavoriteGallery.this.darkTheme) {
                    i12 = -1;
                } else {
                    i12 = -3618616;
                }
                tintButton.setTintColor(i12);
                return view;
            }
            if (item == UserFavoriteGallery.PADDING) {
                if (view == null) {
                    return this.inflater.inflate(R.layout.gallery_item_padding, viewGroup, false);
                }
                return view;
            }
            if (view == null) {
                return this.inflater.inflate(R.layout.gallery_see_all, viewGroup, false);
            }
            return view;
        }
    }

    public interface OnItemClickListener {
        void onItemClick(Object obj, int i10);
    }

    public void setOnItemClickListener(OnItemClickListener onItemClickListener) {
        this.listener = onItemClickListener;
    }

    @Override // com.narvii.widget.AdapterView.OnItemClickListener
    public void onItemClick(AdapterView<?> adapterView, View view, int i10, long j6) {
        if (this.listener != null) {
            this.listener.onItemClick(this.adapter.getItem(i10), i10);
        }
    }

    public void setDarkTheme(boolean z6) {
        this.darkTheme = z6;
        Adapter adapter = this.adapter;
        if (adapter != null) {
            adapter.notifyDataSetChanged();
        }
    }

    public void setItems(List<Item> list, boolean z6, boolean z10) {
        this.list.clear();
        ArrayList<Object> arrayList = this.list;
        Tag tag = PADDING;
        arrayList.add(tag);
        if (list != null) {
            int size = list.size();
            if (z6) {
                this.list.add(ADD);
            }
            if (size > 0) {
                this.list.addAll(list);
            }
            if (z10) {
                this.list.add(GOTO);
            }
        }
        this.list.add(tag);
        Adapter adapter = this.adapter;
        if (adapter != null) {
            adapter.notifyDataSetChanged();
            return;
        }
        Adapter adapter2 = new Adapter();
        this.adapter = adapter2;
        setAdapter((SpinnerAdapter) adapter2);
    }

    public UserFavoriteGallery(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.list = new ArrayList<>();
        setOnItemClickListener(this);
    }
}
