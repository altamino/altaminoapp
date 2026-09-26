package com.narvii.chat.audio;

import android.content.Context;
import android.util.AttributeSet;
import androidx.annotation.Nullable;

/* JADX INFO: loaded from: classes11.dex */
public class AudioPlayerFixedWidth extends AudioPlayer {
    @Override // com.narvii.chat.audio.AudioPlayer
    protected boolean fixedWidth() {
        return true;
    }

    public AudioPlayerFixedWidth(Context context, @Nullable AttributeSet attributeSet) {
        super(context, attributeSet);
    }
}
