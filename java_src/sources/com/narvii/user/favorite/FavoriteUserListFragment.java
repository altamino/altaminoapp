package com.narvii.user.favorite;

import android.animation.ObjectAnimator;
import android.content.Intent;
import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.Menu;
import android.view.MenuInflater;
import android.view.MenuItem;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ListView;
import androidx.fragment.app.Fragment;
import com.fasterxml.jackson.databind.node.ArrayNode;
import com.narvii.amino.master.R;
import com.narvii.app.FragmentWrapperActivity;
import com.narvii.headlines.ExternalPostPreviewFragment;
import com.narvii.list.DragSortPageFragment;
import com.narvii.list.NVListFragment;
import com.narvii.list.NVPagedAdapter;
import com.narvii.model.User;
import com.narvii.model.api.ApiResponse;
import com.narvii.model.api.UserListResponse;
import com.narvii.notification.Notification;
import com.narvii.user.list.UserListAdapter;
import com.narvii.util.JacksonUtils;
import com.narvii.util.NVToast;
import com.narvii.util.dialog.ProgressDialog;
import com.narvii.util.http.ApiRequest;
import com.narvii.util.http.ApiResponseListener;
import com.narvii.util.http.ApiService;
import com.narvii.util.http.NameValuePair;
import com.narvii.util.http.SequenceRequestHelper;
import com.safedk.android.utils.Logger;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;

/* JADX INFO: loaded from: classes6.dex */
public class FavoriteUserListFragment extends DragSortPageFragment<User> {
    public static final String ACTION_ADD_FAVORITE_USER = "addFavoriteUser";
    public static final String ACTION_FAVORITE_USER_CHANGED = "favoriteUserChanged";
    FavUserListAdapter adapter;
    View addFavoriteUserView;
    ListView listView;
    private List<User> origList;
    boolean showEditBtn = false;

    class FavUserListAdapter extends UserListAdapter {
        @Override // com.narvii.user.list.UserListAdapter
        protected int layoutId() {
            return R.layout.user_item_sort;
        }

        @Override // com.narvii.list.NVPagedAdapter
        protected int pageSize() {
            return 20;
        }

        public FavUserListAdapter() {
            super(FavoriteUserListFragment.this);
            this.source = "Favorite Members";
        }

        @Override // com.narvii.list.NVPagedAdapter
        public boolean autoLoadNextPage() {
            return !FavoriteUserListFragment.this.showEditBtn;
        }

        /* JADX WARN: Type inference incomplete: some casts might be missing */
        @Override // com.narvii.user.list.UserListAdapter, com.narvii.notification.NotificationListener
        public void onNotification(Notification notification) {
            Object obj = notification.obj;
            if (obj instanceof User) {
                User user = (User) obj;
                if (notification.action == FavoriteUserListFragment.ACTION_ADD_FAVORITE_USER) {
                    if (FavoriteUserListFragment.this.origList == null) {
                        FavoriteUserListFragment.this.origList = new ArrayList();
                    }
                    FavoriteUserListFragment.this.origList.add(user);
                    if (this._list == 0) {
                        this._list = new ArrayList<>();
                    }
                    this._list.add(0, user);
                    notifyDataSetChanged();
                    invalidateOptionsMenu();
                }
            }
            if (notification.action == FavoriteUserListFragment.ACTION_ADD_FAVORITE_USER && (notification.obj instanceof User) && (getParentContext() instanceof NVListFragment)) {
                ((NVListFragment) getParentContext()).blinkItem(notification.id, true, 400L);
            }
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.narvii.list.NVPagedAdapter
        public void onPageResponse(ApiRequest apiRequest, UserListResponse userListResponse, int i10) {
            super.onPageResponse(apiRequest, userListResponse, i10);
            if (FavoriteUserListFragment.this.origList == null) {
                FavoriteUserListFragment.this.origList = new ArrayList();
            }
            if (apiRequest.tag() != null && apiRequest.tag().equals(Boolean.TRUE)) {
                FavoriteUserListFragment.this.origList.clear();
            }
            FavoriteUserListFragment.this.origList.addAll(userListResponse.list());
            if (apiRequest.tag() == null || !apiRequest.tag().equals(Boolean.TRUE)) {
                return;
            }
            invalidateOptionsMenu();
        }

        @Override // com.narvii.list.NVPagedAdapter
        public View createLoadMoreItem(ViewGroup viewGroup, View view) {
            if (list() != null && list().size() < pageSize()) {
                return new View(viewGroup.getContext());
            }
            return super.createLoadMoreItem(viewGroup, view);
        }

        @Override // com.narvii.list.NVPagedAdapter
        protected ApiRequest createRequest(boolean z6) {
            ApiRequest.Builder builderPath = ApiRequest.builder().path("/user-group/quick-access");
            builderPath.tag(Boolean.valueOf(z6));
            return builderPath.build();
        }

        @Override // com.narvii.user.list.UserListAdapter, com.narvii.list.NVPagedAdapter
        protected View getItemView(Object obj, View view, ViewGroup viewGroup) {
            int i10;
            View itemView = super.getItemView(obj, view, viewGroup);
            View viewFindViewById = itemView.findViewById(R.id.click_remove);
            int i11 = 8;
            if (FavoriteUserListFragment.this.showEditBtn) {
                i10 = 0;
            } else {
                i10 = 8;
            }
            viewFindViewById.setVisibility(i10);
            View viewFindViewById2 = itemView.findViewById(R.id.drag_handle);
            if (FavoriteUserListFragment.this.showEditBtn) {
                i11 = 0;
            }
            viewFindViewById2.setVisibility(i11);
            return itemView;
        }

        @Override // com.narvii.list.NVPagedAdapter, android.widget.BaseAdapter, android.widget.ListAdapter
        public boolean isEnabled(int i10) {
            Object item = getItem(i10);
            if (FavoriteUserListFragment.this.showEditBtn && (item instanceof User)) {
                return false;
            }
            return true;
        }
    }

    public static void safedk_Fragment_startActivity_d519b2d71bdac81b1d20f350086c68e6(Fragment p0, Intent p1) {
        Logger.d("SafeDK-Special|SafeDK: Call> Landroidx/fragment/app/Fragment;->startActivity(Landroid/content/Intent;)V");
        if (p1 == null) {
            return;
        }
        p0.startActivity(p1);
    }

    @Override // com.narvii.app.NVFragment
    public boolean isModel() {
        return true;
    }

    @Override // androidx.fragment.app.Fragment
    public void onCreateOptionsMenu(Menu menu, MenuInflater menuInflater) {
        menu.add(0, R.id.action_edit, 1, R.string.edit).setIcon(R.drawable.ic_edit).setShowAsAction(2);
        super.onCreateOptionsMenu(menu, menuInflater);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void addNewFavoriteUser() {
        Intent intent = FragmentWrapperActivity.intent(AddFavoriteUserFragment.class);
        intent.putExtra(ExternalPostPreviewFragment.SOURCE, "Manage View");
        safedk_Fragment_startActivity_d519b2d71bdac81b1d20f350086c68e6(this, intent);
    }

    private void beginEdit() {
        View view = this.addFavoriteUserView;
        if (view != null) {
            ObjectAnimator objectAnimatorOfFloat = ObjectAnimator.ofFloat(view, "translationY", 0.0f, getContext().getResources().getDimension(R.dimen.add_favorite_user_height));
            objectAnimatorOfFloat.setDuration(140L);
            objectAnimatorOfFloat.start();
        }
        ListView listView = this.listView;
        if (listView != null) {
            listView.setPadding(listView.getPaddingLeft(), this.listView.getPaddingTop(), this.listView.getPaddingRight(), 0);
        }
    }

    private void finishEdit() {
        View view = this.addFavoriteUserView;
        if (view != null) {
            ObjectAnimator objectAnimatorOfFloat = ObjectAnimator.ofFloat(view, "translationY", getContext().getResources().getDimension(R.dimen.add_favorite_user_height), 0.0f);
            objectAnimatorOfFloat.setDuration(140L);
            objectAnimatorOfFloat.start();
        }
        ListView listView = this.listView;
        if (listView != null) {
            listView.setPadding(listView.getPaddingLeft(), this.listView.getPaddingTop(), this.listView.getPaddingRight(), (int) getContext().getResources().getDimension(R.dimen.add_favorite_user_height));
        }
    }

    private boolean isDirty() {
        if (this.origList == null) {
            return false;
        }
        ArrayList arrayList = new ArrayList();
        for (Object obj : this.adapter.list()) {
            if (obj instanceof User) {
                arrayList.add(((User) obj).uid);
            }
        }
        ArrayList arrayList2 = new ArrayList();
        Iterator<User> it = this.origList.iterator();
        while (it.hasNext()) {
            arrayList2.add(it.next().uid);
        }
        return !arrayList.equals(arrayList2);
    }

    private void submit() {
        if (this.origList != null && isDirty()) {
            ArrayList arrayList = new ArrayList();
            HashSet hashSet = new HashSet();
            for (Object obj : this.adapter.list()) {
                if (obj instanceof User) {
                    User user = (User) obj;
                    arrayList.add(user.uid);
                    hashSet.add(user.uid);
                }
            }
            ArrayList<String> arrayList2 = new ArrayList();
            Iterator<User> it = this.origList.iterator();
            while (it.hasNext()) {
                arrayList2.add(it.next().uid);
            }
            final ProgressDialog progressDialog = new ProgressDialog(getContext());
            SequenceRequestHelper sequenceRequestHelper = new SequenceRequestHelper(new ApiResponseListener<ApiResponse>(ApiResponse.class) { // from class: com.narvii.user.favorite.FavoriteUserListFragment.2
                @Override // com.narvii.util.http.ApiResponseListener
                public void onFail(ApiRequest apiRequest, int i10, List<NameValuePair> list, String str, ApiResponse apiResponse, Throwable th) {
                    progressDialog.dismiss();
                    NVToast.makeText(FavoriteUserListFragment.this.getContext(), str, 0).show();
                    FavoriteUserListFragment.this.adapter.resetList();
                }

                @Override // com.narvii.util.http.ApiResponseListener
                public void onFinish(ApiRequest apiRequest, ApiResponse apiResponse) throws Exception {
                    progressDialog.dismiss();
                    Intent intent = new Intent();
                    intent.putExtra("userList", JacksonUtils.writeAsString(FavoriteUserListFragment.this.adapter.list()));
                    FavoriteUserListFragment.this.setResult(-1, intent);
                    FavoriteUserListFragment.this.finish();
                }
            });
            for (String str : arrayList2) {
                if (!hashSet.contains(str)) {
                    sequenceRequestHelper.add(ApiRequest.builder().delete().path("/user-group/quick-access/" + str).build());
                }
            }
            if (arrayList.size() > 0 && !arrayList.equals(arrayList2)) {
                ArrayNode arrayNodeCreateArrayNode = JacksonUtils.createArrayNode();
                Iterator it2 = arrayList.iterator();
                while (it2.hasNext()) {
                    arrayNodeCreateArrayNode.add((String) it2.next());
                }
                sequenceRequestHelper.add(ApiRequest.builder().post().path("/user-group/quick-access/position").param("uidList", arrayNodeCreateArrayNode).build());
            }
            if (sequenceRequestHelper.getCount() <= 0) {
                finish();
            } else {
                sequenceRequestHelper.start((ApiService) getService("api"));
                progressDialog.show();
            }
        }
    }

    @Override // com.narvii.list.DragSortPageFragment
    protected NVPagedAdapter createMainAdapter() {
        FavUserListAdapter favUserListAdapter = this.adapter;
        if (favUserListAdapter != null) {
            return favUserListAdapter;
        }
        FavUserListAdapter favUserListAdapter2 = new FavUserListAdapter();
        this.adapter = favUserListAdapter2;
        return favUserListAdapter2;
    }

    @Override // com.narvii.list.DragSortPageFragment, com.mobeta.android.dslv.DragSortListView.n
    public void remove(int i10) {
        if (i10 < this.adapter.getCount()) {
            this.adapter.list().remove(this.adapter.getItem(i10));
            this.adapter.notifyDataSetChanged();
        }
    }

    @Override // com.narvii.list.NVListFragment, com.narvii.app.NVFragment, androidx.fragment.app.Fragment
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        setHasOptionsMenu(true);
        if (bundle != null) {
            this.origList = JacksonUtils.readListAs(bundle.getString("olist"), User.class);
            this.showEditBtn = bundle.getBoolean("show_edit");
        }
    }

    @Override // com.narvii.list.DragSortPageFragment, com.narvii.list.NVListFragment, androidx.fragment.app.Fragment
    public View onCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        return layoutInflater.inflate(R.layout.favorite_user_list_layout, viewGroup, false);
    }

    @Override // androidx.fragment.app.Fragment
    public boolean onOptionsItemSelected(MenuItem menuItem) {
        if (menuItem.getItemId() != R.id.action_edit) {
            return super.onOptionsItemSelected(menuItem);
        }
        if (this.showEditBtn) {
            menuItem.setIcon(R.drawable.ic_edit);
            setTitle(R.string.favorite_members);
            submit();
            finishEdit();
        } else {
            beginEdit();
            setTitle(R.string.editing);
            menuItem.setIcon(R.drawable.ic_done);
        }
        this.showEditBtn = !this.showEditBtn;
        this.adapter.notifyDataSetChanged();
        return true;
    }

    @Override // androidx.fragment.app.Fragment
    public void onPrepareOptionsMenu(Menu menu) {
        boolean z6;
        super.onPrepareOptionsMenu(menu);
        MenuItem menuItemFindItem = menu.findItem(R.id.action_edit);
        List<User> list = this.origList;
        if (list != null && list.size() > 0) {
            z6 = true;
        } else {
            z6 = false;
        }
        menuItemFindItem.setVisible(z6);
    }

    @Override // com.narvii.list.NVListFragment, com.narvii.app.NVFragment, androidx.fragment.app.Fragment
    public void onSaveInstanceState(Bundle bundle) {
        super.onSaveInstanceState(bundle);
        bundle.putString("olist", JacksonUtils.writeAsString(this.origList));
        bundle.putBoolean("show_edit", this.showEditBtn);
    }

    @Override // com.narvii.list.DragSortPageFragment, com.narvii.list.NVListFragment, com.narvii.app.NVFragment, com.narvii.app.theme.NVThemeFragment, androidx.fragment.app.Fragment
    public void onViewCreated(View view, Bundle bundle) {
        super.onViewCreated(view, bundle);
        setEmptyView(R.layout.favorite_user_empty_view);
        View viewFindViewById = view.findViewById(R.id.add_favorite_user);
        this.addFavoriteUserView = viewFindViewById;
        viewFindViewById.setOnClickListener(new View.OnClickListener() { // from class: com.narvii.user.favorite.FavoriteUserListFragment.1
            @Override // android.view.View.OnClickListener
            public void onClick(View view2) {
                FavoriteUserListFragment.this.addNewFavoriteUser();
            }
        });
        setTitle(R.string.favorite_members);
        this.listView = getListView();
    }
}
