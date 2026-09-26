package com.narvii.notice;

import android.app.AlertDialog;
import android.content.DialogInterface;
import android.content.Intent;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.ListAdapter;
import android.widget.TextView;
import androidx.core.app.NotificationCompat;
import androidx.core.content.ContextCompat;
import androidx.core.view.ViewCompat;
import com.narvii.account.AccountService;
import com.narvii.account.notice.AccountNotice;
import com.narvii.account.notice.AccountNoticeConfig;
import com.narvii.account.notice.AccountNoticeListResponse;
import com.narvii.amino.BuildConfig;
import com.narvii.amino.master.R;
import com.narvii.app.FragmentWrapperActivity;
import com.narvii.app.NVApplication;
import com.narvii.app.NVContext;
import com.narvii.community.CommunityService;
import com.narvii.community.CommunityUserInfo;
import com.narvii.community.FullCommunityResponse;
import com.narvii.community.ReminderCheckResult;
import com.narvii.list.NVAdapter;
import com.narvii.list.NVPagedAdapter;
import com.narvii.master.search.SearchPrefsHelper;
import com.narvii.model.Community;
import com.narvii.model.User;
import com.narvii.model.api.ApiResponse;
import com.narvii.modulization.CommunityConfigHelper;
import com.narvii.notification.Notification;
import com.narvii.notification.NotificationCenter;
import com.narvii.notification.NotificationListener;
import com.narvii.prefs.AccountSettingFragment;
import com.narvii.services.incubator.IncubatorNoticeService;
import com.narvii.user.profile.UserProfileFragment;
import com.narvii.util.DateTimeFormatter;
import com.narvii.util.JacksonUtils;
import com.narvii.util.NVToast;
import com.narvii.util.NotificationUtils;
import com.narvii.util.PackageUtils;
import com.narvii.util.Utils;
import com.narvii.util.dialog.CheckDialog;
import com.narvii.util.dialog.ProgressDialog;
import com.narvii.util.http.ApiRequest;
import com.narvii.util.http.ApiResponseListener;
import com.narvii.util.http.ApiService;
import com.narvii.util.http.NameValuePair;
import com.narvii.util.text.TextUtils;
import com.narvii.widget.NVImageView;
import com.narvii.widget.NicknameView;
import com.narvii.widget.PushButton;
import com.narvii.widget.UserAvatarLayout;
import com.safedk.android.utils.Logger;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

/* JADX INFO: loaded from: classes2.dex */
public class ImportNoticeListAdapter extends NVPagedAdapter<AccountNotice, AccountNoticeListResponse> implements NotificationListener {
    private static final int TYPE_COPYRIGHT = 3;
    private static final int TYPE_PROP = 1;
    private static final int TYPE_SYSTEM_CUSTOM = 5;
    private static final int TYPE_SYSTEM_MESSAGE = 4;
    private static final int TYPE_UNKNOWN = 2;
    private static final int TYPE_WARNING_STRIKE = 0;
    AccountService account;
    final HashMap<Integer, Community> communityMap;
    DateTimeFormatter formatter;
    public boolean isImportantNoticeLoaded;
    int ndcId;

    public static void safedk_NVAdapter_startActivity_5b31acbff248f36f6c86407552449fc2(NVAdapter p0, Intent p1) {
        Logger.d("SafeDK-Special|SafeDK: Call> Lcom/narvii/list/NVAdapter;->startActivity(Landroid/content/Intent;)V");
        if (p1 == null) {
            return;
        }
        p0.startActivity(p1);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.narvii.list.NVPagedAdapter
    public Class<AccountNotice> dataType() {
        return AccountNotice.class;
    }

    @Override // com.narvii.list.NVPagedAdapter
    protected int getItemTypeCount() {
        return 6;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.narvii.list.NVPagedAdapter
    public Class<? extends AccountNoticeListResponse> responseType() {
        return AccountNoticeListResponse.class;
    }

    private void configCommunityLayout(AccountNotice accountNotice, View view) {
        Community community = this.communityMap.get(Integer.valueOf(accountNotice.cid));
        boolean zIsGlobal = accountNotice.isGlobal();
        View viewFindViewById = view.findViewById(R.id.community_container);
        viewFindViewById.setVisibility(zIsGlobal ? 8 : 0);
        if (community != null) {
            NVImageView nVImageView = (NVImageView) viewFindViewById.findViewById(R.id.community_icon);
            nVImageView.setShowPressedMask(false);
            nVImageView.setImageUrl(community.icon);
            ((TextView) viewFindViewById.findViewById(R.id.community_name)).setText(community.name);
        }
    }

    private void configOperator(AccountNotice accountNotice, View view) {
        Community community = this.communityMap.get(Integer.valueOf(accountNotice.cid));
        User user = accountNotice.operator;
        if (user != null) {
            ((UserAvatarLayout) view.findViewById(R.id.user_avatar_layout)).setUser(user, user.isSubscribeMemberShip(), new CommunityConfigHelper(Utils.getNVContext(getContext()), community == null ? 0 : community.id).isPremiumFeatureEnabled());
            NicknameView nicknameView = (NicknameView) view.findViewById(R.id.nickname);
            nicknameView.setTextColor(isDarkNVTheme() ? -1 : ViewCompat.MEASURED_STATE_MASK);
            nicknameView.setUser(user);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void goAccountSettingPage() {
        safedk_NVAdapter_startActivity_5b31acbff248f36f6c86407552449fc2(this, FragmentWrapperActivity.intent(AccountSettingFragment.class));
    }

    private void handleNoticeAction(final AccountNotice accountNotice, final boolean z6) {
        final ProgressDialog progressDialog = new ProgressDialog(getContext());
        progressDialog.show();
        ApiRequest.Builder builder = new ApiRequest.Builder();
        if (z6) {
            builder.path("notice/" + accountNotice.id() + "/accept");
        } else {
            builder.path("notice/" + accountNotice.id() + "/decline");
        }
        builder.communityId(accountNotice.cid);
        ((ApiService) getService("api")).exec(builder.post().build(), new ApiResponseListener<ApiResponse>(ApiResponse.class) { // from class: com.narvii.notice.ImportNoticeListAdapter.1
            @Override // com.narvii.util.http.ApiResponseListener
            public void onFail(ApiRequest apiRequest, int i10, List<NameValuePair> list, String str, ApiResponse apiResponse, Throwable th) {
                progressDialog.dismiss();
                if (i10 == 257) {
                    AlertDialog.Builder builder2 = new AlertDialog.Builder(ImportNoticeListAdapter.this.getContext());
                    builder2.setMessage(R.string.security_note);
                    builder2.setPositiveButton(R.string.continue_, new DialogInterface.OnClickListener() { // from class: com.narvii.notice.ImportNoticeListAdapter.1.1
                        @Override // android.content.DialogInterface.OnClickListener
                        public void onClick(DialogInterface dialogInterface, int i11) {
                            ImportNoticeListAdapter.this.goAccountSettingPage();
                        }
                    });
                    builder2.setNegativeButton(R.string.cancel, (DialogInterface.OnClickListener) null);
                    builder2.show();
                } else {
                    NVToast.makeText(ImportNoticeListAdapter.this.getContext(), str, 1).show();
                }
                super.onFail(apiRequest, i10, list, str, apiResponse, th);
            }

            @Override // com.narvii.util.http.ApiResponseListener
            public void onFinish(ApiRequest apiRequest, ApiResponse apiResponse) throws Exception {
                super.onFinish(apiRequest, apiResponse);
                NotificationUtils.sendNotificationIncludeGlobal((NotificationCenter) ImportNoticeListAdapter.this.getService("notification"), new Notification("delete", accountNotice));
                ImportNoticeListAdapter.this.sendRefreshReminderRequest(accountNotice);
                progressDialog.dismiss();
                CheckDialog checkDialog = new CheckDialog(ImportNoticeListAdapter.this.getContext());
                checkDialog.setText(ImportNoticeListAdapter.this.getContext().getString(R.string.success));
                checkDialog.show();
                if (z6) {
                    ImportNoticeListAdapter.this.requestCommunityInfo(accountNotice.cid);
                }
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void requestCommunityInfo(final int i10) {
        if (i10 <= 0) {
            return;
        }
        ApiService apiService = (ApiService) getService("api");
        final CommunityService communityService = (CommunityService) getService(SearchPrefsHelper.PREFS_KEY_COMMUNITY);
        apiService.exec(ApiRequest.builder().scopeCommunityId(i10).path("/community/info").build(), new ApiResponseListener<FullCommunityResponse>(FullCommunityResponse.class) { // from class: com.narvii.notice.ImportNoticeListAdapter.3
            @Override // com.narvii.util.http.ApiResponseListener
            public void onFinish(ApiRequest apiRequest, FullCommunityResponse fullCommunityResponse) throws Exception {
                communityService.updateCommunity(fullCommunityResponse.community, true, fullCommunityResponse.timestamp);
                CommunityUserInfo communityUserInfo = fullCommunityResponse.currentUserInfo;
                if (communityUserInfo != null) {
                    ImportNoticeListAdapter.this.account.updateProfile(communityUserInfo.userProfile, fullCommunityResponse.timestamp, i10, true);
                }
            }

            @Override // com.narvii.util.http.ApiResponseListener
            public void onFail(ApiRequest apiRequest, int i11, List<NameValuePair> list, String str, ApiResponse apiResponse, Throwable th) {
                super.onFail(apiRequest, i11, list, str, apiResponse, th);
            }
        });
    }

    private void upgrateApp() {
        new PackageUtils(getContext()).openGooglePlay(NVApplication.DEBUG && NVApplication.CLIENT_TYPE == 100 ? BuildConfig.APPLICATION_ID : getContext().getPackageName());
    }

    @Override // com.narvii.list.NVPagedAdapter
    protected int getItemType(Object obj) {
        int i10;
        if (!(obj instanceof AccountNotice)) {
            return 2;
        }
        AccountNotice accountNotice = (AccountNotice) obj;
        switch (accountNotice.type) {
            case 1:
            case 2:
            case 3:
                i10 = 1;
                break;
            case 4:
            case 7:
            case 9:
            case 10:
                i10 = 0;
                break;
            case 5:
                i10 = 3;
                break;
            case 6:
            case 8:
            default:
                i10 = 2;
                break;
            case 11:
                i10 = 4;
                break;
        }
        if (i10 == 2 || accountNotice.getConfig() == null) {
            return i10;
        }
        return 5;
    }

    @Override // com.narvii.list.NVPagedAdapter
    protected View getItemView(Object obj, View view, ViewGroup viewGroup) {
        List<AccountNoticeConfig.NoticeButtonInfo> list;
        AccountNotice accountNotice = (AccountNotice) obj;
        if (getItemType(obj) == 5) {
            accountNotice.getStyle();
            AccountNoticeConfig config = accountNotice.getConfig();
            View viewCreateView = createView(R.layout.item_notice_custom, viewGroup, view);
            NVImageView nVImageView = (NVImageView) viewCreateView.findViewById(R.id.indicator);
            if (TextUtils.isEmpty(accountNotice.icon)) {
                nVImageView.setVisibility(8);
            } else {
                nVImageView.setVisibility(0);
                nVImageView.setImageUrl(accountNotice.icon);
            }
            configCommunityLayout(accountNotice, viewCreateView);
            ((TextView) viewCreateView.findViewById(R.id.notice_title)).setText(accountNotice.title);
            TextView textView = (TextView) viewCreateView.findViewById(R.id.content);
            textView.setText(accountNotice.content);
            textView.setVisibility(TextUtils.isEmpty(accountNotice.content) ? 8 : 0);
            ((TextView) viewCreateView.findViewById(R.id.datetime)).setText(this.formatter.format(accountNotice.createdTime));
            configOperator(accountNotice, viewCreateView);
            configCommunityLayout(accountNotice, viewCreateView);
            ViewGroup viewGroup2 = (ViewGroup) viewCreateView.findViewById(R.id.notice_button_container);
            viewGroup2.removeAllViews();
            if (!config.allowQuickOperation || (list = config.operationList) == null || list.isEmpty()) {
                viewCreateView.findViewById(R.id.notice_operator).setVisibility(0);
                textView.setMaxLines(2);
            } else {
                viewCreateView.findViewById(R.id.notice_operator).setVisibility(8);
                textView.setMaxLines(999);
                for (AccountNoticeConfig.NoticeButtonInfo noticeButtonInfo : config.operationList) {
                    if (noticeButtonInfo.isSupport()) {
                        View viewInflate = this.inflater.inflate(R.layout.item_notice_custom_button, viewGroup2, false);
                        ((TextView) viewInflate.findViewById(R.id.button_text)).setText(noticeButtonInfo.text);
                        ((PushButton) viewInflate).setColor(noticeButtonInfo.operationType == 2 ? -1503941 : -15960333);
                        viewInflate.setTag(R.id.notice_button_action, Integer.valueOf(noticeButtonInfo.operationType));
                        viewInflate.setOnClickListener(this.subviewClickListener);
                        viewGroup2.addView(viewInflate);
                    }
                }
            }
            return viewCreateView;
        }
        int i10 = accountNotice.type;
        boolean z6 = i10 == 4 || i10 == 10;
        if (getItemType(obj) == 0) {
            View viewCreateView2 = createView(R.layout.item_notice_warning_strike, viewGroup, view);
            ((ImageView) viewCreateView2.findViewById(R.id.indicator)).setImageResource(z6 ? R.drawable.ic_notice_strike : R.drawable.ic_notice_warning);
            ((TextView) viewCreateView2.findViewById(R.id.notice_title)).setText(accountNotice.title);
            Community community = this.communityMap.get(Integer.valueOf(accountNotice.cid));
            boolean zIsGlobal = accountNotice.isGlobal();
            View viewFindViewById = viewCreateView2.findViewById(R.id.community_container);
            viewFindViewById.setVisibility(zIsGlobal ? 8 : 0);
            if (community != null) {
                NVImageView nVImageView2 = (NVImageView) viewFindViewById.findViewById(R.id.community_icon);
                nVImageView2.setShowPressedMask(false);
                nVImageView2.setImageUrl(community.icon);
                ((TextView) viewFindViewById.findViewById(R.id.community_name)).setText(community.name);
            }
            ((TextView) viewCreateView2.findViewById(R.id.content)).setText(accountNotice.content);
            ((TextView) viewCreateView2.findViewById(R.id.datetime)).setText(this.formatter.format(accountNotice.createdTime));
            User user = accountNotice.operator;
            if (user != null) {
                ((UserAvatarLayout) viewCreateView2.findViewById(R.id.user_avatar_layout)).setUser(user, user.isSubscribeMemberShip(), new CommunityConfigHelper(Utils.getNVContext(getContext()), community != null ? community.id : 0).isPremiumFeatureEnabled());
                NicknameView nicknameView = (NicknameView) viewCreateView2.findViewById(R.id.nickname);
                nicknameView.setTextColor(isDarkNVTheme() ? -1 : ViewCompat.MEASURED_STATE_MASK);
                nicknameView.setUser(user);
            }
            return viewCreateView2;
        }
        if (getItemType(obj) == 1) {
            View viewCreateView3 = createView(R.layout.item_notice_role_change, viewGroup, view);
            viewCreateView3.findViewById(R.id.accept).setOnClickListener(this.subviewClickListener);
            viewCreateView3.findViewById(R.id.decline).setOnClickListener(this.subviewClickListener);
            TextView textView2 = (TextView) viewCreateView3.findViewById(R.id.info);
            String string = "";
            String str = accountNotice.operator == null ? "" : accountNotice.operator.nickname() + " ";
            int i11 = accountNotice.type;
            if (i11 == 1) {
                string = getContext().getString(R.string.invitation_to_leader, str);
            } else if (i11 == 2) {
                string = getContext().getString(R.string.invitation_to_curator, str);
            } else if (i11 == 3) {
                string = getContext().getString(R.string.invitation_to_agent, str);
            }
            textView2.setText(string);
            ((TextView) viewCreateView3.findViewById(R.id.datetime)).setText(this.formatter.format(accountNotice.createdTime));
            configCommunityLayout(accountNotice, viewCreateView3);
            return viewCreateView3;
        }
        if (getItemType(obj) != 3) {
            if (getItemType(obj) != 4) {
                if (getItemType(obj) != 2) {
                    return null;
                }
                View viewCreateView4 = createView(R.layout.item_notice_unknown, viewGroup, view);
                configCommunityLayout(accountNotice, viewCreateView4);
                viewCreateView4.findViewById(R.id.update).setOnClickListener(this.subviewClickListener);
                return viewCreateView4;
            }
            View viewCreateView5 = createView(R.layout.item_notice_system_message, viewGroup, view);
            String noticeLevel = accountNotice.getNoticeLevel();
            ((ImageView) viewCreateView5.findViewById(R.id.indicator)).setImageDrawable(ContextCompat.getDrawable(getContext(), Utils.isEqualsNotNull(noticeLevel, AccountNotice.LEVEL_FAIL) ? R.drawable.ic_notice_fail : Utils.isEqualsNotNull(noticeLevel, "success") ? R.drawable.ic_notice_success : R.drawable.ic_notice_message));
            configCommunityLayout(accountNotice, viewCreateView5);
            ((TextView) viewCreateView5.findViewById(R.id.notice_title)).setText(accountNotice.title);
            ((TextView) viewCreateView5.findViewById(R.id.content)).setText(accountNotice.content);
            ((TextView) viewCreateView5.findViewById(R.id.datetime)).setText(this.formatter.format(accountNotice.createdTime));
            configOperator(accountNotice, viewCreateView5);
            return viewCreateView5;
        }
        View viewCreateView6 = createView(R.layout.item_notice_copyright, viewGroup, view);
        ((TextView) viewCreateView6.findViewById(R.id.notice_title)).setText(accountNotice.title);
        Community community2 = this.communityMap.get(Integer.valueOf(accountNotice.cid));
        boolean zIsGlobal2 = accountNotice.isGlobal();
        View viewFindViewById2 = viewCreateView6.findViewById(R.id.community_container);
        viewFindViewById2.setVisibility(zIsGlobal2 ? 8 : 0);
        if (community2 != null) {
            NVImageView nVImageView3 = (NVImageView) viewFindViewById2.findViewById(R.id.community_icon);
            nVImageView3.setShowPressedMask(false);
            nVImageView3.setImageUrl(community2.icon);
            ((TextView) viewFindViewById2.findViewById(R.id.community_name)).setText(community2.name);
        }
        ((TextView) viewCreateView6.findViewById(R.id.content)).setText(accountNotice.content);
        ((TextView) viewCreateView6.findViewById(R.id.datetime)).setText(this.formatter.format(accountNotice.createdTime));
        User user2 = accountNotice.operator;
        if (user2 != null) {
            ((NVImageView) viewCreateView6.findViewById(R.id.avatar)).setImageUrl(user2.icon());
            NicknameView nicknameView2 = (NicknameView) viewCreateView6.findViewById(R.id.nickname);
            nicknameView2.setTextColor(isDarkNVTheme() ? -1 : ViewCompat.MEASURED_STATE_MASK);
            nicknameView2.setUser(user2);
        }
        return viewCreateView6;
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    @Override // com.narvii.list.NVPagedAdapter, com.narvii.list.NVAdapter, com.narvii.list.OnItemClickListener
    public boolean onItemClick(ListAdapter listAdapter, int i10, Object obj, View view, View view2) {
        if (obj instanceof AccountNotice) {
            AccountNotice accountNotice = (AccountNotice) obj;
            if (getItemType(accountNotice) == 2 && view2 == null) {
                return true;
            }
            if (view2 != null) {
                Object tag = view2.getTag(R.id.notice_button_action);
                int iIntValue = tag instanceof Integer ? ((Integer) tag).intValue() : 0;
                if (iIntValue == 0) {
                    switch (view2.getId()) {
                        case R.id.accept /* 2131361837 */:
                            handleNoticeAction((AccountNotice) getItem(i10), true);
                            break;
                        case R.id.avatar /* 2131362161 */:
                            User user = getItem(i10) == null ? null : ((AccountNotice) getItem(i10)).operator;
                            Intent intent = UserProfileFragment.intent(this.context, user);
                            if (user != null) {
                                safedk_NVAdapter_startActivity_5b31acbff248f36f6c86407552449fc2(this, intent);
                            }
                            break;
                        case R.id.decline /* 2131362831 */:
                            handleNoticeAction((AccountNotice) getItem(i10), false);
                            break;
                        case R.id.update /* 2131365678 */:
                            upgrateApp();
                            break;
                    }
                } else if (iIntValue == 1) {
                    handleNoticeAction((AccountNotice) getItem(i10), true);
                } else if (iIntValue == 2) {
                    handleNoticeAction((AccountNotice) getItem(i10), false);
                }
                return true;
            }
            if (accountNotice.getConfig() != null && accountNotice.getConfig().allowQuickOperation) {
                return true;
            }
            if (accountNotice.getConfig() == null && getItemType(accountNotice) == 1) {
                return true;
            }
            Intent intent2 = FragmentWrapperActivity.intent(NoticeDetailFragment.class);
            intent2.putExtra("notice", JacksonUtils.writeAsString(obj));
            Community community = this.communityMap.get(Integer.valueOf(accountNotice.cid));
            if (community != null) {
                intent2.putExtra(SearchPrefsHelper.PREFS_KEY_COMMUNITY, JacksonUtils.writeAsString(community));
            }
            safedk_NVAdapter_startActivity_5b31acbff248f36f6c86407552449fc2(this, intent2);
        }
        return super.onItemClick(listAdapter, i10, obj, view, view2);
    }

    @Override // com.narvii.notification.NotificationListener
    public void onNotification(Notification notification) {
        if (notification.obj instanceof AccountNotice) {
            super.editList(notification, false);
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.narvii.list.NVPagedAdapter
    public void onPageResponse(ApiRequest apiRequest, AccountNoticeListResponse accountNoticeListResponse, int i10) {
        super.onPageResponse(apiRequest, accountNoticeListResponse, i10);
        Map<Integer, Community> map = accountNoticeListResponse.communityMap;
        if (map != null) {
            this.communityMap.putAll(map);
        }
        this.isImportantNoticeLoaded = isEnd();
        if (!"start0".equals(apiRequest.tag()) || accountNoticeListResponse.noticeCount == -1) {
            return;
        }
        ((AccountService) getService("account")).updateNoticeCount(this.ndcId, accountNoticeListResponse.noticeCount, accountNoticeListResponse.timestamp, true);
    }

    protected void sendRefreshReminderRequest(final AccountNotice accountNotice) {
        if (this.account.hasAccount() && accountNotice != null) {
            if (accountNotice.cid > 0) {
                ((ApiService) getService("api")).exec(ApiRequest.builder().path("reminder/check").communityId(accountNotice.cid).param("ignoreUnreadChatThreadsCount", Boolean.TRUE).param("timezone", Integer.valueOf(Utils.getTimeZoneInMin())).build(), new ApiResponseListener<ReminderCheckResult>(ReminderCheckResult.class) { // from class: com.narvii.notice.ImportNoticeListAdapter.2
                    @Override // com.narvii.util.http.ApiResponseListener
                    public void onFail(ApiRequest apiRequest, int i10, List<NameValuePair> list, String str, ApiResponse apiResponse, Throwable th) {
                    }

                    @Override // com.narvii.util.http.ApiResponseListener
                    public void onFinish(ApiRequest apiRequest, ReminderCheckResult reminderCheckResult) throws Exception {
                        ImportNoticeListAdapter.this.account.updateNotificationCount(accountNotice.cid, reminderCheckResult.reminderCheckResult.notificationsCount, reminderCheckResult.timestamp, true);
                        ImportNoticeListAdapter.this.account.updateNoticeCount(accountNotice.cid, reminderCheckResult.reminderCheckResult.noticesCount, reminderCheckResult.timestamp, true);
                    }
                });
            }
            IncubatorNoticeService incubatorNoticeService = (IncubatorNoticeService) getService("_notice");
            if (incubatorNoticeService != null) {
                incubatorNoticeService.sendGlobalNoticeRequest();
            }
        }
    }

    public ImportNoticeListAdapter(NVContext nVContext, int i10) {
        super(nVContext);
        this.communityMap = new HashMap<>();
        this.ndcId = i10;
        this.account = (AccountService) nVContext.getService("account");
        this.formatter = new DateTimeFormatter();
    }

    @Override // com.narvii.list.NVPagedAdapter
    protected ApiRequest createRequest(boolean z6) {
        ApiRequest.Builder builderCommunityId = ApiRequest.builder().path("/notice").communityId(this.ndcId);
        builderCommunityId.param("type", "usersV2");
        builderCommunityId.param(NotificationCompat.CATEGORY_STATUS, 1);
        if (z6) {
            builderCommunityId.tag("start0");
        }
        return builderCommunityId.build();
    }

    @Override // com.narvii.list.NVPagedAdapter, android.widget.BaseAdapter, android.widget.ListAdapter
    public boolean isEnabled(int i10) {
        Object item = getItem(i10);
        if (item instanceof AccountNotice) {
            AccountNotice accountNotice = (AccountNotice) item;
            if (accountNotice.getConfig() != null && accountNotice.getConfig().allowQuickOperation) {
                return false;
            }
            if ((accountNotice.getConfig() == null && getItemType(item) == 1) || getItemType(item) == 2) {
                return false;
            }
        }
        return super.isEnabled(i10);
    }

    @Override // com.narvii.list.NVPagedAdapter
    protected void onFailResponse(ApiRequest apiRequest, String str, ApiResponse apiResponse, int i10) {
        super.onFailResponse(apiRequest, str, apiResponse, i10);
        this.isImportantNoticeLoaded = true;
    }
}
