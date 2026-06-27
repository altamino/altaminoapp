package com.narvii.chat.input;

import android.content.Context;
import android.util.AttributeSet;
import com.narvii.amino.mastes.R;
import com.narvii.chat.audio.AudioHelper;
import com.narvii.util.Utils;

/* loaded from: classes2.dex */
public class ChatInputPanelVoiceButton extends ChatInputPanelSwitcherButton {
    private AudioHelper audioHelper;

    public ChatInputPanelVoiceButton(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.audioHelper = new AudioHelper(Utils.getNVContext(getContext()));
    }

    @Override // com.narvii.chat.input.ChatInputPanelSwitcherButton
    protected boolean doPreCheck() {
        return this.audioHelper.showAVChatOnToast();
    }

    @Override // com.narvii.chat.input.ChatInputPanelSwitcherButton
    public void showIcon() {
        setImageResource(R.drawable.ic_chat_input_voice);
    }
}
