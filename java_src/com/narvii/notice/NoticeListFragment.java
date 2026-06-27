package com.narvii.notice;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.DialogInterface;
import android.content.Intent;
import android.content.IntentFilter;
import android.content.SharedPreferences;
import android.content.res.Resources;
import android.graphics.drawable.ColorDrawable;
import android.graphics.drawable.Drawable;
import android.os.Build;
import android.os.Bundle;
import android.support.v4.content.ContextCompat;
import android.support.v4.content.LocalBroadcastManager;
import android.text.TextUtils;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.AdapterView;
import android.widget.ListAdapter;
import android.widget.ListView;
import android.widget.PopupWindow;
import android.widget.TextView;
import com.narvii.account.AccountService;
import com.narvii.account.CommunityPushSettingFragment;
import com.narvii.account.PushSettingListFragment;
import com.narvii.account.notice.AccountNoticeListResponse;
import com.narvii.amino.mastes.R;
import com.narvii.app.FragmentWrapperActivity;
import com.narvii.app.NVActivity;
import com.narvii.app.theme.view.NVThemeLinearLayout;
import com.narvii.community.CommunityLaunchHelper;
import com.narvii.community.CommunityService;
import com.narvii.community.MyCommunityListService;
import com.narvii.config.ConfigService;
import com.narvii.list.DividerAdapter;
import com.narvii.list.MergeAdapter;
import com.narvii.list.NVListFragment;
import com.narvii.list.NVPagedAdapter;
import com.narvii.list.refresh.SwipeRefreshLayout;
import com.narvii.livelayer.LiveLayerService;
import com.narvii.logging.ActSemantic;
import com.narvii.logging.LogEvent;
import com.narvii.model.Community;
import com.narvii.model.NVObject;
import com.narvii.model.api.ApiResponse;
import com.narvii.notification.Notification;
import com.narvii.notification.NotificationListener;
import com.narvii.pushservice.PushService;
import com.narvii.util.Callback;
import com.narvii.util.DateTimeFormatter;
import com.narvii.util.JacksonUtils;
import com.narvii.util.Log;
import com.narvii.util.NotificationManagerHelper;
import com.narvii.util.NotificationUtils;
import com.narvii.util.Utils;
import com.narvii.util.ViewUtils;
import com.narvii.util.dialog.ActionSheetDialog;
import com.narvii.util.dialog.ProgressDialog;
import com.narvii.util.http.ApiRequest;
import com.narvii.util.http.ApiResponseListener;
import com.narvii.util.http.ApiService;
import com.narvii.util.http.NameValuePair;
import com.narvii.widget.CommunityIconView;
import com.narvii.widget.TintButton;
import java.util.Date;
import java.util.HashSet;
import java.util.List;
import java.util.Set;

/* loaded from: classes3.dex */
public class NoticeListFragment extends NVListFragment implements View.OnClickListener {
    public static final String CLEAR_ALL_ALERTS = "com.narvii.action.CLEAR_ALL_ALERTS";
    private AccountService accountService;
    protected Adapter adapter;
    private boolean alertAllRead;
    int cid;
    private ConfigService config;
    boolean fromAggregation;
    protected ImportNoticeAdapter importNoticeAdapter;
    private View notLoginView;
    public NotificationManagerHelper notificationManagerHelper;
    private PopupWindow popupWindow;
    Set<String> readList;
    long readTime;
    BroadcastReceiver clearReceiver = new BroadcastReceiver() { // from class: com.narvii.notice.NoticeListFragment.1
        @Override // android.content.BroadcastReceiver
        public void onReceive(Context context, Intent intent) {
            Adapter adapter;
            String action = intent.getAction();
            if (NoticeListFragment.this.fromAggregation && NoticeListFragment.CLEAR_ALL_ALERTS.equals(action)) {
                int intExtra = intent.getIntExtra("cid", -1);
                NoticeListFragment noticeListFragment = NoticeListFragment.this;
                if (intExtra != noticeListFragment.cid || (adapter = noticeListFragment.adapter) == null) {
                    return;
                }
                adapter.resetEmptyList();
            }
        }
    };
    protected final View.OnClickListener clearListener = new View.OnClickListener() { // from class: com.narvii.notice.NoticeListFragment.5
        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            NoticeListFragment.this.clearAll(false);
        }
    };
    BroadcastReceiver receiver = new BroadcastReceiver() { // from class: com.narvii.notice.NoticeListFragment.6
        @Override // android.content.BroadcastReceiver
        public void onReceive(Context context, Intent intent) {
            ImportNoticeAdapter importNoticeAdapter;
            if (!AccountService.ACTION_ACCOUNT_CHANGED.equals(intent.getAction()) || (importNoticeAdapter = NoticeListFragment.this.importNoticeAdapter) == null) {
                return;
            }
            importNoticeAdapter.refresh(0, null);
        }
    };

    @Override // com.narvii.list.NVListFragment
    public boolean isSwipeRefresh() {
        return true;
    }

    @Override // com.narvii.list.NVListFragment, com.narvii.app.NVFragment, android.support.v4.app.Fragment
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        setTitle(R.string.alerts);
        this.notificationManagerHelper = new NotificationManagerHelper(getContext());
        this.accountService = (AccountService) getService("account");
        this.fromAggregation = getBooleanParam("fromAggregation");
        setDarkTheme(this.fromAggregation);
        setDarkNVTheme(this.fromAggregation);
        this.config = (ConfigService) getService("config");
        this.cid = getIntParam("cid", -1);
        if (this.cid == -1) {
            this.cid = this.config.getCommunityId();
        }
        if (this.fromAggregation) {
            registerLocalReceiver(this.clearReceiver, new IntentFilter(CLEAR_ALL_ALERTS));
        }
        registerLocalReceiver(this.receiver, new IntentFilter(AccountService.ACTION_ACCOUNT_CHANGED));
    }

    @Override // com.narvii.app.NVFragment, com.narvii.logging.Page
    public String getPageName() {
        if (!this.fromAggregation) {
            return "AlertsPage";
        }
        int i = this.cid;
        return i == 0 ? "Global" : i > 0 ? "Community" : "";
    }

    @Override // com.narvii.list.NVListFragment, android.support.v4.app.Fragment
    public View onCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        return layoutInflater.inflate(R.layout.notification_list_view, viewGroup, false);
    }

    @Override // com.narvii.list.NVListFragment
    protected void onListViewCreated(ListView listView, Bundle bundle) {
        super.onListViewCreated(listView, bundle);
        listView.setDivider(null);
        listView.setDividerHeight(0);
    }

    @Override // com.narvii.app.NVFragment, android.support.v4.app.Fragment
    public void onActivityCreated(Bundle bundle) throws IllegalAccessException, NoSuchFieldException, IllegalArgumentException {
        super.onActivityCreated(bundle);
        if (isRootFragment()) {
            setActionBarRightButton(R.string.clear_all, getResources().getDrawable(R.drawable.actionbar_red_right_btn), this.clearListener);
            updateClearButtonStatus();
        }
    }

    @Override // com.narvii.list.NVListFragment, com.narvii.app.NVFragment, com.narvii.app.theme.NVThemeFragment, android.support.v4.app.Fragment
    public void onViewCreated(View view, Bundle bundle) throws Resources.NotFoundException {
        ConfigService configService;
        super.onViewCreated(view, bundle);
        this.notLoginView = view.findViewById(R.id.not_login_view);
        View view2 = this.notLoginView;
        if (view2 != null) {
            view2.findViewById(R.id.not_login_button).setOnClickListener(new View.OnClickListener() { // from class: com.narvii.notice.-$$Lambda$NoticeListFragment$Dh9qo427_uGsP93WO42eiPnl2bY
                @Override // android.view.View.OnClickListener
                public final void onClick(View view3) {
                    this.f$0.lambda$onViewCreated$0$NoticeListFragment(view3);
                }
            });
        }
        getListView().setOnItemLongClickListener(this.adapter);
        setEmptyView(R.layout.notification_empty_view);
        updatePushSettingItem();
        if (this.fromAggregation) {
            updateCommunityLayout(view);
            if (view instanceof NVThemeLinearLayout) {
                ((NVThemeLinearLayout) view).setDarkBackgroundDrawable(new ColorDrawable(0));
                return;
            }
            return;
        }
        if (!(view instanceof NVThemeLinearLayout) || (configService = this.config) == null || configService.getTheme() == null) {
            return;
        }
        ((NVThemeLinearLayout) view).setDarkBackgroundDrawable(new ColorDrawable(this.config.getTheme().colorPrimary()));
    }

    public /* synthetic */ void lambda$onViewCreated$0$NoticeListFragment(View view) {
        ensureLogin(new Intent());
    }

    private void updateCommunityLayout(View view) {
        final Community community = (Community) JacksonUtils.readAs(getStringParam("community"), Community.class);
        updateCommunityLayoutVisibility(view);
        view.findViewById(R.id.community_info_layout).setOnClickListener(new View.OnClickListener() { // from class: com.narvii.notice.NoticeListFragment.2
            @Override // android.view.View.OnClickListener
            public void onClick(View view2) {
                NoticeListFragment.this.launchCommunity(community);
            }
        });
        CommunityIconView communityIconView = (CommunityIconView) view.findViewById(R.id.community_icon);
        TextView textView = (TextView) view.findViewById(R.id.community_title);
        communityIconView.setCommunity(community);
        communityIconView.setShowPressedMask(community != null);
        textView.setText(community == null ? null : community.name);
        final View viewFindViewById = view.findViewById(R.id.more);
        viewFindViewById.setOnClickListener(new View.OnClickListener() { // from class: com.narvii.notice.-$$Lambda$NoticeListFragment$kR__NGb_45bIDhxZjWmihCiHUYs
            @Override // android.view.View.OnClickListener
            public final void onClick(View view2) throws IllegalAccessException, NoSuchFieldException, IllegalArgumentException {
                this.f$0.lambda$updateCommunityLayout$1$NoticeListFragment(viewFindViewById, view2);
            }
        });
    }

    public /* synthetic */ void lambda$updateCommunityLayout$1$NoticeListFragment(View view, View view2) throws IllegalAccessException, NoSuchFieldException, IllegalArgumentException {
        View viewInflate = LayoutInflater.from(getContext()).inflate(R.layout.aggregation_alert_community_more, (ViewGroup) null);
        this.popupWindow = new PopupWindow(viewInflate, -2, -2, true);
        viewInflate.findViewById(R.id.main).setBackgroundDrawable(ContextCompat.getDrawable(getContext(), R.drawable.bg_rect_white_7_corner));
        viewInflate.findViewById(R.id.settings).setOnClickListener(new View.OnClickListener() { // from class: com.narvii.notice.NoticeListFragment.3
            @Override // android.view.View.OnClickListener
            public void onClick(View view3) {
                LogEvent.clickWildcardBuilder(NoticeListFragment.this, "Settings").send();
                NoticeListFragment.this.openSettings();
                NoticeListFragment.this.popupWindow.dismiss();
                NoticeListFragment.this.popupWindow = null;
            }
        });
        viewInflate.findViewById(R.id.clear_all).setOnClickListener(new View.OnClickListener() { // from class: com.narvii.notice.NoticeListFragment.4
            @Override // android.view.View.OnClickListener
            public void onClick(View view3) {
                NoticeListFragment.this.clearAll(false);
                NoticeListFragment.this.popupWindow.dismiss();
                NoticeListFragment.this.popupWindow = null;
            }
        });
        this.popupWindow.setFocusable(true);
        this.popupWindow.setOutsideTouchable(true);
        if (Utils.isRtl() && Build.VERSION.SDK_INT >= 19) {
            this.popupWindow.showAsDropDown(view, -Utils.dpToPxInt(getContext(), 6.0f), 0, 8388661);
        } else {
            this.popupWindow.showAsDropDown(view);
        }
        updateClearButtonStatus();
    }

    private void updateCommunityLayoutVisibility(View view) {
        ViewUtils.show(view, R.id.community_info_layout, ((AccountService) getService("account")).hasAccount());
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.narvii.list.NVListFragment
    public void updateViews() {
        if (!this.accountService.hasAccount()) {
            ListView listView = getListView();
            if (listView != null) {
                setListViewVisibility(listView, false);
            }
            SwipeRefreshLayout swipeRefreshLayout = this.swipeLayout;
            if (swipeRefreshLayout != null) {
                swipeRefreshLayout.setVisibility(4);
            }
            View view = this.emptyView;
            if (view != null) {
                view.setVisibility(4);
            }
            View view2 = this.progressView;
            if (view2 != null) {
                view2.setVisibility(4);
            }
            View view3 = this.notLoginView;
            if (view3 != null) {
                view3.setVisibility(0);
                return;
            }
            return;
        }
        View view4 = this.notLoginView;
        if (view4 != null) {
            view4.setVisibility(4);
        }
        super.updateViews();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void launchCommunity(Community community) {
        if (community != null) {
            MyCommunityListService myCommunityListService = (MyCommunityListService) getService("myCommunityList");
            List<Community> listRawList = myCommunityListService.rawList();
            int iIndexOfId = Utils.indexOfId(listRawList, community.id + "");
            if (iIndexOfId > -1) {
                new CommunityLaunchHelper(this).launch(community.id, listRawList.get(iIndexOfId), myCommunityListService.getCommunityTimestamp(community.id), myCommunityListService.getUserProfile(community.id), myCommunityListService.getUserInfoTimestamp(community.id), myCommunityListService.getReminder(community.id), myCommunityListService.getReminderTimestamp(community.id), false);
                return;
            }
            CommunityLaunchHelper communityLaunchHelper = new CommunityLaunchHelper(this);
            communityLaunchHelper.needUpdateCommunity = false;
            communityLaunchHelper.launch(community.id, community);
        }
    }

    @Override // com.narvii.list.NVListFragment
    protected Drawable getFrameDarkBackgroundDrawable() {
        if (this.fromAggregation) {
            return new ColorDrawable(0);
        }
        ConfigService configService = this.config;
        if (configService != null && configService.getTheme() != null) {
            return new ColorDrawable(this.config.getTheme().colorPrimary());
        }
        return super.getFrameDarkBackgroundDrawable();
    }

    @Override // com.narvii.list.NVListFragment
    protected void onEmptyRetry() {
        ImportNoticeAdapter importNoticeAdapter = this.importNoticeAdapter;
        if (importNoticeAdapter != null) {
            importNoticeAdapter.isImportantNoticeLoaded = false;
            importNoticeAdapter.refresh(2, null);
        }
        Adapter adapter = this.adapter;
        if (adapter != null) {
            adapter.refresh(2, null);
        }
    }

    @Override // com.narvii.list.NVListFragment, com.narvii.app.NVFragment
    public void onActiveChanged(boolean z) {
        LiveLayerService liveLayerService;
        super.onActiveChanged(z);
        if (this.fromAggregation || (liveLayerService = (LiveLayerService) getService("liveLayer")) == null) {
            return;
        }
        liveLayerService.reportBrowsing("notifications", z);
    }

    @Override // com.narvii.list.NVListFragment, com.narvii.app.NVFragment, android.support.v4.app.Fragment
    public void onPause() {
        super.onPause();
        AccountService accountService = (AccountService) getService("account");
        SharedPreferences prefs = accountService.getPrefs();
        if (isFinishing()) {
            List<? extends Notice> listRawList = this.adapter.rawList();
            Notice notice = (listRawList == null || listRawList.size() == 0) ? null : listRawList.get(0);
            prefs.edit().remove(accountService.getPrefsKey(this.cid, "notificationReadList")).putLong(accountService.getPrefsKey(this.cid, "notificationReadTime"), notice == null ? 0L : Math.max(notice.createdTime.getTime(), this.readTime)).apply();
            return;
        }
        prefs.edit().putStringSet(accountService.getPrefsKey(this.cid, "notificationReadList"), this.readList).apply();
    }

    @Override // com.narvii.list.NVListFragment, com.narvii.list.refresh.SwipeRefreshLayout.OnRefreshListener
    public void onRefresh() {
        ImportNoticeAdapter importNoticeAdapter = this.importNoticeAdapter;
        if (importNoticeAdapter != null) {
            importNoticeAdapter.refresh(0, this.refreshCallback);
        }
    }

    @Override // com.narvii.list.NVListFragment
    protected void onErrorRetry() {
        super.onErrorRetry();
        ImportNoticeAdapter importNoticeAdapter = this.importNoticeAdapter;
        if (importNoticeAdapter != null) {
            importNoticeAdapter.onErrorRetry();
        }
    }

    @Override // com.narvii.list.NVListFragment, com.narvii.app.NVFragment, android.support.v4.app.Fragment
    public void onResume() throws IllegalAccessException, NoSuchFieldException, IllegalArgumentException {
        super.onResume();
        AccountService accountService = (AccountService) getService("account");
        SharedPreferences prefs = accountService.getPrefs();
        this.readTime = prefs.getLong(accountService.getPrefsKey(this.cid, "notificationReadTime"), 0L);
        this.readList = prefs.getStringSet(accountService.getPrefsKey(this.cid, "notificationReadList"), null);
        if (this.readList == null) {
            this.readList = new HashSet();
        }
        Adapter adapter = this.adapter;
        if (adapter != null) {
            adapter.notifyDataSetChanged();
        }
        updatePushSettingItem();
        if (this.fromAggregation) {
            updateCommunityLayoutVisibility(getView());
        }
    }

    @Override // com.narvii.list.NVListFragment, com.narvii.app.NVFragment, android.support.v4.app.Fragment
    public void onDestroy() {
        if (this.fromAggregation) {
            unregisterLocalReceiver(this.clearReceiver);
        }
        unregisterLocalReceiver(this.receiver);
        super.onDestroy();
    }

    protected void updatePushSettingItem() {
        getView().findViewById(R.id.push_setting).setVisibility(this.fromAggregation ? 8 : 0);
        getView().findViewById(R.id.push_setting).setOnClickListener(this);
    }

    @Override // com.narvii.list.NVListFragment
    protected ListAdapter createAdapter(Bundle bundle) {
        DividerAdapter dividerAdapter = new DividerAdapter(this);
        NoticeMergeAdapter noticeMergeAdapter = new NoticeMergeAdapter();
        this.adapter = new Adapter();
        this.importNoticeAdapter = new ImportNoticeAdapter();
        MergeAdapter mergeAdapter = new MergeAdapter(this);
        mergeAdapter.addAdapter(this.importNoticeAdapter);
        mergeAdapter.addAdapter(this.adapter, true);
        dividerAdapter.setAdapter(mergeAdapter, 2);
        noticeMergeAdapter.addAdapter(dividerAdapter);
        return noticeMergeAdapter;
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        if (view.getId() != R.id.push_setting) {
            return;
        }
        LogEvent.clickWildcardBuilder(this, "Settings").send();
        openSettings();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void openSettings() {
        if (this.cid == 0) {
            startActivity(FragmentWrapperActivity.intent(PushSettingListFragment.class));
            return;
        }
        Intent intent = FragmentWrapperActivity.intent(CommunityPushSettingFragment.class);
        intent.putExtra(CommunityPushSettingFragment.COMMUNITY_PUSH_SETTING_ID, this.cid);
        intent.putExtra(CommunityPushSettingFragment.COMMUNITY_PUSH_SETTING_NAME, ((CommunityService) getService("community")).getCommunity(this.cid).name);
        intent.putExtra("Source", "Alerts");
        startActivity(intent);
    }

    protected class ImportNoticeAdapter extends ImportNoticeListAdapter {
        @Override // com.narvii.list.NVAdapter
        protected boolean supportNVTheme() {
            return true;
        }

        public ImportNoticeAdapter() {
            super(NoticeListFragment.this, NoticeListFragment.this.cid);
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.narvii.notice.ImportNoticeListAdapter, com.narvii.list.NVPagedAdapter
        public void onPageResponse(ApiRequest apiRequest, AccountNoticeListResponse accountNoticeListResponse, int i) {
            super.onPageResponse(apiRequest, accountNoticeListResponse, i);
            if (this.isImportantNoticeLoaded) {
                NoticeListFragment.this.adapter.refresh(0, null);
            }
        }

        @Override // com.narvii.list.NVPagedAdapter, com.narvii.list.NVAdapter
        public void refresh(int i, Callback<Integer> callback) {
            super.refresh(i, callback);
        }

        @Override // com.narvii.list.NVPagedAdapter, android.widget.BaseAdapter, android.widget.Adapter
        public boolean isEmpty() {
            return this.isImportantNoticeLoaded && super.isEmpty();
        }

        @Override // com.narvii.notice.ImportNoticeListAdapter, com.narvii.list.NVPagedAdapter
        protected void onFailResponse(ApiRequest apiRequest, String str, ApiResponse apiResponse, int i) {
            super.onFailResponse(apiRequest, str, apiResponse, i);
            if (this.isImportantNoticeLoaded) {
                NoticeListFragment.this.adapter.refresh(0, null);
            }
        }
    }

    protected class Adapter extends NVPagedAdapter<Notice, NoticeListResponse> implements NotificationListener, AdapterView.OnItemLongClickListener {
        DateTimeFormatter fmt;

        @Override // com.narvii.list.NVAdapter, com.narvii.logging.Area
        public String getAreaName() {
            return "AlertList";
        }

        @Override // com.narvii.list.NVPagedAdapter
        protected int getItemType(Object obj) {
            return 0;
        }

        @Override // com.narvii.list.NVPagedAdapter
        protected int getItemTypeCount() {
            return 1;
        }

        @Override // com.narvii.list.NVAdapter
        protected boolean supportNVTheme() {
            return true;
        }

        public Adapter() {
            super(NoticeListFragment.this, 1);
            this.fmt = DateTimeFormatter.getInstance(getContext());
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.narvii.list.NVPagedAdapter
        public Class<Notice> dataType() {
            return Notice.class;
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.narvii.list.NVPagedAdapter
        public Class<NoticeListResponse> responseType() {
            return NoticeListResponse.class;
        }

        @Override // com.narvii.list.NVPagedAdapter
        protected ApiRequest createRequest(boolean z) {
            ImportNoticeAdapter importNoticeAdapter = NoticeListFragment.this.importNoticeAdapter;
            if (importNoticeAdapter != null && !importNoticeAdapter.isImportantNoticeLoaded) {
                return null;
            }
            ApiRequest.Builder builderCommunityId = ApiRequest.builder().path("/notification").communityId(NoticeListFragment.this.cid);
            if (z) {
                builderCommunityId.tag("start0");
            }
            return builderCommunityId.build();
        }

        @Override // android.widget.BaseAdapter
        public void notifyDataSetChanged() throws IllegalAccessException, NoSuchFieldException, IllegalArgumentException {
            super.notifyDataSetChanged();
            NoticeListFragment.this.updateClearButtonStatus();
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.narvii.list.NVPagedAdapter
        public void onPageResponse(ApiRequest apiRequest, NoticeListResponse noticeListResponse, int i) throws IllegalAccessException, NoSuchFieldException, IllegalArgumentException {
            List<Notice> list;
            super.onPageResponse(apiRequest, (ApiRequest) noticeListResponse, i);
            if ("start0".equals(apiRequest.tag())) {
                ((PushService) getService("push")).dismissNotification(NoticeListFragment.this.cid, 1);
                AccountService accountService = (AccountService) getService("account");
                int i2 = (noticeListResponse.notificationCount == 0 && (list = noticeListResponse.notificationList) != null && list.isEmpty()) ? 0 : noticeListResponse.notificationCount;
                if (NoticeListFragment.this.cid == 0) {
                    Log.i("globalNotificationCount", i2 + "-" + DateTimeFormatter.parseISO8601(noticeListResponse.timestamp).getTime() + "-noticeListResponse");
                }
                accountService.updateNotificationCount(NoticeListFragment.this.cid, i2, noticeListResponse.timestamp, true);
                Date date = noticeListResponse.lastCheckTime;
                if (date != null) {
                    NoticeListFragment.this.readTime = Math.max(date.getTime(), NoticeListFragment.this.readTime);
                    accountService.getPrefs().edit().putLong(accountService.getPrefsKey(NoticeListFragment.this.cid, "notificationReadTime"), NoticeListFragment.this.readTime).apply();
                    notifyDataSetChanged();
                }
                NoticeListFragment.this.requestCheckNotification();
            }
        }

        /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
        /* JADX WARN: Failed to find 'out' block for switch in B:27:0x0068. Please report as an issue. */
        /* JADX WARN: Removed duplicated region for block: B:109:0x0331  */
        /* JADX WARN: Removed duplicated region for block: B:114:0x0346  */
        /* JADX WARN: Removed duplicated region for block: B:117:0x0391  */
        /* JADX WARN: Removed duplicated region for block: B:118:0x03a3  */
        /* JADX WARN: Removed duplicated region for block: B:129:0x041d  */
        /* JADX WARN: Removed duplicated region for block: B:130:0x0421  */
        /* JADX WARN: Removed duplicated region for block: B:143:0x0453  */
        @Override // com.narvii.list.NVPagedAdapter
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        protected android.view.View getItemView(java.lang.Object r17, android.view.View r18, android.view.ViewGroup r19) {
            /*
                Method dump skipped, instructions count: 1194
                To view this dump add '--comments-level debug' option
            */
            throw new UnsupportedOperationException("Method not decompiled: com.narvii.notice.NoticeListFragment.Adapter.getItemView(java.lang.Object, android.view.View, android.view.ViewGroup):android.view.View");
        }

        private String getParentContentText(Notice notice) {
            return notice.parentText;
        }

        private String getContentText(Notice notice) {
            return notice.objectText;
        }

        private String getContentType(int i, int i2) {
            if (i == 0) {
                return NoticeListFragment.this.getString(R.string.attach_user_profile);
            }
            if (i != 1) {
                if (i == 2) {
                    return NoticeListFragment.this.getString(R.string.post_type_wiki_entry);
                }
                if (i == 3) {
                    return NoticeListFragment.this.getString(R.string.comment);
                }
                if (i == 12) {
                    return NoticeListFragment.this.getString(R.string.chatroom);
                }
                if (i == 109) {
                    return NoticeListFragment.this.getString(R.string.photo);
                }
                if (i != 131) {
                    return NoticeListFragment.this.getString(R.string.post);
                }
            }
            if (i2 == 9) {
                return NoticeListFragment.this.getString(R.string.post_type_story);
            }
            if (i2 == 4) {
                return NoticeListFragment.this.getString(R.string.post_type_poll);
            }
            return NoticeListFragment.this.getString(R.string.post_type_blog);
        }

        /* JADX WARN: Failed to find 'out' block for switch in B:36:0x0097. Please report as an issue. */
        /* JADX WARN: Failed to find 'out' block for switch in B:37:0x009a. Please report as an issue. */
        /* JADX WARN: Removed duplicated region for block: B:62:0x017f  */
        /* JADX WARN: Removed duplicated region for block: B:63:0x018e  */
        /* JADX WARN: Removed duplicated region for block: B:76:0x01f5  */
        /* JADX WARN: Removed duplicated region for block: B:77:0x01f8  */
        /* JADX WARN: Removed duplicated region for block: B:81:0x0219  */
        /* JADX WARN: Removed duplicated region for block: B:84:0x0226  */
        @Override // com.narvii.list.NVPagedAdapter, com.narvii.list.NVAdapter, com.narvii.list.OnItemClickListener
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public boolean onItemClick(android.widget.ListAdapter r17, int r18, java.lang.Object r19, android.view.View r20, android.view.View r21) {
            /*
                Method dump skipped, instructions count: 828
                To view this dump add '--comments-level debug' option
            */
            throw new UnsupportedOperationException("Method not decompiled: com.narvii.notice.NoticeListFragment.Adapter.onItemClick(android.widget.ListAdapter, int, java.lang.Object, android.view.View, android.view.View):boolean");
        }

        private String getDefaultNdcLink(String str, Notice notice) {
            String str2 = str + NVObject.objectTypeName(notice.objectType) + "/" + notice.objectId;
            if (notice.objectType != 1 || notice.objectSubtype != 9) {
                return str2;
            }
            return str2 + "?displayMode=fullscreenPlay";
        }

        @Override // com.narvii.list.NVAdapter
        public boolean onLongClick(ListAdapter listAdapter, int i, Object obj, View view, View view2) {
            if (obj instanceof Notice) {
                NoticeListFragment.this.delete((Notice) obj, false);
                return true;
            }
            return super.onLongClick(listAdapter, i, obj, view, view2);
        }

        @Override // com.narvii.notification.NotificationListener
        public void onNotification(Notification notification) {
            if (notification.obj instanceof Notice) {
                editList(notification, true);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void updateClearButtonStatus() throws IllegalAccessException, NoSuchFieldException, IllegalArgumentException {
        Adapter adapter = this.adapter;
        boolean z = (adapter == null || adapter.isEmpty()) ? false : true;
        PopupWindow popupWindow = this.popupWindow;
        if (popupWindow != null && popupWindow.getContentView() != null) {
            this.popupWindow.getContentView().findViewById(R.id.clear_all).setEnabled(z);
            TintButton tintButton = (TintButton) this.popupWindow.getContentView().findViewById(R.id.clear_all_icon);
            int i = z ? -1437166 : -8618884;
            if (tintButton != null) {
                tintButton.setTintColor(i);
            }
            TextView textView = (TextView) this.popupWindow.getContentView().findViewById(R.id.clear_all_text);
            if (textView != null) {
                textView.setTextColor(i);
            }
        }
        if (isRootFragment() && (getActivity() instanceof NVActivity)) {
            ((NVActivity) getActivity()).setRightButtonEnabled(z);
        }
    }

    protected class NoticeMergeAdapter extends MergeAdapter {
        public NoticeMergeAdapter() {
            super(NoticeListFragment.this);
        }

        @Override // com.narvii.list.MergeAdapter, android.widget.BaseAdapter, android.widget.Adapter
        public boolean isEmpty() {
            ImportNoticeAdapter importNoticeAdapter;
            Adapter adapter = NoticeListFragment.this.adapter;
            return adapter != null && adapter.isEmpty() && ((importNoticeAdapter = NoticeListFragment.this.importNoticeAdapter) == null || importNoticeAdapter.isEmpty());
        }

        @Override // com.narvii.list.MergeAdapter, com.narvii.list.NVAdapter
        public boolean isListShown() {
            ImportNoticeAdapter importNoticeAdapter;
            Adapter adapter = NoticeListFragment.this.adapter;
            return (adapter != null && adapter.isListShown()) || ((importNoticeAdapter = NoticeListFragment.this.importNoticeAdapter) != null && importNoticeAdapter.isListShown() && NoticeListFragment.this.importNoticeAdapter.getCount() > 0);
        }

        @Override // com.narvii.list.MergeAdapter, com.narvii.list.NVAdapter
        public String errorMessage() {
            NoticeListFragment noticeListFragment = NoticeListFragment.this;
            Adapter adapter = noticeListFragment.adapter;
            if (adapter != null && noticeListFragment.importNoticeAdapter != null) {
                if (!TextUtils.isEmpty(adapter.errorMessage()) && NoticeListFragment.this.importNoticeAdapter.loadFinishEmptyOrError()) {
                    return NoticeListFragment.this.adapter.errorMessage();
                }
                if (!TextUtils.isEmpty(NoticeListFragment.this.importNoticeAdapter.errorMessage()) && NoticeListFragment.this.adapter.loadFinishEmptyOrError()) {
                    return NoticeListFragment.this.importNoticeAdapter.errorMessage();
                }
            }
            return null;
        }
    }

    public void requestCheckNotification() {
        ((ApiService) getService("api")).exec(new ApiRequest.Builder().path("/notification/checked").post().communityId(this.cid).build(), new ApiResponseListener<ApiResponse>(ApiResponse.class) { // from class: com.narvii.notice.NoticeListFragment.7
            @Override // com.narvii.util.http.ApiResponseListener
            public void onFinish(ApiRequest apiRequest, ApiResponse apiResponse) throws Exception {
                super.onFinish(apiRequest, apiResponse);
                AccountService accountService = (AccountService) NoticeListFragment.this.getService("account");
                if (NoticeListFragment.this.cid == 0) {
                    Log.i("globalNotificationCount", "0-" + DateTimeFormatter.parseISO8601(apiResponse.timestamp).getTime() + "-readAll");
                }
                accountService.updateNotificationCount(NoticeListFragment.this.cid, 0, apiResponse.timestamp, true);
                NoticeListFragment.this.alertAllRead = true;
            }

            @Override // com.narvii.util.http.ApiResponseListener
            public void onFail(ApiRequest apiRequest, int i, List<NameValuePair> list, String str, ApiResponse apiResponse, Throwable th) {
                super.onFail(apiRequest, i, list, str, apiResponse, th);
            }
        });
    }

    public boolean isAlertAllRead() {
        return this.alertAllRead;
    }

    public void delete(final Notice notice, boolean z) {
        if (!z) {
            ActionSheetDialog actionSheetDialog = new ActionSheetDialog(getContext());
            actionSheetDialog.addItem(R.string.delete, true);
            actionSheetDialog.setOnClickListener(new DialogInterface.OnClickListener() { // from class: com.narvii.notice.NoticeListFragment.8
                @Override // android.content.DialogInterface.OnClickListener
                public void onClick(DialogInterface dialogInterface, int i) {
                    if (i == 0) {
                        LogEvent.clickBuilder(NoticeListFragment.this, ActSemantic.delete).area("AlertList").extraParam("alertType", Integer.valueOf(notice.type)).send();
                        NoticeListFragment.this.delete(notice, true);
                    }
                }
            });
            actionSheetDialog.show();
            return;
        }
        ProgressDialog progressDialog = new ProgressDialog(getContext());
        progressDialog.successListener = new Callback<ApiResponse>() { // from class: com.narvii.notice.NoticeListFragment.9
            @Override // com.narvii.util.Callback
            public void call(ApiResponse apiResponse) {
                NotificationUtils.sendNotificationIncludeGlobal(NoticeListFragment.this, new Notification("delete", notice));
            }
        };
        progressDialog.show();
        ((ApiService) getService("api")).exec(ApiRequest.builder().delete().communityId(this.cid).path("/notification/" + notice.notificationId).build(), progressDialog.dismissListener);
    }

    public void clearAll(boolean z) {
        if (!z) {
            ActionSheetDialog actionSheetDialog = new ActionSheetDialog(getContext());
            actionSheetDialog.addItem(R.string.clear_all_alerts, true);
            actionSheetDialog.setOnClickListener(new DialogInterface.OnClickListener() { // from class: com.narvii.notice.NoticeListFragment.10
                @Override // android.content.DialogInterface.OnClickListener
                public void onClick(DialogInterface dialogInterface, int i) {
                    if (i == 0) {
                        NoticeListFragment.this.clearAll(true);
                    }
                }
            });
            actionSheetDialog.show();
            return;
        }
        ProgressDialog progressDialog = new ProgressDialog(getContext());
        progressDialog.successListener = new Callback<ApiResponse>() { // from class: com.narvii.notice.NoticeListFragment.11
            @Override // com.narvii.util.Callback
            public void call(ApiResponse apiResponse) {
                LogEvent.clickWildcardBuilder(NoticeListFragment.this, "DeleteAllAlerts").send();
                Adapter adapter = NoticeListFragment.this.adapter;
                if (adapter != null) {
                    adapter.resetEmptyList();
                }
                if (!NoticeListFragment.this.fromAggregation) {
                    Intent intent = new Intent(NoticeListFragment.CLEAR_ALL_ALERTS);
                    intent.putExtra("cid", NoticeListFragment.this.cid);
                    LocalBroadcastManager.getInstance(NoticeListFragment.this.getContext()).sendBroadcast(intent);
                }
                ((AccountService) NoticeListFragment.this.getService("account")).updateNotificationCount(NoticeListFragment.this.cid, 0, apiResponse.timestamp, true);
            }
        };
        progressDialog.show();
        ((ApiService) getService("api")).exec(ApiRequest.builder().delete().communityId(this.cid).path("/notification").build(), progressDialog.dismissListener);
    }

    public String getNoticeType(Notice notice) {
        if (notice == null) {
            return null;
        }
        int i = notice.type;
        if (i == 1) {
            return "following";
        }
        if (i == 2) {
            return "invitation_to_follow";
        }
        if (i == 3) {
            return "comment";
        }
        if (i == 4) {
            return "reply";
        }
        if (i == 24) {
            return "submission_approved";
        }
        switch (i) {
            case 9:
                break;
            case 10:
                break;
            case 11:
                break;
            case 12:
                break;
            case 13:
                break;
            case 14:
                break;
            case 15:
                break;
            case 16:
                break;
            case 17:
                break;
            default:
                switch (i) {
                }
        }
        return null;
    }
}
