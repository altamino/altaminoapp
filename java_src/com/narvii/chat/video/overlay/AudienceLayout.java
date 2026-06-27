package com.narvii.chat.video.overlay;

import android.content.Context;
import android.util.AttributeSet;
import android.widget.LinearLayout;
import com.narvii.chat.signalling.ChannelUser;
import java.util.List;

/* loaded from: classes2.dex */
public abstract class AudienceLayout extends LinearLayout {
    public abstract void notifyUserChanged(List<ChannelUser> list);

    public AudienceLayout(Context context) {
        this(context, null);
    }

    public AudienceLayout(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
    }
}
