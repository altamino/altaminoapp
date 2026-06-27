package com.narvii.chat.video;

import com.narvii.app.NVContext;
import com.narvii.chat.rtc.RtcService;
import com.narvii.chat.signalling.SignallingChannel;
import com.narvii.logging.ActSemantic;
import com.narvii.logging.LogEvent;
import com.narvii.model.ChatThread;

/* loaded from: classes2.dex */
public class ChatLogEventHelper {
    NVContext nvContext;

    public static String getChatProperty(int i) {
        if (i == 0) {
            return "1v1";
        }
        if (i == 1) {
            return "group";
        }
        if (i != 2) {
            return null;
        }
        return "public";
    }

    public static String getChatType(int i) {
        if (i == -1) {
            return "textChat";
        }
        if (i == 1) {
            return "voiceChat";
        }
        if (i == 4) {
            return "videoChat";
        }
        if (i != 5) {
            return null;
        }
        return "screeningRoom";
    }

    public ChatLogEventHelper(NVContext nVContext) {
        this.nvContext = nVContext;
    }

    public static String getChatProperty(ChatThread chatThread) {
        if (chatThread != null) {
            return getChatProperty(chatThread.type);
        }
        return null;
    }

    public static String getCurrentChatType(NVContext nVContext) {
        SignallingChannel mainSigChannel;
        if (nVContext == null || (mainSigChannel = ((RtcService) nVContext.getService("rtc")).getMainSigChannel()) == null) {
            return null;
        }
        return getChatType(mainSigChannel.channelType);
    }

    public void logQuitChat(int i, ChatThread chatThread) {
        logChat(i, chatThread, ActSemantic.quitChat);
    }

    public void logChat(int i, ChatThread chatThread, ActSemantic actSemantic) {
        LogEvent.clickBuilder(this.nvContext, actSemantic).extraParam("chatProperty", getChatProperty(chatThread)).page("ChatRoom").extraParam("chatType", getChatType(i)).send();
    }
}
