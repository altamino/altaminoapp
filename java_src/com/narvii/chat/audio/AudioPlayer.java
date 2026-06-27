package com.narvii.chat.audio;

import android.content.Context;
import android.graphics.PorterDuff;
import android.graphics.drawable.ClipDrawable;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.GradientDrawable;
import android.graphics.drawable.LayerDrawable;
import android.support.v4.content.ContextCompat;
import android.util.AttributeSet;
import android.view.MotionEvent;
import android.view.View;
import android.widget.LinearLayout;
import android.widget.ProgressBar;
import android.widget.SeekBar;
import android.widget.TextView;
import com.narvii.amino.mastes.R;
import com.narvii.chat.ChatBubbleView;
import com.narvii.media.MediaPlayerManager;
import com.narvii.media.MediaStatus;
import com.narvii.media.MediaStatusChangeListener;
import com.narvii.util.Log;
import com.narvii.util.Utils;
import com.narvii.widget.SpinningView;
import com.narvii.widget.TintButton;

/* loaded from: classes2.dex */
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

    protected boolean fixedWidth() {
        return false;
    }

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

    public AudioPlayer(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.minWidth = (int) Utils.dpToPx(getContext(), 80.0f);
    }

    public void setMediaUrl(String str) {
        this.mediaUrl = str;
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
        int i = this.padding;
        seekBar.setPadding(i / 2, 0, i / 2, 0);
        this.seekBar.setMax(100000);
        ((View) this.seekBar.getParent()).setOnTouchListener(new SeekbarTouchArea());
        this.seekBar.setOnSeekBarChangeListener(new SeekBar.OnSeekBarChangeListener() { // from class: com.narvii.chat.audio.AudioPlayer.1
            @Override // android.widget.SeekBar.OnSeekBarChangeListener
            public void onProgressChanged(SeekBar seekBar2, int i2, boolean z) {
            }

            @Override // android.widget.SeekBar.OnSeekBarChangeListener
            public void onStartTrackingTouch(SeekBar seekBar2) {
                AudioPlayer.this.isTrackingTouch = true;
            }

            @Override // android.widget.SeekBar.OnSeekBarChangeListener
            public void onStopTrackingTouch(SeekBar seekBar2) throws IllegalStateException {
                AudioPlayer audioPlayer = AudioPlayer.this;
                audioPlayer.isTrackingTouch = false;
                ((MediaPlayerManager) Utils.getNVContext(audioPlayer.getContext()).getService("mediaPlayer")).playAudio(AudioPlayer.this.mediaUrl, (int) (r1.duration * ((seekBar2.getProgress() * 1.0f) / seekBar2.getMax())), AudioPlayer.this);
            }
        });
        this.progressBar = (ProgressBar) findViewById(R.id.progress_bar);
        this.progressBar.setProgressDrawable(this.progressDrawable);
        ProgressBar progressBar = this.progressBar;
        int i2 = this.padding;
        progressBar.setPadding(i2 / 2, 0, i2 / 2, 0);
        this.progressBar.setMax(100000);
        this.time = (TextView) findViewById(R.id.time);
        this.spinningView = (SpinningView) findViewById(R.id.spinner);
    }

    @Override // android.widget.LinearLayout, android.view.View
    protected void onMeasure(int i, int i2) {
        int i3;
        if (getParent() instanceof ChatBubbleView) {
            this.maxWidth = ((ChatBubbleView) getParent()).getMaxContentWidth();
        }
        if (fixedWidth()) {
            i = View.MeasureSpec.makeMeasureSpec(this.maxWidth, 1073741824);
        } else {
            int i4 = this.maxWidth;
            if (i4 > 0 && i4 > (i3 = this.minWidth)) {
                i = View.MeasureSpec.makeMeasureSpec(Math.min(this.maxWidth, (int) (i3 + ((((i4 - i3) * 1.0f) / 180.0f) * getDurationSecond(Math.min(this.duration, 180000))))), 1073741824);
            } else {
                Log.e("audio player view max width is not right");
            }
        }
        super.onMeasure(i, i2);
    }

    public void setIsMine(boolean z) {
        Boolean bool = this.isMine;
        if (bool == null || bool.booleanValue() != z) {
            this.isMine = Boolean.valueOf(z);
            setThemeColor(getResources().getColor(z ? R.color.audio_player_color_mine : R.color.audio_player_color_others));
        }
    }

    public void setThemeColor(int i) {
        this.icon.setColorFilter(i);
        this.spinningView.setSpinColor(i);
        this.time.setTextColor(i);
        Drawable drawable = this.seekDrawable;
        if (drawable instanceof LayerDrawable) {
            LayerDrawable layerDrawable = (LayerDrawable) drawable;
            Drawable drawable2 = layerDrawable.getDrawable(0);
            if (drawable2 instanceof GradientDrawable) {
                ((GradientDrawable) drawable2).setColor(Utils.getColor(i, 0.4f));
            }
            Drawable drawable3 = layerDrawable.getDrawable(1);
            if (drawable3 instanceof ClipDrawable) {
                drawable3.setColorFilter(i, PorterDuff.Mode.SRC_IN);
            }
        }
        Drawable drawable4 = this.progressDrawable;
        if (drawable4 instanceof LayerDrawable) {
            Drawable drawable5 = ((LayerDrawable) drawable4).getDrawable(0);
            if (drawable5 instanceof GradientDrawable) {
                ((GradientDrawable) drawable5).setColor(Utils.getColor(i, 0.4f));
            }
        }
    }

    public void setDuration(int i) {
        this.duration = i;
        this.time.setAlpha(0.6f);
        this.time.setText(getDurationSecond(i) + "s");
        requestLayout();
    }

    private int getDurationSecond(int i) {
        return Math.round(i / 1000.0f);
    }

    public void setProgress(int i) {
        if (this.isTrackingTouch) {
            return;
        }
        int i2 = this.duration;
        if (i2 == 0) {
            setBarProgress(0);
        } else {
            setBarProgress((int) (((i * 1.0f) / i2) * 100000.0f));
        }
    }

    private void setBarProgress(int i) {
        this.seekBar.setProgress(i);
        this.progressBar.setProgress(i);
    }

    @Override // com.narvii.media.MediaStatusChangeListener
    public void onStatusChange(MediaStatus mediaStatus) {
        if (this.isTrackingTouch) {
            return;
        }
        this.time.setAlpha(0.6f);
        this.time.setText(getDurationSecond(this.duration) + "s");
        int i = mediaStatus.status;
        this.spinningView.setVisibility(8);
        this.icon.setVisibility(0);
        setProgress(0);
        if (i == 1 || i == 2) {
            this.seekBar.setVisibility(0);
            this.progressBar.setVisibility(8);
        } else {
            this.seekBar.setVisibility(8);
            this.progressBar.setVisibility(0);
        }
        if (i == 0) {
            setProgress(0);
            this.icon.setImageResource(R.drawable.ic_voice_message_play);
            return;
        }
        if (i == 1) {
            this.icon.setImageResource(R.drawable.ic_voice_message_pause);
            setProgress(mediaStatus.position);
        } else if (i == 2) {
            setProgress(mediaStatus.position);
            this.icon.setImageResource(R.drawable.ic_voice_message_play);
        } else {
            if (i != 3) {
                return;
            }
            setProgress(0);
            this.icon.setVisibility(4);
            this.spinningView.setVisibility(0);
        }
    }

    @Override // com.narvii.media.MediaStatusChangeListener
    public void onProgressChange(String str, int i, int i2) {
        this.time.setAlpha(1.0f);
        this.time.setText((i / 1000) + "s");
        if (this.isTrackingTouch) {
            return;
        }
        setBarProgress((int) (((i * 1.0f) / i2) * 100000.0f));
    }

    @Override // com.narvii.media.MediaStatusChangeListener
    public String getMediaUrl() {
        return this.mediaUrl;
    }
}
