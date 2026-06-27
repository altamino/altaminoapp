package com.narvii.master;

import android.view.View;
import com.narvii.amino.mastes.R;
import com.narvii.app.NVContext;
import com.narvii.util.PackageUtils;
import com.narvii.util.dialog.AlertDialog;
import com.narvii.util.statusbar.StatusBarUtils;

/* loaded from: classes3.dex */
public class NewDownloadAcmDialog extends AlertDialog implements View.OnClickListener {
    public NewDownloadAcmDialog(NVContext nVContext) {
        super(nVContext.getContext());
        StatusBarUtils.addTranslucentFlags(getWindow());
        setContentView(R.layout.dialog_download_acm_new);
        findViewById(R.id.get_acm).setOnClickListener(this);
        findViewById(R.id.close).setOnClickListener(this);
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        int id = view.getId();
        if (id == R.id.close) {
            dismiss();
        } else {
            if (id != R.id.get_acm) {
                return;
            }
            new PackageUtils(getContext()).downloadAcm();
            dismiss();
        }
    }
}
