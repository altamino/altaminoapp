package com.narvii.chat.screenroom.widgets;

import android.animation.ObjectAnimator;
import android.app.AlertDialog;
import android.content.Context;
import android.content.DialogInterface;
import android.os.Bundle;
import android.util.Property;
import android.view.View;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.annotation.NonNull;
import com.narvii.amino.master.R;
import com.narvii.app.NVActivity;
import com.narvii.app.NVContext;
import com.narvii.model.api.ReputationPostResponse;
import com.narvii.widget.SpinningView;
import java.util.Locale;
import java.util.concurrent.TimeUnit;

/* JADX INFO: loaded from: classes7.dex */
public class ReputationClaimDialog extends AlertDialog {
    private TextView claimedRep;
    private ReputationPostResponse data;
    private TextView duration;
    private SpinningView loading;
    private TextView viewers;

    private void setData(ReputationPostResponse reputationPostResponse) {
        String str;
        if (reputationPostResponse == null) {
            dismiss();
            return;
        }
        this.loading.setVisibility(8);
        int i10 = reputationPostResponse.duration;
        long j6 = i10 * 1000;
        if (i10 >= 3600) {
            TimeUnit timeUnit = TimeUnit.MILLISECONDS;
            long hours = timeUnit.toHours(j6);
            long minutes = timeUnit.toMinutes(j6);
            TimeUnit timeUnit2 = TimeUnit.HOURS;
            long minutes2 = minutes - timeUnit2.toMinutes(hours);
            str = String.format(Locale.US, "%02d:%02d:%02d", Long.valueOf(hours), Long.valueOf(minutes2), Long.valueOf((timeUnit.toSeconds(j6) - TimeUnit.MINUTES.toSeconds(minutes2)) - timeUnit2.toSeconds(hours)));
        } else {
            TimeUnit timeUnit3 = TimeUnit.MILLISECONDS;
            long minutes3 = timeUnit3.toMinutes(j6);
            str = String.format(Locale.US, "%02d:%02d", Long.valueOf(minutes3), Long.valueOf(timeUnit3.toSeconds(j6) - TimeUnit.MINUTES.toSeconds(minutes3)));
        }
        this.duration.setText(str);
        this.viewers.setText(String.valueOf(reputationPostResponse.participantCount));
        this.claimedRep.setText(getContext().getString(R.string.reputation_added, String.valueOf(reputationPostResponse.totalReputation)));
        ObjectAnimator duration = ObjectAnimator.ofFloat(this.claimedRep, (Property<TextView, Float>) View.SCALE_X, 0.0f, 1.0f).setDuration(500L);
        ObjectAnimator duration2 = ObjectAnimator.ofFloat(this.claimedRep, (Property<TextView, Float>) View.SCALE_Y, 0.0f, 1.0f).setDuration(500L);
        ObjectAnimator duration3 = ObjectAnimator.ofFloat(this.claimedRep, (Property<TextView, Float>) View.ALPHA, 0.01f, 1.0f).setDuration(500L);
        duration.start();
        duration2.start();
        duration3.start();
    }

    public static ReputationClaimDialog show(NVContext nVContext, ReputationPostResponse reputationPostResponse, DialogInterface.OnDismissListener onDismissListener) {
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
        ReputationClaimDialog reputationClaimDialog = new ReputationClaimDialog(nVActivity, reputationPostResponse);
        reputationClaimDialog.setOnDismissListener(onDismissListener);
        reputationClaimDialog.show();
        return reputationClaimDialog;
    }

    public ReputationClaimDialog(@NonNull Context context, ReputationPostResponse reputationPostResponse) {
        super(context);
        this.data = reputationPostResponse;
    }

    @Override // android.app.AlertDialog, android.app.Dialog
    protected void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        setCancelable(true);
        setContentView(R.layout.reputation_claim_dialog_layout);
        this.loading = (SpinningView) findViewById(R.id.reputation_claim_loading);
        this.claimedRep = (TextView) findViewById(R.id.claimed_reputation);
        this.duration = (TextView) findViewById(R.id.duration);
        this.viewers = (TextView) findViewById(R.id.viewers);
        ((ImageView) findViewById(R.id.button_close)).setOnClickListener(new View.OnClickListener() { // from class: com.narvii.chat.screenroom.widgets.ReputationClaimDialog.1
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                ReputationClaimDialog.this.dismiss();
            }
        });
        setData(this.data);
    }
}
