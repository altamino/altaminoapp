package com.narvii.monetization.store;

import android.graphics.drawable.ColorDrawable;
import android.graphics.drawable.Drawable;
import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ListView;
import androidx.annotation.Nullable;
import com.narvii.list.NVListFragment;
import com.narvii.util.Utils;
import com.narvii.widget.NVListView;

/* JADX INFO: loaded from: classes7.dex */
public abstract class MonetizationStoreBaseFragment extends NVListFragment {
    @Override // com.narvii.app.NVFragment
    public int getCustomTheme() {
        return 2131951629;
    }

    protected abstract int getLayoutId();

    @Override // com.narvii.app.NVFragment
    public Boolean hasPostEntry() {
        return Boolean.FALSE;
    }

    @Override // com.narvii.list.NVListFragment
    public Drawable getListSelector() {
        return new ColorDrawable(0);
    }

    @Override // com.narvii.list.NVListFragment, androidx.fragment.app.Fragment
    @Nullable
    public View onCreateView(LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, @Nullable Bundle bundle) {
        return layoutInflater.inflate(getLayoutId(), viewGroup, false);
    }

    @Override // com.narvii.list.NVListFragment
    protected void onListViewCreated(ListView listView, Bundle bundle) {
        super.onListViewCreated(listView, bundle);
        ((NVListView) listView).setFooterPadding(Utils.dpToPxInt(getContext(), 80.0f));
    }
}
