package com.narvii.chat.screenroom;

import android.animation.Animator;
import android.animation.ObjectAnimator;
import android.animation.ValueAnimator;
import android.os.Handler;
import android.util.Property;
import android.view.View;
import android.view.ViewGroup;
import android.view.animation.BounceInterpolator;
import android.view.animation.OvershootInterpolator;
import android.widget.ImageView;
import android.widget.TextView;
import com.google.firebase.crashlytics.internal.common.b0;
import com.narvii.amino.master.R;
import com.narvii.app.NVContext;
import com.narvii.model.ChatThread;
import com.narvii.model.api.ApiResponse;
import com.narvii.model.api.ReputationGetResponse;
import com.narvii.model.api.ReputationPostResponse;
import com.narvii.util.NVToast;
import com.narvii.util.Utils;
import com.narvii.util.http.ApiRequest;
import com.narvii.util.http.ApiResponseListener;
import com.narvii.util.http.ApiService;
import com.narvii.util.http.NameValuePair;
import com.narvii.widget.ThumbImageView;
import java.math.BigDecimal;
import java.text.DecimalFormat;
import java.util.List;

/* JADX INFO: loaded from: classes4.dex */
public class ReputationEarningComposite {
    private static final int API_ERR_CHAT_VVCHAT_NO_MORE_REPUTATIONS = 1627;
    private static final int BASE_ANIMATION_DURATION = 300;
    private static final int BUBBLE_JUMP_INTERVAL = 3300;
    private static final int REPUTATION_REFRESH_INTERVAL = 15000;
    private ApiService apiService;
    private ThumbImageView bubble;
    private ObjectAnimator bubbleAlpha;
    private ObjectAnimator bubbleScaleX;
    private ObjectAnimator bubbleScaleY;
    private ObjectAnimator bubbleTransDown;
    private ObjectAnimator bubbleTransUp;
    private ChatThread chatThread;
    private NVContext context;
    private float curUserTotalRep;
    private ObjectAnimator dropAlpha;
    private ValueAnimator explosionContentAnimator;
    private ImageView explosionDrops;
    private TextView explosionText;
    private ObjectAnimator explosionTextAlpha;
    private ObjectAnimator explosionTextTransY;
    private ApiRequest getRepRequest;
    private Handler handler;
    private boolean isDestroyed;
    private ValueAnimator labelContentAnimator;
    private ObjectAnimator labelScaleX;
    private ObjectAnimator labelScaleY;
    private float maxRepPerRound;
    private TextView newRepAlert;
    private ObjectAnimator newRepAlertAlpha;
    private ObjectAnimator newRepAlertTransX;
    private ApiRequest postRepRequest;
    private TextView repTextBubble;
    private boolean repThresholdReached;
    private View root;
    private int curAvailableRepLevel = 0;
    private float curAvailableRep = 0.0f;
    private float prevRep = 0.0f;
    private ApiResponseListener<ReputationGetResponse> getRepListener = new ApiResponseListener<ReputationGetResponse>(ReputationGetResponse.class) { // from class: com.narvii.chat.screenroom.ReputationEarningComposite.1
        @Override // com.narvii.util.http.ApiResponseListener
        public void onFail(ApiRequest apiRequest, int i10, List<NameValuePair> list, String str, ApiResponse apiResponse, Throwable th) {
            if (!ReputationEarningComposite.this.isDestroyed && i10 == ReputationEarningComposite.API_ERR_CHAT_VVCHAT_NO_MORE_REPUTATIONS) {
                ReputationEarningComposite.this.repThresholdReached = true;
                if (ReputationEarningComposite.this.handler != null) {
                    ReputationEarningComposite.this.handler.removeCallbacks(ReputationEarningComposite.this.getRepTask);
                }
                if (ReputationEarningComposite.this.curAvailableRepLevel == 0) {
                    if (ReputationEarningComposite.this.root != null) {
                        ReputationEarningComposite.this.root.setVisibility(8);
                    }
                } else if (ReputationEarningComposite.this.handler != null) {
                    ReputationEarningComposite.this.handler.postDelayed(ReputationEarningComposite.this.bubbleJumpTask, 3300L);
                }
            }
        }

        @Override // com.narvii.util.http.ApiResponseListener
        public void onFinish(ApiRequest apiRequest, ReputationGetResponse reputationGetResponse) throws Exception {
            if (ReputationEarningComposite.this.isDestroyed || reputationGetResponse == null || ReputationEarningComposite.this.bubble == null || ReputationEarningComposite.this.repTextBubble == null) {
                return;
            }
            ReputationEarningComposite.this.curUserTotalRep = reputationGetResponse.userReputation;
            ReputationEarningComposite.this.maxRepPerRound = reputationGetResponse.maxReputation;
            if (reputationGetResponse.availableReputation > ReputationEarningComposite.this.curAvailableRep) {
                BigDecimal bigDecimal = new BigDecimal(reputationGetResponse.availableReputation - ReputationEarningComposite.this.curAvailableRep);
                ReputationEarningComposite.this.newRepAlert.setText(bigDecimal.setScale(1, 4) + " REP");
                ReputationEarningComposite.this.newRepAlertTransX.start();
                ReputationEarningComposite.this.newRepAlertAlpha.start();
                ReputationEarningComposite reputationEarningComposite = ReputationEarningComposite.this;
                reputationEarningComposite.prevRep = reputationEarningComposite.curAvailableRep;
                ReputationEarningComposite.this.curAvailableRep = reputationGetResponse.availableReputation;
            }
            if (ReputationEarningComposite.this.curAvailableRepLevel == 0 || ReputationEarningComposite.this.handler == null) {
                return;
            }
            ReputationEarningComposite.this.handler.postDelayed(ReputationEarningComposite.this.bubbleJumpTask, 3300L);
        }
    };
    private Runnable getRepTask = new Runnable() { // from class: com.narvii.chat.screenroom.ReputationEarningComposite.2
        @Override // java.lang.Runnable
        public void run() {
            if (ReputationEarningComposite.this.handler != null) {
                ReputationEarningComposite.this.handler.removeCallbacks(ReputationEarningComposite.this.bubbleJumpTask);
                ReputationEarningComposite.this.handler.postDelayed(this, 15000L);
            }
            ReputationEarningComposite.this.apiService.exec(ReputationEarningComposite.this.getRepRequest, ReputationEarningComposite.this.getRepListener);
        }
    };
    private Runnable bubbleJumpTask = new Runnable() { // from class: com.narvii.chat.screenroom.ReputationEarningComposite.3
        @Override // java.lang.Runnable
        public void run() {
            ReputationEarningComposite.this.bubbleTransUp.start();
            ReputationEarningComposite.this.bubbleTransDown.start();
            if (ReputationEarningComposite.this.handler != null) {
                ReputationEarningComposite.this.handler.postDelayed(this, 3300L);
            }
        }
    };
    private Runnable resetBubble = new Runnable() { // from class: com.narvii.chat.screenroom.ReputationEarningComposite.4
        @Override // java.lang.Runnable
        public void run() {
            if (ReputationEarningComposite.this.bubble != null) {
                ReputationEarningComposite.this.bubble.setClickable(true);
            }
            ReputationEarningComposite.this.curAvailableRep = 0.0f;
            ReputationEarningComposite.this.prevRep = 0.0f;
            ReputationEarningComposite.this.curAvailableRepLevel = 0;
            if (!ReputationEarningComposite.this.repThresholdReached) {
                ReputationEarningComposite.this.updateBubbleStyle(0);
                if (ReputationEarningComposite.this.handler != null) {
                    ReputationEarningComposite.this.handler.postDelayed(ReputationEarningComposite.this.getRepTask, 15000L);
                    return;
                }
                return;
            }
            if (ReputationEarningComposite.this.handler != null) {
                ReputationEarningComposite.this.handler.removeCallbacks(ReputationEarningComposite.this.bubbleJumpTask);
            }
            if (ReputationEarningComposite.this.root != null) {
                ReputationEarningComposite.this.root.setVisibility(8);
            }
        }
    };

    private int checkRepLevel(float f) {
        if (f == 0.0f) {
            return 0;
        }
        float f6 = this.maxRepPerRound;
        if (f == f6) {
            return 5;
        }
        float f7 = 0.2f * f6;
        float f10 = 0.4f * f6;
        float f11 = 0.6f * f6;
        float f12 = f6 * 0.8f;
        if (f > 0.0f && f <= f7) {
            return 1;
        }
        if (f > f7 && f <= f10) {
            return 2;
        }
        if (f > f10 && f <= f11) {
            return 3;
        }
        if (f <= f11 || f > f12) {
            return f > f12 ? 5 : 0;
        }
        return 4;
    }

    public void destroy() {
        this.isDestroyed = true;
        Handler handler = this.handler;
        if (handler != null) {
            handler.removeCallbacks(this.getRepTask);
            this.handler.removeCallbacks(this.bubbleJumpTask);
            this.handler.removeCallbacks(this.resetBubble);
            this.handler = null;
        }
        cancelAnimators();
    }

    private void cancelAnimators() {
        ObjectAnimator objectAnimator = this.bubbleTransUp;
        if (objectAnimator != null) {
            objectAnimator.cancel();
        }
        ObjectAnimator objectAnimator2 = this.bubbleTransDown;
        if (objectAnimator2 != null) {
            objectAnimator2.cancel();
        }
        ObjectAnimator objectAnimator3 = this.bubbleScaleX;
        if (objectAnimator3 != null) {
            objectAnimator3.cancel();
        }
        ObjectAnimator objectAnimator4 = this.bubbleScaleY;
        if (objectAnimator4 != null) {
            objectAnimator4.cancel();
        }
        ObjectAnimator objectAnimator5 = this.bubbleAlpha;
        if (objectAnimator5 != null) {
            objectAnimator5.cancel();
        }
        ObjectAnimator objectAnimator6 = this.dropAlpha;
        if (objectAnimator6 != null) {
            objectAnimator6.cancel();
        }
        ObjectAnimator objectAnimator7 = this.labelScaleX;
        if (objectAnimator7 != null) {
            objectAnimator7.cancel();
        }
        ObjectAnimator objectAnimator8 = this.labelScaleY;
        if (objectAnimator8 != null) {
            objectAnimator8.cancel();
        }
        ObjectAnimator objectAnimator9 = this.explosionTextAlpha;
        if (objectAnimator9 != null) {
            objectAnimator9.cancel();
        }
        ObjectAnimator objectAnimator10 = this.explosionTextTransY;
        if (objectAnimator10 != null) {
            objectAnimator10.cancel();
        }
        ObjectAnimator objectAnimator11 = this.newRepAlertAlpha;
        if (objectAnimator11 != null) {
            objectAnimator11.cancel();
        }
        ObjectAnimator objectAnimator12 = this.newRepAlertTransX;
        if (objectAnimator12 != null) {
            objectAnimator12.cancel();
        }
        ValueAnimator valueAnimator = this.labelContentAnimator;
        if (valueAnimator != null) {
            valueAnimator.cancel();
        }
        ValueAnimator valueAnimator2 = this.explosionContentAnimator;
        if (valueAnimator2 != null) {
            valueAnimator2.cancel();
        }
    }

    private void initAnimators() {
        View view = this.root;
        Property property = View.TRANSLATION_Y;
        this.bubbleTransUp = ObjectAnimator.ofFloat(view, (Property<View, Float>) property, 0.0f, -75.0f).setDuration(300L);
        ObjectAnimator duration = ObjectAnimator.ofFloat(this.root, (Property<View, Float>) property, -75.0f, 0.0f).setDuration(300L);
        this.bubbleTransDown = duration;
        duration.setStartDelay(300L);
        this.bubbleTransDown.setInterpolator(new BounceInterpolator());
        ThumbImageView thumbImageView = this.bubble;
        Property property2 = View.SCALE_X;
        ObjectAnimator duration2 = ObjectAnimator.ofFloat(thumbImageView, (Property<ThumbImageView, Float>) property2, 1.0f, 1.2f).setDuration(300L);
        this.bubbleScaleX = duration2;
        duration2.setInterpolator(new OvershootInterpolator(3.0f));
        ThumbImageView thumbImageView2 = this.bubble;
        Property property3 = View.SCALE_Y;
        ObjectAnimator duration3 = ObjectAnimator.ofFloat(thumbImageView2, (Property<ThumbImageView, Float>) property3, 1.0f, 1.2f).setDuration(300L);
        this.bubbleScaleY = duration3;
        duration3.setInterpolator(new OvershootInterpolator(3.0f));
        ThumbImageView thumbImageView3 = this.bubble;
        Property property4 = View.ALPHA;
        this.bubbleAlpha = ObjectAnimator.ofFloat(thumbImageView3, (Property<ThumbImageView, Float>) property4, 1.0f, 0.0f).setDuration(300L);
        ObjectAnimator duration4 = ObjectAnimator.ofFloat(this.repTextBubble, (Property<TextView, Float>) property2, 1.0f, 1.2f).setDuration(300L);
        this.labelScaleX = duration4;
        duration4.setInterpolator(new OvershootInterpolator(3.0f));
        ObjectAnimator duration5 = ObjectAnimator.ofFloat(this.repTextBubble, (Property<TextView, Float>) property3, 1.0f, 1.2f).setDuration(300L);
        this.labelScaleY = duration5;
        duration5.setInterpolator(new OvershootInterpolator(3.0f));
        ObjectAnimator duration6 = ObjectAnimator.ofFloat(this.explosionText, (Property<TextView, Float>) property4, 1.0f, 0.0f).setDuration(300L);
        this.explosionTextAlpha = duration6;
        duration6.addListener(new Animator.AnimatorListener() { // from class: com.narvii.chat.screenroom.ReputationEarningComposite.6
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
                ReputationEarningComposite.this.explosionText.setText("");
                ReputationEarningComposite.this.explosionText.setAlpha(1.0f);
            }
        });
        this.explosionTextTransY = ObjectAnimator.ofFloat(this.explosionText, (Property<TextView, Float>) property, 20.0f, -20.0f).setDuration(300L);
        ObjectAnimator duration7 = ObjectAnimator.ofFloat(this.explosionDrops, (Property<ImageView, Float>) property4, 0.0f, 1.0f, 1.0f, 0.0f).setDuration(900L);
        this.dropAlpha = duration7;
        duration7.addListener(new Animator.AnimatorListener() { // from class: com.narvii.chat.screenroom.ReputationEarningComposite.7
            @Override // android.animation.Animator.AnimatorListener
            public void onAnimationCancel(Animator animator) {
            }

            @Override // android.animation.Animator.AnimatorListener
            public void onAnimationRepeat(Animator animator) {
            }

            @Override // android.animation.Animator.AnimatorListener
            public void onAnimationEnd(Animator animator) {
                ReputationEarningComposite.this.explosionTextAlpha.setStartDelay(0L);
                ReputationEarningComposite.this.explosionTextAlpha.setFloatValues(1.0f, 0.1f, 1.0f);
                ReputationEarningComposite.this.explosionContentAnimator.setFloatValues(ReputationEarningComposite.this.curUserTotalRep, ReputationEarningComposite.this.curUserTotalRep + ReputationEarningComposite.this.curAvailableRep);
                ReputationEarningComposite.this.explosionTextAlpha.start();
                ReputationEarningComposite.this.explosionContentAnimator.start();
            }

            @Override // android.animation.Animator.AnimatorListener
            public void onAnimationStart(Animator animator) {
                ReputationEarningComposite.this.explosionText.setText(ReputationEarningComposite.this.context.getContext().getString(R.string.reputation_added, String.valueOf(ReputationEarningComposite.this.curAvailableRep)));
                ReputationEarningComposite.this.explosionTextTransY.start();
            }
        });
        TextView textView = this.newRepAlert;
        Property property5 = View.TRANSLATION_X;
        float[] fArr = new float[2];
        fArr[0] = Utils.isRtl() ? -400.0f : 400.0f;
        fArr[1] = 0.0f;
        this.newRepAlertTransX = ObjectAnimator.ofFloat(textView, (Property<TextView, Float>) property5, fArr).setDuration(300L);
        ObjectAnimator duration8 = ObjectAnimator.ofFloat(this.newRepAlert, (Property<TextView, Float>) property4, 1.0f, 0.0f).setDuration(300L);
        this.newRepAlertAlpha = duration8;
        duration8.setStartDelay(1100L);
        this.newRepAlertAlpha.addListener(new Animator.AnimatorListener() { // from class: com.narvii.chat.screenroom.ReputationEarningComposite.8
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
                ReputationEarningComposite.this.newRepAlert.setTranslationX(Utils.isRtl() ? -400.0f : 400.0f);
                ReputationEarningComposite.this.newRepAlert.setAlpha(1.0f);
                ReputationEarningComposite.this.updateRepBubble();
            }
        });
        ValueAnimator duration9 = ValueAnimator.ofFloat(0.0f, 1.0f).setDuration(500L);
        this.labelContentAnimator = duration9;
        duration9.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: com.narvii.chat.screenroom.ReputationEarningComposite.9
            DecimalFormat decimalFormat = new DecimalFormat(b0.DEFAULT_VERSION_NAME);

            @Override // android.animation.ValueAnimator.AnimatorUpdateListener
            public void onAnimationUpdate(ValueAnimator valueAnimator) {
                ReputationEarningComposite.this.repTextBubble.setText(this.decimalFormat.format(((Float) valueAnimator.getAnimatedValue()).floatValue()));
            }
        });
        ValueAnimator duration10 = ValueAnimator.ofFloat(0.0f, 1.0f).setDuration(500L);
        this.explosionContentAnimator = duration10;
        duration10.setStartDelay(150L);
        this.explosionContentAnimator.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: com.narvii.chat.screenroom.ReputationEarningComposite.10
            @Override // android.animation.ValueAnimator.AnimatorUpdateListener
            public void onAnimationUpdate(ValueAnimator valueAnimator) {
                ReputationEarningComposite.this.explosionText.setText(ReputationEarningComposite.this.context.getContext().getString(R.string.reputation_total, String.valueOf((int) Math.ceil(((Float) valueAnimator.getAnimatedValue()).floatValue()))));
            }
        });
        this.explosionContentAnimator.addListener(new Animator.AnimatorListener() { // from class: com.narvii.chat.screenroom.ReputationEarningComposite.11
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
                ReputationEarningComposite.this.explosionTextAlpha.setFloatValues(1.0f, 0.0f);
                ReputationEarningComposite.this.explosionTextAlpha.setStartDelay(600L);
                ReputationEarningComposite.this.explosionTextAlpha.start();
                if (ReputationEarningComposite.this.handler != null) {
                    ReputationEarningComposite.this.handler.postDelayed(ReputationEarningComposite.this.resetBubble, 1000L);
                }
            }
        });
    }

    private void initNetworking() {
        this.apiService = (ApiService) this.context.getService("api");
        this.getRepRequest = ApiRequest.builder().https().path("/chat/thread/" + this.chatThread.threadId + "/avchat-reputation").build();
        this.postRepRequest = ApiRequest.builder().https().path("/chat/thread/" + this.chatThread.threadId + "/avchat-reputation").post().build();
        Handler handler = new Handler();
        this.handler = handler;
        handler.post(this.getRepTask);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void updateBubbleStyle(int i10) {
        ViewGroup.MarginLayoutParams marginLayoutParams = (ViewGroup.MarginLayoutParams) this.repTextBubble.getLayoutParams();
        if (i10 == 0) {
            this.bubble.setBackgroundDrawable(null);
            marginLayoutParams.topMargin = (int) this.context.getContext().getResources().getDimension(R.dimen.rep_label_margin_top_lv0);
        } else if (i10 == 1) {
            this.bubble.setBackgroundDrawable(this.context.getContext().getResources().getDrawable(R.drawable.reputation_bubble_lv1));
            marginLayoutParams.topMargin = (int) this.context.getContext().getResources().getDimension(R.dimen.rep_label_margin_top_lv1);
        } else if (i10 == 2) {
            this.bubble.setBackgroundDrawable(this.context.getContext().getResources().getDrawable(R.drawable.reputation_bubble_lv2));
            marginLayoutParams.topMargin = (int) this.context.getContext().getResources().getDimension(R.dimen.rep_label_margin_top_lv2);
        } else if (i10 == 3) {
            this.bubble.setBackgroundDrawable(this.context.getContext().getResources().getDrawable(R.drawable.reputation_bubble_lv3));
            marginLayoutParams.topMargin = (int) this.context.getContext().getResources().getDimension(R.dimen.rep_label_margin_top_lv3);
        } else if (i10 == 4) {
            this.bubble.setBackgroundDrawable(this.context.getContext().getResources().getDrawable(R.drawable.reputation_bubble_lv4));
            marginLayoutParams.topMargin = (int) this.context.getContext().getResources().getDimension(R.dimen.rep_label_margin_top_lv4);
        } else if (i10 == 5) {
            this.bubble.setBackgroundDrawable(this.context.getContext().getResources().getDrawable(R.drawable.reputation_bubble_lv5));
            marginLayoutParams.topMargin = (int) this.context.getContext().getResources().getDimension(R.dimen.rep_label_margin_top_lv5);
        }
        this.repTextBubble.requestLayout();
        this.bubble.setPivotX(Utils.isRtl() ? 0.0f : this.bubble.getWidth());
        ThumbImageView thumbImageView = this.bubble;
        thumbImageView.setPivotY(thumbImageView.getHeight());
        if (i10 == 0) {
            this.bubbleScaleX.setFloatValues(0.0f, 1.0f);
            this.bubbleScaleY.setFloatValues(0.0f, 1.0f);
            this.bubbleAlpha.setFloatValues(0.0f, 1.0f);
            this.bubbleAlpha.start();
        } else {
            float f = (i10 * 0.2f) + 1.0f;
            this.bubbleScaleX.setFloatValues((this.curAvailableRepLevel * 0.2f) + 1.0f, f);
            this.bubbleScaleY.setFloatValues((this.curAvailableRepLevel * 0.2f) + 1.0f, f);
        }
        this.repTextBubble.setPivotX(Utils.isRtl() ? 0.0f : this.repTextBubble.getWidth());
        TextView textView = this.repTextBubble;
        textView.setPivotY(textView.getHeight());
        if (i10 == 0) {
            this.labelScaleX.setFloatValues(0.0f, 1.0f);
            this.labelScaleY.setFloatValues(0.0f, 1.0f);
            this.repTextBubble.setVisibility(0);
            this.repTextBubble.setText("0");
        } else {
            float f6 = (i10 * 0.2f) + 1.0f;
            this.labelScaleX.setFloatValues((this.curAvailableRepLevel * 0.2f) + 1.0f, f6);
            this.labelScaleY.setFloatValues((this.curAvailableRepLevel * 0.2f) + 1.0f, f6);
        }
        this.bubbleScaleX.start();
        this.bubbleScaleY.start();
        this.labelScaleX.start();
        this.labelScaleY.start();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void updateRepBubble() {
        updateRepLabel(this.curAvailableRep);
        int iCheckRepLevel = checkRepLevel(this.curAvailableRep);
        if (iCheckRepLevel != 0) {
            updateBubbleStyle(iCheckRepLevel);
        }
        this.curAvailableRepLevel = iCheckRepLevel;
    }

    private void updateRepLabel(float f) {
        TextView textView = this.repTextBubble;
        if (textView == null) {
            return;
        }
        if (f == 0.0f) {
            textView.setText("0");
            return;
        }
        float f6 = this.prevRep;
        if (f == f6) {
            return;
        }
        this.labelContentAnimator.setFloatValues(f6, f);
        this.labelContentAnimator.start();
    }

    public ReputationEarningComposite(View view, NVContext nVContext, ChatThread chatThread) {
        this.context = nVContext;
        this.chatThread = chatThread;
        this.root = view;
        initComponent(view);
        initAnimators();
        initNetworking();
    }

    private void initComponent(View view) {
        float f;
        this.bubble = (ThumbImageView) view.findViewById(R.id.reputation_bubble);
        this.repTextBubble = (TextView) view.findViewById(R.id.reputation_value);
        this.explosionDrops = (ImageView) view.findViewById(R.id.drops);
        this.explosionText = (TextView) view.findViewById(R.id.rep_value_label);
        TextView textView = (TextView) view.findViewById(R.id.rep_value_alert);
        this.newRepAlert = textView;
        if (Utils.isRtl()) {
            f = -400.0f;
        } else {
            f = 400.0f;
        }
        textView.setTranslationX(f);
        this.bubble.setOnClickListener(new View.OnClickListener() { // from class: com.narvii.chat.screenroom.ReputationEarningComposite.5
            @Override // android.view.View.OnClickListener
            public void onClick(View view2) {
                if (ReputationEarningComposite.this.isDestroyed) {
                    return;
                }
                ReputationEarningComposite.this.handler.removeCallbacks(ReputationEarningComposite.this.bubbleJumpTask);
                ReputationEarningComposite.this.bubble.setPivotX(Utils.isRtl() ? 0.0f : ReputationEarningComposite.this.bubble.getWidth());
                ReputationEarningComposite.this.bubble.setPivotY(ReputationEarningComposite.this.bubble.getHeight());
                ReputationEarningComposite.this.repTextBubble.setPivotX(Utils.isRtl() ? 0.0f : ReputationEarningComposite.this.repTextBubble.getWidth());
                ReputationEarningComposite.this.repTextBubble.setPivotY(ReputationEarningComposite.this.repTextBubble.getHeight());
                if (ReputationEarningComposite.this.curAvailableRepLevel != 0 && ReputationEarningComposite.this.curAvailableRep >= 1.0f) {
                    ReputationEarningComposite.this.bubble.setClickable(false);
                    ReputationEarningComposite.this.handler.removeCallbacks(ReputationEarningComposite.this.getRepTask);
                    ReputationEarningComposite.this.apiService.abort(ReputationEarningComposite.this.getRepRequest);
                    ReputationEarningComposite.this.apiService.exec(ReputationEarningComposite.this.postRepRequest, new ApiResponseListener<>(ReputationPostResponse.class));
                    float f6 = (ReputationEarningComposite.this.curAvailableRepLevel * 0.2f) + 1.0f;
                    float f7 = 0.8f * f6;
                    ReputationEarningComposite.this.bubbleScaleX.setFloatValues(f6, f7, f6);
                    ReputationEarningComposite.this.bubbleScaleY.setFloatValues(f6, f7, f6);
                    ReputationEarningComposite.this.bubbleScaleX.start();
                    ReputationEarningComposite.this.bubbleScaleY.start();
                    ReputationEarningComposite.this.bubbleAlpha.setFloatValues(1.0f, 0.01f);
                    ReputationEarningComposite.this.bubbleAlpha.start();
                    ReputationEarningComposite.this.dropAlpha.start();
                    ReputationEarningComposite.this.repTextBubble.setVisibility(4);
                    return;
                }
                ReputationEarningComposite.this.bubbleScaleX.setFloatValues(1.0f, 0.8f, 1.0f);
                ReputationEarningComposite.this.bubbleScaleY.setFloatValues(1.0f, 0.8f, 1.0f);
                ReputationEarningComposite.this.labelScaleX.setFloatValues(1.0f, 0.8f, 1.0f);
                ReputationEarningComposite.this.labelScaleY.setFloatValues(1.0f, 0.8f, 1.0f);
                if (ReputationEarningComposite.this.curAvailableRepLevel > 0) {
                    ReputationEarningComposite.this.bubbleScaleX.setFloatValues(1.2f, 1.0f, 1.2f);
                    ReputationEarningComposite.this.bubbleScaleY.setFloatValues(1.2f, 1.0f, 1.2f);
                    ReputationEarningComposite.this.labelScaleX.setFloatValues(1.2f, 1.0f, 1.2f);
                    ReputationEarningComposite.this.labelScaleY.setFloatValues(1.2f, 1.0f, 1.2f);
                    ReputationEarningComposite.this.handler.postDelayed(ReputationEarningComposite.this.bubbleJumpTask, 3300L);
                    NVToast.makeText(ReputationEarningComposite.this.context.getContext(), ReputationEarningComposite.this.context.getContext().getString(R.string.reputation_not_enough_to_collect), 0).show();
                }
                ReputationEarningComposite.this.bubbleScaleX.start();
                ReputationEarningComposite.this.bubbleScaleY.start();
                ReputationEarningComposite.this.labelScaleX.start();
                ReputationEarningComposite.this.labelScaleY.start();
            }
        });
    }
}
