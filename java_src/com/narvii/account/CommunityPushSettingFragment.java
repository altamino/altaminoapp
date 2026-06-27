package com.narvii.account;

import android.content.DialogInterface;
import android.content.res.Resources;
import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Button;
import android.widget.CheckBox;
import android.widget.CompoundButton;
import android.widget.ListAdapter;
import android.widget.ListView;
import android.widget.TextView;
import com.narvii.amino.mastes.R;
import com.narvii.app.NVApplication;
import com.narvii.community.CommunityService;
import com.narvii.config.ConfigService;
import com.narvii.list.NVListFragment;
import com.narvii.list.prefs.PrefsAdapter;
import com.narvii.list.prefs.PrefsToggle;
import com.narvii.logging.ActSemantic;
import com.narvii.logging.LogEvent;
import com.narvii.master.setting.CommunityPushResponse;
import com.narvii.master.setting.CommunitySubPushSetting;
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
import java.util.List;

/* loaded from: classes2.dex */
public class CommunityPushSettingFragment extends NVListFragment {
    public static final int API_ERR_PUSH_CAN_NOT_ENABLE_COMMUNITY_ACTIVITIES_PUSH = 2506;
    public static final String COMMUNITY_PUSH_SETTING_ID = "community_push_setting_id";
    public static final String COMMUNITY_PUSH_SETTING_NAME = "community_push_setting_name";
    int cId;
    MyAdapter myAdapter;
    NotificationManagerHelper notificationManagerHelper;
    ProgressDialog progressDialog;
    CommunityPushResponse response;
    String cName = null;
    private final Callback<PrefsToggle> switchCallback = new Callback<PrefsToggle>() { // from class: com.narvii.account.CommunityPushSettingFragment.2
        @Override // com.narvii.util.Callback
        public void call(PrefsToggle prefsToggle) {
            if (!CommunityPushSettingFragment.this.notificationManagerHelper.areNotificationsEnabled() && CommunityPushSettingFragment.this.notificationManagerHelper.isNotificationSettingAvailable()) {
                AlertDialog alertDialog = new AlertDialog(CommunityPushSettingFragment.this.getContext());
                alertDialog.setMessage(R.string.push_setting_turn_on_notification_msg);
                alertDialog.addButton(android.R.string.cancel, 32, (View.OnClickListener) null);
                alertDialog.addButton(R.string.push_setting_turn_on_btn, 4, new View.OnClickListener() { // from class: com.narvii.account.CommunityPushSettingFragment.2.1
                    @Override // android.view.View.OnClickListener
                    public void onClick(View view) {
                        CommunityPushSettingFragment communityPushSettingFragment = CommunityPushSettingFragment.this;
                        communityPushSettingFragment.startActivity(communityPushSettingFragment.notificationManagerHelper.getNotificationSettingIntent());
                    }
                });
                alertDialog.show();
                prefsToggle.on = !prefsToggle.on;
                CommunityPushSettingFragment.this.myAdapter.notifyDataSetChanged();
                return;
            }
            final CommunityPushResponse communityPushResponseM44clone = CommunityPushSettingFragment.this.response.m44clone();
            final AlertDialog alertDialog2 = new AlertDialog(CommunityPushSettingFragment.this.getContext());
            alertDialog2.setTitle(CommunityPushSettingFragment.this.getString(R.string.push_setting_confirm));
            ((Button) alertDialog2.addButton(R.string.cancel, 64, new View.OnClickListener() { // from class: com.narvii.account.CommunityPushSettingFragment.2.2
                @Override // android.view.View.OnClickListener
                public void onClick(View view) {
                    alertDialog2.dismiss();
                    CommunityPushSettingFragment.this.myAdapter.notifyDataSetChanged();
                }
            })).setTextColor(-11890462);
            final int[] iArr = new int[1];
            ((Button) alertDialog2.addButton(R.string.yes, 64, new View.OnClickListener() { // from class: com.narvii.account.CommunityPushSettingFragment.2.3
                @Override // android.view.View.OnClickListener
                public void onClick(View view) {
                    CommunityPushSettingFragment.this.changePushSetting(communityPushResponseM44clone, iArr[0]);
                }
            })).setTextColor(-11890462);
            int i = prefsToggle.id;
            if (i == R.string.push_notifications_all) {
                CommunityPushSettingFragment communityPushSettingFragment = CommunityPushSettingFragment.this;
                CommunityPushResponse communityPushResponse = communityPushSettingFragment.response;
                communityPushResponseM44clone.pushEnabled = !communityPushResponse.pushEnabled;
                if (!communityPushResponse.pushEnabled) {
                    communityPushSettingFragment.changePushSetting(communityPushResponseM44clone, 1);
                    return;
                }
                alertDialog2.setMessage(communityPushSettingFragment.getString(R.string.push_setting_disable_all));
                alertDialog2.show();
                iArr[0] = 1;
                return;
            }
            if (i == R.string.push_notifications_broadcast) {
                CommunitySubPushSetting communitySubPushSetting = communityPushResponseM44clone.pushExtensions;
                CommunityPushSettingFragment communityPushSettingFragment2 = CommunityPushSettingFragment.this;
                CommunitySubPushSetting communitySubPushSetting2 = communityPushSettingFragment2.response.pushExtensions;
                communitySubPushSetting.communityBroadcastsEnabled = true ^ communitySubPushSetting2.communityBroadcastsEnabled;
                if (!communitySubPushSetting2.communityBroadcastsEnabled) {
                    communityPushSettingFragment2.changePushSetting(communityPushResponseM44clone, 3);
                    return;
                }
                alertDialog2.setMessage(communityPushSettingFragment2.getString(R.string.push_setting_disable_broadcast));
                alertDialog2.show();
                iArr[0] = 3;
                return;
            }
            if (i == R.string.push_notifications_activity) {
                CommunitySubPushSetting communitySubPushSetting3 = communityPushResponseM44clone.pushExtensions;
                CommunityPushSettingFragment communityPushSettingFragment3 = CommunityPushSettingFragment.this;
                communitySubPushSetting3.communityActivitiesEnabled = true ^ communityPushSettingFragment3.response.pushExtensions.communityActivitiesEnabled;
                communityPushSettingFragment3.getCid();
                Community community = ((CommunityService) CommunityPushSettingFragment.this.getService("community")).getCommunity(CommunityPushSettingFragment.this.cId);
                if (CommunityPushSettingFragment.this.response.pushExtensions.communityActivitiesEnabled) {
                    if (community != null && (community == null || community.membersCount > 25)) {
                        CommunityPushSettingFragment.this.changePushSetting(communityPushResponseM44clone, 2);
                        return;
                    }
                    alertDialog2.setMessage(CommunityPushSettingFragment.this.getString(R.string.push_setting_activity_disable_desc));
                    alertDialog2.show();
                    iArr[0] = 2;
                    return;
                }
                if (community != null && (community == null || community.membersCount <= 25)) {
                    CommunityPushSettingFragment.this.changePushSetting(communityPushResponseM44clone, 2);
                    return;
                }
                alertDialog2.setMessage(CommunityPushSettingFragment.this.getString(R.string.push_setting_activity_open_desc));
                alertDialog2.show();
                iArr[0] = 2;
            }
        }
    };

    @Override // com.narvii.app.NVFragment, com.narvii.logging.Page
    public String getPageName() {
        return "CommunityNotifications";
    }

    @Override // com.narvii.list.NVListFragment, com.narvii.app.NVFragment, android.support.v4.app.Fragment
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        if (bundle != null) {
            this.cId = bundle.getInt("cId");
            this.cName = bundle.getString("cName");
        }
        this.progressDialog = new ProgressDialog(getContext());
        this.progressDialog.setOnDismissListener(new DialogInterface.OnDismissListener() { // from class: com.narvii.account.CommunityPushSettingFragment.1
            @Override // android.content.DialogInterface.OnDismissListener
            public void onDismiss(DialogInterface dialogInterface) {
                MyAdapter myAdapter = CommunityPushSettingFragment.this.myAdapter;
                if (myAdapter != null) {
                    myAdapter.notifyDataSetChanged();
                }
            }
        });
        this.notificationManagerHelper = new NotificationManagerHelper(getContext());
    }

    @Override // com.narvii.list.NVListFragment, android.support.v4.app.Fragment
    public View onCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        return layoutInflater.inflate(R.layout.notification_list_view, viewGroup, false);
    }

    @Override // com.narvii.list.NVListFragment
    protected void onListViewCreated(ListView listView, Bundle bundle) {
        super.onListViewCreated(listView, bundle);
        getListView().setDivider(null);
        getListView().setDividerHeight(0);
    }

    @Override // com.narvii.list.NVListFragment, com.narvii.app.NVFragment, android.support.v4.app.Fragment
    public void onSaveInstanceState(Bundle bundle) {
        super.onSaveInstanceState(bundle);
        bundle.putInt("cId", this.cId);
        bundle.putString("cName", this.cName);
    }

    @Override // com.narvii.list.NVListFragment, com.narvii.app.NVFragment, com.narvii.app.theme.NVThemeFragment, android.support.v4.app.Fragment
    public void onViewCreated(View view, Bundle bundle) throws Resources.NotFoundException {
        super.onViewCreated(view, bundle);
        if (NVApplication.CLIENT_TYPE != 100 || getStringParam(COMMUNITY_PUSH_SETTING_NAME) == null) {
            setTitle(getString(R.string.push_notifications));
        } else {
            setTitle(getString(R.string.community_notifications, getStringParam(COMMUNITY_PUSH_SETTING_NAME)));
        }
        setDarkNVTheme(((ConfigService) getService("config")).getCommunityId() == 0);
    }

    @Override // com.narvii.list.NVListFragment
    protected ListAdapter createAdapter(Bundle bundle) {
        MyAdapter myAdapter = new MyAdapter();
        this.myAdapter = myAdapter;
        return myAdapter;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public int getCid() {
        if (NVApplication.CLIENT_TYPE == 101) {
            this.cId = ((ConfigService) getService("config")).getCommunityId();
        } else {
            this.cId = getIntParam(COMMUNITY_PUSH_SETTING_ID);
        }
        return this.cId;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void changePushSetting(CommunityPushResponse communityPushResponse, final int i) {
        this.progressDialog.show();
        ((ApiService) getService("api")).exec(new ApiRequest.Builder().path("/user-profile/push").communityId(this.cId).post().param("pushEnabled", Boolean.valueOf(communityPushResponse.pushEnabled)).param("pushExtensions", JacksonUtils.DEFAULT_MAPPER.valueToTree(communityPushResponse.pushExtensions)).build(), new ApiResponseListener<CommunityPushResponse>(CommunityPushResponse.class) { // from class: com.narvii.account.CommunityPushSettingFragment.3
            @Override // com.narvii.util.http.ApiResponseListener
            public void onFinish(ApiRequest apiRequest, CommunityPushResponse communityPushResponse2) throws Exception {
                super.onFinish(apiRequest, (ApiRequest) communityPushResponse2);
                CommunityPushSettingFragment communityPushSettingFragment = CommunityPushSettingFragment.this;
                communityPushSettingFragment.response = communityPushResponse2;
                communityPushSettingFragment.progressDialog.dismiss();
                CommunityPushSettingFragment.this.myAdapter.notifyDataSetChanged();
                if (communityPushResponse2 == null || communityPushResponse2.pushExtensions == null) {
                    return;
                }
                String str = null;
                boolean z = false;
                int i2 = i;
                if (i2 == 1) {
                    z = communityPushResponse2.pushEnabled;
                    str = "AllNotifications";
                } else if (i2 == 2) {
                    z = CommunityPushSettingFragment.this.response.pushExtensions.communityActivitiesEnabled;
                    str = "ActivitiesFromOtherMembers";
                } else if (i2 == 3) {
                    z = CommunityPushSettingFragment.this.response.pushExtensions.communityBroadcastsEnabled;
                    str = "BroadcastsFromLeaders";
                }
                LogEvent.clickBuilder(CommunityPushSettingFragment.this, z ? ActSemantic.turnOnAlert : ActSemantic.turnOffAlert).area(str).send();
            }

            @Override // com.narvii.util.http.ApiResponseListener
            public void onFail(ApiRequest apiRequest, int i2, List<NameValuePair> list, String str, ApiResponse apiResponse, Throwable th) {
                super.onFail(apiRequest, i2, list, str, apiResponse, th);
                CommunityPushSettingFragment.this.progressDialog.dismiss();
                CommunityPushSettingFragment.this.myAdapter.notifyDataSetChanged();
                if (i2 == 2506) {
                    final AlertDialog alertDialog = new AlertDialog(CommunityPushSettingFragment.this.getContext());
                    alertDialog.setMessage(str);
                    ((Button) alertDialog.addButton(R.string.got_it, 64, new View.OnClickListener() { // from class: com.narvii.account.CommunityPushSettingFragment.3.1
                        @Override // android.view.View.OnClickListener
                        public void onClick(View view) {
                            alertDialog.dismiss();
                            CommunityPushSettingFragment.this.myAdapter.notifyDataSetChanged();
                        }
                    })).setTextColor(-11890462);
                    alertDialog.show();
                    return;
                }
                NVToast.makeText(CommunityPushSettingFragment.this.getContext(), str, 1).show();
            }
        });
    }

    class MyAdapter extends PrefsAdapter {
        String error;

        @Override // com.narvii.list.prefs.PrefsAdapter, com.narvii.list.NVAdapter
        protected boolean supportNVTheme() {
            return true;
        }

        public MyAdapter() {
            super(CommunityPushSettingFragment.this);
        }

        @Override // com.narvii.list.prefs.PrefsAdapter
        protected void buildCells(List<Object> list) {
            CommunityPushSettingFragment communityPushSettingFragment = CommunityPushSettingFragment.this;
            if (communityPushSettingFragment.response == null || communityPushSettingFragment.getActivity() == null) {
                return;
            }
            PrefsToggle prefsToggle = new PrefsToggle(R.string.push_notifications_all, CommunityPushSettingFragment.this.getString(R.string.push_notifications_all));
            CommunityPushSettingFragment communityPushSettingFragment2 = CommunityPushSettingFragment.this;
            prefsToggle.on = communityPushSettingFragment2.response.pushEnabled;
            prefsToggle.callback = communityPushSettingFragment2.switchCallback;
            prefsToggle.desc = CommunityPushSettingFragment.this.getString(R.string.all_push_notification_desc);
            list.add(prefsToggle);
            CommunityPushSettingFragment communityPushSettingFragment3 = CommunityPushSettingFragment.this;
            if (communityPushSettingFragment3.response.pushExtensions != null) {
                PrefsToggle prefsToggle2 = new PrefsToggle(R.string.push_notifications_activity, communityPushSettingFragment3.getString(R.string.push_notifications_activity));
                CommunityPushSettingFragment communityPushSettingFragment4 = CommunityPushSettingFragment.this;
                prefsToggle2.on = communityPushSettingFragment4.response.pushExtensions.communityActivitiesEnabled;
                prefsToggle2.desc = communityPushSettingFragment4.getString(R.string.push_notifications_activity_desc);
                prefsToggle2.callback = CommunityPushSettingFragment.this.switchCallback;
                prefsToggle2.enabled = CommunityPushSettingFragment.this.response.pushEnabled;
                list.add(prefsToggle2);
                PrefsToggle prefsToggle3 = new PrefsToggle(R.string.push_notifications_broadcast, CommunityPushSettingFragment.this.getString(R.string.push_notifications_broadcast));
                CommunityPushSettingFragment communityPushSettingFragment5 = CommunityPushSettingFragment.this;
                prefsToggle3.on = communityPushSettingFragment5.response.pushExtensions.communityBroadcastsEnabled;
                prefsToggle3.desc = communityPushSettingFragment5.getString(R.string.push_notifications_broadcast_desc);
                CommunityPushSettingFragment communityPushSettingFragment6 = CommunityPushSettingFragment.this;
                prefsToggle3.enabled = communityPushSettingFragment6.response.pushEnabled;
                prefsToggle3.callback = communityPushSettingFragment6.switchCallback;
                list.add(prefsToggle3);
            }
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
                    checkBox.setOnCheckedChangeListener(new CompoundButton.OnCheckedChangeListener() { // from class: com.narvii.account.CommunityPushSettingFragment.MyAdapter.1
                        @Override // android.widget.CompoundButton.OnCheckedChangeListener
                        public void onCheckedChanged(CompoundButton compoundButton, boolean z) {
                            Object obj = item;
                            ((PrefsToggle) obj).callback.call((PrefsToggle) obj);
                        }
                    });
                }
            }
            return view2;
        }

        @Override // com.narvii.list.prefs.PrefsAdapter, com.narvii.list.NVAdapter, com.narvii.list.OnItemClickListener
        public boolean onItemClick(ListAdapter listAdapter, int i, Object obj, View view, View view2) {
            return super.onItemClick(listAdapter, i, obj, view, view2);
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
            return (CommunityPushSettingFragment.this.response == null && this.error == null) ? false : true;
        }

        @Override // com.narvii.list.NVAdapter
        public void refresh(int i, Callback<Integer> callback) {
            CommunityPushSettingFragment.this.response = null;
            this.error = null;
            sendPushStatusRequest();
            notifyDataSetChanged();
        }

        private void sendPushStatusRequest() {
            CommunityPushSettingFragment.this.getCid();
            ((ApiService) getService("api")).exec(ApiRequest.builder().communityId(CommunityPushSettingFragment.this.cId).path("/user-profile/push").build(), new ApiResponseListener<CommunityPushResponse>(CommunityPushResponse.class) { // from class: com.narvii.account.CommunityPushSettingFragment.MyAdapter.2
                @Override // com.narvii.util.http.ApiResponseListener
                public void onFinish(ApiRequest apiRequest, CommunityPushResponse communityPushResponse) throws Exception {
                    MyAdapter myAdapter = MyAdapter.this;
                    CommunityPushSettingFragment.this.response = communityPushResponse;
                    myAdapter.error = null;
                    myAdapter.notifyDataSetChanged();
                }

                @Override // com.narvii.util.http.ApiResponseListener
                public void onFail(ApiRequest apiRequest, int i, List<NameValuePair> list, String str, ApiResponse apiResponse, Throwable th) {
                    MyAdapter myAdapter = MyAdapter.this;
                    myAdapter.error = str;
                    myAdapter.notifyDataSetChanged();
                }
            });
        }
    }
}
