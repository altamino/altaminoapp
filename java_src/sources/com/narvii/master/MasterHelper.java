package com.narvii.master;

import android.content.Context;
import android.content.Intent;
import android.view.View;
import android.widget.Button;
import androidx.core.content.ContextCompat;
import com.narvii.amino.master.R;
import com.narvii.app.FragmentWrapperActivity;
import com.narvii.app.NVContext;
import com.narvii.logging.LogEvent;
import com.narvii.master.home.MyAminosFragment;
import com.narvii.master.home.discover.DiscoverTabFragment;
import com.narvii.services.EventLogProfileService;
import com.narvii.util.PackageUtils;
import com.narvii.util.dialog.AlertDialog;
import com.safedk.android.utils.Logger;

/* JADX INFO: loaded from: classes8.dex */
public class MasterHelper {
    NVContext ctx;
    PackageUtils packageUtils;

    public static void safedk_Context_startActivity_97cb3195734cf5c9cc3418feeafa6dd6(Context p0, Intent p1) {
        Logger.d("SafeDK-Special|SafeDK: Call> Landroid/content/Context;->startActivity(Landroid/content/Intent;)V");
        if (p1 == null) {
            return;
        }
        p0.startActivity(p1);
    }

    public static void safedk_NVContext_startActivity_4951a27f86e40bc7fa77f5e79e77f8b2(NVContext p0, Intent p1) {
        Logger.d("SafeDK-Special|SafeDK: Call> Lcom/narvii/app/NVContext;->startActivity(Landroid/content/Intent;)V");
        if (p1 == null) {
            return;
        }
        p0.startActivity(p1);
    }

    public void showDownloadMaterDialog(String str) {
        showDownloadMaterDialog(str, null);
    }

    public void createAmino(String str) {
        Intent intent = FragmentWrapperActivity.intent(MasterTemplatePickerFragment.class);
        intent.putExtra("source", str);
        safedk_Context_startActivity_97cb3195734cf5c9cc3418feeafa6dd6(this.ctx.getContext(), intent);
    }

    public void exploreCommunities(String str) {
        int i10 = 5;
        for (NVContext parentContext = this.ctx; i10 >= 0 && parentContext != null; parentContext = parentContext.getParentContext()) {
            if (parentContext instanceof MasterTabFragment) {
                ((MasterTabFragment) parentContext).setTabIndex(0);
                return;
            }
            i10--;
        }
        Intent intent = FragmentWrapperActivity.intent(DiscoverTabFragment.class);
        intent.putExtra("__communityId", 0);
        safedk_Context_startActivity_97cb3195734cf5c9cc3418feeafa6dd6(this.ctx.getContext(), intent);
    }

    public void jumpToMyCommunityPage() {
        if (((EventLogProfileService) this.ctx.getService("eventLogProfile")).isShowMyCommunityTab()) {
            int i10 = 5;
            for (NVContext parentContext = this.ctx; i10 >= 0 && parentContext != null; parentContext = parentContext.getParentContext()) {
                if (parentContext instanceof MasterTabFragment) {
                    ((MasterTabFragment) parentContext).selectTab(1);
                    return;
                }
                i10--;
            }
        }
        Intent intent = FragmentWrapperActivity.intent(MyAminosFragment.class);
        intent.putExtra("__single", true);
        intent.putExtra("__communityId", 0);
        safedk_Context_startActivity_97cb3195734cf5c9cc3418feeafa6dd6(this.ctx.getContext(), intent);
    }

    public void safeStartActivity(Intent intent, int i10) {
        try {
            safedk_NVContext_startActivity_4951a27f86e40bc7fa77f5e79e77f8b2(this.ctx, intent);
        } catch (Exception unused) {
        }
    }

    public void showDownloadMaterDialog(final String str, String str2) {
        final AlertDialog alertDialog = new AlertDialog(this.ctx, "DownloadMasterApp");
        alertDialog.setTitle(this.ctx.getContext().getString(R.string.download_master_info_title));
        alertDialog.setContentView(R.layout.dialog_download_master);
        ((Button) alertDialog.addButton(R.string.cancel, 64, new View.OnClickListener() { // from class: com.narvii.master.MasterHelper.1
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                LogEvent.clickWildcardBuilder(alertDialog, "Cancel").send();
            }
        })).setTextColor(ContextCompat.getColor(this.ctx.getContext(), R.color.color_default));
        ((Button) alertDialog.addButton(R.string.get_it, 64, new View.OnClickListener() { // from class: com.narvii.master.MasterHelper.2
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                LogEvent.clickWildcardBuilder(alertDialog, "GotIt").send();
                PackageUtils packageUtils = MasterHelper.this.packageUtils;
                packageUtils.openGooglePlayWithNativeLink(packageUtils.getMasterPackageName(), str, "Standalone App");
            }
        })).setTextColor(ContextCompat.getColor(this.ctx.getContext(), R.color.color_default));
        alertDialog.show();
    }

    public MasterHelper(NVContext nVContext) {
        this.ctx = nVContext;
        this.packageUtils = new PackageUtils(nVContext.getContext());
    }
}
