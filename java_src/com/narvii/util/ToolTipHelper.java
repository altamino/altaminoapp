package com.narvii.util;

import android.content.Context;
import android.content.res.Resources;
import android.graphics.Rect;
import android.os.Handler;
import android.os.Vibrator;
import android.support.v4.view.GravityCompat;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewParent;
import android.view.animation.Animation;
import android.view.animation.AnimationUtils;
import android.view.animation.OvershootInterpolator;
import android.view.animation.ScaleAnimation;
import android.view.animation.TranslateAnimation;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.TextView;
import com.narvii.lib.R;
import com.narvii.widget.PopupBubble;

/* loaded from: classes3.dex */
public class ToolTipHelper {
    public PopupBubble bubble;
    private View currentTooltipView;
    private Handler handler;
    private Runnable hideToolTipRunnable = new Runnable() { // from class: com.narvii.util.-$$Lambda$MN6BLuYMEetWn3XvQTBltk0CZks
        @Override // java.lang.Runnable
        public final void run() throws Resources.NotFoundException {
            this.f$0.hideToolTip();
        }
    };
    private TranslateAnimation translateAnimation;

    public interface CustomTooltipBubble {
        int getLayoutMarginLeft(Rect rect, int i);
    }

    public static boolean isToolTipEnabled() {
        return true;
    }

    public void hideToolTip() throws Resources.NotFoundException {
        PopupBubble popupBubble = this.bubble;
        if (popupBubble != null && popupBubble.getVisibility() == 0) {
            this.bubble.setVisibility(8);
            this.bubble.clearAnimation();
            this.bubble.startAnimation(AnimationUtils.loadAnimation(this.bubble.getContext(), R.anim.fade_out_fast));
        }
    }

    public boolean isTooltipShowing() {
        PopupBubble popupBubble = this.bubble;
        if (popupBubble == null) {
            return false;
        }
        return popupBubble.isShown();
    }

    public void showToolTip(final Tooltip tooltip) throws Resources.NotFoundException {
        int iCenterX;
        if (isToolTipEnabled() && tooltip != null) {
            final View view = tooltip.anchorView;
            View viewFindViewById = tooltip.rootView;
            Boolean bool = tooltip.indicatorUp;
            if (view == null) {
                return;
            }
            if (viewFindViewById == null && view.getRootView() != null) {
                viewFindViewById = view.getRootView().findViewById(android.R.id.content);
            }
            if (viewFindViewById == null || view.getVisibility() != 0 || view.getWidth() == 0 || view.getHeight() == 0) {
                return;
            }
            PopupBubble popupBubble = this.bubble;
            if (popupBubble != null) {
                if (tooltip.showOnlyOnce) {
                    return;
                }
                popupBubble.setVisibility(8);
                this.bubble.clearAnimation();
                Handler handler = this.handler;
                if (handler != null) {
                    handler.removeCallbacks(this.hideToolTipRunnable);
                }
                View view2 = this.currentTooltipView;
                if (view2 != null && (view2.getParent() instanceof ViewGroup)) {
                    ((ViewGroup) this.currentTooltipView.getParent()).removeView(this.currentTooltipView);
                }
            }
            int[] iArr = new int[2];
            view.getLocationInWindow(iArr);
            int[] iArr2 = new int[2];
            viewFindViewById.getLocationInWindow(iArr2);
            if (viewFindViewById instanceof ViewGroup) {
                Rect rect = new Rect();
                rect.left = iArr[0] - (iArr2[0] + viewFindViewById.getContext().getResources().getDimensionPixelSize(R.dimen.tooltip_margin_h));
                rect.top = iArr[1] - iArr2[1];
                rect.right = rect.left + view.getWidth();
                rect.bottom = rect.top + view.getHeight();
                LayoutInflater layoutInflaterFrom = LayoutInflater.from(view.getContext());
                int i = tooltip.customTooltipBubbleLayout;
                if (i == 0) {
                    i = R.layout.tooltip_layout;
                }
                ViewGroup viewGroup = (ViewGroup) viewFindViewById;
                View viewInflate = layoutInflaterFrom.inflate(i, viewGroup, false);
                this.currentTooltipView = viewInflate;
                viewGroup.addView(viewInflate);
                Callback<View> callback = tooltip.onCustomViewListener;
                if (callback == null) {
                    TextView textView = (TextView) viewInflate.findViewById(R.id.hint_text);
                    int i2 = tooltip.textId;
                    if (i2 != 0) {
                        textView.setText(i2);
                    } else {
                        textView.setText(tooltip.text);
                    }
                    float f = tooltip.textSize;
                    if (f > 0.0f) {
                        textView.setTextSize(0, f);
                    }
                    textView.setGravity(tooltip.isRightAlign ? GravityCompat.END : GravityCompat.START);
                } else {
                    callback.call(viewInflate);
                }
                int width = viewFindViewById.getWidth() - (viewInflate.getContext().getResources().getDimensionPixelSize(R.dimen.tooltip_margin_h) * 2);
                Integer num = tooltip.maxWidth;
                int iMin = num != null ? Math.min(num.intValue(), width) : width;
                int height = viewFindViewById.getHeight();
                this.bubble = (PopupBubble) viewInflate.findViewById(R.id.popup_bubble);
                ImageView imageView = null;
                int i3 = tooltip.finger;
                if (i3 == 1) {
                    imageView = (ImageView) this.bubble.findViewById(R.id.finger_start);
                } else if (i3 == 2) {
                    imageView = (ImageView) this.bubble.findViewById(R.id.finger_end);
                }
                if (imageView != null) {
                    imageView.setVisibility(0);
                }
                FrameLayout.LayoutParams layoutParams = (FrameLayout.LayoutParams) this.bubble.getLayoutParams();
                this.bubble.measure(View.MeasureSpec.makeMeasureSpec(iMin, Integer.MIN_VALUE), View.MeasureSpec.makeMeasureSpec(height, Integer.MIN_VALUE));
                int measuredHeight = this.bubble.getMeasuredHeight();
                int measuredWidth = this.bubble.getMeasuredWidth();
                int i4 = measuredHeight / 2;
                int i5 = (int) (height * 0.4f);
                boolean zBooleanValue = Math.abs(i5 - (rect.top - i4)) < Math.abs(i5 - (rect.bottom + i4));
                if (bool != null) {
                    zBooleanValue = bool.booleanValue();
                }
                final boolean z = zBooleanValue;
                if (imageView != null) {
                    imageView.setImageResource(!z ? R.drawable.ic_finger_up : R.drawable.ic_finger_down);
                }
                int dimensionPixelSize = this.bubble.getContext().getResources().getDimensionPixelSize(R.dimen.tooltip_offset_v);
                int i6 = z ? (rect.top - measuredHeight) - dimensionPixelSize : rect.bottom + dimensionPixelSize;
                ViewParent viewParent = this.bubble;
                if (viewParent instanceof CustomTooltipBubble) {
                    iCenterX = ((CustomTooltipBubble) viewParent).getLayoutMarginLeft(rect, width);
                } else {
                    iCenterX = rect.centerX() - (measuredWidth / 2);
                    int i7 = width / 2;
                    if (rect.centerX() < i7) {
                        iCenterX = Math.max(iCenterX, 0);
                    }
                    if (rect.centerX() > i7) {
                        iCenterX = Math.min(iCenterX, width - measuredWidth);
                    }
                }
                int i8 = tooltip.backgroundColor;
                if (i8 != -1) {
                    this.bubble.setBubbleBackgroundColor(i8);
                }
                layoutParams.leftMargin = iCenterX;
                layoutParams.topMargin = i6;
                layoutParams.rightMargin = Math.max(0, (width - iCenterX) - measuredWidth);
                this.bubble.setLayoutParams(layoutParams);
                this.bubble.setAutoRtl(false);
                int iCenterX2 = rect.centerX() - iCenterX;
                this.bubble.setIndicator(!z, iCenterX2);
                this.bubble.setOnClickListener(new View.OnClickListener() { // from class: com.narvii.util.ToolTipHelper.1
                    @Override // android.view.View.OnClickListener
                    public void onClick(View view3) throws Resources.NotFoundException {
                        View view4;
                        ToolTipHelper.this.hideToolTip();
                        Tooltip tooltip2 = tooltip;
                        View.OnClickListener onClickListener = tooltip2.onClickListener;
                        if (onClickListener != null) {
                            onClickListener.onClick(view3);
                        } else {
                            if (!tooltip2.linkClickWithAnchorView || (view4 = view) == null) {
                                return;
                            }
                            view4.performClick();
                        }
                    }
                });
                this.bubble.setVisibility(0);
                if (tooltip.isVibrate) {
                    try {
                        ((Vibrator) this.bubble.getContext().getSystemService("vibrator")).vibrate(300L);
                    } catch (Exception unused) {
                    }
                }
                ScaleAnimation scaleAnimation = new ScaleAnimation(0.0f, 1.0f, 0.0f, 1.0f, 0, iCenterX2, 1, z ? 1.0f : 0.0f);
                scaleAnimation.setDuration(400L);
                scaleAnimation.setInterpolator(new OvershootInterpolator(1.2f));
                scaleAnimation.setAnimationListener(new Animation.AnimationListener() { // from class: com.narvii.util.ToolTipHelper.2
                    @Override // android.view.animation.Animation.AnimationListener
                    public void onAnimationRepeat(Animation animation) {
                    }

                    @Override // android.view.animation.Animation.AnimationListener
                    public void onAnimationStart(Animation animation) {
                    }

                    @Override // android.view.animation.Animation.AnimationListener
                    public void onAnimationEnd(Animation animation) {
                        if (ToolTipHelper.this.bubble.getVisibility() != 0) {
                            return;
                        }
                        ToolTipHelper toolTipHelper = ToolTipHelper.this;
                        toolTipHelper.translateAnimation = ToolTipHelper.getTranslateAnimation(toolTipHelper.bubble.getContext(), z);
                        ToolTipHelper toolTipHelper2 = ToolTipHelper.this;
                        toolTipHelper2.bubble.startAnimation(toolTipHelper2.translateAnimation);
                    }
                });
                this.bubble.startAnimation(scaleAnimation);
                if (tooltip.autoHide) {
                    this.handler = new Handler();
                    this.handler.postDelayed(this.hideToolTipRunnable, tooltip.autoHideDuration);
                }
            }
        }
    }

    public void showToolTip(View view, View view2, int i, boolean z) throws Resources.NotFoundException {
        showToolTip(Tooltip.builder().anchorView(view).rootView(view2).textId(i).indicatorUp(z).autoHide().build());
    }

    public void resumeTooltipAnimation() {
        TranslateAnimation translateAnimation;
        PopupBubble popupBubble = this.bubble;
        if (popupBubble == null || popupBubble.getVisibility() != 0 || this.bubble.getAnimation() != null || (translateAnimation = this.translateAnimation) == null) {
            return;
        }
        this.bubble.startAnimation(translateAnimation);
    }

    public static TranslateAnimation getTranslateAnimation(Context context, boolean z) throws Resources.NotFoundException {
        int dimensionPixelSize = context.getResources().getDimensionPixelSize(R.dimen.tooltip_offset_v);
        if (!z) {
            dimensionPixelSize = -dimensionPixelSize;
        }
        TranslateAnimation translateAnimation = new TranslateAnimation(0.0f, 0.0f, 0.0f, dimensionPixelSize);
        translateAnimation.setRepeatCount(-1);
        translateAnimation.setRepeatMode(2);
        translateAnimation.setDuration(1000L);
        return translateAnimation;
    }

    public void showToolTip(View view, View view2, int i) throws Resources.NotFoundException {
        showToolTip(Tooltip.builder().anchorView(view).rootView(view2).autoHide().textId(i).build());
    }
}
