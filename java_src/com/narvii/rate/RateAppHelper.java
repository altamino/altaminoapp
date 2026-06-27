package com.narvii.rate;

import android.app.Dialog;
import android.content.SharedPreferences;
import android.view.View;
import com.google.android.exoplayer2.upstream.DefaultLoadErrorHandlingPolicy;
import com.narvii.account.AccountService;
import com.narvii.app.NVApplication;
import com.narvii.app.NVContext;
import com.narvii.master.CommunityHelper;
import com.narvii.services.VersionPrefsServiceProvider;
import com.narvii.util.PackageUtils;

/* loaded from: classes3.dex */
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
        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            OnRateOrFeedbackListener onRateOrFeedbackListener = RateAppHelper.this.onRateOrFeedbackListener;
            if (onRateOrFeedbackListener != null) {
                onRateOrFeedbackListener.onCall();
            }
            if (RateAppHelper.this.rateDialog.isShowing()) {
                RateAppHelper.this.rateDialog.dismiss();
            }
            RateAppHelper.this.context.startActivity(new CommunityHelper(RateAppHelper.this.context).getFeedBackIntent());
        }
    };

    public interface OnRateOrFeedbackListener {
        void onCall();
    }

    public RateAppHelper(NVContext nVContext) {
        this.context = nVContext;
        this.prefs = (SharedPreferences) nVContext.getService("prefs");
        this.versionPrefs = (SharedPreferences) nVContext.getService("versionPrefs");
        this.rateDialog = new RateDialog(nVContext);
        this.rateDialog.setRateNowListener(this.rateListener);
        this.rateDialog.setNeverReminderListener(this.neverReminderListener);
        this.packageUtils = new PackageUtils(nVContext.getContext());
    }

    public void setOnRateOrFeedbackListener(OnRateOrFeedbackListener onRateOrFeedbackListener) {
        this.onRateOrFeedbackListener = onRateOrFeedbackListener;
    }

    public boolean hasRated() {
        return this.prefs.getBoolean("rateAppRated", false);
    }

    public boolean canShow() {
        AccountService accountService = (AccountService) this.context.getService("account");
        if (accountService == null || !accountService.hasAccount() || !this.packageUtils.isGooglePlayInstalled()) {
            return false;
        }
        if ((NVApplication.DEBUG || this.packageUtils.isInstalledFromGooglePlay()) && !hasRated()) {
            return System.currentTimeMillis() >= this.versionPrefs.getLong(VersionPrefsServiceProvider.KEY_FIRST_LAUNCH_TIME, 0L) + (NVApplication.DEBUG ? DefaultLoadErrorHandlingPolicy.DEFAULT_TRACK_BLACKLIST_MS : 3600000L) && this.versionPrefs.getInt(VersionPrefsServiceProvider.KEY_LAUNCH_COUNT, 0) > 3 && this.versionPrefs.getInt("rateAppShowCount", 0) <= 0;
        }
        return false;
    }

    public Dialog showRateDialog() {
        this.rateDialog.show();
        this.versionPrefs.edit().putInt("rateAppShowCount", this.versionPrefs.getInt("rateAppShowCount", 0) + 1).apply();
        return this.rateDialog;
    }
}
