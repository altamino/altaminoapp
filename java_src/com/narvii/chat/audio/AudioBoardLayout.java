package com.narvii.chat.audio;

import android.content.Context;
import android.graphics.drawable.ShapeDrawable;
import android.graphics.drawable.shapes.OvalShape;
import android.util.AttributeSet;
import android.view.View;
import android.view.animation.AlphaAnimation;
import android.view.animation.AnimationUtils;
import android.widget.FrameLayout;
import android.widget.TextView;
import com.narvii.amino.mastes.R;
import com.narvii.chat.RecordInfoListener;
import com.narvii.chat.audio.AudioRecordLayout;
import com.narvii.util.Utils;
import java.util.ArrayList;
import java.util.Iterator;

/* loaded from: classes2.dex */
public class AudioBoardLayout extends FrameLayout implements RecordInfoListener, AudioRecordLayout.OnStatusChangeListener, AudioRecordLayout.OnRecordTimeChangeListener {
    public static final int TOAST_SHOW_TIME = 1000;
    public ShapeDrawable cancelShapeDrawable;
    private ArrayList<View> mLayouts;
    public ShapeDrawable primaryShapeDrawable;
    int recordCancelColor;
    View recordIndicator;
    int recordPrimaryColor;
    long recordStartTime;
    TextView recordTime;
    View recordTimeLayout;
    Runnable removeToastRunnable;
    TextView voiceBoardToast;

    @Override // com.narvii.chat.RecordInfoListener
    public void onRecordCancel() {
    }

    public AudioBoardLayout(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.removeToastRunnable = new Runnable() { // from class: com.narvii.chat.audio.AudioBoardLayout.1
            @Override // java.lang.Runnable
            public void run() {
                AudioBoardLayout audioBoardLayout = AudioBoardLayout.this;
                audioBoardLayout.hideLayout(audioBoardLayout.voiceBoardToast);
            }
        };
        this.recordPrimaryColor = getResources().getColor(R.color.voice_message_primary_color);
        this.recordCancelColor = getResources().getColor(R.color.voice_message_cancel_color);
    }

    @Override // android.view.View
    protected void onFinishInflate() {
        super.onFinishInflate();
        this.voiceBoardToast = (TextView) findViewById(R.id.voice_board_toast);
        this.recordTimeLayout = findViewById(R.id.record_time_layout);
        this.recordIndicator = findViewById(R.id.record_indicator);
        this.primaryShapeDrawable = new ShapeDrawable(new OvalShape());
        this.primaryShapeDrawable.getPaint().setColor(this.recordPrimaryColor);
        this.cancelShapeDrawable = new ShapeDrawable(new OvalShape());
        this.cancelShapeDrawable.getPaint().setColor(this.recordCancelColor);
        this.recordIndicator.setBackgroundDrawable(this.primaryShapeDrawable);
        this.recordTime = (TextView) findViewById(R.id.record_time);
        this.mLayouts = new ArrayList<>();
        this.mLayouts.add(this.voiceBoardToast);
        this.mLayouts.add(this.recordTimeLayout);
    }

    @Override // com.narvii.chat.RecordInfoListener
    public void onMessageTooShort() {
        Utils.handler.removeCallbacks(this.removeToastRunnable);
        showLayout(this.voiceBoardToast);
        this.voiceBoardToast.setText(R.string.message_too_short);
        this.voiceBoardToast.startAnimation(AnimationUtils.loadAnimation(getContext(), R.anim.alert_shake));
        Utils.postDelayed(this.removeToastRunnable, 1000L);
    }

    @Override // com.narvii.chat.RecordInfoListener
    public void onBeyondMaxDuration() {
        Utils.handler.removeCallbacks(this.removeToastRunnable);
        showLayout(this.voiceBoardToast);
        this.voiceBoardToast.setText(R.string.message_too_long);
        this.voiceBoardToast.startAnimation(AnimationUtils.loadAnimation(getContext(), R.anim.alert_shake));
    }

    @Override // com.narvii.chat.RecordInfoListener
    public void onBeyondMaxOver() {
        hideLayout(this.voiceBoardToast);
    }

    @Override // com.narvii.chat.RecordInfoListener
    public void onRecordStart(long j) {
        this.recordStartTime = j;
        showLayout(this.recordTimeLayout);
        AlphaAnimation alphaAnimation = new AlphaAnimation(1.0f, 0.0f);
        alphaAnimation.setDuration(500L);
        alphaAnimation.setFillAfter(true);
        alphaAnimation.setRepeatCount(-1);
        alphaAnimation.setRepeatMode(2);
        this.recordIndicator.startAnimation(alphaAnimation);
    }

    @Override // com.narvii.chat.RecordInfoListener
    public void onRecordEnd() {
        hideLayout(this.recordTimeLayout);
    }

    private void showLayout(View view) {
        Iterator<View> it = this.mLayouts.iterator();
        while (it.hasNext()) {
            View next = it.next();
            if (next == view) {
                next.clearAnimation();
                next.setVisibility(0);
            } else {
                next.clearAnimation();
                next.setVisibility(8);
            }
        }
        setBackgroundResource(R.drawable.chat_input_edit_round_high_light);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void hideLayout(View view) {
        boolean z;
        view.clearAnimation();
        view.setVisibility(8);
        Iterator<View> it = this.mLayouts.iterator();
        while (true) {
            if (!it.hasNext()) {
                z = false;
                break;
            } else if (it.next().getVisibility() == 0) {
                z = true;
                break;
            }
        }
        if (z) {
            return;
        }
        setBackgroundColor(0);
    }

    @Override // com.narvii.chat.audio.AudioRecordLayout.OnStatusChangeListener
    public void onStatusChange(int i) {
        if (i == 1) {
            this.recordTime.setTextColor(this.recordPrimaryColor);
            this.recordIndicator.setBackgroundDrawable(this.primaryShapeDrawable);
        } else if (i == 2) {
            this.recordIndicator.setBackgroundDrawable(this.primaryShapeDrawable);
            this.recordTime.setTextColor(this.recordPrimaryColor);
        } else {
            if (i != 3) {
                return;
            }
            this.recordIndicator.setBackgroundDrawable(this.cancelShapeDrawable);
            this.recordTime.setTextColor(this.recordCancelColor);
        }
    }

    @Override // com.narvii.chat.audio.AudioRecordLayout.OnRecordTimeChangeListener
    public void onRecordTimeChange(long j) {
        int i = (int) (j / 1000);
        this.recordTime.setText(i + "s");
    }
}
