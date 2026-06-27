package com.narvii.chat.video.view;

import android.content.Context;
import android.text.TextUtils;
import android.view.View;
import com.fasterxml.jackson.databind.node.ObjectNode;
import com.narvii.amino.mastes.R;
import com.narvii.chat.core.ChatService;
import com.narvii.chat.signalling.ChannelUser;
import com.narvii.model.ChatMessage;
import com.narvii.model.ChatThread;
import com.narvii.util.JacksonUtils;
import com.narvii.util.http.ApiRequest;
import com.narvii.util.http.ApiService;
import java.util.Collection;
import java.util.Date;

/* loaded from: classes.dex */
public class VoiceCallHelper {
    public static final int CALL_VIEW_FINISH_DELAY = 1500;
    public static final int HINT_AUTO_DISMISS_TIME = 5000;
    public static final float PRIVATE_CALL_PRESENTER_LIMIT = 2.0f;
    public static final float RADIUS_RATIO_OF_SCREEN = 0.11f;
    private Context context;

    public VoiceCallHelper(Context context) {
        this.context = context;
    }

    public void translate(View view, int i, int i2, int i3, int i4, int i5, int i6, int i7, int i8) {
        if (view == null || i3 == 0 || i4 == 0) {
            return;
        }
        view.animate().scaleX(i7 / (i3 * 1.0f)).scaleY(i8 / (i4 * 1.0f)).translationX(i5 - i).translationY(i6 - i2).start();
    }

    public int getRadiusForVoiceCircle(int i, int i2) {
        return (int) ((Math.min(i, i2) - (this.context.getResources().getDimensionPixelSize(R.dimen.voice_default_padding) * 2)) * 0.11f);
    }

    public int getPresenterCount(Collection<? extends ChannelUser> collection) {
        int i = 0;
        if (collection == null) {
            return 0;
        }
        for (ChannelUser channelUser : collection) {
            if (channelUser.joinRole == 1 && channelUser.userProfile != null) {
                i++;
            }
        }
        return i;
    }

    public ApiRequest buildRequest(int i, String str, int i2) {
        if (TextUtils.isEmpty(str)) {
            return null;
        }
        if (i2 != 54 && i2 != 53 && i2 != 52 && i2 != 56 && i2 != 57 && i2 != 55 && i2 != 59 && i2 != 58 && i2 != 60) {
            return null;
        }
        ChatMessage callChatMessage = getCallChatMessage(str, i2);
        ObjectNode objectNodeCreateObjectNode = JacksonUtils.createObjectNode();
        objectNodeCreateObjectNode.put("type", callChatMessage.type);
        objectNodeCreateObjectNode.put("clientRefId", callChatMessage.clientRefId);
        return ApiRequest.builder().communityId(i).chatServer().body(objectNodeCreateObjectNode).post().path("/chat/thread/" + callChatMessage.threadId + "/message").build();
    }

    public ChatMessage getCallChatMessage(String str, int i) {
        Date date = new Date(ApiService.timestamp());
        ChatMessage chatMessage = new ChatMessage();
        chatMessage.clientRefId = ChatService.Companion.generateClientRefId();
        chatMessage.createdTime = date;
        chatMessage.type = i;
        chatMessage.threadId = str;
        return chatMessage;
    }

    public boolean isPrivateCall(ChatThread chatThread, int i) {
        return (chatThread != null && chatThread.type == 0) && (i == 1 || i == 4);
    }
}
