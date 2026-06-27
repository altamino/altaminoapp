package com.narvii.catalog.organizer;

import android.content.Intent;
import android.os.Bundle;
import android.view.Menu;
import android.view.MenuInflater;
import android.view.MenuItem;
import android.view.View;
import android.view.ViewGroup;
import android.widget.TextView;
import com.fasterxml.jackson.databind.node.ArrayNode;
import com.narvii.amino.mastes.R;
import com.narvii.list.DragSortPageFragment;
import com.narvii.list.NVPagedAdapter;
import com.narvii.model.Item;
import com.narvii.model.ItemCategory;
import com.narvii.model.User;
import com.narvii.model.api.ApiResponse;
import com.narvii.model.api.ItemListResponse;
import com.narvii.notification.Notification;
import com.narvii.util.ActionBarIcon;
import com.narvii.util.Callback;
import com.narvii.util.JacksonUtils;
import com.narvii.util.dialog.ProgressDialog;
import com.narvii.util.http.ApiRequest;
import com.narvii.util.http.ApiService;
import com.narvii.widget.NVImageView;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

/* loaded from: classes2.dex */
public class ItemOrganizeFragment extends DragSortPageFragment<Item> {
    private static final int TRANSLATION_TOO_LARGE_LIMIT = 50;
    ItemListAdapter adapter;
    private String categoryId;
    private List<Item> oList;
    private String uid;

    @Override // com.narvii.app.NVFragment
    public boolean isModel() {
        return true;
    }

    @Override // com.narvii.list.NVListFragment, com.narvii.app.NVFragment, android.support.v4.app.Fragment
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        setHasOptionsMenu(true);
        setTitle(getString(R.string.reorder));
        if (bundle != null) {
            this.uid = bundle.getString("uid");
            this.categoryId = bundle.getString("categoryId");
        } else {
            this.uid = getStringParam("uid");
            this.categoryId = getStringParam("categoryId");
        }
    }

    @Override // com.narvii.list.NVListFragment, com.narvii.app.NVFragment, android.support.v4.app.Fragment
    public void onSaveInstanceState(Bundle bundle) {
        super.onSaveInstanceState(bundle);
        bundle.putString("uid", this.uid);
        bundle.putString("categoryId", this.categoryId);
    }

    @Override // com.narvii.list.DragSortPageFragment
    protected NVPagedAdapter createMainAdapter() {
        ItemListAdapter itemListAdapter = this.adapter;
        if (itemListAdapter != null) {
            return itemListAdapter;
        }
        ItemListAdapter itemListAdapter2 = new ItemListAdapter();
        this.adapter = itemListAdapter2;
        return itemListAdapter2;
    }

    @Override // android.support.v4.app.Fragment
    public void onCreateOptionsMenu(Menu menu, MenuInflater menuInflater) {
        super.onCreateOptionsMenu(menu, menuInflater);
        menu.add(0, android.R.string.ok, 0, android.R.string.ok).setIcon(new ActionBarIcon(getContext(), R.string.fa_check)).setShowAsAction(2);
    }

    private ArrayNode getIds(List<Item> list) {
        ArrayNode arrayNodeCreateArrayNode = JacksonUtils.createArrayNode();
        if (list == null) {
            return arrayNodeCreateArrayNode;
        }
        Iterator<Item> it = list.iterator();
        while (it.hasNext()) {
            arrayNodeCreateArrayNode.add(it.next().itemId);
        }
        return arrayNodeCreateArrayNode;
    }

    @Override // android.support.v4.app.Fragment
    public boolean onOptionsItemSelected(MenuItem menuItem) {
        if (menuItem.getItemId() == 17039370) {
            submit();
            return true;
        }
        return super.onOptionsItemSelected(menuItem);
    }

    private boolean isDirty() {
        if (this.oList == null) {
            return false;
        }
        ArrayList arrayList = new ArrayList();
        for (Object obj : this.adapter.list()) {
            if (obj instanceof Item) {
                arrayList.add(((Item) obj).id());
            }
        }
        ArrayList arrayList2 = new ArrayList();
        Iterator<Item> it = this.oList.iterator();
        while (it.hasNext()) {
            arrayList2.add(it.next().id());
        }
        return !arrayList.equals(arrayList2);
    }

    /* JADX WARN: Multi-variable type inference failed */
    private void submit() {
        ApiRequest apiRequestBuild;
        if (this.oList == null) {
            return;
        }
        if (!isDirty()) {
            finish();
            return;
        }
        final List<?> list = this.adapter.list();
        ArrayNode ids = getIds(list);
        ProgressDialog progressDialog = new ProgressDialog(getContext());
        progressDialog.successListener = new Callback<ApiResponse>() { // from class: com.narvii.catalog.organizer.ItemOrganizeFragment.1
            @Override // com.narvii.util.Callback
            public void call(ApiResponse apiResponse) {
                Intent intent = new Intent();
                if (list.size() <= 50) {
                    intent.putExtra("itemList", JacksonUtils.writeAsString(list));
                }
                ItemOrganizeFragment.this.setResult(-1, intent);
                ItemOrganizeFragment.this.finish();
                if (ItemOrganizeFragment.this.categoryId != null) {
                    ItemCategory itemCategory = new ItemCategory();
                    itemCategory.categoryId = ItemOrganizeFragment.this.categoryId;
                    if (itemCategory.author == null) {
                        itemCategory.author = new User();
                    }
                    itemCategory.author.uid = ItemOrganizeFragment.this.uid;
                    ItemOrganizeFragment.this.sendNotification(new Notification("update", itemCategory));
                }
            }
        };
        progressDialog.show();
        if (this.categoryId != null) {
            ApiRequest.Builder builder = ApiRequest.builder();
            builder.post().path("/item-category/" + this.categoryId + "/item-position");
            builder.param("itemIdList", ids);
            apiRequestBuild = builder.build();
        } else {
            ApiRequest.Builder builder2 = ApiRequest.builder();
            builder2.post().path("/item/reorder");
            builder2.param("itemIdList", ids);
            builder2.param("sourceUid", this.uid);
            apiRequestBuild = builder2.build();
        }
        ((ApiService) getService("api")).exec(apiRequestBuild, progressDialog.dismissListener);
    }

    class ItemListAdapter extends NVPagedAdapter<Item, ItemListResponse> {
        @Override // com.narvii.list.NVPagedAdapter
        public boolean autoLoadNextPage() {
            return false;
        }

        @Override // com.narvii.list.NVPagedAdapter
        protected int getItemType(Object obj) {
            return 0;
        }

        @Override // com.narvii.list.NVPagedAdapter
        protected int getItemTypeCount() {
            return 1;
        }

        @Override // com.narvii.list.NVPagedAdapter
        protected int pageSize() {
            return 50;
        }

        public ItemListAdapter() {
            super(ItemOrganizeFragment.this);
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.narvii.list.NVPagedAdapter
        public Class<Item> dataType() {
            return Item.class;
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.narvii.list.NVPagedAdapter
        public Class<? extends ItemListResponse> responseType() {
            return ItemListResponse.class;
        }

        @Override // com.narvii.list.NVPagedAdapter
        protected ApiRequest createRequest(boolean z) {
            ApiRequest.Builder builderPath = ApiRequest.builder().path("/item");
            if (ItemOrganizeFragment.this.uid == null) {
                builderPath.param("type", "catalog-all");
            } else {
                builderPath.param("type", "user-all");
                builderPath.param("uid", ItemOrganizeFragment.this.uid);
            }
            builderPath.tag(Boolean.valueOf(z));
            return builderPath.build();
        }

        @Override // com.narvii.list.NVPagedAdapter
        protected View getItemView(Object obj, View view, ViewGroup viewGroup) {
            if (!(obj instanceof Item)) {
                return null;
            }
            Item item = (Item) obj;
            View viewCreateView = createView(R.layout.item_sort_mine_list_item, viewGroup, view);
            ((NVImageView) viewCreateView.findViewById(R.id.image)).setImageMedia(item.firstMedia());
            ((TextView) viewCreateView.findViewById(R.id.label)).setText(item.label);
            return viewCreateView;
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.narvii.list.NVPagedAdapter
        public void onPageResponse(ApiRequest apiRequest, ItemListResponse itemListResponse, int i) {
            super.onPageResponse(apiRequest, (ApiRequest) itemListResponse, i);
            if (ItemOrganizeFragment.this.oList == null) {
                ItemOrganizeFragment.this.oList = new ArrayList();
            }
            if (apiRequest.tag() != null && apiRequest.tag().equals(true)) {
                ItemOrganizeFragment.this.oList.clear();
            }
            ItemOrganizeFragment.this.oList.addAll(itemListResponse.list());
        }

        @Override // com.narvii.list.NVPagedAdapter
        public View createLoadMoreItem(ViewGroup viewGroup, View view) {
            if (list() != null && list().size() < pageSize()) {
                return new View(viewGroup.getContext());
            }
            return super.createLoadMoreItem(viewGroup, view);
        }
    }
}
