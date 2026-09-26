package com.narvii.chat.video.view;

import android.content.Context;
import android.text.TextUtils;
import android.view.View;
import com.fasterxml.jackson.databind.node.ObjectNode;
import com.narvii.amino.master.R;
import com.narvii.chat.core.ChatService;
import com.narvii.chat.signalling.ChannelUser;
import com.narvii.model.ChatMessage;
import com.narvii.model.ChatThread;
import com.narvii.util.JacksonUtils;
import com.narvii.util.http.ApiRequest;
import com.narvii.util.http.ApiService;
import java.util.Collection;
import java.util.Date;

/* JADX INFO: loaded from: classes4.dex */
public class VoiceCallHelper {
    public static final int CALL_VIEW_FINISH_DELAY = 1500;
    public static final int HINT_AUTO_DISMISS_TIME = 5000;
    public static final float PRIVATE_CALL_PRESENTER_LIMIT = 2.0f;
    public static final float RADIUS_RATIO_OF_SCREEN = 0.11f;
    private Context context;

    public int getPresenterCount(Collection<? extends ChannelUser> collection) {
        int i10 = 0;
        if (collection == null) {
            return 0;
        }
        for (ChannelUser channelUser : collection) {
            if (channelUser.joinRole == 1 && channelUser.userProfile != null) {
                i10++;
            }
        }
        return i10;
    }

    public boolean isPrivateCall(ChatThread chatThread, int i10) {
        return chatThread != null && chatThread.type == 0 && (i10 == 1 || i10 == 4);
    }

    public ChatMessage getCallChatMessage(String str, int i10) {
        Date date = new Date(ApiService.timestamp());
        ChatMessage chatMessage = new ChatMessage();
        chatMessage.setClientRefIdTmp(ChatService.Companion.generateClientRefId());
        chatMessage.createdTime = date;
        chatMessage.type = i10;
        chatMessage.threadId = str;
        return chatMessage;
    }

    public void translate(View view, int i10, int i11, int i12, int i13, int i14, int i15, int i16, int i17) {
        if (view == null || i12 == 0 || i13 == 0) {
            return;
        }
        view.animate().scaleX(i16 / (i12 * 1.0f)).scaleY(i17 / (i13 * 1.0f)).translationX(i14 - i10).translationY(i15 - i11).start();
    }

    public VoiceCallHelper(Context context) {
        this.context = context;
    }

    public ApiRequest buildRequest(int i10, String str, int i11) {
        if (!TextUtils.isEmpty(str)) {
            if (i11 == 54 || i11 == 53 || i11 == 52 || i11 == 56 || i11 == 57 || i11 == 55 || i11 == 59 || i11 == 58 || i11 == 60) {
                ChatMessage callChatMessage = getCallChatMessage(str, i11);
                ObjectNode objectNodeCreateObjectNode = JacksonUtils.createObjectNode();
                objectNodeCreateObjectNode.put("type", callChatMessage.type);
                objectNodeCreateObjectNode.put("clientRefId", callChatMessage.getClientRefIdTmp());
                return ApiRequest.builder().communityId(i10).chatServer().body(objectNodeCreateObjectNode).post().path("/chat/thread/" + callChatMessage.threadId + "/message").build();
            }
            return null;
        }
        return null;
    }

    public int getRadiusForVoiceCircle(int i10, int i11) {
        return (int) ((Math.min(i10, i11) - (this.context.getResources().getDimensionPixelSize(R.dimen.voice_default_padding) * 2)) * 0.11f);
    }
}
