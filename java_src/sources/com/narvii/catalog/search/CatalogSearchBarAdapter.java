package com.narvii.catalog.search;

import android.view.View;
import android.view.ViewGroup;
import android.widget.ListAdapter;
import android.widget.TextView;
import com.narvii.amino.master.R;
import com.narvii.app.NVContext;
import com.narvii.catalog.CatalogThemeFragment;
import com.narvii.list.NVAdapter;
import com.narvii.widget.SearchBar;

/* JADX INFO: loaded from: classes7.dex */
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
    public Object getItem(int i10) {
        return this;
    }

    @Override // android.widget.BaseAdapter, android.widget.ListAdapter
    public boolean isEnabled(int i10) {
        return false;
    }

    @Override // com.narvii.list.NVAdapter
    public boolean dispatchOnItemClick(ListAdapter listAdapter, int i10, Object obj, View view, View view2) {
        if (this.inSelect) {
            return false;
        }
        return super.dispatchOnItemClick(listAdapter, i10, obj, view, view2);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // android.widget.Adapter
    public View getView(int i10, View view, ViewGroup viewGroup) {
        View view2;
        View view3;
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
            view3 = searchBar;
        } else {
            View view4 = this.view;
            if (view4 == null) {
                view2 = view4;
                View viewCreateView2 = createView(R.layout.search_btn_dark, viewGroup, view);
                this.view = viewCreateView2;
                view2 = viewCreateView2;
            }
            view2 = view4;
            view2.findViewById(R.id.search_btn).setOnClickListener(this.subviewClickListener);
            view3 = view2;
        }
        if (this.gold) {
            ViewGroup viewGroup2 = (ViewGroup) view3.findViewById(R.id.search_hint);
            int childCount = viewGroup2.getChildCount();
            for (int i11 = 0; i11 < childCount; i11++) {
                View childAt = viewGroup2.getChildAt(i11);
                if (childAt instanceof TextView) {
                    ((TextView) childAt).setTextColor(getContext().getResources().getColor(R.color.gold));
                }
            }
        }
        return view3;
    }

    public void setInSelect(boolean z6) {
        if (this.inSelect != z6) {
            this.inSelect = z6;
            View view = this.view;
            if (view != null) {
                view.animate().alpha(z6 ? 0.2f : 1.0f);
            }
        }
    }

    public CatalogSearchBarAdapter(NVContext nVContext) {
        boolean zIsGoldTheme;
        super(nVContext);
        if (nVContext instanceof CatalogThemeFragment) {
            zIsGoldTheme = ((CatalogThemeFragment) nVContext).isGoldTheme();
        } else {
            zIsGoldTheme = false;
        }
        this.gold = zIsGoldTheme;
    }

    @Override // android.widget.Adapter
    public long getItemId(int i10) {
        return hashCode();
    }
}
