package com.narvii.user.favorite;

import android.animation.ObjectAnimator;
import android.content.Intent;
import android.content.res.Resources;
import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.Menu;
import android.view.MenuInflater;
import android.view.MenuItem;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ListView;
import com.fasterxml.jackson.databind.node.ArrayNode;
import com.narvii.amino.mastes.R;
import com.narvii.app.FragmentWrapperActivity;
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
import java.util.ArrayList;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;

/* loaded from: classes3.dex */
public class FavoriteUserListFragment extends DragSortPageFragment<User> {
    public static final String ACTION_ADD_FAVORITE_USER = "addFavoriteUser";
    public static final String ACTION_FAVORITE_USER_CHANGED = "favoriteUserChanged";
    FavUserListAdapter adapter;
    View addFavoriteUserView;
    ListView listView;
    private List<User> origList;
    boolean showEditBtn = false;

    @Override // com.narvii.app.NVFragment
    public boolean isModel() {
        return true;
    }

    @Override // com.narvii.list.NVListFragment, com.narvii.app.NVFragment, android.support.v4.app.Fragment
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        setHasOptionsMenu(true);
        if (bundle != null) {
            this.origList = JacksonUtils.readListAs(bundle.getString("olist"), User.class);
            this.showEditBtn = bundle.getBoolean("show_edit");
        }
    }

    @Override // com.narvii.list.DragSortPageFragment, com.narvii.list.NVListFragment, android.support.v4.app.Fragment
    public View onCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        return layoutInflater.inflate(R.layout.favorite_user_list_layout, viewGroup, false);
    }

    @Override // com.narvii.list.DragSortPageFragment, com.narvii.list.NVListFragment, com.narvii.app.NVFragment, com.narvii.app.theme.NVThemeFragment, android.support.v4.app.Fragment
    public void onViewCreated(View view, Bundle bundle) throws Resources.NotFoundException {
        super.onViewCreated(view, bundle);
        setEmptyView(R.layout.favorite_user_empty_view);
        this.addFavoriteUserView = view.findViewById(R.id.add_favorite_user);
        this.addFavoriteUserView.setOnClickListener(new View.OnClickListener() { // from class: com.narvii.user.favorite.FavoriteUserListFragment.1
            @Override // android.view.View.OnClickListener
            public void onClick(View view2) {
                FavoriteUserListFragment.this.addNewFavoriteUser();
            }
        });
        setTitle(R.string.favorite_members);
        this.listView = getListView();
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

    @Override // com.narvii.list.NVListFragment, com.narvii.app.NVFragment, android.support.v4.app.Fragment
    public void onSaveInstanceState(Bundle bundle) {
        super.onSaveInstanceState(bundle);
        bundle.putString("olist", JacksonUtils.writeAsString(this.origList));
        bundle.putBoolean("show_edit", this.showEditBtn);
    }

    @Override // android.support.v4.app.Fragment
    public void onCreateOptionsMenu(Menu menu, MenuInflater menuInflater) {
        menu.add(0, R.id.action_edit, 1, R.string.edit).setIcon(R.drawable.ic_edit).setShowAsAction(2);
        super.onCreateOptionsMenu(menu, menuInflater);
    }

    @Override // android.support.v4.app.Fragment
    public boolean onOptionsItemSelected(MenuItem menuItem) {
        if (menuItem.getItemId() == R.id.action_edit) {
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
        return super.onOptionsItemSelected(menuItem);
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

    @Override // android.support.v4.app.Fragment
    public void onPrepareOptionsMenu(Menu menu) {
        super.onPrepareOptionsMenu(menu);
        MenuItem menuItemFindItem = menu.findItem(R.id.action_edit);
        List<User> list = this.origList;
        menuItemFindItem.setVisible(list != null && list.size() > 0);
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
            ArrayList arrayList2 = new ArrayList();
            Iterator<User> it = this.origList.iterator();
            while (it.hasNext()) {
                arrayList2.add(it.next().uid);
            }
            final ProgressDialog progressDialog = new ProgressDialog(getContext());
            SequenceRequestHelper sequenceRequestHelper = new SequenceRequestHelper(new ApiResponseListener<ApiResponse>(ApiResponse.class) { // from class: com.narvii.user.favorite.FavoriteUserListFragment.2
                @Override // com.narvii.util.http.ApiResponseListener
                public void onFinish(ApiRequest apiRequest, ApiResponse apiResponse) throws Exception {
                    progressDialog.dismiss();
                    Intent intent = new Intent();
                    intent.putExtra("userList", JacksonUtils.writeAsString(FavoriteUserListFragment.this.adapter.list()));
                    FavoriteUserListFragment.this.setResult(-1, intent);
                    FavoriteUserListFragment.this.finish();
                }

                @Override // com.narvii.util.http.ApiResponseListener
                public void onFail(ApiRequest apiRequest, int i, List<NameValuePair> list, String str, ApiResponse apiResponse, Throwable th) {
                    progressDialog.dismiss();
                    NVToast.makeText(FavoriteUserListFragment.this.getContext(), str, 0).show();
                    FavoriteUserListFragment.this.adapter.resetList();
                }
            });
            Iterator it2 = arrayList2.iterator();
            while (it2.hasNext()) {
                String str = (String) it2.next();
                if (!hashSet.contains(str)) {
                    sequenceRequestHelper.add(ApiRequest.builder().delete().path("/user-group/quick-access/" + str).build());
                }
            }
            if (arrayList.size() > 0 && !arrayList.equals(arrayList2)) {
                ArrayNode arrayNodeCreateArrayNode = JacksonUtils.createArrayNode();
                Iterator it3 = arrayList.iterator();
                while (it3.hasNext()) {
                    arrayNodeCreateArrayNode.add((String) it3.next());
                }
                sequenceRequestHelper.add(ApiRequest.builder().post().path("/user-group/quick-access/position").param("uidList", arrayNodeCreateArrayNode).build());
            }
            if (sequenceRequestHelper.getCount() > 0) {
                sequenceRequestHelper.start((ApiService) getService("api"));
                progressDialog.show();
            } else {
                finish();
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void addNewFavoriteUser() {
        Intent intent = FragmentWrapperActivity.intent(AddFavoriteUserFragment.class);
        intent.putExtra("Source", "Manage View");
        startActivity(intent);
    }

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
        protected ApiRequest createRequest(boolean z) {
            ApiRequest.Builder builderPath = ApiRequest.builder().path("/user-group/quick-access");
            builderPath.tag(Boolean.valueOf(z));
            return builderPath.build();
        }

        @Override // com.narvii.user.list.UserListAdapter, com.narvii.list.NVPagedAdapter
        protected View getItemView(Object obj, View view, ViewGroup viewGroup) {
            View itemView = super.getItemView(obj, view, viewGroup);
            itemView.findViewById(R.id.click_remove).setVisibility(FavoriteUserListFragment.this.showEditBtn ? 0 : 8);
            itemView.findViewById(R.id.drag_handle).setVisibility(FavoriteUserListFragment.this.showEditBtn ? 0 : 8);
            return itemView;
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.narvii.list.NVPagedAdapter
        public void onPageResponse(ApiRequest apiRequest, UserListResponse userListResponse, int i) {
            super.onPageResponse(apiRequest, (ApiRequest) userListResponse, i);
            if (FavoriteUserListFragment.this.origList == null) {
                FavoriteUserListFragment.this.origList = new ArrayList();
            }
            if (apiRequest.tag() != null && apiRequest.tag().equals(true)) {
                FavoriteUserListFragment.this.origList.clear();
            }
            FavoriteUserListFragment.this.origList.addAll(userListResponse.list());
            if (apiRequest.tag() == null || !apiRequest.tag().equals(true)) {
                return;
            }
            invalidateOptionsMenu();
        }

        @Override // com.narvii.list.NVPagedAdapter, android.widget.BaseAdapter, android.widget.ListAdapter
        public boolean isEnabled(int i) {
            return (FavoriteUserListFragment.this.showEditBtn && (getItem(i) instanceof User)) ? false : true;
        }

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
                    if (this._list == null) {
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

        @Override // com.narvii.list.NVPagedAdapter
        public boolean autoLoadNextPage() {
            return !FavoriteUserListFragment.this.showEditBtn;
        }

        @Override // com.narvii.list.NVPagedAdapter
        public View createLoadMoreItem(ViewGroup viewGroup, View view) {
            if (list() != null && list().size() < pageSize()) {
                return new View(viewGroup.getContext());
            }
            return super.createLoadMoreItem(viewGroup, view);
        }
    }

    @Override // com.narvii.list.DragSortPageFragment, com.mobeta.android.dslv.DragSortListView.RemoveListener
    public void remove(int i) {
        if (i < this.adapter.getCount()) {
            this.adapter.list().remove(this.adapter.getItem(i));
            this.adapter.notifyDataSetChanged();
        }
    }
}
