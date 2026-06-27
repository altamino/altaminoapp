package com.narvii.catalog.picker;

import android.content.Intent;
import android.content.res.Resources;
import android.os.Bundle;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ListAdapter;
import com.narvii.account.AccountService;
import com.narvii.amino.mastes.R;
import com.narvii.app.FragmentWrapperActivity;
import com.narvii.app.NVActivity;
import com.narvii.catalog.CatalogItemGridAdapter;
import com.narvii.catalog.picker.BasePickerFragment;
import com.narvii.catalog.search.CatalogSearchBarAdapter;
import com.narvii.list.DivideColumnAdapter;
import com.narvii.list.MergeAdapter;
import com.narvii.list.StaticViewAdapter;
import com.narvii.list.overlay.OverlayListPlaceholder;
import com.narvii.model.Media;
import com.narvii.util.JacksonUtils;
import com.narvii.util.http.ApiRequest;

/* loaded from: classes2.dex */
public class AllItemPickerFragment extends BasePickerFragment {
    Adapter adapter;
    BasePickerFragment.SelAdapter selAdapter;
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
        setTitle(R.string.all_favorites);
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
        SearchAdapter searchAdapter = new SearchAdapter();
        MergeAdapter mergeAdapter = new MergeAdapter(this);
        mergeAdapter.addAdapter(staticViewAdapter, false);
        mergeAdapter.addAdapter(searchAdapter, false);
        mergeAdapter.addAdapter(divideColumnAdapter, true);
        return mergeAdapter;
    }

    class SearchAdapter extends CatalogSearchBarAdapter {
        public SearchAdapter() {
            super(AllItemPickerFragment.this);
        }

        @Override // com.narvii.list.NVAdapter, com.narvii.list.OnItemClickListener
        public boolean onItemClick(ListAdapter listAdapter, int i, Object obj, View view, View view2) {
            if (view2 != null && view2.getId() == R.id.search_btn) {
                Intent intent = FragmentWrapperActivity.intent(CatalogSearchPickerFragment.class);
                intent.putExtra("pickOnFinish", true);
                intent.putExtra("uid", AllItemPickerFragment.this.uid);
                intent.putExtra("itemList", JacksonUtils.writeAsString(AllItemPickerFragment.this.selection));
                intent.putExtra("maximum", AllItemPickerFragment.this.maximum);
                intent.putExtra("mode", AllItemPickerFragment.this.mode);
                intent.putExtra("title", AllItemPickerFragment.this.title);
                intent.putExtra("canSelectOfficial", AllItemPickerFragment.this.canSelectOfficial);
                AllItemPickerFragment.this.startActivityForResult(intent, 1);
                return true;
            }
            return super.onItemClick(listAdapter, i, obj, view, view2);
        }
    }

    class Adapter extends CatalogItemGridAdapter {
        @Override // com.narvii.list.NVPagedAdapter
        protected int pageSize() {
            return 100;
        }

        public Adapter() {
            super(AllItemPickerFragment.this);
        }

        @Override // com.narvii.list.NVPagedAdapter
        protected ApiRequest createRequest(boolean z) {
            ApiRequest.Builder builderPath = ApiRequest.builder().path("/item");
            if (AllItemPickerFragment.this.uid == null) {
                builderPath.param("type", "catalog-all");
            } else {
                builderPath.param("type", "user-all");
                builderPath.param("uid", AllItemPickerFragment.this.uid);
            }
            return builderPath.build();
        }

        @Override // com.narvii.item.list.ItemGridExAdapter, com.narvii.item.list.ItemGridAdapter, com.narvii.list.NVPagedAdapter
        protected View getItemView(Object obj, View view, ViewGroup viewGroup) {
            View itemView = super.getItemView(obj, view, viewGroup);
            itemView.findViewById(R.id.grid_item_vote).setVisibility(4);
            return itemView;
        }
    }
}
