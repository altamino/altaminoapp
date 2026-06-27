package com.narvii.master;

import android.content.Intent;
import android.os.Bundle;
import android.view.Menu;
import android.view.MenuInflater;
import android.view.MenuItem;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ListAdapter;
import android.widget.TextView;
import com.fasterxml.jackson.databind.node.ArrayNode;
import com.narvii.account.AccountService;
import com.narvii.amino.mastes.R;
import com.narvii.community.MyCommunityListService;
import com.narvii.list.DragSortPageFragment;
import com.narvii.list.NVPagedAdapter;
import com.narvii.master.explorer.CommunityListAdapter;
import com.narvii.model.Community;
import com.narvii.model.api.ApiResponse;
import com.narvii.notification.Notification;
import com.narvii.notification.NotificationListener;
import com.narvii.util.ActionBarIcon;
import com.narvii.util.Callback;
import com.narvii.util.JacksonUtils;
import com.narvii.util.dialog.ProgressDialog;
import com.narvii.util.http.ApiRequest;
import com.narvii.util.http.ApiService;
import com.narvii.widget.ACMAlertDialog;
import com.narvii.widget.NVImageView;
import java.util.ArrayList;
import java.util.Iterator;

/* loaded from: classes3.dex */
public class SortCommunityFragment extends DragSortPageFragment<Community> {
    CommunityAdapter adapter;

    @Override // com.narvii.app.NVFragment
    public boolean isGlobal() {
        return true;
    }

    @Override // com.narvii.list.NVListFragment, com.narvii.app.NVFragment, android.support.v4.app.Fragment
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        setHasOptionsMenu(true);
        setTitle(getString(R.string.reorder));
    }

    @Override // android.support.v4.app.Fragment
    public void onCreateOptionsMenu(Menu menu, MenuInflater menuInflater) {
        super.onCreateOptionsMenu(menu, menuInflater);
        menu.add(0, android.R.string.ok, 0, android.R.string.ok).setIcon(new ActionBarIcon(getContext(), R.string.fa_check)).setShowAsAction(2);
    }

    @Override // android.support.v4.app.Fragment
    public boolean onOptionsItemSelected(MenuItem menuItem) {
        if (menuItem.getItemId() == 17039370) {
            final ArrayList arrayList = (ArrayList) this.adapter.list();
            ArrayNode arrayNodeCreateArrayNode = JacksonUtils.createArrayNode();
            Iterator it = arrayList.iterator();
            while (it.hasNext()) {
                arrayNodeCreateArrayNode.add(((Community) it.next()).id);
            }
            ApiRequest.Builder builder = ApiRequest.builder();
            builder.post().path("/community/joined/reorder");
            builder.param("ndcIdList", arrayNodeCreateArrayNode);
            ProgressDialog progressDialog = new ProgressDialog(getContext());
            progressDialog.successListener = new Callback<ApiResponse>() { // from class: com.narvii.master.SortCommunityFragment.1
                @Override // com.narvii.util.Callback
                public void call(ApiResponse apiResponse) {
                    ((MyCommunityListService) SortCommunityFragment.this.getService("myCommunityList")).reorder(arrayList);
                    Intent intent = new Intent();
                    intent.putExtra("communityList", JacksonUtils.writeAsString(arrayList));
                    SortCommunityFragment.this.setResult(-1, intent);
                    SortCommunityFragment.this.finish();
                }
            };
            progressDialog.show();
            ((ApiService) getService("api")).exec(builder.build(), progressDialog.dismissListener);
        }
        return super.onOptionsItemSelected(menuItem);
    }

    @Override // com.narvii.list.DragSortPageFragment
    protected NVPagedAdapter createMainAdapter() {
        CommunityAdapter communityAdapter = this.adapter;
        if (communityAdapter != null) {
            return communityAdapter;
        }
        CommunityAdapter communityAdapter2 = new CommunityAdapter();
        this.adapter = communityAdapter2;
        return communityAdapter2;
    }

    private class CommunityAdapter extends CommunityListAdapter implements NotificationListener {
        @Override // com.narvii.list.NVPagedAdapter
        protected int pageSize() {
            return 50;
        }

        public CommunityAdapter() {
            super(SortCommunityFragment.this);
        }

        @Override // com.narvii.list.NVPagedAdapter
        protected ApiRequest createRequest(boolean z) {
            if (((AccountService) getService("account")).hasAccount()) {
                ApiRequest.Builder builder = ApiRequest.builder();
                builder.global().path("/community/joined").param("v", 1);
                if (z) {
                    builder.tag("start0");
                }
                return builder.build();
            }
            if (this._list.size() <= 0 && this._isEnd) {
                return null;
            }
            resetEmptyList();
            return null;
        }

        @Override // com.narvii.community.BaseCommunityListAdapter, com.narvii.list.NVPagedAdapter
        protected View getItemView(Object obj, View view, ViewGroup viewGroup) {
            Community community = (Community) obj;
            View viewCreateView = createView(R.layout.incubator_community_sort_item, viewGroup, view);
            ((NVImageView) viewCreateView.findViewById(R.id.icon)).setImageUrl(community.icon);
            ((TextView) viewCreateView.findViewById(R.id.text)).setText(community.name);
            return viewCreateView;
        }

        @Override // com.narvii.master.explorer.CommunityListAdapter, com.narvii.list.NVPagedAdapter, com.narvii.list.NVAdapter, com.narvii.list.OnItemClickListener
        public boolean onItemClick(ListAdapter listAdapter, int i, final Object obj, View view, View view2) {
            if ((obj instanceof Community) && ((Community) obj).isDisabled()) {
                ACMAlertDialog aCMAlertDialog = new ACMAlertDialog(getContext());
                aCMAlertDialog.setMessage(R.string.delete_disabled_community_hint);
                aCMAlertDialog.addButton(R.string.cancel, null);
                aCMAlertDialog.addButton(R.string.leave, new View.OnClickListener() { // from class: com.narvii.master.SortCommunityFragment.CommunityAdapter.1
                    @Override // android.view.View.OnClickListener
                    public void onClick(View view3) {
                        new MasterLeaveCommunityHelper(SortCommunityFragment.this).leaveCommunity((Community) obj, null);
                    }
                });
                aCMAlertDialog.show();
                return true;
            }
            return super.onItemClick(listAdapter, i, obj, view, view2);
        }

        @Override // com.narvii.list.NVPagedAdapter
        public View createLoadMoreItem(ViewGroup viewGroup, View view) {
            if (list() != null && list().size() < pageSize()) {
                return new View(viewGroup.getContext());
            }
            return super.createLoadMoreItem(viewGroup, view);
        }

        @Override // com.narvii.notification.NotificationListener
        public void onNotification(Notification notification) {
            if ((notification.obj instanceof Community) && notification.action == "delete") {
                editList(notification, false);
            }
        }
    }
}
