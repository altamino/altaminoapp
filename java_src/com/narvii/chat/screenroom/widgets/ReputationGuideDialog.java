package com.narvii.chat.screenroom.widgets;

import android.app.AlertDialog;
import android.content.Context;
import android.os.Bundle;
import android.view.View;
import android.widget.TextView;
import com.narvii.amino.mastes.R;
import com.narvii.app.NVActivity;
import com.narvii.app.NVContext;

/* loaded from: classes2.dex */
public class ReputationGuideDialog extends AlertDialog {
    public static AlertDialog show(NVContext nVContext) {
        while (nVContext != null && !(nVContext instanceof NVActivity)) {
            nVContext = nVContext.getParentContext();
        }
        if (nVContext == null) {
            return null;
        }
        NVActivity nVActivity = (NVActivity) nVContext;
        if (nVActivity.isFinishing()) {
            return null;
        }
        ReputationGuideDialog reputationGuideDialog = new ReputationGuideDialog(nVActivity);
        reputationGuideDialog.show();
        return reputationGuideDialog;
    }

    public ReputationGuideDialog(Context context) {
        super(context);
    }

    @Override // android.app.AlertDialog, android.app.Dialog
    protected void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        setCancelable(true);
        setContentView(R.layout.reputation_guide_dialog_layout);
        ((TextView) findViewById(R.id.button_ok)).setOnClickListener(new View.OnClickListener() { // from class: com.narvii.chat.screenroom.widgets.ReputationGuideDialog.1
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                ReputationGuideDialog.this.dismiss();
            }
        });
    }
}
