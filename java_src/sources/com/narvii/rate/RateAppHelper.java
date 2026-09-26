package com.narvii.rate;

import android.app.Dialog;
import android.content.Intent;
import android.content.SharedPreferences;
import android.view.View;
import com.narvii.account.AccountService;
import com.narvii.app.NVApplication;
import com.narvii.app.NVContext;
import com.narvii.app.incubator.IncubatorApplication;
import com.narvii.master.CommunityHelper;
import com.narvii.services.VersionPrefsServiceProvider;
import com.narvii.util.PackageUtils;
import com.safedk.android.utils.Logger;

/* JADX INFO: loaded from: classes6.dex */
public class RateAppHelper {
    NVContext context;
    OnRateOrFeedbackListener onRateOrFeedbackListener;
    PackageUtils packageUtils;
    SharedPreferences prefs;
    private RateDialog rateDialog;
    SharedPreferences versionPrefs;
    private View.OnClickListener rateListener = new View.OnClickListener() { // from class: com.narvii.rate.RateAppHelper.1
        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            OnRateOrFeedbackListener onRateOrFeedbackListener = RateAppHelper.this.onRateOrFeedbackListener;
            if (onRateOrFeedbackListener != null) {
                onRateOrFeedbackListener.onCall();
            }
            if (RateAppHelper.this.rateDialog.isShowing()) {
                RateAppHelper.this.rateDialog.dismiss();
            }
            RateAppHelper rateAppHelper = RateAppHelper.this;
            rateAppHelper.packageUtils.openGooglePlay(rateAppHelper.context.getContext().getPackageName());
            RateAppHelper.this.prefs.edit().putBoolean("rateAppRated", true).apply();
        }
    };
    private View.OnClickListener neverReminderListener = new View.OnClickListener() { // from class: com.narvii.rate.RateAppHelper.2
        public static void safedk_NVContext_startActivity_4951a27f86e40bc7fa77f5e79e77f8b2(NVContext p0, Intent p1) {
            Logger.d("SafeDK-Special|SafeDK: Call> Lcom/narvii/app/NVContext;->startActivity(Landroid/content/Intent;)V");
            if (p1 == null) {
                return;
            }
            p0.startActivity(p1);
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            OnRateOrFeedbackListener onRateOrFeedbackListener = RateAppHelper.this.onRateOrFeedbackListener;
            if (onRateOrFeedbackListener != null) {
                onRateOrFeedbackListener.onCall();
            }
            if (RateAppHelper.this.rateDialog.isShowing()) {
                RateAppHelper.this.rateDialog.dismiss();
            }
            safedk_NVContext_startActivity_4951a27f86e40bc7fa77f5e79e77f8b2(RateAppHelper.this.context, new CommunityHelper(RateAppHelper.this.context).getFeedBackIntent());
        }
    };

    public interface OnRateOrFeedbackListener {
        void onCall();
    }

    public void setOnRateOrFeedbackListener(OnRateOrFeedbackListener onRateOrFeedbackListener) {
        this.onRateOrFeedbackListener = onRateOrFeedbackListener;
    }

    public boolean canShow() {
        AccountService accountService = (AccountService) this.context.getService("account");
        if (accountService == null || !accountService.hasAccount() || !this.packageUtils.isGooglePlayInstalled()) {
            return false;
        }
        if ((NVApplication.DEBUG || this.packageUtils.isInstalledFromGooglePlay()) && !hasRated()) {
            return System.currentTimeMillis() >= this.versionPrefs.getLong(VersionPrefsServiceProvider.KEY_FIRST_LAUNCH_TIME, 0L) + (NVApplication.DEBUG ? 60000L : 3600000L) && this.versionPrefs.getInt(VersionPrefsServiceProvider.KEY_LAUNCH_COUNT, 0) > 3 && this.versionPrefs.getInt("rateAppShowCount", 0) <= 0;
        }
        return false;
    }

    public boolean hasRated() {
        return this.prefs.getBoolean("rateAppRated", false);
    }

    public Dialog showRateDialog() {
        this.rateDialog.show();
        this.versionPrefs.edit().putInt("rateAppShowCount", this.versionPrefs.getInt("rateAppShowCount", 0) + 1).apply();
        return this.rateDialog;
    }

    public RateAppHelper(NVContext nVContext) {
        this.context = nVContext;
        this.prefs = (SharedPreferences) nVContext.getService(IncubatorApplication.PREFS_SERVICE_KEY);
        this.versionPrefs = (SharedPreferences) nVContext.getService("versionPrefs");
        RateDialog rateDialog = new RateDialog(nVContext);
        this.rateDialog = rateDialog;
        rateDialog.setRateNowListener(this.rateListener);
        this.rateDialog.setNeverReminderListener(this.neverReminderListener);
        this.packageUtils = new PackageUtils(nVContext.getContext());
    }
}
