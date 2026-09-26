package com.narvii.membership;

import android.content.Context;
import android.content.Intent;
import android.net.Uri;
import android.text.TextUtils;
import android.view.View;
import android.widget.TextView;
import com.narvii.app.NVContext;
import com.narvii.headlines.ExternalPostPreviewFragment;
import com.narvii.lib.R;
import com.narvii.logging.LogEvent;
import com.narvii.util.ViewUtils;
import com.narvii.util.dialog.AlertDialog;
import com.narvii.wallet.MembershipService;
import com.safedk.android.utils.Logger;

/* JADX INFO: loaded from: classes11.dex */
public class MembershipHintDialog extends AlertDialog implements View.OnClickListener {
    private View btnClose;
    private TextView btnSubscribe;
    private NVContext context;
    public String source;
    private TextView tvContent;

    public MembershipHintDialog(NVContext nVContext) {
        this(nVContext, null);
    }

    public static void safedk_Context_startActivity_97cb3195734cf5c9cc3418feeafa6dd6(Context p0, Intent p1) {
        Logger.d("SafeDK-Special|SafeDK: Call> Landroid/content/Context;->startActivity(Landroid/content/Intent;)V");
        if (p1 == null) {
            return;
        }
        p0.startActivity(p1);
    }

    public MembershipHintDialog(NVContext nVContext, String str) {
        super(nVContext, "JoinAminoPlusPage");
        this.context = nVContext;
        setContentView(R.layout.dialog_membership_base);
        this.tvContent = (TextView) findViewById(R.id.hint_content);
        if (TextUtils.isEmpty(str)) {
            this.tvContent.setText(R.string.member_ship_only);
        } else {
            this.tvContent.setText(str);
        }
        View viewFindViewById = findViewById(R.id.close);
        this.btnClose = viewFindViewById;
        viewFindViewById.setOnClickListener(this);
        findViewById(R.id.subscribe_layout).setOnClickListener(this);
        MembershipService membershipService = (MembershipService) nVContext.getService("membership");
        TextView textView = (TextView) findViewById(R.id.subscribe);
        this.btnSubscribe = textView;
        textView.setText(membershipService.freeTrial() ? R.string.membership_try_for_free : R.string.membership_subscribe);
        ViewUtils.setMontserratExtraBoldTypeface(this.btnSubscribe);
    }

    private void subscribeMembership() {
        Intent intent = new Intent("android.intent.action.VIEW", Uri.parse("ndc://membership"));
        intent.putExtra("subscribe", true);
        intent.putExtra(ExternalPostPreviewFragment.SOURCE, this.source);
        safedk_Context_startActivity_97cb3195734cf5c9cc3418feeafa6dd6(this.context.getContext(), intent);
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        if (view.getId() == R.id.close) {
            dismiss();
        } else if (view.getId() == R.id.subscribe_layout) {
            LogEvent.clickWildcardBuilder(this).area("JoinAminoPlusButton").send();
            dismiss();
            subscribeMembership();
        }
    }
}
