package com.narvii.chat.audio;

import android.view.View;
import com.narvii.amino.master.R;
import com.narvii.app.NVContext;
import com.narvii.chat.MessageReadManager;
import com.narvii.chat.rtc.RtcService;
import com.narvii.media.MediaPlayerManager;
import com.narvii.media.MediaStatus;
import com.narvii.model.ChatMessage;
import com.narvii.util.NVToast;
import com.narvii.util.statistics.StatisticsService;

/* JADX INFO: loaded from: classes9.dex */
public class AudioHelper {
    NVContext nvContext;

    public void handleChatBubbleClick(ChatMessage chatMessage, View view, boolean z6) throws Throwable {
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
        int i10 = mediaStatus.status == 2 ? mediaStatus.position : 0;
        if (z6) {
            MessageReadManager messageReadManager = (MessageReadManager) this.nvContext.getService("messageRead");
            if (!messageReadManager.isMessageRead(chatMessage)) {
                messageReadManager.setMessageRead(chatMessage);
                View viewFindViewById = view.findViewById(R.id.chat_unread);
                if (viewFindViewById != null) {
                    viewFindViewById.setVisibility(8);
                }
            }
        }
        mediaPlayerManager.playAudio(chatMessage.mediaValue, i10, (AudioPlayer) view.findViewById(R.id.audio_player));
        ((StatisticsService) this.nvContext.getService("statistics")).event("Play Voice Note").userPropInc("Play Voice Note Total");
    }

    public boolean showAVChatOnToast() {
        if (((RtcService) this.nvContext.getService("rtc")).getMainSigChannel() == null) {
            return false;
        }
        NVToast.makeText(this.nvContext.getContext(), R.string.live_chat_on, 0).show();
        return true;
    }

    public AudioHelper(NVContext nVContext) {
        this.nvContext = nVContext;
    }
}
