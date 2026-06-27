package com.narvii.widget;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.animation.ValueAnimator;
import android.content.Context;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.graphics.drawable.Drawable;
import android.media.MediaPlayer;
import android.support.v4.content.ContextCompat;
import android.util.AttributeSet;
import android.view.View;
import android.view.ViewGroup;
import android.view.animation.Animation;
import android.view.animation.AnimationUtils;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.ProgressBar;
import android.widget.TextView;
import com.narvii.account.AccountService;
import com.narvii.amino.mastes.R;
import com.narvii.app.NVContext;
import com.narvii.model.User;
import com.narvii.modulization.Module;
import com.narvii.util.CollectionUtils;
import com.narvii.util.Log;
import com.narvii.util.Utils;
import com.narvii.util.ranking.RankingLevel;
import com.narvii.util.ranking.RankingService;
import java.util.List;

/* loaded from: classes3.dex */
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

    public interface OnAnimListener {
        void onAnimEnd();

        void onLevelChanged(int i);
    }

    private boolean showRoleName(User user) {
        return false;
    }

    protected int getOtherProgressDrawableId() {
        return R.drawable.rounded_progress_drawable_others_s;
    }

    protected int getProgressDrawableId() {
        return R.drawable.rounded_progress_drawable_s;
    }

    protected int layoutId() {
        return R.layout.view_ranking_title;
    }

    public RankingTitleView(Context context) {
        this(context, null);
    }

    public RankingTitleView(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public RankingTitleView(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
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
        View viewInflate = FrameLayout.inflate(context, layoutId(), this);
        this.badge = (ImageView) viewInflate.findViewById(R.id.badge);
        this.badgeAnimate = (ImageView) viewInflate.findViewById(R.id.badge_animate);
        this.badge.setVisibility(this.showBadge ? 0 : 8);
        this.rankingText = (TextView) viewInflate.findViewById(R.id.text);
        TextView textView = this.rankingText;
        if (!(textView instanceof AutoSizingTextView)) {
            float f = this.textSize;
            if (f != -1.0f) {
                textView.setTextSize(0, f);
            }
        }
        this.role = (TextView) viewInflate.findViewById(R.id.role);
        this.progressBar = (ProgressBar) viewInflate.findViewById(R.id.progress_bar);
        if (this.progressHeight != -1) {
            ViewGroup.LayoutParams layoutParams = this.progressBar.getLayoutParams();
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

    public void setOthersCanSeeProgress(boolean z) {
        this.othersCanSeeProgress = z;
    }

    public void setShowBadge(boolean z) {
        this.showBadge = z;
        this.badge.setVisibility(z ? 0 : 8);
    }

    protected int getProgressBarBorderSize() {
        return (int) Utils.dpToPx(getContext(), 1.0f);
    }

    public void setUser(User user, NVContext nVContext) {
        setUser(user, nVContext, Integer.MIN_VALUE, Integer.MIN_VALUE, null);
    }

    public void setUser(User user, NVContext nVContext, int i, int i2) {
        setUser(user, nVContext, i, i2, null);
    }

    public int getProgess(float f, int i) {
        this.lastGetProgressRP = (int) f;
        this.lastGetProgressMaxRP = i;
        if (this.rankingService == null || this.width == 0) {
            return 0;
        }
        if (f == 0.0f) {
            return 0;
        }
        float fDpToPx = Utils.dpToPx(getContext(), 10.0f);
        float f2 = this.showBadge ? ((this.badgeHeight - fDpToPx) * 1.0f) / (this.width - fDpToPx) : 0.0f;
        if (i != 0) {
            return (int) ((f2 + (((1.0f - (getProgressBarBorderSize() / (this.width - (this.showBadge ? fDpToPx : 0.0f)))) - f2) * (f / i))) * 10000.0f);
        }
        return 0;
    }

    public int getLevelByReputation(int i) {
        RankingService rankingService = this.rankingService;
        int i2 = 1;
        if (rankingService != null && rankingService.getLevels() != null) {
            for (RankingLevel rankingLevel : this.rankingService.getLevels()) {
                if (i < rankingLevel.reputation) {
                    break;
                }
                i2 = rankingLevel.level;
            }
        }
        return i2;
    }

    public int getMaxReputation(int i) {
        RankingService rankingService = this.rankingService;
        if (rankingService == null) {
            return 0;
        }
        int i2 = this.levelSize;
        if (i >= i2) {
            return rankingService.getReputation(i2);
        }
        return rankingService.getReputation(i + 1);
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

    private boolean showNothing(User user, NVContext nVContext) {
        boolean z = user == null || user.level <= 0;
        this.rankingService = (RankingService) nVContext.getService(Module.MODULE_RANKING);
        List<RankingLevel> levels = this.rankingService.getLevels();
        if (levels == null || levels.isEmpty()) {
            return true;
        }
        return z;
    }

    public void setUser(User user, NVContext nVContext, int i, int i2, OnAnimListener onAnimListener) {
        CharSequence title;
        String str;
        if (this.isAnimating) {
            return;
        }
        if (user != null) {
            this.currentReputation = user.reputation;
        }
        this.showNothing = showNothing(user, nVContext);
        this.rankingService = (RankingService) nVContext.getService(Module.MODULE_RANKING);
        this.levelSize = CollectionUtils.getSize(this.rankingService.getLevels());
        setBadgeDrawable(this.showNothing ? null : this.badgeSmall ? this.rankingService.getBadgeSmall(user.level) : this.rankingService.getBadge(user.level));
        if (i != Integer.MIN_VALUE) {
            int levelByReputation = getLevelByReputation(i);
            setBadgeDrawable(this.showNothing ? null : this.badgeSmall ? this.rankingService.getBadgeSmall(levelByReputation) : this.rankingService.getBadge(levelByReputation));
        }
        this.showRoleName = showRoleName(user);
        if (this.showRoleName) {
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
            if (i == Integer.MIN_VALUE && i2 == Integer.MIN_VALUE) {
                TextView textView = this.rankingText;
                if (this.showReputation) {
                    StringBuilder sb = new StringBuilder();
                    sb.append(user.reputation);
                    if (user.level < this.levelSize) {
                        str = "/" + getMaxReputation(user.level);
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
            updateReputation(i, i2, onAnimListener);
            return;
        }
        this.showProgress = false;
        this.progressBar.setProgress(0);
        this.progressBar.setProgressDrawable(ContextCompat.getDrawable(getContext(), getOtherProgressDrawableId()));
        this.rankingText.setText(this.rankingService.getTitle(user.level));
    }

    public void earnRepuation(int i) {
        int i2;
        if (i <= 0 || (i2 = this.currentReputation) == Integer.MIN_VALUE) {
            return;
        }
        updateReputation(i2, i + i2, null);
    }

    public void toReputation(User user, NVContext nVContext) {
        int i = user.reputation;
        if (i <= 0 || this.currentReputation == Integer.MIN_VALUE) {
            return;
        }
        boolean zShowNothing = showNothing(user, nVContext);
        boolean zShowRoleName = showRoleName(user);
        if (zShowNothing || this.showNothing || this.showRoleName != zShowRoleName) {
            setUser(user, nVContext);
        } else {
            updateReputation(this.currentReputation, i, null);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public int getDuration(int i, int i2, int i3) {
        if (i3 == 0) {
            return 500;
        }
        int i4 = (((i2 - i) * 500) / i3) + 500;
        if (i4 < 550) {
            return 550;
        }
        if (i4 > 1000) {
            return 1000;
        }
        return i4;
    }

    public void willToReputation(User user, NVContext nVContext) {
        int i = user.reputation;
        if (i <= 0 || this.currentReputation == Integer.MIN_VALUE) {
            return;
        }
        boolean zShowNothing = showNothing(user, nVContext);
        boolean zShowRoleName = showRoleName(user);
        if (zShowNothing || this.showNothing || this.showRoleName != zShowRoleName) {
            return;
        }
        this.justGoFakeStart = true;
        updateReputation(this.currentReputation, i, null);
    }

    private void updateReputation(int i, int i2, final OnAnimListener onAnimListener) {
        if (!this.justGoFakeStart) {
            this.currentReputation = i2;
        }
        final int levelByReputation = getLevelByReputation(i);
        int levelByReputation2 = getLevelByReputation(i2);
        if (levelByReputation == levelByReputation2) {
            if (onAnimListener != null) {
                onAnimListener.onLevelChanged(levelByReputation);
            }
            final int maxReputation = getMaxReputation(levelByReputation);
            float f = i;
            ValueAnimator valueAnimatorOfFloat = ValueAnimator.ofFloat(f, i2);
            valueAnimatorOfFloat.setDuration(getDuration(i, i2, maxReputation));
            setUpIfFakeProgress(i, i2, maxReputation);
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
        float f2 = i;
        ValueAnimator valueAnimatorOfFloat2 = ValueAnimator.ofFloat(f2, maxReputation2);
        valueAnimatorOfFloat2.setDuration(getDuration(i, maxReputation2, maxReputation2));
        setUpIfFakeProgress(i, maxReputation2, maxReputation2);
        if (this.justGoFakeStart) {
            onProgressUpdate(f2, maxReputation2, levelByReputation);
            this.justGoFakeStart = false;
        } else {
            valueAnimatorOfFloat2.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: com.narvii.widget.RankingTitleView.3
                @Override // android.animation.ValueAnimator.AnimatorUpdateListener
                public void onAnimationUpdate(ValueAnimator valueAnimator) {
                    RankingTitleView.this.onProgressUpdate(((Float) valueAnimator.getAnimatedValue()).floatValue(), maxReputation2, levelByReputation);
                }
            });
            valueAnimatorOfFloat2.addListener(new AnonymousClass4(levelByReputation2, onAnimListener, i2));
            this.isAnimating = true;
            valueAnimatorOfFloat2.start();
        }
    }

    /* renamed from: com.narvii.widget.RankingTitleView$4, reason: invalid class name */
    class AnonymousClass4 extends AnimatorListenerAdapter {
        final /* synthetic */ int val$newLevel;
        final /* synthetic */ int val$newRP;
        final /* synthetic */ OnAnimListener val$onAnimListener;

        AnonymousClass4(int i, OnAnimListener onAnimListener, int i2) {
            this.val$newLevel = i;
            this.val$onAnimListener = onAnimListener;
            this.val$newRP = i2;
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationEnd(Animator animator) throws Resources.NotFoundException {
            Animation animationLoadAnimation = AnimationUtils.loadAnimation(RankingTitleView.this.getContext(), R.anim.badge_upgrade_in);
            animationLoadAnimation.setAnimationListener(new Animation.AnimationListener() { // from class: com.narvii.widget.RankingTitleView.4.1
                @Override // android.view.animation.Animation.AnimationListener
                public void onAnimationRepeat(Animation animation) {
                }

                @Override // android.view.animation.Animation.AnimationListener
                public void onAnimationStart(Animation animation) {
                }

                @Override // android.view.animation.Animation.AnimationListener
                public void onAnimationEnd(Animation animation) throws IllegalStateException, Resources.NotFoundException {
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
                    AnonymousClass4 anonymousClass42 = AnonymousClass4.this;
                    final int maxReputation = RankingTitleView.this.getMaxReputation(anonymousClass42.val$newLevel);
                    ValueAnimator valueAnimatorOfFloat = ValueAnimator.ofFloat(0.0f, AnonymousClass4.this.val$newRP);
                    AnonymousClass4 anonymousClass43 = AnonymousClass4.this;
                    valueAnimatorOfFloat.setDuration(RankingTitleView.this.getDuration(0, anonymousClass43.val$newRP, maxReputation));
                    AnonymousClass4 anonymousClass44 = AnonymousClass4.this;
                    RankingTitleView.this.setUpIfFakeProgress(0, anonymousClass44.val$newRP, maxReputation);
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
            boolean z = rankingTitleView.badgeSmall;
            RankingService rankingService = rankingTitleView.rankingService;
            imageView.setImageDrawable(z ? rankingService.getBadgeSmall(this.val$newLevel) : rankingService.getBadge(this.val$newLevel));
            RankingTitleView.this.badgeAnimate.setVisibility(0);
            RankingTitleView.this.badgeAnimate.startAnimation(animationLoadAnimation);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void onProgressUpdate(float f, int i, int i2) {
        String str;
        TextView textView = this.rankingText;
        if (textView == null || this.progressBar == null) {
            return;
        }
        if (this.showReputation) {
            StringBuilder sb = new StringBuilder();
            sb.append((int) f);
            if (i2 < this.levelSize) {
                str = "/" + i;
            } else {
                str = "";
            }
            sb.append(str);
            sb.append(" REP");
            textView.setText(sb.toString());
        } else {
            textView.setText(this.rankingService.getTitle(i2));
        }
        if (this.fakeProgressTimes != 1.0f) {
            f = getFakedProgress(f);
        }
        if (i != 0) {
            this.progressBar.setProgress(getProgess(f, i));
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void setUpIfFakeProgress(int i, int i2, int i3) {
        if (getLevelByReputation(i) == this.levelSize || i3 == 0) {
            this.fakeProgressTimes = 1.0f;
            return;
        }
        float f = i2 - i;
        float f2 = i3;
        if ((f * 1.0f) / f2 < 0.1f && i != i2) {
            float f3 = 0.1f * f2;
            this.fakeProgressTimes = f3 / f;
            this.animRealStart = i;
            this.animFakeStart = (int) (((i + i2) / 2) - (f3 / 2.0f));
            if (this.animFakeStart < 0) {
                this.animFakeStart = 0;
            }
            float f4 = f2 * 0.9f;
            if (this.animFakeStart > f4) {
                this.animFakeStart = (int) f4;
                return;
            }
            return;
        }
        this.animFakeStart = i;
        this.animRealStart = i;
        this.fakeProgressTimes = 1.0f;
    }

    private float getFakedProgress(float f) {
        return ((f - this.animRealStart) * this.fakeProgressTimes) + this.animFakeStart;
    }

    @Override // android.view.View
    protected void onSizeChanged(int i, int i2, int i3, int i4) {
        int i5;
        super.onSizeChanged(i, i2, i3, i4);
        if (this.width != i && !this.isAnimating && (i5 = this.lastGetProgressRP) != Integer.MIN_VALUE && this.showProgress) {
            this.width = i;
            ProgressBar progressBar = this.progressBar;
            if (progressBar != null) {
                progressBar.setProgress(getProgess(i5, this.lastGetProgressMaxRP));
            }
        }
        this.width = i;
    }

    public static String getUserRole(User user) {
        if (user == null) {
            return null;
        }
        if ((user == null || !user.isCurator()) && !user.isLeader()) {
            return null;
        }
        return user.roleName();
    }
}
