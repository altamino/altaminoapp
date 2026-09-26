package com.narvii.chat.input;

import android.content.Context;
import android.util.AttributeSet;
import com.narvii.amino.master.R;
import com.narvii.chat.audio.AudioHelper;
import com.narvii.util.Utils;

/* JADX INFO: loaded from: classes7.dex */
public class ChatInputPanelVoiceButton extends ChatInputPanelSwitcherButton {
    private AudioHelper audioHelper;

    @Override // com.narvii.chat.input.ChatInputPanelSwitcherButton
    protected boolean doPreCheck() {
        return this.audioHelper.showAVChatOnToast();
    }

    public ChatInputPanelVoiceButton(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.audioHelper = new AudioHelper(Utils.getNVContext(getContext()));
    }

    @Override // com.narvii.chat.input.ChatInputPanelSwitcherButton
    public void showIcon() {
        setImageResource(R.drawable.ic_chat_input_voice);
    }
}
