package com.narvii.util;

import android.R;
import android.content.Context;
import android.content.res.Resources;
import android.graphics.Rect;
import android.os.Handler;
import android.os.Vibrator;
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
import androidx.core.view.GravityCompat;
import com.narvii.widget.PopupBubble;

/* JADX INFO: loaded from: classes2.dex */
public class ToolTipHelper {
    public PopupBubble bubble;
    private View currentTooltipView;
    private Handler handler;
    private Runnable hideToolTipRunnable = new Runnable() { // from class: com.narvii.util.e
        @Override // java.lang.Runnable
        public final void run() {
            this.f2824a.hideToolTip();
        }
    };
    private TranslateAnimation translateAnimation;

    public interface CustomTooltipBubble {
        int getLayoutMarginLeft(Rect rect, int i10);
    }

    public static boolean isToolTipEnabled() {
        return true;
    }

    public void showToolTip(final Tooltip tooltip) {
        ImageView imageView;
        int iCenterX;
        if (isToolTipEnabled() && tooltip != null) {
            final View view = tooltip.anchorView;
            View viewFindViewById = tooltip.rootView;
            Boolean bool = tooltip.indicatorUp;
            if (view == null) {
                return;
            }
            if (viewFindViewById == null && view.getRootView() != null) {
                viewFindViewById = view.getRootView().findViewById(R.id.content);
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
                int i10 = iArr[0];
                int i11 = iArr2[0];
                Resources resources = viewFindViewById.getContext().getResources();
                int i12 = com.narvii.lib.R.dimen.tooltip_margin_h;
                int dimensionPixelSize = i10 - (i11 + resources.getDimensionPixelSize(i12));
                rect.left = dimensionPixelSize;
                rect.top = iArr[1] - iArr2[1];
                rect.right = dimensionPixelSize + view.getWidth();
                rect.bottom = rect.top + view.getHeight();
                LayoutInflater layoutInflaterFrom = LayoutInflater.from(view.getContext());
                int i13 = tooltip.customTooltipBubbleLayout;
                if (i13 == 0) {
                    i13 = com.narvii.lib.R.layout.tooltip_layout;
                }
                ViewGroup viewGroup = (ViewGroup) viewFindViewById;
                View viewInflate = layoutInflaterFrom.inflate(i13, viewGroup, false);
                this.currentTooltipView = viewInflate;
                viewGroup.addView(viewInflate);
                Callback<View> callback = tooltip.onCustomViewListener;
                if (callback == null) {
                    TextView textView = (TextView) viewInflate.findViewById(com.narvii.lib.R.id.hint_text);
                    int i14 = tooltip.textId;
                    if (i14 != 0) {
                        textView.setText(i14);
                    } else {
                        textView.setText(tooltip.text);
                    }
                    float f = tooltip.textSize;
                    if (f > 0.0f) {
                        textView.setTextSize(0, f);
                    }
                    int i15 = tooltip.textColor;
                    if (i15 != -1) {
                        textView.setTextColor(i15);
                    }
                    textView.setGravity(tooltip.isRightAlign ? GravityCompat.END : GravityCompat.START);
                } else {
                    callback.call(viewInflate);
                }
                int width = viewFindViewById.getWidth() - (viewInflate.getContext().getResources().getDimensionPixelSize(i12) * 2);
                Integer num = tooltip.maxWidth;
                int iMin = num != null ? Math.min(num.intValue(), width) : width;
                int height = viewFindViewById.getHeight();
                PopupBubble popupBubble2 = (PopupBubble) viewInflate.findViewById(com.narvii.lib.R.id.popup_bubble);
                this.bubble = popupBubble2;
                int i16 = tooltip.finger;
                if (i16 != 1) {
                    imageView = i16 != 2 ? null : (ImageView) popupBubble2.findViewById(com.narvii.lib.R.id.finger_end);
                } else {
                    imageView = (ImageView) popupBubble2.findViewById(com.narvii.lib.R.id.finger_start);
                }
                if (imageView != null) {
                    imageView.setVisibility(0);
                }
                FrameLayout.LayoutParams layoutParams = (FrameLayout.LayoutParams) this.bubble.getLayoutParams();
                this.bubble.measure(View.MeasureSpec.makeMeasureSpec(iMin, Integer.MIN_VALUE), View.MeasureSpec.makeMeasureSpec(height, Integer.MIN_VALUE));
                int measuredHeight = this.bubble.getMeasuredHeight();
                int measuredWidth = this.bubble.getMeasuredWidth();
                int i17 = measuredHeight / 2;
                int i18 = (int) (height * 0.4f);
                final boolean zBooleanValue = Math.abs(i18 - (rect.top - i17)) < Math.abs(i18 - (rect.bottom + i17));
                if (bool != null) {
                    zBooleanValue = bool.booleanValue();
                }
                if (imageView != null) {
                    imageView.setImageResource(!zBooleanValue ? com.narvii.lib.R.drawable.ic_finger_up : com.narvii.lib.R.drawable.ic_finger_down);
                }
                int dimensionPixelSize2 = this.bubble.getContext().getResources().getDimensionPixelSize(com.narvii.lib.R.dimen.tooltip_offset_v);
                int i19 = zBooleanValue ? (rect.top - measuredHeight) - dimensionPixelSize2 : rect.bottom + dimensionPixelSize2;
                ViewParent viewParent = this.bubble;
                if (viewParent instanceof CustomTooltipBubble) {
                    iCenterX = ((CustomTooltipBubble) viewParent).getLayoutMarginLeft(rect, width);
                } else {
                    iCenterX = rect.centerX() - (measuredWidth / 2);
                    int i20 = width / 2;
                    if (rect.centerX() < i20) {
                        iCenterX = Math.max(iCenterX, 0);
                    }
                    if (rect.centerX() > i20) {
                        iCenterX = Math.min(iCenterX, width - measuredWidth);
                    }
                }
                int i21 = tooltip.backgroundColor;
                if (i21 != -1) {
                    this.bubble.setBubbleBackgroundColor(i21);
                }
                layoutParams.leftMargin = iCenterX;
                layoutParams.topMargin = i19;
                layoutParams.rightMargin = Math.max(0, (width - iCenterX) - measuredWidth);
                this.bubble.setLayoutParams(layoutParams);
                this.bubble.setAutoRtl(false);
                int iCenterX2 = rect.centerX() - iCenterX;
                this.bubble.setIndicator(!zBooleanValue, iCenterX2);
                this.bubble.setOnClickListener(new View.OnClickListener() { // from class: com.narvii.util.ToolTipHelper.1
                    @Override // android.view.View.OnClickListener
                    public void onClick(View view3) {
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
                ScaleAnimation scaleAnimation = new ScaleAnimation(0.0f, 1.0f, 0.0f, 1.0f, 0, iCenterX2, 1, zBooleanValue ? 1.0f : 0.0f);
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
                        toolTipHelper.translateAnimation = ToolTipHelper.getTranslateAnimation(toolTipHelper.bubble.getContext(), zBooleanValue);
                        ToolTipHelper toolTipHelper2 = ToolTipHelper.this;
                        toolTipHelper2.bubble.startAnimation(toolTipHelper2.translateAnimation);
                    }
                });
                this.bubble.startAnimation(scaleAnimation);
                if (tooltip.autoHide) {
                    Handler handler2 = new Handler();
                    this.handler = handler2;
                    handler2.postDelayed(this.hideToolTipRunnable, tooltip.autoHideDuration);
                }
            }
        }
    }

    public void hideToolTip() {
        PopupBubble popupBubble = this.bubble;
        if (popupBubble != null && popupBubble.getVisibility() == 0) {
            this.bubble.setVisibility(8);
            this.bubble.clearAnimation();
            this.bubble.startAnimation(AnimationUtils.loadAnimation(this.bubble.getContext(), com.narvii.lib.R.anim.fade_out_fast));
        }
    }

    public boolean isTooltipShowing() {
        PopupBubble popupBubble = this.bubble;
        if (popupBubble == null) {
            return false;
        }
        return popupBubble.isShown();
    }

    public void resumeTooltipAnimation() {
        TranslateAnimation translateAnimation;
        PopupBubble popupBubble = this.bubble;
        if (popupBubble == null || popupBubble.getVisibility() != 0 || this.bubble.getAnimation() != null || (translateAnimation = this.translateAnimation) == null) {
            return;
        }
        this.bubble.startAnimation(translateAnimation);
    }

    public static TranslateAnimation getTranslateAnimation(Context context, boolean z6) {
        int dimensionPixelSize = context.getResources().getDimensionPixelSize(com.narvii.lib.R.dimen.tooltip_offset_v);
        if (!z6) {
            dimensionPixelSize = -dimensionPixelSize;
        }
        TranslateAnimation translateAnimation = new TranslateAnimation(0.0f, 0.0f, 0.0f, dimensionPixelSize);
        translateAnimation.setRepeatCount(-1);
        translateAnimation.setRepeatMode(2);
        translateAnimation.setDuration(1000L);
        return translateAnimation;
    }

    public void showToolTip(View view, View view2, int i10, boolean z6) {
        showToolTip(Tooltip.builder().anchorView(view).rootView(view2).textId(i10).indicatorUp(z6).autoHide().build());
    }

    public void showToolTip(View view, View view2, int i10) {
        showToolTip(Tooltip.builder().anchorView(view).rootView(view2).autoHide().textId(i10).build());
    }
}
