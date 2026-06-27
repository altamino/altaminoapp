package com.narvii.chat.video.layout;

import android.animation.Animator;
import android.animation.ObjectAnimator;
import android.animation.ValueAnimator;
import android.content.Context;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewPropertyAnimator;
import android.widget.TextView;
import com.github.mmin18.widget.FlexLayout;
import com.google.android.exoplayer2.DefaultRenderersFactory;
import com.narvii.amino.R;
import com.narvii.chat.video.VVChatMembershipNameLayout;
import com.narvii.chat.video.view.VoiceCallHelper;
import com.narvii.model.Media;
import com.narvii.model.User;
import com.narvii.util.Utils;
import com.narvii.widget.BlurImageView;
import com.narvii.widget.NVImageView;
import com.narvii.widget.UserAvatarLayout;

/* loaded from: classes2.dex */
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

    public void setCallCancelClickListener(CallCancelClickListener callCancelClickListener) {
        this.cancelClickListener = callCancelClickListener;
    }

    public void setEnterConversationAnimationListener(EnterConversationAnimationListener enterConversationAnimationListener) {
        this.enterConversationAnimationListener = enterConversationAnimationListener;
    }

    public LiveCallingLayout(Context context) {
        this(context, null);
    }

    public LiveCallingLayout(Context context, AttributeSet attributeSet) {
        int i;
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
        int i2 = this.callType;
        if (i2 == 0) {
            i = this.isFloatingMode ? com.narvii.amino.mastes.R.layout.audio_calling_layout_floating : com.narvii.amino.mastes.R.layout.voice_calling_layout;
            this.callText = getContext().getString(com.narvii.amino.mastes.R.string.voice_calling);
        } else if (i2 == 1) {
            i = this.isFloatingMode ? com.narvii.amino.mastes.R.layout.video_calling_layout_floating : com.narvii.amino.mastes.R.layout.video_calling_layout;
            this.callText = getContext().getString(com.narvii.amino.mastes.R.string.status_connect);
        } else {
            i = com.narvii.amino.mastes.R.layout.audio_calling_layout;
        }
        ViewGroup.inflate(context, i, this);
        this.voiceLayoutHelper = new VoiceCallHelper(context);
    }

    @Override // android.view.View
    protected void onFinishInflate() {
        super.onFinishInflate();
        this.avatar = (UserAvatarLayout) findViewById(com.narvii.amino.mastes.R.id.user_avatar_layout);
        this.avatar.setAvatarStroke(0.0f);
        this.membershipNameLayout = (VVChatMembershipNameLayout) findViewById(com.narvii.amino.mastes.R.id.membership_nickname_layout);
        if (this.isFloatingMode) {
            this.membershipNameLayout.setForceHideBadge(true);
        }
        this.tvStatus = (TextView) findViewById(com.narvii.amino.mastes.R.id.status);
        this.tvHintInfo = (TextView) findViewById(com.narvii.amino.mastes.R.id.calling_hint_info);
        this.loadingView = findViewById(com.narvii.amino.mastes.R.id.loading);
        this.blurBgView = (BlurImageView) findViewById(com.narvii.amino.mastes.R.id.calling_bg);
        this.btnCallCancel = findViewById(com.narvii.amino.mastes.R.id.cancel_private_call);
        View view = this.btnCallCancel;
        if (view != null) {
            view.setOnClickListener(this);
            this.btnCallCancel.setVisibility(8);
        }
        if (this.blurBgView != null) {
            this.avatar.getAvatarView().setOnImageChangedListener(new NVImageView.OnImageChangedListener() { // from class: com.narvii.chat.video.layout.LiveCallingLayout.1
                @Override // com.narvii.widget.NVImageView.OnImageChangedListener
                public void onImageChanged(NVImageView nVImageView, int i, Media media) {
                    if (nVImageView.getDrawable() == null || i != 4) {
                        return;
                    }
                    LiveCallingLayout.this.blurBgView.setImageDrawable2(nVImageView.getDrawable());
                }
            });
        }
        this.tvStatus.setTextSize(1, this.isFloatingMode ? 10.0f : 12.0f);
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        CallCancelClickListener callCancelClickListener;
        if (view.getId() == com.narvii.amino.mastes.R.id.cancel_private_call && (callCancelClickListener = this.cancelClickListener) != null) {
            callCancelClickListener.onCancelClicked();
        }
    }

    @Override // android.view.View
    protected void onSizeChanged(int i, int i2, int i3, int i4) {
        super.onSizeChanged(i, i2, i3, i4);
        this.viewWidth = i;
        this.viewHeight = i2;
    }

    @Override // com.github.mmin18.widget.FlexLayout, android.view.View
    protected void onMeasure(int i, int i2) throws Resources.NotFoundException {
        super.onMeasure(i, i2);
        this.viewWidth = View.MeasureSpec.getSize(i);
        this.viewHeight = View.MeasureSpec.getSize(i2);
    }

    public void disableCancelButton() {
        this.btnCallCancel.setEnabled(false);
    }

    public void updateViews(User user, int i) {
        if (user == null) {
            return;
        }
        this.targetUser = user;
        updateStatus(i);
        UserAvatarLayout userAvatarLayout = this.avatar;
        if (userAvatarLayout != null) {
            userAvatarLayout.setUser(user);
        }
        this.membershipNameLayout.setUser(user);
    }

    public void enterConversation() throws Resources.NotFoundException {
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
        int dimensionPixelSize = getContext().getResources().getDimensionPixelSize(com.narvii.amino.mastes.R.dimen.calling_avatar_size);
        Double.isNaN(getHeight());
        float f = ((screenWidth / 2.0f) * 0.45f) / (dimensionPixelSize * 1.0f);
        ViewPropertyAnimator viewPropertyAnimatorAnimate = this.avatar.animate();
        viewPropertyAnimatorAnimate.setListener(new Animator.AnimatorListener() { // from class: com.narvii.chat.video.layout.LiveCallingLayout.2
            @Override // android.animation.Animator.AnimatorListener
            public void onAnimationRepeat(Animator animator) {
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

            @Override // android.animation.Animator.AnimatorListener
            public void onAnimationEnd(Animator animator) {
                EnterConversationAnimationListener enterConversationAnimationListener2 = LiveCallingLayout.this.enterConversationAnimationListener;
                if (enterConversationAnimationListener2 != null) {
                    enterConversationAnimationListener2.onAnimationFinished();
                }
            }

            @Override // android.animation.Animator.AnimatorListener
            public void onAnimationCancel(Animator animator) {
                EnterConversationAnimationListener enterConversationAnimationListener2 = LiveCallingLayout.this.enterConversationAnimationListener;
                if (enterConversationAnimationListener2 != null) {
                    enterConversationAnimationListener2.onAnimationFinished();
                }
            }
        });
        viewPropertyAnimatorAnimate.scaleY(f).scaleX(f).translationY((int) (r3 * (-0.1d))).translationX((int) ((r0 * 0.25f) - (0.13f * r0))).setDuration(ANIMATION_DURATION).start();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void starAlphaAnimation(View view) {
        ObjectAnimator objectAnimatorOfFloat = ObjectAnimator.ofFloat(view, "alpha", 1.0f, 0.0f);
        objectAnimatorOfFloat.setDuration(ANIMATION_DURATION);
        objectAnimatorOfFloat.start();
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void onAttachedToWindow() {
        super.onAttachedToWindow();
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void onDetachedFromWindow() {
        super.onDetachedFromWindow();
    }

    public void updateStatus(int i) {
        if (this.curStatus == i) {
            return;
        }
        this.curStatus = i;
        if (i == 1 || i == 0) {
            this.tvStatus.setVisibility(0);
            this.tvStatus.setText(this.callText);
            this.tvHintInfo.setVisibility(8);
            updateHintInfo(null);
            startCallingAnimation(this.tvStatus);
        } else if (i == 2) {
            updateHintInfo(null);
        } else if (i == 4) {
            updateHintInfo(getResources().getString(com.narvii.amino.mastes.R.string.user_busy));
        } else if (i == 3) {
            updateHintInfo(getResources().getString(com.narvii.amino.mastes.R.string.call_cancelled));
        } else if (i == 7) {
            updateHintInfo(getResources().getString(com.narvii.amino.mastes.R.string.call_declined));
        } else if (i == 10) {
            updateHintInfo(getResources().getString(com.narvii.amino.mastes.R.string.call_other_user_busy));
        } else if (i == 8 && this.isFloatingMode) {
            this.tvStatus.setText(getContext().getString(com.narvii.amino.mastes.R.string.chat_ended));
        }
        this.tvStatus.setVisibility(showStatusView(i) ? 0 : 8);
    }

    private void startCallingAnimation(final View view) {
        ValueAnimator valueAnimator = this.callingAnimation;
        if (valueAnimator == null || !valueAnimator.isRunning()) {
            this.callingAnimation = ValueAnimator.ofInt(0, 3);
            this.callingAnimation.setRepeatMode(2);
            this.callingAnimation.setRepeatCount(-1);
            this.callingAnimation.setDuration(1200L);
            this.callingAnimation.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: com.narvii.chat.video.layout.LiveCallingLayout.3
                @Override // android.animation.ValueAnimator.AnimatorUpdateListener
                public void onAnimationUpdate(ValueAnimator valueAnimator2) {
                    view.setAlpha(((Integer) valueAnimator2.getAnimatedValue()).intValue() == 0 ? 0.0f : 1.0f);
                }
            });
            this.callingAnimation.start();
        }
    }

    private boolean showStatusView(int i) {
        if (i == 0 || i == 1 || i == 4 || i == 10) {
            return true;
        }
        return this.isFloatingMode && i == 8;
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
            Utils.postDelayed(this.hintInfoAutoDismissRunnable, DefaultRenderersFactory.DEFAULT_ALLOWED_VIDEO_JOINING_TIME_MS);
        }
    }
}
