package com.narvii.user.picker;

import android.content.Intent;
import android.os.Bundle;
import android.text.TextUtils;
import android.view.Menu;
import android.view.MenuInflater;
import android.view.MenuItem;
import android.view.View;
import android.view.ViewGroup;
import android.widget.HorizontalScrollView;
import android.widget.LinearLayout;
import android.widget.ListAdapter;
import android.widget.ListView;
import android.widget.TextView;
import com.google.firebase.sessions.settings.c;
import com.narvii.account.AccountService;
import com.narvii.amino.master.R;
import com.narvii.list.MergeAdapter;
import com.narvii.list.NVAdapter;
import com.narvii.list.NVListFragment;
import com.narvii.list.refresh.SwipeRefreshLayout;
import com.narvii.model.User;
import com.narvii.model.api.ApiResponse;
import com.narvii.modulization.CommunityConfigHelper;
import com.narvii.search.InstantSearchListener;
import com.narvii.user.list.UserListAdapter;
import com.narvii.util.ActionBarIcon;
import com.narvii.util.AndroidBug5497Workaround;
import com.narvii.util.JacksonUtils;
import com.narvii.util.NVToast;
import com.narvii.util.Utils;
import com.narvii.util.dialog.AlertDialog;
import com.narvii.util.http.ApiJsonResponseListener;
import com.narvii.util.http.ApiRequest;
import com.narvii.util.http.ApiService;
import com.narvii.util.http.NameValuePair;
import com.narvii.widget.SearchBar;
import com.narvii.widget.ThumbImageView;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

/* JADX INFO: loaded from: classes4.dex */
public class MultiUserPickerFragment extends NVListFragment {
    public static final int DEFAULT_MAX_MEMBER_COUNT = 100;
    protected Adapter adapter;
    CommunityConfigHelper communityConfigHelper;
    InstantSearchListener instantSearchListener = new InstantSearchListener();
    private int maxMember;
    private SearchBar searchBar;
    private View searchIcon;
    boolean showSearchBar;
    boolean spamProtection;
    private LinearLayout thumbContainer;
    HorizontalScrollView thumbContainerScroller;

    protected class Adapter extends UserListAdapter {
        ArrayList<User> exists;
        ArrayList<String> existsIds;
        ArrayList<User> users;

        @Override // com.narvii.user.list.UserListAdapter
        protected boolean filterYourself() {
            return true;
        }

        @Override // com.narvii.user.list.UserListAdapter
        protected int layoutId() {
            return R.layout.user_item_picker;
        }

        public Adapter() {
            super(MultiUserPickerFragment.this);
        }

        private boolean isListContainsUser(List<User> list, User user) {
            if (list == null) {
                return false;
            }
            Iterator<User> it = list.iterator();
            while (it.hasNext()) {
                if (Utils.isEqualsNotNull(it.next().uid, user.uid)) {
                    return true;
                }
            }
            return false;
        }

        @Override // com.narvii.list.NVPagedAdapter
        protected ApiRequest createRequest(boolean z6) {
            ApiRequest.Builder builderPath;
            MultiUserPickerFragment multiUserPickerFragment = MultiUserPickerFragment.this;
            if (multiUserPickerFragment.spamProtection) {
                String stringParam = multiUserPickerFragment.getStringParam("id");
                if (TextUtils.isEmpty(stringParam)) {
                    stringParam = ((AccountService) getService("account")).getUserId();
                }
                builderPath = ApiRequest.builder().path("/user-profile/" + stringParam + c.FORWARD_SLASH_STRING + MultiUserPickerFragment.this.target());
                builderPath.param("type", "name");
            } else {
                builderPath = ApiRequest.builder().path("/user-profile");
                builderPath.param("type", "all");
            }
            if (!TextUtils.isEmpty(MultiUserPickerFragment.this.instantSearchListener.getKeyword())) {
                builderPath.param("q", MultiUserPickerFragment.this.instantSearchListener.getKeyword());
            }
            String stringParam2 = MultiUserPickerFragment.this.getStringParam("threadId");
            if (!TextUtils.isEmpty(stringParam2)) {
                builderPath.param("threadId", stringParam2);
            }
            builderPath.param("needCheckCanBeInvitedToChat", Boolean.TRUE);
            return builderPath.build();
        }

        /* JADX WARN: Code duplicated, block: B:49:0x0113  */
        @Override // com.narvii.user.list.UserListAdapter, com.narvii.list.NVPagedAdapter, com.narvii.list.NVAdapter, com.narvii.list.OnItemClickListener
        public boolean onItemClick(ListAdapter listAdapter, int i10, Object obj, View view, View view2) {
            int size;
            ArrayList<String> arrayList;
            if (!(obj instanceof User)) {
                return super.onItemClick(listAdapter, i10, obj, view, view2);
            }
            User user = (User) obj;
            if (user.canNotBeInvitedToChat) {
                ApiService apiService = (ApiService) this.context.getService("api");
                String stringParam = MultiUserPickerFragment.this.getStringParam("id");
                if (TextUtils.isEmpty(stringParam)) {
                    stringParam = ((AccountService) getService("account")).getUserId();
                }
                ApiRequest.Builder builder = ApiRequest.builder();
                builder.path("/user-profile/" + stringParam + "/chat-invite-check/" + user.uid());
                String stringParam2 = MultiUserPickerFragment.this.getStringParam("threadId");
                if (!TextUtils.isEmpty(stringParam2)) {
                    builder.param("threadId", stringParam2);
                }
                apiService.exec(builder.build(), new ApiJsonResponseListener<ApiResponse>(ApiResponse.class) { // from class: com.narvii.user.picker.MultiUserPickerFragment.Adapter.1
                    @Override // com.narvii.util.http.ApiResponseListener
                    public void onFail(ApiRequest apiRequest, int i11, List<NameValuePair> list, String str, ApiResponse apiResponse, Throwable th) {
                        super.onFail(apiRequest, i11, list, str, apiResponse, th);
                        NVToast.makeText(Adapter.this.getContext(), str, 0).show();
                    }
                });
                return true;
            }
            ArrayList<User> arrayList2 = this.exists;
            if (arrayList2 != null) {
                size = arrayList2.size();
            } else {
                ArrayList<String> arrayList3 = this.existsIds;
                size = arrayList3 != null ? arrayList3.size() : 0;
            }
            ArrayList<User> arrayList4 = this.users;
            int size2 = size + (arrayList4 == null ? 0 : arrayList4.size());
            if (MultiUserPickerFragment.this.maxMember > 0 && size2 >= MultiUserPickerFragment.this.maxMember && !isListContainsUser(this.users, user)) {
                AlertDialog alertDialog = new AlertDialog(getContext());
                MultiUserPickerFragment multiUserPickerFragment = MultiUserPickerFragment.this;
                alertDialog.setTitle(multiUserPickerFragment.getString(R.string.chat_picker_limit, Integer.valueOf(multiUserPickerFragment.maxMember)));
                alertDialog.addButton(android.R.string.ok, 0, (View.OnClickListener) null);
                alertDialog.show();
                return true;
            }
            if (!isListContainsUser(this.exists, user) && ((arrayList = this.existsIds) == null || !arrayList.contains(user.id()))) {
                ArrayList<User> arrayList5 = this.users;
                if (arrayList5 != null) {
                    Iterator<User> it = arrayList5.iterator();
                    while (true) {
                        if (!it.hasNext()) {
                            if (this.users == null) {
                                this.users = new ArrayList<>();
                            }
                            this.users.add(user);
                        } else if (Utils.isEqualsNotNull(it.next().uid, user.uid)) {
                            it.remove();
                        }
                    }
                } else {
                    if (this.users == null) {
                        this.users = new ArrayList<>();
                    }
                    this.users.add(user);
                }
                notifyDataSetChanged();
            }
            MultiUserPickerFragment.this.updateThumbViews();
            return true;
        }

        @Override // com.narvii.user.list.UserListAdapter, com.narvii.list.NVPagedAdapter
        protected View getItemView(Object obj, View view, ViewGroup viewGroup) {
            ArrayList<String> arrayList;
            View itemView = super.getItemView(obj, view, viewGroup);
            itemView.findViewById(R.id.user_picker_exist_check).setVisibility(8);
            itemView.findViewById(R.id.user_picker_check).setVisibility(8);
            itemView.findViewById(R.id.user_picker_uncheck).setVisibility(8);
            float f = 1.0f;
            if (obj instanceof User) {
                User user = (User) obj;
                if (!isListContainsUser(this.exists, user) && ((arrayList = this.existsIds) == null || !arrayList.contains(user.id()))) {
                    if (isListContainsUser(this.users, user)) {
                        itemView.findViewById(R.id.user_picker_check).setVisibility(0);
                    } else {
                        itemView.findViewById(R.id.user_picker_uncheck).setVisibility(0);
                    }
                } else {
                    itemView.findViewById(R.id.user_picker_exist_check).setVisibility(0);
                }
                if (user.canNotBeInvitedToChat) {
                    f = 0.5f;
                }
                itemView.setAlpha(f);
            } else {
                itemView.setAlpha(1.0f);
                itemView.findViewById(R.id.user_picker_uncheck).setVisibility(0);
            }
            return itemView;
        }

        @Override // com.narvii.list.NVPagedAdapter, com.narvii.list.NVAdapter
        public void onRestoreInstanceState(Bundle bundle) {
            super.onRestoreInstanceState(bundle);
            MultiUserPickerFragment.this.instantSearchListener.setKeyword(bundle.getString("keyword"));
        }

        @Override // com.narvii.list.NVPagedAdapter, com.narvii.list.NVAdapter
        public Bundle onSaveInstanceState() {
            Bundle bundleOnSaveInstanceState = super.onSaveInstanceState();
            bundleOnSaveInstanceState.putString("keyword", MultiUserPickerFragment.this.instantSearchListener.getKeyword());
            return bundleOnSaveInstanceState;
        }
    }

    private class SearchAdapter extends NVAdapter implements SearchBar.OnSearchListener {
        View view;

        @Override // android.widget.Adapter
        public int getCount() {
            return 1;
        }

        @Override // android.widget.Adapter
        public Object getItem(int i10) {
            return this;
        }

        @Override // android.widget.Adapter
        public long getItemId(int i10) {
            return 0L;
        }

        public SearchAdapter() {
            super(MultiUserPickerFragment.this);
        }

        @Override // android.widget.Adapter
        public View getView(int i10, View view, ViewGroup viewGroup) {
            if (this.view == null) {
                View viewCreateView = createView(R.layout.search_bar_scrollable_layout, viewGroup, view);
                this.view = viewCreateView;
                MultiUserPickerFragment.this.thumbContainer = (LinearLayout) viewCreateView.findViewById(R.id.thumb_container);
                MultiUserPickerFragment.this.searchBar = (SearchBar) this.view.findViewById(R.id.search_bar);
                MultiUserPickerFragment.this.searchBar.setOnSearchListener(this);
                MultiUserPickerFragment.this.searchIcon = this.view.findViewById(R.id.search_icon);
                MultiUserPickerFragment.this.thumbContainerScroller = (HorizontalScrollView) this.view.findViewById(R.id.search_thumb_scroller);
            }
            return this.view;
        }

        @Override // com.narvii.widget.SearchBar.OnSearchListener
        public void onSearch(SearchBar searchBar, String str) {
            MultiUserPickerFragment.this.instantSearchListener.onSearch(searchBar, str);
        }

        @Override // com.narvii.widget.SearchBar.OnSearchListener
        public void onTextChanged(SearchBar searchBar, String str) {
            MultiUserPickerFragment.this.instantSearchListener.onTextChanged(searchBar, str);
        }
    }

    @Override // com.narvii.app.NVFragment
    public boolean isModel() {
        return true;
    }

    @Override // com.narvii.list.NVListFragment
    public boolean isSwipeRefresh() {
        return true;
    }

    protected boolean showSearchBar() {
        return this.showSearchBar;
    }

    public String target() {
        return "member";
    }

    private void clearSearchEdit() {
        if (this.searchBar == null || this.adapter == null || !showSearchBar()) {
            return;
        }
        this.searchBar.setText(null);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void updateThumbViews() {
        if (this.thumbContainer == null || this.adapter == null || !showSearchBar()) {
            return;
        }
        this.thumbContainer.removeAllViews();
        ArrayList<User> arrayList = this.adapter.users;
        if (arrayList == null || arrayList.size() <= 0) {
            View view = this.searchIcon;
            if (view != null) {
                view.setVisibility(0);
                return;
            }
            return;
        }
        for (int i10 = 0; i10 < this.adapter.users.size(); i10++) {
            User user = this.adapter.users.get(i10);
            if (user != null) {
                final ThumbImageView thumbImageView = new ThumbImageView(getContext());
                int iDpToPx = (int) Utils.dpToPx(getContext(), 2.0f);
                int iDpToPx2 = (int) Utils.dpToPx(getContext(), 15.0f);
                thumbImageView.setPadding(iDpToPx, iDpToPx, iDpToPx, iDpToPx);
                int iDpToPx3 = (int) Utils.dpToPx(getContext(), 30.0f);
                LinearLayout.LayoutParams layoutParams = new LinearLayout.LayoutParams(iDpToPx3, iDpToPx3);
                thumbImageView.defaultDrawable = getResources().getDrawable(R.drawable.user_avatar_placeholder);
                thumbImageView.groundingColor = getResources().getColor(R.color.user_avatar_grounding_color);
                thumbImageView.strokeWidth = Utils.dpToPx(getContext(), user.isSubscribeMemberShip() ? 1.5f : 0.5f);
                thumbImageView.strokeColor = getResources().getColor(user.isSubscribeMemberShip() ? R.color.avatar_stroke_membership : R.color.avatar_stroke_normal);
                thumbImageView.cornerRadius = iDpToPx2;
                thumbImageView.setImageUrl(user.icon());
                thumbImageView.setTag(R.id.chat_pick_item, user);
                thumbImageView.setOnClickListener(new View.OnClickListener() { // from class: com.narvii.user.picker.MultiUserPickerFragment.2
                    @Override // android.view.View.OnClickListener
                    public void onClick(View view2) {
                        if (thumbImageView.getTag(R.id.chat_pick_item) instanceof User) {
                            MultiUserPickerFragment.this.adapter.users.remove((User) thumbImageView.getTag(R.id.chat_pick_item));
                        }
                        MultiUserPickerFragment.this.updateThumbViews();
                        MultiUserPickerFragment.this.adapter.notifyDataSetChanged();
                    }
                });
                this.thumbContainer.addView(thumbImageView, layoutParams);
            }
        }
        View view2 = this.searchIcon;
        if (view2 != null) {
            view2.setVisibility(8);
        }
    }

    @Override // com.narvii.list.NVListFragment
    protected ListAdapter createAdapter(Bundle bundle) {
        Adapter adapter = new Adapter();
        this.adapter = adapter;
        this.instantSearchListener.attachAdapter(adapter);
        if (bundle == null) {
            String stringParam = getStringParam("users");
            this.adapter.users = JacksonUtils.readListAs(stringParam, User.class);
            this.showSearchBar = getBooleanParam("showSearchBar", false);
            this.maxMember = getIntParam("maxMember");
        }
        String stringParam2 = getStringParam("exists");
        this.adapter.exists = JacksonUtils.readListAs(stringParam2, User.class);
        String stringParam3 = getStringParam("userids");
        this.adapter.existsIds = JacksonUtils.readListAs(stringParam3, String.class);
        MergeAdapter mergeAdapter = new MergeAdapter(this) { // from class: com.narvii.user.picker.MultiUserPickerFragment.1
            @Override // android.widget.BaseAdapter, android.widget.Adapter
            public boolean hasStableIds() {
                return true;
            }
        };
        SearchAdapter searchAdapter = new SearchAdapter();
        if (showSearchBar()) {
            mergeAdapter.addAdapter(searchAdapter);
        }
        mergeAdapter.addAdapter(this.adapter, true);
        return mergeAdapter;
    }

    protected void onConfirmPick(List<User> list) {
        Intent intent = new Intent();
        intent.putExtra("users", JacksonUtils.writeAsString(this.adapter.users));
        setResult(-1, intent);
        finish();
    }

    @Override // com.narvii.list.NVListFragment, com.narvii.app.NVFragment, androidx.fragment.app.Fragment
    public void onCreate(Bundle bundle) {
        int i10;
        super.onCreate(bundle);
        CommunityConfigHelper communityConfigHelper = new CommunityConfigHelper(this);
        this.communityConfigHelper = communityConfigHelper;
        boolean zIsChatSpamProtectionEnabled = communityConfigHelper.isChatSpamProtectionEnabled();
        this.spamProtection = zIsChatSpamProtectionEnabled;
        if (zIsChatSpamProtectionEnabled) {
            i10 = R.string.user_my_followers;
        } else {
            i10 = R.string.community_all_members;
        }
        setTitle(i10);
        setScrollToHideKeyboard(true);
        setHasOptionsMenu(true);
    }

    @Override // androidx.fragment.app.Fragment
    public void onCreateOptionsMenu(Menu menu, MenuInflater menuInflater) {
        super.onCreateOptionsMenu(menu, menuInflater);
        menu.add(0, android.R.string.ok, 0, android.R.string.ok).setIcon(new ActionBarIcon(getContext(), R.string.fa_check)).setShowAsAction(2);
    }

    @Override // androidx.fragment.app.Fragment
    public boolean onOptionsItemSelected(MenuItem menuItem) {
        if (menuItem.getItemId() == 17039370) {
            onConfirmPick(this.adapter.users);
        }
        return super.onOptionsItemSelected(menuItem);
    }

    @Override // com.narvii.list.NVListFragment, com.narvii.app.NVFragment, com.narvii.app.theme.NVThemeFragment, androidx.fragment.app.Fragment
    public void onViewCreated(View view, Bundle bundle) {
        super.onViewCreated(view, bundle);
        AndroidBug5497Workaround.assistActivity(getActivity());
        View viewFindViewById = view.findViewById(R.id.empty_text);
        if (viewFindViewById instanceof TextView) {
            ((TextView) viewFindViewById).setText(getString(R.string.normal_empty_list));
        }
    }

    @Override // com.narvii.list.NVListFragment
    protected void updateViews() {
        boolean z6;
        int visibility;
        int visibility2;
        super.updateViews();
        int visibility3 = 0;
        if (this.instantSearchListener != null && showSearchBar() && !TextUtils.isEmpty(this.instantSearchListener.getKeyword())) {
            z6 = true;
        } else {
            z6 = false;
        }
        ListView listView = getListView();
        if (z6) {
            visibility = 0;
        } else {
            visibility = getListView().getVisibility();
        }
        listView.setVisibility(visibility);
        View view = this.progressView;
        if (view != null) {
            if (z6) {
                visibility2 = 4;
            } else {
                visibility2 = view.getVisibility();
            }
            view.setVisibility(visibility2);
        }
        SwipeRefreshLayout swipeRefreshLayout = this.swipeLayout;
        if (swipeRefreshLayout != null) {
            if (!z6) {
                visibility3 = swipeRefreshLayout.getVisibility();
            }
            swipeRefreshLayout.setVisibility(visibility3);
        }
    }
}
