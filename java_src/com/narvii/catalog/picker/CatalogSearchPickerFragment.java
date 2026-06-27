package com.narvii.catalog.picker;

import android.content.Intent;
import android.content.res.Resources;
import android.os.Bundle;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ListAdapter;
import com.narvii.account.AccountService;
import com.narvii.amino.mastes.R;
import com.narvii.app.NVActivity;
import com.narvii.app.NVContext;
import com.narvii.catalog.picker.BasePickerFragment;
import com.narvii.catalog.search.CatalogSearchAdapter;
import com.narvii.catalog.search.CatalogSearchBarAdapter;
import com.narvii.list.DivideColumnAdapter;
import com.narvii.list.MergeAdapter;
import com.narvii.list.StaticViewAdapter;
import com.narvii.list.overlay.OverlayListPlaceholder;
import com.narvii.list.select.SelectableAdapter;
import com.narvii.model.Media;
import com.narvii.util.JacksonUtils;
import com.narvii.util.SoftKeyboard;
import com.narvii.widget.SearchBar;

/* loaded from: classes2.dex */
public class CatalogSearchPickerFragment extends BasePickerFragment {
    Adapter adapter;
    SelectableAdapter selAdapter;
    String uid;

    @Override // com.narvii.catalog.picker.BasePickerFragment, com.narvii.app.NVFragment
    public /* bridge */ /* synthetic */ Boolean hasPostEntry() {
        return super.hasPostEntry();
    }

    @Override // com.narvii.catalog.picker.BasePickerFragment, com.narvii.app.NVFragment, android.support.v4.app.Fragment
    public /* bridge */ /* synthetic */ void onActivityResult(int i, int i2, Intent intent) throws IllegalAccessException, NoSuchFieldException, IllegalArgumentException {
        super.onActivityResult(i, i2, intent);
    }

    @Override // com.narvii.catalog.picker.BasePickerFragment, com.narvii.app.FragmentWillFinishListener
    public /* bridge */ /* synthetic */ void willFinish(NVActivity nVActivity) {
        super.willFinish(nVActivity);
    }

    @Override // com.narvii.catalog.picker.BasePickerFragment, com.narvii.list.NVListFragment, com.narvii.app.NVFragment, android.support.v4.app.Fragment
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        setTitle(R.string.search);
        this.uid = getStringParam("uid");
        if (this.uid == null && getBooleanParam("mine")) {
            this.uid = ((AccountService) getService("account")).getUserId();
        }
    }

    @Override // com.narvii.catalog.picker.BasePickerFragment, com.narvii.catalog.CatalogThemeFragment, com.narvii.list.NVListFragment, com.narvii.app.NVFragment, com.narvii.app.theme.NVThemeFragment, android.support.v4.app.Fragment
    public void onViewCreated(View view, Bundle bundle) throws IllegalAccessException, NoSuchFieldException, Resources.NotFoundException, IllegalArgumentException {
        super.onViewCreated(view, bundle);
        getListView().setDivider(null);
        getListView().setDividerHeight(0);
        this.backgroundImageView.setImageMedia((Media) JacksonUtils.readAs(getStringParam("previewMedia"), Media.class));
    }

    @Override // com.narvii.list.NVListFragment
    protected ListAdapter createAdapter(Bundle bundle) {
        StaticViewAdapter staticViewAdapter = new StaticViewAdapter();
        staticViewAdapter.addViews(new OverlayListPlaceholder(getContext()));
        this.adapter = new Adapter();
        this.adapter.canSelectOfficial = this.canSelectOfficial;
        this.selAdapter = new BasePickerFragment.SelAdapter();
        this.selAdapter.setAdapter(this.adapter);
        this.selAdapter.startSelect(null);
        DivideColumnAdapter divideColumnAdapter = new DivideColumnAdapter(this);
        divideColumnAdapter.setAdapter(this.selAdapter, 3);
        SearchAdapter searchAdapter = new SearchAdapter(this);
        MergeAdapter mergeAdapter = new MergeAdapter(this);
        mergeAdapter.addAdapter(staticViewAdapter, false);
        mergeAdapter.addAdapter(searchAdapter, false);
        mergeAdapter.addAdapter(divideColumnAdapter, true);
        return mergeAdapter;
    }

    class Adapter extends CatalogSearchAdapter {
        public Adapter() {
            super(CatalogSearchPickerFragment.this, CatalogSearchPickerFragment.this.uid, false);
        }

        @Override // com.narvii.item.list.ItemGridExAdapter, com.narvii.item.list.ItemGridAdapter, com.narvii.list.NVPagedAdapter
        protected View getItemView(Object obj, View view, ViewGroup viewGroup) {
            View itemView = super.getItemView(obj, view, viewGroup);
            itemView.findViewById(R.id.grid_item_vote).setVisibility(4);
            return itemView;
        }
    }

    class SearchAdapter extends CatalogSearchBarAdapter implements SearchBar.OnSearchListener {
        @Override // com.narvii.widget.SearchBar.OnSearchListener
        public void onTextChanged(SearchBar searchBar, String str) {
        }

        public SearchAdapter(NVContext nVContext) {
            super(nVContext);
        }

        @Override // com.narvii.catalog.search.CatalogSearchBarAdapter, android.widget.Adapter
        public View getView(int i, View view, ViewGroup viewGroup) {
            View view2 = super.getView(i, view, viewGroup);
            if ((view2 instanceof SearchBar) && view == null) {
                SoftKeyboard.showSoftKeyboard(((SearchBar) view2).getEditText());
            }
            return view2;
        }

        @Override // com.narvii.widget.SearchBar.OnSearchListener
        public void onSearch(SearchBar searchBar, String str) {
            CatalogSearchPickerFragment.this.adapter.setKeyword(str);
        }
    }
}
