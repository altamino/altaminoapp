package com.narvii.notice;

import android.view.View;
import com.narvii.account.notice.AccountNotice;
import com.narvii.amino.mastes.R;
import com.narvii.app.NVContext;
import com.narvii.config.ConfigService;
import com.narvii.model.api.ApiResponse;
import com.narvii.util.Callback;
import com.narvii.util.NVToast;
import com.narvii.util.dialog.ProgressDialog;
import com.narvii.util.http.ApiRequest;
import com.narvii.util.http.ApiResponseListener;
import com.narvii.util.http.ApiService;
import com.narvii.util.http.NameValuePair;
import com.narvii.widget.ACMAlertDialog;
import java.util.List;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: NoticeHelper.kt */
/* loaded from: classes3.dex */
public final class NoticeHelper {
    private final NVContext ctx;

    public NoticeHelper(NVContext _ctx) {
        Intrinsics.checkParameterIsNotNull(_ctx, "_ctx");
        this.ctx = _ctx;
    }

    public final NVContext getCtx() {
        return this.ctx;
    }

    public final void sendAppealNoticeRequest(AccountNotice notice, final Callback<Boolean> callback) {
        Intrinsics.checkParameterIsNotNull(notice, "notice");
        final ProgressDialog progressDialog = new ProgressDialog(this.ctx.getContext());
        progressDialog.show();
        ApiRequest.Builder builderPath = ApiRequest.builder().path("notice/" + notice.id() + "/decline");
        Intrinsics.checkExpressionValueIsNotNull(builderPath, "ApiRequest.builder()\n   …notice.id() + \"/decline\")");
        ConfigService configService = (ConfigService) this.ctx.getService("config");
        int communityId = notice.cid;
        if (communityId == 0) {
            Intrinsics.checkExpressionValueIsNotNull(configService, "configService");
            communityId = configService.getCommunityId();
        }
        builderPath.communityId(communityId);
        ((ApiService) this.ctx.getService("api")).exec(builderPath.post().build(), new ApiResponseListener<ApiResponse>(ApiResponse.class) { // from class: com.narvii.notice.NoticeHelper.sendAppealNoticeRequest.1
            @Override // com.narvii.util.http.ApiResponseListener
            public void onFinish(ApiRequest apiRequest, ApiResponse apiResponse) throws Exception {
                super.onFinish(apiRequest, apiResponse);
                progressDialog.dismiss();
                Callback callback2 = callback;
                if (callback2 != null) {
                    callback2.call(true);
                }
            }

            @Override // com.narvii.util.http.ApiResponseListener
            public void onFail(ApiRequest apiRequest, int i, List<NameValuePair> list, String str, ApiResponse apiResponse, Throwable th) {
                super.onFail(apiRequest, i, list, str, apiResponse, th);
                NVToast.makeText(NoticeHelper.this.getCtx().getContext(), str, 1).show();
                progressDialog.dismiss();
                Callback callback2 = callback;
                if (callback2 != null) {
                    callback2.call(false);
                }
            }
        });
    }

    public final void showAppealReceivedDialog() {
        final ACMAlertDialog aCMAlertDialog = new ACMAlertDialog(this.ctx.getContext());
        aCMAlertDialog.setMessage(R.string.appeal_received);
        aCMAlertDialog.addButton(R.string.got_it, new View.OnClickListener() { // from class: com.narvii.notice.NoticeHelper.showAppealReceivedDialog.1
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                aCMAlertDialog.dismiss();
            }
        });
        aCMAlertDialog.show();
    }
}
