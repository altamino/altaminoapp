package com.narvii.chat.video.overlay;

import android.content.Context;
import android.util.AttributeSet;
import android.widget.LinearLayout;
import androidx.annotation.Nullable;
import com.narvii.chat.signalling.ChannelUser;
import java.util.List;

/* JADX INFO: loaded from: classes10.dex */
public abstract class AudienceLayout extends LinearLayout {
    public AudienceLayout(Context context) {
        this(context, null);
    }

    public abstract void notifyUserChanged(List<ChannelUser> list);

    public AudienceLayout(Context context, @Nullable AttributeSet attributeSet) {
        super(context, attributeSet);
    }
}
