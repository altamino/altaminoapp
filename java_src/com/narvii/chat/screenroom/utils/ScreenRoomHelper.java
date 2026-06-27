package com.narvii.chat.screenroom.utils;

import android.view.View;
import android.widget.TextView;
import com.narvii.account.AccountService;
import com.narvii.amino.mastes.R;
import com.narvii.app.NVActivity;
import com.narvii.app.NVContext;
import com.narvii.app.NVFragment;
import com.narvii.chat.signalling.SignallingChannel;
import com.narvii.model.ChatThread;
import com.narvii.model.api.ApiResponse;
import com.narvii.notification.Notification;
import com.narvii.util.Callback;
import com.narvii.util.NVToast;
import com.narvii.util.dialog.AlertDialog;
import com.narvii.util.http.ApiRequest;
import com.narvii.util.http.ApiResponseListener;
import com.narvii.util.http.ApiService;
import com.narvii.util.http.NameValuePair;
import java.util.List;

/* loaded from: classes2.dex */
public class ScreenRoomHelper {
    public static final int ROOM_ROLE_HOST = 1;
    public static final int ROOM_ROLE_VIEWER = 0;
    public static final String TAG_SR_ACTION = "SR_ACTION";
    private NVContext context;

    public int getDefaultScreenRoomPermission() {
        return -1;
    }

    public ScreenRoomHelper(NVContext nVContext) {
        this.context = nVContext;
    }

    public void requestToJoinChatThread(final ChatThread chatThread, final Callback<Boolean> callback) {
        if (chatThread == null) {
            if (callback != null) {
                callback.call(false);
                return;
            }
            return;
        }
        if (chatThread.membershipStatus == 1) {
            if (callback != null) {
                callback.call(true);
                return;
            }
            return;
        }
        String str = chatThread.threadId;
        String userId = ((AccountService) this.context.getService("account")).getUserId();
        ((ApiService) this.context.getService("api")).exec(ApiRequest.builder().chatServer().post().path("/chat/thread/" + str + "/member/" + userId).build(), new ApiResponseListener<ApiResponse>(ApiResponse.class) { // from class: com.narvii.chat.screenroom.utils.ScreenRoomHelper.1
            @Override // com.narvii.util.http.ApiResponseListener
            public void onFinish(ApiRequest apiRequest, ApiResponse apiResponse) throws Exception {
                super.onFinish(apiRequest, apiResponse);
                ChatThread chatThread2 = (ChatThread) chatThread.m46clone();
                chatThread2.membershipStatus = 1;
                Notification notification = new Notification("update", chatThread2);
                if (ScreenRoomHelper.this.context instanceof NVFragment) {
                    ((NVFragment) ScreenRoomHelper.this.context).sendNotification(notification);
                } else if (ScreenRoomHelper.this.context instanceof NVActivity) {
                    ((NVActivity) ScreenRoomHelper.this.context).sendNotification(notification);
                }
                Callback callback2 = callback;
                if (callback2 != null) {
                    callback2.call(true);
                }
            }

            @Override // com.narvii.util.http.ApiResponseListener
            public void onFail(ApiRequest apiRequest, int i, List<NameValuePair> list, String str2, ApiResponse apiResponse, Throwable th) {
                super.onFail(apiRequest, i, list, str2, apiResponse, th);
                NVToast.makeText(ScreenRoomHelper.this.context.getContext(), str2, 1).show();
                Callback callback2 = callback;
                if (callback2 != null) {
                    callback2.call(false);
                }
            }
        });
    }

    public void showPromoteToPresenterDialog(SignallingChannel signallingChannel, ChatThread chatThread, final Callback callback, Callback callback2) {
        if (signallingChannel == null) {
            if (callback2 != null) {
                callback2.call(null);
                return;
            }
            return;
        }
        if (chatThread != null && chatThread.type != 2) {
            if (callback != null) {
                callback.call(null);
                return;
            }
            return;
        }
        final AlertDialog alertDialog = new AlertDialog(this.context.getContext());
        alertDialog.setContentView(R.layout.dialog_stranger_note);
        int i = signallingChannel.channelType;
        ((TextView) alertDialog.findViewById(R.id.stranger_note_content)).setText(this.context.getContext().getResources().getString(R.string.stranger_note_content_1_live));
        TextView textView = (TextView) alertDialog.findViewById(R.id.no_thanks);
        textView.setText(i != 1 ? R.string.view_only : R.string.listen_only);
        textView.setOnClickListener(new View.OnClickListener() { // from class: com.narvii.chat.screenroom.utils.ScreenRoomHelper.2
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                alertDialog.dismiss();
            }
        });
        alertDialog.findViewById(R.id.join).setOnClickListener(new View.OnClickListener() { // from class: com.narvii.chat.screenroom.utils.ScreenRoomHelper.3
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                alertDialog.dismiss();
                Callback callback3 = callback;
                if (callback3 != null) {
                    callback3.call(null);
                }
            }
        });
        alertDialog.show();
    }
}
