package com.narvii.chat;

import android.content.Intent;
import com.fasterxml.jackson.databind.node.ArrayNode;
import com.narvii.app.FragmentWrapperActivity;
import com.narvii.app.NVContext;
import com.narvii.chat.thread.ThreadListResponse;
import com.narvii.model.ChatThread;
import com.narvii.model.NVObject;
import com.narvii.model.api.ApiResponse;
import com.narvii.util.Callback;
import com.narvii.util.JacksonUtils;
import com.narvii.util.NVToast;
import com.narvii.util.dialog.ProgressDialog;
import com.narvii.util.http.ApiRequest;
import com.narvii.util.http.ApiResponseListener;
import com.narvii.util.http.ApiService;
import com.narvii.util.http.NameValuePair;
import java.util.List;

/* loaded from: classes2.dex */
public class RequestChatUserHelper {
    NVContext context;
    String objectId;
    int objectType = 0;
    String uid;

    public RequestChatUserHelper(NVContext nVContext) {
        this.context = nVContext;
    }

    public void request(final NVObject nVObject, final int i, final String str, final Callback<Intent> callback) {
        final ProgressDialog progressDialog = new ProgressDialog(this.context.getContext());
        progressDialog.show();
        final ApiService apiService = (ApiService) this.context.getService("api");
        final ApiResponseListener<ThreadResponse> apiResponseListener = new ApiResponseListener<ThreadResponse>(ThreadResponse.class) { // from class: com.narvii.chat.RequestChatUserHelper.1
            @Override // com.narvii.util.http.ApiResponseListener
            public void onFinish(ApiRequest apiRequest, ThreadResponse threadResponse) throws Exception {
                if (progressDialog.isShowing()) {
                    progressDialog.dismiss();
                    Intent intent = FragmentWrapperActivity.intent(ChatFragment.class);
                    intent.putExtra("id", threadResponse.thread.threadId);
                    intent.putExtra("justCreated", true);
                    intent.putExtra("thread", JacksonUtils.writeAsString(threadResponse.thread));
                    intent.putExtra("attachObj", JacksonUtils.writeAsString(nVObject));
                    intent.putExtra("attachMessage", str);
                    intent.putExtra("attachObjType", i);
                    callback.call(intent);
                }
            }

            @Override // com.narvii.util.http.ApiResponseListener
            public void onFail(ApiRequest apiRequest, int i2, List<NameValuePair> list, String str2, ApiResponse apiResponse, Throwable th) {
                progressDialog.dismiss();
                NVToast.makeText(RequestChatUserHelper.this.context.getContext(), str2, 0).show();
            }
        };
        apiService.exec(ApiRequest.builder().chatServer().path("/chat/thread?type=exist-single&cv=1.2&q=" + nVObject.uid()).build(), new ApiResponseListener<ThreadListResponse>(ThreadListResponse.class) { // from class: com.narvii.chat.RequestChatUserHelper.2
            @Override // com.narvii.util.http.ApiResponseListener
            public void onFinish(ApiRequest apiRequest, ThreadListResponse threadListResponse) throws Exception {
                if (threadListResponse.threadList.size() <= 0 || !progressDialog.isShowing()) {
                    return;
                }
                progressDialog.dismiss();
                ChatThread chatThread = threadListResponse.threadList.get(0);
                Intent intent = FragmentWrapperActivity.intent(ChatFragment.class);
                intent.putExtra("id", chatThread.threadId);
                intent.putExtra("thread", JacksonUtils.writeAsString(chatThread));
                intent.putExtra("attachObj", JacksonUtils.writeAsString(nVObject));
                intent.putExtra("attachMessage", str);
                intent.putExtra("attachObjType", i);
                callback.call(intent);
            }

            @Override // com.narvii.util.http.ApiResponseListener
            public void onFail(ApiRequest apiRequest, int i2, List<NameValuePair> list, String str2, ApiResponse apiResponse, Throwable th) {
                if (i2 == 1600) {
                    if (progressDialog.isShowing()) {
                        ApiRequest.Builder builder = ApiRequest.builder();
                        builder.post().chatServer();
                        builder.path("/chat/thread");
                        builder.param("type", 0);
                        ArrayNode arrayNodeCreateArrayNode = JacksonUtils.createArrayNode();
                        arrayNodeCreateArrayNode.add(nVObject.uid());
                        builder.param("inviteeUids", arrayNodeCreateArrayNode);
                        apiService.exec(builder.build(), apiResponseListener);
                        return;
                    }
                    return;
                }
                progressDialog.dismiss();
                NVToast.makeText(RequestChatUserHelper.this.context.getContext(), str2, 0).show();
            }
        });
    }
}
