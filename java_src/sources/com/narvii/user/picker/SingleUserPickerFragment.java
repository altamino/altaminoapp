package com.narvii.user.picker;

import android.content.Intent;
import android.graphics.drawable.ColorDrawable;
import android.os.Bundle;
import android.text.TextUtils;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ListAdapter;
import android.widget.TextView;
import com.google.firebase.sessions.settings.c;
import com.narvii.account.AccountService;
import com.narvii.amino.master.R;
import com.narvii.list.HideTopAdapter;
import com.narvii.list.NVListFragment;
import com.narvii.master.home.profile.GlobalProfileFragment;
import com.narvii.model.User;
import com.narvii.modulization.CommunityConfigHelper;
import com.narvii.search.InstantSearchListener;
import com.narvii.user.list.UserListAdapter;
import com.narvii.util.AndroidBug5497Workaround;
import com.narvii.util.JacksonUtils;
import com.narvii.util.Utils;
import com.narvii.util.http.ApiRequest;
import com.narvii.widget.SearchBar;
import java.util.Iterator;
import java.util.List;

/* JADX INFO: loaded from: classes7.dex */
public class SingleUserPickerFragment extends NVListFragment {
    Adapter adapter;
    CommunityConfigHelper communityConfigHelper;
    InstantSearchListener instantSearchListener = new InstantSearchListener();
    boolean spamProtection;

    private class Adapter extends UserListAdapter {
        List<User> exists;
        ColorDrawable existsBg;

        @Override // com.narvii.user.list.UserListAdapter
        protected boolean filterYourself() {
            return true;
        }

        public Adapter() {
            super(SingleUserPickerFragment.this);
            this.existsBg = new ColorDrawable(SingleUserPickerFragment.this.getResources().getColor(R.color.chat_exists_bg));
        }

        @Override // com.narvii.list.NVPagedAdapter
        protected ApiRequest createRequest(boolean z6) {
            ApiRequest.Builder builderPath;
            SingleUserPickerFragment singleUserPickerFragment = SingleUserPickerFragment.this;
            if (singleUserPickerFragment.spamProtection) {
                String stringParam = singleUserPickerFragment.getStringParam("id");
                if (TextUtils.isEmpty(stringParam)) {
                    stringParam = ((AccountService) getService("account")).getUserId();
                }
                builderPath = ApiRequest.builder().path("/user-profile/" + stringParam + c.FORWARD_SLASH_STRING + SingleUserPickerFragment.this.target());
                builderPath.param("type", "name");
            } else {
                builderPath = ApiRequest.builder().path("/user-profile");
                builderPath.param("type", "all");
            }
            if (!TextUtils.isEmpty(SingleUserPickerFragment.this.instantSearchListener.getKeyword())) {
                builderPath.param("q", SingleUserPickerFragment.this.instantSearchListener.getKeyword());
            }
            return builderPath.build();
        }

        @Override // com.narvii.user.list.UserListAdapter, com.narvii.list.NVPagedAdapter, com.narvii.list.NVAdapter, com.narvii.list.OnItemClickListener
        public boolean onItemClick(ListAdapter listAdapter, int i10, Object obj, View view, View view2) {
            if (!(obj instanceof User)) {
                return super.onItemClick(listAdapter, i10, obj, view, view2);
            }
            User user = (User) obj;
            List<User> list = this.exists;
            if (list != null) {
                Iterator<User> it = list.iterator();
                while (it.hasNext()) {
                    if (Utils.isEqualsNotNull(it.next().uid, user.uid)) {
                        return true;
                    }
                }
            }
            SingleUserPickerFragment.this.onPickUser(user);
            return true;
        }

        /* JADX WARN: Code duplicated, block: B:12:0x002b  */
        @Override // com.narvii.user.list.UserListAdapter, com.narvii.list.NVPagedAdapter
        protected View getItemView(Object obj, View view, ViewGroup viewGroup) {
            ColorDrawable colorDrawable;
            View itemView = super.getItemView(obj, view, viewGroup);
            if (obj instanceof User) {
                User user = (User) obj;
                List<User> list = this.exists;
                if (list != null) {
                    Iterator<User> it = list.iterator();
                    while (it.hasNext()) {
                        if (Utils.isEqualsNotNull(it.next().uid, user.uid)) {
                            colorDrawable = this.existsBg;
                        }
                    }
                    colorDrawable = null;
                } else {
                    colorDrawable = null;
                }
            } else {
                colorDrawable = null;
            }
            itemView.setBackgroundDrawable(colorDrawable);
            return itemView;
        }

        @Override // com.narvii.list.NVPagedAdapter, com.narvii.list.NVAdapter
        public void onRestoreInstanceState(Bundle bundle) {
            super.onRestoreInstanceState(bundle);
            SingleUserPickerFragment.this.instantSearchListener.setKeyword(bundle.getString("keyword"));
        }

        @Override // com.narvii.list.NVPagedAdapter, com.narvii.list.NVAdapter
        public Bundle onSaveInstanceState() {
            Bundle bundleOnSaveInstanceState = super.onSaveInstanceState();
            bundleOnSaveInstanceState.putString("keyword", SingleUserPickerFragment.this.instantSearchListener.getKeyword());
            return bundleOnSaveInstanceState;
        }
    }

    private class WithSearchAdapter extends HideTopAdapter implements SearchBar.OnSearchListener {
        SearchBar searchBar;

        public WithSearchAdapter() {
            super(SingleUserPickerFragment.this);
        }

        @Override // com.narvii.list.HideTopAdapter
        public View getTopView(ViewGroup viewGroup, View view) {
            if (this.searchBar == null) {
                SearchBar searchBar = (SearchBar) createView(R.layout.search_bar, viewGroup, view);
                this.searchBar = searchBar;
                searchBar.setOnSearchListener(this);
            }
            return this.searchBar;
        }

        @Override // com.narvii.widget.SearchBar.OnSearchListener
        public void onSearch(SearchBar searchBar, String str) {
            SingleUserPickerFragment.this.instantSearchListener.onSearch(searchBar, str);
        }

        @Override // com.narvii.widget.SearchBar.OnSearchListener
        public void onTextChanged(SearchBar searchBar, String str) {
            SingleUserPickerFragment.this.instantSearchListener.onTextChanged(searchBar, str);
        }
    }

    @Override // com.narvii.app.NVFragment
    public boolean isModel() {
        return true;
    }

    public String target() {
        return "member";
    }

    @Override // com.narvii.list.NVListFragment
    protected ListAdapter createAdapter(Bundle bundle) {
        this.adapter = new Adapter();
        String stringParam = getStringParam("exists");
        this.adapter.exists = JacksonUtils.readListAs(stringParam, User.class);
        WithSearchAdapter withSearchAdapter = new WithSearchAdapter();
        withSearchAdapter.setAdapter(this.adapter);
        this.instantSearchListener.attachAdapter(this.adapter);
        return withSearchAdapter;
    }

    protected void onPickUser(User user) {
        Intent intent = new Intent();
        intent.putExtra(GlobalProfileFragment.KEY_USER, JacksonUtils.writeAsString(user));
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
}
