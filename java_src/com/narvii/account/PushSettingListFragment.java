package com.narvii.account;

import android.content.DialogInterface;
import android.content.Intent;
import android.content.res.Resources;
import android.os.Bundle;
import android.support.v4.content.ContextCompat;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Button;
import android.widget.CheckBox;
import android.widget.CompoundButton;
import android.widget.ListAdapter;
import android.widget.ListView;
import android.widget.TextView;
import com.narvii.account.PushSettingListFragment;
import com.narvii.amino.mastes.R;
import com.narvii.app.FragmentWrapperActivity;
import com.narvii.app.NVContext;
import com.narvii.community.CommunityService;
import com.narvii.config.ConfigService;
import com.narvii.list.AdriftAdapter;
import com.narvii.list.MergeAdapter;
import com.narvii.list.NVListFragment;
import com.narvii.list.NVPagedAdapter;
import com.narvii.list.prefs.PrefsAdapter;
import com.narvii.list.prefs.PrefsSection;
import com.narvii.list.prefs.PrefsToggle;
import com.narvii.logging.ActSemantic;
import com.narvii.logging.LogEvent;
import com.narvii.master.setting.CommunityPushResponse;
import com.narvii.master.setting.CommunitySubPushSetting;
import com.narvii.master.setting.PushSettingResponse;
import com.narvii.master.setting.PushSettings;
import com.narvii.model.Community;
import com.narvii.model.api.ApiResponse;
import com.narvii.util.Callback;
import com.narvii.util.JacksonUtils;
import com.narvii.util.NVToast;
import com.narvii.util.NotificationManagerHelper;
import com.narvii.util.dialog.AlertDialog;
import com.narvii.util.dialog.ProgressDialog;
import com.narvii.util.http.ApiRequest;
import com.narvii.util.http.ApiResponseListener;
import com.narvii.util.http.ApiService;
import com.narvii.util.http.NameValuePair;
import com.narvii.widget.NVListView;
import com.narvii.widget.ThumbImageView;
import java.util.List;

/* loaded from: classes2.dex */
public class PushSettingListFragment extends NVListFragment {
    GlobalNotificationAdapter myAdapter;
    NotificationAdapter notificationAdapter;
    NotificationManagerHelper notificationManagerHelper;
    ProgressDialog progressDialog;
    CommunityPushResponse response;
    private final Callback<PrefsToggle> switchCallback = new AnonymousClass2();

    @Override // com.narvii.app.NVFragment, com.narvii.logging.Page
    public String getPageName() {
        return "GlobalNotifications";
    }

    @Override // com.narvii.list.NVListFragment
    protected int getSelectorDarkColor() {
        return 872415231;
    }

    @Override // com.narvii.app.theme.NVThemeFragment
    public int initNVTheme() {
        return 2;
    }

    @Override // com.narvii.list.NVListFragment, com.narvii.app.NVFragment, android.support.v4.app.Fragment
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        setTitle(R.string.notifications_setting);
        this.progressDialog = new ProgressDialog(getContext());
        this.progressDialog.setOnDismissListener(new DialogInterface.OnDismissListener() { // from class: com.narvii.account.-$$Lambda$PushSettingListFragment$2EJL5kJjkNqx799tZiMKtlk0zqw
            @Override // android.content.DialogInterface.OnDismissListener
            public final void onDismiss(DialogInterface dialogInterface) {
                this.f$0.lambda$onCreate$0$PushSettingListFragment(dialogInterface);
            }
        });
        this.notificationManagerHelper = new NotificationManagerHelper(getContext());
    }

    public /* synthetic */ void lambda$onCreate$0$PushSettingListFragment(DialogInterface dialogInterface) {
        GlobalNotificationAdapter globalNotificationAdapter = this.myAdapter;
        if (globalNotificationAdapter != null) {
            globalNotificationAdapter.notifyDataSetChanged();
        }
    }

    @Override // com.narvii.list.NVListFragment, android.support.v4.app.Fragment
    public View onCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        return layoutInflater.inflate(R.layout.notification_list_view, viewGroup, false);
    }

    @Override // com.narvii.list.NVListFragment
    protected ListAdapter createAdapter(Bundle bundle) {
        MergeAdapter mergeAdapter = new MergeAdapter(this);
        this.notificationAdapter = new NotificationAdapter();
        GlobalNotificationAdapter globalNotificationAdapter = new GlobalNotificationAdapter(this);
        this.myAdapter = globalNotificationAdapter;
        mergeAdapter.addAdapter(globalNotificationAdapter, true);
        mergeAdapter.addAdapter(new SectionAdapter(R.string.communities) { // from class: com.narvii.account.PushSettingListFragment.1
            @Override // com.narvii.list.AdriftAdapter, android.widget.Adapter
            public int getCount() {
                return PushSettingListFragment.this.notificationAdapter.getCount() > 0 ? 1 : 0;
            }
        });
        mergeAdapter.addAdapter(this.notificationAdapter);
        return mergeAdapter;
    }

    @Override // com.narvii.list.NVListFragment
    protected void onListViewCreated(ListView listView, Bundle bundle) {
        super.onListViewCreated(listView, bundle);
        setEmptyView(R.layout.notification_setting_empty_view);
        getListView().setDivider(null);
        getListView().setDividerHeight(0);
    }

    /* renamed from: com.narvii.account.PushSettingListFragment$2, reason: invalid class name */
    class AnonymousClass2 implements Callback<PrefsToggle> {
        public /* synthetic */ void lambda$call$2$PushSettingListFragment$2(CommunityPushResponse communityPushResponse, int[] iArr, View view) {
        }

        AnonymousClass2() {
        }

        @Override // com.narvii.util.Callback
        public void call(PrefsToggle prefsToggle) {
            if (!PushSettingListFragment.this.notificationManagerHelper.areNotificationsEnabled() && PushSettingListFragment.this.notificationManagerHelper.isNotificationSettingAvailable()) {
                AlertDialog alertDialog = new AlertDialog(PushSettingListFragment.this.getContext());
                alertDialog.setMessage(R.string.push_setting_turn_on_notification_msg);
                alertDialog.addButton(android.R.string.cancel, 32, (View.OnClickListener) null);
                alertDialog.addButton(R.string.push_setting_turn_on_btn, 4, new View.OnClickListener() { // from class: com.narvii.account.-$$Lambda$PushSettingListFragment$2$-VzC8DPKiRdKjTyv25K44GInM0w
                    @Override // android.view.View.OnClickListener
                    public final void onClick(View view) {
                        this.f$0.lambda$call$0$PushSettingListFragment$2(view);
                    }
                });
                alertDialog.show();
                prefsToggle.on = !prefsToggle.on;
                PushSettingListFragment.this.myAdapter.notifyDataSetChanged();
                return;
            }
            final CommunityPushResponse communityPushResponseM44clone = PushSettingListFragment.this.response.m44clone();
            final AlertDialog alertDialog2 = new AlertDialog(PushSettingListFragment.this.getContext());
            alertDialog2.setTitle(PushSettingListFragment.this.getString(R.string.push_setting_confirm));
            ((Button) alertDialog2.addButton(R.string.cancel, 64, new View.OnClickListener() { // from class: com.narvii.account.-$$Lambda$PushSettingListFragment$2$oArEzO21FC1vpIZoVbwoZS_0dgM
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    this.f$0.lambda$call$1$PushSettingListFragment$2(alertDialog2, view);
                }
            })).setTextColor(-11890462);
            final int[] iArr = new int[1];
            ((Button) alertDialog2.addButton(R.string.yes, 64, new View.OnClickListener() { // from class: com.narvii.account.-$$Lambda$PushSettingListFragment$2$Dktw9ujmNlx3aOSAc1wagVQEWQE
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    this.f$0.lambda$call$2$PushSettingListFragment$2(communityPushResponseM44clone, iArr, view);
                }
            })).setTextColor(-11890462);
            int i = prefsToggle.id;
            if (i == R.string.push_notifications_all) {
                PushSettingListFragment pushSettingListFragment = PushSettingListFragment.this;
                CommunityPushResponse communityPushResponse = pushSettingListFragment.response;
                communityPushResponseM44clone.pushEnabled = !communityPushResponse.pushEnabled;
                if (!communityPushResponse.pushEnabled) {
                    pushSettingListFragment.changePushSetting(communityPushResponseM44clone);
                    return;
                }
                alertDialog2.setTitle(pushSettingListFragment.getString(R.string.push_setting_global_confirm));
                alertDialog2.setMessage(PushSettingListFragment.this.getString(R.string.push_setting_disable_global));
                alertDialog2.show();
                iArr[0] = 1;
                return;
            }
            if (i == R.string.push_notifications_broadcast) {
                CommunitySubPushSetting communitySubPushSetting = communityPushResponseM44clone.pushExtensions;
                PushSettingListFragment pushSettingListFragment2 = PushSettingListFragment.this;
                CommunitySubPushSetting communitySubPushSetting2 = pushSettingListFragment2.response.pushExtensions;
                communitySubPushSetting.communityBroadcastsEnabled = true ^ communitySubPushSetting2.communityBroadcastsEnabled;
                if (!communitySubPushSetting2.communityBroadcastsEnabled) {
                    pushSettingListFragment2.changePushSetting(communityPushResponseM44clone);
                    return;
                }
                alertDialog2.setMessage(pushSettingListFragment2.getString(R.string.push_setting_disable_broadcast));
                alertDialog2.show();
                iArr[0] = 3;
                return;
            }
            if (i == R.string.push_notifications_activity) {
                CommunitySubPushSetting communitySubPushSetting3 = communityPushResponseM44clone.pushExtensions;
                PushSettingListFragment pushSettingListFragment3 = PushSettingListFragment.this;
                communitySubPushSetting3.communityActivitiesEnabled = true ^ pushSettingListFragment3.response.pushExtensions.communityActivitiesEnabled;
                Community community = ((CommunityService) pushSettingListFragment3.getService("community")).getCommunity(0);
                if (PushSettingListFragment.this.response.pushExtensions.communityActivitiesEnabled) {
                    if (community != null && (community == null || community.membersCount > 25)) {
                        PushSettingListFragment.this.changePushSetting(communityPushResponseM44clone);
                        return;
                    } else {
                        alertDialog2.setMessage(PushSettingListFragment.this.getString(R.string.push_setting_activity_disable_desc));
                        alertDialog2.show();
                        return;
                    }
                }
                if (community != null && (community == null || community.membersCount <= 25)) {
                    PushSettingListFragment.this.changePushSetting(communityPushResponseM44clone);
                } else {
                    alertDialog2.setMessage(PushSettingListFragment.this.getString(R.string.push_setting_activity_open_desc));
                    alertDialog2.show();
                }
            }
        }

        public /* synthetic */ void lambda$call$0$PushSettingListFragment$2(View view) {
            PushSettingListFragment pushSettingListFragment = PushSettingListFragment.this;
            pushSettingListFragment.startActivity(pushSettingListFragment.notificationManagerHelper.getNotificationSettingIntent());
        }

        public /* synthetic */ void lambda$call$1$PushSettingListFragment$2(AlertDialog alertDialog, View view) {
            alertDialog.dismiss();
            PushSettingListFragment.this.myAdapter.notifyDataSetChanged();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void changePushSetting(final CommunityPushResponse communityPushResponse) {
        this.progressDialog.show();
        ((ApiService) getService("api")).exec(new ApiRequest.Builder().path("/user-profile/push").communityId(0).post().param("pushEnabled", Boolean.valueOf(communityPushResponse.pushEnabled)).param("pushExtensions", JacksonUtils.DEFAULT_MAPPER.valueToTree(communityPushResponse.pushExtensions)).build(), new ApiResponseListener<CommunityPushResponse>(CommunityPushResponse.class) { // from class: com.narvii.account.PushSettingListFragment.3
            @Override // com.narvii.util.http.ApiResponseListener
            public void onFinish(ApiRequest apiRequest, CommunityPushResponse communityPushResponse2) throws Exception {
                super.onFinish(apiRequest, (ApiRequest) communityPushResponse2);
                PushSettingListFragment pushSettingListFragment = PushSettingListFragment.this;
                pushSettingListFragment.response = communityPushResponse2;
                pushSettingListFragment.progressDialog.dismiss();
                PushSettingListFragment.this.myAdapter.notifyDataSetChanged();
                LogEvent.clickBuilder(PushSettingListFragment.this, communityPushResponse.pushEnabled ? ActSemantic.turnOnAlert : ActSemantic.turnOffAlert).area("PauseAllPush").send();
            }

            @Override // com.narvii.util.http.ApiResponseListener
            public void onFail(ApiRequest apiRequest, int i, List<NameValuePair> list, String str, ApiResponse apiResponse, Throwable th) {
                super.onFail(apiRequest, i, list, str, apiResponse, th);
                PushSettingListFragment.this.progressDialog.dismiss();
                PushSettingListFragment.this.myAdapter.notifyDataSetChanged();
                if (i == 2506) {
                    final AlertDialog alertDialog = new AlertDialog(PushSettingListFragment.this.getContext());
                    alertDialog.setMessage(str);
                    ((Button) alertDialog.addButton(R.string.got_it, 64, new View.OnClickListener() { // from class: com.narvii.account.PushSettingListFragment.3.1
                        @Override // android.view.View.OnClickListener
                        public void onClick(View view) {
                            alertDialog.dismiss();
                            PushSettingListFragment.this.myAdapter.notifyDataSetChanged();
                        }
                    })).setTextColor(-11890462);
                    alertDialog.show();
                    return;
                }
                NVToast.makeText(PushSettingListFragment.this.getContext(), str, 1).show();
            }
        });
    }

    class GlobalNotificationAdapter extends PrefsAdapter {
        String error;

        @Override // com.narvii.list.prefs.PrefsAdapter, com.narvii.list.NVAdapter
        protected boolean supportNVTheme() {
            return true;
        }

        public GlobalNotificationAdapter(NVContext nVContext) {
            super(nVContext);
        }

        @Override // com.narvii.list.prefs.PrefsAdapter
        protected void buildCells(List<Object> list) {
            PushSettingListFragment pushSettingListFragment = PushSettingListFragment.this;
            if (pushSettingListFragment.response == null || pushSettingListFragment.getActivity() == null) {
                return;
            }
            list.add(new PrefsSection(R.string.global));
            PrefsToggle prefsToggle = new PrefsToggle(R.string.push_notifications_all, PushSettingListFragment.this.getString(R.string.push_notifications_global));
            PushSettingListFragment pushSettingListFragment2 = PushSettingListFragment.this;
            prefsToggle.on = pushSettingListFragment2.response.pushEnabled;
            prefsToggle.callback = pushSettingListFragment2.switchCallback;
            prefsToggle.desc = PushSettingListFragment.this.getString(R.string.global_push_notification_desc);
            list.add(prefsToggle);
        }

        @Override // com.narvii.list.prefs.PrefsAdapter, android.widget.Adapter
        public View getView(int i, View view, ViewGroup viewGroup) throws Resources.NotFoundException {
            final Object item = getItem(i);
            View view2 = super.getView(i, view, viewGroup);
            if (item instanceof PrefsToggle) {
                PrefsToggle prefsToggle = (PrefsToggle) item;
                TextView textView = (TextView) view2.findViewById(R.id.name);
                if (textView != null) {
                    textView.setMaxLines(2);
                    textView.setSingleLine(false);
                    textView.setTextSize(1, 16.0f);
                }
                TextView textView2 = (TextView) view2.findViewById(R.id.desc);
                if (textView2 != null) {
                    textView2.setMaxLines(2);
                    textView2.setSingleLine(false);
                    textView2.setTextSize(1, 12.0f);
                }
                CheckBox checkBox = (CheckBox) view2.findViewById(R.id.check_box);
                if (checkBox != null) {
                    checkBox.setEnabled(prefsToggle.enabled);
                    checkBox.setOnCheckedChangeListener(null);
                    checkBox.setChecked(prefsToggle.on);
                    checkBox.setOnCheckedChangeListener(new CompoundButton.OnCheckedChangeListener() { // from class: com.narvii.account.-$$Lambda$PushSettingListFragment$GlobalNotificationAdapter$ry2MwwVZR-Z5BNJNesQlefNQcv0
                        @Override // android.widget.CompoundButton.OnCheckedChangeListener
                        public final void onCheckedChanged(CompoundButton compoundButton, boolean z) {
                            PushSettingListFragment.GlobalNotificationAdapter.lambda$getView$0(item, compoundButton, z);
                        }
                    });
                }
            }
            return view2;
        }

        static /* synthetic */ void lambda$getView$0(Object obj, CompoundButton compoundButton, boolean z) {
            PrefsToggle prefsToggle = (PrefsToggle) obj;
            prefsToggle.callback.call(prefsToggle);
        }

        @Override // com.narvii.list.NVAdapter
        public void onAttach() {
            super.onAttach();
            sendPushStatusRequest();
        }

        @Override // com.narvii.list.NVAdapter
        public String errorMessage() {
            return this.error;
        }

        @Override // com.narvii.list.NVAdapter
        public boolean isListShown() {
            return (PushSettingListFragment.this.response == null && this.error == null) ? false : true;
        }

        @Override // com.narvii.list.NVAdapter
        public void refresh(int i, Callback<Integer> callback) {
            PushSettingListFragment.this.response = null;
            this.error = null;
            sendPushStatusRequest();
            notifyDataSetChanged();
        }

        private void sendPushStatusRequest() {
            ((ApiService) getService("api")).exec(ApiRequest.builder().global().path("/user-profile/push").build(), new ApiResponseListener<CommunityPushResponse>(CommunityPushResponse.class) { // from class: com.narvii.account.PushSettingListFragment.GlobalNotificationAdapter.1
                @Override // com.narvii.util.http.ApiResponseListener
                public void onFinish(ApiRequest apiRequest, CommunityPushResponse communityPushResponse) throws Exception {
                    GlobalNotificationAdapter globalNotificationAdapter = GlobalNotificationAdapter.this;
                    PushSettingListFragment.this.response = communityPushResponse;
                    globalNotificationAdapter.error = null;
                    globalNotificationAdapter.notifyDataSetChanged();
                }

                @Override // com.narvii.util.http.ApiResponseListener
                public void onFail(ApiRequest apiRequest, int i, List<NameValuePair> list, String str, ApiResponse apiResponse, Throwable th) {
                    GlobalNotificationAdapter globalNotificationAdapter = GlobalNotificationAdapter.this;
                    globalNotificationAdapter.error = str;
                    globalNotificationAdapter.notifyDataSetChanged();
                }
            });
        }
    }

    class SectionAdapter extends AdriftAdapter {
        private int colorPrimary;
        int resId;

        @Override // com.narvii.list.NVAdapter
        protected boolean supportNVTheme() {
            return true;
        }

        public SectionAdapter(int i) {
            super(PushSettingListFragment.this);
            this.colorPrimary = ((ConfigService) getService("config")).getTheme().colorPrimary();
            this.resId = i;
        }

        @Override // android.widget.Adapter
        public View getView(int i, View view, ViewGroup viewGroup) {
            View viewCreateView = createView(R.layout.prefs_section_item, viewGroup, view);
            TextView textView = (TextView) viewCreateView.findViewById(R.id.text);
            textView.setTextColor(isDarkNVTheme() ? ContextCompat.getColor(getContext(), R.color.prefs_section_color_dark) : this.colorPrimary);
            textView.setText(this.resId);
            return viewCreateView;
        }
    }

    class NotificationAdapter extends NVPagedAdapter<PushSettings, PushSettingResponse> {
        @Override // com.narvii.list.NVPagedAdapter
        protected List<PushSettings> filterResponseList(List<PushSettings> list, int i) {
            return list;
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

        public NotificationAdapter() {
            super(PushSettingListFragment.this);
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.narvii.list.NVPagedAdapter
        public Class<PushSettings> dataType() {
            return PushSettings.class;
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.narvii.list.NVPagedAdapter
        public Class<? extends PushSettingResponse> responseType() {
            return PushSettingResponse.class;
        }

        @Override // com.narvii.list.NVPagedAdapter
        protected ApiRequest createRequest(boolean z) {
            return ApiRequest.builder().global().path("/account/push-settings").build();
        }

        @Override // com.narvii.list.NVPagedAdapter
        protected View getItemView(Object obj, View view, ViewGroup viewGroup) {
            if (!(obj instanceof PushSettings)) {
                return null;
            }
            PushSettings pushSettings = (PushSettings) obj;
            View viewCreateView = createView(R.layout.item_push_setting, viewGroup, view);
            ((ThumbImageView) viewCreateView.findViewById(R.id.community_icon)).setImageUrl(pushSettings.icon);
            ((TextView) viewCreateView.findViewById(R.id.community_name)).setText(pushSettings.name);
            return viewCreateView;
        }

        @Override // com.narvii.list.NVPagedAdapter, com.narvii.list.NVAdapter, com.narvii.list.OnItemClickListener
        public boolean onItemClick(ListAdapter listAdapter, int i, Object obj, View view, View view2) {
            if (obj instanceof PushSettings) {
                Intent intent = FragmentWrapperActivity.intent(CommunityPushSettingFragment.class);
                PushSettings pushSettings = (PushSettings) obj;
                intent.putExtra(CommunityPushSettingFragment.COMMUNITY_PUSH_SETTING_ID, pushSettings.id);
                intent.putExtra(CommunityPushSettingFragment.COMMUNITY_PUSH_SETTING_NAME, pushSettings.name);
                intent.putExtra("Source", "Settings");
                startActivity(intent);
                return true;
            }
            return super.onItemClick(listAdapter, i, obj, view, view2);
        }
    }

    @Override // com.narvii.list.NVListFragment, com.narvii.app.theme.NVThemeFragment
    public void onThemeChange(int i) throws Resources.NotFoundException {
        super.onThemeChange(i);
        if (i == 2) {
            int color = getResources().getColor(R.color.color_default_primary);
            ((NVListView) getListView()).setOverscrollStretchHeader(color);
            ((NVListView) getListView()).setOverscrollStretchFooter(color);
            ((NVListView) getListView()).setListContentBackgroundColor(0);
            return;
        }
        if (i == 1) {
            int color2 = getResources().getColor(R.color.prefs_background);
            ((NVListView) getListView()).setOverscrollStretchHeader(color2);
            ((NVListView) getListView()).setOverscrollStretchFooter(color2);
            ((NVListView) getListView()).setListContentBackgroundColor(-1);
        }
    }
}
