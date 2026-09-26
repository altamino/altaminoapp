package com.narvii.amino;

import ai.medialab.medialabads2.maliciousadblockers.RedirectBlockingFragmentActivity;
import android.animation.Animator;
import android.app.Activity;
import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.graphics.Bitmap;
import android.graphics.Rect;
import android.graphics.drawable.BitmapDrawable;
import android.graphics.drawable.Drawable;
import android.net.Uri;
import android.os.Bundle;
import android.os.SystemClock;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.fragment.app.Fragment;
import androidx.fragment.app.FragmentTransaction;
import com.narvii.account.AccountService;
import com.narvii.account.LoginActivity;
import com.narvii.account.LogoutHelper;
import com.narvii.ad.MediaLabInterstitials;
import com.narvii.app.ApplicationSessionHelper;
import com.narvii.app.ComScoreSectionDispatcher;
import com.narvii.app.DrawerActivity;
import com.narvii.app.NVActivity;
import com.narvii.app.NVApplication;
import com.narvii.app.NVContext;
import com.narvii.app.NVFragment;
import com.narvii.broadcast.DeliveryTimePickerFragment;
import com.narvii.community.CommunityService;
import com.narvii.config.ConfigService;
import com.narvii.drawer.DrawerHost;
import com.narvii.drawer.MyDrawerLayout;
import com.narvii.headlines.ExternalPostPreviewFragment;
import com.narvii.list.overlay.OverlayListPlaceholder;
import com.narvii.master.MasterActivity;
import com.narvii.master.search.SearchPrefsHelper;
import com.narvii.model.Community;
import com.narvii.model.Media;
import com.narvii.model.User;
import com.narvii.modulization.page.Page;
import com.narvii.util.Callback;
import com.narvii.util.Log;
import com.narvii.util.NVToast;
import com.narvii.util.Utils;
import com.narvii.util.ViewUtils;
import com.narvii.util.dialog.ProgressDialog;
import com.narvii.util.drawables.gif.GifLoader;
import com.narvii.util.image.NVImageLoader;
import com.narvii.util.statistics.FirebaseLogManager;
import com.safedk.android.utils.Logger;
import java.io.File;
import java.util.List;

/* JADX INFO: loaded from: classes8.dex */
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
        public void onReceive(Context context, Intent intent) {
            AccountService accountService = (AccountService) MainActivity.this.getService("account");
            if (accountService.getKeychainStatus() > 0) {
                MainActivity mainActivity = MainActivity.this;
                if (mainActivity.keychainLoginProgress == null) {
                    mainActivity.keychainLoginProgress = new ProgressDialog(MainActivity.this);
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
                        NVToast.makeText(mainActivity2, mainActivity2.getString(com.narvii.amino.master.R.string.account_login_as, str), 0).show();
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

    private boolean processPendingCmd(int i10) {
        switch (i10) {
            case CMD_HOME /* 65537 */:
                restoreHomeTab();
                return true;
            case CMD_LOGOUT /* 65545 */:
                new LogoutHelper(this).logout(new Callback() { // from class: com.narvii.amino.h
                    @Override // com.narvii.util.Callback
                    public final void call(Object obj) {
                        this.f1808a.lambda$processPendingCmd$0((Boolean) obj);
                    }
                });
                return true;
            case CMD_OPEN_DRAWER /* 131073 */:
                openDrawer();
                return true;
            case CMD_RESET /* 1048608 */:
                resetHomeFragment();
                return true;
            default:
                return false;
        }
    }

    public static void safedk_NVActivity_startActivityFromFragment_58c141dea7abf85bfc218080816ec363(NVActivity p0, Fragment p1, Intent p5, int p8, Bundle p10) {
        Logger.d("SafeDK-Special|SafeDK: Call> Lcom/narvii/app/NVActivity;->startActivityFromFragment(Landroidx/fragment/app/Fragment;Landroid/content/Intent;ILandroid/os/Bundle;)V");
        if (p5 == null) {
            return;
        }
        super.startActivityFromFragment(p1, p5, p8, p10);
    }

    public static void safedk_RedirectBlockingFragmentActivity_startActivity_df8845b07c3ebd4003c932535b05cc9f(RedirectBlockingFragmentActivity p0, Intent p1) {
        Logger.d("SafeDK-Special|SafeDK: Call> Lai/medialab/medialabads2/maliciousadblockers/RedirectBlockingFragmentActivity;->startActivity(Landroid/content/Intent;)V");
        if (p1 == null) {
            return;
        }
        p0.startActivity(p1);
    }

    public static void setPendingCommand(int i10) {
        setPendingCommand(i10, 800L);
    }

    @Override // com.narvii.app.NVActivity
    public int getActionBarOverlaySize() {
        return 0;
    }

    @Override // com.narvii.app.NVActivity
    public int getCustomTheme() {
        return 2131951629;
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

    @Override // com.narvii.app.NVActivity, androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, android.app.Activity
    protected void onActivityResult(int i10, int i11, Intent intent) {
        if (i11 == -1 && pendingCmd == 131073) {
            popPendingCmd();
        }
        super.onActivityResult(i10, i11, intent);
    }

    @Override // com.narvii.app.DrawerActivity, com.narvii.app.NVActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    protected void onPause() {
        this.resumed = false;
        super.onPause();
    }

    @Override // com.narvii.app.NVActivity
    protected boolean showThemeColorAsAlternativeBackground() {
        return true;
    }

    private int popPendingCmd() {
        if (pendingCmd == 0) {
            return 0;
        }
        long jElapsedRealtime = SystemClock.elapsedRealtime();
        int i10 = (jElapsedRealtime < pendingCmdTimeStart || jElapsedRealtime >= pendingCmdTimeEnd) ? 0 : pendingCmd;
        pendingCmd = 0;
        pendingCmdTimeStart = 0L;
        pendingCmdTimeEnd = 0L;
        return i10;
    }

    public static void setPendingCommand(int i10, long j6) {
        pendingCmd = i10;
        long jElapsedRealtime = SystemClock.elapsedRealtime();
        pendingCmdTimeStart = jElapsedRealtime;
        pendingCmdTimeEnd = jElapsedRealtime + j6;
    }

    @Override // com.narvii.app.NVActivity, android.app.Activity, android.view.Window.Callback
    public boolean dispatchTouchEvent(MotionEvent motionEvent) {
        if (this.blockInput) {
            return false;
        }
        return super.dispatchTouchEvent(motionEvent);
    }

    /* JADX WARN: Code duplicated, block: B:63:0x0250  */
    @Override // com.narvii.app.DrawerActivity, com.narvii.app.NVActivity, com.narvii.app.theme.NVThemeActivity, androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    protected void onCreate(Bundle bundle) {
        List<Media> list;
        Drawable localGifDrawable;
        int i10;
        MainDialogFragment mainDialogFragment;
        super.onCreate(bundle);
        ComScoreSectionDispatcher.INSTANCE.sectionChangeToCommunity();
        setShouldInflateAd(true);
        setContentView(com.narvii.amino.master.R.layout.activity_base);
        ConfigService configService = (ConfigService) getService("config");
        if (configService.getCommunityId() == 0) {
            Log.e("MainActivity start without community");
            finish();
            return;
        }
        ApplicationSessionHelper.mainOpened(this);
        if (bundle == null) {
            this.sessionId = ApplicationSessionHelper.getSessionId();
        } else {
            this.sessionId = bundle.getInt("sessionId");
        }
        this.drawerHost = (DrawerHost) getService("drawerHost");
        registerLocalReceiver(this.receiver, new IntentFilter(AccountService.ACTION_ACCOUNT_CHANGED));
        this.account = (AccountService) getService("account");
        if (bundle == null) {
            MediaLabInterstitials.INSTANCE.showAdWithDelayedAction("open_community", null);
            FirebaseLogManager.logEvent(this, "open_community", null);
            resetHomeFragment();
            this.mainDlg = new MainDialogFragment();
            Bundle bundle2 = new Bundle();
            bundle2.putInt("flag", 2558);
            this.mainDlg.setArguments(bundle2);
            getSupportFragmentManager().q().e(this.mainDlg, "dialog").j();
            this.navBar = new CommunityNavBarFragment();
            Bundle bundle3 = new Bundle();
            bundle3.putBoolean("hideBackButton", false);
            this.navBar.setArguments(bundle3);
            getSupportFragmentManager().q().c(android.R.id.content, this.navBar, "communityNavBar").j();
        } else {
            this.mainDlg = (MainDialogFragment) getSupportFragmentManager().m0("dialog");
            this.navBar = (CommunityNavBarFragment) getSupportFragmentManager().m0("communityNavBar");
        }
        if (isVisitorNotJoined() && (mainDialogFragment = this.mainDlg) != null) {
            mainDialogFragment.setDisabled(true);
        }
        if (bundle == null && !this.account.hasAccount()) {
            Community community = ((CommunityService) getService(SearchPrefsHelper.PREFS_KEY_COMMUNITY)).getCommunity(configService.getCommunityId());
            if (community != null && (i10 = community.joinType) != 2 && i10 != 1) {
                Intent intent = new Intent(this, (Class<?>) LoginActivity.class);
                intent.putExtra("signup", true);
                intent.putExtra("skipBtn", true);
                intent.putExtra(ExternalPostPreviewFragment.SOURCE, "Zero State");
                intent.putExtra("promptType", LoginActivity.PromptType.Launch.name());
                safedk_RedirectBlockingFragmentActivity_startActivity_df8845b07c3ebd4003c932535b05cc9f(this, intent);
            }
            this.keychainLoginActivityShown = true;
        }
        long j6 = 400;
        if (!this.keychainLoginActivityShown) {
            registerLocalReceiver(this.keychainLoginReceiver, new IntentFilter(AccountService.KEYCHAIN_STATUS_CHANGED));
            this.account.crossAppsCheckInBackground();
            this.keychainLoginReceiver.onReceive(this, null);
            if (bundle == null && getIntent() != null && getIntent().getData() != null && "relogin".equals(getIntent().getData().getHost())) {
                Utils.postDelayed(this.startRelogin, 400L);
            }
        }
        if (bundle == null && !this.keychainLoginActivityShown && "android.intent.action.MAIN".equals(getIntent().getAction()) && !getIntent().getBooleanExtra("noSplash", false)) {
            long jElapsedRealtime = SystemClock.elapsedRealtime();
            long jMax = Math.max(800L, 2500 - SystemClock.elapsedRealtime());
            Community community2 = ((CommunityService) getService(SearchPrefsHelper.PREFS_KEY_COMMUNITY)).getCommunity(configService.getCommunityId());
            if (community2 != null && (list = community2.promotionalMediaList) != null && list.size() > 0) {
                Rect rect = new Rect();
                final MyDrawerLayout drawerLayout = getDrawerLayout();
                drawerLayout.getWindowVisibleDisplayFrame(rect);
                NVImageLoader nVImageLoader = (NVImageLoader) getService("imageLoader");
                if (nVImageLoader.isLocal(community2.promotionalMediaList.get(0).url)) {
                    localGifDrawable = null;
                } else {
                    File file = (File) NVApplication.instance().getService("filesDir");
                    File file2 = new File(file, "community-launch-image.gif");
                    if (file2.length() > 0) {
                        localGifDrawable = ((GifLoader) getService("gifLoader")).getLocalGifDrawable(Uri.fromFile(file2).toString());
                    } else {
                        Bitmap local = nVImageLoader.getLocal(Uri.fromFile(new File(file, "community-launch-image.jpg")).toString(), rect.width(), rect.height(), true);
                        if (local == null) {
                            localGifDrawable = null;
                        } else {
                            localGifDrawable = new BitmapDrawable(local);
                        }
                    }
                }
                if (localGifDrawable == null) {
                    Bitmap local2 = nVImageLoader.getLocal("assets://launch-image.jpg", rect.width(), rect.height(), true);
                    localGifDrawable = local2 == null ? ((GifLoader) getService("gifLoader")).getLocalGifDrawable("assets://launch-image.gif") : new BitmapDrawable(local2);
                }
                if (localGifDrawable != null) {
                    final ImageView imageView = (ImageView) getLayoutInflater().inflate(com.narvii.amino.master.R.layout.main_splash, (ViewGroup) drawerLayout, false);
                    drawerLayout.addView(imageView);
                    imageView.setImageDrawable(localGifDrawable);
                    this.blockInput = true;
                    imageView.animate().scaleX(1.036f).scaleY(1.036f).setDuration(2500L).start();
                    imageView.animate().setStartDelay(jMax).setDuration(1000L).alpha(0.0f).setListener(new Animator.AnimatorListener() { // from class: com.narvii.amino.MainActivity.1
                        @Override // android.animation.Animator.AnimatorListener
                        public void onAnimationRepeat(Animator animator) {
                        }

                        @Override // android.animation.Animator.AnimatorListener
                        public void onAnimationStart(Animator animator) {
                        }

                        @Override // android.animation.Animator.AnimatorListener
                        public void onAnimationEnd(Animator animator) {
                            drawerLayout.removeView(imageView);
                        }

                        @Override // android.animation.Animator.AnimatorListener
                        public void onAnimationCancel(Animator animator) {
                            onAnimationEnd(animator);
                        }
                    }).start();
                    Utils.postDelayed(new Runnable() { // from class: com.narvii.amino.MainActivity.2
                        @Override // java.lang.Runnable
                        public void run() {
                            MainActivity.this.blockInput = false;
                        }
                    }, jMax);
                }
            }
            Log.i("launch image shown in " + (SystemClock.elapsedRealtime() - jElapsedRealtime) + "ms");
            j6 = jMax + 566;
        }
        if (bundle == null) {
            if (System.currentTimeMillis() > LAST_PEEK + ((long) (NVApplication.DEBUG ? 60000 : DeliveryTimePickerFragment.ONE_HOUR))) {
                peekDrawer(j6, 1200L);
                LAST_PEEK = System.currentTimeMillis();
            }
        }
    }

    @Override // com.narvii.app.DrawerActivity, com.narvii.app.NVActivity, com.narvii.app.theme.NVThemeActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
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

    @Override // com.narvii.app.NVActivity, androidx.fragment.app.FragmentActivity
    public void startActivityFromFragment(Fragment fragment, Intent intent, int i10, Bundle bundle) {
        if (fragment != null) {
            for (Fragment parentFragment = fragment.getParentFragment(); parentFragment != null; parentFragment = parentFragment.getParentFragment()) {
                if (parentFragment instanceof HomeFragment) {
                    if (intent == null) {
                        break;
                    }
                    String stringExtra = intent.getStringExtra(ExternalPostPreviewFragment.SOURCE);
                    intent.putExtra(ExternalPostPreviewFragment.SOURCE, stringExtra != null ? stringExtra + ";Home Page" : ";Home Page");
                    break;
                }
            }
        }
        safedk_NVActivity_startActivityFromFragment_58c141dea7abf85bfc218080816ec363(this, fragment, intent, i10, bundle);
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

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$processPendingCmd$0(Boolean bool) {
        closeDrawers();
        if (!bool.booleanValue()) {
            NVToast.makeText(getContext(), getString(com.narvii.amino.master.R.string.account_logout_fail_message), 0).show();
        }
    }

    @Override // com.narvii.app.NVActivity
    public boolean canScrollUp() {
        Fragment fragmentM0 = getSupportFragmentManager().m0(Page.HOME);
        if (fragmentM0 instanceof NVFragment) {
            return ((NVFragment) fragmentM0).canScrollUp();
        }
        return false;
    }

    @Override // com.narvii.app.NVActivity
    public String getCrashlyticsFootprint() {
        String crashlyticsFootprint = super.getCrashlyticsFootprint();
        Fragment fragmentM0 = getSupportFragmentManager().m0(Page.HOME);
        if (fragmentM0 != null) {
            return crashlyticsFootprint + " -- " + fragmentM0;
        }
        return crashlyticsFootprint;
    }

    @Override // com.narvii.app.NVActivity
    public Fragment getMainFragment() {
        return getSupportFragmentManager().m0(Page.HOME);
    }

    public boolean isOnBoardingCheckDone() {
        MainDialogFragment mainDialogFragment = (MainDialogFragment) getSupportFragmentManager().m0("dialog");
        if (mainDialogFragment == null) {
            return true;
        }
        return mainDialogFragment.isOnBoardingCheckDone();
    }

    @Override // com.narvii.app.DrawerActivity, com.narvii.app.NVActivity, androidx.activity.ComponentActivity, android.app.Activity
    public void onBackPressed() {
        if (!NVActivity.isBackTooFast()) {
            super.onBackPressed();
        }
    }

    @Override // com.narvii.app.DrawerActivity
    public boolean onDrawerEvent(int i10, Object obj) {
        if (processPendingCmd(i10)) {
            return true;
        }
        return super.onDrawerEvent(i10, obj);
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

    @Override // com.narvii.app.DrawerActivity, com.narvii.app.NVActivity, com.narvii.app.theme.NVThemeActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    protected void onResume() {
        super.onResume();
        if (this.sessionId != ApplicationSessionHelper.getSessionId()) {
            resetHomeFragment();
            this.sessionId = ApplicationSessionHelper.getSessionId();
        } else {
            processPendingCmd(popPendingCmd());
        }
        this.resumed = true;
    }

    @Override // com.narvii.app.NVActivity, androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    protected void onSaveInstanceState(Bundle bundle) {
        super.onSaveInstanceState(bundle);
        bundle.putInt("sessionId", this.sessionId);
    }

    public void resetHomeFragment() {
        TextView textView;
        TextView textView2;
        CommunityNavBarFragment communityNavBarFragment = (CommunityNavBarFragment) getSupportFragmentManager().m0("communityNavBar");
        if (communityNavBarFragment != null) {
            communityNavBarFragment.setHasOptionsMenu(true);
        }
        if (getActionBar() != null && getActionBar().getCustomView() != null) {
            View customView = getActionBar().getCustomView();
            textView2 = (TextView) customView.findViewById(com.narvii.amino.master.R.id.actionbar_title);
            textView = (TextView) customView.findViewById(com.narvii.amino.master.R.id.fake_actionbar_title);
        } else {
            textView = null;
            textView2 = null;
        }
        if (textView2 != null) {
            textView2.setVisibility(8);
        }
        Community community = ((CommunityService) getService(SearchPrefsHelper.PREFS_KEY_COMMUNITY)).getCommunity(((ConfigService) getService("config")).getCommunityId());
        if (community != null) {
            setTitle((CharSequence) null);
            if (textView != null) {
                textView.setText(community.name);
                ViewUtils.setMontserratExtraBoldTypeface(textView);
                textView.setVisibility(0);
            }
        }
        Fragment fragmentM0 = getSupportFragmentManager().m0(Page.HOME);
        HomeFragment homeFragment = new HomeFragment();
        FragmentTransaction fragmentTransactionQ = getSupportFragmentManager().q();
        if (fragmentM0 != null) {
            fragmentTransactionQ.t(fragmentM0);
        }
        fragmentTransactionQ.c(com.narvii.amino.master.R.id.content, homeFragment, Page.HOME);
        fragmentTransactionQ.k();
    }

    public void restoreHomeTab() {
        ((HomeFragment) getSupportFragmentManager().m0(Page.HOME)).restoreHomeTab();
    }

    @Override // com.narvii.app.NVActivity
    public void smoothScrollToTop() {
        Fragment fragmentM0 = getSupportFragmentManager().m0(Page.HOME);
        if (fragmentM0 instanceof NVFragment) {
            ((NVFragment) fragmentM0).smoothScrollToTop();
        }
    }

    public void updateOverlayListPlaceholder(OverlayListPlaceholder overlayListPlaceholder) {
        overlayListPlaceholder.adjustHeight(super.getStatusBarOverlaySize(), super.getActionBarOverlaySize());
    }
}
