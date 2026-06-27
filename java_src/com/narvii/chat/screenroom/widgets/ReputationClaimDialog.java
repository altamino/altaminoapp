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
import com.narvii.amino.mastes.R;
import com.narvii.app.NVActivity;
import com.narvii.app.NVContext;
import com.narvii.model.api.ReputationPostResponse;
import com.narvii.widget.SpinningView;
import java.util.Locale;
import java.util.concurrent.TimeUnit;

/* loaded from: classes2.dex */
public class ReputationClaimDialog extends AlertDialog {
    private TextView claimedRep;
    private ReputationPostResponse data;
    private TextView duration;
    private SpinningView loading;
    private TextView viewers;

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

    public ReputationClaimDialog(Context context, ReputationPostResponse reputationPostResponse) {
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

    private void setData(ReputationPostResponse reputationPostResponse) {
        String str;
        if (reputationPostResponse == null) {
            dismiss();
            return;
        }
        this.loading.setVisibility(8);
        int i = reputationPostResponse.duration;
        long j = i * 1000;
        if (i >= 3600) {
            long hours = TimeUnit.MILLISECONDS.toHours(j);
            long minutes = TimeUnit.MILLISECONDS.toMinutes(j) - TimeUnit.HOURS.toMinutes(hours);
            str = String.format(Locale.US, "%02d:%02d:%02d", Long.valueOf(hours), Long.valueOf(minutes), Long.valueOf((TimeUnit.MILLISECONDS.toSeconds(j) - TimeUnit.MINUTES.toSeconds(minutes)) - TimeUnit.HOURS.toSeconds(hours)));
        } else {
            long minutes2 = TimeUnit.MILLISECONDS.toMinutes(j);
            str = String.format(Locale.US, "%02d:%02d", Long.valueOf(minutes2), Long.valueOf(TimeUnit.MILLISECONDS.toSeconds(j) - TimeUnit.MINUTES.toSeconds(minutes2)));
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
}
