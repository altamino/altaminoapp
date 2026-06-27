package com.narvii.influencer;

import android.content.Context;
import android.view.View;
import android.widget.TextView;
import com.narvii.account.AccountService;
import com.narvii.amino.mastes.R;
import com.narvii.app.NVContext;
import com.narvii.util.NVToast;
import com.narvii.util.Utils;
import com.narvii.util.dialog.AlertDialog;

/* loaded from: classes2.dex */
public class FansOnlyHintDialog extends AlertDialog implements View.OnClickListener {
    private TextView btnBecomeFans;
    private View btnClose;
    private FansOnlyContent fansOnlyContent;
    private boolean isFansBefore;
    private String source;
    private TextView tvHint;

    @Override // com.narvii.util.dialog.AlertDialog
    protected int baseLayoutId() {
        return R.layout.dialog_fans_only_hint;
    }

    public static void showFansOnlyHintDialog(NVContext nVContext, FansOnlyContent fansOnlyContent, String str) {
        FansOnlyHintDialog fansOnlyHintDialog = new FansOnlyHintDialog(nVContext.getContext());
        fansOnlyHintDialog.fansOnlyContent = fansOnlyContent;
        fansOnlyHintDialog.source = str;
        FanClub fanClub = ((AccountService) nVContext.getService("account")).getFanClub(fansOnlyContent == null ? null : fansOnlyContent.influencerUid());
        fansOnlyHintDialog.isFansBefore = fanClub != null && fanClub.hasSubscriptionBefore();
        fansOnlyHintDialog.show();
    }

    private FansOnlyHintDialog(Context context) {
        super(context);
        this.btnBecomeFans = (TextView) findViewById(R.id.become_fans);
        this.btnBecomeFans.setOnClickListener(this);
        this.tvHint = (TextView) findViewById(R.id.hint);
        this.btnClose = findViewById(R.id.close);
        this.btnClose.setOnClickListener(this);
    }

    @Override // com.narvii.app.NVDialog, android.app.Dialog
    public void show() {
        FansOnlyContent fansOnlyContent;
        TextView textView = this.btnBecomeFans;
        if (textView != null) {
            textView.setText(this.isFansBefore ? R.string.renew : R.string.become_a_fan);
        }
        if (this.tvHint != null && (fansOnlyContent = this.fansOnlyContent) != null) {
            if (fansOnlyContent.influencer() == null) {
                this.tvHint.setText(R.string.fans_only_hint);
            } else {
                TextView textView2 = this.tvHint;
                Context context = getContext();
                int iHintTextId = this.fansOnlyContent.HintTextId();
                Object[] objArr = new Object[1];
                objArr[0] = this.fansOnlyContent.influencer() == null ? "" : this.fansOnlyContent.influencer().nickname();
                textView2.setText(context.getString(iHintTextId, objArr));
            }
        }
        super.show();
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        int id = view.getId();
        if (id != R.id.become_fans) {
            if (id != R.id.close) {
                return;
            }
            dismiss();
            return;
        }
        dismiss();
        FansOnlyContent fansOnlyContent = this.fansOnlyContent;
        if (fansOnlyContent != null && fansOnlyContent.influencer() != null && !this.fansOnlyContent.influencer().isInfluencer()) {
            NVToast.makeText(getContext(), R.string.this_fan_club_closed_hint, 1).show();
        } else {
            FanClubSubscriptionDialog.showSubscriptionDialog(Utils.getNVContext(getContext()), this.fansOnlyContent.influencerUid(), this.source);
        }
    }
}
