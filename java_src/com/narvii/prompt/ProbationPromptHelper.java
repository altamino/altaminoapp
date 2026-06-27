package com.narvii.prompt;

import android.content.Context;
import android.content.DialogInterface;
import android.view.View;
import com.google.android.exoplayer2.text.ttml.TtmlNode;
import com.narvii.amino.PromptShowListener;
import com.narvii.amino.mastes.R;
import com.narvii.app.NVContext;
import com.narvii.community.ProbationLogResponse;
import com.narvii.util.dialog.AlertDialog;
import com.narvii.util.http.ApiRequest;
import com.narvii.util.http.ApiResponseListener;
import com.narvii.util.http.ApiService;
import java.util.List;

/* loaded from: classes3.dex */
public class ProbationPromptHelper extends PromptHelper {
    boolean probationShown;

    public ProbationPromptHelper(NVContext nVContext, PromptShowListener promptShowListener) {
        super(nVContext, promptShowListener);
    }

    @Override // com.narvii.prompt.PromptHelper
    protected void doTryShow() {
        if ((this.probationShown || getCommunity() == null || getCommunity().probationStatus != 1 || getUser() == null || !getUser().isLeader()) ? false : true) {
            ((ApiService) this.nvContext.getService("api")).exec(ApiRequest.builder().path("/community/probation-log").param(TtmlNode.START, 0).param("size", 1).build(), new ApiResponseListener<ProbationLogResponse>(ProbationLogResponse.class) { // from class: com.narvii.prompt.ProbationPromptHelper.1
                @Override // com.narvii.util.http.ApiResponseListener
                public void onFinish(ApiRequest apiRequest, ProbationLogResponse probationLogResponse) throws Exception {
                    List<ProbationLogResponse.CommunityProbationLogListBean> list;
                    if (probationLogResponse.communityProbationLogCount == 0 || (list = probationLogResponse.communityProbationLogList) == null || list.get(0) == null) {
                        return;
                    }
                    Context context = ProbationPromptHelper.this.nvContext.getContext();
                    final AlertDialog alertDialog = new AlertDialog(ProbationPromptHelper.this.nvContext.getContext());
                    alertDialog.setTitle(context.getString(R.string.probation_message));
                    alertDialog.setMessage(probationLogResponse.communityProbationLogList.get(0).message);
                    alertDialog.setCancelable(false);
                    alertDialog.addButton(android.R.string.ok, 0, (View.OnClickListener) null);
                    alertDialog.setOnDismissListener(new DialogInterface.OnDismissListener() { // from class: com.narvii.prompt.ProbationPromptHelper.1.1
                        @Override // android.content.DialogInterface.OnDismissListener
                        public void onDismiss(DialogInterface dialogInterface) {
                            ProbationPromptHelper.this.whenNotBlocking();
                        }
                    });
                    ProbationPromptHelper.this.dispatchShowPromptRunnable(new Runnable() { // from class: com.narvii.prompt.ProbationPromptHelper.1.2
                        @Override // java.lang.Runnable
                        public void run() {
                            alertDialog.show();
                            ProbationPromptHelper.this.probationShown = true;
                        }
                    });
                }
            });
        } else {
            whenNotBlocking();
        }
    }
}
