package com.narvii.util.dialog;

import android.content.Context;
import android.widget.ProgressBar;
import android.widget.TextView;
import com.narvii.lib.R;
import com.narvii.util.Utils;

/* loaded from: classes3.dex */
public class ProgressHorizontalDialog extends RealtimeBlurDialog {
    private static final int PRE_PROGRESS = 10;
    private final Runnable prego;
    TextView textView;

    public void setText(int i) {
        TextView textView = this.textView;
        if (textView != null) {
            textView.setText(i);
        }
    }

    public ProgressHorizontalDialog(Context context) {
        super(context);
        this.prego = new Runnable() { // from class: com.narvii.util.dialog.ProgressHorizontalDialog.1
            @Override // java.lang.Runnable
            public void run() {
                ProgressHorizontalDialog.this.setProgress(0);
            }
        };
        setContentView(R.layout.dialog_progress_horizontal_layout);
        this.textView = (TextView) findViewById(R.id.text);
        getRealtimeBlurView().setOverlayColor(0);
    }

    public void setProgress(int i) {
        setProgress(i, 100);
    }

    public void setProgress(int i, int i2) {
        Utils.handler.removeCallbacks(this.prego);
        ProgressBar progressBar = (ProgressBar) findViewById(R.id.progress);
        int i3 = (i2 * 10) / 100;
        progressBar.setMax(i2 + i3);
        progressBar.setProgress(i3 + i);
    }

    @Override // com.narvii.app.NVDialog, android.app.Dialog
    public void show() {
        super.show();
        Utils.post(this.prego);
    }
}
