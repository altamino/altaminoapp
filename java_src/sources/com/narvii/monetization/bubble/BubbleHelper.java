package com.narvii.monetization.bubble;

import android.content.Context;
import android.content.DialogInterface;
import android.content.Intent;
import android.view.View;
import android.widget.RelativeLayout;
import com.fasterxml.jackson.databind.node.ObjectNode;
import com.narvii.amino.master.R;
import com.narvii.app.FragmentWrapperActivity;
import com.narvii.app.NVContext;
import com.narvii.list.NVPagedAdapter;
import com.narvii.model.BubbleInfo;
import com.narvii.model.BubbleSlot;
import com.narvii.model.ChatBubble;
import com.narvii.model.ChatBubbleNotificationWrapper;
import com.narvii.model.ChatMessage;
import com.narvii.model.api.ApiResponse;
import com.narvii.notification.Notification;
import com.narvii.notification.NotificationCenter;
import com.narvii.util.Callback;
import com.narvii.util.JacksonUtils;
import com.narvii.util.Log;
import com.narvii.util.NVToast;
import com.narvii.util.Utils;
import com.narvii.util.dialog.ActionSheetDialog;
import com.narvii.util.dialog.ProgressDialog;
import com.narvii.util.http.ApiRequest;
import com.narvii.util.http.ApiResponseListener;
import com.narvii.util.http.ApiService;
import com.narvii.util.http.NameValuePair;
import com.narvii.widget.ACMAlertDialog;
import com.safedk.android.utils.Logger;
import java.util.List;

/* JADX INFO: loaded from: classes2.dex */
public class BubbleHelper {
    ApiRequest activeBubbleRequest;
    BubbleService bubbleService;
    NVContext context;
    private ApiRequest deleteBubbleRequest;

    /* JADX INFO: renamed from: com.narvii.monetization.bubble.BubbleHelper$6, reason: invalid class name */
    class AnonymousClass6 implements Callback {
        final /* synthetic */ ChatBubble val$bubble;

        AnonymousClass6(ChatBubble chatBubble) {
            this.val$bubble = chatBubble;
        }

        @Override // com.narvii.util.Callback
        public void call(Object obj) {
            ACMAlertDialog aCMAlertDialog = new ACMAlertDialog(BubbleHelper.this.context.getContext());
            aCMAlertDialog.setMessage(R.string.delete_bubble_confirm);
            aCMAlertDialog.addButton(R.string.no, null);
            aCMAlertDialog.addButton(R.string.yes, new View.OnClickListener() { // from class: com.narvii.monetization.bubble.BubbleHelper.6.1
                @Override // android.view.View.OnClickListener
                public void onClick(View view) {
                    AnonymousClass6 anonymousClass6 = AnonymousClass6.this;
                    BubbleHelper.this.deleteBubble(anonymousClass6.val$bubble.id(), new Callback<Boolean>() { // from class: com.narvii.monetization.bubble.BubbleHelper.6.1.1
                        @Override // com.narvii.util.Callback
                        public void call(Boolean bool) {
                            if (bool.booleanValue()) {
                                ((NotificationCenter) BubbleHelper.this.context.getService("notification")).sendNotification(new Notification("delete", AnonymousClass6.this.val$bubble));
                            }
                        }
                    });
                }
            });
            aCMAlertDialog.show();
        }
    }

    public static String getChatMessageBubbleId(boolean z6, ChatMessage chatMessage, ChatBubble chatBubble) {
        if (chatMessage == null) {
            return null;
        }
        if (!z6) {
            return chatMessage.chatBubbleId;
        }
        if (chatBubble == null || chatBubble.id() == null) {
            return chatMessage.chatBubbleId;
        }
        if (Utils.isEqualsNotNull(chatBubble.id(), "default")) {
            return null;
        }
        return chatBubble.id();
    }

    public static void safedk_Context_startActivity_97cb3195734cf5c9cc3418feeafa6dd6(Context p0, Intent p1) {
        Logger.d("SafeDK-Special|SafeDK: Call> Landroid/content/Context;->startActivity(Landroid/content/Intent;)V");
        if (p1 == null) {
            return;
        }
        p0.startActivity(p1);
    }

    public RelativeLayout.LayoutParams getSlotLayParams(int i10, int i11, int i12, int i13, int i14, int i15, boolean z6) {
        return getSlotLayParams(i10, i11, i11, i12, i13, i13, i13, i13, i14, i15, z6);
    }

    public int getSlotPadding(int i10, int i11, BubbleInfo bubbleInfo) {
        return getSlotPadding(i10, i11, bubbleInfo, 1.0f);
    }

    public void sendBubbleNotification(ChatBubble chatBubble, boolean z6, String str) {
        sendBubbleNotification(chatBubble, z6, str, false);
    }

    public static int getChatMessageBubbleVersion(boolean z6, ChatMessage chatMessage, ChatBubble chatBubble) {
        if (chatMessage == null) {
            return 0;
        }
        if (z6) {
            return (chatBubble == null || Utils.isEquals(chatBubble.id(), "default") || chatBubble.id() == null) ? chatMessage.chatBubbleVersion : chatBubble.version();
        }
        return chatMessage.chatBubbleVersion;
    }

    protected void changeBubbleActiveStatus(final ChatBubble chatBubble, final boolean z6, final Callback<Boolean> callback) {
        final ProgressDialog progressDialog = new ProgressDialog(this.context.getContext());
        progressDialog.show();
        progressDialog.setOnCancelListener(new DialogInterface.OnCancelListener() { // from class: com.narvii.monetization.bubble.BubbleHelper.7
            @Override // android.content.DialogInterface.OnCancelListener
            public void onCancel(DialogInterface dialogInterface) {
                BubbleHelper bubbleHelper = BubbleHelper.this;
                if (bubbleHelper.activeBubbleRequest != null) {
                    ((ApiService) bubbleHelper.context.getService("api")).abort(BubbleHelper.this.activeBubbleRequest);
                    BubbleHelper.this.activeBubbleRequest = null;
                }
            }
        });
        ApiService apiService = (ApiService) this.context.getService("api");
        StringBuilder sb = new StringBuilder();
        sb.append("chat/chat-bubble/");
        sb.append(chatBubble.id());
        sb.append(z6 ? "/activate" : "/deactivate");
        ApiRequest apiRequestBuild = new ApiRequest.Builder().path(sb.toString()).post().build();
        this.activeBubbleRequest = apiRequestBuild;
        apiService.exec(apiRequestBuild, new ApiResponseListener<ApiResponse>(ApiResponse.class) { // from class: com.narvii.monetization.bubble.BubbleHelper.8
            @Override // com.narvii.util.http.ApiResponseListener
            public void onFail(ApiRequest apiRequest, int i10, List<NameValuePair> list, String str, ApiResponse apiResponse, Throwable th) {
                super.onFail(apiRequest, i10, list, str, apiResponse, th);
                NVToast.makeText(BubbleHelper.this.context.getContext(), str, 1).show();
                Callback callback2 = callback;
                if (callback2 != null) {
                    callback2.call(Boolean.FALSE);
                }
                progressDialog.dismiss();
            }

            @Override // com.narvii.util.http.ApiResponseListener
            public void onFinish(ApiRequest apiRequest, ApiResponse apiResponse) throws Exception {
                super.onFinish(apiRequest, apiResponse);
                Callback callback2 = callback;
                if (callback2 != null) {
                    callback2.call(Boolean.TRUE);
                }
                chatBubble.isActivated = z6;
                ((NotificationCenter) BubbleHelper.this.context.getService("notification")).sendNotification(new Notification("update", chatBubble));
                progressDialog.dismiss();
            }
        });
    }

    public void deleteBubble(String str, final Callback<Boolean> callback) {
        final ProgressDialog progressDialog = new ProgressDialog(this.context.getContext());
        progressDialog.show();
        progressDialog.setOnCancelListener(new DialogInterface.OnCancelListener() { // from class: com.narvii.monetization.bubble.BubbleHelper.10
            @Override // android.content.DialogInterface.OnCancelListener
            public void onCancel(DialogInterface dialogInterface) {
                if (BubbleHelper.this.deleteBubbleRequest != null) {
                    ((ApiService) BubbleHelper.this.context.getService("api")).abort(BubbleHelper.this.deleteBubbleRequest);
                    BubbleHelper.this.deleteBubbleRequest = null;
                }
            }
        });
        ApiService apiService = (ApiService) this.context.getService("api");
        ApiRequest apiRequestBuild = new ApiRequest.Builder().path("chat/chat-bubble/" + str).delete().build();
        this.deleteBubbleRequest = apiRequestBuild;
        apiService.exec(apiRequestBuild, new ApiResponseListener<ApiResponse>(ApiResponse.class) { // from class: com.narvii.monetization.bubble.BubbleHelper.11
            @Override // com.narvii.util.http.ApiResponseListener
            public void onFail(ApiRequest apiRequest, int i10, List<NameValuePair> list, String str2, ApiResponse apiResponse, Throwable th) {
                super.onFail(apiRequest, i10, list, str2, apiResponse, th);
                NVToast.makeText(BubbleHelper.this.context.getContext(), str2, 1).show();
                Callback callback2 = callback;
                if (callback2 != null) {
                    callback2.call(Boolean.FALSE);
                }
                progressDialog.dismiss();
            }

            @Override // com.narvii.util.http.ApiResponseListener
            public void onFinish(ApiRequest apiRequest, ApiResponse apiResponse) throws Exception {
                super.onFinish(apiRequest, apiResponse);
                Callback callback2 = callback;
                if (callback2 != null) {
                    callback2.call(Boolean.TRUE);
                }
                progressDialog.dismiss();
            }
        });
    }

    public void editChatBubble(ChatBubble chatBubble) {
        Intent intent = FragmentWrapperActivity.intent(BubbleEditFragment.class);
        intent.putExtra(BubbleEditFragment.KEY_CHAT_BUBBLE, JacksonUtils.writeAsString(chatBubble));
        safedk_Context_startActivity_97cb3195734cf5c9cc3418feeafa6dd6(this.context.getContext(), intent);
    }

    public RelativeLayout.LayoutParams getSlotLayParams(int i10, int i11, int i12, int i13, int i14, int i15, int i16, int i17, int i18, int i19, boolean z6) {
        RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(i11, i12);
        if (i13 == 1) {
            layoutParams.addRule(z6 ? 18 : 19, i10);
            layoutParams.addRule(6, i10);
            int i20 = z6 ? 0 : (-i14) + i18;
            int i21 = z6 ? (-i14) + i18 : 0;
            layoutParams.topMargin = (-i15) - i19;
            layoutParams.leftMargin = Utils.isRtl() ? i20 : i21;
            layoutParams.bottomMargin = 0;
            if (Utils.isRtl()) {
                i20 = i21;
            }
            layoutParams.rightMargin = i20;
        } else if (i13 == 2) {
            layoutParams.addRule(z6 ? 19 : 18, i10);
            layoutParams.addRule(6, i10);
            int i22 = z6 ? (-i16) - i18 : 0;
            int i23 = z6 ? 0 : (-i16) - i18;
            layoutParams.leftMargin = Utils.isRtl() ? i22 : i23;
            layoutParams.topMargin = (-i15) - i19;
            if (Utils.isRtl()) {
                i22 = i23;
            }
            layoutParams.rightMargin = i22;
            layoutParams.bottomMargin = 0;
        } else if (i13 == 3) {
            layoutParams.addRule(z6 ? 18 : 19, i10);
            layoutParams.addRule(8, i10);
            int i24 = z6 ? (-i14) + i18 : 0;
            int i25 = z6 ? 0 : (-i14) + i18;
            layoutParams.leftMargin = Utils.isRtl() ? i25 : i24;
            layoutParams.topMargin = 0;
            if (!Utils.isRtl()) {
                i24 = i25;
            }
            layoutParams.rightMargin = i24;
            layoutParams.bottomMargin = (-i17) + i19;
        } else if (i13 == 4) {
            layoutParams.addRule(z6 ? 19 : 18, i10);
            layoutParams.addRule(8, i10);
            int i26 = z6 ? 0 : (-i16) - i18;
            int i27 = z6 ? (-i16) - i18 : 0;
            layoutParams.leftMargin = Utils.isRtl() ? i27 : i26;
            layoutParams.topMargin = 0;
            if (!Utils.isRtl()) {
                i26 = i27;
            }
            layoutParams.rightMargin = i26;
            layoutParams.bottomMargin = (-i17) + i19;
        }
        return layoutParams;
    }

    public int getSlotPadding(int i10, int i11, BubbleInfo bubbleInfo, float f) {
        List<BubbleSlot> list;
        int i12 = 0;
        if (bubbleInfo == null || (list = bubbleInfo.slots) == null || list.size() == 0) {
            return 0;
        }
        List<BubbleSlot> list2 = bubbleInfo.slots;
        int i13 = (int) (i11 * 0.5f);
        float f6 = this.bubbleService.scaleXY;
        if (i10 == 1) {
            for (BubbleSlot bubbleSlot : list2) {
                int i14 = bubbleSlot.align;
                if (i14 == 2 || i14 == 1) {
                    int i15 = (int) ((-i13) - ((bubbleSlot.f2487y * this.bubbleService.scaleXY) * f));
                    if (i15 < i12) {
                        i12 = i15;
                    }
                }
            }
        } else if (i10 == 2) {
            for (BubbleSlot bubbleSlot2 : list2) {
                int i16 = bubbleSlot2.align;
                if (i16 == 1 || i16 == 3) {
                    int i17 = (int) ((-i13) + (bubbleSlot2.f2486x * this.bubbleService.scaleXY * f));
                    if (i17 < i12) {
                        i12 = i17;
                    }
                }
            }
        } else if (i10 == 4) {
            for (BubbleSlot bubbleSlot3 : list2) {
                int i18 = bubbleSlot3.align;
                if (i18 == 3 || i18 == 4) {
                    int i19 = (int) ((-i13) + (bubbleSlot3.f2487y * this.bubbleService.scaleXY * f));
                    if (i19 < i12) {
                        i12 = i19;
                    }
                }
            }
        } else if (i10 == 3) {
            for (BubbleSlot bubbleSlot4 : list2) {
                int i20 = bubbleSlot4.align;
                if (i20 == 4 || i20 == 2) {
                    int i21 = (int) ((-i13) - ((bubbleSlot4.f2486x * this.bubbleService.scaleXY) * f));
                    if (i21 < i12) {
                        i12 = i21;
                    }
                }
            }
        }
        return Math.abs(i12);
    }

    public void handleBubbleWrapNotification(Notification notification, NVPagedAdapter nVPagedAdapter) {
        Object obj = notification.obj;
        if (!(obj instanceof ChatBubbleNotificationWrapper) || nVPagedAdapter == null) {
            return;
        }
        ChatBubbleNotificationWrapper chatBubbleNotificationWrapper = (ChatBubbleNotificationWrapper) obj;
        if ("update".equals(notification.action) && 1 == chatBubbleNotificationWrapper.action) {
            Notification notification2 = new Notification();
            notification2.obj = chatBubbleNotificationWrapper.chatBubble;
            notification2.id = chatBubbleNotificationWrapper.id();
            if (!chatBubbleNotificationWrapper.chatBubble.isActivated) {
                notification2.action = "delete";
                nVPagedAdapter.editList(notification2, false);
            } else {
                if (Utils.containsId(nVPagedAdapter.list(), notification2.id)) {
                    return;
                }
                notification2.action = "new";
                nVPagedAdapter.editList(notification2, false);
            }
        }
    }

    public void onClickEditBubbleButton(final ChatBubble chatBubble) {
        if (chatBubble != null && chatBubble.type == 1) {
            showBubbleEditActionDialog(new Callback() { // from class: com.narvii.monetization.bubble.BubbleHelper.5
                @Override // com.narvii.util.Callback
                public void call(Object obj) {
                    BubbleHelper.this.editChatBubble(chatBubble);
                }
            }, new AnonymousClass6(chatBubble));
        }
    }

    public void sendApplyBubbleRequest(final ChatBubble chatBubble, final boolean z6, final String str, final Callback<Boolean> callback) {
        if (z6 || str != null) {
            if (chatBubble == null) {
                Log.e("try to apply bubble while is empty");
                if (callback != null) {
                    callback.call(Boolean.FALSE);
                    return;
                }
                return;
            }
            final ProgressDialog progressDialog = new ProgressDialog(this.context.getContext());
            progressDialog.show();
            ObjectNode objectNodeCreateObjectNode = JacksonUtils.createObjectNode();
            String strId = chatBubble.id();
            int i10 = chatBubble.type;
            if (i10 == -1 || i10 == -2) {
                strId = null;
            }
            objectNodeCreateObjectNode.put("bubbleId", strId);
            objectNodeCreateObjectNode.put("applyToAll", z6 ? 1 : 0);
            if (!z6) {
                objectNodeCreateObjectNode.put("threadId", str);
            }
            ((ApiService) this.context.getService("api")).exec(new ApiRequest.Builder().post().path("chat/thread/apply-bubble").body(objectNodeCreateObjectNode).build(), new ApiResponseListener<ApiResponse>(ApiResponse.class) { // from class: com.narvii.monetization.bubble.BubbleHelper.9
                @Override // com.narvii.util.http.ApiResponseListener
                public void onFail(ApiRequest apiRequest, int i11, List<NameValuePair> list, String str2, ApiResponse apiResponse, Throwable th) {
                    super.onFail(apiRequest, i11, list, str2, apiResponse, th);
                    progressDialog.dismiss();
                    Callback callback2 = callback;
                    if (callback2 != null) {
                        callback2.call(Boolean.FALSE);
                    }
                    NVToast.makeText(BubbleHelper.this.context.getContext(), str2, 1).show();
                }

                @Override // com.narvii.util.http.ApiResponseListener
                public void onFinish(ApiRequest apiRequest, ApiResponse apiResponse) throws Exception {
                    super.onFinish(apiRequest, apiResponse);
                    progressDialog.dismiss();
                    Callback callback2 = callback;
                    if (callback2 != null) {
                        callback2.call(Boolean.TRUE);
                    }
                    if (z6) {
                        BubbleHelper.this.sendBubbleNotification(chatBubble, false, null, true);
                        return;
                    }
                    String str2 = str;
                    if (str2 != null) {
                        BubbleHelper.this.sendBubbleNotification(chatBubble, false, str2);
                    }
                }
            });
        }
    }

    public void sendBubbleNotification(ChatBubble chatBubble, boolean z6, String str, boolean z10) {
        if (chatBubble == null) {
            return;
        }
        NotificationCenter notificationCenter = (NotificationCenter) this.context.getService("notification");
        ChatBubbleNotificationWrapper chatBubbleNotificationWrapper = new ChatBubbleNotificationWrapper();
        chatBubbleNotificationWrapper.chatBubble = chatBubble;
        chatBubbleNotificationWrapper.id = chatBubble.id();
        chatBubbleNotificationWrapper.threadId = str;
        chatBubbleNotificationWrapper.applyForAll = z10;
        chatBubbleNotificationWrapper.action = z6 ? 1 : 0;
        notificationCenter.sendNotification(new Notification("update", chatBubbleNotificationWrapper));
    }

    public void showBubbleEditActionDialog(final Callback callback, final Callback callback2) {
        ActionSheetDialog actionSheetDialog = new ActionSheetDialog(this.context.getContext());
        actionSheetDialog.addItem(R.string.edit_chat_bubble, false);
        actionSheetDialog.addItem(R.string.delete_chat_bubble, true);
        actionSheetDialog.setOnClickListener(new DialogInterface.OnClickListener() { // from class: com.narvii.monetization.bubble.BubbleHelper.4
            @Override // android.content.DialogInterface.OnClickListener
            public void onClick(DialogInterface dialogInterface, int i10) {
                Callback callback3;
                if (i10 != 0) {
                    if (i10 == 1 && (callback3 = callback2) != null) {
                        callback3.call(Boolean.TRUE);
                        return;
                    }
                    return;
                }
                Callback callback4 = callback;
                if (callback4 != null) {
                    callback4.call(Boolean.TRUE);
                }
            }
        });
        actionSheetDialog.show();
    }

    public void showRemoveBubbleDialogInHistory(Callback<Boolean> callback) {
        new ACMAlertDialog(this.context.getContext());
    }

    public void showRemoveCurBubbleDialog(final Callback<Boolean> callback) {
        ACMAlertDialog aCMAlertDialog = new ACMAlertDialog(this.context.getContext());
        aCMAlertDialog.setMessage(R.string.remove_current_bubble_hint);
        aCMAlertDialog.setOnCancelListener(new DialogInterface.OnCancelListener() { // from class: com.narvii.monetization.bubble.BubbleHelper.1
            @Override // android.content.DialogInterface.OnCancelListener
            public void onCancel(DialogInterface dialogInterface) {
                Callback callback2 = callback;
                if (callback2 != null) {
                    callback2.call(Boolean.FALSE);
                }
            }
        });
        aCMAlertDialog.addButton(R.string.no, new View.OnClickListener() { // from class: com.narvii.monetization.bubble.BubbleHelper.2
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                Callback callback2 = callback;
                if (callback2 != null) {
                    callback2.call(Boolean.FALSE);
                }
            }
        });
        aCMAlertDialog.addButton(R.string.yes, new View.OnClickListener() { // from class: com.narvii.monetization.bubble.BubbleHelper.3
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                Callback callback2 = callback;
                if (callback2 != null) {
                    callback2.call(Boolean.TRUE);
                }
            }
        });
        aCMAlertDialog.show();
    }

    public BubbleHelper(NVContext nVContext) {
        this.context = nVContext;
        this.bubbleService = (BubbleService) nVContext.getService("bubble");
    }
}
