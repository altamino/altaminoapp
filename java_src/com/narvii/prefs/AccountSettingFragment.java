package com.narvii.prefs;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.DialogInterface;
import android.content.Intent;
import android.content.IntentFilter;
import android.content.res.Resources;
import android.os.Bundle;
import android.text.TextUtils;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ListAdapter;
import android.widget.ListView;
import android.widget.TextView;
import com.google.android.gms.common.Scopes;
import com.narvii.account.AccountResponseListener;
import com.narvii.account.AccountService;
import com.narvii.account.LogoutHelper;
import com.narvii.account.settings.GoogleConnectFragment;
import com.narvii.account.settings.MasterAccountWebViewFragment;
import com.narvii.account.settings.UpdateEmailFragment;
import com.narvii.account.settings.UpdatePhoneNumberFragment;
import com.narvii.amino.MainActivity;
import com.narvii.amino.mastes.R;
import com.narvii.app.FragmentWrapperActivity;
import com.narvii.app.NVApplication;
import com.narvii.config.ConfigService;
import com.narvii.list.NVListFragment;
import com.narvii.list.prefs.PrefsAdapter;
import com.narvii.list.prefs.PrefsEntry;
import com.narvii.list.prefs.PrefsMargin;
import com.narvii.list.prefs.PrefsRedAlert;
import com.narvii.list.prefs.PrefsText;
import com.narvii.list.prefs.PrefsToggle;
import com.narvii.list.prefs.PrefsWarning;
import com.narvii.logging.ActSemantic;
import com.narvii.logging.LogEvent;
import com.narvii.master.MasterActivity;
import com.narvii.master.home.profile.EditAminoIdFragment;
import com.narvii.master.home.profile.ProfileListFragment;
import com.narvii.model.User;
import com.narvii.model.api.AccountResponse;
import com.narvii.model.api.ApiResponse;
import com.narvii.model.api.UserResponse;
import com.narvii.modulization.Module;
import com.narvii.notification.Notification;
import com.narvii.notification.NotificationListener;
import com.narvii.user.profile.post.UserProfilePost;
import com.narvii.user.profile.post.UserProfilePostActivity;
import com.narvii.util.AccountWebHelper;
import com.narvii.util.Callback;
import com.narvii.util.JacksonUtils;
import com.narvii.util.NVToast;
import com.narvii.util.PackageUtils;
import com.narvii.util.StringUtils;
import com.narvii.util.Tag;
import com.narvii.util.Utils;
import com.narvii.util.dialog.ActionSheetDialog;
import com.narvii.util.dialog.ProgressDialog;
import com.narvii.util.http.ApiRequest;
import com.narvii.util.http.ApiResponseListener;
import com.narvii.util.http.ApiService;
import com.narvii.util.http.NameValuePair;
import com.narvii.widget.NVImageView;
import com.narvii.widget.NVListView;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Locale;

/* loaded from: classes3.dex */
public class AccountSettingFragment extends NVListFragment implements NotificationListener {
    private static final int REQ_ACTIVATION = 101;
    Adapter adapter;
    ConfigService config;
    private final BroadcastReceiver receiver = new BroadcastReceiver() { // from class: com.narvii.prefs.AccountSettingFragment.1
        @Override // android.content.BroadcastReceiver
        public void onReceive(Context context, Intent intent) {
            Adapter adapter;
            if (!AccountService.ACTION_ACCOUNT_CHANGED.equals(intent.getAction()) || (adapter = AccountSettingFragment.this.adapter) == null) {
                return;
            }
            adapter.notifyDataSetChanged();
        }
    };

    @Override // com.narvii.app.NVFragment, com.narvii.logging.Page
    public String getPageName() {
        return "Account";
    }

    @Override // com.narvii.list.NVListFragment
    protected int getSelectorDarkColor() {
        return 872415231;
    }

    @Override // com.narvii.app.NVFragment
    public boolean isModel() {
        return true;
    }

    @Override // com.narvii.list.NVListFragment
    public boolean isSwipeRefresh() {
        return true;
    }

    @Override // com.narvii.list.NVListFragment, com.narvii.app.NVFragment, android.support.v4.app.Fragment
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        setTitle(R.string.account);
        setHasOptionsMenu(true);
        this.adapter = new Adapter();
        registerLocalReceiver(this.receiver, new IntentFilter(AccountService.ACTION_ACCOUNT_CHANGED));
        this.config = (ConfigService) getService("config");
        setDarkNVTheme(this.config.getCommunityId() == 0);
    }

    @Override // com.narvii.list.NVListFragment, com.narvii.app.NVFragment, android.support.v4.app.Fragment
    public void onDestroy() {
        unregisterLocalReceiver(this.receiver);
        super.onDestroy();
    }

    @Override // com.narvii.list.NVListFragment, com.narvii.app.NVFragment, android.support.v4.app.Fragment
    public void onResume() {
        super.onResume();
        Adapter adapter = this.adapter;
        if (adapter != null) {
            adapter.notifyDataSetChanged();
        }
    }

    @Override // com.narvii.list.NVListFragment, com.narvii.app.NVFragment, com.narvii.app.theme.NVThemeFragment, android.support.v4.app.Fragment
    public void onViewCreated(View view, Bundle bundle) throws Resources.NotFoundException {
        super.onViewCreated(view, bundle);
    }

    @Override // com.narvii.list.NVListFragment
    protected void onListViewCreated(ListView listView, Bundle bundle) throws Resources.NotFoundException {
        super.onListViewCreated(listView, bundle);
        listView.setDivider(null);
        listView.setDividerHeight(0);
        int color = getResources().getColor(R.color.prefs_background);
        NVListView nVListView = (NVListView) listView;
        nVListView.setOverscrollStretchHeader(color);
        nVListView.setOverscrollStretchFooter(color);
    }

    void deleteAccount() {
        final Intent intent = FragmentWrapperActivity.intent(MasterAccountWebViewFragment.class);
        AccountService accountService = (AccountService) getService("account");
        HashMap map = new HashMap();
        String phoneNumber = accountService.getPhoneNumber();
        String email = accountService.getEmail();
        String sessionID = accountService.getSessionID();
        if (!TextUtils.isEmpty(phoneNumber)) {
            map.put("phonenumber", phoneNumber);
        }
        if (!TextUtils.isEmpty(email)) {
            map.put("email", email);
        }
        if (!TextUtils.isEmpty(sessionID)) {
            map.put("sid", sessionID);
        }
        map.put("deviceid", accountService.getDeviceId());
        new AccountWebHelper(this).getDeleteAccountUrl(new Callback<String>() { // from class: com.narvii.prefs.AccountSettingFragment.2
            @Override // com.narvii.util.Callback
            public void call(String str) {
                intent.putExtra("url", str);
                AccountSettingFragment.this.startActivity(intent);
            }
        });
    }

    void resetApp() {
        Utils.postDelayed(new Runnable() { // from class: com.narvii.prefs.AccountSettingFragment.3
            @Override // java.lang.Runnable
            public void run() {
                if (AccountSettingFragment.this.getActivity() == null) {
                    return;
                }
                int i = NVApplication.CLIENT_TYPE;
                if (i == 101) {
                    MainActivity.setPendingCommand(MainActivity.CMD_RESET);
                    Intent intent = new Intent(AccountSettingFragment.this.getContext(), (Class<?>) MainActivity.class);
                    intent.putExtra("__communityId", new PackageUtils(AccountSettingFragment.this.getContext()).getCommunityIdFromPackageName());
                    intent.setFlags(268468224);
                    AccountSettingFragment.this.startActivity(intent);
                    AccountSettingFragment.this.getActivity().overridePendingTransition(R.anim.fade_in, R.anim.fade_out);
                } else if (i == 100) {
                    Intent intent2 = new Intent(AccountSettingFragment.this.getContext(), (Class<?>) MasterActivity.class);
                    intent2.putExtra("disallowOnBoarding", true);
                    intent2.setFlags(268468224);
                    AccountSettingFragment.this.startActivity(intent2);
                    AccountSettingFragment.this.getActivity().overridePendingTransition(R.anim.fade_in, R.anim.fade_out);
                }
                AccountSettingFragment.this.getActivity().finish();
            }
        }, 500L);
    }

    void logout() {
        ActionSheetDialog actionSheetDialog = new ActionSheetDialog(getContext());
        actionSheetDialog.addItem(R.string.account_logout, 1);
        actionSheetDialog.setCancelable(false);
        actionSheetDialog.setOnClickListener(new DialogInterface.OnClickListener() { // from class: com.narvii.prefs.AccountSettingFragment.4
            @Override // android.content.DialogInterface.OnClickListener
            public void onClick(DialogInterface dialogInterface, int i) {
                if (i == 0) {
                    new LogoutHelper(AccountSettingFragment.this).logout(new Callback<Boolean>() { // from class: com.narvii.prefs.AccountSettingFragment.4.1
                        @Override // com.narvii.util.Callback
                        public void call(Boolean bool) {
                            if (!bool.booleanValue()) {
                                NVToast.makeText(AccountSettingFragment.this.getContext(), AccountSettingFragment.this.getString(R.string.account_logout_fail_message), 0).show();
                            }
                            AccountSettingFragment.this.resetApp();
                        }
                    });
                }
            }
        });
        actionSheetDialog.show();
    }

    @Override // com.narvii.list.NVListFragment
    protected ListAdapter createAdapter(Bundle bundle) {
        return this.adapter;
    }

    class Adapter extends PrefsAdapter {
        Tag AMINOID;
        Tag DELETE;
        Tag LOGOUT;
        Tag PROFILE;

        @Override // com.narvii.list.prefs.PrefsAdapter, com.narvii.list.NVAdapter
        protected boolean supportNVTheme() {
            return true;
        }

        public Adapter() {
            super(AccountSettingFragment.this);
            this.AMINOID = new Tag("aminoId");
            this.LOGOUT = new Tag("logout");
            this.DELETE = new Tag("delete");
            this.PROFILE = new Tag(Scopes.PROFILE);
        }

        @Override // com.narvii.list.NVAdapter
        public void onAttach() {
            super.onAttach();
            sendAccountInfoRequest();
        }

        @Override // com.narvii.list.NVAdapter
        public void refresh(int i, Callback<Integer> callback) {
            refreshMonitorStart(i, callback);
            sendAccountInfoRequest();
            refreshMonitorEnd();
        }

        private void sendAccountInfoRequest() {
            AccountService accountService = (AccountService) getService("account");
            ApiService apiService = (ApiService) getService("api");
            if (accountService.hasAccount()) {
                apiService.exec(ApiRequest.builder().https().global().path("/account").build(), new AccountResponseListener(this) { // from class: com.narvii.prefs.AccountSettingFragment.Adapter.1
                    @Override // com.narvii.account.AccountResponseListener, com.narvii.util.http.ApiResponseListener
                    public void onFinish(ApiRequest apiRequest, AccountResponse accountResponse) throws Exception {
                        super.onFinish(apiRequest, accountResponse);
                        Adapter.this.notifyDataSetChanged();
                    }
                });
            }
        }

        /* JADX WARN: Multi-variable type inference failed */
        /* JADX WARN: Type inference failed for: r2v19, types: [com.narvii.list.prefs.PrefsRedAlert] */
        /* JADX WARN: Type inference failed for: r3v7, types: [com.narvii.list.prefs.PrefsItem, com.narvii.list.prefs.PrefsText] */
        /* JADX WARN: Type inference failed for: r7v0, types: [java.util.List, java.util.List<java.lang.Object>] */
        @Override // com.narvii.list.prefs.PrefsAdapter
        protected void buildCells(List<Object> list) {
            PrefsEntry prefsText;
            PrefsEntry prefsRedAlert;
            PrefsWarning prefsRedAlert2;
            AccountService accountService = (AccountService) getService("account");
            if (accountService.hasAccount()) {
                if (AccountSettingFragment.this.config.getCommunityId() != 0) {
                    list.add(new PrefsMargin());
                    list.add(this.PROFILE);
                    list.add(new PrefsMargin());
                } else {
                    list.add(new PrefsMargin());
                    final String aminoId = accountService.getAminoId();
                    boolean zIsAminoIdEditable = accountService.isAminoIdEditable();
                    if (TextUtils.isEmpty(aminoId)) {
                        prefsText = new PrefsRedAlert(R.string.account_amino_id);
                        prefsText.chevronRight = false;
                    } else {
                        prefsText = new PrefsText(R.string.account_amino_id, aminoId);
                        prefsText.chevronRight = zIsAminoIdEditable;
                    }
                    if (zIsAminoIdEditable) {
                        prefsText.callbackIntent = FragmentWrapperActivity.intent(EditAminoIdFragment.class);
                    } else {
                        prefsText.callback = new Callback() { // from class: com.narvii.prefs.-$$Lambda$AccountSettingFragment$Adapter$kpqEocbyO5EqgtiDaWShHI58z_0
                            @Override // com.narvii.util.Callback
                            public final void call(Object obj) {
                                this.f$0.lambda$buildCells$0$AccountSettingFragment$Adapter(aminoId, (PrefsEntry) obj);
                            }
                        };
                    }
                    list.add(prefsText);
                }
                String phoneNumber = accountService.getPhoneNumber();
                if (TextUtils.isEmpty(phoneNumber)) {
                    prefsRedAlert = new PrefsRedAlert(R.string.account_phone_number);
                } else {
                    ArrayList<String> arrayListSplit = StringUtils.split(phoneNumber, " ");
                    PrefsText prefsText2 = new PrefsText(R.string.account_phone_number, arrayListSplit.get(arrayListSplit.size() - 1));
                    prefsText2.chevronRight = true;
                    prefsRedAlert = prefsText2;
                }
                prefsRedAlert.callbackIntent = FragmentWrapperActivity.intent(UpdatePhoneNumberFragment.class);
                list.add(prefsRedAlert);
                String email = accountService.getEmail();
                if (TextUtils.isEmpty(email)) {
                    prefsRedAlert2 = new PrefsRedAlert(R.string.account_email);
                } else if (accountService.hasEmailActivation()) {
                    ?? prefsText3 = new PrefsText(R.string.account_email, email);
                    prefsText3.chevronRight = true;
                    prefsRedAlert2 = prefsText3;
                } else {
                    PrefsWarning prefsWarning = new PrefsWarning(R.string.account_email);
                    prefsWarning.subTitle = accountService.getEmail();
                    prefsWarning.warningInfo = AccountSettingFragment.this.getString(R.string.account_email_not_verified);
                    prefsRedAlert2 = prefsWarning;
                }
                prefsRedAlert2.callbackIntent = FragmentWrapperActivity.intent(UpdateEmailFragment.class);
                list.add(prefsRedAlert2);
                PrefsEntry prefsEntry = new PrefsEntry(R.string.account_change_password);
                Intent intent = FragmentWrapperActivity.intent(MasterAccountWebViewFragment.class);
                intent.putExtra("url", new AccountWebHelper(this).getChangePasswordUrl());
                prefsEntry.callbackIntent = intent;
                list.add(prefsEntry);
                list.add(new PrefsMargin());
                PrefsToggle prefsToggle = new PrefsToggle(R.string.account_facebook, AccountSettingFragment.this.getString(R.string.account_facebook));
                prefsToggle.on = accountService.isFacebookConnected();
                list.add(prefsToggle);
                PrefsToggle prefsToggle2 = new PrefsToggle(R.string.account_google, AccountSettingFragment.this.getString(R.string.account_google));
                prefsToggle2.on = accountService.isGoogleConnected();
                list.add(prefsToggle2);
                list.add(new PrefsMargin());
                list.add(this.LOGOUT);
                list.add(new PrefsMargin());
                list.add(this.DELETE);
            }
        }

        public /* synthetic */ void lambda$buildCells$0$AccountSettingFragment$Adapter(String str, PrefsEntry prefsEntry) {
            Utils.copyToClipboard(getContext(), str, R.string.amino_id_copied);
        }

        @Override // com.narvii.list.prefs.PrefsAdapter, android.widget.Adapter
        public View getView(int i, View view, ViewGroup viewGroup) {
            Object item = getItem(i);
            if (item instanceof PrefsToggle) {
                PrefsToggle prefsToggle = (PrefsToggle) item;
                View viewCreateView = createView(R.layout.prefs_third_party_toggle, viewGroup, view);
                ((TextView) viewCreateView.findViewById(R.id.name)).setText(prefsToggle.name);
                viewCreateView.findViewById(R.id.check_box).setVisibility(prefsToggle.on ? 8 : 0);
                viewCreateView.findViewById(R.id.connected).setVisibility(prefsToggle.on ? 0 : 8);
                return viewCreateView;
            }
            if (item == this.LOGOUT) {
                View viewCreateView2 = createView(R.layout.prefs_log_out_item, viewGroup, view);
                TextView textView = (TextView) viewCreateView2.findViewById(R.id.login_out);
                textView.setText(R.string.account_logout);
                textView.setOnClickListener(this.subviewClickListener);
                return viewCreateView2;
            }
            if (item == this.DELETE) {
                View viewCreateView3 = createView(R.layout.prefs_delete_item, viewGroup, view);
                TextView textView2 = (TextView) viewCreateView3.findViewById(R.id.delete);
                textView2.setText(R.string.account_delete);
                textView2.setOnClickListener(this.subviewClickListener);
                return viewCreateView3;
            }
            if (item == this.PROFILE) {
                View viewCreateView4 = createView(R.layout.prefs_profile_item, viewGroup, view);
                AccountService accountService = (AccountService) getService("account");
                if (accountService.hasAccount()) {
                    User userProfile = accountService.getUserProfile();
                    ((NVImageView) viewCreateView4.findViewById(R.id.avatar)).setImageUrl(userProfile == null ? null : userProfile.icon());
                }
                return viewCreateView4;
            }
            return super.getView(i, view, viewGroup);
        }

        @Override // com.narvii.list.prefs.PrefsAdapter, com.narvii.list.NVAdapter, com.narvii.list.OnItemClickListener
        public boolean onItemClick(ListAdapter listAdapter, int i, Object obj, View view, View view2) {
            if (view2 != null) {
                int id = view2.getId();
                if (id == R.id.delete) {
                    LogEvent.clickBuilder(AccountSettingFragment.this, ActSemantic.delete).area("DeleteAccount").send();
                    AccountSettingFragment.this.deleteAccount();
                } else if (id == R.id.login_out) {
                    AccountSettingFragment.this.logout();
                }
            }
            if (obj == this.PROFILE) {
                ConfigService configService = (ConfigService) getService("config");
                AccountService accountService = (AccountService) getService("account");
                if (configService.getCommunityId() == 0) {
                    startActivity(FragmentWrapperActivity.intent(ProfileListFragment.class));
                } else if (accountService.hasAccount()) {
                    final ProgressDialog progressDialog = new ProgressDialog(getContext());
                    progressDialog.show();
                    ((ApiService) getService("api")).exec(ApiRequest.builder().path("/user-profile/" + accountService.getUserId()).build(), new ApiResponseListener<UserResponse>(UserResponse.class) { // from class: com.narvii.prefs.AccountSettingFragment.Adapter.2
                        @Override // com.narvii.util.http.ApiResponseListener
                        public void onFinish(ApiRequest apiRequest, UserResponse userResponse) throws Exception {
                            super.onFinish(apiRequest, (ApiRequest) userResponse);
                            progressDialog.dismiss();
                            Intent intent = new Intent(Adapter.this.getContext(), (Class<?>) UserProfilePostActivity.class);
                            intent.putExtra("uid", userResponse.user.uid);
                            intent.putExtra(Module.MODULE_POSTS, JacksonUtils.writeAsString(new UserProfilePost(userResponse.user)));
                            intent.putExtra("userProfile", JacksonUtils.writeAsString(userResponse.user));
                            Adapter.this.startActivity(intent);
                        }

                        @Override // com.narvii.util.http.ApiResponseListener
                        public void onFail(ApiRequest apiRequest, int i2, List<NameValuePair> list, String str, ApiResponse apiResponse, Throwable th) {
                            super.onFail(apiRequest, i2, list, str, apiResponse, th);
                            progressDialog.dismiss();
                            NVToast.makeText(Adapter.this.getContext(), str, 1).show();
                        }
                    });
                }
                return true;
            }
            if (obj instanceof PrefsToggle) {
                final PrefsToggle prefsToggle = (PrefsToggle) obj;
                if (!prefsToggle.on) {
                    AccountSettingFragment.this.whenClickToggle(prefsToggle, 1);
                } else {
                    ActionSheetDialog actionSheetDialog = new ActionSheetDialog(getContext());
                    actionSheetDialog.setTitle(AccountSettingFragment.this.getString(R.string.remove_third_party_account, prefsToggle.name.toLowerCase(Locale.getDefault())));
                    actionSheetDialog.addItem(R.string.remove, true);
                    actionSheetDialog.setOnClickListener(new DialogInterface.OnClickListener() { // from class: com.narvii.prefs.AccountSettingFragment.Adapter.3
                        @Override // android.content.DialogInterface.OnClickListener
                        public void onClick(DialogInterface dialogInterface, int i2) {
                            if (i2 != 0) {
                                return;
                            }
                            AccountSettingFragment.this.whenClickToggle(prefsToggle, 2);
                        }
                    });
                    actionSheetDialog.show();
                }
                return true;
            }
            return super.onItemClick(listAdapter, i, obj, view, view2);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void whenClickToggle(PrefsToggle prefsToggle, int i) {
        int i2 = prefsToggle.id;
        Intent intent = (i2 == R.string.account_facebook || i2 != R.string.account_google) ? null : FragmentWrapperActivity.intent(GoogleConnectFragment.class);
        if (intent != null) {
            intent.putExtra("actionType", i);
            startActivity(intent);
        }
    }

    @Override // com.narvii.notification.NotificationListener
    public void onNotification(Notification notification) {
        Adapter adapter;
        if ((notification.obj instanceof User) && notification.action == "update" && (adapter = this.adapter) != null) {
            adapter.notifyDataSetChanged();
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
