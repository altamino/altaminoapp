package com.narvii.visitor;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.content.res.Resources;
import android.graphics.drawable.ColorDrawable;
import android.os.Bundle;
import android.support.v4.content.ContextCompat;
import android.view.LayoutInflater;
import android.view.Menu;
import android.view.MenuInflater;
import android.view.MenuItem;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.ListAdapter;
import android.widget.ListView;
import android.widget.TextView;
import com.narvii.account.AccountService;
import com.narvii.amino.mastes.R;
import com.narvii.app.FragmentWrapperActivity;
import com.narvii.app.NVContext;
import com.narvii.app.theme.NVTheme;
import com.narvii.config.ConfigService;
import com.narvii.list.NVListFragment;
import com.narvii.list.NVPagedAdapter;
import com.narvii.logging.ActSemantic;
import com.narvii.logging.LogEvent;
import com.narvii.master.home.follow.GlobalFollowingListFragment;
import com.narvii.model.User;
import com.narvii.model.api.ApiResponse;
import com.narvii.user.list.FollowingListFragment;
import com.narvii.user.list.UserListHelper;
import com.narvii.user.list.UserListItemHost;
import com.narvii.user.profile.UserProfileFragment;
import com.narvii.util.DateTimeFormatter;
import com.narvii.util.Utils;
import com.narvii.util.ViewUtils;
import com.narvii.util.http.ApiRequest;
import com.narvii.util.http.ApiResponseListener;
import com.narvii.util.http.ApiService;
import com.narvii.util.http.NameValuePair;
import com.narvii.util.text.TextUtils;
import com.narvii.widget.NVImageView;
import com.narvii.widget.TintButton;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

/* loaded from: classes3.dex */
public class RecentVisitorListFragment extends NVListFragment {
    public static final int ERROR_CODE_OWNER_IN_PRIVATE_MODE = 299;
    AccountService accountService;
    Adapter adapter;
    boolean isGlobal;
    boolean isMe;
    int ownerPrivacyMode;
    String uid;
    UserListHelper userListHelper;
    private long totalVisitorsCount = 0;
    final BroadcastReceiver receiver = new BroadcastReceiver() { // from class: com.narvii.visitor.RecentVisitorListFragment.1
        @Override // android.content.BroadcastReceiver
        public void onReceive(Context context, Intent intent) {
            if (AccountService.ACTION_PRIVACY_MODE_CHANGED.equals(intent.getAction())) {
                RecentVisitorListFragment.this.mayPrivacyModeChanged();
            }
        }
    };

    @Override // com.narvii.app.NVFragment, com.narvii.logging.Page
    public String getPageName() {
        return "RecentVisitors";
    }

    @Override // com.narvii.list.NVListFragment, com.narvii.app.NVFragment, android.support.v4.app.Fragment
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        setTitle(R.string.recent_visitors);
        setHasOptionsMenu(true);
        this.uid = getStringParam("uid");
        ConfigService configService = (ConfigService) getService("config");
        this.accountService = (AccountService) getService("account");
        this.isMe = Utils.isEqualsNotNull(this.accountService.getUserId(), this.uid);
        if (bundle == null) {
            this.ownerPrivacyMode = getIntParam("privacyMode");
        } else {
            this.ownerPrivacyMode = bundle.getInt("privacyMode");
        }
        this.isGlobal = configService.getCommunityId() == 0;
        if (this.uid == null) {
            finish();
        } else {
            registerLocalReceiver(this.receiver, new IntentFilter(AccountService.ACTION_PRIVACY_MODE_CHANGED));
        }
    }

    @Override // com.narvii.app.NVFragment, android.support.v4.app.Fragment
    public void onActivityCreated(Bundle bundle) throws IllegalAccessException, NoSuchFieldException, IllegalArgumentException {
        super.onActivityCreated(bundle);
        if (this.isGlobal) {
            setActionBarCustomDrawable(new ColorDrawable(-15528381));
            setDarkTheme(true);
        }
    }

    @Override // com.narvii.list.NVListFragment, com.narvii.app.NVFragment, android.support.v4.app.Fragment
    public void onSaveInstanceState(Bundle bundle) {
        super.onSaveInstanceState(bundle);
        bundle.putInt("privacyMode", this.ownerPrivacyMode);
    }

    @Override // com.narvii.list.NVListFragment, com.narvii.app.NVFragment, android.support.v4.app.Fragment
    public void onDestroy() {
        unregisterLocalReceiver(this.receiver);
        super.onDestroy();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void updatePrivacyViews() {
        if (getView() == null) {
            return;
        }
        boolean z = this.ownerPrivacyMode == 2;
        ViewUtils.show(getView(), R.id.in_privacy_mode, z);
        ViewUtils.show(getView(), R.id.private_mode_setting_layout, this.isMe);
        ViewUtils.show(getView(), R.id.list_frame, !z);
        ((TextView) getView().findViewById(R.id.in_private_mode_hint)).setText(this.isMe ? R.string.me_in_private_mode_hint : R.string.other_in_private_mode_hint);
        ((ImageView) getView().findViewById(R.id.image_private_mode)).setImageResource(this.isGlobal ? R.drawable.image_private_mode_dark : R.drawable.image_private_mode);
        updateActionBarTitle(z ? 0L : this.totalVisitorsCount);
    }

    @Override // android.support.v4.app.Fragment
    public void onCreateOptionsMenu(Menu menu, MenuInflater menuInflater) {
        menu.add(0, R.string.go_to_settings, 0, R.string.go_to_settings).setIcon(R.drawable.ic_menu_setting).setShowAsAction(2);
        super.onCreateOptionsMenu(menu, menuInflater);
    }

    @Override // android.support.v4.app.Fragment
    public void onPrepareOptionsMenu(Menu menu) {
        super.onPrepareOptionsMenu(menu);
        menu.findItem(R.string.go_to_settings).setVisible(this.isMe);
    }

    @Override // com.narvii.list.NVListFragment, android.support.v4.app.Fragment
    public View onCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        return layoutInflater.inflate(R.layout.fragment_recent_visitor, viewGroup, false);
    }

    @Override // android.support.v4.app.Fragment
    public boolean onOptionsItemSelected(MenuItem menuItem) {
        if (menuItem.getItemId() == R.string.go_to_settings) {
            LogEvent.clickBuilder(this, ActSemantic.pageEnter).area("SettingIcon").send();
            goToVisitorSettingsPage();
            return true;
        }
        return super.onOptionsItemSelected(menuItem);
    }

    @Override // com.narvii.list.NVListFragment
    protected ListAdapter createAdapter(Bundle bundle) {
        this.adapter = new Adapter(this);
        if (this.isGlobal) {
            this.adapter.setDarkTheme(true);
        }
        return this.adapter;
    }

    @Override // com.narvii.list.NVListFragment
    protected void onListViewCreated(ListView listView, Bundle bundle) {
        super.onListViewCreated(listView, bundle);
        listView.setDivider(null);
        listView.setDividerHeight(0);
    }

    @Override // com.narvii.list.NVListFragment, com.narvii.app.NVFragment, com.narvii.app.theme.NVThemeFragment, android.support.v4.app.Fragment
    public void onViewCreated(View view, Bundle bundle) throws Resources.NotFoundException {
        super.onViewCreated(view, bundle);
        if (this.isGlobal) {
            view.setBackgroundColor(-15528381);
        }
        setNVThemeValue(this.isGlobal ? 2 : 1);
        updateEmptyView();
        View viewFindViewById = view.findViewById(R.id.in_privacy_mode);
        NVTheme.Companion.bindNVThemeView(getNVTheme(), viewFindViewById);
        viewFindViewById.findViewById(R.id.private_mode_setting_layout).setOnClickListener(new View.OnClickListener() { // from class: com.narvii.visitor.RecentVisitorListFragment.2
            @Override // android.view.View.OnClickListener
            public void onClick(View view2) {
                LogEvent.clickBuilder(RecentVisitorListFragment.this, ActSemantic.pageEnter).area("SettingButton").send();
                RecentVisitorListFragment.this.goToVisitorSettingsPage();
            }
        });
        updatePrivacyViews();
    }

    @Override // com.narvii.list.NVListFragment, com.narvii.app.NVFragment, android.support.v4.app.Fragment
    public void onPause() {
        super.onPause();
        if (this.isMe) {
            this.accountService.markRecentVisitorAsRead();
        }
    }

    private void updateEmptyView() {
        View emptyView = setEmptyView(R.layout.recent_visitors_empty_view);
        ViewUtils.show(emptyView, R.id.go_following_hint, this.isMe);
        ((ImageView) emptyView.findViewById(R.id.image_no_visitor)).setImageResource(this.isGlobal ? R.drawable.image_no_visitor_dark : R.drawable.image_no_visitor);
        ((TextView) emptyView.findViewById(R.id.no_visitor_yet)).setText(R.string.no_visitors_yet);
        View viewFindViewById = emptyView.findViewById(R.id.go);
        ViewUtils.show(viewFindViewById, this.isMe);
        if (this.isMe && viewFindViewById != null) {
            viewFindViewById.setOnClickListener(new View.OnClickListener() { // from class: com.narvii.visitor.RecentVisitorListFragment.3
                @Override // android.view.View.OnClickListener
                public void onClick(View view) {
                    String userId = RecentVisitorListFragment.this.accountService.getUserId();
                    if (userId != null) {
                        LogEvent.clickBuilder(RecentVisitorListFragment.this, ActSemantic.pageEnter).area("DoItButton").send();
                        Intent intent = FragmentWrapperActivity.intent(RecentVisitorListFragment.this.isGlobal ? GlobalFollowingListFragment.class : FollowingListFragment.class);
                        intent.putExtra("id", userId);
                        RecentVisitorListFragment.this.getContext().startActivity(intent);
                    }
                }
            });
        }
        NVTheme.Companion.bindNVThemeView(getNVTheme(), emptyView);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void goToVisitorSettingsPage() {
        startActivity(FragmentWrapperActivity.intent(VisitorsSettingFragment.class));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void mayPrivacyModeChanged() {
        int visitorPrivacyMode;
        if (this.isMe && this.ownerPrivacyMode != (visitorPrivacyMode = this.accountService.getVisitorPrivacyMode())) {
            this.ownerPrivacyMode = visitorPrivacyMode;
            updatePrivacyViews();
            Adapter adapter = this.adapter;
            if (adapter != null) {
                adapter.resetList();
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void updateActionBarTitle(long j) {
        Utils.setActionBarTitle(getResources().getString(R.string.recent_visitors), "", getActivity());
    }

    class Adapter extends NVPagedAdapter<RecentVisitor, RecentVisitorListResponse> implements UserListItemHost {
        long capacity;
        DateTimeFormatter formatter;
        private List<Object> l;
        Date lastCheckedTime;
        Date lastVisitDate;
        int pendingOwnerCount;
        int pendingVisitorCount;
        long visitorsCount;

        @Override // com.narvii.user.list.UserListItemHost
        public boolean allowExtraInfoForItem(User user) {
            return true;
        }

        @Override // com.narvii.list.NVPagedAdapter
        protected int getItemTypeCount() {
            return 4;
        }

        @Override // com.narvii.user.list.UserListItemHost
        public boolean showDisableView() {
            return false;
        }

        public Adapter(NVContext nVContext) {
            super(nVContext);
            this.capacity = 0L;
            this.visitorsCount = 0L;
            this.pendingOwnerCount = 0;
            this.pendingVisitorCount = 0;
            this.lastVisitDate = null;
            this.formatter = DateTimeFormatter.getInstance(getContext());
            RecentVisitorListFragment.this.userListHelper = new UserListHelper(this, this);
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.narvii.list.NVPagedAdapter
        public Class<RecentVisitor> dataType() {
            return RecentVisitor.class;
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.narvii.list.NVPagedAdapter
        public Class<? extends RecentVisitorListResponse> responseType() {
            return RecentVisitorListResponse.class;
        }

        @Override // com.narvii.list.NVPagedAdapter
        protected ApiRequest createRequest(boolean z) {
            if (RecentVisitorListFragment.this.ownerPrivacyMode == 2) {
                return null;
            }
            ApiRequest.Builder builderPath = ApiRequest.builder().path("/user-profile/" + RecentVisitorListFragment.this.uid + "/visitors");
            if (z) {
                builderPath.tag("start0");
            }
            return builderPath.build();
        }

        @Override // com.narvii.user.list.UserListItemHost
        public boolean showAminoId() {
            return RecentVisitorListFragment.this.isGlobal;
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.narvii.list.NVPagedAdapter
        public void onPageResponse(ApiRequest apiRequest, RecentVisitorListResponse recentVisitorListResponse, int i) {
            if ("start0".equals(apiRequest.tag())) {
                this.lastCheckedTime = recentVisitorListResponse.lastCheckTime;
                if (this.lastCheckedTime == null) {
                    this.lastCheckedTime = new Date(0L);
                }
                this.capacity = recentVisitorListResponse.capacity;
                this.visitorsCount = recentVisitorListResponse.visitorsCount;
                RecentVisitorListFragment recentVisitorListFragment = RecentVisitorListFragment.this;
                recentVisitorListFragment.updateActionBarTitle(recentVisitorListFragment.totalVisitorsCount);
                if (RecentVisitorListFragment.this.isMe) {
                    sendCheckedRequest();
                }
            }
            super.onPageResponse(apiRequest, (ApiRequest) recentVisitorListResponse, i);
        }

        @Override // com.narvii.list.NVPagedAdapter
        protected void onFailResponse(ApiRequest apiRequest, String str, ApiResponse apiResponse, int i) {
            if ("start0".equals(apiRequest.tag()) && apiResponse != null && apiResponse.statusCode == 299) {
                RecentVisitorListFragment recentVisitorListFragment = RecentVisitorListFragment.this;
                recentVisitorListFragment.ownerPrivacyMode = 2;
                recentVisitorListFragment.updatePrivacyViews();
            }
            super.onFailResponse(apiRequest, str, apiResponse, i);
        }

        private void sendCheckedRequest() {
            ((ApiService) getService("api")).exec(new ApiRequest.Builder().path("/user-profile/visitors/checked").post().build(), new ApiResponseListener<ApiResponse>(ApiResponse.class) { // from class: com.narvii.visitor.RecentVisitorListFragment.Adapter.1
                @Override // com.narvii.util.http.ApiResponseListener
                public void onFinish(ApiRequest apiRequest, ApiResponse apiResponse) throws Exception {
                    super.onFinish(apiRequest, apiResponse);
                }

                @Override // com.narvii.util.http.ApiResponseListener
                public void onFail(ApiRequest apiRequest, int i, List<NameValuePair> list, String str, ApiResponse apiResponse, Throwable th) {
                    super.onFail(apiRequest, i, list, str, apiResponse, th);
                }
            });
        }

        @Override // com.narvii.list.NVPagedAdapter
        public View createListEndItem(ViewGroup viewGroup, View view, int i) {
            View viewCreateView = createView(R.layout.max_recent_visitors, viewGroup, view);
            TextView textView = (TextView) viewCreateView.findViewById(R.id.max_recent_visitors);
            textView.setText(RecentVisitorListFragment.this.getString(R.string.max_recent_visitors, Long.valueOf(this.capacity)));
            textView.setTextColor(RecentVisitorListFragment.this.isGlobal ? -1996488705 : 1140850688);
            ((TintButton) viewCreateView.findViewById(R.id.fyi)).setTintColor(RecentVisitorListFragment.this.isGlobal ? -1996488705 : 1140850688);
            return viewCreateView;
        }

        @Override // com.narvii.list.NVPagedAdapter
        public boolean showListEnd(int i) {
            if (i > 0) {
                long j = this.capacity;
                if (j > 1 && this.visitorsCount > j) {
                    return true;
                }
            }
            return false;
        }

        @Override // android.widget.BaseAdapter
        public void notifyDataSetChanged() {
            Date date;
            Date date2;
            Date date3;
            this.pendingOwnerCount = 0;
            this.pendingVisitorCount = 0;
            this.lastVisitDate = null;
            List<RecentVisitor> listRawList = rawList();
            if (listRawList == null) {
                this.l = null;
            } else if (listRawList.isEmpty()) {
                this.l = new ArrayList();
            } else {
                this.l = new ArrayList();
                boolean z = true;
                for (RecentVisitor recentVisitor : listRawList) {
                    boolean z2 = recentVisitor.ownerPrivacyMode == 1 && recentVisitor.visitorPrivacyMode == 1 && recentVisitor.profile != null;
                    boolean z3 = recentVisitor.ownerPrivacyMode == 2;
                    boolean z4 = recentVisitor.visitorPrivacyMode == 2;
                    if (z2 || z3 || z4) {
                        if (!z3 || RecentVisitorListFragment.this.isMe) {
                            if (recentVisitor.visitTime != null) {
                                if (RecentVisitorListFragment.this.isMe && (date2 = this.lastVisitDate) != null && (date3 = this.lastCheckedTime) != null && date2.after(date3) && recentVisitor.visitTime.before(this.lastCheckedTime)) {
                                    aggregateOwner();
                                    aggregateVisitor();
                                    RecentVisitorListFragment recentVisitorListFragment = RecentVisitorListFragment.this;
                                    addObjectIntoList(recentVisitorListFragment.new SectionHeader(recentVisitorListFragment.getString(R.string.earlier)));
                                }
                                if (RecentVisitorListFragment.this.isMe && z && (date = this.lastCheckedTime) != null && recentVisitor.visitTime.after(date)) {
                                    RecentVisitorListFragment recentVisitorListFragment2 = RecentVisitorListFragment.this;
                                    addObjectIntoList(recentVisitorListFragment2.new SectionHeader(recentVisitorListFragment2.getString(R.string.new_)));
                                }
                                if (z2) {
                                    aggregateVisitor();
                                    aggregateOwner();
                                    addObjectIntoList(recentVisitor);
                                } else if (z3) {
                                    aggregateVisitor();
                                    this.pendingOwnerCount++;
                                } else if (z4) {
                                    aggregateOwner();
                                    this.pendingVisitorCount++;
                                }
                                this.lastVisitDate = recentVisitor.visitTime;
                                z = false;
                            }
                        }
                    }
                }
                aggregateVisitor();
                aggregateOwner();
            }
            super.notifyDataSetChanged();
        }

        private void aggregateOwner() {
            int i = this.pendingOwnerCount;
            if (i != 0) {
                addObjectIntoList(RecentVisitorListFragment.this.new OwnerPrivacyMode(i));
                this.pendingOwnerCount = 0;
            }
        }

        private void aggregateVisitor() {
            int i = this.pendingVisitorCount;
            if (i != 0) {
                addObjectIntoList(RecentVisitorListFragment.this.new VisitorPrivacyMode(i));
                this.pendingVisitorCount = 0;
            }
        }

        private void addObjectIntoList(Object obj) {
            List<Object> list = this.l;
            if (list != null) {
                list.add(obj);
            }
        }

        @Override // com.narvii.list.NVPagedAdapter
        protected int getItemType(Object obj) {
            if (obj instanceof SectionHeader) {
                return 3;
            }
            if (obj instanceof VisitorPrivacyMode) {
                return 2;
            }
            return obj instanceof OwnerPrivacyMode ? 1 : 0;
        }

        @Override // com.narvii.list.NVPagedAdapter, android.widget.BaseAdapter, android.widget.ListAdapter
        public boolean isEnabled(int i) {
            Object item = getItem(i);
            if ((item instanceof SectionHeader) || (item instanceof VisitorPrivacyMode) || (item instanceof OwnerPrivacyMode)) {
                return false;
            }
            return super.isEnabled(i);
        }

        @Override // com.narvii.list.NVPagedAdapter
        public List<?> list() {
            return this.l;
        }

        @Override // com.narvii.list.NVPagedAdapter
        protected View getItemView(Object obj, View view, ViewGroup viewGroup) {
            if (obj instanceof SectionHeader) {
                View viewCreateView = createView(R.layout.recent_visitor_section_header, viewGroup, view);
                TextView textView = (TextView) viewCreateView.findViewById(R.id.title);
                textView.setText(((SectionHeader) obj).title);
                textView.setTextColor(RecentVisitorListFragment.this.isGlobal ? -1 : -11908534);
                return viewCreateView;
            }
            if (obj instanceof VisitorPrivacyMode) {
                View viewCreateView2 = createView(R.layout.recent_visitor_privacy_mode, viewGroup, view);
                setUpPrivacyCell(viewCreateView2, ((VisitorPrivacyMode) obj).count, R.drawable.ic_visitor_private_mode, R.string.visitor_one_in_privacy_mode, R.string.visitor_n_in_privacy_mode);
                return viewCreateView2;
            }
            if (obj instanceof OwnerPrivacyMode) {
                View viewCreateView3 = createView(R.layout.recent_visitor_privacy_mode, viewGroup, view);
                setUpPrivacyCell(viewCreateView3, ((OwnerPrivacyMode) obj).count, R.drawable.ic_owner_private_mode, R.string.owner_one_in_privacy_mode, R.string.owner_n_in_privacy_mode);
                return viewCreateView3;
            }
            if (!(obj instanceof RecentVisitor)) {
                return null;
            }
            RecentVisitor recentVisitor = (RecentVisitor) obj;
            View viewCreateView4 = createView(RecentVisitorListFragment.this.isGlobal ? R.layout.user_item_dark : R.layout.user_item, viewGroup, view);
            TextView textView2 = (TextView) viewCreateView4.findViewById(R.id.time_ago);
            if (textView2 != null) {
                textView2.setText(this.formatter.format(recentVisitor.visitTime));
                textView2.setVisibility(0);
            }
            RecentVisitorListFragment.this.userListHelper.updateCell(recentVisitor.profile, viewCreateView4);
            View viewFindViewById = viewCreateView4.findViewById(R.id.list_divider);
            if (viewFindViewById == null) {
                return viewCreateView4;
            }
            viewFindViewById.setVisibility(0);
            return viewCreateView4;
        }

        @Override // com.narvii.list.NVPagedAdapter, com.narvii.list.NVAdapter, com.narvii.list.OnItemClickListener
        public boolean onItemClick(ListAdapter listAdapter, int i, Object obj, View view, View view2) {
            String str;
            Date date;
            if (obj instanceof RecentVisitor) {
                RecentVisitor recentVisitor = (RecentVisitor) obj;
                Intent intent = UserProfileFragment.intent(this, recentVisitor.profile);
                if (intent != null) {
                    startActivity(intent);
                }
                if (RecentVisitorListFragment.this.isMe) {
                    Date date2 = recentVisitor.visitTime;
                    str = (date2 == null || (date = this.lastCheckedTime) == null || !date2.before(date)) ? "NewUserList" : "EarlierUserList";
                } else {
                    str = "UserList";
                }
                LogEvent.clickBuilder(this, ActSemantic.checkDetail).area(str).object(recentVisitor.profile).send();
                return true;
            }
            return super.onItemClick(listAdapter, i, obj, view, view2);
        }

        private void setUpPrivacyCell(View view, int i, int i2, int i3, int i4) {
            ((NVImageView) view.findViewById(R.id.image)).setImageResource(i2);
            TextView textView = (TextView) view.findViewById(R.id.count);
            textView.setText(TextUtils.getCountText(getContext(), i, i3, i4));
            textView.setTextColor(RecentVisitorListFragment.this.isGlobal ? -1 : -13619152);
            View viewFindViewById = view.findViewById(R.id.list_divider);
            if (viewFindViewById != null) {
                viewFindViewById.setBackgroundColor(ContextCompat.getColor(getContext(), RecentVisitorListFragment.this.isGlobal ? R.color.list_divider_dark : R.color.list_divider));
            }
        }
    }

    class SectionHeader {
        public String title;

        public SectionHeader(String str) {
            this.title = str;
        }
    }

    class VisitorPrivacyMode {
        public int count;

        public VisitorPrivacyMode(int i) {
            this.count = i;
        }
    }

    class OwnerPrivacyMode {
        public int count;

        public OwnerPrivacyMode(int i) {
            this.count = i;
        }
    }
}
