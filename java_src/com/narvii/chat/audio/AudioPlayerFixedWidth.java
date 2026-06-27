package com.narvii.chat.audio;

import android.content.Context;
import android.util.AttributeSet;

/* loaded from: classes2.dex */
public class AudioPlayerFixedWidth extends AudioPlayer {
    @Override // com.narvii.chat.audio.AudioPlayer
    protected boolean fixedWidth() {
        return true;
    }

    public AudioPlayerFixedWidth(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
    }
}
