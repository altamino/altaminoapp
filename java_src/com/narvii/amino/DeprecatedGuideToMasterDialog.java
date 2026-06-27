package com.narvii.amino;

import android.content.Context;
import android.os.Bundle;
import android.view.View;
import com.narvii.app.NVDialog;
import com.narvii.logging.LogEvent;
import com.narvii.util.PackageUtils;

/* loaded from: classes2.dex */
public class DeprecatedGuideToMasterDialog extends NVDialog {
    @Override // com.narvii.app.NVDialog, com.narvii.logging.Page
    public String getPageName() {
        return "DeprecatedGuideToMaster";
    }

    public DeprecatedGuideToMasterDialog(Context context) {
        super(context);
    }

    @Override // android.app.Dialog
    protected void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        setCancelable(true);
        setContentView(com.narvii.amino.mastes.R.layout.deprecated_guide_to_master_dialog_layout);
        findViewById(com.narvii.amino.mastes.R.id.download).setOnClickListener(new View.OnClickListener() { // from class: com.narvii.amino.DeprecatedGuideToMasterDialog.1
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                LogEvent.clickWildcardBuilder(DeprecatedGuideToMasterDialog.this, "DownloadNow").send();
                PackageUtils packageUtils = new PackageUtils(DeprecatedGuideToMasterDialog.this.getContext());
                packageUtils.openGooglePlay(packageUtils.getMasterPackageName());
                DeprecatedGuideToMasterDialog.this.dismiss();
            }
        });
        findViewById(com.narvii.amino.mastes.R.id.remind).setOnClickListener(new View.OnClickListener() { // from class: com.narvii.amino.DeprecatedGuideToMasterDialog.2
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                LogEvent.clickWildcardBuilder(DeprecatedGuideToMasterDialog.this, "RemindMeTomorrow").send();
                DeprecatedGuideToMasterDialog.this.dismiss();
            }
        });
    }
}
