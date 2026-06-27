package com.narvii.amino;

import android.app.AlertDialog;
import android.app.Dialog;
import android.content.Context;
import android.content.DialogInterface;
import android.text.TextUtils;
import android.widget.TextView;
import com.narvii.app.NVContext;
import com.narvii.config.ConfigService;
import com.narvii.util.PackageUtils;
import com.narvii.util.Utils;
import com.narvii.util.googleplay.GooglePlayService;

/* loaded from: classes2.dex */
public class MainDialogHelper {
    private ConfigService config;
    private NVContext context;
    private GooglePlayService googlePlay;

    public MainDialogHelper(NVContext nVContext) {
        this.context = nVContext;
        this.config = (ConfigService) nVContext.getService("config");
        this.googlePlay = (GooglePlayService) nVContext.getService("googlePlay");
    }

    public boolean hasNewVersion() {
        String strLatestVersion = latestVersion(true);
        return !TextUtils.isEmpty(strLatestVersion) && PackageUtils.compareVersionName(strLatestVersion, new PackageUtils(this.context.getContext()).getVersionName()) > 0;
    }

    private String latestVersion(boolean z) {
        GooglePlayService googlePlayService;
        String string = this.config.getString("latestVersion");
        String latestVersion = (!z || (googlePlayService = this.googlePlay) == null) ? null : googlePlayService.getLatestVersion();
        return (string != null && (latestVersion == null || PackageUtils.compareVersionName(string, latestVersion) > 0)) ? string : latestVersion;
    }

    public boolean forceUpgrade() {
        return this.config.getBoolean("forceUpgrade") && PackageUtils.compareVersionName(latestVersion(false), new PackageUtils(this.context.getContext()).getVersionName()) > 0;
    }

    public Dialog showUpgradeDialog(boolean z) {
        final Context context = this.context.getContext();
        String strLatestVersion = latestVersion(true);
        AlertDialog.Builder builder = new AlertDialog.Builder(context);
        builder.setTitle(com.narvii.amino.mastes.R.string.upgrade_title);
        builder.setMessage(context.getString(com.narvii.amino.mastes.R.string.upgrade_msg, strLatestVersion));
        builder.setPositiveButton(com.narvii.amino.mastes.R.string.upgrade, new DialogInterface.OnClickListener() { // from class: com.narvii.amino.MainDialogHelper.1
            @Override // android.content.DialogInterface.OnClickListener
            public void onClick(DialogInterface dialogInterface, int i) {
                new PackageUtils(context).openGooglePlay(context.getPackageName());
            }
        });
        if (z) {
            builder.setCancelable(false);
        } else {
            builder.setNegativeButton(android.R.string.cancel, Utils.DIALOG_BUTTON_EMPTY_LISTENER);
        }
        return builder.show();
    }

    public Dialog showAboutDialog() {
        Context context = this.context.getContext();
        AlertDialog.Builder builder = new AlertDialog.Builder(context);
        builder.setTitle(com.narvii.amino.mastes.R.string.app_name);
        builder.setMessage(context.getString(com.narvii.amino.mastes.R.string.version_fmt, new PackageUtils(context).getVersionName()) + "\n" + context.getString(com.narvii.amino.mastes.R.string.copyright_narvii_inc) + "\n" + context.getString(com.narvii.amino.mastes.R.string.copyright_all_rights_reserved));
        builder.setNegativeButton(android.R.string.ok, Utils.DIALOG_BUTTON_EMPTY_LISTENER);
        AlertDialog alertDialogShow = builder.show();
        try {
            ((TextView) alertDialogShow.findViewById(android.R.id.message)).setGravity(17);
        } catch (Exception unused) {
        }
        return alertDialogShow;
    }
}
