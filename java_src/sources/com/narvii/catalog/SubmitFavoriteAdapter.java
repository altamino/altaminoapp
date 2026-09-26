package com.narvii.catalog;

import android.view.View;
import android.view.ViewGroup;
import com.narvii.amino.master.R;
import com.narvii.app.NVFragment;
import com.narvii.list.NVAdapter;
import com.narvii.util.Utils;

/* JADX INFO: loaded from: classes10.dex */
class SubmitFavoriteAdapter extends NVAdapter {
    private NVFragment nvFragment;

    @Override // android.widget.Adapter
    public int getCount() {
        return 1;
    }

    @Override // android.widget.Adapter
    public Object getItem(int i10) {
        return null;
    }

    @Override // android.widget.Adapter
    public long getItemId(int i10) {
        return 0L;
    }

    @Override // android.widget.BaseAdapter, android.widget.ListAdapter
    public boolean isEnabled(int i10) {
        return false;
    }

    public SubmitFavoriteAdapter(NVFragment nVFragment) {
        super(nVFragment);
        this.nvFragment = nVFragment;
    }

    @Override // android.widget.Adapter
    public View getView(int i10, View view, ViewGroup viewGroup) {
        View viewCreateView = createView(R.layout.catalog_submit_favorite, viewGroup, view);
        viewCreateView.findViewById(R.id.submit_favorite).setOnClickListener(this.subviewClickListener);
        return viewCreateView;
    }

    @Override // com.narvii.list.NVAdapter
    protected boolean onSubviewClick(View view, boolean z6) {
        if (Utils.shouldShowLoginPage(getParentContext())) {
            return true;
        }
        new CatalogHelper(this.nvFragment).openSubmitFavoritePicker();
        return true;
    }
}
