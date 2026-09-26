package com.narvii.util;

import android.R;
import android.animation.Animator;
import android.animation.AnimatorInflater;
import android.animation.AnimatorListenerAdapter;
import android.content.Context;
import android.graphics.Typeface;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.GradientDrawable;
import android.graphics.drawable.StateListDrawable;
import android.text.SpannableString;
import android.text.SpannableStringBuilder;
import android.text.TextUtils;
import android.text.style.ForegroundColorSpan;
import android.text.style.UnderlineSpan;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewParent;
import android.view.animation.Animation;
import android.view.animation.AnimationUtils;
import android.widget.FrameLayout;
import android.widget.ListView;
import android.widget.TextView;
import androidx.core.content.ContextCompat;
import com.narvii.util.ws.WsMessage;
import com.narvii.widget.NVImageView;
import com.narvii.widget.NVListView;
import java.util.Locale;

/* JADX INFO: loaded from: classes.dex */
public class ViewUtils {
    private static Typeface typefaceMontserrat;
    private static Typeface typefaceMontserratLight;
    private static final int[] STATE_PRESSED = {R.attr.state_pressed};
    private static final int[] STATE_NORMAL = new int[0];

    public static void fadeIn(View view, int i10) {
        if (view == null) {
            return;
        }
        int i11 = com.narvii.lib.R.id._fade_in_animator;
        Animator animator = (Animator) view.getTag(i11);
        if (animator == null || !animator.isStarted()) {
            cancelFadeAnimator(view);
            if (view.getVisibility() == 0) {
                return;
            }
            view.setVisibility(0);
            Animator animatorLoadAnimator = AnimatorInflater.loadAnimator(view.getContext(), com.narvii.lib.R.animator.fade_in);
            animatorLoadAnimator.setDuration(i10);
            animatorLoadAnimator.setTarget(view);
            view.setTag(i11, animatorLoadAnimator);
            animatorLoadAnimator.start();
        }
    }

    public static void fadeOut(View view) {
        fadeOut(view, WsMessage.LIVE_LAYER_USER_JOINED_EVENT);
    }

    public static void fadeShow(View view) {
        fadeShow(view, WsMessage.LIVE_LAYER_USER_JOINED_EVENT);
    }

    public static NVImageView getNVImageView(View view, int i10) {
        if (view == null) {
            return null;
        }
        View viewFindViewById = view.findViewById(i10);
        if (viewFindViewById instanceof NVImageView) {
            return (NVImageView) viewFindViewById;
        }
        return null;
    }

    public static TextView getTextView(View view, int i10) {
        if (view == null) {
            return null;
        }
        View viewFindViewById = view.findViewById(i10);
        if (viewFindViewById instanceof TextView) {
            return (TextView) viewFindViewById;
        }
        return null;
    }

    public static void setMarginBottom(ViewGroup.LayoutParams layoutParams, int i10) {
        if (layoutParams instanceof ViewGroup.MarginLayoutParams) {
            ((ViewGroup.MarginLayoutParams) layoutParams).bottomMargin = i10;
        }
    }

    public static void setMarginStart(ViewGroup.LayoutParams layoutParams, int i10) {
        if (layoutParams instanceof ViewGroup.MarginLayoutParams) {
            ((ViewGroup.MarginLayoutParams) layoutParams).setMarginStart(i10);
        }
    }

    public static void setMarginTop(ViewGroup.LayoutParams layoutParams, int i10) {
        if (layoutParams instanceof ViewGroup.MarginLayoutParams) {
            ((ViewGroup.MarginLayoutParams) layoutParams).topMargin = i10;
        }
    }

    public static void show(View view, int i10, boolean z6) {
        View viewFindViewById;
        if (view == null || (viewFindViewById = view.findViewById(i10)) == null) {
            return;
        }
        viewFindViewById.setVisibility(z6 ? 0 : 8);
    }

    public static void visible(View view, boolean z6) {
        visible(view, z6, false);
    }

    public static void cancelFadeInAnimator(View view) {
        int i10 = com.narvii.lib.R.id._fade_in_animator;
        Animator animator = (Animator) view.getTag(i10);
        if (animator != null && animator.isStarted()) {
            animator.end();
        }
        view.setTag(i10, null);
    }

    public static void cancelFadeOutAnimator(View view) {
        int i10 = com.narvii.lib.R.id._fade_out_animator;
        Animator animator = (Animator) view.getTag(i10);
        if (animator != null && animator.isStarted()) {
            animator.end();
        }
        view.setTag(i10, null);
    }

    public static void fadeHide(View view) {
        if (view == null) {
            return;
        }
        int visibility = view.getVisibility();
        view.clearAnimation();
        view.setVisibility(8);
        if (visibility == 0) {
            view.startAnimation(AnimationUtils.loadAnimation(view.getContext(), com.narvii.lib.R.anim.fade_out));
        }
    }

    public static void fadeOut(final View view, int i10) {
        if (view == null) {
            return;
        }
        int i11 = com.narvii.lib.R.id._fade_out_animator;
        Animator animator = (Animator) view.getTag(i11);
        if (animator == null || !animator.isStarted()) {
            cancelFadeAnimator(view);
            if (view.getVisibility() == 8) {
                return;
            }
            final Animator animatorLoadAnimator = AnimatorInflater.loadAnimator(view.getContext(), com.narvii.lib.R.animator.fade_out);
            animatorLoadAnimator.addListener(new AnimatorListenerAdapter() { // from class: com.narvii.util.ViewUtils.1
                @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
                public void onAnimationEnd(Animator animator2) {
                    super.onAnimationEnd(animator2);
                    animatorLoadAnimator.removeListener(this);
                    view.setAlpha(1.0f);
                    view.setVisibility(8);
                }
            });
            animatorLoadAnimator.setDuration(i10);
            animatorLoadAnimator.setTarget(view);
            view.setTag(i11, animatorLoadAnimator);
            animatorLoadAnimator.start();
        }
    }

    public static void fadeShow(View view, int i10) {
        if (view == null) {
            return;
        }
        int visibility = view.getVisibility();
        view.clearAnimation();
        view.setVisibility(0);
        if (visibility != 0) {
            Animation animationLoadAnimation = AnimationUtils.loadAnimation(view.getContext(), com.narvii.lib.R.anim.fade_in);
            if (i10 != 0) {
                animationLoadAnimation.setDuration(i10);
            }
            view.startAnimation(animationLoadAnimation);
        }
    }

    public static void fastFadeShow(View view) {
        fadeShow(view, 200);
    }

    public static Drawable getButtonBackground(int i10, float f) {
        StateListDrawable stateListDrawable = new StateListDrawable();
        GradientDrawable gradientDrawable = new GradientDrawable();
        gradientDrawable.setCornerRadius(f);
        gradientDrawable.setColor(Utils.darkColor(i10));
        stateListDrawable.addState(STATE_PRESSED, gradientDrawable);
        GradientDrawable gradientDrawable2 = new GradientDrawable();
        gradientDrawable2.setCornerRadius(f);
        gradientDrawable2.setColor(i10);
        stateListDrawable.addState(STATE_NORMAL, gradientDrawable2);
        return stateListDrawable;
    }

    public static int getMarginBottom(ViewGroup.LayoutParams layoutParams) {
        if (layoutParams instanceof ViewGroup.MarginLayoutParams) {
            return ((ViewGroup.MarginLayoutParams) layoutParams).bottomMargin;
        }
        return 0;
    }

    public static int getMarginEnd(ViewGroup.LayoutParams layoutParams) {
        if (layoutParams instanceof ViewGroup.MarginLayoutParams) {
            return ((ViewGroup.MarginLayoutParams) layoutParams).getMarginEnd();
        }
        return 0;
    }

    public static int getMarginStart(ViewGroup.LayoutParams layoutParams) {
        if (layoutParams instanceof ViewGroup.MarginLayoutParams) {
            return ((ViewGroup.MarginLayoutParams) layoutParams).getMarginStart();
        }
        return 0;
    }

    public static int getMarginTop(ViewGroup.LayoutParams layoutParams) {
        if (layoutParams instanceof ViewGroup.MarginLayoutParams) {
            return ((ViewGroup.MarginLayoutParams) layoutParams).topMargin;
        }
        return 0;
    }

    public static Typeface getMontserratExtraBoldTypeface(Context context) {
        if (typefaceMontserrat == null) {
            typefaceMontserrat = Typeface.createFromAsset(context.getAssets(), "Montserrat-ExtraBold.otf");
        }
        return typefaceMontserrat;
    }

    public static Typeface getMontserratExtraLightTypeface(Context context) {
        if (typefaceMontserratLight == null) {
            typefaceMontserratLight = Typeface.createFromAsset(context.getAssets(), "Montserrat-ExtraLight.otf");
        }
        return typefaceMontserratLight;
    }

    public static Drawable getRadisDrawable(int i10, float f) {
        GradientDrawable gradientDrawable = new GradientDrawable();
        gradientDrawable.setColor(i10);
        gradientDrawable.setCornerRadius(f);
        return gradientDrawable;
    }

    public static void highlightKeywords(TextView textView, String str, int i10) {
        int iIndexOf;
        if (textView == null || TextUtils.isEmpty(str)) {
            return;
        }
        String string = textView.getText().toString();
        SpannableString spannableString = new SpannableString(string);
        Locale locale = Locale.US;
        String lowerCase = string.toLowerCase(locale);
        String lowerCase2 = str.toLowerCase(locale);
        int length = 0;
        while (length < lowerCase.length() && (iIndexOf = lowerCase.indexOf(lowerCase2, length)) != -1) {
            spannableString.setSpan(new ForegroundColorSpan(i10), iIndexOf, str.length() + iIndexOf, 33);
            length = iIndexOf + str.length();
        }
        textView.setText(spannableString);
    }

    public static void scrollToBottom(ViewGroup viewGroup) {
        View childAt;
        if (viewGroup == null || (childAt = viewGroup.getChildAt(viewGroup.getChildCount() - 1)) == null) {
            return;
        }
        viewGroup.scrollBy(0, (childAt.getBottom() + viewGroup.getPaddingBottom()) - (viewGroup.getScrollY() + viewGroup.getHeight()));
    }

    public static void setMarginEnd(ViewGroup.LayoutParams layoutParams, int i10) {
        if (layoutParams instanceof ViewGroup.MarginLayoutParams) {
            ((ViewGroup.MarginLayoutParams) layoutParams).setMarginEnd(i10);
        }
    }

    public static void setMontserratExtraBoldTypeface(TextView textView) {
        if (textView == null) {
            return;
        }
        textView.setTypeface(getMontserratExtraBoldTypeface(textView.getContext()));
    }

    public static void setMontserratExtraLightTypeface(TextView textView) {
        if (textView == null) {
            return;
        }
        textView.setTypeface(getMontserratExtraLightTypeface(textView.getContext()));
    }

    public static void setPaddingLeft(View view, int i10) {
        if (view == null) {
            return;
        }
        if (Utils.isRtl()) {
            view.setPadding(view.getPaddingLeft(), view.getTop(), i10, view.getPaddingBottom());
        } else {
            view.setPadding(i10, view.getTop(), view.getPaddingRight(), view.getPaddingBottom());
        }
    }

    public static void setText(View view, int i10, int i11) {
        if (view == null) {
            return;
        }
        View viewFindViewById = view.findViewById(i10);
        if (viewFindViewById instanceof TextView) {
            ((TextView) viewFindViewById).setText(i11);
        }
    }

    public static void setTopBottomOverscrollStretchColor(ListView listView, int i10) {
        if (listView instanceof NVListView) {
            NVListView nVListView = (NVListView) listView;
            nVListView.setOverscrollStretchHeader(i10);
            nVListView.setOverscrollStretchFooter(i10);
        }
    }

    public static void setTopBottomPrefColor(ListView listView, Context context) {
        setTopBottomOverscrollStretchColor(listView, ContextCompat.getColor(context, com.narvii.lib.R.color.prefs_background));
    }

    public static void underlineTextView(TextView textView) {
        if (textView == null) {
            return;
        }
        SpannableStringBuilder spannableStringBuilder = new SpannableStringBuilder(textView.getText());
        spannableStringBuilder.setSpan(new UnderlineSpan(), 0, spannableStringBuilder.length(), 0);
        textView.setText(spannableStringBuilder);
    }

    public static void visible(View view, boolean z6, boolean z10) {
        if (view == null) {
            return;
        }
        if (z6) {
            view.setVisibility(0);
        } else {
            view.setVisibility(z10 ? 8 : 4);
        }
    }

    public static void cancelFadeAnimator(View view) {
        cancelFadeOutAnimator(view);
        cancelFadeInAnimator(view);
    }

    public static void removeFromParent(View view) {
        ViewParent parent = view.getParent();
        if (parent != null) {
            ((FrameLayout) parent).removeView(view);
        }
    }

    public static void setImageStrokWidth(View view, int i10, int i11) {
        NVImageView nVImageView = getNVImageView(view, i10);
        if (nVImageView != null) {
            nVImageView.strokeWidth = i11;
            nVImageView.invalidate();
        }
    }

    public static void setImageStrokeColor(View view, int i10, int i11) {
        NVImageView nVImageView = getNVImageView(view, i10);
        if (nVImageView != null) {
            nVImageView.strokeColor = i11;
            nVImageView.invalidate();
        }
    }

    public static void setTextColor(View view, int i10, int i11) {
        TextView textView = getTextView(view, i10);
        if (textView != null) {
            textView.setTextColor(i11);
        }
    }

    public static void show(View view, boolean z6) {
        if (view == null) {
            return;
        }
        if (z6) {
            view.setVisibility(0);
        } else {
            view.setVisibility(8);
        }
    }

    public static void setMarginBottom(View view, int i10) {
        if (view == null) {
            return;
        }
        ViewGroup.LayoutParams layoutParams = view.getLayoutParams();
        if (i10 != getMarginBottom(layoutParams)) {
            setMarginBottom(layoutParams, i10);
            view.setLayoutParams(layoutParams);
        }
    }

    public static void setMarginStart(View view, int i10) {
        if (view == null) {
            return;
        }
        ViewGroup.LayoutParams layoutParams = view.getLayoutParams();
        if (i10 != getMarginStart(layoutParams)) {
            setMarginStart(layoutParams, i10);
            view.setLayoutParams(layoutParams);
        }
    }

    public static void setMarginTop(View view, int i10) {
        if (view == null) {
            return;
        }
        ViewGroup.LayoutParams layoutParams = view.getLayoutParams();
        if (i10 != getMarginTop(layoutParams)) {
            setMarginTop(layoutParams, i10);
            view.setLayoutParams(layoutParams);
        }
    }

    public static void fadeIn(View view) {
        fadeIn(view, WsMessage.LIVE_LAYER_USER_JOINED_EVENT);
    }
}
