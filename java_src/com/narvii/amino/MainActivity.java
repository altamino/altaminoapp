package com.narvii.amino;

import android.app.Activity;
import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.res.Resources;
import android.os.Bundle;
import android.os.SystemClock;
import android.support.v4.app.Fragment;
import android.support.v4.app.FragmentTransaction;
import android.view.MotionEvent;
import android.view.View;
import android.widget.TextView;
import com.narvii.account.AccountService;
import com.narvii.account.LogoutHelper;
import com.narvii.app.ApplicationSessionHelper;
import com.narvii.app.DrawerActivity;
import com.narvii.app.NVActivity;
import com.narvii.app.NVApplication;
import com.narvii.app.NVContext;
import com.narvii.app.NVFragment;
import com.narvii.community.CommunityService;
import com.narvii.config.ConfigService;
import com.narvii.drawer.DrawerHost;
import com.narvii.list.overlay.OverlayListPlaceholder;
import com.narvii.master.MasterActivity;
import com.narvii.model.Community;
import com.narvii.model.User;
import com.narvii.modulization.page.Page;
import com.narvii.util.Callback;
import com.narvii.util.NVToast;
import com.narvii.util.Utils;
import com.narvii.util.ViewUtils;
import com.narvii.util.dialog.ProgressDialog;

/* loaded from: classes2.dex */
public class MainActivity extends DrawerActivity {
    public static final int CMD_HOME = 65537;
    public static final int CMD_LOGOUT = 65545;
    public static final int CMD_OPEN_DRAWER = 131073;
    public static final int CMD_RESET = 1048608;
    static long LAST_PEEK;
    private static int pendingCmd;
    private static long pendingCmdTimeEnd;
    private static long pendingCmdTimeStart;
    private AccountService account;
    boolean blockInput;
    DrawerHost drawerHost;
    boolean keychainLoginActivityShown;
    ProgressDialog keychainLoginProgress;
    private MainDialogFragment mainDlg;
    private CommunityNavBarFragment navBar;
    boolean resumed;
    int sessionId;
    private final Runnable startRelogin = new Runnable() { // from class: com.narvii.amino.MainActivity.3
        @Override // java.lang.Runnable
        public void run() {
            MainActivity mainActivity = MainActivity.this;
            if (mainActivity.keychainLoginProgress != null) {
                if (mainActivity.isDestoryed()) {
                    return;
                }
                Utils.postDelayed(this, 200L);
            } else {
                AccountService accountService = (AccountService) mainActivity.getService("account");
                if (accountService.hasAccount()) {
                    final ProgressDialog progressDialog = new ProgressDialog(MainActivity.this);
                    progressDialog.show();
                    accountService.relogin(new Callback<User>() { // from class: com.narvii.amino.MainActivity.3.1
                        @Override // com.narvii.util.Callback
                        public void call(User user) {
                            progressDialog.dismiss();
                        }
                    });
                }
            }
        }
    };
    private final BroadcastReceiver keychainLoginReceiver = new BroadcastReceiver() { // from class: com.narvii.amino.MainActivity.4
        @Override // android.content.BroadcastReceiver
        public void onReceive(Context context, Intent intent) throws IllegalAccessException, NoSuchFieldException, Resources.NotFoundException, IllegalArgumentException {
            AccountService accountService = (AccountService) MainActivity.this.getService("account");
            if (accountService.getKeychainStatus() > 0) {
                MainActivity mainActivity = MainActivity.this;
                if (mainActivity.keychainLoginProgress == null) {
                    mainActivity.keychainLoginProgress = new ProgressDialog(mainActivity);
                    MainActivity.this.keychainLoginProgress.show();
                    return;
                }
                return;
            }
            ProgressDialog progressDialog = MainActivity.this.keychainLoginProgress;
            if (progressDialog != null) {
                boolean zIsShowing = progressDialog.isShowing();
                MainActivity.this.keychainLoginProgress.dismiss();
                MainActivity.this.keychainLoginProgress = null;
                if (accountService.hasAccount()) {
                    if (zIsShowing) {
                        MainActivity.this.openDrawer();
                    } else {
                        User userProfile = accountService.getUserProfile();
                        String str = userProfile != null ? userProfile.nickname : null;
                        MainActivity mainActivity2 = MainActivity.this;
                        NVToast.makeText(mainActivity2, mainActivity2.getString(com.narvii.amino.mastes.R.string.account_login_as, new Object[]{str}), 0).show();
                        MainActivity.this.peekDrawer(0L, 800L);
                    }
                }
                MainActivity.this.unregisterLocalReceiver(this);
            }
        }
    };
    private final BroadcastReceiver receiver = new BroadcastReceiver() { // from class: com.narvii.amino.MainActivity.5
        @Override // android.content.BroadcastReceiver
        public void onReceive(Context context, Intent intent) {
            if (!AccountService.ACTION_ACCOUNT_CHANGED.equals(intent.getAction()) || MainActivity.this.isDestoryed()) {
                return;
            }
            MainActivity.this.resetHomeFragment();
        }
    };

    @Override // com.narvii.app.NVActivity
    public int getActionBarOverlaySize() {
        return 0;
    }

    @Override // com.narvii.app.NVActivity
    public int getCustomTheme() {
        return 2131755020;
    }

    @Override // com.narvii.app.NVActivity
    public int getStatusBarOverlaySize() {
        return 0;
    }

    @Override // com.narvii.app.DrawerActivity
    public boolean hasCBB() {
        return true;
    }

    @Override // com.narvii.app.DrawerActivity
    public boolean hasDrawer() {
        return true;
    }

    @Override // com.narvii.app.DrawerActivity
    public boolean hasVisitorBar() {
        return true;
    }

    @Override // com.narvii.app.NVActivity
    public boolean isModel() {
        return false;
    }

    @Override // com.narvii.app.NVActivity
    public boolean isPagebackgroundEnabled() {
        return true;
    }

    @Override // com.narvii.app.NVActivity
    protected boolean showThemeColorAsAlternativeBackground() {
        return true;
    }

    public static Intent backToHome(NVContext nVContext, Intent intent) {
        if ((nVContext.getContext() instanceof Activity) && ((Activity) nVContext.getContext()).getTaskId() != ApplicationSessionHelper.getTaskId()) {
            return intent;
        }
        if (ApplicationSessionHelper.hasMainStacked() && ((ConfigService) nVContext.getService("config")).getCommunityId() == ApplicationSessionHelper.getMainCommunityId()) {
            intent.setFlags(67108864);
            return intent;
        }
        if (NVApplication.CLIENT_TYPE == 100 && ApplicationSessionHelper.hasMasterStacked()) {
            Intent intent2 = new Intent(nVContext.getContext(), (Class<?>) MasterActivity.class);
            intent2.setFlags(67108864);
            intent.putExtra("__communityId", ((ConfigService) nVContext.getService("config")).getCommunityId());
            intent2.putExtra("__redirectActivity", intent);
            return intent2;
        }
        intent.setFlags(268468224);
        return intent;
    }

    /* JADX WARN: Removed duplicated region for block: B:73:0x0267  */
    /* JADX WARN: Removed duplicated region for block: B:81:0x0292  */
    @Override // com.narvii.app.DrawerActivity, com.narvii.app.NVActivity, com.narvii.app.theme.NVThemeActivity, android.support.v4.app.FragmentActivity, android.support.v4.app.SupportActivity, android.app.Activity
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    protected void onCreate(android.os.Bundle r24) throws java.lang.IllegalAccessException, java.lang.NoSuchFieldException, android.content.res.Resources.NotFoundException, java.lang.IllegalArgumentException {
        /*
            Method dump skipped, instructions count: 859
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.narvii.amino.MainActivity.onCreate(android.os.Bundle):void");
    }

    @Override // com.narvii.app.NVActivity
    public Fragment getMainFragment() {
        return getSupportFragmentManager().findFragmentByTag(Page.HOME);
    }

    @Override // com.narvii.app.NVActivity, android.support.v4.app.FragmentActivity, android.support.v4.app.SupportActivity, android.app.Activity
    protected void onSaveInstanceState(Bundle bundle) {
        super.onSaveInstanceState(bundle);
        bundle.putInt("sessionId", this.sessionId);
    }

    @Override // com.narvii.app.DrawerActivity, com.narvii.app.NVActivity, android.support.v4.app.FragmentActivity, android.app.Activity
    protected void onResume() throws IllegalAccessException, NoSuchFieldException, Resources.NotFoundException, IllegalArgumentException {
        super.onResume();
        if (this.sessionId != ApplicationSessionHelper.getSessionId()) {
            resetHomeFragment();
            this.sessionId = ApplicationSessionHelper.getSessionId();
        } else {
            processPendingCmd(popPendingCmd());
        }
        this.resumed = true;
        this.account.updateRecentVisitorCount();
    }

    @Override // com.narvii.app.DrawerActivity, com.narvii.app.NVActivity, android.support.v4.app.FragmentActivity, android.app.Activity
    protected void onPause() {
        this.resumed = false;
        super.onPause();
    }

    @Override // com.narvii.app.DrawerActivity, com.narvii.app.NVActivity, com.narvii.app.theme.NVThemeActivity, android.support.v4.app.FragmentActivity, android.app.Activity
    protected void onDestroy() {
        if (this.drawerHost != null) {
            unregisterLocalReceiver(this.keychainLoginReceiver);
            unregisterLocalReceiver(this.receiver);
            this.drawerHost = null;
        }
        if (isFinishing()) {
            ApplicationSessionHelper.mainFinished(this);
        }
        super.onDestroy();
    }

    public void updateOverlayListPlaceholder(OverlayListPlaceholder overlayListPlaceholder) {
        overlayListPlaceholder.adjustHeight(super.getStatusBarOverlaySize(), super.getActionBarOverlaySize());
    }

    @Override // com.narvii.app.NVActivity
    public String getCrashlyticsFootprint() {
        String crashlyticsFootprint = super.getCrashlyticsFootprint();
        Fragment fragmentFindFragmentByTag = getSupportFragmentManager().findFragmentByTag(Page.HOME);
        if (fragmentFindFragmentByTag == null) {
            return crashlyticsFootprint;
        }
        return crashlyticsFootprint + " -- " + fragmentFindFragmentByTag;
    }

    public boolean isOnBoardingCheckDone() {
        MainDialogFragment mainDialogFragment = (MainDialogFragment) getSupportFragmentManager().findFragmentByTag("dialog");
        if (mainDialogFragment == null) {
            return true;
        }
        return mainDialogFragment.isOnBoardingCheckDone();
    }

    @Override // com.narvii.app.NVActivity, android.support.v4.app.FragmentActivity
    public void startActivityFromFragment(Fragment fragment, Intent intent, int i, Bundle bundle) {
        if (fragment != null) {
            boolean z = false;
            Fragment parentFragment = fragment.getParentFragment();
            while (true) {
                if (parentFragment == null) {
                    break;
                }
                if (parentFragment instanceof HomeFragment) {
                    z = true;
                    break;
                }
                parentFragment = parentFragment.getParentFragment();
            }
            if (z && intent != null) {
                String stringExtra = intent.getStringExtra("Source");
                String str = ";Home Page";
                if (stringExtra != null) {
                    str = stringExtra + ";Home Page";
                }
                intent.putExtra("Source", str);
            }
        }
        super.startActivityFromFragment(fragment, intent, i, bundle);
    }

    public void resetHomeFragment() {
        TextView textView;
        TextView textView2;
        CommunityNavBarFragment communityNavBarFragment = (CommunityNavBarFragment) getSupportFragmentManager().findFragmentByTag("communityNavBar");
        if (communityNavBarFragment != null) {
            communityNavBarFragment.setHasOptionsMenu(true);
        }
        if (getActionBar() == null || getActionBar().getCustomView() == null) {
            textView = null;
            textView2 = null;
        } else {
            View customView = getActionBar().getCustomView();
            textView2 = (TextView) customView.findViewById(com.narvii.amino.mastes.R.id.actionbar_title);
            textView = (TextView) customView.findViewById(com.narvii.amino.mastes.R.id.fake_actionbar_title);
        }
        if (textView2 != null) {
            textView2.setVisibility(8);
        }
        Community community = ((CommunityService) getService("community")).getCommunity(((ConfigService) getService("config")).getCommunityId());
        if (community != null) {
            setTitle((CharSequence) null);
            if (textView != null) {
                textView.setText(community.name);
                ViewUtils.setMontserratExtraBoldTypeface(textView);
                textView.setVisibility(0);
            }
        }
        Fragment fragmentFindFragmentByTag = getSupportFragmentManager().findFragmentByTag(Page.HOME);
        HomeFragment homeFragment = new HomeFragment();
        FragmentTransaction fragmentTransactionBeginTransaction = getSupportFragmentManager().beginTransaction();
        if (fragmentFindFragmentByTag != null) {
            fragmentTransactionBeginTransaction.remove(fragmentFindFragmentByTag);
        }
        fragmentTransactionBeginTransaction.add(com.narvii.amino.mastes.R.id.base_frame, homeFragment, Page.HOME);
        fragmentTransactionBeginTransaction.commitAllowingStateLoss();
    }

    public void restoreHomeTab() {
        ((HomeFragment) getSupportFragmentManager().findFragmentByTag(Page.HOME)).restoreHomeTab();
    }

    @Override // com.narvii.app.NVActivity
    public void smoothScrollToTop() {
        Fragment fragmentFindFragmentByTag = getSupportFragmentManager().findFragmentByTag(Page.HOME);
        if (fragmentFindFragmentByTag instanceof NVFragment) {
            ((NVFragment) fragmentFindFragmentByTag).smoothScrollToTop();
        }
    }

    @Override // com.narvii.app.NVActivity
    public boolean canScrollUp() {
        Fragment fragmentFindFragmentByTag = getSupportFragmentManager().findFragmentByTag(Page.HOME);
        if (fragmentFindFragmentByTag instanceof NVFragment) {
            return ((NVFragment) fragmentFindFragmentByTag).canScrollUp();
        }
        return false;
    }

    @Override // com.narvii.app.DrawerActivity, com.narvii.app.NVActivity, android.support.v4.app.FragmentActivity, android.app.Activity
    public void onBackPressed() {
        if (NVActivity.isBackTooFast()) {
            return;
        }
        super.onBackPressed();
    }

    @Override // com.narvii.app.NVActivity, android.app.Activity, android.view.Window.Callback
    public boolean dispatchTouchEvent(MotionEvent motionEvent) {
        if (this.blockInput) {
            return false;
        }
        return super.dispatchTouchEvent(motionEvent);
    }

    public static void setPendingCommand(int i) {
        setPendingCommand(i, 800L);
    }

    public static void setPendingCommand(int i, long j) {
        pendingCmd = i;
        pendingCmdTimeStart = SystemClock.elapsedRealtime();
        pendingCmdTimeEnd = pendingCmdTimeStart + j;
    }

    private int popPendingCmd() {
        if (pendingCmd == 0) {
            return 0;
        }
        long jElapsedRealtime = SystemClock.elapsedRealtime();
        int i = (jElapsedRealtime < pendingCmdTimeStart || jElapsedRealtime >= pendingCmdTimeEnd) ? 0 : pendingCmd;
        pendingCmd = 0;
        pendingCmdTimeStart = 0L;
        pendingCmdTimeEnd = 0L;
        return i;
    }

    private boolean processPendingCmd(int i) throws IllegalAccessException, NoSuchFieldException, Resources.NotFoundException, IllegalArgumentException {
        switch (i) {
            case CMD_HOME /* 65537 */:
                restoreHomeTab();
                break;
            case CMD_LOGOUT /* 65545 */:
                new LogoutHelper(this).logout(new Callback<Boolean>() { // from class: com.narvii.amino.MainActivity.6
                    @Override // com.narvii.util.Callback
                    public void call(Boolean bool) throws IllegalAccessException, NoSuchFieldException, Resources.NotFoundException, IllegalArgumentException {
                        MainActivity.this.closeDrawers();
                        if (bool.booleanValue()) {
                            return;
                        }
                        NVToast.makeText(MainActivity.this.getContext(), MainActivity.this.getString(com.narvii.amino.mastes.R.string.account_logout_fail_message), 0).show();
                    }
                });
                break;
            case 131073:
                openDrawer();
                break;
            case CMD_RESET /* 1048608 */:
                resetHomeFragment();
                break;
        }
        return true;
    }

    @Override // com.narvii.app.DrawerActivity
    public boolean onDrawerEvent(int i, Object obj) {
        if (processPendingCmd(i)) {
            return true;
        }
        return super.onDrawerEvent(i, obj);
    }

    @Override // com.narvii.app.NVActivity, android.support.v4.app.FragmentActivity, android.app.Activity
    protected void onActivityResult(int i, int i2, Intent intent) {
        if (i2 == -1 && pendingCmd == 131073) {
            popPendingCmd();
        }
        super.onActivityResult(i, i2, intent);
    }

    @Override // com.narvii.app.NVActivity
    protected void onJoinCommunitySuccessInVisitorMode() {
        super.onJoinCommunitySuccessInVisitorMode();
        MainDialogFragment mainDialogFragment = this.mainDlg;
        if (mainDialogFragment != null) {
            mainDialogFragment.setDisabled(false);
        }
        CommunityNavBarFragment communityNavBarFragment = this.navBar;
        if (communityNavBarFragment != null) {
            communityNavBarFragment.invalidateOptionsMenu();
        }
    }
}
