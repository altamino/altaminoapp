package com.narvii.widget;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.animation.ValueAnimator;
import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.drawable.Drawable;
import android.media.MediaPlayer;
import android.util.AttributeSet;
import android.view.View;
import android.view.ViewGroup;
import android.view.animation.Animation;
import android.view.animation.AnimationUtils;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.ProgressBar;
import android.widget.TextView;
import androidx.core.content.ContextCompat;
import com.narvii.account.AccountService;
import com.narvii.amino.master.R;
import com.narvii.app.NVContext;
import com.narvii.model.User;
import com.narvii.modulization.Module;
import com.narvii.util.CollectionUtils;
import com.narvii.util.Log;
import com.narvii.util.Utils;
import com.narvii.util.ranking.RankingLevel;
import com.narvii.util.ranking.RankingService;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public class RankingTitleView extends FrameLayout {
    private static final int MAX_DURATION = 1000;
    private static final int MAX_PROGRESS = 10000;
    private static final int MIN_DURATION = 500;
    private static final float MIN_PROGRESS = 0.1f;
    protected boolean allowShowProgress;
    private int animFakeStart;
    private int animRealStart;
    ImageView badge;
    ImageView badgeAnimate;
    protected int badgeHeight;
    protected boolean badgeSmall;
    private int currentReputation;
    private float fakeProgressTimes;
    private boolean isAnimating;
    private boolean justGoFakeStart;
    private int lastGetProgressMaxRP;
    private int lastGetProgressRP;
    int levelSize;
    private boolean othersCanSeeProgress;
    ProgressBar progressBar;
    protected int progressHeight;
    private RankingService rankingService;
    TextView rankingText;
    TextView role;
    protected boolean showBadge;
    boolean showNothing;
    private boolean showProgress;
    protected boolean showReputation;
    boolean showRoleName;
    private float textMinWidthTimes;
    protected float textSize;
    private int width;

    /* JADX INFO: renamed from: com.narvii.widget.RankingTitleView$4, reason: invalid class name */
    class AnonymousClass4 extends AnimatorListenerAdapter {
        final /* synthetic */ int val$newLevel;
        final /* synthetic */ int val$newRP;
        final /* synthetic */ OnAnimListener val$onAnimListener;

        AnonymousClass4(int i10, OnAnimListener onAnimListener, int i11) {
            this.val$newLevel = i10;
            this.val$onAnimListener = onAnimListener;
            this.val$newRP = i11;
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationEnd(Animator animator) {
            Animation animationLoadAnimation = AnimationUtils.loadAnimation(RankingTitleView.this.getContext(), R.anim.badge_upgrade_in);
            animationLoadAnimation.setAnimationListener(new Animation.AnimationListener() { // from class: com.narvii.widget.RankingTitleView.4.1
                @Override // android.view.animation.Animation.AnimationListener
                public void onAnimationRepeat(Animation animation) {
                }

                @Override // android.view.animation.Animation.AnimationListener
                public void onAnimationStart(Animation animation) {
                }

                @Override // android.view.animation.Animation.AnimationListener
                public void onAnimationEnd(Animation animation) {
                    try {
                        MediaPlayer.create(RankingTitleView.this.getContext(), R.raw.notification).start();
                    } catch (Exception e) {
                        Log.e(e.getMessage());
                    }
                    RankingTitleView rankingTitleView = RankingTitleView.this;
                    rankingTitleView.setBadgeDrawable(rankingTitleView.badgeSmall ? rankingTitleView.rankingService.getBadgeSmall(AnonymousClass4.this.val$newLevel) : rankingTitleView.rankingService.getBadge(AnonymousClass4.this.val$newLevel));
                    Animation animationLoadAnimation2 = AnimationUtils.loadAnimation(RankingTitleView.this.getContext(), R.anim.badge_upgrade_out);
                    RankingTitleView.this.badgeAnimate.setImageResource(R.drawable.oval_white);
                    RankingTitleView.this.badgeAnimate.startAnimation(animationLoadAnimation2);
                    RankingTitleView.this.badgeAnimate.setVisibility(8);
                    AnonymousClass4 anonymousClass4 = AnonymousClass4.this;
                    OnAnimListener onAnimListener = anonymousClass4.val$onAnimListener;
                    if (onAnimListener != null) {
                        onAnimListener.onLevelChanged(anonymousClass4.val$newLevel);
                    }
                    AnonymousClass4 anonymousClass5 = AnonymousClass4.this;
                    final int maxReputation = RankingTitleView.this.getMaxReputation(anonymousClass5.val$newLevel);
                    ValueAnimator valueAnimatorOfFloat = ValueAnimator.ofFloat(0.0f, AnonymousClass4.this.val$newRP);
                    AnonymousClass4 anonymousClass6 = AnonymousClass4.this;
                    valueAnimatorOfFloat.setDuration(RankingTitleView.this.getDuration(0, anonymousClass6.val$newRP, maxReputation));
                    AnonymousClass4 anonymousClass7 = AnonymousClass4.this;
                    RankingTitleView.this.setUpIfFakeProgress(0, anonymousClass7.val$newRP, maxReputation);
                    valueAnimatorOfFloat.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: com.narvii.widget.RankingTitleView.4.1.1
                        @Override // android.animation.ValueAnimator.AnimatorUpdateListener
                        public void onAnimationUpdate(ValueAnimator valueAnimator) {
                            RankingTitleView.this.onProgressUpdate(((Float) valueAnimator.getAnimatedValue()).floatValue(), maxReputation, AnonymousClass4.this.val$newLevel);
                        }
                    });
                    valueAnimatorOfFloat.addListener(new AnimatorListenerAdapter() { // from class: com.narvii.widget.RankingTitleView.4.1.2
                        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
                        public void onAnimationEnd(Animator animator2) {
                            super.onAnimationEnd(animator2);
                            RankingTitleView.this.isAnimating = false;
                            OnAnimListener onAnimListener2 = AnonymousClass4.this.val$onAnimListener;
                            if (onAnimListener2 != null) {
                                onAnimListener2.onAnimEnd();
                            }
                        }
                    });
                    valueAnimatorOfFloat.start();
                }
            });
            RankingTitleView rankingTitleView = RankingTitleView.this;
            ImageView imageView = rankingTitleView.badgeAnimate;
            boolean z6 = rankingTitleView.badgeSmall;
            RankingService rankingService = rankingTitleView.rankingService;
            imageView.setImageDrawable(z6 ? rankingService.getBadgeSmall(this.val$newLevel) : rankingService.getBadge(this.val$newLevel));
            RankingTitleView.this.badgeAnimate.setVisibility(0);
            RankingTitleView.this.badgeAnimate.startAnimation(animationLoadAnimation);
        }
    }

    public interface OnAnimListener {
        void onAnimEnd();

        void onLevelChanged(int i10);
    }

    public RankingTitleView(Context context) {
        this(context, null);
    }

    private float getFakedProgress(float f) {
        return ((f - this.animRealStart) * this.fakeProgressTimes) + this.animFakeStart;
    }

    public static String getUserRole(User user) {
        if (user == null) {
            return null;
        }
        if (user.isCurator() || user.isLeader()) {
            return user.roleName();
        }
        return null;
    }

    private boolean showNothing(User user, NVContext nVContext) {
        boolean z6 = user == null || user.level <= 0;
        RankingService rankingService = (RankingService) nVContext.getService(Module.MODULE_RANKING);
        this.rankingService = rankingService;
        List<RankingLevel> levels = rankingService.getLevels();
        if (levels == null || levels.isEmpty()) {
            return true;
        }
        return z6;
    }

    private boolean showRoleName(User user) {
        return false;
    }

    protected int getOtherProgressDrawableId() {
        return R.drawable.rounded_progress_drawable_others_s;
    }

    public int getProgess(float f, int i10) {
        this.lastGetProgressRP = (int) f;
        this.lastGetProgressMaxRP = i10;
        if (this.rankingService == null || this.width == 0) {
            return 0;
        }
        if (f == 0.0f) {
            return 0;
        }
        float fDpToPx = Utils.dpToPx(getContext(), 10.0f);
        float f6 = this.showBadge ? ((this.badgeHeight - fDpToPx) * 1.0f) / (this.width - fDpToPx) : 0.0f;
        if (i10 != 0) {
            return (int) ((f6 + (((1.0f - (getProgressBarBorderSize() / (this.width - (this.showBadge ? fDpToPx : 0.0f)))) - f6) * (f / i10))) * 10000.0f);
        }
        return 0;
    }

    protected int getProgressDrawableId() {
        return R.drawable.rounded_progress_drawable_s;
    }

    protected int layoutId() {
        return R.layout.view_ranking_title;
    }

    public void setOthersCanSeeProgress(boolean z6) {
        this.othersCanSeeProgress = z6;
    }

    public void setUser(User user, NVContext nVContext) {
        setUser(user, nVContext, Integer.MIN_VALUE, Integer.MIN_VALUE, null);
    }

    public RankingTitleView(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public int getDuration(int i10, int i11, int i12) {
        if (i12 == 0) {
            return 500;
        }
        int i13 = (((i11 - i10) * 500) / i12) + 500;
        if (i13 < 550) {
            return 550;
        }
        if (i13 > 1000) {
            return 1000;
        }
        return i13;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void onProgressUpdate(float f, int i10, int i11) {
        String str;
        TextView textView = this.rankingText;
        if (textView == null || this.progressBar == null) {
            return;
        }
        if (this.showReputation) {
            StringBuilder sb = new StringBuilder();
            sb.append((int) f);
            if (i11 < this.levelSize) {
                str = com.google.firebase.sessions.settings.c.FORWARD_SLASH_STRING + i10;
            } else {
                str = "";
            }
            sb.append(str);
            sb.append(" REP");
            textView.setText(sb.toString());
        } else {
            textView.setText(this.rankingService.getTitle(i11));
        }
        if (this.fakeProgressTimes != 1.0f) {
            f = getFakedProgress(f);
        }
        if (i10 != 0) {
            this.progressBar.setProgress(getProgess(f, i10));
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void setBadgeDrawable(Drawable drawable) {
        ImageView imageView = this.badge;
        if (imageView != null) {
            imageView.setImageDrawable(drawable);
            if (this.rankingText != null) {
                this.rankingText.setMinWidth((int) ((drawable == null ? this.badgeHeight : (int) Math.ceil((this.badgeHeight * drawable.getIntrinsicWidth()) / drawable.getIntrinsicHeight())) * this.textMinWidthTimes));
            }
        }
    }

    private void updateReputation(int i10, int i11, final OnAnimListener onAnimListener) {
        if (!this.justGoFakeStart) {
            this.currentReputation = i11;
        }
        final int levelByReputation = getLevelByReputation(i10);
        int levelByReputation2 = getLevelByReputation(i11);
        if (levelByReputation == levelByReputation2) {
            if (onAnimListener != null) {
                onAnimListener.onLevelChanged(levelByReputation);
            }
            final int maxReputation = getMaxReputation(levelByReputation);
            float f = i10;
            ValueAnimator valueAnimatorOfFloat = ValueAnimator.ofFloat(f, i11);
            valueAnimatorOfFloat.setDuration(getDuration(i10, i11, maxReputation));
            setUpIfFakeProgress(i10, i11, maxReputation);
            if (this.justGoFakeStart) {
                onProgressUpdate(f, maxReputation, levelByReputation);
                this.justGoFakeStart = false;
                return;
            } else {
                valueAnimatorOfFloat.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: com.narvii.widget.RankingTitleView.1
                    @Override // android.animation.ValueAnimator.AnimatorUpdateListener
                    public void onAnimationUpdate(ValueAnimator valueAnimator) {
                        RankingTitleView.this.onProgressUpdate(((Float) valueAnimator.getAnimatedValue()).floatValue(), maxReputation, levelByReputation);
                    }
                });
                valueAnimatorOfFloat.addListener(new AnimatorListenerAdapter() { // from class: com.narvii.widget.RankingTitleView.2
                    @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
                    public void onAnimationEnd(Animator animator) {
                        super.onAnimationEnd(animator);
                        RankingTitleView.this.isAnimating = false;
                        OnAnimListener onAnimListener2 = onAnimListener;
                        if (onAnimListener2 != null) {
                            onAnimListener2.onAnimEnd();
                        }
                    }
                });
                this.isAnimating = true;
                valueAnimatorOfFloat.start();
                return;
            }
        }
        if (onAnimListener != null) {
            onAnimListener.onLevelChanged(levelByReputation);
        }
        final int maxReputation2 = getMaxReputation(levelByReputation);
        float f6 = i10;
        ValueAnimator valueAnimatorOfFloat2 = ValueAnimator.ofFloat(f6, maxReputation2);
        valueAnimatorOfFloat2.setDuration(getDuration(i10, maxReputation2, maxReputation2));
        setUpIfFakeProgress(i10, maxReputation2, maxReputation2);
        if (this.justGoFakeStart) {
            onProgressUpdate(f6, maxReputation2, levelByReputation);
            this.justGoFakeStart = false;
        } else {
            valueAnimatorOfFloat2.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: com.narvii.widget.RankingTitleView.3
                @Override // android.animation.ValueAnimator.AnimatorUpdateListener
                public void onAnimationUpdate(ValueAnimator valueAnimator) {
                    RankingTitleView.this.onProgressUpdate(((Float) valueAnimator.getAnimatedValue()).floatValue(), maxReputation2, levelByReputation);
                }
            });
            valueAnimatorOfFloat2.addListener(new AnonymousClass4(levelByReputation2, onAnimListener, i11));
            this.isAnimating = true;
            valueAnimatorOfFloat2.start();
        }
    }

    public void earnRepuation(int i10) {
        int i11;
        if (i10 <= 0 || (i11 = this.currentReputation) == Integer.MIN_VALUE) {
            return;
        }
        updateReputation(i11, i10 + i11, null);
    }

    public int getLevelByReputation(int i10) {
        RankingService rankingService = this.rankingService;
        int i11 = 1;
        if (rankingService != null && rankingService.getLevels() != null) {
            for (RankingLevel rankingLevel : this.rankingService.getLevels()) {
                if (i10 < rankingLevel.reputation) {
                    break;
                }
                i11 = rankingLevel.level;
            }
        }
        return i11;
    }

    public int getMaxReputation(int i10) {
        RankingService rankingService = this.rankingService;
        if (rankingService == null) {
            return 0;
        }
        int i11 = this.levelSize;
        return i10 >= i11 ? rankingService.getReputation(i11) : rankingService.getReputation(i10 + 1);
    }

    public void setShowBadge(boolean z6) {
        this.showBadge = z6;
        this.badge.setVisibility(z6 ? 0 : 8);
    }

    public void setUser(User user, NVContext nVContext, int i10, int i11) {
        setUser(user, nVContext, i10, i11, null);
    }

    public void toReputation(User user, NVContext nVContext) {
        int i10 = user.reputation;
        if (i10 <= 0 || this.currentReputation == Integer.MIN_VALUE) {
            return;
        }
        boolean zShowNothing = showNothing(user, nVContext);
        boolean zShowRoleName = showRoleName(user);
        if (zShowNothing || this.showNothing || this.showRoleName != zShowRoleName) {
            setUser(user, nVContext);
        } else {
            updateReputation(this.currentReputation, i10, null);
        }
    }

    public void willToReputation(User user, NVContext nVContext) {
        int i10 = user.reputation;
        if (i10 <= 0 || this.currentReputation == Integer.MIN_VALUE) {
            return;
        }
        boolean zShowNothing = showNothing(user, nVContext);
        boolean zShowRoleName = showRoleName(user);
        if (zShowNothing || this.showNothing || this.showRoleName != zShowRoleName) {
            return;
        }
        this.justGoFakeStart = true;
        updateReputation(this.currentReputation, i10, null);
    }

    public RankingTitleView(Context context, AttributeSet attributeSet, int i10) {
        super(context, attributeSet, i10);
        this.currentReputation = Integer.MIN_VALUE;
        this.isAnimating = false;
        this.levelSize = 20;
        this.showProgress = false;
        this.fakeProgressTimes = 1.0f;
        this.justGoFakeStart = false;
        this.lastGetProgressRP = Integer.MIN_VALUE;
        this.lastGetProgressMaxRP = Integer.MIN_VALUE;
        TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, com.narvii.lib.R.styleable.RankingTitleView);
        this.showBadge = typedArrayObtainStyledAttributes.getBoolean(4, true);
        this.showReputation = typedArrayObtainStyledAttributes.getBoolean(5, false);
        this.badgeSmall = typedArrayObtainStyledAttributes.getBoolean(2, false);
        this.textSize = typedArrayObtainStyledAttributes.getDimension(7, -1.0f);
        this.progressHeight = (int) typedArrayObtainStyledAttributes.getDimension(3, -1.0f);
        this.badgeHeight = (int) typedArrayObtainStyledAttributes.getDimension(1, Utils.dpToPx(getContext(), 28.0f));
        this.allowShowProgress = typedArrayObtainStyledAttributes.getBoolean(0, true);
        this.textMinWidthTimes = typedArrayObtainStyledAttributes.getFloat(6, 2.5f);
        typedArrayObtainStyledAttributes.recycle();
        View viewInflate = View.inflate(context, layoutId(), this);
        this.badge = (ImageView) viewInflate.findViewById(R.id.badge);
        this.badgeAnimate = (ImageView) viewInflate.findViewById(R.id.badge_animate);
        this.badge.setVisibility(this.showBadge ? 0 : 8);
        TextView textView = (TextView) viewInflate.findViewById(R.id.text);
        this.rankingText = textView;
        if (!(textView instanceof AutoSizingTextView)) {
            float f = this.textSize;
            if (f != -1.0f) {
                textView.setTextSize(0, f);
            }
        }
        this.role = (TextView) viewInflate.findViewById(R.id.role);
        ProgressBar progressBar = (ProgressBar) viewInflate.findViewById(R.id.progress_bar);
        this.progressBar = progressBar;
        if (this.progressHeight != -1) {
            ViewGroup.LayoutParams layoutParams = progressBar.getLayoutParams();
            layoutParams.height = this.progressHeight;
            this.progressBar.setLayoutParams(layoutParams);
        }
        if (this.badgeHeight != -1) {
            ViewGroup.LayoutParams layoutParams2 = this.badge.getLayoutParams();
            layoutParams2.height = this.badgeHeight;
            this.badge.setLayoutParams(layoutParams2);
        }
        this.progressBar.setMax(10000);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void setUpIfFakeProgress(int i10, int i11, int i12) {
        if (getLevelByReputation(i10) != this.levelSize && i12 != 0) {
            float f = i11 - i10;
            float f6 = i12;
            if ((f * 1.0f) / f6 < 0.1f && i10 != i11) {
                float f7 = 0.1f * f6;
                this.fakeProgressTimes = f7 / f;
                this.animRealStart = i10;
                int i13 = (int) (((i10 + i11) / 2) - (f7 / 2.0f));
                this.animFakeStart = i13;
                if (i13 < 0) {
                    this.animFakeStart = 0;
                }
                float f10 = f6 * 0.9f;
                if (this.animFakeStart > f10) {
                    this.animFakeStart = (int) f10;
                    return;
                }
                return;
            }
            this.animFakeStart = i10;
            this.animRealStart = i10;
            this.fakeProgressTimes = 1.0f;
            return;
        }
        this.fakeProgressTimes = 1.0f;
    }

    protected int getProgressBarBorderSize() {
        return (int) Utils.dpToPx(getContext(), 1.0f);
    }

    @Override // android.view.View
    protected void onSizeChanged(int i10, int i11, int i12, int i13) {
        int i14;
        super.onSizeChanged(i10, i11, i12, i13);
        if (this.width != i10 && !this.isAnimating && (i14 = this.lastGetProgressRP) != Integer.MIN_VALUE && this.showProgress) {
            this.width = i10;
            ProgressBar progressBar = this.progressBar;
            if (progressBar != null) {
                progressBar.setProgress(getProgess(i14, this.lastGetProgressMaxRP));
            }
        }
        this.width = i10;
    }

    public void setUser(User user, NVContext nVContext, int i10, int i11, OnAnimListener onAnimListener) {
        Drawable badgeSmall;
        CharSequence title;
        String str;
        Drawable badgeSmall2;
        if (this.isAnimating) {
            return;
        }
        if (user != null) {
            this.currentReputation = user.reputation;
        }
        this.showNothing = showNothing(user, nVContext);
        RankingService rankingService = (RankingService) nVContext.getService(Module.MODULE_RANKING);
        this.rankingService = rankingService;
        this.levelSize = CollectionUtils.getSize(rankingService.getLevels());
        if (this.showNothing) {
            badgeSmall = null;
        } else {
            badgeSmall = this.badgeSmall ? this.rankingService.getBadgeSmall(user.level) : this.rankingService.getBadge(user.level);
        }
        setBadgeDrawable(badgeSmall);
        if (i10 != Integer.MIN_VALUE) {
            int levelByReputation = getLevelByReputation(i10);
            if (this.showNothing) {
                badgeSmall2 = null;
            } else {
                badgeSmall2 = this.badgeSmall ? this.rankingService.getBadgeSmall(levelByReputation) : this.rankingService.getBadge(levelByReputation);
            }
            setBadgeDrawable(badgeSmall2);
        }
        boolean zShowRoleName = showRoleName(user);
        this.showRoleName = zShowRoleName;
        if (zShowRoleName) {
            this.progressBar.setVisibility(8);
            this.rankingText.setVisibility(8);
            this.role.setVisibility(0);
            this.role.setText(this.showNothing ? null : getUserRole(user));
            this.role.setBackgroundDrawable(this.showNothing ? null : ContextCompat.getDrawable(getContext(), R.drawable.drawer_user_role));
            return;
        }
        this.progressBar.setVisibility(0);
        this.rankingText.setVisibility(0);
        this.role.setVisibility(8);
        if (this.showNothing) {
            this.progressBar.setProgressDrawable(null);
            this.rankingText.setText((CharSequence) null);
            return;
        }
        boolean zIsEqualsNotNull = Utils.isEqualsNotNull(user.id(), ((AccountService) nVContext.getService("account")).getUserId());
        if (this.allowShowProgress && (zIsEqualsNotNull || this.othersCanSeeProgress)) {
            this.showProgress = true;
            this.progressBar.setProgressDrawable(ContextCompat.getDrawable(getContext(), getProgressDrawableId()));
            if (i10 == Integer.MIN_VALUE && i11 == Integer.MIN_VALUE) {
                TextView textView = this.rankingText;
                if (this.showReputation) {
                    StringBuilder sb = new StringBuilder();
                    sb.append(user.reputation);
                    if (user.level < this.levelSize) {
                        str = com.google.firebase.sessions.settings.c.FORWARD_SLASH_STRING + getMaxReputation(user.level);
                    } else {
                        str = "";
                    }
                    sb.append(str);
                    sb.append(" REP");
                    title = sb.toString();
                } else {
                    title = this.rankingService.getTitle(user.level);
                }
                textView.setText(title);
                this.progressBar.setProgress(getProgess(user.reputation, getMaxReputation(user.level)));
                return;
            }
            updateReputation(i10, i11, onAnimListener);
            return;
        }
        this.showProgress = false;
        this.progressBar.setProgress(0);
        this.progressBar.setProgressDrawable(ContextCompat.getDrawable(getContext(), getOtherProgressDrawableId()));
        this.rankingText.setText(this.rankingService.getTitle(user.level));
    }
}
