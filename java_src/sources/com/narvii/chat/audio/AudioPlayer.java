package com.narvii.chat.audio;

import android.content.Context;
import android.graphics.PorterDuff;
import android.graphics.drawable.ClipDrawable;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.GradientDrawable;
import android.graphics.drawable.LayerDrawable;
import android.util.AttributeSet;
import android.view.MotionEvent;
import android.view.View;
import android.widget.LinearLayout;
import android.widget.ProgressBar;
import android.widget.SeekBar;
import android.widget.TextView;
import androidx.annotation.Nullable;
import androidx.core.content.ContextCompat;
import androidx.media3.exoplayer.upstream.CmcdHeadersFactory;
import com.narvii.amino.master.R;
import com.narvii.chat.ChatBubbleView;
import com.narvii.media.MediaPlayerManager;
import com.narvii.media.MediaStatus;
import com.narvii.media.MediaStatusChangeListener;
import com.narvii.util.Log;
import com.narvii.util.Utils;
import com.narvii.widget.SpinningView;
import com.narvii.widget.TintButton;

/* JADX INFO: loaded from: classes5.dex */
public class AudioPlayer extends LinearLayout implements MediaStatusChangeListener {
    public static final int MAX_PROGRESS = 100000;
    public static final float TIME_DURATION_ALPHA = 0.6f;
    int duration;
    TintButton icon;
    Boolean isMine;
    boolean isTrackingTouch;
    int maxWidth;
    String mediaUrl;
    int minWidth;
    private int padding;
    ProgressBar progressBar;
    private Drawable progressDrawable;
    SeekBar seekBar;
    private Drawable seekDrawable;
    SpinningView spinningView;
    TextView time;

    private class SeekbarTouchArea implements View.OnTouchListener {
        private SeekbarTouchArea() {
        }

        @Override // android.view.View.OnTouchListener
        public boolean onTouch(View view, MotionEvent motionEvent) {
            if (AudioPlayer.this.seekBar.getVisibility() != 0 || motionEvent.getY() < 0.0f || motionEvent.getY() > view.getHeight()) {
                return false;
            }
            return AudioPlayer.this.seekBar.onTouchEvent(MotionEvent.obtain(motionEvent.getDownTime(), motionEvent.getEventTime(), motionEvent.getAction(), motionEvent.getX(), motionEvent.getY(), motionEvent.getMetaState()));
        }
    }

    private int getDurationSecond(int i10) {
        return Math.round(i10 / 1000.0f);
    }

    protected boolean fixedWidth() {
        return false;
    }

    @Override // com.narvii.media.MediaStatusChangeListener
    public String getMediaUrl() {
        return this.mediaUrl;
    }

    public void setMediaUrl(String str) {
        this.mediaUrl = str;
    }

    private void setBarProgress(int i10) {
        this.seekBar.setProgress(i10);
        this.progressBar.setProgress(i10);
    }

    @Override // com.narvii.media.MediaStatusChangeListener
    public void onProgressChange(String str, int i10, int i11) {
        this.time.setAlpha(1.0f);
        this.time.setText((i10 / 1000) + CmcdHeadersFactory.STREAMING_FORMAT_SS);
        if (this.isTrackingTouch) {
            return;
        }
        setBarProgress((int) (((i10 * 1.0f) / i11) * 100000.0f));
    }

    @Override // com.narvii.media.MediaStatusChangeListener
    public void onStatusChange(MediaStatus mediaStatus) {
        if (this.isTrackingTouch) {
            return;
        }
        this.time.setAlpha(0.6f);
        this.time.setText(getDurationSecond(this.duration) + CmcdHeadersFactory.STREAMING_FORMAT_SS);
        int i10 = mediaStatus.status;
        this.spinningView.setVisibility(8);
        this.icon.setVisibility(0);
        setProgress(0);
        if (i10 == 1 || i10 == 2) {
            this.seekBar.setVisibility(0);
            this.progressBar.setVisibility(8);
        } else {
            this.seekBar.setVisibility(8);
            this.progressBar.setVisibility(0);
        }
        if (i10 == 0) {
            setProgress(0);
            this.icon.setImageResource(R.drawable.ic_voice_message_play);
            return;
        }
        if (i10 == 1) {
            this.icon.setImageResource(R.drawable.ic_voice_message_pause);
            setProgress(mediaStatus.position);
        } else if (i10 == 2) {
            setProgress(mediaStatus.position);
            this.icon.setImageResource(R.drawable.ic_voice_message_play);
        } else {
            if (i10 != 3) {
                return;
            }
            setProgress(0);
            this.icon.setVisibility(4);
            this.spinningView.setVisibility(0);
        }
    }

    public void setDuration(int i10) {
        this.duration = i10;
        this.time.setAlpha(0.6f);
        this.time.setText(getDurationSecond(i10) + CmcdHeadersFactory.STREAMING_FORMAT_SS);
        requestLayout();
    }

    public void setIsMine(boolean z6) {
        Boolean bool = this.isMine;
        if (bool == null || bool.booleanValue() != z6) {
            this.isMine = Boolean.valueOf(z6);
            setThemeColor(getResources().getColor(z6 ? R.color.audio_player_color_mine : R.color.audio_player_color_others));
        }
    }

    public void setProgress(int i10) {
        if (this.isTrackingTouch) {
            return;
        }
        int i11 = this.duration;
        if (i11 == 0) {
            setBarProgress(0);
        } else {
            setBarProgress((int) (((i10 * 1.0f) / i11) * 100000.0f));
        }
    }

    public void setThemeColor(int i10) {
        this.icon.setColorFilter(i10);
        this.spinningView.setSpinColor(i10);
        this.time.setTextColor(i10);
        Drawable drawable = this.seekDrawable;
        if (drawable instanceof LayerDrawable) {
            LayerDrawable layerDrawable = (LayerDrawable) drawable;
            Drawable drawable2 = layerDrawable.getDrawable(0);
            if (drawable2 instanceof GradientDrawable) {
                ((GradientDrawable) drawable2).setColor(Utils.getColor(i10, 0.4f));
            }
            Drawable drawable3 = layerDrawable.getDrawable(1);
            if (drawable3 instanceof ClipDrawable) {
                drawable3.setColorFilter(i10, PorterDuff.Mode.SRC_IN);
            }
        }
        Drawable drawable4 = this.progressDrawable;
        if (drawable4 instanceof LayerDrawable) {
            Drawable drawable5 = ((LayerDrawable) drawable4).getDrawable(0);
            if (drawable5 instanceof GradientDrawable) {
                ((GradientDrawable) drawable5).setColor(Utils.getColor(i10, 0.4f));
            }
        }
    }

    public AudioPlayer(Context context, @Nullable AttributeSet attributeSet) {
        super(context, attributeSet);
        this.minWidth = (int) Utils.dpToPx(getContext(), 80.0f);
    }

    @Override // android.view.View
    protected void onFinishInflate() {
        super.onFinishInflate();
        this.seekDrawable = ContextCompat.getDrawable(getContext(), R.drawable.voice_message_seekbar_progress).mutate();
        this.progressDrawable = ContextCompat.getDrawable(getContext(), R.drawable.voice_message_seekbar_progress).mutate();
        this.icon = (TintButton) findViewById(R.id.icon);
        this.seekBar = (SeekBar) findViewById(R.id.seekbar);
        this.padding = getResources().getDimensionPixelSize(R.dimen.seekbar_white_oval_width);
        this.seekBar.setProgressDrawable(this.seekDrawable);
        SeekBar seekBar = this.seekBar;
        int i10 = this.padding;
        seekBar.setPadding(i10 / 2, 0, i10 / 2, 0);
        this.seekBar.setMax(100000);
        ((View) this.seekBar.getParent()).setOnTouchListener(new SeekbarTouchArea());
        this.seekBar.setOnSeekBarChangeListener(new SeekBar.OnSeekBarChangeListener() { // from class: com.narvii.chat.audio.AudioPlayer.1
            @Override // android.widget.SeekBar.OnSeekBarChangeListener
            public void onProgressChanged(SeekBar seekBar2, int i11, boolean z6) {
            }

            @Override // android.widget.SeekBar.OnSeekBarChangeListener
            public void onStartTrackingTouch(SeekBar seekBar2) {
                AudioPlayer.this.isTrackingTouch = true;
            }

            @Override // android.widget.SeekBar.OnSeekBarChangeListener
            public void onStopTrackingTouch(SeekBar seekBar2) {
                AudioPlayer audioPlayer = AudioPlayer.this;
                audioPlayer.isTrackingTouch = false;
                MediaPlayerManager mediaPlayerManager = (MediaPlayerManager) Utils.getNVContext(audioPlayer.getContext()).getService("mediaPlayer");
                AudioPlayer audioPlayer2 = AudioPlayer.this;
                mediaPlayerManager.playAudio(audioPlayer2.mediaUrl, (int) (audioPlayer2.duration * ((seekBar2.getProgress() * 1.0f) / seekBar2.getMax())), AudioPlayer.this);
            }
        });
        ProgressBar progressBar = (ProgressBar) findViewById(R.id.progress_bar);
        this.progressBar = progressBar;
        progressBar.setProgressDrawable(this.progressDrawable);
        ProgressBar progressBar2 = this.progressBar;
        int i11 = this.padding;
        progressBar2.setPadding(i11 / 2, 0, i11 / 2, 0);
        this.progressBar.setMax(100000);
        this.time = (TextView) findViewById(R.id.time);
        this.spinningView = (SpinningView) findViewById(R.id.spinner);
    }

    @Override // android.widget.LinearLayout, android.view.View
    protected void onMeasure(int i10, int i11) {
        int i12;
        if (getParent() instanceof ChatBubbleView) {
            this.maxWidth = ((ChatBubbleView) getParent()).getMaxContentWidth();
        }
        if (fixedWidth()) {
            i10 = View.MeasureSpec.makeMeasureSpec(this.maxWidth, 1073741824);
        } else {
            int i13 = this.maxWidth;
            if (i13 > 0 && i13 > (i12 = this.minWidth)) {
                i10 = View.MeasureSpec.makeMeasureSpec(Math.min(this.maxWidth, (int) (i12 + ((((i13 - i12) * 1.0f) / 180.0f) * getDurationSecond(Math.min(this.duration, 180000))))), 1073741824);
            } else {
                Log.e("audio player view max width is not right");
            }
        }
        super.onMeasure(i10, i11);
    }
}
