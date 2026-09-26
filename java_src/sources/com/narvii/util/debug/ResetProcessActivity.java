package com.narvii.util.debug;

import android.os.Bundle;
import android.os.Handler;
import android.os.Process;
import android.view.View;
import android.widget.TextView;
import com.narvii.app.NVActivity;

/* JADX INFO: loaded from: classes10.dex */
public class ResetProcessActivity extends NVActivity {
    @Override // com.narvii.app.NVActivity, com.narvii.app.theme.NVThemeActivity, androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    protected void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        TextView textView = new TextView(this);
        textView.setText("Reset the process\n\nAll previous activities should be restart and restoreInstanceState.\n\n\nClick or wait 5 seconds to reset.");
        setContentView(textView);
        textView.setOnClickListener(new View.OnClickListener() { // from class: com.narvii.util.debug.ResetProcessActivity.1
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                Process.killProcess(Process.myPid());
            }
        });
        new Handler().postDelayed(new Runnable() { // from class: com.narvii.util.debug.ResetProcessActivity.2
            @Override // java.lang.Runnable
            public void run() {
                Process.killProcess(Process.myPid());
            }
        }, 5000L);
    }
}
