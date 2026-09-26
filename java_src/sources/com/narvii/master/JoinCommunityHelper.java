package com.narvii.master;

import android.content.Context;
import android.content.Intent;
import android.net.Uri;
import com.narvii.app.ForwardActivity;
import com.narvii.app.NVContext;
import com.narvii.util.PackageUtils;
import com.safedk.android.utils.Logger;

/* JADX INFO: loaded from: classes10.dex */
public class JoinCommunityHelper {
    NVContext context;
    MasterHelper masterHelper;
    PackageUtils packageUtils;

    public static void safedk_Context_startActivity_97cb3195734cf5c9cc3418feeafa6dd6(Context p0, Intent p1) {
        Logger.d("SafeDK-Special|SafeDK: Call> Landroid/content/Context;->startActivity(Landroid/content/Intent;)V");
        if (p1 == null) {
            return;
        }
        p0.startActivity(p1);
    }

    public void joinAnotherCommunityInStandalone(int i10) {
        PackageUtils packageUtils = this.packageUtils;
        if (!packageUtils.isPackageInstalled(packageUtils.getMasterPackageName())) {
            this.masterHelper.showDownloadMaterDialog("ndc://x" + i10 + "/description");
            return;
        }
        try {
            Intent intent = new Intent("android.intent.action.VIEW", Uri.parse(this.packageUtils.getMasterScheme() + "://x" + i10 + "/description"));
            intent.putExtra(ForwardActivity.CLEAR_TASK, true);
            safedk_Context_startActivity_97cb3195734cf5c9cc3418feeafa6dd6(this.context.getContext(), intent);
        } catch (Exception unused) {
        }
    }

    public JoinCommunityHelper(NVContext nVContext) {
        this.context = nVContext;
        this.packageUtils = new PackageUtils(nVContext.getContext());
        this.masterHelper = new MasterHelper(nVContext);
    }
}
