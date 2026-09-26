package com.narvii.prefs;

import android.content.Intent;
import android.os.Bundle;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ListAdapter;
import android.widget.ListView;
import android.widget.TextView;
import com.fasterxml.jackson.databind.node.ObjectNode;
import com.narvii.account.AccountService;
import com.narvii.adapter.RadioGroupAdapter;
import com.narvii.adapter.RadioItem;
import com.narvii.amino.master.R;
import com.narvii.app.FragmentWrapperActivity;
import com.narvii.community.MyCommunityListResponse;
import com.narvii.community.MyCommunityListService;
import com.narvii.config.ConfigService;
import com.narvii.list.DividerAdapter;
import com.narvii.list.MergeAdapter;
import com.narvii.list.NVAdapter;
import com.narvii.list.NVListFragment;
import com.narvii.list.NVPagedAdapter;
import com.narvii.list.prefs.PrefsAdapter;
import com.narvii.list.prefs.PrefsMargin;
import com.narvii.list.prefs.PrefsSection;
import com.narvii.master.CommunityListResponse;
import com.narvii.model.Community;
import com.narvii.model.User;
import com.narvii.model.api.ApiResponse;
import com.narvii.model.api.UserResponse;
import com.narvii.util.Callback;
import com.narvii.util.JacksonUtils;
import com.narvii.util.NVToast;
import com.narvii.util.Utils;
import com.narvii.util.dialog.ProgressDialog;
import com.narvii.util.http.ApiRequest;
import com.narvii.util.http.ApiResponseListener;
import com.narvii.util.http.ApiService;
import com.narvii.util.http.NameValuePair;
import com.narvii.util.text.TextUtils;
import com.narvii.widget.NVListView;
import com.narvii.widget.ThumbImageView;
import com.safedk.android.utils.Logger;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public class UserProfilePrivilegeFragment extends NVListFragment implements MyCommunityListService.MyCommunityListObserver {
    public AccountService accountService;
    CommunityPrivilegeAdapter communityPrivilegeAdapter;
    private String error;
    boolean isDarkTheme = false;
    boolean isGlobal;
    private MergeAdapter mergeAdapter;
    MyCommunityListService myCommunityListService;
    String privilegeKey;
    public RadioGroupAdapter radioGroupAdapter;
    private boolean requestFinished;
    private String subTitle;

    class CommunityPrivilegeAdapter extends NVAdapter {
        MyCommunityListService myCommunityListService;

        public static void safedk_NVAdapter_startActivity_5b31acbff248f36f6c86407552449fc2(NVAdapter p0, Intent p1) {
            Logger.d("SafeDK-Special|SafeDK: Call> Lcom/narvii/list/NVAdapter;->startActivity(Landroid/content/Intent;)V");
            if (p1 == null) {
                return;
            }
            p0.startActivity(p1);
        }

        @Override // android.widget.BaseAdapter, android.widget.ListAdapter
        public boolean areAllItemsEnabled() {
            return false;
        }

        @Override // android.widget.BaseAdapter, android.widget.Adapter
        public int getViewTypeCount() {
            return 4;
        }

        @Override // com.narvii.list.NVAdapter
        public boolean isDarkNVTheme() {
            return true;
        }

        @Override // android.widget.BaseAdapter, android.widget.Adapter
        public boolean isEmpty() {
            return false;
        }

        public CommunityPrivilegeAdapter() {
            super(UserProfilePrivilegeFragment.this);
            this.myCommunityListService = (MyCommunityListService) getService("myCommunityList");
            setDarkTheme(true);
        }

        @Override // com.narvii.list.NVAdapter
        public String errorMessage() {
            return this.myCommunityListService.errorMessage();
        }

        @Override // android.widget.Adapter
        public int getCount() {
            List<Community> list = this.myCommunityListService.list();
            if (!UserProfilePrivilegeFragment.this.accountService.hasAccount()) {
                return 0;
            }
            if (this.myCommunityListService.isEnd()) {
                return list.size();
            }
            if (list.size() > 0) {
                return list.size() + 1;
            }
            return 0;
        }

        @Override // android.widget.Adapter
        public Object getItem(int i10) {
            List<Community> list = this.myCommunityListService.list();
            if (i10 < list.size()) {
                return list.get(i10);
            }
            if (this.myCommunityListService.isEnd()) {
                return NVPagedAdapter.LIST_END;
            }
            return this.myCommunityListService.errorMessage() == null ? NVPagedAdapter.LOADING : NVPagedAdapter.ERROR;
        }

        @Override // com.narvii.list.NVAdapter
        public boolean isListShown() {
            return this.myCommunityListService.isEnd() || this.myCommunityListService.list().size() > 0;
        }

        @Override // com.narvii.list.NVAdapter
        public void onErrorRetry() {
            this.myCommunityListService.retryRetry();
        }

        @Override // com.narvii.list.NVAdapter, com.narvii.list.OnItemClickListener
        public boolean onItemClick(ListAdapter listAdapter, int i10, Object obj, View view, View view2) {
            if (!(obj instanceof Community)) {
                return super.onItemClick(listAdapter, i10, obj, view, view2);
            }
            Intent intent = FragmentWrapperActivity.intent(UserProfilePrivilegeFragment.class);
            intent.putExtra("__communityId", ((Community) obj).id);
            intent.putExtra("title", UserProfilePrivilegeFragment.this.getString(R.string.allow_inbound_chat_requests));
            intent.putExtra("privilegeKey", User.CHAT);
            safedk_NVAdapter_startActivity_5b31acbff248f36f6c86407552449fc2(this, intent);
            return true;
        }

        @Override // com.narvii.list.NVAdapter
        public void refresh(int i10, Callback<Integer> callback) {
            this.myCommunityListService.refresh(i10, callback);
        }

        @Override // android.widget.Adapter
        public long getItemId(int i10) {
            return getItem(i10).hashCode();
        }

        @Override // android.widget.BaseAdapter, android.widget.Adapter
        public int getItemViewType(int i10) {
            Object item = getItem(i10);
            if (item instanceof Community) {
                return 0;
            }
            if (item == NVPagedAdapter.LOADING) {
                return 2;
            }
            if (item == NVPagedAdapter.ERROR) {
                return 3;
            }
            return -1;
        }

        @Override // android.widget.Adapter
        public View getView(int i10, View view, ViewGroup viewGroup) {
            Object item = getItem(i10);
            if (item instanceof Community) {
                Community community = (Community) item;
                View viewCreateView = createView(R.layout.item_push_setting, viewGroup, view);
                ((ThumbImageView) viewCreateView.findViewById(R.id.community_icon)).setImageUrl(community.icon);
                ((TextView) viewCreateView.findViewById(R.id.community_name)).setText(community.name);
                ((TextView) viewCreateView.findViewById(R.id.community_name)).setTextColor(-1);
                return viewCreateView;
            }
            if (item == NVPagedAdapter.LOADING) {
                View viewCreateView2 = createView(R.layout.incubator_my_community_loading_item, viewGroup, view);
                this.myCommunityListService.loadNextPage(true);
                return viewCreateView2;
            }
            return createErrorItem(viewGroup, view, this.myCommunityListService.errorMessage());
        }

        @Override // android.widget.BaseAdapter, android.widget.ListAdapter
        public boolean isEnabled(int i10) {
            if (getItem(i10) == NVPagedAdapter.LOADING) {
                return false;
            }
            return super.isEnabled(i10);
        }

        void onResume() {
            if (!isListShown()) {
                this.myCommunityListService.loadNextPage(true);
            }
        }
    }

    @Override // com.narvii.list.NVListFragment
    protected int getSelectorDarkColor() {
        return 872415231;
    }

    @Override // com.narvii.community.MyCommunityListService.MyCommunityListObserver
    public void onReminderChanged(MyCommunityListService myCommunityListService) {
    }

    @Override // com.narvii.community.MyCommunityListService.MyCommunityListObserver
    public void onSuggestListChanged(MyCommunityListService myCommunityListService, CommunityListResponse communityListResponse) {
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void sendRequest(int i10) {
        ApiService apiService = (ApiService) getService("api");
        String userId = this.accountService.getUserId();
        ObjectNode objectNodeCreateObjectNode = JacksonUtils.createObjectNode();
        objectNodeCreateObjectNode.put(this.privilegeKey, i10);
        ApiRequest apiRequestBuild = ApiRequest.builder().post().path("user-profile/" + userId).param("extensions", objectNodeCreateObjectNode).build();
        final ProgressDialog progressDialog = new ProgressDialog(getContext());
        progressDialog.show();
        apiService.exec(apiRequestBuild, new ApiResponseListener<UserResponse>(UserResponse.class) { // from class: com.narvii.prefs.UserProfilePrivilegeFragment.8
            @Override // com.narvii.util.http.ApiResponseListener
            public void onFinish(ApiRequest apiRequest, UserResponse userResponse) throws Exception {
                super.onFinish(apiRequest, userResponse);
                if (UserProfilePrivilegeFragment.this.getActivity() == null) {
                    return;
                }
                progressDialog.dismiss();
                UserProfilePrivilegeFragment.this.accountService.updateProfile(userResponse.user, userResponse.timestamp, true);
                UserProfilePrivilegeFragment.this.getActivity().finish();
            }

            @Override // com.narvii.util.http.ApiResponseListener
            public void onFail(ApiRequest apiRequest, int i11, List<NameValuePair> list, String str, ApiResponse apiResponse, Throwable th) {
                super.onFail(apiRequest, i11, list, str, apiResponse, th);
                NVToast.makeText(UserProfilePrivilegeFragment.this.getContext(), str, 0).show();
                if (UserProfilePrivilegeFragment.this.getActivity() == null) {
                    return;
                }
                progressDialog.dismiss();
            }
        });
    }

    private void sendUserProfileRequest() {
        final AccountService accountService = (AccountService) getService("account");
        if (accountService.hasAccount()) {
            ((ApiService) getService("api")).exec(ApiRequest.builder().path("user-profile/" + accountService.getUserId()).build(), new ApiResponseListener<UserResponse>(UserResponse.class) { // from class: com.narvii.prefs.UserProfilePrivilegeFragment.7
                @Override // com.narvii.util.http.ApiResponseListener
                public void onFinish(ApiRequest apiRequest, UserResponse userResponse) throws Exception {
                    super.onFinish(apiRequest, userResponse);
                    UserProfilePrivilegeFragment.this.requestFinished = true;
                    UserProfilePrivilegeFragment.this.mergeAdapter.notifyDataSetChanged();
                    accountService.updateProfile(userResponse.user, userResponse.timestamp, false);
                    RadioGroupAdapter radioGroupAdapter = UserProfilePrivilegeFragment.this.radioGroupAdapter;
                    if (radioGroupAdapter != null) {
                        radioGroupAdapter.setSelectedItemId(accountService.getUserProfile().getPrivilege(UserProfilePrivilegeFragment.this.privilegeKey));
                    }
                }

                @Override // com.narvii.util.http.ApiResponseListener
                public void onFail(ApiRequest apiRequest, int i10, List<NameValuePair> list, String str, ApiResponse apiResponse, Throwable th) {
                    super.onFail(apiRequest, i10, list, str, apiResponse, th);
                    UserProfilePrivilegeFragment.this.error = str;
                    UserProfilePrivilegeFragment.this.requestFinished = true;
                    UserProfilePrivilegeFragment.this.mergeAdapter.notifyDataSetChanged();
                }
            });
        }
    }

    @Override // com.narvii.list.NVListFragment
    protected ListAdapter createAdapter(Bundle bundle) {
        this.mergeAdapter = new MergeAdapter(this) { // from class: com.narvii.prefs.UserProfilePrivilegeFragment.1
            @Override // com.narvii.list.MergeAdapter, com.narvii.list.NVAdapter
            public String errorMessage() {
                return UserProfilePrivilegeFragment.this.error;
            }

            @Override // com.narvii.list.MergeAdapter, com.narvii.list.NVAdapter
            public boolean isListShown() {
                return UserProfilePrivilegeFragment.this.requestFinished && TextUtils.isEmpty(UserProfilePrivilegeFragment.this.error);
            }
        };
        if (android.text.TextUtils.isEmpty(this.subTitle)) {
            this.mergeAdapter.addAdapter(new PrefsAdapter(this) { // from class: com.narvii.prefs.UserProfilePrivilegeFragment.3
                @Override // com.narvii.list.prefs.PrefsAdapter
                protected void buildCells(List<Object> list) {
                    list.add(new PrefsMargin(Utils.dpToPxInt(getContext(), 15.0f)));
                }
            });
        } else {
            this.mergeAdapter.addAdapter(new PrefsAdapter(this) { // from class: com.narvii.prefs.UserProfilePrivilegeFragment.2
                @Override // com.narvii.list.prefs.PrefsAdapter
                protected void buildCells(List<Object> list) {
                    PrefsSection prefsSection = new PrefsSection(UserProfilePrivilegeFragment.this.subTitle);
                    prefsSection.isAllCaps = false;
                    list.add(prefsSection);
                }
            });
        }
        DividerAdapter dividerAdapter = new DividerAdapter(this) { // from class: com.narvii.prefs.UserProfilePrivilegeFragment.4
            @Override // com.narvii.list.DividerAdapter
            protected int getDividerLayoutId() {
                return R.layout.prefs_divider;
            }
        };
        RadioGroupAdapter radioGroupAdapter = new RadioGroupAdapter(this) { // from class: com.narvii.prefs.UserProfilePrivilegeFragment.5
            @Override // com.narvii.adapter.RadioGroupAdapter
            protected void buildCells(List<RadioItem> list) {
                list.add(new RadioItem(1, User.getPrivilegeText(getContext(), 1, UserProfilePrivilegeFragment.this.privilegeKey)));
                list.add(new RadioItem(2, User.getPrivilegeText(getContext(), 2, UserProfilePrivilegeFragment.this.privilegeKey)));
                list.add(new RadioItem(3, User.getPrivilegeText(getContext(), 3, UserProfilePrivilegeFragment.this.privilegeKey)));
            }

            @Override // com.narvii.adapter.RadioGroupAdapter, com.narvii.list.NVAdapter, com.narvii.list.OnItemClickListener
            public boolean onItemClick(ListAdapter listAdapter, int i10, Object obj, View view, View view2) {
                super.onItemClick(listAdapter, i10, obj, view, view2);
                UserProfilePrivilegeFragment.this.sendRequest(getSelectedItemId());
                return true;
            }
        };
        this.radioGroupAdapter = radioGroupAdapter;
        radioGroupAdapter.setSelectedItemId(this.accountService.getUserProfile().getPrivilege(this.privilegeKey));
        dividerAdapter.setAdapter(this.radioGroupAdapter);
        this.mergeAdapter.addAdapter(dividerAdapter);
        if (this.isGlobal) {
            this.communityPrivilegeAdapter = new CommunityPrivilegeAdapter();
            this.mergeAdapter.addAdapter(new PrefsAdapter(this) { // from class: com.narvii.prefs.UserProfilePrivilegeFragment.6
                @Override // com.narvii.list.prefs.PrefsAdapter
                protected void buildCells(List<Object> list) {
                    PrefsSection prefsSection = new PrefsSection(R.string.communities);
                    prefsSection.isAllCaps = false;
                    list.add(prefsSection);
                }

                @Override // com.narvii.list.prefs.PrefsAdapter, android.widget.Adapter
                public int getCount() {
                    CommunityPrivilegeAdapter communityPrivilegeAdapter = UserProfilePrivilegeFragment.this.communityPrivilegeAdapter;
                    if (communityPrivilegeAdapter == null || communityPrivilegeAdapter.getCount() <= 0) {
                        return 0;
                    }
                    return super.getCount();
                }
            });
            this.mergeAdapter.addAdapter(this.communityPrivilegeAdapter);
        }
        return this.mergeAdapter;
    }

    @Override // com.narvii.community.MyCommunityListService.MyCommunityListObserver
    public void onListChanged(MyCommunityListService myCommunityListService, MyCommunityListResponse myCommunityListResponse, Integer num) {
        this.mergeAdapter.notifyDataSetChanged();
    }

    @Override // com.narvii.list.NVListFragment, com.narvii.app.NVFragment, androidx.fragment.app.Fragment
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        MyCommunityListService myCommunityListService = (MyCommunityListService) getService("myCommunityList");
        this.myCommunityListService = myCommunityListService;
        myCommunityListService.addObserver(this);
        this.privilegeKey = getStringParam("privilegeKey");
        this.accountService = (AccountService) getService("account");
        setTitle(getStringParam("title"));
        this.subTitle = getStringParam("subTitle");
        boolean z6 = false;
        this.isDarkTheme = getBooleanParam("isDarkTheme", false);
        int i10 = 1;
        if (((ConfigService) getService("config")).getCommunityId() == 0) {
            z6 = true;
        }
        this.isGlobal = z6;
        if (z6) {
            this.isDarkTheme = true;
        }
        if (this.isDarkTheme) {
            i10 = 2;
        }
        setNVThemeValue(i10);
        sendUserProfileRequest();
    }

    @Override // com.narvii.list.NVListFragment
    protected void onErrorRetry() {
        super.onErrorRetry();
        this.error = null;
        sendUserProfileRequest();
    }

    @Override // com.narvii.list.NVListFragment
    protected void onListViewCreated(ListView listView, Bundle bundle) {
        super.onListViewCreated(listView, bundle);
        listView.setDivider(null);
        listView.setDividerHeight(0);
    }

    @Override // com.narvii.list.NVListFragment, com.narvii.list.refresh.SwipeRefreshLayout.OnRefreshListener
    public void onRefresh() {
        super.onRefresh();
        sendUserProfileRequest();
    }

    @Override // com.narvii.list.NVListFragment, com.narvii.app.NVFragment, androidx.fragment.app.Fragment
    public void onResume() {
        super.onResume();
        if (this.isGlobal) {
            this.communityPrivilegeAdapter.onResume();
        }
    }

    @Override // com.narvii.list.NVListFragment, com.narvii.app.theme.NVThemeFragment
    public void onThemeChange(int i10) {
        super.onThemeChange(i10);
        if (i10 == 2) {
            int color = getResources().getColor(R.color.color_default_primary);
            ((NVListView) getListView()).setOverscrollStretchHeader(color);
            ((NVListView) getListView()).setOverscrollStretchFooter(color);
            ((NVListView) getListView()).setListContentBackgroundColor(0);
            return;
        }
        if (i10 == 1) {
            int color2 = getResources().getColor(R.color.prefs_background);
            ((NVListView) getListView()).setOverscrollStretchHeader(color2);
            ((NVListView) getListView()).setOverscrollStretchFooter(color2);
            ((NVListView) getListView()).setListContentBackgroundColor(-1);
        }
    }
}
