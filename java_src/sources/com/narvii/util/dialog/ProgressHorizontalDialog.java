package com.narvii.util.dialog;

import android.content.Context;
import android.widget.ProgressBar;
import android.widget.TextView;
import com.narvii.lib.R;
import com.narvii.util.Utils;

/* JADX INFO: loaded from: classes7.dex */
public class ProgressHorizontalDialog extends RealtimeBlurDialog {
    private static final int PRE_PROGRESS = 10;
    private final Runnable prego;
    TextView textView;

    public void setProgress(int i10) {
        setProgress(i10, 100);
    }

    public void setProgress(int i10, int i11) {
        Utils.handler.removeCallbacks(this.prego);
        ProgressBar progressBar = (ProgressBar) findViewById(R.id.progress);
        int i12 = (i11 * 10) / 100;
        progressBar.setMax(i11 + i12);
        progressBar.setProgress(i12 + i10);
    }

    public void setText(int i10) {
        TextView textView = this.textView;
        if (textView != null) {
            textView.setText(i10);
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

    @Override // com.narvii.app.NVDialog, android.app.Dialog
    public void show() {
        super.show();
        Utils.post(this.prego);
    }
}
