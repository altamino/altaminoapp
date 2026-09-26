package com.narvii.amino;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.os.Bundle;
import android.os.SystemClock;
import com.narvii.account.AccountService;
import com.narvii.achievements.ReputationGainedHelper;
import com.narvii.app.DrawerActivity;
import com.narvii.app.NVContext;
import com.narvii.app.NVFragment;
import com.narvii.community.CommunityService;
import com.narvii.config.ConfigService;
import com.narvii.master.search.SearchPrefsHelper;
import com.narvii.model.User;
import com.narvii.modulization.CommunityConfigHelper;
import com.narvii.prompt.AccountNoticePromptHelper;
import com.narvii.prompt.AnnouncementPromptHelper;
import com.narvii.prompt.BottomDrawerPromptHelper;
import com.narvii.prompt.GlobalNoticePromptHelper;
import com.narvii.prompt.OnBoardingPromptHelper;
import com.narvii.prompt.OptinAdsPromptHelper;
import com.narvii.prompt.ProbationPromptHelper;
import com.narvii.prompt.RatePromptHelper;
import com.narvii.prompt.ReputationPromptHelper;
import com.narvii.prompt.UpgradePromptHelper;
import com.narvii.util.Utils;
import com.narvii.util.googleplay.GooglePlayService;
import com.narvii.wallet.optinads.OptinAds;
import java.util.HashSet;

/* JADX INFO: loaded from: classes6.dex */
public class MainDialogFragment extends NVFragment {
    public static final int ANNOUNCEMENT = 4096;
    public static final int COMMUNITY_PROBATION = 4;
    public static final int COMMUNITY_TAG_PROMPT = 64;
    public static final int GLOBAL_NOTICE = 1024;
    public static final int IMPORTANT_NOTICE = 2;
    public static final long LOOP_EXPIRE_INTERVAL = 300000;
    public static final int MEMBERSHIP_FREE_TRIAL = 2048;
    public static final int OPTIN_ADS = 16384;
    public static final int RATE = 512;
    public static final int RECOMMEND = 8;
    public static final int RECOMMEND_KEYWORD = 128;
    public static final int REPUTATION_GAINED = 16;
    public static final int SUGGESTED_COMMUNITY = 256;
    public static final int UPGRADE = 1;
    public static final int WELCOME_MESSAGE = 32;
    private AccountNoticePromptHelper accountNoticePromptHelper;
    private AnnouncementPromptHelper announcementPromptHelper;
    boolean blocking;
    private BottomDrawerPromptHelper bottomDrawerPromptHelper;
    public CommunityConfigHelper communityConfigHelper;
    private CommunityService communityService;
    private ConfigService configService;
    boolean disabled;
    public GlobalNoticePromptHelper globalNoticePromptHelper;
    private boolean isResumed;
    long lastLoopFinishTime;
    private boolean loopFinished;
    boolean onBoardingCheckDone;
    OnBoardingDoneListener onBoardingDoneListener;
    public OnBoardingPromptHelper onBoardingPromptHelper;
    public OptinAdsPromptHelper optinAdsPromptHelper;
    public ProbationPromptHelper probationPromptHelper;
    public RatePromptHelper ratePromptHelper;
    ReputationGainedHelper reputationGainedHelper;
    public ReputationPromptHelper reputationPromptHelper;
    public UpgradePromptHelper upgradePromptHelper;
    HashSet<Integer> shownPrompts = new HashSet<>();
    private final BroadcastReceiver receiver = new BroadcastReceiver() { // from class: com.narvii.amino.MainDialogFragment.1
        @Override // android.content.BroadcastReceiver
        public void onReceive(Context context, Intent intent) {
            if (MainDialogFragment.this.isResumed) {
                Utils.postDelayed(MainDialogFragment.this.checkpoint, 100L);
            }
        }
    };
    private PromptShowListener promptShowListener = new DefaultPromptShowListener();
    private PromptShowListener onBoardingPromptShowListener = new DefaultPromptShowListener() { // from class: com.narvii.amino.MainDialogFragment.2
        @Override // com.narvii.amino.MainDialogFragment.DefaultPromptShowListener, com.narvii.amino.PromptShowListener
        public void whenNotBlocking() {
            super.whenNotBlocking();
            MainDialogFragment mainDialogFragment = MainDialogFragment.this;
            mainDialogFragment.onBoardingCheckDone = true;
            OnBoardingDoneListener onBoardingDoneListener = mainDialogFragment.onBoardingDoneListener;
            if (onBoardingDoneListener != null) {
                onBoardingDoneListener.onBoardingDone();
            }
        }
    };
    private final Runnable checkpoint = new Runnable() { // from class: com.narvii.amino.MainDialogFragment.3
        @Override // java.lang.Runnable
        public void run() {
            MainDialogFragment mainDialogFragment = MainDialogFragment.this;
            if (mainDialogFragment.disabled || mainDialogFragment.isDestoryed() || MainDialogFragment.this.loopFinished) {
                return;
            }
            MainDialogFragment mainDialogFragment2 = MainDialogFragment.this;
            if (!mainDialogFragment2.blocking && mainDialogFragment2.isResumed) {
                int intParam = MainDialogFragment.this.getIntParam("flag");
                AccountService accountService = (AccountService) MainDialogFragment.this.getService("account");
                User userProfile = accountService == null ? null : accountService.getUserProfile();
                if ((intParam & 1) != 0) {
                    MainDialogFragment mainDialogFragment3 = MainDialogFragment.this;
                    if (mainDialogFragment3.upgradePromptHelper == null) {
                        mainDialogFragment3.upgradePromptHelper = new UpgradePromptHelper((NVContext) mainDialogFragment3.getActivity(), MainDialogFragment.this.promptShowListener);
                        MainDialogFragment.this.upgradePromptHelper.tryShow();
                        return;
                    }
                }
                if ((intParam & 1024) != 0) {
                    MainDialogFragment mainDialogFragment4 = MainDialogFragment.this;
                    if (mainDialogFragment4.globalNoticePromptHelper == null) {
                        mainDialogFragment4.globalNoticePromptHelper = new GlobalNoticePromptHelper((NVContext) mainDialogFragment4.getActivity(), MainDialogFragment.this.promptShowListener);
                        MainDialogFragment.this.globalNoticePromptHelper.tryShow();
                        return;
                    }
                }
                if ((intParam & 8) != 0 && (intParam & 32) != 0) {
                    MainDialogFragment mainDialogFragment5 = MainDialogFragment.this;
                    if (mainDialogFragment5.onBoardingPromptHelper == null) {
                        mainDialogFragment5.onBoardingPromptHelper = new OnBoardingPromptHelper((NVContext) mainDialogFragment5.getActivity(), MainDialogFragment.this.onBoardingPromptShowListener);
                        MainDialogFragment.this.onBoardingPromptHelper.tryShow();
                        return;
                    }
                }
                if (userProfile != null && (MainDialogFragment.this.getActivity() instanceof MainActivity) && MainDialogFragment.this.accountNoticePromptHelper == null) {
                    MainDialogFragment mainDialogFragment6 = MainDialogFragment.this;
                    mainDialogFragment6.accountNoticePromptHelper = new AccountNoticePromptHelper((NVContext) mainDialogFragment6.getActivity(), MainDialogFragment.this.promptShowListener);
                    MainDialogFragment.this.accountNoticePromptHelper.tryShow();
                    return;
                }
                if (MainDialogFragment.this.announcementPromptHelper == null) {
                    MainDialogFragment mainDialogFragment7 = MainDialogFragment.this;
                    mainDialogFragment7.announcementPromptHelper = new AnnouncementPromptHelper((NVContext) mainDialogFragment7.getActivity(), MainDialogFragment.this.promptShowListener);
                    MainDialogFragment.this.announcementPromptHelper.tryShow();
                    return;
                }
                if ((intParam & 256) != 0 && MainDialogFragment.this.bottomDrawerPromptHelper == null) {
                    MainDialogFragment mainDialogFragment8 = MainDialogFragment.this;
                    mainDialogFragment8.bottomDrawerPromptHelper = new BottomDrawerPromptHelper((NVContext) mainDialogFragment8.getActivity(), MainDialogFragment.this.promptShowListener);
                    MainDialogFragment.this.bottomDrawerPromptHelper.tryShow();
                    return;
                }
                if ((intParam & 4) != 0) {
                    MainDialogFragment mainDialogFragment9 = MainDialogFragment.this;
                    if (mainDialogFragment9.probationPromptHelper == null) {
                        mainDialogFragment9.probationPromptHelper = new ProbationPromptHelper((NVContext) mainDialogFragment9.getActivity(), MainDialogFragment.this.promptShowListener);
                        MainDialogFragment.this.probationPromptHelper.tryShow();
                        return;
                    }
                }
                if ((intParam & 512) != 0) {
                    MainDialogFragment mainDialogFragment10 = MainDialogFragment.this;
                    if (mainDialogFragment10.ratePromptHelper == null) {
                        mainDialogFragment10.ratePromptHelper = new RatePromptHelper((NVContext) mainDialogFragment10.getActivity(), MainDialogFragment.this.promptShowListener);
                        MainDialogFragment.this.ratePromptHelper.tryShow();
                        return;
                    }
                }
                if ((intParam & 16) != 0) {
                    MainDialogFragment mainDialogFragment11 = MainDialogFragment.this;
                    if (mainDialogFragment11.reputationPromptHelper == null) {
                        mainDialogFragment11.reputationPromptHelper = new ReputationPromptHelper((NVContext) mainDialogFragment11.getActivity(), MainDialogFragment.this.promptShowListener);
                        MainDialogFragment.this.reputationPromptHelper.tryShow();
                        return;
                    }
                }
                if ((intParam & 16384) == 0 || MainDialogFragment.this.optinAdsPromptHelper != null || OptinAds.forceAds()) {
                    MainDialogFragment.this.loopFinished = true;
                    MainDialogFragment.this.lastLoopFinishTime = SystemClock.elapsedRealtime();
                } else {
                    MainDialogFragment mainDialogFragment12 = MainDialogFragment.this;
                    mainDialogFragment12.optinAdsPromptHelper = new OptinAdsPromptHelper((NVContext) mainDialogFragment12.getActivity(), MainDialogFragment.this.promptShowListener);
                    MainDialogFragment.this.optinAdsPromptHelper.tryShow();
                }
            }
        }
    };

    private class DefaultPromptShowListener implements PromptShowListener {
        private DefaultPromptShowListener() {
        }

        @Override // com.narvii.amino.PromptShowListener
        public boolean anyPromptShown() {
            return !MainDialogFragment.this.shownPrompts.isEmpty();
        }

        @Override // com.narvii.amino.PromptShowListener
        public boolean isActive() {
            return MainDialogFragment.this.isResumed;
        }

        @Override // com.narvii.amino.PromptShowListener
        public boolean isDestroyed() {
            return MainDialogFragment.this.isDestoryed();
        }

        @Override // com.narvii.amino.PromptShowListener
        public boolean isPromptShown(int i10) {
            return MainDialogFragment.this.shownPrompts.contains(Integer.valueOf(i10));
        }

        @Override // com.narvii.amino.PromptShowListener
        public void setPromptShown(int i10) {
            MainDialogFragment.this.shownPrompts.add(Integer.valueOf(i10));
        }

        @Override // com.narvii.amino.PromptShowListener
        public void whenBlocking() {
            MainDialogFragment.this.blocking = true;
        }

        @Override // com.narvii.amino.PromptShowListener
        public void whenNotBlocking() {
            MainDialogFragment mainDialogFragment = MainDialogFragment.this;
            mainDialogFragment.blocking = false;
            if (mainDialogFragment.isDestoryed() || !MainDialogFragment.this.isResumed || MainDialogFragment.this.loopFinished) {
                return;
            }
            Utils.postDelayed(MainDialogFragment.this.checkpoint, 100L);
        }
    }

    interface OnBoardingDoneListener {
        void onBoardingDone();
    }

    public boolean isOnBoardingCheckDone() {
        return this.onBoardingCheckDone;
    }

    public void setOnBoardingDoneListener(OnBoardingDoneListener onBoardingDoneListener) {
        this.onBoardingDoneListener = onBoardingDoneListener;
    }

    @Override // com.narvii.app.NVFragment, androidx.fragment.app.Fragment
    public void onDestroy() {
        unregisterLocalReceiver(this.receiver);
        super.onDestroy();
    }

    public void setDisabled(boolean z6) {
        this.disabled = z6;
        if (z6 || !this.isResumed) {
            return;
        }
        Utils.postDelayed(this.checkpoint, 1000L);
    }

    private boolean isDrawerOpen() {
        if ((getActivity() instanceof DrawerActivity) && ((DrawerActivity) getActivity()).isDrawerOpen()) {
            return true;
        }
        return false;
    }

    @Override // com.narvii.app.NVFragment, androidx.fragment.app.Fragment
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        this.reputationGainedHelper = new ReputationGainedHelper(this);
        this.communityConfigHelper = new CommunityConfigHelper(this);
        registerLocalReceiver(this.receiver, new IntentFilter(GooglePlayService.PUBLISH_CHANGED));
        this.communityService = (CommunityService) getService(SearchPrefsHelper.PREFS_KEY_COMMUNITY);
        this.configService = (ConfigService) getService("config");
    }

    @Override // com.narvii.app.NVFragment, androidx.fragment.app.Fragment
    public void onPause() {
        super.onPause();
        BottomDrawerPromptHelper bottomDrawerPromptHelper = this.bottomDrawerPromptHelper;
        if (bottomDrawerPromptHelper != null) {
            bottomDrawerPromptHelper.onActiveChanged(false);
        }
        this.isResumed = false;
        Utils.handler.removeCallbacks(this.checkpoint);
    }

    @Override // com.narvii.app.NVFragment, androidx.fragment.app.Fragment
    public void onResume() {
        super.onResume();
        this.isResumed = true;
        if (this.loopFinished && !this.blocking && SystemClock.elapsedRealtime() - this.lastLoopFinishTime > 300000) {
            this.loopFinished = false;
            this.shownPrompts.clear();
            this.announcementPromptHelper = null;
        }
        this.communityService.getCommunity(this.configService.getCommunityId());
        BottomDrawerPromptHelper bottomDrawerPromptHelper = this.bottomDrawerPromptHelper;
        if (bottomDrawerPromptHelper != null) {
            bottomDrawerPromptHelper.onActiveChanged(true);
        }
        Utils.postDelayed(this.checkpoint, 2000L);
    }
}
