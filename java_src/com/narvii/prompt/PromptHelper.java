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
import com.narvii.model.Community;
import com.narvii.model.User;
import com.narvii.util.Log;
import com.narvii.util.Utils;

/* loaded from: classes3.dex */
public abstract class PromptHelper {
    protected AccountService account;
    protected int communityId;
    protected NVContext nvContext;
    protected SharedPreferences prefs;
    protected PromptShowListener promptShowListener;
    protected boolean removeWhenLogout;

    protected abstract void doTryShow();

    public void onPostShow() {
    }

    public PromptHelper(NVContext nVContext, PromptShowListener promptShowListener) {
        this(nVContext, promptShowListener, true);
    }

    public PromptHelper(NVContext nVContext, PromptShowListener promptShowListener, boolean z) {
        this.nvContext = nVContext;
        this.account = (AccountService) nVContext.getService("account");
        this.communityId = ((ConfigService) nVContext.getService("config")).getCommunityId();
        this.removeWhenLogout = z;
        if (z) {
            this.prefs = this.account.getPrefs();
        } else {
            this.prefs = nVContext.getContext().getSharedPreferences("prompt", 0);
        }
        this.promptShowListener = promptShowListener;
    }

    protected Community getCommunity() {
        return ((CommunityService) this.nvContext.getService("community")).getCommunity(this.communityId);
    }

    protected User getUser() {
        AccountService accountService = this.account;
        if (accountService == null) {
            return null;
        }
        return accountService.getUserProfile();
    }

    protected void whenNotBlocking() {
        Log.v("prompt not blocking " + getClass().getSimpleName().replace("PromptHelper", ""));
        PromptShowListener promptShowListener = this.promptShowListener;
        if (promptShowListener != null) {
            promptShowListener.whenNotBlocking();
        }
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

    public void tryShow() {
        Log.v("prompt blocking " + getClass().getSimpleName().replace("PromptHelper", ""));
        PromptShowListener promptShowListener = this.promptShowListener;
        if (promptShowListener != null) {
            promptShowListener.whenBlocking();
        }
        doTryShow();
    }

    protected boolean isShowContextOk() {
        return (!isActive() || !isDrawerClosed() || isComposeMenuOpen() || isLotteryDialogShowing() || isStreakRepairDialogShowing() || NVActivity.userTouching) ? false : true;
    }

    private boolean isActive() {
        PromptShowListener promptShowListener = this.promptShowListener;
        if (promptShowListener != null) {
            return promptShowListener.isActive();
        }
        return true;
    }

    private boolean isStreakRepairDialogShowing() {
        DrawerHost drawerHost = (DrawerHost) this.nvContext.getService("drawerHost");
        return drawerHost != null && drawerHost.streakRepairDialogShowing;
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

    private boolean isDrawerClosed() {
        Context context = this.nvContext.getContext();
        if (!(context instanceof DrawerActivity)) {
            return true;
        }
        DrawerActivity drawerActivity = (DrawerActivity) context;
        return !drawerActivity.isDrawerOpen() && drawerActivity.isDrawerIdle();
    }

    private boolean isComposeMenuOpen() {
        Dialog dialog = (Dialog) this.nvContext.getService("postEntry");
        if (dialog != null) {
            return dialog.isShowing();
        }
        return false;
    }

    protected void dispatchShowPromptRunnable(final Runnable runnable, long j) {
        if (runnable == null) {
            return;
        }
        Utils.postDelayed(new Runnable() { // from class: com.narvii.prompt.PromptHelper.1
            @Override // java.lang.Runnable
            public void run() {
                PromptShowListener promptShowListener = PromptHelper.this.promptShowListener;
                if (promptShowListener == null || !promptShowListener.isDestroyed()) {
                    if (PromptHelper.this.isShowContextOk()) {
                        try {
                            if (runnable != null) {
                                runnable.run();
                                return;
                            }
                            return;
                        } catch (Exception e) {
                            Log.e("prompt exception", e);
                            return;
                        }
                    }
                    Utils.postDelayed(this, 2000L);
                }
            }
        }, j);
    }

    protected void dispatchShowPromptRunnable(Runnable runnable) {
        dispatchShowPromptRunnable(runnable, 0L);
    }
}
