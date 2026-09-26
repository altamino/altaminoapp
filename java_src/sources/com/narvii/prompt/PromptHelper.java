package com.narvii.prompt;

import android.app.Dialog;
import android.content.Context;
import android.content.SharedPreferences;
import com.narvii.account.AccountService;
import com.narvii.amino.PromptShowListener;
import com.narvii.app.DrawerActivity;
import com.narvii.app.NVActivity;
import com.narvii.app.NVContext;
import com.narvii.checkin.lottery.LotteryDialog;
import com.narvii.community.CommunityService;
import com.narvii.config.ConfigService;
import com.narvii.drawer.DrawerHost;
import com.narvii.master.search.SearchPrefsHelper;
import com.narvii.model.Community;
import com.narvii.model.User;
import com.narvii.util.Log;
import com.narvii.util.Utils;

/* JADX INFO: loaded from: classes8.dex */
public abstract class PromptHelper {
    protected AccountService account;
    protected int communityId;
    protected NVContext nvContext;
    protected SharedPreferences prefs;
    protected PromptShowListener promptShowListener;
    protected boolean removeWhenLogout;

    public PromptHelper(NVContext nVContext, PromptShowListener promptShowListener) {
        this(nVContext, promptShowListener, true);
    }

    protected void dispatchShowPromptRunnable(final Runnable runnable, long j6) {
        if (runnable == null) {
            return;
        }
        Utils.postDelayed(new Runnable() { // from class: com.narvii.prompt.PromptHelper.1
            @Override // java.lang.Runnable
            public void run() {
                PromptShowListener promptShowListener = PromptHelper.this.promptShowListener;
                if (promptShowListener == null || !promptShowListener.isDestroyed()) {
                    if (!PromptHelper.this.isShowContextOk()) {
                        Utils.postDelayed(this, 2000L);
                        return;
                    }
                    try {
                        Runnable runnable2 = runnable;
                        if (runnable2 != null) {
                            runnable2.run();
                        }
                    } catch (Exception e) {
                        Log.e("prompt exception", e);
                    }
                }
            }
        }, j6);
    }

    protected abstract void doTryShow();

    public void onPostShow() {
    }

    public PromptHelper(NVContext nVContext, PromptShowListener promptShowListener, boolean z6) {
        this.nvContext = nVContext;
        this.account = (AccountService) nVContext.getService("account");
        this.communityId = ((ConfigService) nVContext.getService("config")).getCommunityId();
        this.removeWhenLogout = z6;
        if (z6) {
            this.prefs = this.account.getPrefs();
        } else {
            this.prefs = nVContext.getContext().getSharedPreferences("prompt", 0);
        }
        this.promptShowListener = promptShowListener;
    }

    private boolean isActive() {
        PromptShowListener promptShowListener = this.promptShowListener;
        if (promptShowListener != null) {
            return promptShowListener.isActive();
        }
        return true;
    }

    private boolean isComposeMenuOpen() {
        Dialog dialog = (Dialog) this.nvContext.getService("postEntry");
        if (dialog != null) {
            return dialog.isShowing();
        }
        return false;
    }

    private boolean isDrawerClosed() {
        Context context = this.nvContext.getContext();
        if (!(context instanceof DrawerActivity)) {
            return true;
        }
        DrawerActivity drawerActivity = (DrawerActivity) context;
        return !drawerActivity.isDrawerOpen() && drawerActivity.isDrawerIdle();
    }

    private boolean isLotteryDialogShowing() {
        DrawerHost drawerHost = (DrawerHost) this.nvContext.getService("drawerHost");
        if (drawerHost == null) {
            return false;
        }
        if (drawerHost.willPlayLottery) {
            return true;
        }
        LotteryDialog lotteryDialog = drawerHost.lotteryDialog;
        return lotteryDialog != null && lotteryDialog.isShowing();
    }

    private boolean isStreakRepairDialogShowing() {
        DrawerHost drawerHost = (DrawerHost) this.nvContext.getService("drawerHost");
        return drawerHost != null && drawerHost.streakRepairDialogShowing;
    }

    protected void dispatchShowPromptRunnable(Runnable runnable) {
        dispatchShowPromptRunnable(runnable, 0L);
    }

    protected Community getCommunity() {
        return ((CommunityService) this.nvContext.getService(SearchPrefsHelper.PREFS_KEY_COMMUNITY)).getCommunity(this.communityId);
    }

    protected String getPromptKeySuffix() {
        String str;
        StringBuilder sb = new StringBuilder();
        sb.append("_");
        sb.append(this.communityId);
        if (this.removeWhenLogout) {
            str = "";
        } else {
            str = "_" + this.account.getUserId();
        }
        sb.append(str);
        return sb.toString();
    }

    protected User getUser() {
        AccountService accountService = this.account;
        if (accountService == null) {
            return null;
        }
        return accountService.getUserProfile();
    }

    public void tryShow() {
        Log.v("prompt blocking " + getClass().getSimpleName().replace("PromptHelper", ""));
        PromptShowListener promptShowListener = this.promptShowListener;
        if (promptShowListener != null) {
            promptShowListener.whenBlocking();
        }
        doTryShow();
    }

    protected void whenNotBlocking() {
        Log.v("prompt not blocking " + getClass().getSimpleName().replace("PromptHelper", ""));
        PromptShowListener promptShowListener = this.promptShowListener;
        if (promptShowListener != null) {
            promptShowListener.whenNotBlocking();
        }
    }

    protected boolean isShowContextOk() {
        if (isActive() && isDrawerClosed() && !isComposeMenuOpen() && !isLotteryDialogShowing() && !isStreakRepairDialogShowing() && !NVActivity.userTouching) {
            return true;
        }
        return false;
    }
}
