package com.narvii.prefs;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.DialogInterface;
import android.content.Intent;
import android.content.IntentFilter;
import android.os.Bundle;
import android.text.TextUtils;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ListAdapter;
import android.widget.ListView;
import android.widget.TextView;
import androidx.annotation.Nullable;
import androidx.fragment.app.Fragment;
import com.google.android.gms.common.Scopes;
import com.narvii.account.AccountResponseListener;
import com.narvii.account.AccountService;
import com.narvii.account.ConfirmDeleteAccountFragment;
import com.narvii.account.LogoutHelper;
import com.narvii.account.settings.GoogleConnectFragment;
import com.narvii.account.settings.UpdateEmailSettingsFragment;
import com.narvii.account.settings.UpdatePhoneNumberSettingsFragment;
import com.narvii.account.verifyaccount.ConfirmPasswordFragment;
import com.narvii.amino.master.R;
import com.narvii.app.FragmentWrapperActivity;
import com.narvii.app.NVApplication;
import com.narvii.config.ConfigService;
import com.narvii.list.NVAdapter;
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
import com.narvii.util.Callback;
import com.narvii.util.JacksonUtils;
import com.narvii.util.NVToast;
import com.narvii.util.StringUtils;
import com.narvii.util.Tag;
import com.narvii.util.Utils;
import com.narvii.util.dialog.ActionSheetDialog;
import com.narvii.util.dialog.ProgressDialog;
import com.narvii.util.http.ApiRequest;
import com.narvii.util.http.ApiResponseListener;
import com.narvii.util.http.ApiService;
import com.narvii.util.http.NameValuePair;
import com.narvii.util.statistics.StatisticsService;
import com.narvii.widget.NVImageView;
import com.narvii.widget.NVListView;
import com.safedk.android.utils.Logger;
import java.util.ArrayList;
import java.util.List;
import java.util.Locale;

/* JADX INFO: loaded from: classes4.dex */
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

    /* JADX INFO: renamed from: com.narvii.prefs.AccountSettingFragment$3, reason: invalid class name */
    class AnonymousClass3 implements DialogInterface.OnClickListener {
        AnonymousClass3() {
        }

        @Override // android.content.DialogInterface.OnClickListener
        public void onClick(DialogInterface dialogInterface, int i10) {
            if (i10 == 0) {
                ((StatisticsService) AccountSettingFragment.this.getService("statistics")).event("Log Out");
                new LogoutHelper(AccountSettingFragment.this).logout(new Callback() { // from class: com.narvii.prefs.a
                    @Override // com.narvii.util.Callback
                    public final void call(Object obj) {
                        this.f2617a.lambda$onClick$0((Boolean) obj);
                    }
                });
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$onClick$0(Boolean bool) {
            if (!bool.booleanValue()) {
                NVToast.makeText(AccountSettingFragment.this.getContext(), AccountSettingFragment.this.getString(R.string.account_logout_fail_message), 0).show();
            }
            AccountSettingFragment.this.resetApp();
        }
    }

    class Adapter extends PrefsAdapter {
        Tag AMINOID;
        Tag DELETE;
        Tag LOGOUT;
        Tag PROFILE;

        public static void safedk_NVAdapter_startActivity_5b31acbff248f36f6c86407552449fc2(NVAdapter p0, Intent p1) {
            Logger.d("SafeDK-Special|SafeDK: Call> Lcom/narvii/list/NVAdapter;->startActivity(Landroid/content/Intent;)V");
            if (p1 == null) {
                return;
            }
            p0.startActivity(p1);
        }

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

        @Override // com.narvii.list.prefs.PrefsAdapter
        protected void buildCells(List<Object> list) {
            PrefsEntry prefsText;
            PrefsEntry prefsRedAlert;
            PrefsEntry prefsRedAlert2;
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
                        prefsText.callback = new Callback() { // from class: com.narvii.prefs.b
                            @Override // com.narvii.util.Callback
                            public final void call(Object obj) {
                                this.f2618a.lambda$buildCells$0(aminoId, (PrefsEntry) obj);
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
                prefsRedAlert.callbackIntent = FragmentWrapperActivity.intent(UpdatePhoneNumberSettingsFragment.class);
                list.add(prefsRedAlert);
                String email = accountService.getEmail();
                if (TextUtils.isEmpty(email)) {
                    prefsRedAlert2 = new PrefsRedAlert(R.string.account_email);
                } else if (accountService.hasEmailActivation()) {
                    PrefsText prefsText3 = new PrefsText(R.string.account_email, email);
                    prefsText3.chevronRight = true;
                    prefsRedAlert2 = prefsText3;
                } else {
                    PrefsWarning prefsWarning = new PrefsWarning(R.string.account_email);
                    prefsWarning.subTitle = accountService.getEmail();
                    prefsWarning.warningInfo = AccountSettingFragment.this.getString(R.string.account_email_not_verified);
                    prefsRedAlert2 = prefsWarning;
                }
                prefsRedAlert2.callbackIntent = FragmentWrapperActivity.intent(UpdateEmailSettingsFragment.class);
                list.add(prefsRedAlert2);
                PrefsEntry prefsEntry = new PrefsEntry(R.string.account_change_password);
                Intent intent = FragmentWrapperActivity.intent(ConfirmPasswordFragment.class);
                intent.putExtra("verify_type", 3);
                prefsEntry.callbackIntent = intent;
                list.add(prefsEntry);
                list.add(new PrefsMargin());
                PrefsToggle prefsToggle = new PrefsToggle(R.string.account_google, AccountSettingFragment.this.getString(R.string.account_google));
                prefsToggle.on = accountService.isGoogleConnected();
                list.add(prefsToggle);
                list.add(new PrefsMargin());
                list.add(this.LOGOUT);
                list.add(new PrefsMargin());
                list.add(this.DELETE);
            }
        }

        @Override // com.narvii.list.prefs.PrefsAdapter, com.narvii.list.NVAdapter, com.narvii.list.OnItemClickListener
        public boolean onItemClick(ListAdapter listAdapter, int i10, Object obj, View view, View view2) {
            if (view2 != null) {
                int id = view2.getId();
                if (id == R.id.delete) {
                    LogEvent.clickBuilder(AccountSettingFragment.this, ActSemantic.delete).area("DeleteAccount").send();
                    AccountSettingFragment.this.deleteAccount();
                } else if (id == R.id.login_out) {
                    AccountSettingFragment.this.logout();
                }
            }
            if (obj != this.PROFILE) {
                if (!(obj instanceof PrefsToggle)) {
                    return super.onItemClick(listAdapter, i10, obj, view, view2);
                }
                final PrefsToggle prefsToggle = (PrefsToggle) obj;
                if (prefsToggle.on) {
                    ActionSheetDialog actionSheetDialog = new ActionSheetDialog(getContext());
                    actionSheetDialog.setTitle(AccountSettingFragment.this.getString(R.string.remove_third_party_account, prefsToggle.name.toLowerCase(Locale.getDefault())));
                    actionSheetDialog.addItem(R.string.remove, true);
                    actionSheetDialog.setOnClickListener(new DialogInterface.OnClickListener() { // from class: com.narvii.prefs.AccountSettingFragment.Adapter.3
                        @Override // android.content.DialogInterface.OnClickListener
                        public void onClick(DialogInterface dialogInterface, int i11) {
                            if (i11 != 0) {
                                return;
                            }
                            AccountSettingFragment.this.whenClickToggle(prefsToggle, 2);
                        }
                    });
                    actionSheetDialog.show();
                } else {
                    AccountSettingFragment.this.whenClickToggle(prefsToggle, 1);
                }
                return true;
            }
            ConfigService configService = (ConfigService) getService("config");
            AccountService accountService = (AccountService) getService("account");
            if (configService.getCommunityId() == 0) {
                safedk_NVAdapter_startActivity_5b31acbff248f36f6c86407552449fc2(this, FragmentWrapperActivity.intent(ProfileListFragment.class));
            } else if (accountService.hasAccount()) {
                final ProgressDialog progressDialog = new ProgressDialog(getContext());
                progressDialog.show();
                ((ApiService) getService("api")).exec(ApiRequest.builder().path("/user-profile/" + accountService.getUserId()).build(), new ApiResponseListener<UserResponse>(UserResponse.class) { // from class: com.narvii.prefs.AccountSettingFragment.Adapter.2
                    public static void safedk_NVAdapter_startActivity_5b31acbff248f36f6c86407552449fc2(NVAdapter p0, Intent p1) {
                        Logger.d("SafeDK-Special|SafeDK: Call> Lcom/narvii/list/NVAdapter;->startActivity(Landroid/content/Intent;)V");
                        if (p1 == null) {
                            return;
                        }
                        p0.startActivity(p1);
                    }

                    @Override // com.narvii.util.http.ApiResponseListener
                    public void onFinish(ApiRequest apiRequest, UserResponse userResponse) throws Exception {
                        super.onFinish(apiRequest, userResponse);
                        progressDialog.dismiss();
                        Intent intent = new Intent(Adapter.this.getContext(), (Class<?>) UserProfilePostActivity.class);
                        intent.putExtra("uid", userResponse.user.uid);
                        intent.putExtra(Module.MODULE_POSTS, JacksonUtils.writeAsString(new UserProfilePost(userResponse.user)));
                        intent.putExtra("userProfile", JacksonUtils.writeAsString(userResponse.user));
                        safedk_NVAdapter_startActivity_5b31acbff248f36f6c86407552449fc2(Adapter.this, intent);
                    }

                    @Override // com.narvii.util.http.ApiResponseListener
                    public void onFail(ApiRequest apiRequest, int i11, List<NameValuePair> list, String str, ApiResponse apiResponse, Throwable th) {
                        super.onFail(apiRequest, i11, list, str, apiResponse, th);
                        progressDialog.dismiss();
                        NVToast.makeText(Adapter.this.getContext(), str, 1).show();
                    }
                });
            }
            return true;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$buildCells$0(String str, PrefsEntry prefsEntry) {
            Utils.copyToClipboard(getContext(), str, R.string.amino_id_copied);
        }

        @Override // com.narvii.list.prefs.PrefsAdapter, android.widget.Adapter
        public View getView(int i10, View view, ViewGroup viewGroup) {
            String strIcon;
            int i11;
            Object item = getItem(i10);
            if (item instanceof PrefsToggle) {
                PrefsToggle prefsToggle = (PrefsToggle) item;
                View viewCreateView = createView(R.layout.prefs_third_party_toggle, viewGroup, view);
                ((TextView) viewCreateView.findViewById(R.id.name)).setText(prefsToggle.name);
                View viewFindViewById = viewCreateView.findViewById(R.id.check_box);
                int i12 = 0;
                if (prefsToggle.on) {
                    i11 = 8;
                } else {
                    i11 = 0;
                }
                viewFindViewById.setVisibility(i11);
                View viewFindViewById2 = viewCreateView.findViewById(R.id.connected);
                if (!prefsToggle.on) {
                    i12 = 8;
                }
                viewFindViewById2.setVisibility(i12);
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
                    NVImageView nVImageView = (NVImageView) viewCreateView4.findViewById(R.id.avatar);
                    if (userProfile == null) {
                        strIcon = null;
                    } else {
                        strIcon = userProfile.icon();
                    }
                    nVImageView.setImageUrl(strIcon);
                }
                return viewCreateView4;
            }
            return super.getView(i10, view, viewGroup);
        }

        @Override // com.narvii.list.NVAdapter
        public void onAttach() {
            super.onAttach();
            sendAccountInfoRequest();
        }

        @Override // com.narvii.list.NVAdapter
        public void refresh(int i10, Callback<Integer> callback) {
            refreshMonitorStart(i10, callback);
            sendAccountInfoRequest();
            refreshMonitorEnd();
        }
    }

    public static void safedk_Fragment_startActivity_d519b2d71bdac81b1d20f350086c68e6(Fragment p0, Intent p1) {
        Logger.d("SafeDK-Special|SafeDK: Call> Landroidx/fragment/app/Fragment;->startActivity(Landroid/content/Intent;)V");
        if (p1 == null) {
            return;
        }
        p0.startActivity(p1);
    }

    @Override // com.narvii.list.NVListFragment
    protected ListAdapter createAdapter(Bundle bundle) {
        return this.adapter;
    }

    @Override // com.narvii.app.NVFragment, com.narvii.logging.Page
    @Nullable
    public String getPageName() {
        return "account";
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

    /* JADX INFO: Access modifiers changed from: private */
    public void whenClickToggle(PrefsToggle prefsToggle, int i10) {
        int i11 = prefsToggle.id;
        Intent intent = (i11 == R.string.account_facebook || i11 != R.string.account_google) ? null : FragmentWrapperActivity.intent(GoogleConnectFragment.class);
        if (intent != null) {
            intent.putExtra("actionType", i10);
            safedk_Fragment_startActivity_d519b2d71bdac81b1d20f350086c68e6(this, intent);
        }
    }

    void logout() {
        ActionSheetDialog actionSheetDialog = new ActionSheetDialog(getContext());
        actionSheetDialog.addItem(R.string.account_logout, 1);
        actionSheetDialog.setCancelable(false);
        actionSheetDialog.setOnClickListener(new AnonymousClass3());
        actionSheetDialog.show();
    }

    @Override // com.narvii.list.NVListFragment, com.narvii.app.NVFragment, androidx.fragment.app.Fragment
    public void onDestroy() {
        unregisterLocalReceiver(this.receiver);
        super.onDestroy();
    }

    @Override // com.narvii.notification.NotificationListener
    public void onNotification(Notification notification) {
        Adapter adapter;
        if ((notification.obj instanceof User) && notification.action.equals("update") && (adapter = this.adapter) != null) {
            adapter.notifyDataSetChanged();
        }
    }

    void resetApp() {
        Utils.postDelayed(new Runnable() { // from class: com.narvii.prefs.AccountSettingFragment.2
            public static void safedk_Fragment_startActivity_d519b2d71bdac81b1d20f350086c68e6(Fragment p0, Intent p1) {
                Logger.d("SafeDK-Special|SafeDK: Call> Landroidx/fragment/app/Fragment;->startActivity(Landroid/content/Intent;)V");
                if (p1 == null) {
                    return;
                }
                p0.startActivity(p1);
            }

            @Override // java.lang.Runnable
            public void run() {
                if (AccountSettingFragment.this.getActivity() == null) {
                    return;
                }
                if (NVApplication.CLIENT_TYPE == 100) {
                    Intent intent = new Intent(AccountSettingFragment.this.getContext(), (Class<?>) MasterActivity.class);
                    intent.putExtra("disallowOnBoarding", true);
                    intent.setFlags(268468224);
                    safedk_Fragment_startActivity_d519b2d71bdac81b1d20f350086c68e6(AccountSettingFragment.this, intent);
                    AccountSettingFragment.this.getActivity().overridePendingTransition(R.anim.fade_in, R.anim.fade_out);
                }
                AccountSettingFragment.this.getActivity().finish();
            }
        }, 500L);
    }

    void deleteAccount() {
        ConfirmDeleteAccountFragment.show(this);
    }

    @Override // com.narvii.list.NVListFragment, com.narvii.app.NVFragment, androidx.fragment.app.Fragment
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        setTitle(R.string.account);
        boolean z6 = true;
        setHasOptionsMenu(true);
        this.adapter = new Adapter();
        registerLocalReceiver(this.receiver, new IntentFilter(AccountService.ACTION_ACCOUNT_CHANGED));
        ConfigService configService = (ConfigService) getService("config");
        this.config = configService;
        if (configService.getCommunityId() != 0) {
            z6 = false;
        }
        setDarkNVTheme(z6);
    }

    @Override // com.narvii.list.NVListFragment
    protected void onListViewCreated(ListView listView, Bundle bundle) {
        super.onListViewCreated(listView, bundle);
        listView.setDivider(null);
        listView.setDividerHeight(0);
        int color = getResources().getColor(R.color.prefs_background);
        NVListView nVListView = (NVListView) listView;
        nVListView.setOverscrollStretchHeader(color);
        nVListView.setOverscrollStretchFooter(color);
    }

    @Override // com.narvii.list.NVListFragment, com.narvii.app.NVFragment, androidx.fragment.app.Fragment
    public void onResume() {
        super.onResume();
        Adapter adapter = this.adapter;
        if (adapter != null) {
            adapter.notifyDataSetChanged();
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

    @Override // com.narvii.list.NVListFragment, com.narvii.app.NVFragment, com.narvii.app.theme.NVThemeFragment, androidx.fragment.app.Fragment
    public void onViewCreated(View view, Bundle bundle) {
        super.onViewCreated(view, bundle);
    }
}
