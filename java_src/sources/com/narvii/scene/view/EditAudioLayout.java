package com.narvii.scene.view;

import android.content.Context;
import android.util.AttributeSet;
import android.view.View;
import android.widget.LinearLayout;
import androidx.annotation.Nullable;
import com.narvii.mediaeditor.R;
import com.narvii.video.widget.MediaOptionPanel;
import com.narvii.video.widget.MediaTimeLineComponent;

/* JADX INFO: loaded from: classes9.dex */
public class EditAudioLayout extends LinearLayout {
    private BalanceSeekBar balanceSeekBar;
    private View fadeInView;
    private View fadeOutView;
    private MediaOptionPanel mediaOptionPanel;
    private MediaTimeLineComponent mediaTimeLineComponent;

    public EditAudioLayout(Context context) {
        super(context);
    }

    public EditAudioLayout(Context context, @Nullable AttributeSet attributeSet) {
        super(context, attributeSet);
    }

    public EditAudioLayout(Context context, @Nullable AttributeSet attributeSet, int i10) {
        super(context, attributeSet, i10);
    }

    @Override // android.view.View
    protected void onFinishInflate() {
        super.onFinishInflate();
        this.mediaOptionPanel = (MediaOptionPanel) findViewById(R.id.options_panel);
        this.mediaTimeLineComponent = (MediaTimeLineComponent) findViewById(R.id.video_time_line_component);
        this.balanceSeekBar = (BalanceSeekBar) findViewById(R.id.balance_seek_bar);
        this.fadeInView = findViewById(R.id.fade_in_view);
        this.fadeOutView = findViewById(R.id.fade_out_view);
    }
}
