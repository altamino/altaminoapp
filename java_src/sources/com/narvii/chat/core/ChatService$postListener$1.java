package com.narvii.chat.core;

import com.narvii.chat.MessageResponse;
import com.narvii.model.api.ApiResponse;
import com.narvii.util.http.ApiRequest;
import com.narvii.util.http.ApiResponseProgressListener;
import com.narvii.util.http.NameValuePair;
import java.util.List;
import kotlin.jvm.internal.t;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes7.dex */
public final class ChatService$postListener$1 extends ApiResponseProgressListener<MessageResponse> {
    final /* synthetic */ ChatService this$0;

    @Override // com.narvii.util.http.PostProgressListener
    public void onPostProgress(int i10, int i11) {
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    ChatService$postListener$1(ChatService chatService, Class<MessageResponse> cls) {
        super(cls);
        this.this$0 = chatService;
    }

    @Override // com.narvii.util.http.ApiResponseListener
    public void onFail(@NotNull ApiRequest req, int i10, @Nullable List<? extends NameValuePair> list, @NotNull String message, @Nullable ApiResponse apiResponse, @Nullable Throwable th) {
        t.j(req, "req");
        t.j(message, "message");
        this.this$0.onPostFailed(req, i10, list, message, apiResponse, th);
    }

    @Override // com.narvii.util.http.ApiResponseListener
    public void onFinish(@NotNull ApiRequest req, @NotNull MessageResponse resp) throws Exception {
        t.j(req, "req");
        t.j(resp, "resp");
        this.this$0.onPostFinished(req, resp);
    }
}
