package com.narvii.media.online.audio;

import android.content.Context;
import android.util.AttributeSet;
import android.view.View;
import android.widget.FrameLayout;
import com.narvii.lib.R;
import com.narvii.util.Utils;
import com.narvii.util.drawables.gif.GifLoader;
import com.narvii.widget.NVImageView;

/* loaded from: classes3.dex */
public class MusicPlayStatusView extends FrameLayout {
    public static final int STATUS_BUFFERING = 2;
    public static final int STATUS_NONE = 0;
    public static final int STATUS_PLAYING = 1;
    private View IdleIcon;
    private View bufferingIcon;
    private GifLoader gl;
    private NVImageView playingIcon;

    public MusicPlayStatusView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.gl = (GifLoader) Utils.getNVContext(getContext()).getService("gifLoader");
    }

    @Override // android.view.View
    protected void onFinishInflate() {
        super.onFinishInflate();
        this.playingIcon = (NVImageView) findViewById(R.id.playing_view);
        this.bufferingIcon = findViewById(R.id.spinning_view);
        this.IdleIcon = findViewById(R.id.idle_view);
    }

    public void setStatus(int i) {
        if (i == 0) {
            this.bufferingIcon.setVisibility(8);
            this.playingIcon.setVisibility(8);
            this.IdleIcon.setVisibility(0);
        } else {
            if (i != 1) {
                if (i != 2) {
                    return;
                }
                this.playingIcon.setVisibility(8);
                this.bufferingIcon.setVisibility(0);
                this.IdleIcon.setVisibility(8);
                return;
            }
            this.playingIcon.setVisibility(0);
            this.bufferingIcon.setVisibility(8);
            this.IdleIcon.setVisibility(8);
            this.playingIcon.setImageDrawable(this.gl.getLocalGifDrawable("assets://media_playing.gif"));
        }
    }
}
