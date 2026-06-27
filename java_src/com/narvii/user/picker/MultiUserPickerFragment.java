package com.narvii.user.picker;

import android.content.Intent;
import android.content.res.Resources;
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
import android.widget.TextView;
import com.google.android.gms.measurement.api.AppMeasurementSdk;
import com.narvii.account.AccountService;
import com.narvii.amino.mastes.R;
import com.narvii.list.MergeAdapter;
import com.narvii.list.NVAdapter;
import com.narvii.list.NVListFragment;
import com.narvii.list.refresh.SwipeRefreshLayout;
import com.narvii.model.ExternalSource;
import com.narvii.model.User;
import com.narvii.modulization.CommunityConfigHelper;
import com.narvii.search.InstantSearchListener;
import com.narvii.user.list.UserListAdapter;
import com.narvii.util.ActionBarIcon;
import com.narvii.util.AndroidBug5497Workaround;
import com.narvii.util.JacksonUtils;
import com.narvii.util.Utils;
import com.narvii.util.http.ApiRequest;
import com.narvii.widget.SearchBar;
import com.narvii.widget.ThumbImageView;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

/* loaded from: classes3.dex */
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

    @Override // com.narvii.app.NVFragment
    public boolean isModel() {
        return true;
    }

    @Override // com.narvii.list.NVListFragment
    public boolean isSwipeRefresh() {
        return true;
    }

    public String target() {
        return "member";
    }

    @Override // com.narvii.list.NVListFragment, com.narvii.app.NVFragment, android.support.v4.app.Fragment
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        this.communityConfigHelper = new CommunityConfigHelper(this);
        this.spamProtection = this.communityConfigHelper.isChatSpamProtectionEnabled();
        setTitle(this.spamProtection ? R.string.user_my_followers : R.string.community_all_members);
        setScrollToHideKeyboard(true);
        setHasOptionsMenu(true);
    }

    @Override // com.narvii.list.NVListFragment, com.narvii.app.NVFragment, com.narvii.app.theme.NVThemeFragment, android.support.v4.app.Fragment
    public void onViewCreated(View view, Bundle bundle) throws Resources.NotFoundException {
        super.onViewCreated(view, bundle);
        AndroidBug5497Workaround.assistActivity(getActivity());
        View viewFindViewById = view.findViewById(R.id.empty_text);
        if (viewFindViewById instanceof TextView) {
            ((TextView) viewFindViewById).setText(getString(R.string.normal_empty_list));
        }
    }

    protected boolean showSearchBar() {
        return this.showSearchBar;
    }

    @Override // com.narvii.list.NVListFragment
    protected ListAdapter createAdapter(Bundle bundle) {
        this.adapter = new Adapter();
        this.instantSearchListener.attachAdapter(this.adapter);
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

    @Override // android.support.v4.app.Fragment
    public void onCreateOptionsMenu(Menu menu, MenuInflater menuInflater) {
        super.onCreateOptionsMenu(menu, menuInflater);
        menu.add(0, android.R.string.ok, 0, android.R.string.ok).setIcon(new ActionBarIcon(getContext(), R.string.fa_check)).setShowAsAction(2);
    }

    @Override // android.support.v4.app.Fragment
    public boolean onOptionsItemSelected(MenuItem menuItem) {
        if (menuItem.getItemId() == 17039370) {
            onConfirmPick(this.adapter.users);
        }
        return super.onOptionsItemSelected(menuItem);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.narvii.list.NVListFragment
    public void updateViews() {
        super.updateViews();
        boolean z = (this.instantSearchListener == null || !showSearchBar() || TextUtils.isEmpty(this.instantSearchListener.getKeyword())) ? false : true;
        getListView().setVisibility(z ? 0 : getListView().getVisibility());
        View view = this.progressView;
        if (view != null) {
            view.setVisibility(z ? 4 : view.getVisibility());
        }
        SwipeRefreshLayout swipeRefreshLayout = this.swipeLayout;
        if (swipeRefreshLayout != null) {
            swipeRefreshLayout.setVisibility(z ? 0 : swipeRefreshLayout.getVisibility());
        }
    }

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

        @Override // com.narvii.list.NVPagedAdapter
        protected ApiRequest createRequest(boolean z) {
            ApiRequest.Builder builderPath;
            MultiUserPickerFragment multiUserPickerFragment = MultiUserPickerFragment.this;
            if (multiUserPickerFragment.spamProtection) {
                String stringParam = multiUserPickerFragment.getStringParam("id");
                if (TextUtils.isEmpty(stringParam)) {
                    stringParam = ((AccountService) getService("account")).getUserId();
                }
                builderPath = ApiRequest.builder().path("/user-profile/" + stringParam + "/" + MultiUserPickerFragment.this.target());
                builderPath.param("type", AppMeasurementSdk.ConditionalUserProperty.NAME);
            } else {
                builderPath = ApiRequest.builder().path("/user-profile");
                builderPath.param("type", ExternalSource.EXTERNAL_SOURCE_ALL_ID);
            }
            if (!TextUtils.isEmpty(MultiUserPickerFragment.this.instantSearchListener.getKeyword())) {
                builderPath.param("q", MultiUserPickerFragment.this.instantSearchListener.getKeyword());
            }
            String stringParam2 = MultiUserPickerFragment.this.getStringParam("threadId");
            if (!TextUtils.isEmpty(stringParam2)) {
                builderPath.param("threadId", stringParam2);
            }
            builderPath.param("needCheckCanBeInvitedToChat", true);
            return builderPath.build();
        }

        @Override // com.narvii.user.list.UserListAdapter, com.narvii.list.NVPagedAdapter
        protected View getItemView(Object obj, View view, ViewGroup viewGroup) {
            ArrayList<String> arrayList;
            View itemView = super.getItemView(obj, view, viewGroup);
            itemView.findViewById(R.id.user_picker_exist_check).setVisibility(8);
            itemView.findViewById(R.id.user_picker_check).setVisibility(8);
            itemView.findViewById(R.id.user_picker_uncheck).setVisibility(8);
            if (obj instanceof User) {
                User user = (User) obj;
                if (isListContainsUser(this.exists, user) || ((arrayList = this.existsIds) != null && arrayList.contains(user.id()))) {
                    itemView.findViewById(R.id.user_picker_exist_check).setVisibility(0);
                } else if (isListContainsUser(this.users, user)) {
                    itemView.findViewById(R.id.user_picker_check).setVisibility(0);
                } else {
                    itemView.findViewById(R.id.user_picker_uncheck).setVisibility(0);
                }
                itemView.setAlpha(user.canNotBeInvitedToChat ? 0.5f : 1.0f);
            } else {
                itemView.setAlpha(1.0f);
                itemView.findViewById(R.id.user_picker_uncheck).setVisibility(0);
            }
            return itemView;
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

        /* JADX WARN: Removed duplicated region for block: B:24:0x008c  */
        /* JADX WARN: Removed duplicated region for block: B:25:0x008e  */
        /* JADX WARN: Removed duplicated region for block: B:42:0x00f1  */
        /* JADX WARN: Removed duplicated region for block: B:49:0x0111  */
        @Override // com.narvii.user.list.UserListAdapter, com.narvii.list.NVPagedAdapter, com.narvii.list.NVAdapter, com.narvii.list.OnItemClickListener
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public boolean onItemClick(android.widget.ListAdapter r3, int r4, java.lang.Object r5, android.view.View r6, android.view.View r7) {
            /*
                Method dump skipped, instructions count: 303
                To view this dump add '--comments-level debug' option
            */
            throw new UnsupportedOperationException("Method not decompiled: com.narvii.user.picker.MultiUserPickerFragment.Adapter.onItemClick(android.widget.ListAdapter, int, java.lang.Object, android.view.View, android.view.View):boolean");
        }
    }

    protected void onConfirmPick(List<User> list) {
        Intent intent = new Intent();
        intent.putExtra("users", JacksonUtils.writeAsString(this.adapter.users));
        setResult(-1, intent);
        finish();
    }

    private class SearchAdapter extends NVAdapter implements SearchBar.OnSearchListener {
        View view;

        @Override // android.widget.Adapter
        public int getCount() {
            return 1;
        }

        @Override // android.widget.Adapter
        public Object getItem(int i) {
            return this;
        }

        @Override // android.widget.Adapter
        public long getItemId(int i) {
            return 0L;
        }

        public SearchAdapter() {
            super(MultiUserPickerFragment.this);
        }

        @Override // com.narvii.widget.SearchBar.OnSearchListener
        public void onTextChanged(SearchBar searchBar, String str) {
            MultiUserPickerFragment.this.instantSearchListener.onTextChanged(searchBar, str);
        }

        @Override // com.narvii.widget.SearchBar.OnSearchListener
        public void onSearch(SearchBar searchBar, String str) {
            MultiUserPickerFragment.this.instantSearchListener.onSearch(searchBar, str);
        }

        @Override // android.widget.Adapter
        public View getView(int i, View view, ViewGroup viewGroup) {
            if (this.view == null) {
                this.view = createView(R.layout.search_bar_scrollable_layout, viewGroup, view);
                MultiUserPickerFragment.this.thumbContainer = (LinearLayout) this.view.findViewById(R.id.thumb_container);
                MultiUserPickerFragment.this.searchBar = (SearchBar) this.view.findViewById(R.id.search_bar);
                MultiUserPickerFragment.this.searchBar.setOnSearchListener(this);
                MultiUserPickerFragment.this.searchIcon = this.view.findViewById(R.id.search_icon);
                MultiUserPickerFragment.this.thumbContainerScroller = (HorizontalScrollView) this.view.findViewById(R.id.search_thumb_scroller);
            }
            return this.view;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void updateThumbViews() {
        if (this.thumbContainer == null || this.adapter == null || !showSearchBar()) {
            return;
        }
        this.thumbContainer.removeAllViews();
        ArrayList<User> arrayList = this.adapter.users;
        if (arrayList != null && arrayList.size() > 0) {
            for (int i = 0; i < this.adapter.users.size(); i++) {
                User user = this.adapter.users.get(i);
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
                        public void onClick(View view) {
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
            View view = this.searchIcon;
            if (view != null) {
                view.setVisibility(8);
                return;
            }
            return;
        }
        View view2 = this.searchIcon;
        if (view2 != null) {
            view2.setVisibility(0);
        }
    }

    private void clearSearchEdit() {
        if (this.searchBar == null || this.adapter == null || !showSearchBar()) {
            return;
        }
        this.searchBar.setText(null);
    }
}
