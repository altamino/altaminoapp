package com.narvii.catalog.search;

import android.view.View;
import android.view.ViewGroup;
import android.widget.ListAdapter;
import android.widget.TextView;
import com.narvii.amino.mastes.R;
import com.narvii.app.NVContext;
import com.narvii.catalog.CatalogThemeFragment;
import com.narvii.list.NVAdapter;
import com.narvii.widget.SearchBar;

/* loaded from: classes2.dex */
public class CatalogSearchBarAdapter extends NVAdapter {
    boolean gold;
    boolean inSelect;
    View view;

    @Override // android.widget.BaseAdapter, android.widget.ListAdapter
    public boolean areAllItemsEnabled() {
        return false;
    }

    @Override // android.widget.Adapter
    public int getCount() {
        return 1;
    }

    @Override // android.widget.Adapter
    public Object getItem(int i) {
        return this;
    }

    @Override // android.widget.BaseAdapter, android.widget.ListAdapter
    public boolean isEnabled(int i) {
        return false;
    }

    public CatalogSearchBarAdapter(NVContext nVContext) {
        super(nVContext);
        this.gold = nVContext instanceof CatalogThemeFragment ? ((CatalogThemeFragment) nVContext).isGoldTheme() : false;
    }

    public void setInSelect(boolean z) {
        if (this.inSelect != z) {
            this.inSelect = z;
            View view = this.view;
            if (view != null) {
                view.animate().alpha(z ? 0.2f : 1.0f);
            }
        }
    }

    @Override // android.widget.Adapter
    public long getItemId(int i) {
        return hashCode();
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // android.widget.Adapter
    public View getView(int i, View view, ViewGroup viewGroup) {
        View view2;
        if (this instanceof SearchBar.OnSearchListener) {
            View viewCreateView = this.view;
            if (viewCreateView == null) {
                viewCreateView = createView(R.layout.search_bar_dark, viewGroup, view);
                this.view = viewCreateView;
            }
            SearchBar searchBar = (SearchBar) viewCreateView;
            searchBar.setOnSearchListener((SearchBar.OnSearchListener) this);
            searchBar.getEditText().setVisibility(0);
            searchBar.setHintText(getContext().getText(R.string.search_catalog_hint));
            view2 = searchBar;
        } else {
            View view3 = this.view;
            View view4 = view3;
            if (view3 == null) {
                View viewCreateView2 = createView(R.layout.search_btn_dark, viewGroup, view);
                this.view = viewCreateView2;
                view4 = viewCreateView2;
            }
            view4.findViewById(R.id.search_btn).setOnClickListener(this.subviewClickListener);
            view2 = view4;
        }
        if (this.gold) {
            ViewGroup viewGroup2 = (ViewGroup) view2.findViewById(R.id.search_hint);
            int childCount = viewGroup2.getChildCount();
            for (int i2 = 0; i2 < childCount; i2++) {
                View childAt = viewGroup2.getChildAt(i2);
                if (childAt instanceof TextView) {
                    ((TextView) childAt).setTextColor(getContext().getResources().getColor(R.color.gold));
                }
            }
        }
        return view2;
    }

    @Override // com.narvii.list.NVAdapter
    public boolean dispatchOnItemClick(ListAdapter listAdapter, int i, Object obj, View view, View view2) {
        if (this.inSelect) {
            return false;
        }
        return super.dispatchOnItemClick(listAdapter, i, obj, view, view2);
    }
}
