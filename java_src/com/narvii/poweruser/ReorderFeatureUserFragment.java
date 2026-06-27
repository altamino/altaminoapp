package com.narvii.poweruser;

import android.os.Bundle;
import android.view.Menu;
import android.view.MenuInflater;
import android.view.MenuItem;
import android.view.View;
import android.view.ViewGroup;
import com.fasterxml.jackson.databind.node.ArrayNode;
import com.narvii.amino.mastes.R;
import com.narvii.app.FragmentOnBackListener;
import com.narvii.app.NVActivity;
import com.narvii.list.DragSortPageFragment;
import com.narvii.list.NVPagedAdapter;
import com.narvii.model.User;
import com.narvii.model.api.ApiResponse;
import com.narvii.model.api.UserListResponse;
import com.narvii.modulization.Module;
import com.narvii.notification.Notification;
import com.narvii.user.list.UserListAdapter;
import com.narvii.util.ActionBarIcon;
import com.narvii.util.Callback;
import com.narvii.util.JacksonUtils;
import com.narvii.util.NVToast;
import com.narvii.util.Utils;
import com.narvii.util.dialog.AlertDialog;
import com.narvii.util.dialog.ProgressDialog;
import com.narvii.util.http.ApiRequest;
import com.narvii.util.http.ApiService;
import com.narvii.widget.NicknameView;
import com.narvii.widget.UserAvatarLayout;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

/* loaded from: classes3.dex */
public class ReorderFeatureUserFragment extends DragSortPageFragment implements FragmentOnBackListener {
    NVPagedAdapter adapter;
    List<User> originalList = new ArrayList();

    @Override // com.narvii.list.NVListFragment, com.narvii.app.NVFragment, android.support.v4.app.Fragment
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        setHasOptionsMenu(true);
        setTitle(getString(R.string.reorder_featured_memebers));
    }

    @Override // android.support.v4.app.Fragment
    public void onCreateOptionsMenu(Menu menu, MenuInflater menuInflater) {
        super.onCreateOptionsMenu(menu, menuInflater);
        menu.add(0, android.R.string.ok, 0, android.R.string.ok).setIcon(new ActionBarIcon(getContext(), R.string.fa_check)).setShowAsAction(2);
    }

    @Override // android.support.v4.app.Fragment
    public void onPrepareOptionsMenu(Menu menu) {
        super.onPrepareOptionsMenu(menu);
        MenuItem menuItemFindItem = menu.findItem(android.R.string.ok);
        NVPagedAdapter nVPagedAdapter = this.adapter;
        menuItemFindItem.setVisible(nVPagedAdapter != null && nVPagedAdapter.list().size() > 0);
    }

    @Override // com.narvii.app.NVFragment
    public Boolean hasPostEntry() {
        return false;
    }

    @Override // android.support.v4.app.Fragment
    public boolean onOptionsItemSelected(MenuItem menuItem) {
        if (menuItem.getItemId() == 17039370) {
            ArrayList arrayList = new ArrayList(this.adapter.list());
            ArrayNode arrayNodeCreateArrayNode = JacksonUtils.createArrayNode();
            Iterator it = arrayList.iterator();
            while (it.hasNext()) {
                arrayNodeCreateArrayNode.add(((User) it.next()).id());
            }
            ApiRequest.Builder builder = ApiRequest.builder();
            builder.post().path("/user-profile/featured/reorder");
            builder.param("uidList", arrayNodeCreateArrayNode);
            ProgressDialog progressDialog = new ProgressDialog(getContext());
            progressDialog.successListener = new Callback<ApiResponse>() { // from class: com.narvii.poweruser.ReorderFeatureUserFragment.1
                @Override // com.narvii.util.Callback
                public void call(ApiResponse apiResponse) {
                    NVToast.makeText(ReorderFeatureUserFragment.this.getContext(), R.string.success, 1).show();
                    if (ReorderFeatureUserFragment.this.isFinishing()) {
                        return;
                    }
                    ReorderFeatureUserFragment.this.finish();
                }
            };
            progressDialog.show();
            ((ApiService) getService("api")).exec(builder.build(), progressDialog.dismissListener);
        }
        return super.onOptionsItemSelected(menuItem);
    }

    @Override // com.narvii.list.DragSortPageFragment, com.mobeta.android.dslv.DragSortListView.DropListener
    public void drop(int i, int i2) {
        super.drop(i, i2);
    }

    @Override // com.narvii.list.DragSortPageFragment
    protected NVPagedAdapter createMainAdapter() {
        NVPagedAdapter nVPagedAdapter = this.adapter;
        if (nVPagedAdapter != null) {
            return nVPagedAdapter;
        }
        Adapter adapter = new Adapter();
        this.adapter = adapter;
        return adapter;
    }

    class Adapter extends UserListAdapter {
        @Override // com.narvii.list.NVPagedAdapter
        public boolean autoLoadNextPage() {
            return false;
        }

        @Override // com.narvii.list.NVPagedAdapter
        protected int pageSize() {
            return 50;
        }

        public Adapter() {
            super(ReorderFeatureUserFragment.this);
            this.source = "Reorder Featured Posts";
            this.paginationType = -2;
        }

        @Override // com.narvii.list.NVPagedAdapter
        protected ApiRequest createRequest(boolean z) {
            ApiRequest.Builder builderPath = ApiRequest.builder().path("/user-profile");
            builderPath.param("type", Module.MODULE_FEATURED);
            return builderPath.build();
        }

        @Override // com.narvii.user.list.UserListAdapter, com.narvii.list.NVPagedAdapter
        protected View getItemView(Object obj, View view, ViewGroup viewGroup) {
            if (obj instanceof User) {
                User user = (User) obj;
                View viewInflate = this.inflater.inflate(R.layout.feature_user_sort_item, viewGroup, false);
                UserAvatarLayout userAvatarLayout = (UserAvatarLayout) viewInflate.findViewById(R.id.user_avatar_layout);
                if (userAvatarLayout != null) {
                    userAvatarLayout.setUser(user);
                }
                View viewFindViewById = viewInflate.findViewById(R.id.nickname);
                if (viewFindViewById instanceof NicknameView) {
                    ((NicknameView) viewFindViewById).setUser(user);
                }
                return viewInflate;
            }
            return super.getItemView(obj, view, viewGroup);
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.narvii.list.NVPagedAdapter
        public void onPageResponse(ApiRequest apiRequest, UserListResponse userListResponse, int i) {
            super.onPageResponse(apiRequest, (ApiRequest) userListResponse, i);
            ReorderFeatureUserFragment.this.originalList = userListResponse.list();
            invalidateOptionsMenu();
        }

        @Override // com.narvii.user.list.UserListAdapter, com.narvii.notification.NotificationListener
        public void onNotification(Notification notification) {
            Bundle bundle;
            if ((notification.obj instanceof User) && notification.action == "update" && (bundle = notification.bundle) != null && bundle.getBoolean("featureChanged")) {
                User user = (User) notification.obj;
                if (user.featureType() == 0) {
                    Utils.removeId(ReorderFeatureUserFragment.this.originalList, user.id());
                    NVPagedAdapter nVPagedAdapter = ReorderFeatureUserFragment.this.adapter;
                    if (nVPagedAdapter == null || Utils.removeId(nVPagedAdapter.list(), user.id()) <= 0) {
                        return;
                    }
                    ReorderFeatureUserFragment.this.adapter.notifyDataSetChanged();
                }
            }
        }
    }

    @Override // com.narvii.app.FragmentOnBackListener
    public boolean onBackPressed(NVActivity nVActivity) {
        if (!anyChange()) {
            return false;
        }
        AlertDialog alertDialog = new AlertDialog(getContext());
        alertDialog.setTitle(getString(R.string.save_feature_reorder));
        alertDialog.addButton(R.string.no, 0, (View.OnClickListener) null);
        alertDialog.addButton(R.string.yes, 0, new View.OnClickListener() { // from class: com.narvii.poweruser.ReorderFeatureUserFragment.2
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                ReorderFeatureUserFragment.this.finish();
            }
        });
        alertDialog.show();
        return true;
    }

    private boolean anyChange() {
        return !Utils.isListEquals(this.adapter.list(), this.originalList);
    }
}
