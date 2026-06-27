package com.narvii.onlinestatus;

import android.content.DialogInterface;
import android.content.Intent;
import android.view.KeyEvent;
import android.view.View;
import com.narvii.account.AccountService;
import com.narvii.amino.mastes.R;
import com.narvii.app.FragmentWrapperActivity;
import com.narvii.app.NVFragment;
import com.narvii.community.AffiliationsService;
import com.narvii.master.CommunityDetailFragment;
import com.narvii.util.Utils;
import com.narvii.util.dialog.RealtimeBlurDialog;

/* loaded from: classes3.dex */
public class OnlineDialogHelper {
    private static final int TYPE_DIALOG_SHOW_JOIN_COMMUNITY = 2;
    private static final int TYPE_DIALOG_SHOW_LOGIN = 1;
    private static final int TYPE_DIALOG_SHOW_NONE = 0;
    AffiliationsService affiliationsService;
    public RealtimeBlurDialog goJoinCommunityDialog;
    public RealtimeBlurDialog goLoginDialog;
    NVFragment nvFragment;

    public OnlineDialogHelper(NVFragment nVFragment) {
        this.nvFragment = nVFragment;
        this.affiliationsService = (AffiliationsService) nVFragment.getService("affiliations");
    }

    public void checkOnlineStatus() {
        if (!((AccountService) this.nvFragment.getService("account")).hasAccount()) {
            prepareShowDialog(1);
            if (this.goLoginDialog == null) {
                RealtimeBlurDialog realtimeBlurDialog = new RealtimeBlurDialog(this.nvFragment.getContext(), R.style.CustomDialogWithAnimation);
                realtimeBlurDialog.getRealtimeBlurView().setOverlayColor(1711276032);
                realtimeBlurDialog.getRealtimeBlurView().setBlurRadius(Utils.dpToPx(this.nvFragment.getContext(), 30.0f));
                realtimeBlurDialog.setContentView(R.layout.online_go_login_dialog);
                realtimeBlurDialog.findViewById(R.id.action).setOnClickListener(new View.OnClickListener() { // from class: com.narvii.onlinestatus.OnlineDialogHelper.1
                    @Override // android.view.View.OnClickListener
                    public void onClick(View view) {
                        OnlineDialogHelper.this.nvFragment.ensureLogin(new Intent("login"));
                    }
                });
                realtimeBlurDialog.setOnKeyListener(new DialogInterface.OnKeyListener() { // from class: com.narvii.onlinestatus.OnlineDialogHelper.2
                    @Override // android.content.DialogInterface.OnKeyListener
                    public boolean onKey(DialogInterface dialogInterface, int i, KeyEvent keyEvent) {
                        if (i != 4) {
                            return false;
                        }
                        OnlineDialogHelper.this.nvFragment.finish();
                        return true;
                    }
                });
                realtimeBlurDialog.setOnCancelListener(new DialogInterface.OnCancelListener() { // from class: com.narvii.onlinestatus.OnlineDialogHelper.3
                    @Override // android.content.DialogInterface.OnCancelListener
                    public void onCancel(DialogInterface dialogInterface) {
                        OnlineDialogHelper.this.nvFragment.finish();
                    }
                });
                this.goLoginDialog = realtimeBlurDialog;
            }
            this.goLoginDialog.show();
            return;
        }
        AffiliationsService affiliationsService = this.affiliationsService;
        if (affiliationsService != null && !affiliationsService.contains(this.nvFragment.getIntParam("__communityId"))) {
            prepareShowDialog(2);
            if (this.goJoinCommunityDialog == null) {
                RealtimeBlurDialog realtimeBlurDialog2 = new RealtimeBlurDialog(this.nvFragment.getContext(), R.style.CustomDialogWithAnimation);
                realtimeBlurDialog2.getRealtimeBlurView().setOverlayColor(1711276032);
                realtimeBlurDialog2.getRealtimeBlurView().setBlurRadius(Utils.dpToPx(this.nvFragment.getContext(), 30.0f));
                realtimeBlurDialog2.setContentView(R.layout.online_go_community_dialog);
                realtimeBlurDialog2.findViewById(R.id.action).setOnClickListener(new View.OnClickListener() { // from class: com.narvii.onlinestatus.OnlineDialogHelper.4
                    @Override // android.view.View.OnClickListener
                    public void onClick(View view) {
                        Intent intent = FragmentWrapperActivity.intent(CommunityDetailFragment.class);
                        intent.putExtra("id", OnlineDialogHelper.this.nvFragment.getIntParam("__communityId"));
                        OnlineDialogHelper.this.nvFragment.startActivity(intent);
                    }
                });
                realtimeBlurDialog2.setOnKeyListener(new DialogInterface.OnKeyListener() { // from class: com.narvii.onlinestatus.OnlineDialogHelper.5
                    @Override // android.content.DialogInterface.OnKeyListener
                    public boolean onKey(DialogInterface dialogInterface, int i, KeyEvent keyEvent) {
                        if (i != 4) {
                            return false;
                        }
                        OnlineDialogHelper.this.nvFragment.finish();
                        return true;
                    }
                });
                realtimeBlurDialog2.setOnCancelListener(new DialogInterface.OnCancelListener() { // from class: com.narvii.onlinestatus.OnlineDialogHelper.6
                    @Override // android.content.DialogInterface.OnCancelListener
                    public void onCancel(DialogInterface dialogInterface) {
                        OnlineDialogHelper.this.nvFragment.finish();
                    }
                });
                this.goJoinCommunityDialog = realtimeBlurDialog2;
            }
            this.goJoinCommunityDialog.show();
            return;
        }
        prepareShowDialog(0);
    }

    private void prepareShowDialog(int i) {
        RealtimeBlurDialog realtimeBlurDialog = this.goLoginDialog;
        if (realtimeBlurDialog != null && i != 1) {
            realtimeBlurDialog.dismiss();
            this.goLoginDialog = null;
        }
        RealtimeBlurDialog realtimeBlurDialog2 = this.goJoinCommunityDialog;
        if (realtimeBlurDialog2 == null || i == 2) {
            return;
        }
        realtimeBlurDialog2.dismiss();
        this.goJoinCommunityDialog = null;
    }
}
