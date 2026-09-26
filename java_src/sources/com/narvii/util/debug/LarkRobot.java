package com.narvii.util.debug;

import com.narvii.app.NVContext;
import com.narvii.lib.R;
import com.narvii.model.api.ApiResponse;
import com.narvii.util.Callback;
import com.narvii.util.Utils;
import com.narvii.util.dialog.ProgressDialog;
import com.narvii.util.http.ApiRequest;
import com.narvii.util.http.ApiService;
import io.agora.rtc.internal.RtcEngineEvent;
import j8.o;
import kotlin.jvm.internal.t;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes6.dex */
public final class LarkRobot {

    @NotNull
    private final NVContext nvContext;

    public LarkRobot(@NotNull NVContext nvContext) {
        t.j(nvContext, "nvContext");
        this.nvContext = nvContext;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void sendRequest(String str, String str2, String str3) {
        ProgressDialog progressDialog = new ProgressDialog(this.nvContext.getContext());
        progressDialog.successListener = new Callback() { // from class: com.narvii.util.debug.a
            @Override // com.narvii.util.Callback
            public final void call(Object obj) {
                LarkRobot.sendRequest$lambda$0(this.f2820a, (ApiResponse) obj);
            }
        };
        ApiRequest.Builder builderParam = ApiRequest.builder().post()._url("https://open-hl.feishu.cn/open-apis/bot/hook/a461c3d1c6684cb79f3b42605017ef54").param("title", str + '@' + str2);
        String strSubstring = str3.substring(0, o.j(RtcEngineEvent.EvtType.EVT_RECAP_INDICATION, str3.length()));
        t.i(strSubstring, "substring(...)");
        ApiRequest apiRequestBuild = builderParam.param("text", strSubstring).build();
        Object service = this.nvContext.getService("api");
        t.i(service, "getService(...)");
        ((ApiService) service).exec(apiRequestBuild, progressDialog.dismissListener);
        progressDialog.show();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void sendRequest$lambda$0(LarkRobot this$0, ApiResponse apiResponse) {
        t.j(this$0, "this$0");
        Utils.showShortToast(this$0.nvContext.getContext(), this$0.nvContext.getContext().getString(R.string.success));
    }

    public final void send(@NotNull final String title, @NotNull final String text) {
        t.j(title, "title");
        t.j(text, "text");
        final NVContext nVContext = this.nvContext;
        final int i10 = R.style.CustomDialog;
        new LarkUserPicker(nVContext, i10) { // from class: com.narvii.util.debug.LarkRobot$send$picker$1
            @Override // com.narvii.util.debug.LarkUserPicker
            protected void onUserClicked(@Nullable String str) {
                super.onUserClicked(str);
                dismiss();
                this.this$0.sendRequest(title, str, text);
            }
        }.show();
    }
}
