package com.narvii.wallet.optinads;

import android.content.Context;
import android.content.Intent;
import android.text.method.ScrollingMovementMethod;
import android.view.View;
import android.widget.TextView;
import com.narvii.amino.master.R;
import com.narvii.app.FragmentWrapperActivity;
import com.narvii.app.NVDialog;
import com.narvii.logging.LogEvent;
import com.safedk.android.utils.Logger;

/* JADX INFO: loaded from: classes7.dex */
public class OptinAdsPopupDialog extends NVDialog implements View.OnClickListener {
    public static void safedk_Context_startActivity_97cb3195734cf5c9cc3418feeafa6dd6(Context p0, Intent p1) {
        Logger.d("SafeDK-Special|SafeDK: Call> Landroid/content/Context;->startActivity(Landroid/content/Intent;)V");
        if (p1 == null) {
            return;
        }
        p0.startActivity(p1);
    }

    @Override // com.narvii.app.NVDialog, com.narvii.logging.Page
    public String getPageName() {
        return "earn_free_coins_with_ads";
    }

    public OptinAdsPopupDialog(Context context) {
        super(context, R.style.CustomDialog);
        setContentView(R.layout.optin_ads_popup);
        findViewById(R.id.button_ok).setOnClickListener(this);
        findViewById(R.id.close).setOnClickListener(this);
        TextView textView = (TextView) findViewById(R.id.ads_settings);
        textView.setOnClickListener(this);
        textView.setPaintFlags(textView.getPaintFlags() | 8);
        ((TextView) findViewById(R.id.ads_text)).setMovementMethod(new ScrollingMovementMethod());
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        int id = view.getId();
        if (id != R.id.ads_settings) {
            if (id == R.id.button_ok || id == R.id.close) {
                LogEvent.clickWildcardBuilder(this).area("GotIt").send();
                dismiss();
                return;
            }
            return;
        }
        LogEvent.clickWildcardBuilder(this).area("ViewAdsSetting").send();
        dismiss();
        safedk_Context_startActivity_97cb3195734cf5c9cc3418feeafa6dd6(getContext(), FragmentWrapperActivity.intent(OptinAdsManageFragment.class));
    }
}
