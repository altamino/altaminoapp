package com.narvii.chat.core;

import com.narvii.chat.MessageResponse;
import com.narvii.model.api.ApiResponse;
import com.narvii.util.http.ApiRequest;
import com.narvii.util.http.ApiResponseProgressListener;
import com.narvii.util.http.NameValuePair;
import java.util.List;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: ChatService.kt */
/* loaded from: classes2.dex */
public final class ChatService$postListener$1 extends ApiResponseProgressListener<MessageResponse> {
    final /* synthetic */ ChatService this$0;

    @Override // com.narvii.util.http.PostProgressListener
    public void onPostProgress(int i, int i2) {
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    ChatService$postListener$1(ChatService chatService, Class cls) {
        super(cls);
        this.this$0 = chatService;
    }

    @Override // com.narvii.util.http.ApiResponseListener
    public void onFinish(ApiRequest req, MessageResponse resp) throws Exception {
        Intrinsics.checkParameterIsNotNull(req, "req");
        Intrinsics.checkParameterIsNotNull(resp, "resp");
        this.this$0.onPostFinished(req, resp);
    }

    @Override // com.narvii.util.http.ApiResponseListener
    public void onFail(ApiRequest req, int i, List<? extends NameValuePair> list, String message, ApiResponse apiResponse, Throwable th) {
        Intrinsics.checkParameterIsNotNull(req, "req");
        Intrinsics.checkParameterIsNotNull(message, "message");
        this.this$0.onPostFailed(req, i, list, message, apiResponse, th);
    }
}
