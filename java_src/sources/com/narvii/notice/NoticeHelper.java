package com.narvii.notice;

import android.view.View;
import com.narvii.account.notice.AccountNotice;
import com.narvii.amino.master.R;
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
import kotlin.jvm.internal.t;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes9.dex */
public final class NoticeHelper {

    @NotNull
    private final NVContext ctx;

    @NotNull
    public final NVContext getCtx() {
        return this.ctx;
    }

    public NoticeHelper(@NotNull NVContext _ctx) {
        t.j(_ctx, "_ctx");
        this.ctx = _ctx;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void showAppealReceivedDialog$lambda$0(ACMAlertDialog dlg, View view) {
        t.j(dlg, "$dlg");
        dlg.dismiss();
    }

    public final void sendAppealNoticeRequest(@NotNull AccountNotice notice, @Nullable final Callback<Boolean> callback) {
        t.j(notice, "notice");
        final ProgressDialog progressDialog = new ProgressDialog(this.ctx.getContext());
        progressDialog.show();
        ApiRequest.Builder builderPath = ApiRequest.builder().path("notice/" + notice.id() + "/decline");
        t.i(builderPath, "path(...)");
        ConfigService configService = (ConfigService) this.ctx.getService("config");
        int communityId = notice.cid;
        if (communityId == 0) {
            communityId = configService.getCommunityId();
        }
        builderPath.communityId(communityId);
        ((ApiService) this.ctx.getService("api")).exec(builderPath.post().build(), new ApiResponseListener<ApiResponse>(ApiResponse.class) { // from class: com.narvii.notice.NoticeHelper.sendAppealNoticeRequest.1
            @Override // com.narvii.util.http.ApiResponseListener
            public void onFail(@Nullable ApiRequest apiRequest, int i10, @Nullable List<NameValuePair> list, @Nullable String str, @Nullable ApiResponse apiResponse, @Nullable Throwable th) {
                super.onFail(apiRequest, i10, list, str, apiResponse, th);
                NVToast.makeText(this.getCtx().getContext(), str, 1).show();
                progressDialog.dismiss();
                Callback<Boolean> callback2 = callback;
                if (callback2 != null) {
                    callback2.call(Boolean.FALSE);
                }
            }

            @Override // com.narvii.util.http.ApiResponseListener
            public void onFinish(@Nullable ApiRequest apiRequest, @Nullable ApiResponse apiResponse) throws Exception {
                super.onFinish(apiRequest, apiResponse);
                progressDialog.dismiss();
                Callback<Boolean> callback2 = callback;
                if (callback2 != null) {
                    callback2.call(Boolean.TRUE);
                }
            }
        });
    }

    public final void showAppealReceivedDialog() {
        final ACMAlertDialog aCMAlertDialog = new ACMAlertDialog(this.ctx.getContext());
        aCMAlertDialog.setMessage(R.string.appeal_received);
        aCMAlertDialog.addButton(R.string.got_it, new View.OnClickListener() { // from class: com.narvii.notice.a
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                NoticeHelper.showAppealReceivedDialog$lambda$0(aCMAlertDialog, view);
            }
        });
        aCMAlertDialog.show();
    }
}
