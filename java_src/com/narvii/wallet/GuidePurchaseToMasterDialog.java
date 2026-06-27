package com.narvii.wallet;

import android.app.AlertDialog;
import android.content.Context;
import android.content.Intent;
import android.net.Uri;
import android.os.Bundle;
import android.view.View;
import android.widget.Button;
import com.narvii.amino.mastes.R;
import com.narvii.util.PackageUtils;

/* loaded from: classes3.dex */
public class GuidePurchaseToMasterDialog extends AlertDialog {
    private String pagePath;

    public static GuidePurchaseToMasterDialog show(Context context, String str) {
        GuidePurchaseToMasterDialog guidePurchaseToMasterDialog = new GuidePurchaseToMasterDialog(context, str);
        guidePurchaseToMasterDialog.show();
        return guidePurchaseToMasterDialog;
    }

    public GuidePurchaseToMasterDialog(Context context, String str) {
        super(context);
        this.pagePath = str;
    }

    @Override // android.app.AlertDialog, android.app.Dialog
    protected void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        setCancelable(true);
        setContentView(R.layout.purchase_guide_to_master_dialog_layout);
        final PackageUtils packageUtils = new PackageUtils(getContext());
        ((Button) findViewById(R.id.button_cancel)).setOnClickListener(new View.OnClickListener() { // from class: com.narvii.wallet.GuidePurchaseToMasterDialog.1
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                GuidePurchaseToMasterDialog.this.dismiss();
            }
        });
        ((Button) findViewById(R.id.button_ok)).setOnClickListener(new View.OnClickListener() { // from class: com.narvii.wallet.GuidePurchaseToMasterDialog.2
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                if (packageUtils.isMasterInstalled()) {
                    GuidePurchaseToMasterDialog.this.getContext().startActivity(new Intent("android.intent.action.VIEW", Uri.parse(packageUtils.getMasterScheme() + "://" + GuidePurchaseToMasterDialog.this.pagePath)));
                } else {
                    PackageUtils packageUtils2 = packageUtils;
                    packageUtils2.openGooglePlay(packageUtils2.getMasterPackageName());
                }
                GuidePurchaseToMasterDialog.this.dismiss();
            }
        });
    }
}
