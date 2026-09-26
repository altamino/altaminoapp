package com.narvii.monetization.store;

import android.view.View;
import android.widget.Button;
import android.widget.TextView;
import com.narvii.amino.master.R;
import com.narvii.app.NVContext;
import com.narvii.app.NVDialog;
import com.narvii.util.PackageUtils;
import com.narvii.widget.TintButton;

/* JADX INFO: loaded from: classes6.dex */
public class SuggestUpdateDialog extends NVDialog implements View.OnClickListener {
    public SuggestUpdateDialog(NVContext nVContext) {
        this(nVContext, 0);
    }

    public SuggestUpdateDialog(NVContext nVContext, int i10) {
        super(nVContext, R.style.CustomDialogWithAnimation);
        setContentView(R.layout.dialog_sugget_update);
        TextView textView = (TextView) findViewById(R.id.hint);
        if (i10 != 0) {
            textView.setText(i10);
        }
        TintButton tintButton = (TintButton) findViewById(R.id.close);
        tintButton.setTintColor(-1);
        tintButton.setOnClickListener(this);
        ((Button) findViewById(R.id.open_app_store_button)).setOnClickListener(this);
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        int id = view.getId();
        if (id != R.id.close) {
            if (id == R.id.open_app_store_button) {
                new PackageUtils(getContext()).openGooglePlay(getContext().getPackageName());
                return;
            }
            return;
        }
        dismiss();
    }
}
