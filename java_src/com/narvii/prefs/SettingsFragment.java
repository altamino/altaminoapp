package com.narvii.prefs;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.DialogInterface;
import android.content.Intent;
import android.content.IntentFilter;
import android.content.SharedPreferences;
import android.content.res.Resources;
import android.graphics.BitmapFactory;
import android.graphics.Color;
import android.graphics.drawable.BitmapDrawable;
import android.net.Uri;
import android.os.Bundle;
import android.os.SystemClock;
import android.support.v4.content.ContextCompat;
import android.support.v4.internal.view.SupportMenu;
import android.text.Editable;
import android.text.SpannableString;
import android.text.TextUtils;
import android.text.TextWatcher;
import android.text.style.ImageSpan;
import android.util.Base64;
import android.view.LayoutInflater;
import android.view.Menu;
import android.view.MenuInflater;
import android.view.MenuItem;
import android.view.View;
import android.view.ViewGroup;
import android.widget.BaseAdapter;
import android.widget.EditText;
import android.widget.ImageView;
import android.widget.ListAdapter;
import android.widget.ListView;
import android.widget.TextView;
import com.narvii.account.AccountService;
import com.narvii.account.LoginActivity;
import com.narvii.account.LogoutHelper;
import com.narvii.account.PushSettingListFragment;
import com.narvii.amino.MainActivity;
import com.narvii.amino.MainDialogHelper;
import com.narvii.amino.mastes.R;
import com.narvii.announcement.AnnouncementListFragment;
import com.narvii.app.FragmentWrapperActivity;
import com.narvii.app.NVApplication;
import com.narvii.community.CommunityService;
import com.narvii.config.ConfigService;
import com.narvii.list.NVListFragment;
import com.narvii.list.prefs.PrefsAdapter;
import com.narvii.list.prefs.PrefsEntry;
import com.narvii.list.prefs.PrefsMargin;
import com.narvii.list.prefs.PrefsSection;
import com.narvii.list.prefs.PrefsToggle;
import com.narvii.master.MasterActivity;
import com.narvii.master.setting.LanguageSettingFragment;
import com.narvii.model.User;
import com.narvii.modulization.CommunityConfigHelper;
import com.narvii.notification.Notification;
import com.narvii.notification.NotificationListener;
import com.narvii.services.DevOptionsHelper;
import com.narvii.user.list.BlockedListFragment;
import com.narvii.util.Callback;
import com.narvii.util.NVToast;
import com.narvii.util.PackageUtils;
import com.narvii.util.Tag;
import com.narvii.util.Utils;
import com.narvii.util.debug.DebugPrefsHelper;
import com.narvii.util.diagnosis.DiagnosisFragment;
import com.narvii.util.dialog.ActionSheetDialog;
import com.narvii.util.dialog.AlertDialog;
import com.narvii.util.http.ApiRequest;
import com.narvii.util.http.ApiResponseListener;
import com.narvii.util.http.ApiService;
import com.narvii.wallet.IabUtils;
import com.narvii.wallet.MembershipMainRecyclerFragment;
import com.narvii.wallet.MembershipService;
import com.narvii.wallet.WalletRecyclerFragment;
import com.narvii.widget.NVImageView;
import com.narvii.widget.NVListView;
import com.narvii.widget.ThumbImageView;
import java.util.List;
import java.util.UUID;

/* loaded from: classes3.dex */
public class SettingsFragment extends NVListFragment implements NotificationListener {
    public static final String KEY_LOGOUT_WITHOUT_REST = "logout_without_reset";
    boolean abted;
    AccountService account;
    Adapter adapter;
    ConfigService config;
    CommunityConfigHelper configHelper;
    DebugPrefsHelper debugPrefsHelper;
    MainDialogHelper dialogHelper;
    MembershipService membership;
    SharedPreferences prefs;
    private final BroadcastReceiver receiver = new BroadcastReceiver() { // from class: com.narvii.prefs.SettingsFragment.1
        @Override // android.content.BroadcastReceiver
        public void onReceive(Context context, Intent intent) {
            if (SettingsFragment.this.getActivity() == null) {
                return;
            }
            if (AccountService.ACTION_ACCOUNT_CHANGED.equals(intent.getAction())) {
                ((BaseAdapter) SettingsFragment.this.getListAdapter()).notifyDataSetChanged();
                return;
            }
            if (CommunityService.ACTION_COMMUNITY_CHANGED.equals(intent.getAction()) && intent.getIntExtra("id", 0) == SettingsFragment.this.config.getCommunityId()) {
                ((BaseAdapter) SettingsFragment.this.getListAdapter()).notifyDataSetChanged();
            } else if (MembershipService.ACTION_WALLET_CHANGED.equals(intent.getAction()) || MembershipService.ACTION_MEMBERSHIP_CHANGED.equals(intent.getAction())) {
                ((BaseAdapter) SettingsFragment.this.getListAdapter()).notifyDataSetChanged();
            }
        }
    };
    private final AccountService.ProfileListener profileListener = new AccountService.ProfileListener() { // from class: com.narvii.prefs.SettingsFragment.2
        @Override // com.narvii.account.AccountService.ProfileListener
        public void onProfileChanged(int i, User user) {
            ((BaseAdapter) SettingsFragment.this.getListAdapter()).notifyDataSetChanged();
        }
    };
    final Callback<PrefsEntry> entryCallback = new Callback<PrefsEntry>() { // from class: com.narvii.prefs.SettingsFragment.3
        @Override // com.narvii.util.Callback
        public void call(PrefsEntry prefsEntry) {
            if (prefsEntry.id == R.string.prefs_about) {
                SettingsFragment.this.about();
                SettingsFragment.this.abted = true;
            }
        }
    };
    final Callback<PrefsToggle> switchCallback = new Callback<PrefsToggle>() { // from class: com.narvii.prefs.SettingsFragment.4
        @Override // com.narvii.util.Callback
        public void call(PrefsToggle prefsToggle) {
            if (prefsToggle.id == R.string.prefs_return_to_send) {
                SettingsFragment.this.prefs.edit().putBoolean("returnToSendChat", prefsToggle.on).commit();
            }
        }
    };

    @Override // com.narvii.list.NVListFragment
    protected int getSelectorDarkColor() {
        return 872415231;
    }

    @Override // com.narvii.app.theme.NVThemeFragment
    public int initNVTheme() {
        return 2;
    }

    protected boolean isCommunityLevel() {
        return false;
    }

    @Override // com.narvii.app.NVFragment
    public boolean isModel() {
        return true;
    }

    @Override // com.narvii.list.NVListFragment, com.narvii.app.NVFragment, com.narvii.app.theme.NVThemeFragment, android.support.v4.app.Fragment
    public void onViewCreated(View view, Bundle bundle) throws Resources.NotFoundException {
        super.onViewCreated(view, bundle);
    }

    @Override // com.narvii.list.NVListFragment, com.narvii.app.NVFragment, android.support.v4.app.Fragment
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        setTitle(R.string.prefs_settings);
        this.dialogHelper = new MainDialogHelper(this);
        this.prefs = (SharedPreferences) getService("prefs");
        if (NVApplication.DEBUG) {
            this.debugPrefsHelper = new DebugPrefsHelper(this);
        }
        registerLocalReceiver(this.receiver, new IntentFilter(AccountService.ACTION_ACCOUNT_CHANGED));
        registerLocalReceiver(this.receiver, new IntentFilter(CommunityService.ACTION_COMMUNITY_CHANGED));
        registerLocalReceiver(this.receiver, new IntentFilter(MembershipService.ACTION_MEMBERSHIP_CHANGED));
        registerLocalReceiver(this.receiver, new IntentFilter(MembershipService.ACTION_WALLET_CHANGED));
        this.account = (AccountService) getService("account");
        this.account.addProfileListener(this.profileListener);
        this.membership = (MembershipService) getService("membership");
        this.config = (ConfigService) getService("config");
        this.configHelper = new CommunityConfigHelper(this);
        setHasOptionsMenu(NVApplication.DEBUG);
        DevOptionsHelper devOptionsHelper = (DevOptionsHelper) getService("devOptions");
        if (devOptionsHelper != null) {
            devOptionsHelper.sendDevOptionsRequest(this);
        }
    }

    @Override // com.narvii.list.NVListFragment, android.support.v4.app.Fragment
    public View onCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        return layoutInflater.inflate(R.layout.notification_list_view, viewGroup, false);
    }

    @Override // com.narvii.list.NVListFragment, com.narvii.app.NVFragment, android.support.v4.app.Fragment
    public void onDestroy() {
        unregisterLocalReceiver(this.receiver);
        this.account.removeProfileListener(this.profileListener);
        super.onDestroy();
    }

    @Override // com.narvii.list.NVListFragment, com.narvii.app.NVFragment, android.support.v4.app.Fragment
    public void onResume() {
        super.onResume();
        this.membership.refresh(false);
    }

    @Override // android.support.v4.app.Fragment
    public void onCreateOptionsMenu(Menu menu, MenuInflater menuInflater) {
        super.onCreateOptionsMenu(menu, menuInflater);
        menu.add(0, R.string.goto_url, 0, R.string.goto_url);
    }

    @Override // android.support.v4.app.Fragment
    public boolean onOptionsItemSelected(MenuItem menuItem) {
        if (menuItem.getItemId() == R.string.goto_url) {
            showLinkPasteDialog();
            return true;
        }
        return super.onOptionsItemSelected(menuItem);
    }

    @Override // com.narvii.list.NVListFragment
    protected void onListViewCreated(ListView listView, Bundle bundle) {
        super.onListViewCreated(listView, bundle);
        listView.setDivider(null);
        listView.setDividerHeight(0);
    }

    void about() {
        this.dialogHelper.showAboutDialog();
        ((ApiService) getService("api")).exec(ApiRequest.builder().post().global().path("/device").param("deviceID", ((AccountService) getService("account")).getDeviceId()).param("bundleID", getContext().getPackageName()).param("clientType", Integer.valueOf(NVApplication.CLIENT_TYPE)).param("testPushId", UUID.randomUUID().toString()).build(), ApiResponseListener.IGNORE_RESPONSE_LISTENER);
    }

    void resetApp() {
        Utils.postDelayed(new Runnable() { // from class: com.narvii.prefs.SettingsFragment.5
            @Override // java.lang.Runnable
            public void run() {
                if (SettingsFragment.this.getActivity() == null) {
                    return;
                }
                int i = NVApplication.CLIENT_TYPE;
                if (i == 101) {
                    MainActivity.setPendingCommand(MainActivity.CMD_RESET);
                    Intent intent = new Intent(SettingsFragment.this.getContext(), (Class<?>) MainActivity.class);
                    intent.putExtra("__communityId", new PackageUtils(SettingsFragment.this.getContext()).getCommunityIdFromPackageName());
                    intent.setFlags(268468224);
                    SettingsFragment.this.startActivity(intent);
                    SettingsFragment.this.getActivity().overridePendingTransition(R.anim.fade_in, R.anim.fade_out);
                } else if (i == 100) {
                    Intent intent2 = new Intent(SettingsFragment.this.getContext(), (Class<?>) MasterActivity.class);
                    intent2.putExtra("disallowOnBoarding", true);
                    intent2.setFlags(268468224);
                    SettingsFragment.this.startActivity(intent2);
                    SettingsFragment.this.getActivity().overridePendingTransition(R.anim.fade_in, R.anim.fade_out);
                }
                SettingsFragment.this.getActivity().finish();
            }
        }, 500L);
    }

    void logout() {
        ActionSheetDialog actionSheetDialog = new ActionSheetDialog(getContext());
        actionSheetDialog.addItem(R.string.account_logout, 1);
        actionSheetDialog.setCancelable(false);
        actionSheetDialog.setOnClickListener(new DialogInterface.OnClickListener() { // from class: com.narvii.prefs.SettingsFragment.6
            @Override // android.content.DialogInterface.OnClickListener
            public void onClick(DialogInterface dialogInterface, int i) {
                if (i == 0) {
                    new LogoutHelper(SettingsFragment.this).logout(new Callback<Boolean>() { // from class: com.narvii.prefs.SettingsFragment.6.1
                        @Override // com.narvii.util.Callback
                        public void call(Boolean bool) {
                            if (!bool.booleanValue()) {
                                NVToast.makeText(SettingsFragment.this.getContext(), SettingsFragment.this.getString(R.string.account_logout_fail_message), 0).show();
                            }
                            if (SettingsFragment.this.getBooleanParam(SettingsFragment.KEY_LOGOUT_WITHOUT_REST)) {
                                SettingsFragment.this.finish();
                            } else {
                                SettingsFragment.this.resetApp();
                            }
                        }
                    });
                }
            }
        });
        actionSheetDialog.show();
    }

    void login() {
        startActivity(new Intent(getContext(), (Class<?>) LoginActivity.class));
    }

    @Override // com.narvii.list.NVListFragment
    protected ListAdapter createAdapter(Bundle bundle) {
        this.adapter = new Adapter();
        getListView().setOnItemLongClickListener(this.adapter);
        return this.adapter;
    }

    @Override // com.narvii.notification.NotificationListener
    public void onNotification(Notification notification) {
        Adapter adapter;
        if ("update".equals(notification.action) && (notification.obj instanceof User) && (adapter = this.adapter) != null) {
            adapter.notifyDataSetChanged();
        }
    }

    class Adapter extends PrefsAdapter {
        Tag ACCOUNTPROFILE;
        Tag COPYRIGHT;
        Tag ClUB;
        Tag LOGIN;
        Tag LOGOUT;
        Tag MEMBERSHIP;
        Tag WALLET;
        int copyrightHit;
        long copyrightTime;
        String version;

        @Override // com.narvii.list.prefs.PrefsAdapter, com.narvii.list.NVAdapter
        protected boolean supportNVTheme() {
            return true;
        }

        @Override // com.narvii.list.NVAdapter
        public void onAttach() {
            super.onAttach();
        }

        public Adapter() {
            super(SettingsFragment.this);
            this.ACCOUNTPROFILE = new Tag("accountProfile");
            this.MEMBERSHIP = new Tag("membership");
            this.ClUB = new Tag("club");
            this.WALLET = new Tag("wallet");
            this.LOGOUT = new Tag("logout");
            this.LOGIN = new Tag("login");
            this.COPYRIGHT = new Tag("copyright");
            this.version = new PackageUtils(getContext()).getVersionName();
        }

        @Override // com.narvii.list.NVAdapter
        public void refresh(int i, Callback<Integer> callback) {
            refreshMonitorStart(i, callback);
            notifyDataSetChanged();
            refreshMonitorEnd();
        }

        @Override // com.narvii.list.prefs.PrefsAdapter
        protected void buildCells(List<Object> list) {
            AccountService accountService = (AccountService) getService("account");
            ConfigService configService = (ConfigService) getService("config");
            boolean zHasAccount = accountService.hasAccount();
            boolean z = (NVApplication.CLIENT_TYPE == 100 && SettingsFragment.this.isCommunityLevel()) ? false : true;
            if (zHasAccount && configService.getCommunityId() != 0) {
                list.add(new PrefsSection(R.string.account));
                list.add(this.ACCOUNTPROFILE);
                if (SettingsFragment.this.membership.isPremiumFeatureEnabled()) {
                    list.add(PrefsAdapter.DIVIDER);
                    list.add(this.WALLET);
                    list.add(PrefsAdapter.DIVIDER);
                    list.add(this.MEMBERSHIP);
                }
            }
            list.add(new PrefsSection(R.string.global));
            if (zHasAccount) {
                if (!SettingsFragment.this.isCommunityLevel()) {
                    PrefsEntry prefsEntry = new PrefsEntry(R.string.push_notifications);
                    prefsEntry.callbackIntent = FragmentWrapperActivity.intent(PushSettingListFragment.class);
                    list.add(prefsEntry);
                }
                if (!SettingsFragment.this.isCommunityLevel()) {
                    PrefsEntry prefsEntry2 = new PrefsEntry(R.string.prefs_blocked_users);
                    prefsEntry2.callbackIntent = FragmentWrapperActivity.intent(BlockedListFragment.class);
                    list.add(prefsEntry2);
                    PrefsEntry prefsEntry3 = new PrefsEntry(R.string.allow_inbound_chat_requests);
                    prefsEntry3.callbackIntent = FragmentWrapperActivity.intent(UserProfilePrivilegeFragment.class);
                    prefsEntry3.callbackIntent.putExtra("title", SettingsFragment.this.getString(R.string.allow_inbound_chat_requests));
                    prefsEntry3.callbackIntent.putExtra("privilegeKey", User.CHAT);
                    prefsEntry3.desc = accountService.getUserProfile().getPrivilegeText(getContext(), User.CHAT);
                    prefsEntry3.descColor = accountService.getUserProfile().getPrivilege(User.CHAT) == 3 ? SupportMenu.CATEGORY_MASK : -2130706433;
                    list.add(prefsEntry3);
                }
                PrefsToggle prefsToggle = new PrefsToggle(R.string.prefs_return_to_send, SettingsFragment.this.getString(R.string.prefs_return_to_send));
                prefsToggle.on = SettingsFragment.this.prefs.getBoolean("returnToSendChat", false);
                prefsToggle.callback = SettingsFragment.this.switchCallback;
                list.add(prefsToggle);
            }
            PrefsEntry prefsEntry4 = new PrefsEntry(R.string.settings_language);
            prefsEntry4.callbackIntent = FragmentWrapperActivity.intent(LanguageSettingFragment.class);
            list.add(prefsEntry4);
            if (zHasAccount) {
                list.add(new PrefsSection(R.string.more));
            } else {
                list.add(new PrefsSection(R.string.info));
            }
            PrefsEntry prefsEntry5 = new PrefsEntry(R.string.settings_amino_announcements);
            prefsEntry5.callbackIntent = FragmentWrapperActivity.intent(AnnouncementListFragment.class);
            list.add(prefsEntry5);
            if (!TextUtils.isEmpty(accountService.getDevOptions())) {
                PrefsEntry prefsEntry6 = new PrefsEntry(R.string.developer_options);
                prefsEntry6.callbackIntent = FragmentWrapperActivity.intent(DevSettingsFragment.class);
                list.add(prefsEntry6);
            }
            DebugPrefsHelper debugPrefsHelper = SettingsFragment.this.debugPrefsHelper;
            if (debugPrefsHelper != null) {
                debugPrefsHelper.addCells(list);
            }
            if (z) {
                list.add(new PrefsMargin());
                PrefsEntry prefsEntry7 = new PrefsEntry(R.string.settings_storage);
                prefsEntry7.callbackIntent = FragmentWrapperActivity.intent(StorageFragment.class);
                prefsEntry7.chevronRight = true;
                list.add(prefsEntry7);
            }
            list.add(new PrefsMargin());
            if (zHasAccount) {
                list.add(this.LOGOUT);
            } else {
                list.add(this.LOGIN);
            }
            list.add(this.COPYRIGHT);
        }

        @Override // com.narvii.list.prefs.PrefsAdapter, android.widget.Adapter
        public View getView(int i, View view, ViewGroup viewGroup) {
            Object item = getItem(i);
            if (item == this.WALLET) {
                View viewCreateView = createView(R.layout.prefs_wallet_item, viewGroup, view);
                ((TextView) viewCreateView.findViewById(R.id.balance)).setText(IabUtils.formatCoins(SettingsFragment.this.membership.walletBalance()));
                return viewCreateView;
            }
            int i2 = 0;
            if (item == this.MEMBERSHIP) {
                View viewCreateView2 = createView(R.layout.prefs_membership_item, viewGroup, view);
                TextView textView = (TextView) viewCreateView2.findViewById(R.id.status);
                ThumbImageView thumbImageView = (ThumbImageView) viewCreateView2.findViewById(R.id.icon);
                if (SettingsFragment.this.membership.isMembership()) {
                    thumbImageView.setImageDrawable(SettingsFragment.this.getResources().getDrawable(R.drawable.amino_plus_badge_wide));
                    thumbImageView.setShadowColor(Color.parseColor("#40000000"));
                    if (SettingsFragment.this.membership.isAutoRenew()) {
                        textView.setText(R.string.membership_status_active);
                        textView.setTextColor(-14035310);
                    } else {
                        int iExpiringDays = SettingsFragment.this.membership.expiringDays();
                        if (iExpiringDays == 0) {
                            textView.setText(R.string.membership_status_expiring_in_0_day);
                        } else if (iExpiringDays == 1) {
                            textView.setText(R.string.membership_status_expiring_in_1_day);
                        } else if (iExpiringDays <= 0 || iExpiringDays > 14) {
                            textView.setText((CharSequence) null);
                        } else {
                            textView.setText(SettingsFragment.this.getString(R.string.membership_status_expiring_in_n_day, Integer.valueOf(iExpiringDays)));
                        }
                        textView.setTextColor(-3145189);
                    }
                } else {
                    thumbImageView.setImageDrawable(SettingsFragment.this.getResources().getDrawable(R.drawable.amino_plus_badge_inactive_wide));
                    thumbImageView.setShadowColor(0);
                    if (SettingsFragment.this.membership.daysExpired() >= 0) {
                        textView.setText(R.string.membership_status_expired);
                        textView.setTextColor(-3145189);
                    } else {
                        textView.setText(R.string.membership_status_inactive0);
                        textView.setTextColor(-8487298);
                    }
                }
                return viewCreateView2;
            }
            if (item == this.LOGOUT) {
                View viewCreateView3 = createView(R.layout.prefs_log_out_item, viewGroup, view);
                TextView textView2 = (TextView) viewCreateView3.findViewById(R.id.login_out);
                textView2.setText(R.string.account_logout);
                textView2.setOnClickListener(this.subviewClickListener);
                textView2.setTag(this.LOGOUT);
                return viewCreateView3;
            }
            if (item == this.LOGIN) {
                View viewCreateView4 = createView(R.layout.prefs_log_in_item, viewGroup, view);
                TextView textView3 = (TextView) viewCreateView4.findViewById(R.id.login_in);
                textView3.setText(R.string.account_login);
                textView3.setOnClickListener(this.subviewClickListener);
                textView3.setTag(this.LOGIN);
                return viewCreateView4;
            }
            if (item == this.COPYRIGHT) {
                View viewCreateView5 = createView(R.layout.prefs_copyright_item, viewGroup, view);
                ((TextView) viewCreateView5).setText(SettingsFragment.this.getString(R.string.version_fmt, this.version) + "\n" + SettingsFragment.this.getString(R.string.copyright_narvii_inc) + " " + SettingsFragment.this.getString(R.string.copyright_all_rights_reserved));
                viewCreateView5.setOnClickListener(this.subviewClickListener);
                return viewCreateView5;
            }
            if (item == this.ACCOUNTPROFILE) {
                View viewCreateView6 = createView(R.layout.prefs_account_item, viewGroup, view);
                if (SettingsFragment.this.account.hasAccount()) {
                    User userProfile = SettingsFragment.this.account.getUserProfile();
                    NVImageView nVImageView = (NVImageView) viewCreateView6.findViewById(R.id.avatar);
                    ((TextView) viewCreateView6.findViewById(R.id.nickname)).setText(userProfile == null ? null : userProfile.nickname());
                    nVImageView.setImageUrl(userProfile != null ? userProfile.icon() : null);
                    nVImageView.setShowPressedMask(false);
                    nVImageView.setVisibility(0);
                    int securityLevel = SettingsFragment.this.account.getSecurityLevel();
                    if (securityLevel == 1) {
                        i2 = R.drawable.ic_security_level_safe;
                    } else if (securityLevel == 3) {
                        i2 = R.drawable.ic_security_level_danger;
                    }
                    if (i2 != 0) {
                        ((ImageView) viewCreateView6.findViewById(R.id.account_security)).setImageDrawable(ContextCompat.getDrawable(getContext(), i2));
                    }
                }
                return viewCreateView6;
            }
            return super.getView(i, view, viewGroup);
        }

        @Override // com.narvii.list.prefs.PrefsAdapter, com.narvii.list.NVAdapter, com.narvii.list.OnItemClickListener
        public boolean onItemClick(ListAdapter listAdapter, int i, Object obj, View view, View view2) {
            if (obj == this.WALLET) {
                Intent intent = FragmentWrapperActivity.intent(WalletRecyclerFragment.class);
                intent.putExtra("Source", "Settings");
                startActivity(intent);
                return true;
            }
            if (obj == this.MEMBERSHIP) {
                Intent intent2 = FragmentWrapperActivity.intent(MembershipMainRecyclerFragment.class);
                intent2.putExtra("Source", "Settings");
                startActivity(intent2);
                return true;
            }
            if (obj == this.ACCOUNTPROFILE) {
                startActivity(FragmentWrapperActivity.intent(AccountSettingFragment.class));
                return true;
            }
            if (obj == this.LOGOUT) {
                SettingsFragment.this.logout();
                return true;
            }
            if (obj == this.LOGIN) {
                SettingsFragment.this.login();
                return true;
            }
            if (obj == this.COPYRIGHT) {
                long jElapsedRealtime = SystemClock.elapsedRealtime();
                if (jElapsedRealtime - this.copyrightTime > 2000) {
                    this.copyrightTime = jElapsedRealtime;
                    this.copyrightHit = 0;
                } else {
                    this.copyrightHit++;
                    if (this.copyrightHit == 6) {
                        try {
                            byte[] bArrDecode = Base64.decode("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", 0);
                            BitmapDrawable bitmapDrawable = new BitmapDrawable(SettingsFragment.this.getResources(), BitmapFactory.decodeByteArray(bArrDecode, 0, bArrDecode.length));
                            bitmapDrawable.setBounds(0, 0, bitmapDrawable.getIntrinsicWidth(), bitmapDrawable.getIntrinsicHeight());
                            new ImageSpan(bitmapDrawable, 1);
                            SpannableString spannableString = new SpannableString("Modded by discared and romanok");
                            int length = spannableString.length() - 1;
                            spannableString.length();
                            ((TextView) view.findViewById(R.id.copyright)).setText(spannableString);
                        } catch (Exception unused) {
                        }
                    }
                }
                return true;
            }
            return super.onItemClick(listAdapter, i, obj, view, view2);
        }

        @Override // com.narvii.list.NVAdapter
        public boolean onLongClick(ListAdapter listAdapter, int i, Object obj, View view, View view2) {
            if ((obj instanceof PrefsEntry) && ((PrefsEntry) obj).id == R.string.prefs_feedback) {
                Intent intent = FragmentWrapperActivity.intent(DiagnosisFragment.class);
                if (SettingsFragment.this.abted) {
                    intent.putExtra("showExtras", true);
                }
                startActivity(intent);
                return true;
            }
            return super.onLongClick(listAdapter, i, obj, view, view2);
        }
    }

    void showLinkPasteDialog() {
        final AlertDialog alertDialog = new AlertDialog(getContext());
        alertDialog.setTitle(getString(R.string.link_post_title));
        final EditText editText = alertDialog.setEditText();
        editText.setHint(getString(R.string.link_post_title_hint));
        alertDialog.clearButtons();
        alertDialog.addButton(getString(R.string.cancel), 0, new View.OnClickListener() { // from class: com.narvii.prefs.SettingsFragment.7
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                alertDialog.dismiss();
            }
        });
        final TextView textView = (TextView) alertDialog.addButton(getString(R.string.done), 32, new View.OnClickListener() { // from class: com.narvii.prefs.SettingsFragment.8
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                String string = editText.getText().toString();
                if (!TextUtils.isEmpty(string) && !string.startsWith("http://") && !string.startsWith("https://")) {
                    string = "http://" + string;
                }
                try {
                    Uri uri = Uri.parse(string);
                    PackageUtils packageUtils = new PackageUtils(SettingsFragment.this.getContext());
                    if (("http".equalsIgnoreCase(uri.getScheme()) || "https".equalsIgnoreCase(uri.getScheme())) && packageUtils.isPermalinkHost(uri.getHost())) {
                        SettingsFragment.this.startActivity(new Intent("android.intent.action.VIEW", uri));
                        return;
                    }
                } catch (Exception unused) {
                }
                NVToast.makeText(SettingsFragment.this.getContext(), SettingsFragment.this.getString(R.string.goto_link_invalid), 0).show();
            }
        });
        if (!TextUtils.isEmpty(editText.getText())) {
            enableView(textView);
        } else {
            disableView(textView);
        }
        editText.addTextChangedListener(new TextWatcher() { // from class: com.narvii.prefs.SettingsFragment.9
            @Override // android.text.TextWatcher
            public void afterTextChanged(Editable editable) {
            }

            @Override // android.text.TextWatcher
            public void beforeTextChanged(CharSequence charSequence, int i, int i2, int i3) {
            }

            @Override // android.text.TextWatcher
            public void onTextChanged(CharSequence charSequence, int i, int i2, int i3) {
                if (textView != null) {
                    if (!TextUtils.isEmpty(charSequence.toString())) {
                        SettingsFragment.this.enableView(textView);
                    } else {
                        SettingsFragment.this.disableView(textView);
                    }
                }
            }
        });
        alertDialog.show();
    }

    void disableView(TextView textView) {
        if (textView == null) {
            return;
        }
        textView.setBackgroundDrawable(getContext().getResources().getDrawable(R.drawable.button_round_gray));
        textView.setClickable(false);
    }

    void enableView(TextView textView) {
        if (textView == null) {
            return;
        }
        textView.setBackgroundDrawable(getContext().getResources().getDrawable(R.drawable.button_round_green));
        textView.setClickable(true);
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
