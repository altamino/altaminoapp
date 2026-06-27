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
import com.narvii.amino.mastes.R;
import com.narvii.app.NVContext;
import com.narvii.model.ChatThread;
import com.narvii.model.api.ApiResponse;
import com.narvii.model.api.ReputationGetResponse;
import com.narvii.model.api.ReputationPostResponse;
import com.narvii.scene.poll.ScenePollPlayView;
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

/* loaded from: classes2.dex */
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

        @Override // com.narvii.util.http.ApiResponseListener
        public void onFail(ApiRequest apiRequest, int i, List<NameValuePair> list, String str, ApiResponse apiResponse, Throwable th) {
            if (!ReputationEarningComposite.this.isDestroyed && i == ReputationEarningComposite.API_ERR_CHAT_VVCHAT_NO_MORE_REPUTATIONS) {
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
    };
    private Runnable getRepTask = new Runnable() { // from class: com.narvii.chat.screenroom.ReputationEarningComposite.2
        @Override // java.lang.Runnable
        public void run() {
            if (ReputationEarningComposite.this.handler != null) {
                ReputationEarningComposite.this.handler.removeCallbacks(ReputationEarningComposite.this.bubbleJumpTask);
                ReputationEarningComposite.this.handler.postDelayed(this, ScenePollPlayView.POLL_COUNT_DOWN_MS);
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
            if (ReputationEarningComposite.this.repThresholdReached) {
                if (ReputationEarningComposite.this.handler != null) {
                    ReputationEarningComposite.this.handler.removeCallbacks(ReputationEarningComposite.this.bubbleJumpTask);
                }
                if (ReputationEarningComposite.this.root != null) {
                    ReputationEarningComposite.this.root.setVisibility(8);
                    return;
                }
                return;
            }
            ReputationEarningComposite.this.updateBubbleStyle(0);
            if (ReputationEarningComposite.this.handler != null) {
                ReputationEarningComposite.this.handler.postDelayed(ReputationEarningComposite.this.getRepTask, ScenePollPlayView.POLL_COUNT_DOWN_MS);
            }
        }
    };

    public ReputationEarningComposite(View view, NVContext nVContext, ChatThread chatThread) {
        this.context = nVContext;
        this.chatThread = chatThread;
        this.root = view;
        initComponent(view);
        initAnimators();
        initNetworking();
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

    private void initNetworking() {
        this.apiService = (ApiService) this.context.getService("api");
        this.getRepRequest = ApiRequest.builder().https().path("/chat/thread/" + this.chatThread.threadId + "/avchat-reputation").build();
        this.postRepRequest = ApiRequest.builder().https().path("/chat/thread/" + this.chatThread.threadId + "/avchat-reputation").post().build();
        this.handler = new Handler();
        this.handler.post(this.getRepTask);
    }

    private void initComponent(View view) {
        this.bubble = (ThumbImageView) view.findViewById(R.id.reputation_bubble);
        this.repTextBubble = (TextView) view.findViewById(R.id.reputation_value);
        this.explosionDrops = (ImageView) view.findViewById(R.id.drops);
        this.explosionText = (TextView) view.findViewById(R.id.rep_value_label);
        this.newRepAlert = (TextView) view.findViewById(R.id.rep_value_alert);
        this.newRepAlert.setTranslationX(Utils.isRtl() ? -400.0f : 400.0f);
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
                if (ReputationEarningComposite.this.curAvailableRepLevel == 0 || ReputationEarningComposite.this.curAvailableRep < 1.0f) {
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
                    return;
                }
                ReputationEarningComposite.this.bubble.setClickable(false);
                ReputationEarningComposite.this.handler.removeCallbacks(ReputationEarningComposite.this.getRepTask);
                ReputationEarningComposite.this.apiService.abort(ReputationEarningComposite.this.getRepRequest);
                ReputationEarningComposite.this.apiService.exec(ReputationEarningComposite.this.postRepRequest, new ApiResponseListener<>(ReputationPostResponse.class));
                float f = (ReputationEarningComposite.this.curAvailableRepLevel * 0.2f) + 1.0f;
                float f2 = 0.8f * f;
                ReputationEarningComposite.this.bubbleScaleX.setFloatValues(f, f2, f);
                ReputationEarningComposite.this.bubbleScaleY.setFloatValues(f, f2, f);
                ReputationEarningComposite.this.bubbleScaleX.start();
                ReputationEarningComposite.this.bubbleScaleY.start();
                ReputationEarningComposite.this.bubbleAlpha.setFloatValues(1.0f, 0.01f);
                ReputationEarningComposite.this.bubbleAlpha.start();
                ReputationEarningComposite.this.dropAlpha.start();
                ReputationEarningComposite.this.repTextBubble.setVisibility(4);
            }
        });
    }

    private void initAnimators() {
        this.bubbleTransUp = ObjectAnimator.ofFloat(this.root, (Property<View, Float>) View.TRANSLATION_Y, 0.0f, -75.0f).setDuration(300L);
        this.bubbleTransDown = ObjectAnimator.ofFloat(this.root, (Property<View, Float>) View.TRANSLATION_Y, -75.0f, 0.0f).setDuration(300L);
        this.bubbleTransDown.setStartDelay(300L);
        this.bubbleTransDown.setInterpolator(new BounceInterpolator());
        this.bubbleScaleX = ObjectAnimator.ofFloat(this.bubble, (Property<ThumbImageView, Float>) View.SCALE_X, 1.0f, 1.2f).setDuration(300L);
        this.bubbleScaleX.setInterpolator(new OvershootInterpolator(3.0f));
        this.bubbleScaleY = ObjectAnimator.ofFloat(this.bubble, (Property<ThumbImageView, Float>) View.SCALE_Y, 1.0f, 1.2f).setDuration(300L);
        this.bubbleScaleY.setInterpolator(new OvershootInterpolator(3.0f));
        this.bubbleAlpha = ObjectAnimator.ofFloat(this.bubble, (Property<ThumbImageView, Float>) View.ALPHA, 1.0f, 0.0f).setDuration(300L);
        this.labelScaleX = ObjectAnimator.ofFloat(this.repTextBubble, (Property<TextView, Float>) View.SCALE_X, 1.0f, 1.2f).setDuration(300L);
        this.labelScaleX.setInterpolator(new OvershootInterpolator(3.0f));
        this.labelScaleY = ObjectAnimator.ofFloat(this.repTextBubble, (Property<TextView, Float>) View.SCALE_Y, 1.0f, 1.2f).setDuration(300L);
        this.labelScaleY.setInterpolator(new OvershootInterpolator(3.0f));
        this.explosionTextAlpha = ObjectAnimator.ofFloat(this.explosionText, (Property<TextView, Float>) View.ALPHA, 1.0f, 0.0f).setDuration(300L);
        this.explosionTextAlpha.addListener(new Animator.AnimatorListener() { // from class: com.narvii.chat.screenroom.ReputationEarningComposite.6
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
        this.explosionTextTransY = ObjectAnimator.ofFloat(this.explosionText, (Property<TextView, Float>) View.TRANSLATION_Y, 20.0f, -20.0f).setDuration(300L);
        this.dropAlpha = ObjectAnimator.ofFloat(this.explosionDrops, (Property<ImageView, Float>) View.ALPHA, 0.0f, 1.0f, 1.0f, 0.0f).setDuration(900L);
        this.dropAlpha.addListener(new Animator.AnimatorListener() { // from class: com.narvii.chat.screenroom.ReputationEarningComposite.7
            @Override // android.animation.Animator.AnimatorListener
            public void onAnimationCancel(Animator animator) {
            }

            @Override // android.animation.Animator.AnimatorListener
            public void onAnimationRepeat(Animator animator) {
            }

            @Override // android.animation.Animator.AnimatorListener
            public void onAnimationStart(Animator animator) {
                ReputationEarningComposite.this.explosionText.setText(ReputationEarningComposite.this.context.getContext().getString(R.string.reputation_added, String.valueOf(ReputationEarningComposite.this.curAvailableRep)));
                ReputationEarningComposite.this.explosionTextTransY.start();
            }

            @Override // android.animation.Animator.AnimatorListener
            public void onAnimationEnd(Animator animator) {
                ReputationEarningComposite.this.explosionTextAlpha.setStartDelay(0L);
                ReputationEarningComposite.this.explosionTextAlpha.setFloatValues(1.0f, 0.1f, 1.0f);
                ReputationEarningComposite.this.explosionContentAnimator.setFloatValues(ReputationEarningComposite.this.curUserTotalRep, ReputationEarningComposite.this.curUserTotalRep + ReputationEarningComposite.this.curAvailableRep);
                ReputationEarningComposite.this.explosionTextAlpha.start();
                ReputationEarningComposite.this.explosionContentAnimator.start();
            }
        });
        TextView textView = this.newRepAlert;
        Property property = View.TRANSLATION_X;
        float[] fArr = new float[2];
        fArr[0] = Utils.isRtl() ? -400.0f : 400.0f;
        fArr[1] = 0.0f;
        this.newRepAlertTransX = ObjectAnimator.ofFloat(textView, (Property<TextView, Float>) property, fArr).setDuration(300L);
        this.newRepAlertAlpha = ObjectAnimator.ofFloat(this.newRepAlert, (Property<TextView, Float>) View.ALPHA, 1.0f, 0.0f).setDuration(300L);
        this.newRepAlertAlpha.setStartDelay(1100L);
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
        this.labelContentAnimator = ValueAnimator.ofFloat(0.0f, 1.0f).setDuration(500L);
        this.labelContentAnimator.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: com.narvii.chat.screenroom.ReputationEarningComposite.9
            DecimalFormat decimalFormat = new DecimalFormat("0.0");

            @Override // android.animation.ValueAnimator.AnimatorUpdateListener
            public void onAnimationUpdate(ValueAnimator valueAnimator) {
                ReputationEarningComposite.this.repTextBubble.setText(this.decimalFormat.format(((Float) valueAnimator.getAnimatedValue()).floatValue()));
            }
        });
        this.explosionContentAnimator = ValueAnimator.ofFloat(0.0f, 1.0f).setDuration(500L);
        this.explosionContentAnimator.setStartDelay(150L);
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

    /* JADX INFO: Access modifiers changed from: private */
    public void updateRepBubble() {
        updateRepLabel(this.curAvailableRep);
        int iCheckRepLevel = checkRepLevel(this.curAvailableRep);
        if (iCheckRepLevel != 0) {
            updateBubbleStyle(iCheckRepLevel);
        }
        this.curAvailableRepLevel = iCheckRepLevel;
    }

    private int checkRepLevel(float f) {
        if (f == 0.0f) {
            return 0;
        }
        float f2 = this.maxRepPerRound;
        if (f == f2) {
            return 5;
        }
        float f3 = 0.2f * f2;
        float f4 = 0.4f * f2;
        float f5 = 0.6f * f2;
        float f6 = f2 * 0.8f;
        if (f > 0.0f && f <= f3) {
            return 1;
        }
        if (f > f3 && f <= f4) {
            return 2;
        }
        if (f > f4 && f <= f5) {
            return 3;
        }
        if (f <= f5 || f > f6) {
            return f > f6 ? 5 : 0;
        }
        return 4;
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
        float f2 = this.prevRep;
        if (f == f2) {
            return;
        }
        this.labelContentAnimator.setFloatValues(f2, f);
        this.labelContentAnimator.start();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void updateBubbleStyle(int i) {
        ViewGroup.MarginLayoutParams marginLayoutParams = (ViewGroup.MarginLayoutParams) this.repTextBubble.getLayoutParams();
        if (i == 0) {
            this.bubble.setBackgroundDrawable(null);
            marginLayoutParams.topMargin = (int) this.context.getContext().getResources().getDimension(R.dimen.rep_label_margin_top_lv0);
        } else if (i == 1) {
            this.bubble.setBackgroundDrawable(this.context.getContext().getResources().getDrawable(R.drawable.reputation_bubble_lv1));
            marginLayoutParams.topMargin = (int) this.context.getContext().getResources().getDimension(R.dimen.rep_label_margin_top_lv1);
        } else if (i == 2) {
            this.bubble.setBackgroundDrawable(this.context.getContext().getResources().getDrawable(R.drawable.reputation_bubble_lv2));
            marginLayoutParams.topMargin = (int) this.context.getContext().getResources().getDimension(R.dimen.rep_label_margin_top_lv2);
        } else if (i == 3) {
            this.bubble.setBackgroundDrawable(this.context.getContext().getResources().getDrawable(R.drawable.reputation_bubble_lv3));
            marginLayoutParams.topMargin = (int) this.context.getContext().getResources().getDimension(R.dimen.rep_label_margin_top_lv3);
        } else if (i == 4) {
            this.bubble.setBackgroundDrawable(this.context.getContext().getResources().getDrawable(R.drawable.reputation_bubble_lv4));
            marginLayoutParams.topMargin = (int) this.context.getContext().getResources().getDimension(R.dimen.rep_label_margin_top_lv4);
        } else if (i == 5) {
            this.bubble.setBackgroundDrawable(this.context.getContext().getResources().getDrawable(R.drawable.reputation_bubble_lv5));
            marginLayoutParams.topMargin = (int) this.context.getContext().getResources().getDimension(R.dimen.rep_label_margin_top_lv5);
        }
        this.repTextBubble.requestLayout();
        this.bubble.setPivotX(Utils.isRtl() ? 0.0f : this.bubble.getWidth());
        this.bubble.setPivotY(r0.getHeight());
        if (i == 0) {
            this.bubbleScaleX.setFloatValues(0.0f, 1.0f);
            this.bubbleScaleY.setFloatValues(0.0f, 1.0f);
            this.bubbleAlpha.setFloatValues(0.0f, 1.0f);
            this.bubbleAlpha.start();
        } else {
            float f = (i * 0.2f) + 1.0f;
            this.bubbleScaleX.setFloatValues((this.curAvailableRepLevel * 0.2f) + 1.0f, f);
            this.bubbleScaleY.setFloatValues((this.curAvailableRepLevel * 0.2f) + 1.0f, f);
        }
        this.repTextBubble.setPivotX(Utils.isRtl() ? 0.0f : this.repTextBubble.getWidth());
        this.repTextBubble.setPivotY(r4.getHeight());
        if (i == 0) {
            this.labelScaleX.setFloatValues(0.0f, 1.0f);
            this.labelScaleY.setFloatValues(0.0f, 1.0f);
            this.repTextBubble.setVisibility(0);
            this.repTextBubble.setText("0");
        } else {
            float f2 = (i * 0.2f) + 1.0f;
            this.labelScaleX.setFloatValues((this.curAvailableRepLevel * 0.2f) + 1.0f, f2);
            this.labelScaleY.setFloatValues((this.curAvailableRepLevel * 0.2f) + 1.0f, f2);
        }
        this.bubbleScaleX.start();
        this.bubbleScaleY.start();
        this.labelScaleX.start();
        this.labelScaleY.start();
    }
}
