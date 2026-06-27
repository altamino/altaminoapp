package com.narvii.user.picker;

import android.content.Intent;
import android.content.res.Resources;
import android.graphics.drawable.ColorDrawable;
import android.os.Bundle;
import android.text.TextUtils;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ListAdapter;
import android.widget.TextView;
import com.google.android.gms.measurement.api.AppMeasurementSdk;
import com.narvii.account.AccountService;
import com.narvii.amino.mastes.R;
import com.narvii.list.HideTopAdapter;
import com.narvii.list.NVListFragment;
import com.narvii.master.home.profile.GlobalProfileFragment;
import com.narvii.model.ExternalSource;
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

/* loaded from: classes3.dex */
public class SingleUserPickerFragment extends NVListFragment {
    Adapter adapter;
    CommunityConfigHelper communityConfigHelper;
    InstantSearchListener instantSearchListener = new InstantSearchListener();
    boolean spamProtection;

    @Override // com.narvii.app.NVFragment
    public boolean isModel() {
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

    private class WithSearchAdapter extends HideTopAdapter implements SearchBar.OnSearchListener {
        SearchBar searchBar;

        public WithSearchAdapter() {
            super(SingleUserPickerFragment.this);
        }

        @Override // com.narvii.list.HideTopAdapter
        public View getTopView(ViewGroup viewGroup, View view) {
            if (this.searchBar == null) {
                this.searchBar = (SearchBar) createView(R.layout.search_bar, viewGroup, view);
                this.searchBar.setOnSearchListener(this);
            }
            return this.searchBar;
        }

        @Override // com.narvii.widget.SearchBar.OnSearchListener
        public void onTextChanged(SearchBar searchBar, String str) {
            SingleUserPickerFragment.this.instantSearchListener.onTextChanged(searchBar, str);
        }

        @Override // com.narvii.widget.SearchBar.OnSearchListener
        public void onSearch(SearchBar searchBar, String str) {
            SingleUserPickerFragment.this.instantSearchListener.onSearch(searchBar, str);
        }
    }

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

        @Override // com.narvii.list.NVPagedAdapter
        protected ApiRequest createRequest(boolean z) {
            ApiRequest.Builder builderPath;
            SingleUserPickerFragment singleUserPickerFragment = SingleUserPickerFragment.this;
            if (singleUserPickerFragment.spamProtection) {
                String stringParam = singleUserPickerFragment.getStringParam("id");
                if (TextUtils.isEmpty(stringParam)) {
                    stringParam = ((AccountService) getService("account")).getUserId();
                }
                builderPath = ApiRequest.builder().path("/user-profile/" + stringParam + "/" + SingleUserPickerFragment.this.target());
                builderPath.param("type", AppMeasurementSdk.ConditionalUserProperty.NAME);
            } else {
                builderPath = ApiRequest.builder().path("/user-profile");
                builderPath.param("type", ExternalSource.EXTERNAL_SOURCE_ALL_ID);
            }
            if (!TextUtils.isEmpty(SingleUserPickerFragment.this.instantSearchListener.getKeyword())) {
                builderPath.param("q", SingleUserPickerFragment.this.instantSearchListener.getKeyword());
            }
            return builderPath.build();
        }

        /* JADX WARN: Removed duplicated region for block: B:12:0x002a  */
        @Override // com.narvii.user.list.UserListAdapter, com.narvii.list.NVPagedAdapter
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        protected android.view.View getItemView(java.lang.Object r3, android.view.View r4, android.view.ViewGroup r5) {
            /*
                r2 = this;
                android.view.View r4 = super.getItemView(r3, r4, r5)
                boolean r5 = r3 instanceof com.narvii.model.User
                if (r5 == 0) goto L2a
                com.narvii.model.User r3 = (com.narvii.model.User) r3
                java.util.List<com.narvii.model.User> r5 = r2.exists
                if (r5 == 0) goto L2a
                java.util.Iterator r5 = r5.iterator()
            L12:
                boolean r0 = r5.hasNext()
                if (r0 == 0) goto L2a
                java.lang.Object r0 = r5.next()
                com.narvii.model.User r0 = (com.narvii.model.User) r0
                java.lang.String r0 = r0.uid
                java.lang.String r1 = r3.uid
                boolean r0 = com.narvii.util.Utils.isEqualsNotNull(r0, r1)
                if (r0 == 0) goto L12
                r3 = 1
                goto L2b
            L2a:
                r3 = 0
            L2b:
                if (r3 == 0) goto L30
                android.graphics.drawable.ColorDrawable r3 = r2.existsBg
                goto L31
            L30:
                r3 = 0
            L31:
                r4.setBackgroundDrawable(r3)
                return r4
            */
            throw new UnsupportedOperationException("Method not decompiled: com.narvii.user.picker.SingleUserPickerFragment.Adapter.getItemView(java.lang.Object, android.view.View, android.view.ViewGroup):android.view.View");
        }

        @Override // com.narvii.user.list.UserListAdapter, com.narvii.list.NVPagedAdapter, com.narvii.list.NVAdapter, com.narvii.list.OnItemClickListener
        public boolean onItemClick(ListAdapter listAdapter, int i, Object obj, View view, View view2) {
            if (obj instanceof User) {
                User user = (User) obj;
                boolean z = false;
                List<User> list = this.exists;
                if (list != null) {
                    Iterator<User> it = list.iterator();
                    while (true) {
                        if (!it.hasNext()) {
                            break;
                        }
                        if (Utils.isEqualsNotNull(it.next().uid, user.uid)) {
                            z = true;
                            break;
                        }
                    }
                }
                if (!z) {
                    SingleUserPickerFragment.this.onPickUser(user);
                }
                return true;
            }
            return super.onItemClick(listAdapter, i, obj, view, view2);
        }
    }

    protected void onPickUser(User user) {
        Intent intent = new Intent();
        intent.putExtra(GlobalProfileFragment.KEY_USER, JacksonUtils.writeAsString(user));
        setResult(-1, intent);
        finish();
    }
}
