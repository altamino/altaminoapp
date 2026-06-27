package com.narvii.catalog.search;

import android.content.Intent;
import android.content.res.Resources;
import android.os.Bundle;
import android.view.ActionMode;
import android.view.Menu;
import android.view.MenuInflater;
import android.view.MenuItem;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ListAdapter;
import com.fasterxml.jackson.databind.node.ArrayNode;
import com.narvii.account.AccountService;
import com.narvii.amino.mastes.R;
import com.narvii.app.FragmentWrapperActivity;
import com.narvii.app.NVContext;
import com.narvii.catalog.CatalogThemeFragment;
import com.narvii.catalog.category.CategoryPickerFragment;
import com.narvii.list.DivideColumnAdapter;
import com.narvii.list.MergeAdapter;
import com.narvii.list.StaticViewAdapter;
import com.narvii.list.overlay.OverlayListPlaceholder;
import com.narvii.list.select.SelectableAdapter;
import com.narvii.list.select.SelectableListener;
import com.narvii.list.select.SelectableSource;
import com.narvii.model.Item;
import com.narvii.model.ItemCategory;
import com.narvii.model.Media;
import com.narvii.model.User;
import com.narvii.model.api.ApiResponse;
import com.narvii.model.api.ItemListResponse;
import com.narvii.modulization.CommunityConfigHelper;
import com.narvii.modulization.Module;
import com.narvii.notification.Notification;
import com.narvii.util.Callback;
import com.narvii.util.JacksonUtils;
import com.narvii.util.NVToast;
import com.narvii.util.SoftKeyboard;
import com.narvii.util.Utils;
import com.narvii.util.dialog.ProgressDialog;
import com.narvii.util.http.ApiRequest;
import com.narvii.util.http.ApiService;
import com.narvii.widget.SearchBar;
import java.util.ArrayList;
import java.util.Iterator;

/* loaded from: classes2.dex */
public class CatalogSearchFragment extends CatalogThemeFragment {
    static final int ADD_TO_REQUEST = 1;
    ActionMode actionMode;
    final ActionMode.Callback actionModeCallback = new ActionMode.Callback() { // from class: com.narvii.catalog.search.CatalogSearchFragment.1
        @Override // android.view.ActionMode.Callback
        public boolean onCreateActionMode(ActionMode actionMode, Menu menu) {
            menu.add(0, R.string.add_to, 0, R.string.add_to).setShowAsAction(2);
            actionMode.setTitle(String.valueOf(CatalogSearchFragment.this.selAdapter.selections().size()));
            onPrepareActionMode(actionMode, menu);
            return true;
        }

        @Override // android.view.ActionMode.Callback
        public boolean onPrepareActionMode(ActionMode actionMode, Menu menu) {
            menu.findItem(R.string.add_to).setEnabled(CatalogSearchFragment.this.selAdapter.selections().size() > 0);
            return true;
        }

        @Override // android.view.ActionMode.Callback
        public boolean onActionItemClicked(ActionMode actionMode, MenuItem menuItem) {
            if (menuItem.getItemId() != R.string.add_to) {
                return true;
            }
            Intent intent = FragmentWrapperActivity.intent(CategoryPickerFragment.class);
            intent.putExtra("uid", CatalogSearchFragment.this.uid);
            intent.putExtra("title", CatalogSearchFragment.this.getString(R.string.add_to));
            CatalogSearchFragment.this.startActivityForResult(intent, 1);
            return true;
        }

        @Override // android.view.ActionMode.Callback
        public void onDestroyActionMode(ActionMode actionMode) {
            CatalogSearchFragment catalogSearchFragment = CatalogSearchFragment.this;
            catalogSearchFragment.actionMode = null;
            catalogSearchFragment.selAdapter.finishSelect();
        }
    };
    Adapter adapter;
    CommunityConfigHelper communityConfigHelper;
    boolean isAllEntryPage;
    boolean isCurationEnabled;
    SelectableAdapter selAdapter;
    String uid;

    @Override // com.narvii.list.NVListFragment, com.narvii.app.NVFragment, android.support.v4.app.Fragment
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        setTitle(R.string.search);
        this.uid = getStringParam("uid");
        this.communityConfigHelper = new CommunityConfigHelper(this);
        this.isCurationEnabled = this.communityConfigHelper.getModuleBoolean(Module.MODULE_CATALOG, "curationEnabled");
        this.isAllEntryPage = getBooleanParam("isAllEntry");
        setHasOptionsMenu(true);
    }

    @Override // com.narvii.catalog.CatalogThemeFragment, com.narvii.list.NVListFragment, com.narvii.app.NVFragment, com.narvii.app.theme.NVThemeFragment, android.support.v4.app.Fragment
    public void onViewCreated(View view, Bundle bundle) throws Resources.NotFoundException {
        super.onViewCreated(view, bundle);
        getListView().setDivider(null);
        getListView().setDividerHeight(0);
        this.backgroundImageView.setImageMedia((Media) JacksonUtils.readAs(getStringParam("previewMedia"), Media.class));
    }

    @Override // com.narvii.list.NVListFragment, com.narvii.app.NVFragment, android.support.v4.app.Fragment
    public void onResume() {
        super.onResume();
        if (!this.selAdapter.inSelect() || isMine()) {
            return;
        }
        this.selAdapter.finishSelect();
    }

    @Override // android.support.v4.app.Fragment
    public void onCreateOptionsMenu(Menu menu, MenuInflater menuInflater) {
        menu.add(0, R.string.select, 0, R.string.select);
    }

    @Override // android.support.v4.app.Fragment
    public void onPrepareOptionsMenu(Menu menu) {
        Adapter adapter;
        super.onPrepareOptionsMenu(menu);
        menu.findItem(R.string.select).setVisible(!this.isAllEntryPage && this.isCurationEnabled && (isMine() || isCurator()) && (adapter = this.adapter) != null && adapter.list() != null && this.adapter.list().size() > 0);
    }

    @Override // android.support.v4.app.Fragment
    public boolean onOptionsItemSelected(MenuItem menuItem) {
        if (menuItem.getItemId() == R.string.select) {
            this.selAdapter.startSelect(null);
            return true;
        }
        return super.onOptionsItemSelected(menuItem);
    }

    @Override // com.narvii.list.NVListFragment
    protected ListAdapter createAdapter(Bundle bundle) {
        StaticViewAdapter staticViewAdapter = new StaticViewAdapter();
        staticViewAdapter.addViews(new OverlayListPlaceholder(getContext()));
        this.adapter = new Adapter();
        this.selAdapter = new SelectableAdapter(this, R.layout.selectable_item_frame, false);
        this.selAdapter.setAdapter(this.adapter);
        this.selAdapter.setListener(this.adapter);
        DivideColumnAdapter divideColumnAdapter = new DivideColumnAdapter(this);
        divideColumnAdapter.setAdapter(this.selAdapter, 3);
        divideColumnAdapter.setSupportLongClick(true);
        SearchAdapter searchAdapter = new SearchAdapter(this);
        MergeAdapter mergeAdapter = new MergeAdapter(this);
        mergeAdapter.addAdapter(staticViewAdapter, false);
        mergeAdapter.addAdapter(searchAdapter, false);
        mergeAdapter.addAdapter(divideColumnAdapter, true);
        getListView().setOnItemLongClickListener(mergeAdapter);
        return mergeAdapter;
    }

    boolean isMine() {
        return Utils.isEqualsNotNull(this.uid, ((AccountService) getService("account")).getUserId());
    }

    boolean isCurator() {
        User userProfile;
        return this.uid == null && (userProfile = ((AccountService) getService("account")).getUserProfile()) != null && userProfile.isLeader();
    }

    boolean fromMyCatalog() {
        return getBooleanParam("fromMyCatalog");
    }

    boolean fromOfficialCatalog() {
        return getBooleanParam("fromOfficialCatalog");
    }

    @Override // com.narvii.app.NVFragment, android.support.v4.app.Fragment
    public void onActivityResult(int i, int i2, Intent intent) {
        if (i == 1 && i2 == -1 && intent != null) {
            addTo((ItemCategory) JacksonUtils.readAs(intent.getStringExtra("category"), ItemCategory.class));
        } else {
            super.onActivityResult(i, i2, intent);
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
            CatalogSearchFragment.this.adapter.setKeyword(str);
        }
    }

    class Adapter extends CatalogSearchAdapter implements SelectableSource, SelectableListener {
        public Adapter() {
            super(CatalogSearchFragment.this, CatalogSearchFragment.this.uid, CatalogSearchFragment.this.isAllEntryPage);
        }

        @Override // com.narvii.catalog.search.CatalogSearchAdapter
        public void setKeyword(String str) {
            super.setKeyword(str);
            CatalogSearchFragment.this.setEmptyView(R.layout.catalog_empty_view);
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.narvii.item.list.ItemGridExAdapter, com.narvii.list.NVPagedAdapter
        public void onPageResponse(ApiRequest apiRequest, ItemListResponse itemListResponse, int i) {
            super.onPageResponse(apiRequest, itemListResponse, i);
            invalidateOptionsMenu();
        }

        @Override // com.narvii.item.list.ItemGridExAdapter
        protected Intent openItemDetailIntent(Item item, int i) {
            Intent intentOpenItemDetailIntent = super.openItemDetailIntent(item, i);
            intentOpenItemDetailIntent.putExtra("fromMyCatalog", CatalogSearchFragment.this.fromMyCatalog());
            intentOpenItemDetailIntent.putExtra("fromOfficialCatalog", CatalogSearchFragment.this.fromOfficialCatalog());
            return intentOpenItemDetailIntent;
        }

        @Override // com.narvii.item.list.ItemGridExAdapter, com.narvii.item.list.ItemGridAdapter, com.narvii.list.NVPagedAdapter
        protected View getItemView(Object obj, View view, ViewGroup viewGroup) {
            View itemView = super.getItemView(obj, view, viewGroup);
            itemView.findViewById(R.id.grid_item_vote).setVisibility(CatalogSearchFragment.this.selAdapter.inSelect() ? 4 : 0);
            return itemView;
        }

        @Override // com.narvii.list.select.SelectableSource
        public boolean isSelectable(int i, Object obj) {
            return CatalogSearchFragment.this.isMine() || CatalogSearchFragment.this.isCurator();
        }

        @Override // com.narvii.list.select.SelectableSource
        public boolean canSelect(int i, Object obj, boolean z) {
            if (!z || CatalogSearchFragment.this.selAdapter.selections().size() < 50) {
                return true;
            }
            NVToast.makeText(getContext(), CatalogSearchFragment.this.getString(R.string.catalog_select_maximum, 50), 0).show();
            return false;
        }

        @Override // com.narvii.list.select.SelectableListener
        public void onSelectModeChanged(boolean z) {
            if (z) {
                CatalogSearchFragment catalogSearchFragment = CatalogSearchFragment.this;
                catalogSearchFragment.actionMode = catalogSearchFragment.getActivity().startActionMode(CatalogSearchFragment.this.actionModeCallback);
            } else {
                ActionMode actionMode = CatalogSearchFragment.this.actionMode;
                if (actionMode != null) {
                    actionMode.finish();
                }
            }
            notifyDataSetChanged();
        }

        @Override // com.narvii.list.select.SelectableListener
        public void onSelectionChanged(Object obj, boolean z) {
            CatalogSearchFragment catalogSearchFragment = CatalogSearchFragment.this;
            ActionMode actionMode = catalogSearchFragment.actionMode;
            if (actionMode != null) {
                actionMode.setTitle(String.valueOf(catalogSearchFragment.selAdapter.selections().size()));
                CatalogSearchFragment.this.actionMode.invalidate();
            }
        }
    }

    public void addTo(final ItemCategory itemCategory) {
        ArrayList arrayList = new ArrayList(this.selAdapter.selections());
        if (arrayList.isEmpty()) {
            return;
        }
        ArrayNode arrayNodeCreateArrayNode = JacksonUtils.createArrayNode();
        Iterator it = arrayList.iterator();
        while (it.hasNext()) {
            arrayNodeCreateArrayNode.add(((Item) it.next()).itemId);
        }
        ArrayNode arrayNodeCreateArrayNode2 = JacksonUtils.createArrayNode();
        arrayNodeCreateArrayNode2.add(itemCategory.categoryId);
        ApiRequest.Builder builder = ApiRequest.builder();
        builder.post().path("/item/" + ((Item) arrayList.get(0)).itemId + "/tag");
        builder.param("itemIdList", arrayNodeCreateArrayNode);
        builder.param("categoryIdList", arrayNodeCreateArrayNode2);
        String str = this.uid;
        if (str != null) {
            builder.param("sourceUid", str);
            builder.param("destinationUid", this.uid);
        }
        ApiRequest apiRequestBuild = builder.build();
        ProgressDialog progressDialog = new ProgressDialog(getContext());
        progressDialog.successListener = new Callback<ApiResponse>() { // from class: com.narvii.catalog.search.CatalogSearchFragment.2
            @Override // com.narvii.util.Callback
            public void call(ApiResponse apiResponse) {
                CatalogSearchFragment.this.selAdapter.finishSelect();
                NVToast.makeText(CatalogSearchFragment.this.getContext(), CatalogSearchFragment.this.getString(R.string.catalog_added_to, itemCategory.label), 0).show();
                CatalogSearchFragment.this.sendNotification(new Notification("update", itemCategory));
            }
        };
        progressDialog.show();
        ((ApiService) getService("api")).exec(apiRequestBuild, progressDialog.dismissListener);
    }
}
