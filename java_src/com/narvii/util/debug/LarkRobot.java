package com.narvii.util.debug;

import com.google.android.exoplayer2.util.MimeTypes;
import com.narvii.app.NVContext;
import com.narvii.chat.input.MentionedEditText;
import com.narvii.lib.R;
import com.narvii.model.api.ApiResponse;
import com.narvii.util.Callback;
import com.narvii.util.Utils;
import com.narvii.util.dialog.ProgressDialog;
import com.narvii.util.http.ApiRequest;
import com.narvii.util.http.ApiService;
import io.agora.rtc.internal.RtcEngineEvent;
import kotlin.TypeCastException;
import kotlin.jvm.internal.Intrinsics;
import kotlin.ranges.RangesKt___RangesKt;

/* compiled from: LarkRobot.kt */
/* loaded from: classes3.dex */
public final class LarkRobot {
    private final NVContext nvContext;

    public LarkRobot(NVContext nvContext) {
        Intrinsics.checkParameterIsNotNull(nvContext, "nvContext");
        this.nvContext = nvContext;
    }

    public final void send(final String title, final String text) {
        Intrinsics.checkParameterIsNotNull(title, "title");
        Intrinsics.checkParameterIsNotNull(text, "text");
        final NVContext nVContext = this.nvContext;
        final int i = R.style.CustomDialog;
        new LarkUserPicker(nVContext, i) { // from class: com.narvii.util.debug.LarkRobot$send$picker$1
            @Override // com.narvii.util.debug.LarkUserPicker
            protected void onUserClicked(String str) {
                super.onUserClicked(str);
                dismiss();
                this.this$0.sendRequest(title, str, text);
            }
        }.show();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void sendRequest(String str, String str2, String str3) {
        ProgressDialog progressDialog = new ProgressDialog(this.nvContext.getContext());
        progressDialog.successListener = new Callback<ApiResponse>() { // from class: com.narvii.util.debug.LarkRobot.sendRequest.1
            @Override // com.narvii.util.Callback
            public final void call(ApiResponse apiResponse) {
                Utils.showShortToast(LarkRobot.this.nvContext.getContext(), LarkRobot.this.nvContext.getContext().getString(R.string.success));
            }
        };
        ApiRequest.Builder builderParam = ApiRequest.builder().post()._url("https://open-hl.feishu.cn/open-apis/bot/hook/a461c3d1c6684cb79f3b42605017ef54").param("title", str + MentionedEditText.DEFAULT_METION_TAG + str2);
        int iCoerceAtMost = RangesKt___RangesKt.coerceAtMost(RtcEngineEvent.EvtType.EVT_RECAP_INDICATION, str3.length());
        if (str3 == null) {
            throw new TypeCastException("null cannot be cast to non-null type java.lang.String");
        }
        String strSubstring = str3.substring(0, iCoerceAtMost);
        Intrinsics.checkExpressionValueIsNotNull(strSubstring, "(this as java.lang.Strin…ing(startIndex, endIndex)");
        ApiRequest apiRequestBuild = builderParam.param(MimeTypes.BASE_TYPE_TEXT, strSubstring).build();
        Object service = this.nvContext.getService("api");
        Intrinsics.checkExpressionValueIsNotNull(service, "nvContext.getService<ApiService>(\"api\")");
        ((ApiService) service).exec(apiRequestBuild, progressDialog.dismissListener);
        progressDialog.show();
    }
}
