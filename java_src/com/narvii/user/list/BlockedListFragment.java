package com.narvii.user.list;

import android.content.DialogInterface;
import android.content.res.Resources;
import android.os.Bundle;
import android.view.Menu;
import android.view.MenuInflater;
import android.view.MenuItem;
import android.view.View;
import android.view.ViewGroup;
import android.widget.AdapterView;
import android.widget.ListAdapter;
import android.widget.ListView;
import com.narvii.amino.mastes.R;
import com.narvii.app.FragmentWillFinishListener;
import com.narvii.app.NVActivity;
import com.narvii.app.NVApplication;
import com.narvii.list.NVListFragment;
import com.narvii.model.User;
import com.narvii.model.api.ApiResponse;
import com.narvii.model.api.UserListResponse;
import com.narvii.notification.Notification;
import com.narvii.userblock.BlockListResponse;
import com.narvii.userblock.UserBlockService;
import com.narvii.util.Callback;
import com.narvii.util.dialog.ActionSheetDialog;
import com.narvii.util.dialog.ProgressDialog;
import com.narvii.util.http.ApiRequest;
import com.narvii.util.http.ApiService;
import java.util.List;

/* loaded from: classes3.dex */
public class BlockedListFragment extends NVListFragment implements FragmentWillFinishListener, AdapterView.OnItemLongClickListener {
    Adapter adapter;
    boolean showEditBtn = false;

    @Override // com.narvii.app.NVFragment
    public int getCustomTheme() {
        return 2131755019;
    }

    @Override // com.narvii.list.NVListFragment
    public boolean isSwipeRefresh() {
        return true;
    }

    @Override // com.narvii.list.NVListFragment, com.narvii.app.NVFragment, android.support.v4.app.Fragment
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        setTitle(R.string.prefs_blocked_users);
        setHasOptionsMenu(true);
    }

    @Override // com.narvii.list.NVListFragment
    protected ListAdapter createAdapter(Bundle bundle) {
        Adapter adapter = new Adapter();
        this.adapter = adapter;
        return adapter;
    }

    @Override // com.narvii.list.NVListFragment, com.narvii.app.NVFragment, com.narvii.app.theme.NVThemeFragment, android.support.v4.app.Fragment
    public void onViewCreated(View view, Bundle bundle) throws Resources.NotFoundException {
        super.onViewCreated(view, bundle);
    }

    @Override // com.narvii.list.NVListFragment
    protected void onListViewCreated(ListView listView, Bundle bundle) {
        super.onListViewCreated(listView, bundle);
        setEmptyView(R.layout.block_empty_view);
        getListView().setOnItemLongClickListener(this);
    }

    @Override // com.narvii.app.FragmentWillFinishListener
    public void willFinish(NVActivity nVActivity) {
        ((UserBlockService) NVApplication.instance().getService("block")).refresh(true);
    }

    @Override // android.support.v4.app.Fragment
    public boolean onOptionsItemSelected(MenuItem menuItem) {
        if (menuItem.getItemId() == R.id.action_edit) {
            if (this.showEditBtn) {
                menuItem.setIcon(R.drawable.ic_edit);
            } else {
                menuItem.setIcon(R.drawable.ic_done);
            }
            this.showEditBtn = !this.showEditBtn;
            this.adapter.notifyDataSetChanged();
            return true;
        }
        return super.onOptionsItemSelected(menuItem);
    }

    @Override // android.support.v4.app.Fragment
    public void onCreateOptionsMenu(Menu menu, MenuInflater menuInflater) {
        menu.add(0, R.id.action_edit, 1, R.string.edit).setIcon(R.drawable.ic_edit).setShowAsAction(2);
        super.onCreateOptionsMenu(menu, menuInflater);
    }

    @Override // android.support.v4.app.Fragment
    public void onPrepareOptionsMenu(Menu menu) {
        super.onPrepareOptionsMenu(menu);
        MenuItem menuItemFindItem = menu.findItem(R.id.action_edit);
        Adapter adapter = this.adapter;
        menuItemFindItem.setVisible(adapter != null && adapter.list().size() > 0);
    }

    public void unblock(final User user) {
        ProgressDialog progressDialog = new ProgressDialog(getContext(), BlockListResponse.class);
        progressDialog.successListener = new Callback<ApiResponse>() { // from class: com.narvii.user.list.BlockedListFragment.1
            @Override // com.narvii.util.Callback
            public void call(ApiResponse apiResponse) {
                BlockListResponse blockListResponse = (BlockListResponse) apiResponse;
                ((UserBlockService) BlockedListFragment.this.getService("block")).updateBlockList(blockListResponse.blockedUidList, blockListResponse.blockerUidList);
                BlockedListFragment.this.adapter.editList(new Notification("delete", user), false);
            }
        };
        progressDialog.show();
        ((ApiService) getService("api")).exec(ApiRequest.builder().delete().path("/block/" + user.uid).build(), progressDialog.dismissListener);
    }

    @Override // android.widget.AdapterView.OnItemLongClickListener
    public boolean onItemLongClick(AdapterView<?> adapterView, View view, int i, long j) {
        final Object item = this.adapter.getItem(i);
        if (!(item instanceof User)) {
            return false;
        }
        ActionSheetDialog actionSheetDialog = new ActionSheetDialog(getContext());
        actionSheetDialog.addItem(R.string.user_unblock, false);
        actionSheetDialog.setOnClickListener(new DialogInterface.OnClickListener() { // from class: com.narvii.user.list.BlockedListFragment.2
            @Override // android.content.DialogInterface.OnClickListener
            public void onClick(DialogInterface dialogInterface, int i2) {
                if (i2 == 0) {
                    BlockedListFragment.this.unblock((User) item);
                }
            }
        });
        actionSheetDialog.show();
        return true;
    }

    private class Adapter extends UserListAdapter {
        @Override // com.narvii.user.list.UserListAdapter, com.narvii.list.NVPagedAdapter
        protected List<User> filterResponseList(List<User> list, int i) {
            return list;
        }

        @Override // com.narvii.user.list.UserListAdapter
        protected int layoutId() {
            return R.layout.user_item_blocked;
        }

        public Adapter() {
            super(BlockedListFragment.this);
        }

        @Override // com.narvii.user.list.UserListAdapter, com.narvii.list.NVPagedAdapter
        protected View getItemView(final Object obj, View view, ViewGroup viewGroup) {
            View itemView = super.getItemView(obj, view, viewGroup);
            if (BlockedListFragment.this.showEditBtn) {
                itemView.findViewById(R.id.btn_unblock).setVisibility(0);
            } else {
                itemView.findViewById(R.id.btn_unblock).setVisibility(8);
            }
            itemView.findViewById(R.id.btn_unblock).setOnClickListener(new View.OnClickListener() { // from class: com.narvii.user.list.BlockedListFragment.Adapter.1
                @Override // android.view.View.OnClickListener
                public void onClick(View view2) {
                    Object obj2 = obj;
                    if (obj2 instanceof User) {
                        BlockedListFragment.this.unblock((User) obj2);
                    }
                }
            });
            return itemView;
        }

        @Override // com.narvii.list.NVPagedAdapter
        protected ApiRequest createRequest(boolean z) {
            return ApiRequest.builder().path("/block").build();
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.narvii.list.NVPagedAdapter
        public void onPageResponse(ApiRequest apiRequest, UserListResponse userListResponse, int i) {
            super.onPageResponse(apiRequest, (ApiRequest) userListResponse, i);
            invalidateOptionsMenu();
        }
    }
}
