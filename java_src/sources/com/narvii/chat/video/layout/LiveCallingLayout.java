package com.narvii.chat.video.layout;

import android.animation.Animator;
import android.animation.ObjectAnimator;
import android.animation.ValueAnimator;
import android.content.Context;
import android.content.res.TypedArray;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.view.View;
import android.view.ViewPropertyAnimator;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.github.mmin18.widget.FlexLayout;
import com.narvii.amino.R;
import com.narvii.chat.video.VVChatMembershipNameLayout;
import com.narvii.chat.video.view.VoiceCallHelper;
import com.narvii.model.Media;
import com.narvii.model.User;
import com.narvii.util.Utils;
import com.narvii.widget.BlurImageView;
import com.narvii.widget.NVImageView;
import com.narvii.widget.UserAvatarLayout;

/* JADX INFO: loaded from: classes6.dex */
public class LiveCallingLayout extends FlexLayout implements View.OnClickListener {
    private static final long ANIMATION_DURATION = 400;
    private static final int CALL_TYPE_AVATAR = 2;
    private static final int CALL_TYPE_VIDEO = 1;
    private static final int CALL_TYPE_VOICE = 0;
    private static final int STATUS_UPDATE_INTERVAL = 500;
    private UserAvatarLayout avatar;
    private BlurImageView blurBgView;
    private View btnCallCancel;
    private String callText;
    private int callType;
    private ValueAnimator callingAnimation;
    CallCancelClickListener cancelClickListener;
    private int curStatus;
    EnterConversationAnimationListener enterConversationAnimationListener;
    private Runnable hintInfoAutoDismissRunnable;
    private boolean isFloatingMode;
    private View loadingView;
    private VVChatMembershipNameLayout membershipNameLayout;
    private int statusUpdateCount;
    private User targetUser;
    private TextView tvHintInfo;
    private TextView tvStatus;
    private int viewHeight;
    private int viewWidth;
    private VoiceCallHelper voiceLayoutHelper;

    public interface CallCancelClickListener {
        void onCancelClicked();
    }

    public interface EnterConversationAnimationListener {
        void onAnimationFinished();
    }

    public LiveCallingLayout(@NonNull Context context) {
        this(context, null);
    }

    private boolean showStatusView(int i10) {
        if (i10 == 0 || i10 == 1 || i10 == 4 || i10 == 10) {
            return true;
        }
        return this.isFloatingMode && i10 == 8;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void starAlphaAnimation(View view) {
        ObjectAnimator objectAnimatorOfFloat = ObjectAnimator.ofFloat(view, "alpha", 1.0f, 0.0f);
        objectAnimatorOfFloat.setDuration(ANIMATION_DURATION);
        objectAnimatorOfFloat.start();
    }

    public void setCallCancelClickListener(CallCancelClickListener callCancelClickListener) {
        this.cancelClickListener = callCancelClickListener;
    }

    public void setEnterConversationAnimationListener(EnterConversationAnimationListener enterConversationAnimationListener) {
        this.enterConversationAnimationListener = enterConversationAnimationListener;
    }

    public LiveCallingLayout(@NonNull Context context, @Nullable AttributeSet attributeSet) {
        int i10;
        super(context, attributeSet);
        this.curStatus = -1;
        this.hintInfoAutoDismissRunnable = new Runnable() { // from class: com.narvii.chat.video.layout.LiveCallingLayout.4
            @Override // java.lang.Runnable
            public void run() {
                if (LiveCallingLayout.this.tvHintInfo != null) {
                    LiveCallingLayout.this.tvHintInfo.setText((CharSequence) null);
                    LiveCallingLayout.this.tvHintInfo.setVisibility(8);
                }
            }
        };
        TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, R.styleable.LiveCallingLayout);
        this.isFloatingMode = typedArrayObtainStyledAttributes.getBoolean(0, false);
        this.callType = typedArrayObtainStyledAttributes.getInt(1, 0);
        typedArrayObtainStyledAttributes.recycle();
        int i11 = this.callType;
        if (i11 == 0) {
            i10 = this.isFloatingMode ? com.narvii.amino.master.R.layout.audio_calling_layout_floating : com.narvii.amino.master.R.layout.voice_calling_layout;
            this.callText = getContext().getString(com.narvii.amino.master.R.string.voice_calling);
        } else if (i11 == 1) {
            i10 = this.isFloatingMode ? com.narvii.amino.master.R.layout.video_calling_layout_floating : com.narvii.amino.master.R.layout.video_calling_layout;
            this.callText = getContext().getString(com.narvii.amino.master.R.string.status_connect);
        } else {
            i10 = com.narvii.amino.master.R.layout.audio_calling_layout;
        }
        View.inflate(context, i10, this);
        this.voiceLayoutHelper = new VoiceCallHelper(context);
    }

    private void startCallingAnimation(final View view) {
        ValueAnimator valueAnimator = this.callingAnimation;
        if (valueAnimator == null || !valueAnimator.isRunning()) {
            ValueAnimator valueAnimatorOfInt = ValueAnimator.ofInt(0, 3);
            this.callingAnimation = valueAnimatorOfInt;
            valueAnimatorOfInt.setRepeatMode(2);
            this.callingAnimation.setRepeatCount(-1);
            this.callingAnimation.setDuration(1200L);
            this.callingAnimation.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: com.narvii.chat.video.layout.LiveCallingLayout.3
                @Override // android.animation.ValueAnimator.AnimatorUpdateListener
                public void onAnimationUpdate(ValueAnimator valueAnimator2) {
                    float f;
                    if (((Integer) valueAnimator2.getAnimatedValue()).intValue() == 0) {
                        f = 0.0f;
                    } else {
                        f = 1.0f;
                    }
                    view.setAlpha(f);
                }
            });
            this.callingAnimation.start();
        }
    }

    public void disableCancelButton() {
        this.btnCallCancel.setEnabled(false);
    }

    public void enterConversation() {
        this.loadingView.setVisibility(8);
        if (this.isFloatingMode || this.callType != 0) {
            setVisibility(8);
            EnterConversationAnimationListener enterConversationAnimationListener = this.enterConversationAnimationListener;
            if (enterConversationAnimationListener != null) {
                enterConversationAnimationListener.onAnimationFinished();
                return;
            }
            return;
        }
        int screenWidth = Utils.getScreenWidth(getContext());
        float f = screenWidth;
        float f6 = (f / 2.0f) * 0.45f;
        float dimensionPixelSize = f6 / (getContext().getResources().getDimensionPixelSize(com.narvii.amino.master.R.dimen.calling_avatar_size) * 1.0f);
        ViewPropertyAnimator viewPropertyAnimatorAnimate = this.avatar.animate();
        viewPropertyAnimatorAnimate.setListener(new Animator.AnimatorListener() { // from class: com.narvii.chat.video.layout.LiveCallingLayout.2
            @Override // android.animation.Animator.AnimatorListener
            public void onAnimationRepeat(Animator animator) {
            }

            @Override // android.animation.Animator.AnimatorListener
            public void onAnimationCancel(Animator animator) {
                EnterConversationAnimationListener enterConversationAnimationListener2 = LiveCallingLayout.this.enterConversationAnimationListener;
                if (enterConversationAnimationListener2 != null) {
                    enterConversationAnimationListener2.onAnimationFinished();
                }
            }

            @Override // android.animation.Animator.AnimatorListener
            public void onAnimationEnd(Animator animator) {
                EnterConversationAnimationListener enterConversationAnimationListener2 = LiveCallingLayout.this.enterConversationAnimationListener;
                if (enterConversationAnimationListener2 != null) {
                    enterConversationAnimationListener2.onAnimationFinished();
                }
            }

            @Override // android.animation.Animator.AnimatorListener
            public void onAnimationStart(Animator animator) {
                if (LiveCallingLayout.this.membershipNameLayout != null) {
                    LiveCallingLayout liveCallingLayout = LiveCallingLayout.this;
                    liveCallingLayout.starAlphaAnimation(liveCallingLayout.membershipNameLayout);
                }
                if (LiveCallingLayout.this.tvStatus != null) {
                    LiveCallingLayout liveCallingLayout2 = LiveCallingLayout.this;
                    liveCallingLayout2.starAlphaAnimation(liveCallingLayout2.tvStatus);
                }
            }
        });
        viewPropertyAnimatorAnimate.scaleY(dimensionPixelSize).scaleX(dimensionPixelSize).translationY((int) (((double) getHeight()) * (-0.1d))).translationX((int) ((f * 0.25f) - (0.13f * f))).setDuration(ANIMATION_DURATION).start();
    }

    public void updateStatus(int i10) {
        if (this.curStatus == i10) {
            return;
        }
        this.curStatus = i10;
        if (i10 == 1 || i10 == 0) {
            this.tvStatus.setVisibility(0);
            this.tvStatus.setText(this.callText);
            this.tvHintInfo.setVisibility(8);
            updateHintInfo(null);
            startCallingAnimation(this.tvStatus);
        } else if (i10 == 2) {
            updateHintInfo(null);
        } else if (i10 == 4) {
            updateHintInfo(getResources().getString(com.narvii.amino.master.R.string.user_busy));
        } else if (i10 == 3) {
            updateHintInfo(getResources().getString(com.narvii.amino.master.R.string.call_cancelled));
        } else if (i10 == 7) {
            updateHintInfo(getResources().getString(com.narvii.amino.master.R.string.call_declined));
        } else if (i10 == 10) {
            updateHintInfo(getResources().getString(com.narvii.amino.master.R.string.call_other_user_busy));
        } else if (i10 == 8 && this.isFloatingMode) {
            this.tvStatus.setText(getContext().getString(com.narvii.amino.master.R.string.chat_ended));
        }
        this.tvStatus.setVisibility(showStatusView(i10) ? 0 : 8);
    }

    public void updateViews(User user, int i10) {
        if (user == null) {
            return;
        }
        this.targetUser = user;
        updateStatus(i10);
        UserAvatarLayout userAvatarLayout = this.avatar;
        if (userAvatarLayout != null) {
            userAvatarLayout.setUser(user);
        }
        this.membershipNameLayout.setUser(user);
    }

    private void updateHintInfo(String str) {
        if (TextUtils.isEmpty(str)) {
            TextView textView = this.tvHintInfo;
            if (textView != null) {
                textView.setVisibility(8);
                this.tvHintInfo.setText((CharSequence) null);
            }
            Utils.handler.removeCallbacks(this.hintInfoAutoDismissRunnable);
            return;
        }
        TextView textView2 = this.tvHintInfo;
        if (textView2 != null) {
            textView2.setVisibility(0);
            this.tvHintInfo.setText(str);
            Utils.handler.removeCallbacks(this.hintInfoAutoDismissRunnable);
            Utils.postDelayed(this.hintInfoAutoDismissRunnable, 5000L);
        }
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void onAttachedToWindow() {
        super.onAttachedToWindow();
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        CallCancelClickListener callCancelClickListener;
        if (view.getId() == com.narvii.amino.master.R.id.cancel_private_call && (callCancelClickListener = this.cancelClickListener) != null) {
            callCancelClickListener.onCancelClicked();
        }
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void onDetachedFromWindow() {
        super.onDetachedFromWindow();
    }

    @Override // android.view.View
    protected void onFinishInflate() {
        float f;
        super.onFinishInflate();
        UserAvatarLayout userAvatarLayout = (UserAvatarLayout) findViewById(com.narvii.amino.master.R.id.user_avatar_layout);
        this.avatar = userAvatarLayout;
        userAvatarLayout.setAvatarStroke(0.0f);
        VVChatMembershipNameLayout vVChatMembershipNameLayout = (VVChatMembershipNameLayout) findViewById(com.narvii.amino.master.R.id.membership_nickname_layout);
        this.membershipNameLayout = vVChatMembershipNameLayout;
        if (this.isFloatingMode) {
            vVChatMembershipNameLayout.setForceHideBadge(true);
        }
        this.tvStatus = (TextView) findViewById(com.narvii.amino.master.R.id.status);
        this.tvHintInfo = (TextView) findViewById(com.narvii.amino.master.R.id.calling_hint_info);
        this.loadingView = findViewById(com.narvii.amino.master.R.id.loading);
        this.blurBgView = (BlurImageView) findViewById(com.narvii.amino.master.R.id.calling_bg);
        View viewFindViewById = findViewById(com.narvii.amino.master.R.id.cancel_private_call);
        this.btnCallCancel = viewFindViewById;
        if (viewFindViewById != null) {
            viewFindViewById.setOnClickListener(this);
            this.btnCallCancel.setVisibility(8);
        }
        if (this.blurBgView != null) {
            this.avatar.getAvatarView().setOnImageChangedListener(new NVImageView.OnImageChangedListener() { // from class: com.narvii.chat.video.layout.LiveCallingLayout.1
                @Override // com.narvii.widget.NVImageView.OnImageChangedListener
                public void onImageChanged(NVImageView nVImageView, int i10, Media media) {
                    if (nVImageView.getDrawable() != null && i10 == 4) {
                        LiveCallingLayout.this.blurBgView.setImageDrawable2(nVImageView.getDrawable());
                    }
                }
            });
        }
        TextView textView = this.tvStatus;
        if (this.isFloatingMode) {
            f = 10.0f;
        } else {
            f = 12.0f;
        }
        textView.setTextSize(1, f);
    }

    @Override // com.github.mmin18.widget.FlexLayout, android.view.View
    protected void onMeasure(int i10, int i11) {
        super.onMeasure(i10, i11);
        this.viewWidth = View.MeasureSpec.getSize(i10);
        this.viewHeight = View.MeasureSpec.getSize(i11);
    }

    @Override // android.view.View
    protected void onSizeChanged(int i10, int i11, int i12, int i13) {
        super.onSizeChanged(i10, i11, i12, i13);
        this.viewWidth = i10;
        this.viewHeight = i11;
    }
}
