package com.narvii.prompt;

import android.content.DialogInterface;
import com.narvii.amino.DeprecatedGuideToMasterDialog;
import com.narvii.amino.PromptShowListener;
import com.narvii.app.NVContext;
import com.narvii.drawer.DrawerHost;
import com.narvii.model.Community;
import com.narvii.util.DateUtils;
import com.narvii.util.PackageUtils;
import java.util.Date;

/* loaded from: classes3.dex */
public class DeprecatedStandalonePromptHelper extends PromptHelper implements DrawerHost.RequestCommunityInfoListener {
    boolean waiting;

    public DeprecatedStandalonePromptHelper(NVContext nVContext, PromptShowListener promptShowListener, boolean z) {
        super(nVContext, promptShowListener, z);
    }

    @Override // com.narvii.prompt.PromptHelper
    protected void doTryShow() {
        if (!allowShow()) {
            whenNotBlocking();
            return;
        }
        DrawerHost drawerHost = (DrawerHost) this.nvContext.getService("drawerHost");
        if (drawerHost == null) {
            whenNotBlocking();
            return;
        }
        if (drawerHost.isRequestingCommunity()) {
            drawerHost.addRequestCommunityInfoListener(this);
            this.waiting = true;
            return;
        }
        Community returnedCommunity = drawerHost.getReturnedCommunity();
        if (returnedCommunity == null || !returnedCommunity.isStandaloneAppDeprecated) {
            whenNotBlocking();
        } else {
            dispatchShowPromptRunnable(new Runnable() { // from class: com.narvii.prompt.DeprecatedStandalonePromptHelper.1
                @Override // java.lang.Runnable
                public void run() {
                    DeprecatedGuideToMasterDialog deprecatedGuideToMasterDialog = new DeprecatedGuideToMasterDialog(DeprecatedStandalonePromptHelper.this.nvContext.getContext());
                    deprecatedGuideToMasterDialog.setOnDismissListener(new DialogInterface.OnDismissListener() { // from class: com.narvii.prompt.DeprecatedStandalonePromptHelper.1.1
                        @Override // android.content.DialogInterface.OnDismissListener
                        public void onDismiss(DialogInterface dialogInterface) {
                            DeprecatedStandalonePromptHelper.this.whenNotBlocking();
                        }
                    });
                    deprecatedGuideToMasterDialog.show();
                    DeprecatedStandalonePromptHelper.this.prefs.edit().putInt("deprecatedStandaloneShownCount", DeprecatedStandalonePromptHelper.this.prefs.getInt("deprecatedStandaloneShownCount", 0) + 1).putLong("deprecatedStandaloneTime", System.currentTimeMillis()).apply();
                }
            });
        }
    }

    private boolean allowShow() {
        return (this.prefs.getInt("deprecatedStandaloneShownCount", 0) >= 3 || new PackageUtils(this.nvContext.getContext()).isMasterInstalled() || DateUtils.isSameDay(new Date(System.currentTimeMillis()), new Date(this.prefs.getLong("deprecatedStandaloneTime", 0L)))) ? false : true;
    }

    @Override // com.narvii.drawer.DrawerHost.RequestCommunityInfoListener
    public void onRequestCommunityStatusChanged() {
        if (this.waiting) {
            this.waiting = false;
            DrawerHost drawerHost = (DrawerHost) this.nvContext.getService("drawerHost");
            if (drawerHost != null) {
                drawerHost.removeRequestCommunityInfoListener(this);
            }
            doTryShow();
        }
    }
}
