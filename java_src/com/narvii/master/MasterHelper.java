package com.narvii.master;

import android.content.Intent;
import android.content.res.Resources;
import android.support.v4.content.ContextCompat;
import android.view.View;
import android.widget.Button;
import com.narvii.amino.mastes.R;
import com.narvii.app.FragmentWrapperActivity;
import com.narvii.app.NVApplication;
import com.narvii.app.NVContext;
import com.narvii.comment.list.CommentListFragment;
import com.narvii.logging.LogEvent;
import com.narvii.master.explorer.ExplorerCommunityListFragment;
import com.narvii.master.home.MyAminosFragment;
import com.narvii.master.home.discover.DiscoverTabFragment;
import com.narvii.services.EventLogProfileService;
import com.narvii.util.PackageUtils;
import com.narvii.util.dialog.AlertDialog;

/* loaded from: classes3.dex */
public class MasterHelper {
    NVContext ctx;
    PackageUtils packageUtils;

    public MasterHelper(NVContext nVContext) {
        this.ctx = nVContext;
        this.packageUtils = new PackageUtils(nVContext.getContext());
    }

    public void safeStartActivity(Intent intent, int i) {
        boolean z;
        if (NVApplication.CLIENT_TYPE != 101 || new PackageUtils(this.ctx.getContext()).getCommunityIdFromPackageName() == i) {
            z = false;
        } else {
            showDownloadMaterDialog(null);
            z = true;
        }
        if (z) {
            return;
        }
        try {
            this.ctx.startActivity(intent);
        } catch (Exception unused) {
        }
    }

    public void showDownloadMaterDialog(String str) {
        showDownloadMaterDialog(str, null);
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

    public void createAmino(String str) {
        Intent intent = FragmentWrapperActivity.intent(MasterTemplatePickerFragment.class);
        intent.putExtra(CommentListFragment.COMMENT_KEY_SOURCE, str);
        this.ctx.getContext().startActivity(intent);
    }

    public void exploreCommunities(String str) throws Resources.NotFoundException {
        Intent intent;
        int i = 5;
        for (NVContext parentContext = this.ctx; i >= 0 && parentContext != null; parentContext = parentContext.getParentContext()) {
            if (parentContext instanceof MasterTabFragment) {
                ((MasterTabFragment) parentContext).setTabIndex(0);
                return;
            }
            i--;
        }
        if (NVApplication.CLIENT_TYPE == 101) {
            intent = FragmentWrapperActivity.intent(ExplorerCommunityListFragment.class);
            intent.putExtra(CommentListFragment.COMMENT_KEY_SOURCE, str);
        } else {
            intent = FragmentWrapperActivity.intent(DiscoverTabFragment.class);
            intent.putExtra("__communityId", 0);
        }
        this.ctx.getContext().startActivity(intent);
    }

    public void jumpToMyCommunityPage() throws Resources.NotFoundException {
        if (((EventLogProfileService) this.ctx.getService("eventLogProfile")).isShowMyCommunityTab()) {
            int i = 5;
            for (NVContext parentContext = this.ctx; i >= 0 && parentContext != null; parentContext = parentContext.getParentContext()) {
                if (parentContext instanceof MasterTabFragment) {
                    ((MasterTabFragment) parentContext).lambda$onViewCreated$3$MasterTabFragment(1);
                    return;
                }
                i--;
            }
        }
        Intent intent = FragmentWrapperActivity.intent(MyAminosFragment.class);
        intent.putExtra("__single", true);
        intent.putExtra("__communityId", 0);
        this.ctx.getContext().startActivity(intent);
    }
}
