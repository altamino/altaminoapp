package com.narvii.monetization.bubble;

import android.content.DialogInterface;
import android.content.Intent;
import android.os.Build;
import android.view.View;
import android.widget.RelativeLayout;
import com.fasterxml.jackson.databind.node.ObjectNode;
import com.narvii.amino.mastes.R;
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
import java.util.Iterator;
import java.util.List;

/* loaded from: classes3.dex */
public class BubbleHelper {
    ApiRequest activeBubbleRequest;
    BubbleService bubbleService;
    NVContext context;
    private ApiRequest deleteBubbleRequest;

    public BubbleHelper(NVContext nVContext) {
        this.context = nVContext;
        this.bubbleService = (BubbleService) nVContext.getService("bubble");
    }

    public void sendBubbleNotification(ChatBubble chatBubble, boolean z, String str) {
        sendBubbleNotification(chatBubble, z, str, false);
    }

    public void sendBubbleNotification(ChatBubble chatBubble, boolean z, String str, boolean z2) {
        if (chatBubble == null) {
            return;
        }
        NotificationCenter notificationCenter = (NotificationCenter) this.context.getService("notification");
        ChatBubbleNotificationWrapper chatBubbleNotificationWrapper = new ChatBubbleNotificationWrapper();
        chatBubbleNotificationWrapper.chatBubble = chatBubble;
        chatBubbleNotificationWrapper.id = chatBubble.id();
        chatBubbleNotificationWrapper.threadId = str;
        chatBubbleNotificationWrapper.applyForAll = z2;
        chatBubbleNotificationWrapper.action = z ? 1 : 0;
        notificationCenter.sendNotification(new Notification("update", chatBubbleNotificationWrapper));
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
                    callback2.call(false);
                }
            }
        });
        aCMAlertDialog.addButton(R.string.no, new View.OnClickListener() { // from class: com.narvii.monetization.bubble.BubbleHelper.2
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                Callback callback2 = callback;
                if (callback2 != null) {
                    callback2.call(false);
                }
            }
        });
        aCMAlertDialog.addButton(R.string.yes, new View.OnClickListener() { // from class: com.narvii.monetization.bubble.BubbleHelper.3
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                Callback callback2 = callback;
                if (callback2 != null) {
                    callback2.call(true);
                }
            }
        });
        aCMAlertDialog.show();
    }

    public void showBubbleEditActionDialog(final Callback callback, final Callback callback2) {
        ActionSheetDialog actionSheetDialog = new ActionSheetDialog(this.context.getContext());
        actionSheetDialog.addItem(R.string.edit_chat_bubble, false);
        actionSheetDialog.addItem(R.string.delete_chat_bubble, true);
        actionSheetDialog.setOnClickListener(new DialogInterface.OnClickListener() { // from class: com.narvii.monetization.bubble.BubbleHelper.4
            @Override // android.content.DialogInterface.OnClickListener
            public void onClick(DialogInterface dialogInterface, int i) {
                Callback callback3;
                if (i != 0) {
                    if (i == 1 && (callback3 = callback2) != null) {
                        callback3.call(true);
                        return;
                    }
                    return;
                }
                Callback callback4 = callback;
                if (callback4 != null) {
                    callback4.call(true);
                }
            }
        });
        actionSheetDialog.show();
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

    /* renamed from: com.narvii.monetization.bubble.BubbleHelper$6, reason: invalid class name */
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

    protected void changeBubbleActiveStatus(final ChatBubble chatBubble, final boolean z, final Callback<Boolean> callback) {
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
        sb.append(z ? "/activate" : "/deactivate");
        this.activeBubbleRequest = new ApiRequest.Builder().path(sb.toString()).post().build();
        apiService.exec(this.activeBubbleRequest, new ApiResponseListener<ApiResponse>(ApiResponse.class) { // from class: com.narvii.monetization.bubble.BubbleHelper.8
            @Override // com.narvii.util.http.ApiResponseListener
            public void onFinish(ApiRequest apiRequest, ApiResponse apiResponse) throws Exception {
                super.onFinish(apiRequest, apiResponse);
                Callback callback2 = callback;
                if (callback2 != null) {
                    callback2.call(Boolean.TRUE);
                }
                chatBubble.isActivated = z;
                ((NotificationCenter) BubbleHelper.this.context.getService("notification")).sendNotification(new Notification("update", chatBubble));
                progressDialog.dismiss();
            }

            @Override // com.narvii.util.http.ApiResponseListener
            public void onFail(ApiRequest apiRequest, int i, List<NameValuePair> list, String str, ApiResponse apiResponse, Throwable th) {
                super.onFail(apiRequest, i, list, str, apiResponse, th);
                NVToast.makeText(BubbleHelper.this.context.getContext(), str, 1).show();
                Callback callback2 = callback;
                if (callback2 != null) {
                    callback2.call(Boolean.FALSE);
                }
                progressDialog.dismiss();
            }
        });
    }

    public void editChatBubble(ChatBubble chatBubble) {
        Intent intent = FragmentWrapperActivity.intent(BubbleEditFragment.class);
        intent.putExtra(BubbleEditFragment.KEY_CHAT_BUBBLE, JacksonUtils.writeAsString(chatBubble));
        this.context.getContext().startActivity(intent);
    }

    public void sendApplyBubbleRequest(final ChatBubble chatBubble, final boolean z, final String str, final Callback<Boolean> callback) {
        if (z || str != null) {
            if (chatBubble == null) {
                Log.e("try to apply bubble while is empty");
                if (callback != null) {
                    callback.call(false);
                    return;
                }
                return;
            }
            final ProgressDialog progressDialog = new ProgressDialog(this.context.getContext());
            progressDialog.show();
            ObjectNode objectNodeCreateObjectNode = JacksonUtils.createObjectNode();
            String strId = chatBubble.id();
            int i = chatBubble.type;
            if (i == -1 || i == -2) {
                strId = null;
            }
            objectNodeCreateObjectNode.put("bubbleId", strId);
            objectNodeCreateObjectNode.put("applyToAll", z ? 1 : 0);
            if (!z) {
                objectNodeCreateObjectNode.put("threadId", str);
            }
            ((ApiService) this.context.getService("api")).exec(new ApiRequest.Builder().post().path("chat/thread/apply-bubble").body(objectNodeCreateObjectNode).build(), new ApiResponseListener<ApiResponse>(ApiResponse.class) { // from class: com.narvii.monetization.bubble.BubbleHelper.9
                @Override // com.narvii.util.http.ApiResponseListener
                public void onFinish(ApiRequest apiRequest, ApiResponse apiResponse) throws Exception {
                    super.onFinish(apiRequest, apiResponse);
                    progressDialog.dismiss();
                    Callback callback2 = callback;
                    if (callback2 != null) {
                        callback2.call(Boolean.TRUE);
                    }
                    if (z) {
                        BubbleHelper.this.sendBubbleNotification(chatBubble, false, null, true);
                        return;
                    }
                    String str2 = str;
                    if (str2 != null) {
                        BubbleHelper.this.sendBubbleNotification(chatBubble, false, str2);
                    }
                }

                @Override // com.narvii.util.http.ApiResponseListener
                public void onFail(ApiRequest apiRequest, int i2, List<NameValuePair> list, String str2, ApiResponse apiResponse, Throwable th) {
                    super.onFail(apiRequest, i2, list, str2, apiResponse, th);
                    progressDialog.dismiss();
                    Callback callback2 = callback;
                    if (callback2 != null) {
                        callback2.call(Boolean.FALSE);
                    }
                    NVToast.makeText(BubbleHelper.this.context.getContext(), str2, 1).show();
                }
            });
        }
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
        this.deleteBubbleRequest = new ApiRequest.Builder().path("chat/chat-bubble/" + str).delete().build();
        apiService.exec(this.deleteBubbleRequest, new ApiResponseListener<ApiResponse>(ApiResponse.class) { // from class: com.narvii.monetization.bubble.BubbleHelper.11
            @Override // com.narvii.util.http.ApiResponseListener
            public void onFinish(ApiRequest apiRequest, ApiResponse apiResponse) throws Exception {
                super.onFinish(apiRequest, apiResponse);
                Callback callback2 = callback;
                if (callback2 != null) {
                    callback2.call(Boolean.TRUE);
                }
                progressDialog.dismiss();
            }

            @Override // com.narvii.util.http.ApiResponseListener
            public void onFail(ApiRequest apiRequest, int i, List<NameValuePair> list, String str2, ApiResponse apiResponse, Throwable th) {
                super.onFail(apiRequest, i, list, str2, apiResponse, th);
                NVToast.makeText(BubbleHelper.this.context.getContext(), str2, 1).show();
                Callback callback2 = callback;
                if (callback2 != null) {
                    callback2.call(Boolean.FALSE);
                }
                progressDialog.dismiss();
            }
        });
    }

    public RelativeLayout.LayoutParams getSlotLayParams(int i, int i2, int i3, int i4, int i5, int i6, boolean z) {
        return getSlotLayParams(i, i2, i2, i3, i4, i4, i4, i4, i5, i6, z);
    }

    public RelativeLayout.LayoutParams getSlotLayParams(int i, int i2, int i3, int i4, int i5, int i6, int i7, int i8, int i9, int i10, boolean z) {
        RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(i2, i3);
        if (i4 == 1) {
            if (Build.VERSION.SDK_INT >= 17) {
                layoutParams.addRule(z ? 18 : 19, i);
            } else {
                layoutParams.addRule(z ? 5 : 7, i);
            }
            layoutParams.addRule(6, i);
            int i11 = z ? 0 : (-i5) + i9;
            int i12 = z ? (-i5) + i9 : 0;
            layoutParams.topMargin = (-i6) - i10;
            layoutParams.leftMargin = Utils.isRtl() ? i11 : i12;
            layoutParams.bottomMargin = 0;
            if (Utils.isRtl()) {
                i11 = i12;
            }
            layoutParams.rightMargin = i11;
        } else if (i4 == 2) {
            if (Build.VERSION.SDK_INT >= 17) {
                layoutParams.addRule(z ? 19 : 18, i);
            } else {
                layoutParams.addRule(z ? 7 : 5, i);
            }
            layoutParams.addRule(6, i);
            int i13 = z ? (-i7) - i9 : 0;
            int i14 = z ? 0 : (-i7) - i9;
            layoutParams.leftMargin = Utils.isRtl() ? i13 : i14;
            layoutParams.topMargin = (-i6) - i10;
            if (Utils.isRtl()) {
                i13 = i14;
            }
            layoutParams.rightMargin = i13;
            layoutParams.bottomMargin = 0;
        } else if (i4 == 3) {
            if (Build.VERSION.SDK_INT >= 17) {
                layoutParams.addRule(z ? 18 : 19, i);
            } else {
                layoutParams.addRule(z ? 5 : 7, i);
            }
            layoutParams.addRule(8, i);
            int i15 = z ? (-i5) + i9 : 0;
            int i16 = z ? 0 : (-i5) + i9;
            layoutParams.leftMargin = Utils.isRtl() ? i16 : i15;
            layoutParams.topMargin = 0;
            if (!Utils.isRtl()) {
                i15 = i16;
            }
            layoutParams.rightMargin = i15;
            layoutParams.bottomMargin = (-i8) + i10;
        } else if (i4 == 4) {
            if (Build.VERSION.SDK_INT >= 17) {
                layoutParams.addRule(z ? 19 : 18, i);
            } else {
                layoutParams.addRule(z ? 7 : 5, i);
            }
            layoutParams.addRule(8, i);
            int i17 = z ? 0 : (-i7) - i9;
            int i18 = z ? (-i7) - i9 : 0;
            layoutParams.leftMargin = Utils.isRtl() ? i18 : i17;
            layoutParams.topMargin = 0;
            if (!Utils.isRtl()) {
                i17 = i18;
            }
            layoutParams.rightMargin = i17;
            layoutParams.bottomMargin = (-i8) + i10;
        }
        return layoutParams;
    }

    public int getSlotPadding(int i, int i2, BubbleInfo bubbleInfo) {
        return getSlotPadding(i, i2, bubbleInfo, 1.0f);
    }

    public int getSlotPadding(int i, int i2, BubbleInfo bubbleInfo, float f) {
        List<BubbleSlot> list;
        int i3 = 0;
        if (bubbleInfo == null || (list = bubbleInfo.slots) == null || list.size() == 0) {
            return 0;
        }
        List<BubbleSlot> list2 = bubbleInfo.slots;
        int i4 = (int) (i2 * 0.5f);
        float f2 = this.bubbleService.scaleXY;
        if (i == 1) {
            Iterator<BubbleSlot> it = list2.iterator();
            while (it.hasNext()) {
                int i5 = it.next().align;
                if (i5 == 2 || i5 == 1) {
                    int i6 = (int) ((-i4) - ((r8.y * this.bubbleService.scaleXY) * f));
                    if (i6 < i3) {
                        i3 = i6;
                    }
                }
            }
        } else if (i == 2) {
            Iterator<BubbleSlot> it2 = list2.iterator();
            while (it2.hasNext()) {
                int i7 = it2.next().align;
                if (i7 == 1 || i7 == 3) {
                    int i8 = (int) ((-i4) + (r8.x * this.bubbleService.scaleXY * f));
                    if (i8 < i3) {
                        i3 = i8;
                    }
                }
            }
        } else if (i == 4) {
            Iterator<BubbleSlot> it3 = list2.iterator();
            while (it3.hasNext()) {
                int i9 = it3.next().align;
                if (i9 == 3 || i9 == 4) {
                    int i10 = (int) ((-i4) + (r8.y * this.bubbleService.scaleXY * f));
                    if (i10 < i3) {
                        i3 = i10;
                    }
                }
            }
        } else if (i == 3) {
            Iterator<BubbleSlot> it4 = list2.iterator();
            while (it4.hasNext()) {
                int i11 = it4.next().align;
                if (i11 == 4 || i11 == 2) {
                    int i12 = (int) ((-i4) - ((r8.x * this.bubbleService.scaleXY) * f));
                    if (i12 < i3) {
                        i3 = i12;
                    }
                }
            }
        }
        return Math.abs(i3);
    }

    public static String getChatMessageBubbleId(boolean z, ChatMessage chatMessage, ChatBubble chatBubble) {
        if (chatMessage == null) {
            return null;
        }
        if (!z) {
            return chatMessage.chatBubbleId;
        }
        if (chatBubble != null && chatBubble.id() != null) {
            if (Utils.isEqualsNotNull(chatBubble.id(), "default")) {
                return null;
            }
            return chatBubble.id();
        }
        return chatMessage.chatBubbleId;
    }

    public static int getChatMessageBubbleVersion(boolean z, ChatMessage chatMessage, ChatBubble chatBubble) {
        if (chatMessage == null) {
            return 0;
        }
        if (!z) {
            return chatMessage.chatBubbleVersion;
        }
        if (chatBubble != null && !Utils.isEquals(chatBubble.id(), "default") && chatBubble.id() != null) {
            return chatBubble.version();
        }
        return chatMessage.chatBubbleVersion;
    }
}
