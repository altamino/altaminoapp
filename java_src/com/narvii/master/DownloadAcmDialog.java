package com.narvii.master;

import android.content.Context;
import android.view.View;
import android.widget.TextView;
import com.narvii.amino.mastes.R;
import com.narvii.util.PackageUtils;
import com.narvii.util.Utils;
import com.narvii.util.ViewUtils;
import com.narvii.util.dialog.RealtimeBlurDialog;

/* loaded from: classes3.dex */
public class DownloadAcmDialog extends RealtimeBlurDialog {
    public DownloadAcmDialog(Context context, int i) {
        super(context, i);
        getRealtimeBlurView().setOverlayColor(1711276032);
        getRealtimeBlurView().setBlurRadius(Utils.dpToPx(getContext(), 30.0f));
        setContentView(R.layout.dialog_download_acm);
        ViewUtils.setMontserratExtraBoldTypeface((TextView) findViewById(R.id.button_text));
        findViewById(R.id.back).setOnClickListener(new View.OnClickListener() { // from class: com.narvii.master.DownloadAcmDialog.1
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                DownloadAcmDialog.this.dismiss();
            }
        });
        findViewById(R.id.btn_create_community).setOnClickListener(new View.OnClickListener() { // from class: com.narvii.master.DownloadAcmDialog.2
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                new PackageUtils(DownloadAcmDialog.this.getContext()).downloadAcm();
                DownloadAcmDialog.this.dismiss();
            }
        });
    }
}
