package com.narvii.chat.audio;

import android.animation.Animator;
import android.animation.AnimatorSet;
import android.animation.ObjectAnimator;
import android.content.Context;
import android.graphics.Rect;
import android.graphics.drawable.ShapeDrawable;
import android.graphics.drawable.shapes.OvalShape;
import android.net.Uri;
import android.text.SpannableString;
import android.text.style.StyleSpan;
import android.util.AttributeSet;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.view.animation.LinearInterpolator;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.constraintlayout.motion.widget.Key;
import androidx.core.content.ContextCompat;
import androidx.fragment.app.Fragment;
import com.narvii.amino.master.R;
import com.narvii.chat.RecordEventFinishListener;
import com.narvii.chat.RecordFinishListener;
import com.narvii.chat.RecordInfoListener;
import com.narvii.media.IMediaRecordListener;
import com.narvii.media.MediaRecordManager;
import com.narvii.permisson.NVPermission;
import com.narvii.permisson.PermissionUtilsV2;
import com.narvii.util.Utils;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

/* JADX INFO: loaded from: classes5.dex */
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
        void onRecordTimeChange(long j6);
    }

    public interface OnStatusChangeListener {
        void onStatusChange(int i10);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void setStatus(int i10) {
        if (i10 == 1) {
            this.holdToTalk.setVisibility(0);
            this.releaseToSend.setVisibility(4);
            this.releaseToSend.setText(R.string.release_to_send);
            this.slideDownToDelete.setVisibility(4);
            this.releaseToDelete.setVisibility(4);
            this.removeBin.setVisibility(4);
            return;
        }
        if (i10 == 2) {
            this.holdToTalk.setVisibility(4);
            this.releaseToSend.setVisibility(0);
            this.slideDownToDelete.setVisibility(0);
            this.releaseToDelete.setVisibility(4);
            this.removeBin.setVisibility(4);
            return;
        }
        if (i10 != 3) {
            return;
        }
        this.holdToTalk.setVisibility(4);
        this.releaseToSend.setVisibility(4);
        this.slideDownToDelete.setVisibility(4);
        this.releaseToDelete.setVisibility(0);
        this.removeBin.setVisibility(0);
    }

    public void setFragment(Fragment fragment) {
        this.fragment = fragment;
    }

    public void setRecordFinishListener(RecordFinishListener recordFinishListener) {
        this.recordFinishListener = recordFinishListener;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void changeState(int i10) {
        if (this.mCurrentState != i10) {
            this.mCurrentState = i10;
            this.recordBg.setVisibility(0);
            this.recordIcon.setColorFilter(-1);
            if (i10 == 1) {
                if (getRootView() instanceof ViewGroup) {
                    ((ViewGroup) getRootView()).setMotionEventSplittingEnabled(true);
                }
                this.recordBg.setBackgroundResource(R.drawable.chat_audio_record_bg_normal);
                this.audioVolumeRippleView.setVisibility(8);
                this.recordIcon.setVisibility(8);
                this.audioVolumeRippleView.setCircleViewColor(this.circlePrimaryColor);
            } else if (i10 == 2) {
                if (getRootView() instanceof ViewGroup) {
                    ((ViewGroup) getRootView()).setMotionEventSplittingEnabled(false);
                }
                this.audioVolumeRippleView.setVisibility(0);
                this.recordIcon.setVisibility(8);
                this.recordBg.setBackgroundResource(R.drawable.chat_audio_record_bg_pressed);
                this.audioVolumeRippleView.setCircleViewColor(this.circlePrimaryColor);
            } else if (i10 == 3) {
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
                    it.next().onStatusChange(i10);
                }
            }
        }
    }

    private boolean wantToCancel(int i10, int i11) {
        Rect rect = this.audioRecordRect;
        return rect != null && i11 > rect.bottom;
    }

    public void addOnRecordTimeChangeListener(OnRecordTimeChangeListener onRecordTimeChangeListener) {
        this.onRecordTimeChangeListenerList.add(onRecordTimeChangeListener);
    }

    public void addOnStatusChangeListener(OnStatusChangeListener onStatusChangeListener) {
        this.onStatusChangeListenerList.add(onStatusChangeListener);
    }

    public void addRecordEventFinishListener(RecordEventFinishListener recordEventFinishListener) {
        this.recordEventFinishListeners.add(recordEventFinishListener);
    }

    public void addRecordInfoListener(RecordInfoListener recordInfoListener) {
        this.recordInfoListenerList.add(recordInfoListener);
    }

    public void removeRecordEventFinishListener(RecordEventFinishListener recordEventFinishListener) {
        this.recordEventFinishListeners.remove(recordEventFinishListener);
    }

    public AudioRecordLayout(@NonNull Context context, @Nullable AttributeSet attributeSet) {
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
            public void onStatusChange(int i10) {
                AudioRecordLayout.this.setStatus(i10);
            }
        });
        addOnRecordTimeChangeListener(new OnRecordTimeChangeListener() { // from class: com.narvii.chat.audio.AudioRecordLayout.4
            @Override // com.narvii.chat.audio.AudioRecordLayout.OnRecordTimeChangeListener
            public void onRecordTimeChange(long j6) {
                int i10 = (int) (180 - (j6 / 1000));
                if (i10 > 10 || i10 < 0) {
                    return;
                }
                String string = AudioRecordLayout.this.getContext().getString(R.string.release_to_send);
                SpannableString spannableString = new SpannableString(string + " (" + i10 + ")");
                spannableString.setSpan(new StyleSpan(1), string.length() + 2, string.length() + 2 + (i10 + "").length(), 33);
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
            public void onRecordStart(long j6) {
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
        AudioVolumeRippleView audioVolumeRippleView = (AudioVolumeRippleView) findViewById(R.id.volume_ripple);
        this.audioVolumeRippleView = audioVolumeRippleView;
        audioVolumeRippleView.setCircleViewColor(this.circlePrimaryColor);
    }

    /* JADX WARN: Code duplicated, block: B:15:0x0034  */
    /* JADX WARN: Code duplicated, block: B:17:0x003d  */
    /* JADX WARN: Code duplicated, block: B:19:0x0041  */
    /* JADX WARN: Code duplicated, block: B:22:0x004b A[LOOP:0: B:20:0x0045->B:22:0x004b, LOOP_END] */
    /* JADX WARN: Code duplicated, block: B:25:0x0059  */
    /* JADX WARN: Code duplicated, block: B:27:0x005d  */
    /* JADX WARN: Code duplicated, block: B:30:0x0067 A[LOOP:1: B:28:0x0061->B:30:0x0067, LOOP_END] */
    /* JADX WARN: Code duplicated, block: B:33:0x0075  */
    /* JADX WARN: Code duplicated, block: B:36:0x007f A[LOOP:2: B:34:0x0079->B:36:0x007f, LOOP_END] */
    /* JADX WARN: Code duplicated, block: B:39:0x008d  */
    /* JADX WARN: Code duplicated, block: B:50:0x00bf  */
    /* JADX WARN: Code duplicated, block: B:52:0x00c9 A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:53:0x00cb  */
    @Override // android.view.View
    public boolean onTouchEvent(MotionEvent motionEvent) {
        List<RecordInfoListener> list;
        List<RecordEventFinishListener> list2;
        int i10;
        Iterator<RecordEventFinishListener> it;
        Iterator<RecordInfoListener> it2;
        List<RecordInfoListener> list3;
        Iterator<RecordInfoListener> it3;
        int action = motionEvent.getAction();
        int x6 = (int) motionEvent.getX();
        int y6 = (int) motionEvent.getY();
        if (action != 0) {
            if (action != 1) {
                if (action != 2) {
                    if (action == 3) {
                        this.audioVolumeRippleView.stopAnimation();
                        if (this.beyondMaxDuration) {
                            list3 = this.recordInfoListenerList;
                            if (list3 != null) {
                                it3 = list3.iterator();
                                while (it3.hasNext()) {
                                    it3.next().onBeyondMaxOver();
                                }
                            }
                            changeState(1);
                            return true;
                        }
                        list = this.recordInfoListenerList;
                        if (list != null) {
                            it2 = list.iterator();
                            while (it2.hasNext()) {
                                it2.next().onRecordEnd();
                            }
                        }
                        list2 = this.recordEventFinishListeners;
                        if (list2 != null) {
                            it = list2.iterator();
                            while (it.hasNext()) {
                                it.next().onRecordEnd();
                            }
                        }
                        i10 = this.mCurrentState;
                        if (i10 == 2) {
                            if (!this.mediaRecordManager.isRecording()) {
                                this.mediaRecordManager.finishRecord();
                            } else {
                                this.mediaRecordManager.finishRecord();
                            }
                            changeState(1);
                        } else if (i10 == 3) {
                            this.mediaRecordManager.destroyRecord();
                            AnimatorSet animatorSet = new AnimatorSet();
                            final int height = (int) (((((View) getParent()).getHeight() / 2) - (Utils.dpToPx(getContext(), 40.0f) / 2.0f)) - Utils.dpToPx(getContext(), 30.0f));
                            animatorSet.playTogether(ObjectAnimator.ofFloat(this.recordIcon, Key.ROTATION, 0.0f, 140.0f), ObjectAnimator.ofFloat(this.recordIcon, "TranslationY", 0.0f, height));
                            animatorSet.setDuration(300L);
                            animatorSet.setInterpolator(new LinearInterpolator());
                            animatorSet.start();
                            animatorSet.addListener(new Animator.AnimatorListener() { // from class: com.narvii.chat.audio.AudioRecordLayout.2
                                @Override // android.animation.Animator.AnimatorListener
                                public void onAnimationCancel(Animator animator) {
                                }

                                @Override // android.animation.Animator.AnimatorListener
                                public void onAnimationRepeat(Animator animator) {
                                }

                                @Override // android.animation.Animator.AnimatorListener
                                public void onAnimationStart(Animator animator) {
                                }

                                @Override // android.animation.Animator.AnimatorListener
                                public void onAnimationEnd(Animator animator) {
                                    ArrayList arrayList = new ArrayList();
                                    AudioRecordLayout audioRecordLayout = AudioRecordLayout.this;
                                    ImageView imageView = audioRecordLayout.recordIcon;
                                    int i11 = height;
                                    arrayList.add(ObjectAnimator.ofFloat(imageView, "TranslationY", i11, i11 + Utils.dpToPx(audioRecordLayout.getContext(), 130.0f)));
                                    AudioRecordLayout audioRecordLayout2 = AudioRecordLayout.this;
                                    arrayList.add(ObjectAnimator.ofFloat(audioRecordLayout2.removeBin, "TranslationY", 0.0f, Utils.dpToPx(audioRecordLayout2.getContext(), 130.0f)));
                                    ObjectAnimator[] objectAnimatorArr = (ObjectAnimator[]) arrayList.toArray(new ObjectAnimator[arrayList.size()]);
                                    AnimatorSet animatorSet2 = new AnimatorSet();
                                    animatorSet2.playTogether(objectAnimatorArr);
                                    animatorSet2.setDuration(100L);
                                    animatorSet2.start();
                                    animatorSet2.addListener(new Animator.AnimatorListener() { // from class: com.narvii.chat.audio.AudioRecordLayout.2.1
                                        @Override // android.animation.Animator.AnimatorListener
                                        public void onAnimationCancel(Animator animator2) {
                                        }

                                        @Override // android.animation.Animator.AnimatorListener
                                        public void onAnimationRepeat(Animator animator2) {
                                        }

                                        @Override // android.animation.Animator.AnimatorListener
                                        public void onAnimationStart(Animator animator2) {
                                        }

                                        @Override // android.animation.Animator.AnimatorListener
                                        public void onAnimationEnd(Animator animator2) {
                                            List<RecordInfoListener> list4 = AudioRecordLayout.this.recordInfoListenerList;
                                            if (list4 != null) {
                                                Iterator<RecordInfoListener> it4 = list4.iterator();
                                                while (it4.hasNext()) {
                                                    it4.next().onRecordCancel();
                                                }
                                            }
                                            AudioRecordLayout.this.changeState(1);
                                            AudioRecordLayout.this.recordIcon.setRotation(0.0f);
                                            AudioRecordLayout.this.recordIcon.setTranslationX(0.0f);
                                            AudioRecordLayout.this.recordIcon.setTranslationY(0.0f);
                                            AudioRecordLayout.this.removeBin.setTranslationX(0.0f);
                                            AudioRecordLayout.this.removeBin.setTranslationY(0.0f);
                                        }
                                    });
                                }
                            });
                        }
                    }
                } else if (this.mediaRecordManager.isRecording()) {
                    if (wantToCancel(x6, y6)) {
                        changeState(3);
                    } else {
                        changeState(2);
                    }
                }
            } else {
                this.audioVolumeRippleView.stopAnimation();
                if (this.beyondMaxDuration) {
                    list3 = this.recordInfoListenerList;
                    if (list3 != null) {
                        it3 = list3.iterator();
                        while (it3.hasNext()) {
                            it3.next().onBeyondMaxOver();
                        }
                    }
                    changeState(1);
                    return true;
                }
                list = this.recordInfoListenerList;
                if (list != null) {
                    it2 = list.iterator();
                    while (it2.hasNext()) {
                        it2.next().onRecordEnd();
                    }
                }
                list2 = this.recordEventFinishListeners;
                if (list2 != null) {
                    it = list2.iterator();
                    while (it.hasNext()) {
                        it.next().onRecordEnd();
                    }
                }
                i10 = this.mCurrentState;
                if (i10 == 2) {
                    if (!this.mediaRecordManager.isRecording() && this.mediaRecordManager.getRecordDuration() < 1000) {
                        List<RecordInfoListener> list4 = this.recordInfoListenerList;
                        if (list4 != null) {
                            Iterator<RecordInfoListener> it4 = list4.iterator();
                            while (it4.hasNext()) {
                                it4.next().onMessageTooShort();
                            }
                        }
                        this.mediaRecordManager.destroyRecord();
                    } else {
                        this.mediaRecordManager.finishRecord();
                    }
                    changeState(1);
                } else if (i10 == 3) {
                    this.mediaRecordManager.destroyRecord();
                    AnimatorSet animatorSet2 = new AnimatorSet();
                    final int height2 = (int) (((((View) getParent()).getHeight() / 2) - (Utils.dpToPx(getContext(), 40.0f) / 2.0f)) - Utils.dpToPx(getContext(), 30.0f));
                    animatorSet2.playTogether(ObjectAnimator.ofFloat(this.recordIcon, Key.ROTATION, 0.0f, 140.0f), ObjectAnimator.ofFloat(this.recordIcon, "TranslationY", 0.0f, height2));
                    animatorSet2.setDuration(300L);
                    animatorSet2.setInterpolator(new LinearInterpolator());
                    animatorSet2.start();
                    animatorSet2.addListener(new Animator.AnimatorListener() { // from class: com.narvii.chat.audio.AudioRecordLayout.2
                        @Override // android.animation.Animator.AnimatorListener
                        public void onAnimationCancel(Animator animator) {
                        }

                        @Override // android.animation.Animator.AnimatorListener
                        public void onAnimationRepeat(Animator animator) {
                        }

                        @Override // android.animation.Animator.AnimatorListener
                        public void onAnimationStart(Animator animator) {
                        }

                        @Override // android.animation.Animator.AnimatorListener
                        public void onAnimationEnd(Animator animator) {
                            ArrayList arrayList = new ArrayList();
                            AudioRecordLayout audioRecordLayout = AudioRecordLayout.this;
                            ImageView imageView = audioRecordLayout.recordIcon;
                            int i11 = height2;
                            arrayList.add(ObjectAnimator.ofFloat(imageView, "TranslationY", i11, i11 + Utils.dpToPx(audioRecordLayout.getContext(), 130.0f)));
                            AudioRecordLayout audioRecordLayout2 = AudioRecordLayout.this;
                            arrayList.add(ObjectAnimator.ofFloat(audioRecordLayout2.removeBin, "TranslationY", 0.0f, Utils.dpToPx(audioRecordLayout2.getContext(), 130.0f)));
                            ObjectAnimator[] objectAnimatorArr = (ObjectAnimator[]) arrayList.toArray(new ObjectAnimator[arrayList.size()]);
                            AnimatorSet animatorSet3 = new AnimatorSet();
                            animatorSet3.playTogether(objectAnimatorArr);
                            animatorSet3.setDuration(100L);
                            animatorSet3.start();
                            animatorSet3.addListener(new Animator.AnimatorListener() { // from class: com.narvii.chat.audio.AudioRecordLayout.2.1
                                @Override // android.animation.Animator.AnimatorListener
                                public void onAnimationCancel(Animator animator2) {
                                }

                                @Override // android.animation.Animator.AnimatorListener
                                public void onAnimationRepeat(Animator animator2) {
                                }

                                @Override // android.animation.Animator.AnimatorListener
                                public void onAnimationStart(Animator animator2) {
                                }

                                @Override // android.animation.Animator.AnimatorListener
                                public void onAnimationEnd(Animator animator2) {
                                    List<RecordInfoListener> list5 = AudioRecordLayout.this.recordInfoListenerList;
                                    if (list5 != null) {
                                        Iterator<RecordInfoListener> it5 = list5.iterator();
                                        while (it5.hasNext()) {
                                            it5.next().onRecordCancel();
                                        }
                                    }
                                    AudioRecordLayout.this.changeState(1);
                                    AudioRecordLayout.this.recordIcon.setRotation(0.0f);
                                    AudioRecordLayout.this.recordIcon.setTranslationX(0.0f);
                                    AudioRecordLayout.this.recordIcon.setTranslationY(0.0f);
                                    AudioRecordLayout.this.removeBin.setTranslationX(0.0f);
                                    AudioRecordLayout.this.removeBin.setTranslationY(0.0f);
                                }
                            });
                        }
                    });
                }
            }
        } else {
            if (this.audioHelper.showAVChatOnToast()) {
                return false;
            }
            if (PermissionUtilsV2.INSTANCE.hasSelfPermission(getContext(), "android.permission.RECORD_AUDIO")) {
                Rect rect = new Rect();
                this.audioRecordRect = rect;
                this.audioRecordView.getHitRect(rect);
                if (!this.audioRecordRect.contains(x6, y6)) {
                    return false;
                }
                changeState(2);
                this.beyondMaxDuration = false;
                this.mediaRecordManager.startRecord(new IMediaRecordListener() { // from class: com.narvii.chat.audio.AudioRecordLayout.1
                    @Override // com.narvii.media.IMediaRecordListener
                    public void onRecordFinish(Uri uri, long j6, boolean z6) {
                        AudioRecordLayout audioRecordLayout = AudioRecordLayout.this;
                        List<RecordInfoListener> list5 = audioRecordLayout.recordInfoListenerList;
                        if (list5 != null) {
                            if (z6) {
                                audioRecordLayout.beyondMaxDuration = true;
                                Iterator<RecordInfoListener> it5 = list5.iterator();
                                while (it5.hasNext()) {
                                    it5.next().onBeyondMaxDuration();
                                }
                            }
                            Iterator<RecordInfoListener> it6 = AudioRecordLayout.this.recordInfoListenerList.iterator();
                            while (it6.hasNext()) {
                                it6.next().onRecordEnd();
                            }
                        }
                        RecordFinishListener recordFinishListener = AudioRecordLayout.this.recordFinishListener;
                        if (recordFinishListener != null) {
                            recordFinishListener.onRecordFinish(uri, j6, 110);
                        }
                    }

                    @Override // com.narvii.media.IMediaRecordListener
                    public void onRecordStart(long j6) {
                        List<RecordInfoListener> list5 = AudioRecordLayout.this.recordInfoListenerList;
                        if (list5 != null) {
                            Iterator<RecordInfoListener> it5 = list5.iterator();
                            while (it5.hasNext()) {
                                it5.next().onRecordStart(j6);
                            }
                        }
                    }

                    @Override // com.narvii.media.IMediaRecordListener
                    public void onRecordTimeChange(long j6) {
                        List<OnRecordTimeChangeListener> list5 = AudioRecordLayout.this.onRecordTimeChangeListenerList;
                        if (list5 != null) {
                            Iterator<OnRecordTimeChangeListener> it5 = list5.iterator();
                            while (it5.hasNext()) {
                                it5.next().onRecordTimeChange(j6);
                            }
                        }
                    }

                    @Override // com.narvii.media.IMediaRecordListener
                    public void onVolumeChange(int i11) {
                        if (AudioRecordLayout.this.mCurrentState != 1) {
                            AudioRecordLayout.this.audioVolumeRippleView.setVolume(i11);
                        }
                    }
                });
            } else {
                Fragment fragment = this.fragment;
                if (fragment == null) {
                    return false;
                }
                NVPermission.builder(fragment).permission("android.permission.RECORD_AUDIO").requestCode(200).request();
                return false;
            }
        }
        return true;
    }
}
