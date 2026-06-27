package com.narvii.chat.audio;

import android.content.Context;
import android.graphics.Rect;
import android.graphics.drawable.ShapeDrawable;
import android.graphics.drawable.shapes.OvalShape;
import android.support.v4.app.Fragment;
import android.support.v4.content.ContextCompat;
import android.text.SpannableString;
import android.text.style.StyleSpan;
import android.util.AttributeSet;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.TextView;
import com.narvii.amino.mastes.R;
import com.narvii.chat.RecordEventFinishListener;
import com.narvii.chat.RecordFinishListener;
import com.narvii.chat.RecordInfoListener;
import com.narvii.media.MediaRecordManager;
import com.narvii.util.Utils;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

/* loaded from: classes2.dex */
public class AudioRecordLayout extends FrameLayout {
    public static final int MIN_RECORD_DURATION = 1000;
    public static final int STATE_CANCEL = 3;
    public static final int STATE_NORMAL = 1;
    public static final int STATE_RECORDING = 2;
    AudioHelper audioHelper;
    public Rect audioRecordRect;
    View audioRecordView;
    AudioVolumeRippleView audioVolumeRippleView;
    public boolean beyondMaxDuration;
    public final int circleCancelColor;
    public final int circlePrimaryColor;
    Fragment fragment;
    TextView holdToTalk;
    private int mCurrentState;
    MediaRecordManager mediaRecordManager;
    List<OnRecordTimeChangeListener> onRecordTimeChangeListenerList;
    List<OnStatusChangeListener> onStatusChangeListenerList;
    View recordBg;
    List<RecordEventFinishListener> recordEventFinishListeners;
    RecordFinishListener recordFinishListener;
    ImageView recordIcon;
    List<RecordInfoListener> recordInfoListenerList;
    TextView releaseToDelete;
    TextView releaseToSend;
    View removeBin;
    TextView slideDownToDelete;

    public interface OnRecordTimeChangeListener {
        void onRecordTimeChange(long j);
    }

    public interface OnStatusChangeListener {
        void onStatusChange(int i);
    }

    public AudioRecordLayout(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.mCurrentState = 1;
        this.onStatusChangeListenerList = new ArrayList();
        this.onRecordTimeChangeListenerList = new ArrayList();
        this.recordInfoListenerList = new ArrayList();
        this.recordEventFinishListeners = new ArrayList();
        this.mediaRecordManager = (MediaRecordManager) Utils.getNVContext(context).getService("mediaRecorder");
        this.audioHelper = new AudioHelper(Utils.getNVContext(context));
        this.circlePrimaryColor = Utils.getColor(getResources().getColor(R.color.voice_message_primary_color), 0.2f);
        this.circleCancelColor = Utils.getColor(getResources().getColor(R.color.voice_message_cancel_color), 0.2f);
    }

    public void setFragment(Fragment fragment) {
        this.fragment = fragment;
    }

    public void setRecordFinishListener(RecordFinishListener recordFinishListener) {
        this.recordFinishListener = recordFinishListener;
    }

    public void addOnRecordTimeChangeListener(OnRecordTimeChangeListener onRecordTimeChangeListener) {
        this.onRecordTimeChangeListenerList.add(onRecordTimeChangeListener);
    }

    public void addOnStatusChangeListener(OnStatusChangeListener onStatusChangeListener) {
        this.onStatusChangeListenerList.add(onStatusChangeListener);
    }

    public void addRecordInfoListener(RecordInfoListener recordInfoListener) {
        this.recordInfoListenerList.add(recordInfoListener);
    }

    public void addRecordEventFinishListener(RecordEventFinishListener recordEventFinishListener) {
        this.recordEventFinishListeners.add(recordEventFinishListener);
    }

    public void removeRecordEventFinishListener(RecordEventFinishListener recordEventFinishListener) {
        this.recordEventFinishListeners.remove(recordEventFinishListener);
    }

    /* JADX WARN: Removed duplicated region for block: B:15:0x0034  */
    @Override // android.view.View
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public boolean onTouchEvent(android.view.MotionEvent r9) throws java.lang.IllegalStateException, java.io.IOException, java.lang.IllegalArgumentException {
        /*
            Method dump skipped, instructions count: 410
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.narvii.chat.audio.AudioRecordLayout.onTouchEvent(android.view.MotionEvent):boolean");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void changeState(int i) {
        if (this.mCurrentState != i) {
            this.mCurrentState = i;
            this.recordBg.setVisibility(0);
            this.recordIcon.setColorFilter(-1);
            if (i == 1) {
                if (getRootView() instanceof ViewGroup) {
                    ((ViewGroup) getRootView()).setMotionEventSplittingEnabled(true);
                }
                this.recordBg.setBackgroundResource(R.drawable.chat_audio_record_bg_normal);
                this.audioVolumeRippleView.setVisibility(8);
                this.recordIcon.setVisibility(8);
                this.audioVolumeRippleView.setCircleViewColor(this.circlePrimaryColor);
            } else if (i == 2) {
                if (getRootView() instanceof ViewGroup) {
                    ((ViewGroup) getRootView()).setMotionEventSplittingEnabled(false);
                }
                this.audioVolumeRippleView.setVisibility(0);
                this.recordIcon.setVisibility(8);
                this.recordBg.setBackgroundResource(R.drawable.chat_audio_record_bg_pressed);
                this.audioVolumeRippleView.setCircleViewColor(this.circlePrimaryColor);
            } else if (i == 3) {
                this.audioVolumeRippleView.setVisibility(0);
                this.audioVolumeRippleView.setCircleViewColor(this.circleCancelColor);
                this.recordIcon.setVisibility(0);
                this.recordBg.setVisibility(4);
                this.recordIcon.setColorFilter(-501929);
            }
            List<OnStatusChangeListener> list = this.onStatusChangeListenerList;
            if (list != null) {
                Iterator<OnStatusChangeListener> it = list.iterator();
                while (it.hasNext()) {
                    it.next().onStatusChange(i);
                }
            }
        }
    }

    private boolean wantToCancel(int i, int i2) {
        Rect rect = this.audioRecordRect;
        return rect != null && i2 > rect.bottom;
    }

    @Override // android.view.View
    protected void onFinishInflate() {
        super.onFinishInflate();
        this.audioRecordView = findViewById(R.id.audio_record);
        this.holdToTalk = (TextView) findViewById(R.id.hold_to_talk);
        this.releaseToSend = (TextView) findViewById(R.id.release_to_send);
        this.slideDownToDelete = (TextView) findViewById(R.id.slide_down_to_delete);
        this.releaseToDelete = (TextView) findViewById(R.id.release_to_delete);
        this.removeBin = findViewById(R.id.remove_bin);
        setStatus(1);
        addOnStatusChangeListener(new OnStatusChangeListener() { // from class: com.narvii.chat.audio.AudioRecordLayout.3
            @Override // com.narvii.chat.audio.AudioRecordLayout.OnStatusChangeListener
            public void onStatusChange(int i) {
                AudioRecordLayout.this.setStatus(i);
            }
        });
        addOnRecordTimeChangeListener(new OnRecordTimeChangeListener() { // from class: com.narvii.chat.audio.AudioRecordLayout.4
            @Override // com.narvii.chat.audio.AudioRecordLayout.OnRecordTimeChangeListener
            public void onRecordTimeChange(long j) {
                int i = (int) (180 - (j / 1000));
                if (i > 10 || i < 0) {
                    return;
                }
                String string = AudioRecordLayout.this.getContext().getString(R.string.release_to_send);
                SpannableString spannableString = new SpannableString(string + " (" + i + ")");
                spannableString.setSpan(new StyleSpan(1), string.length() + 2, string.length() + 2 + (i + "").length(), 33);
                AudioRecordLayout.this.releaseToSend.setText(spannableString);
            }
        });
        addRecordInfoListener(new RecordInfoListener() { // from class: com.narvii.chat.audio.AudioRecordLayout.5
            @Override // com.narvii.chat.RecordInfoListener
            public void onBeyondMaxOver() {
            }

            @Override // com.narvii.chat.RecordInfoListener
            public void onMessageTooShort() {
            }

            @Override // com.narvii.chat.RecordInfoListener
            public void onRecordCancel() {
            }

            @Override // com.narvii.chat.RecordInfoListener
            public void onRecordEnd() {
            }

            @Override // com.narvii.chat.RecordInfoListener
            public void onRecordStart(long j) {
            }

            @Override // com.narvii.chat.RecordInfoListener
            public void onBeyondMaxDuration() {
                AudioRecordLayout.this.releaseToSend.setText(R.string.release_to_send);
            }
        });
        this.recordIcon = (ImageView) findViewById(R.id.record_icon);
        this.recordBg = findViewById(R.id.record_bg);
        new ShapeDrawable(new OvalShape()).getPaint().setColor(ContextCompat.getColor(getContext(), R.color.voice_message_primary_color));
        this.recordBg.setBackgroundResource(R.drawable.chat_audio_record_bg_normal);
        this.audioVolumeRippleView = (AudioVolumeRippleView) findViewById(R.id.volume_ripple);
        this.audioVolumeRippleView.setCircleViewColor(this.circlePrimaryColor);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void setStatus(int i) {
        if (i == 1) {
            this.holdToTalk.setVisibility(0);
            this.releaseToSend.setVisibility(4);
            this.releaseToSend.setText(R.string.release_to_send);
            this.slideDownToDelete.setVisibility(4);
            this.releaseToDelete.setVisibility(4);
            this.removeBin.setVisibility(4);
            return;
        }
        if (i == 2) {
            this.holdToTalk.setVisibility(4);
            this.releaseToSend.setVisibility(0);
            this.slideDownToDelete.setVisibility(0);
            this.releaseToDelete.setVisibility(4);
            this.removeBin.setVisibility(4);
            return;
        }
        if (i != 3) {
            return;
        }
        this.holdToTalk.setVisibility(4);
        this.releaseToSend.setVisibility(4);
        this.slideDownToDelete.setVisibility(4);
        this.releaseToDelete.setVisibility(0);
        this.removeBin.setVisibility(0);
    }
}
