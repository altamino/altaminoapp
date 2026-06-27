package com.narvii.chat.audio;

import android.view.View;
import com.narvii.amino.mastes.R;
import com.narvii.app.NVContext;
import com.narvii.chat.MessageReadManager;
import com.narvii.chat.rtc.RtcService;
import com.narvii.media.MediaPlayerManager;
import com.narvii.media.MediaStatus;
import com.narvii.model.ChatMessage;
import com.narvii.util.NVToast;

/* loaded from: classes2.dex */
public class AudioHelper {
    NVContext nvContext;

    public AudioHelper(NVContext nVContext) {
        this.nvContext = nVContext;
    }

    public boolean showAVChatOnToast() {
        if (((RtcService) this.nvContext.getService("rtc")).getMainSigChannel() == null) {
            return false;
        }
        NVToast.makeText(this.nvContext.getContext(), R.string.live_chat_on, 0).show();
        return true;
    }

    public void handleChatBubbleClick(ChatMessage chatMessage, View view, boolean z) throws IllegalStateException {
        View viewFindViewById;
        if (view == null) {
            return;
        }
        MediaPlayerManager mediaPlayerManager = (MediaPlayerManager) this.nvContext.getService("mediaPlayer");
        MediaStatus mediaStatus = mediaPlayerManager.getMediaStatus(chatMessage.mediaValue);
        if (mediaStatus.status == 1) {
            mediaPlayerManager.pauseMediaPlayer();
            return;
        }
        if (showAVChatOnToast()) {
            return;
        }
        int i = mediaStatus.status == 2 ? mediaStatus.position : 0;
        if (z) {
            MessageReadManager messageReadManager = (MessageReadManager) this.nvContext.getService("messageRead");
            if (!messageReadManager.isMessageRead(chatMessage)) {
                messageReadManager.setMessageRead(chatMessage);
                if (view != null && (viewFindViewById = view.findViewById(R.id.chat_unread)) != null) {
                    viewFindViewById.setVisibility(8);
                }
            }
        }
        mediaPlayerManager.playAudio(chatMessage.mediaValue, i, (AudioPlayer) view.findViewById(R.id.audio_player));
    }
}
