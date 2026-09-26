package com.narvii.chat.video;

import com.narvii.app.NVContext;
import com.narvii.chat.rtc.RtcService;
import com.narvii.chat.signalling.SignallingChannel;
import com.narvii.logging.ActSemantic;
import com.narvii.logging.LogEvent;
import com.narvii.model.ChatThread;

/* JADX INFO: loaded from: classes8.dex */
public class ChatLogEventHelper {
    NVContext nvContext;

    public static String getChatProperty(int i10) {
        if (i10 == 0) {
            return "1v1";
        }
        if (i10 == 1) {
            return "group";
        }
        if (i10 != 2) {
            return null;
        }
        return "public";
    }

    public static String getChatType(int i10) {
        if (i10 == -1) {
            return "textChat";
        }
        if (i10 == 1) {
            return "voiceChat";
        }
        if (i10 == 4) {
            return "videoChat";
        }
        if (i10 != 5) {
            return null;
        }
        return "screeningRoom";
    }

    public static String getCurrentChatType(NVContext nVContext) {
        SignallingChannel mainSigChannel;
        if (nVContext == null || (mainSigChannel = ((RtcService) nVContext.getService("rtc")).getMainSigChannel()) == null) {
            return null;
        }
        return getChatType(mainSigChannel.channelType);
    }

    public static String getChatProperty(ChatThread chatThread) {
        if (chatThread != null) {
            return getChatProperty(chatThread.type);
        }
        return null;
    }

    public void logChat(int i10, ChatThread chatThread, ActSemantic actSemantic) {
        LogEvent.clickBuilder(this.nvContext, actSemantic).extraParam("chatProperty", getChatProperty(chatThread)).page("ChatRoom").extraParam("chatType", getChatType(i10)).send();
    }

    public void logQuitChat(int i10, ChatThread chatThread) {
        logChat(i10, chatThread, ActSemantic.quitChat);
    }

    public ChatLogEventHelper(NVContext nVContext) {
        this.nvContext = nVContext;
    }
}
