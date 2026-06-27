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
import com.narvii.list.DragSortListFragment;
import com.narvii.list.NVArrayAdapter;
import com.narvii.model.ItemCategory;
import com.narvii.model.api.ApiResponse;
import com.narvii.notification.Notification;
import com.narvii.util.ActionBarIcon;
import com.narvii.util.Callback;
import com.narvii.util.JacksonUtils;
import com.narvii.util.Utils;
import com.narvii.util.dialog.ProgressDialog;
import com.narvii.util.http.ApiRequest;
import com.narvii.util.http.ApiService;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

/* loaded from: classes2.dex */
public class CategoryOrganizeFragment extends DragSortListFragment<ItemCategory> {
    Adapter adapter;

    @Override // com.narvii.app.NVFragment
    public boolean isModel() {
        return true;
    }

    @Override // com.narvii.list.NVListFragment, com.narvii.app.NVFragment, android.support.v4.app.Fragment
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        setHasOptionsMenu(true);
        setTitle(getString(R.string.reorder));
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.narvii.list.DragSortListFragment, com.narvii.list.NVListFragment
    public NVArrayAdapter<ItemCategory> createAdapter(Bundle bundle) {
        this.adapter = new Adapter(bundle == null ? JacksonUtils.readListAs(getStringParam("categoryList"), ItemCategory.class) : null);
        return this.adapter;
    }

    @Override // android.support.v4.app.Fragment
    public void onCreateOptionsMenu(Menu menu, MenuInflater menuInflater) {
        super.onCreateOptionsMenu(menu, menuInflater);
        menu.add(0, android.R.string.ok, 0, android.R.string.ok).setIcon(new ActionBarIcon(getContext(), R.string.fa_check)).setShowAsAction(2);
    }

    private ArrayNode getIds(List<ItemCategory> list) {
        ArrayNode arrayNodeCreateArrayNode = JacksonUtils.createArrayNode();
        if (list == null) {
            return arrayNodeCreateArrayNode;
        }
        Iterator<ItemCategory> it = list.iterator();
        while (it.hasNext()) {
            arrayNodeCreateArrayNode.add(it.next().categoryId);
        }
        return arrayNodeCreateArrayNode;
    }

    @Override // android.support.v4.app.Fragment
    public boolean onOptionsItemSelected(MenuItem menuItem) {
        if (menuItem.getItemId() == 17039370) {
            final String stringParam = getStringParam("categoryId");
            ArrayList listAs = JacksonUtils.readListAs(getStringParam("categoryList"), ItemCategory.class);
            final List<ItemCategory> list = this.adapter.getList();
            ArrayNode ids = getIds(listAs);
            ArrayNode ids2 = getIds(list);
            if (list.isEmpty() || Utils.isEquals(String.valueOf(ids), String.valueOf(ids2))) {
                finish();
                return true;
            }
            ProgressDialog progressDialog = new ProgressDialog(getContext());
            progressDialog.successListener = new Callback<ApiResponse>() { // from class: com.narvii.catalog.organizer.CategoryOrganizeFragment.1
                @Override // com.narvii.util.Callback
                public void call(ApiResponse apiResponse) {
                    Intent intent = new Intent();
                    intent.putExtra("categoryList", JacksonUtils.writeAsString(list));
                    CategoryOrganizeFragment.this.setResult(-1, intent);
                    CategoryOrganizeFragment.this.finish();
                    if (stringParam != null) {
                        CategoryOrganizeFragment.this.sendNotification(new Notification("update", (ItemCategory) list.get(0)));
                    }
                }
            };
            progressDialog.show();
            ApiRequest.Builder builder = ApiRequest.builder();
            builder.post().path("/item-category/" + stringParam + "/position");
            builder.param("itemCategoryIdList", ids2);
            ((ApiService) getService("api")).exec(builder.build(), progressDialog.dismissListener);
            return true;
        }
        return super.onOptionsItemSelected(menuItem);
    }

    private class Adapter extends NVArrayAdapter<ItemCategory> {
        public Adapter(List<ItemCategory> list) {
            super(CategoryOrganizeFragment.this, ItemCategory.class, list);
        }

        @Override // android.widget.Adapter
        public View getView(int i, View view, ViewGroup viewGroup) {
            View viewCreateView = createView(R.layout.simple_list_item_sort, viewGroup, view);
            viewCreateView.findViewById(R.id.click_remove).setVisibility(8);
            ((TextView) viewCreateView.findViewById(R.id.text)).setText(getItem(i).label);
            return viewCreateView;
        }
    }
}
