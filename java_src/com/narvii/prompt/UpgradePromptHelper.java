package com.narvii.prompt;

import android.content.DialogInterface;
import android.content.SharedPreferences;
import com.narvii.amino.MainDialogHelper;
import com.narvii.amino.PromptShowListener;
import com.narvii.app.NVContext;
import com.narvii.util.DateTimeFormatter;

/* loaded from: classes3.dex */
public class UpgradePromptHelper extends PromptHelper {
    boolean forceUpgrade;
    public final MainDialogHelper helper;
    boolean showUpgrade;

    public UpgradePromptHelper(NVContext nVContext, PromptShowListener promptShowListener) {
        super(nVContext, promptShowListener);
        this.showUpgrade = false;
        this.forceUpgrade = false;
        this.helper = new MainDialogHelper(nVContext);
    }

    @Override // com.narvii.prompt.PromptHelper
    protected void doTryShow() {
        boolean zForceUpgrade = this.helper.forceUpgrade();
        this.forceUpgrade = zForceUpgrade;
        if (zForceUpgrade) {
            this.showUpgrade = true;
        } else if (this.helper.hasNewVersion()) {
            if (DateTimeFormatter.today().equals(((SharedPreferences) this.nvContext.getService("prefs")).getString("upgradeShowDate", null))) {
                whenNotBlocking();
                return;
            }
            this.showUpgrade = true;
        } else {
            whenNotBlocking();
            return;
        }
        if (this.showUpgrade) {
            this.helper.showUpgradeDialog(this.forceUpgrade).setOnDismissListener(new DialogInterface.OnDismissListener() { // from class: com.narvii.prompt.UpgradePromptHelper.1
                @Override // android.content.DialogInterface.OnDismissListener
                public void onDismiss(DialogInterface dialogInterface) {
                    UpgradePromptHelper.this.whenNotBlocking();
                }
            });
            ((SharedPreferences) this.nvContext.getService("prefs")).edit().putString("upgradeShowDate", DateTimeFormatter.today()).apply();
        }
    }
}
