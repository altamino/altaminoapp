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
import com.narvii.util.Utils;
import com.narvii.util.dialog.ProgressDialog;
import com.narvii.util.http.ApiRequest;
import com.narvii.util.http.ApiService;
import com.narvii.widget.NVImageView;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

/* loaded from: classes2.dex */
public class SubItemOrganizeFragment extends DragSortPageFragment<Item> {
    ItemListAdapter adapter;

    @Override // com.narvii.app.NVFragment
    public boolean isModel() {
        return true;
    }

    @Override // com.narvii.list.NVListFragment, com.narvii.app.NVFragment, android.support.v4.app.Fragment
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        setHasOptionsMenu(true);
        setTitle(getString(R.string.reorder));
        this.adapter = new ItemListAdapter();
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

    /* JADX WARN: Multi-variable type inference failed */
    @Override // android.support.v4.app.Fragment
    public boolean onOptionsItemSelected(MenuItem menuItem) {
        ApiRequest apiRequestBuild;
        if (menuItem.getItemId() == 17039370) {
            final String stringParam = getStringParam("categoryId");
            final String stringParam2 = getStringParam("uid");
            ArrayList listAs = JacksonUtils.readListAs(getStringParam("itemList"), Item.class);
            final List<?> list = this.adapter.list();
            ArrayNode ids = getIds(listAs);
            ArrayNode ids2 = getIds(list);
            if (list.isEmpty() || Utils.isEquals(String.valueOf(ids), String.valueOf(ids2))) {
                finish();
                return true;
            }
            ProgressDialog progressDialog = new ProgressDialog(getContext());
            progressDialog.successListener = new Callback<ApiResponse>() { // from class: com.narvii.catalog.organizer.SubItemOrganizeFragment.1
                @Override // com.narvii.util.Callback
                public void call(ApiResponse apiResponse) {
                    Intent intent = new Intent();
                    if (list.size() <= SubItemOrganizeFragment.this.adapter.pageSize() * 2) {
                        intent.putExtra("itemList", JacksonUtils.writeAsString(list));
                    }
                    SubItemOrganizeFragment.this.setResult(-1, intent);
                    SubItemOrganizeFragment.this.finish();
                    if (stringParam != null) {
                        ItemCategory itemCategory = new ItemCategory();
                        itemCategory.categoryId = stringParam;
                        if (itemCategory.author == null) {
                            itemCategory.author = new User();
                        }
                        itemCategory.author.uid = stringParam2;
                        SubItemOrganizeFragment.this.sendNotification(new Notification("update", itemCategory));
                    }
                }
            };
            progressDialog.show();
            if (stringParam != null) {
                ApiRequest.Builder builder = ApiRequest.builder();
                builder.post().path("/item-category/" + stringParam + "/item-position");
                builder.param("itemIdList", ids2);
                apiRequestBuild = builder.build();
            } else {
                ApiRequest.Builder builder2 = ApiRequest.builder();
                builder2.post().path("/item/reorder");
                builder2.param("itemIdList", ids2);
                builder2.param("sourceUid", stringParam2);
                apiRequestBuild = builder2.build();
            }
            ((ApiService) getService("api")).exec(apiRequestBuild, progressDialog.dismissListener);
            return true;
        }
        return super.onOptionsItemSelected(menuItem);
    }

    @Override // com.narvii.list.DragSortPageFragment
    protected NVPagedAdapter createMainAdapter() {
        return this.adapter;
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
            super(SubItemOrganizeFragment.this);
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
            return ApiRequest.builder().path("/item-category/" + SubItemOrganizeFragment.this.getStringParam("categoryId")).build();
        }

        @Override // com.narvii.list.NVPagedAdapter
        protected View getItemView(Object obj, View view, ViewGroup viewGroup) {
            View viewCreateView = createView(R.layout.item_sort_mine_list_item, viewGroup, view);
            Item item = (Item) obj;
            ((NVImageView) viewCreateView.findViewById(R.id.image)).setImageMedia(item.firstMedia());
            ((TextView) viewCreateView.findViewById(R.id.label)).setText(item.label);
            return viewCreateView;
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
