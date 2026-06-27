package com.narvii.master;

import android.content.Intent;
import android.net.Uri;
import com.narvii.app.ForwardActivity;
import com.narvii.app.NVContext;
import com.narvii.util.PackageUtils;

/* loaded from: classes3.dex */
public class JoinCommunityHelper {
    NVContext context;
    MasterHelper masterHelper;
    PackageUtils packageUtils;

    public JoinCommunityHelper(NVContext nVContext) {
        this.context = nVContext;
        this.packageUtils = new PackageUtils(nVContext.getContext());
        this.masterHelper = new MasterHelper(nVContext);
    }

    public void joinAnotherCommunityInStandalone(int i) {
        PackageUtils packageUtils = this.packageUtils;
        if (packageUtils.isPackageInstalled(packageUtils.getMasterPackageName())) {
            try {
                Intent intent = new Intent("android.intent.action.VIEW", Uri.parse(this.packageUtils.getMasterScheme() + "://x" + i + "/description"));
                intent.putExtra(ForwardActivity.CLEAR_TASK, true);
                this.context.getContext().startActivity(intent);
                return;
            } catch (Exception unused) {
                return;
            }
        }
        this.masterHelper.showDownloadMaterDialog("ndc://x" + i + "/description");
    }
}
