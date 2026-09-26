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
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.media3.exoplayer.upstream.CmcdHeadersFactory;
import com.narvii.amino.master.R;
import com.narvii.chat.RecordInfoListener;
import com.narvii.util.Utils;
import java.util.ArrayList;
import java.util.Iterator;

/* JADX INFO: loaded from: classes2.dex */
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

    @Override // com.narvii.chat.audio.AudioRecordLayout.OnStatusChangeListener
    public void onStatusChange(int i10) {
        if (i10 == 1) {
            this.recordTime.setTextColor(this.recordPrimaryColor);
            this.recordIndicator.setBackgroundDrawable(this.primaryShapeDrawable);
        } else if (i10 == 2) {
            this.recordIndicator.setBackgroundDrawable(this.primaryShapeDrawable);
            this.recordTime.setTextColor(this.recordPrimaryColor);
        } else {
            if (i10 != 3) {
                return;
            }
            this.recordIndicator.setBackgroundDrawable(this.cancelShapeDrawable);
            this.recordTime.setTextColor(this.recordCancelColor);
        }
    }

    private void showLayout(View view) {
        for (View view2 : this.mLayouts) {
            if (view2 == view) {
                view2.clearAnimation();
                view2.setVisibility(0);
            } else {
                view2.clearAnimation();
                view2.setVisibility(8);
            }
        }
        setBackgroundResource(R.drawable.chat_input_edit_round_high_light);
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
    public void onMessageTooShort() {
        Utils.handler.removeCallbacks(this.removeToastRunnable);
        showLayout(this.voiceBoardToast);
        this.voiceBoardToast.setText(R.string.message_too_short);
        this.voiceBoardToast.startAnimation(AnimationUtils.loadAnimation(getContext(), R.anim.alert_shake));
        Utils.postDelayed(this.removeToastRunnable, 1000L);
    }

    @Override // com.narvii.chat.RecordInfoListener
    public void onRecordEnd() {
        hideLayout(this.recordTimeLayout);
    }

    @Override // com.narvii.chat.RecordInfoListener
    public void onRecordStart(long j6) {
        this.recordStartTime = j6;
        showLayout(this.recordTimeLayout);
        AlphaAnimation alphaAnimation = new AlphaAnimation(1.0f, 0.0f);
        alphaAnimation.setDuration(500L);
        alphaAnimation.setFillAfter(true);
        alphaAnimation.setRepeatCount(-1);
        alphaAnimation.setRepeatMode(2);
        this.recordIndicator.startAnimation(alphaAnimation);
    }

    @Override // com.narvii.chat.audio.AudioRecordLayout.OnRecordTimeChangeListener
    public void onRecordTimeChange(long j6) {
        this.recordTime.setText(((int) (j6 / 1000)) + CmcdHeadersFactory.STREAMING_FORMAT_SS);
    }

    public AudioBoardLayout(@NonNull Context context, @Nullable AttributeSet attributeSet) {
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

    /* JADX INFO: Access modifiers changed from: private */
    public void hideLayout(View view) {
        view.clearAnimation();
        view.setVisibility(8);
        Iterator<View> it = this.mLayouts.iterator();
        while (it.hasNext()) {
            if (it.next().getVisibility() == 0) {
                return;
            }
        }
        setBackgroundColor(0);
    }

    @Override // android.view.View
    protected void onFinishInflate() {
        super.onFinishInflate();
        this.voiceBoardToast = (TextView) findViewById(R.id.voice_board_toast);
        this.recordTimeLayout = findViewById(R.id.record_time_layout);
        this.recordIndicator = findViewById(R.id.record_indicator);
        ShapeDrawable shapeDrawable = new ShapeDrawable(new OvalShape());
        this.primaryShapeDrawable = shapeDrawable;
        shapeDrawable.getPaint().setColor(this.recordPrimaryColor);
        ShapeDrawable shapeDrawable2 = new ShapeDrawable(new OvalShape());
        this.cancelShapeDrawable = shapeDrawable2;
        shapeDrawable2.getPaint().setColor(this.recordCancelColor);
        this.recordIndicator.setBackgroundDrawable(this.primaryShapeDrawable);
        this.recordTime = (TextView) findViewById(R.id.record_time);
        ArrayList<View> arrayList = new ArrayList<>();
        this.mLayouts = arrayList;
        arrayList.add(this.voiceBoardToast);
        this.mLayouts.add(this.recordTimeLayout);
    }
}
