package com.narvii.catalog.picker;

import android.content.Intent;
import android.os.Bundle;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ListAdapter;
import androidx.fragment.app.Fragment;
import com.narvii.account.AccountService;
import com.narvii.amino.master.R;
import com.narvii.app.FragmentWrapperActivity;
import com.narvii.app.NVActivity;
import com.narvii.catalog.CatalogItemGridAdapter;
import com.narvii.catalog.search.CatalogSearchBarAdapter;
import com.narvii.list.DivideColumnAdapter;
import com.narvii.list.MergeAdapter;
import com.narvii.list.StaticViewAdapter;
import com.narvii.list.overlay.OverlayListPlaceholder;
import com.narvii.model.Media;
import com.narvii.util.JacksonUtils;
import com.narvii.util.http.ApiRequest;
import com.safedk.android.utils.Logger;

/* JADX INFO: loaded from: classes.dex */
public class AllItemPickerFragment extends BasePickerFragment {
    Adapter adapter;
    BasePickerFragment.SelAdapter selAdapter;
    String uid;

    class Adapter extends CatalogItemGridAdapter {
        @Override // com.narvii.list.NVPagedAdapter
        protected int pageSize() {
            return 100;
        }

        public Adapter() {
            super(AllItemPickerFragment.this);
        }

        @Override // com.narvii.list.NVPagedAdapter
        protected ApiRequest createRequest(boolean z6) {
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

    class SearchAdapter extends CatalogSearchBarAdapter {
        public static void safedk_Fragment_startActivityForResult_6fd6bf7695baae8f1a141a4d4340bbe1(Fragment p0, Intent p1, int p5) {
            Logger.d("SafeDK-Special|SafeDK: Call> Landroidx/fragment/app/Fragment;->startActivityForResult(Landroid/content/Intent;I)V");
            if (p1 == null) {
                return;
            }
            p0.startActivityForResult(p1, p5);
        }

        public SearchAdapter() {
            super(AllItemPickerFragment.this);
        }

        @Override // com.narvii.list.NVAdapter, com.narvii.list.OnItemClickListener
        public boolean onItemClick(ListAdapter listAdapter, int i10, Object obj, View view, View view2) {
            if (view2 == null || view2.getId() != R.id.search_btn) {
                return super.onItemClick(listAdapter, i10, obj, view, view2);
            }
            Intent intent = FragmentWrapperActivity.intent(CatalogSearchPickerFragment.class);
            intent.putExtra("pickOnFinish", true);
            intent.putExtra("uid", AllItemPickerFragment.this.uid);
            intent.putExtra("itemList", JacksonUtils.writeAsString(AllItemPickerFragment.this.selection));
            intent.putExtra("maximum", AllItemPickerFragment.this.maximum);
            intent.putExtra("mode", AllItemPickerFragment.this.mode);
            intent.putExtra("title", AllItemPickerFragment.this.title);
            intent.putExtra("canSelectOfficial", AllItemPickerFragment.this.canSelectOfficial);
            safedk_Fragment_startActivityForResult_6fd6bf7695baae8f1a141a4d4340bbe1(AllItemPickerFragment.this, intent, 1);
            return true;
        }
    }

    @Override // com.narvii.list.NVListFragment
    protected ListAdapter createAdapter(Bundle bundle) {
        StaticViewAdapter staticViewAdapter = new StaticViewAdapter();
        staticViewAdapter.addViews(new OverlayListPlaceholder(getContext()));
        Adapter adapter = new Adapter();
        this.adapter = adapter;
        adapter.canSelectOfficial = this.canSelectOfficial;
        BasePickerFragment.SelAdapter selAdapter = new BasePickerFragment.SelAdapter();
        this.selAdapter = selAdapter;
        selAdapter.setAdapter(this.adapter);
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

    @Override // com.narvii.catalog.picker.BasePickerFragment, com.narvii.app.NVFragment
    public /* bridge */ /* synthetic */ Boolean hasPostEntry() {
        return super.hasPostEntry();
    }

    @Override // com.narvii.catalog.picker.BasePickerFragment, com.narvii.app.NVFragment, androidx.fragment.app.Fragment
    public /* bridge */ /* synthetic */ void onActivityResult(int i10, int i11, Intent intent) {
        super.onActivityResult(i10, i11, intent);
    }

    @Override // com.narvii.catalog.picker.BasePickerFragment, com.narvii.list.NVListFragment, com.narvii.app.NVFragment, androidx.fragment.app.Fragment
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        setTitle(R.string.all_favorites);
        String stringParam = getStringParam("uid");
        this.uid = stringParam;
        if (stringParam == null && getBooleanParam("mine")) {
            this.uid = ((AccountService) getService("account")).getUserId();
        }
    }

    @Override // com.narvii.catalog.picker.BasePickerFragment, com.narvii.catalog.CatalogThemeFragment, com.narvii.list.NVListFragment, com.narvii.app.NVFragment, com.narvii.app.theme.NVThemeFragment, androidx.fragment.app.Fragment
    public void onViewCreated(View view, Bundle bundle) {
        super.onViewCreated(view, bundle);
        getListView().setDivider(null);
        getListView().setDividerHeight(0);
        this.backgroundImageView.setImageMedia((Media) JacksonUtils.readAs(getStringParam("previewMedia"), Media.class));
    }

    @Override // com.narvii.catalog.picker.BasePickerFragment, com.narvii.app.FragmentWillFinishListener
    public /* bridge */ /* synthetic */ void willFinish(NVActivity nVActivity) {
        super.willFinish(nVActivity);
    }
}
