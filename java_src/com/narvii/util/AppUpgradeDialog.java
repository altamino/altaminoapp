package com.narvii.util;

import android.view.View;
import android.widget.Button;
import com.narvii.app.NVContext;
import com.narvii.app.NVDialog;
import com.narvii.lib.R;
import com.narvii.widget.TintButton;

/* loaded from: classes3.dex */
public class AppUpgradeDialog extends NVDialog implements View.OnClickListener {
    public AppUpgradeDialog(NVContext nVContext) {
        super(nVContext, R.style.CustomDialogWithAnimation);
        setContentView(R.layout.dialog_app_upgrade);
        TintButton tintButton = (TintButton) findViewById(R.id.close);
        tintButton.setTintColor(-1);
        tintButton.setOnClickListener(this);
        ((Button) findViewById(R.id.open_app_store_button)).setOnClickListener(this);
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        int id = view.getId();
        if (id == R.id.close) {
            dismiss();
        } else if (id == R.id.open_app_store_button) {
            new PackageUtils(getContext()).openGooglePlay(getContext().getPackageName());
        }
    }
}
