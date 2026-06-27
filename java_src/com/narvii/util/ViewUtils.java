package com.narvii.util;

import android.R;
import android.animation.Animator;
import android.animation.AnimatorInflater;
import android.animation.AnimatorListenerAdapter;
import android.content.Context;
import android.content.res.Resources;
import android.graphics.Typeface;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.GradientDrawable;
import android.graphics.drawable.StateListDrawable;
import android.os.Build;
import android.support.v4.content.ContextCompat;
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
import com.narvii.app.NVContext;
import com.narvii.app.NVFragment;
import com.narvii.util.ws.WsMessage;
import com.narvii.widget.NVImageView;
import com.narvii.widget.NVListView;
import java.util.Locale;

/* loaded from: classes3.dex */
public class ViewUtils {
    private static Typeface typefaceMontserrat;
    private static Typeface typefaceMontserratLight;
    private static final int[] STATE_PRESSED = {R.attr.state_pressed};
    private static final int[] STATE_NORMAL = new int[0];

    public static void show(View view, int i, boolean z) {
        View viewFindViewById;
        if (view == null || (viewFindViewById = view.findViewById(i)) == null) {
            return;
        }
        viewFindViewById.setVisibility(z ? 0 : 8);
    }

    public static void show(View view, boolean z) {
        if (view == null) {
            return;
        }
        if (z) {
            view.setVisibility(0);
        } else {
            view.setVisibility(8);
        }
    }

    public static void setText(View view, int i, int i2) {
        if (view == null) {
            return;
        }
        View viewFindViewById = view.findViewById(i);
        if (viewFindViewById instanceof TextView) {
            ((TextView) viewFindViewById).setText(i2);
        }
    }

    public static void fastFadeShow(View view) throws Resources.NotFoundException {
        fadeShow(view, 200);
    }

    public static void fadeShow(View view) throws Resources.NotFoundException {
        fadeShow(view, WsMessage.LIVE_LAYER_USER_JOINED_EVENT);
    }

    public static void fadeShow(View view, int i) throws Resources.NotFoundException {
        if (view == null) {
            return;
        }
        int visibility = view.getVisibility();
        view.clearAnimation();
        view.setVisibility(0);
        if (visibility != 0) {
            Animation animationLoadAnimation = AnimationUtils.loadAnimation(view.getContext(), com.narvii.lib.R.anim.fade_in);
            if (i != 0) {
                animationLoadAnimation.setDuration(i);
            }
            view.startAnimation(animationLoadAnimation);
        }
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

    public static int getBannerLift(NVContext nVContext, int i) {
        if ((nVContext instanceof NVFragment) && ((NVFragment) nVContext).isEmbedFragment()) {
            return 0;
        }
        return Utils.dpToPxInt(nVContext.getContext(), 50.0f);
    }

    public static void fadeIn(View view, int i) throws Resources.NotFoundException {
        if (view == null) {
            return;
        }
        Animator animator = (Animator) view.getTag(com.narvii.lib.R.id._fade_in_animator);
        if (animator == null || !animator.isStarted()) {
            cancelFadeAnimator(view);
            if (view.getVisibility() == 0) {
                return;
            }
            view.setVisibility(0);
            Animator animatorLoadAnimator = AnimatorInflater.loadAnimator(view.getContext(), com.narvii.lib.R.animator.fade_in);
            animatorLoadAnimator.setDuration(i);
            animatorLoadAnimator.setTarget(view);
            view.setTag(com.narvii.lib.R.id._fade_in_animator, animatorLoadAnimator);
            animatorLoadAnimator.start();
        }
    }

    public static void fadeIn(View view) throws Resources.NotFoundException {
        fadeIn(view, WsMessage.LIVE_LAYER_USER_JOINED_EVENT);
    }

    public static void cancelFadeAnimator(View view) {
        cancelFadeOutAnimator(view);
        cancelFadeInAnimator(view);
    }

    public static void cancelFadeOutAnimator(View view) {
        Animator animator = (Animator) view.getTag(com.narvii.lib.R.id._fade_out_animator);
        if (animator != null && animator.isStarted()) {
            animator.end();
        }
        view.setTag(com.narvii.lib.R.id._fade_out_animator, null);
    }

    public static void cancelFadeInAnimator(View view) {
        Animator animator = (Animator) view.getTag(com.narvii.lib.R.id._fade_in_animator);
        if (animator != null && animator.isStarted()) {
            animator.end();
        }
        view.setTag(com.narvii.lib.R.id._fade_in_animator, null);
    }

    public static void fadeOut(View view) throws Resources.NotFoundException {
        fadeOut(view, WsMessage.LIVE_LAYER_USER_JOINED_EVENT);
    }

    public static void fadeOut(final View view, int i) throws Resources.NotFoundException {
        if (view == null) {
            return;
        }
        Animator animator = (Animator) view.getTag(com.narvii.lib.R.id._fade_out_animator);
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
            animatorLoadAnimator.setDuration(i);
            animatorLoadAnimator.setTarget(view);
            view.setTag(com.narvii.lib.R.id._fade_out_animator, animatorLoadAnimator);
            animatorLoadAnimator.start();
        }
    }

    public static void visible(View view, boolean z) {
        visible(view, z, false);
    }

    public static void visible(View view, boolean z, boolean z2) {
        if (view == null) {
            return;
        }
        if (z) {
            view.setVisibility(0);
        } else {
            view.setVisibility(z2 ? 8 : 4);
        }
    }

    public static TextView getTextView(View view, int i) {
        if (view == null) {
            return null;
        }
        View viewFindViewById = view.findViewById(i);
        if (viewFindViewById instanceof TextView) {
            return (TextView) viewFindViewById;
        }
        return null;
    }

    public static NVImageView getNVImageView(View view, int i) {
        if (view == null) {
            return null;
        }
        View viewFindViewById = view.findViewById(i);
        if (viewFindViewById instanceof NVImageView) {
            return (NVImageView) viewFindViewById;
        }
        return null;
    }

    public static void setTextColor(View view, int i, int i2) {
        TextView textView = getTextView(view, i);
        if (textView != null) {
            textView.setTextColor(i2);
        }
    }

    public static void setImageStrokeColor(View view, int i, int i2) {
        NVImageView nVImageView = getNVImageView(view, i);
        if (nVImageView != null) {
            nVImageView.strokeColor = i2;
            nVImageView.invalidate();
        }
    }

    public static void setImageStrokWidth(View view, int i, int i2) {
        NVImageView nVImageView = getNVImageView(view, i);
        if (nVImageView != null) {
            nVImageView.strokeWidth = i2;
            nVImageView.invalidate();
        }
    }

    public static Typeface getMontserratExtraBoldTypeface(Context context) {
        if (typefaceMontserrat == null) {
            typefaceMontserrat = Typeface.createFromAsset(context.getAssets(), "Montserrat-ExtraBold.otf");
        }
        return typefaceMontserrat;
    }

    public static void setMontserratExtraBoldTypeface(TextView textView) {
        if (textView == null) {
            return;
        }
        textView.setTypeface(getMontserratExtraBoldTypeface(textView.getContext()));
    }

    public static Typeface getMontserratExtraLightTypeface(Context context) {
        if (typefaceMontserratLight == null) {
            typefaceMontserratLight = Typeface.createFromAsset(context.getAssets(), "Montserrat-ExtraLight.otf");
        }
        return typefaceMontserratLight;
    }

    public static void setMontserratExtraLightTypeface(TextView textView) {
        if (textView == null) {
            return;
        }
        textView.setTypeface(getMontserratExtraLightTypeface(textView.getContext()));
    }

    public static Drawable getButtonBackground(int i, float f) {
        StateListDrawable stateListDrawable = new StateListDrawable();
        GradientDrawable gradientDrawable = new GradientDrawable();
        gradientDrawable.setCornerRadius(f);
        gradientDrawable.setColor(Utils.darkColor(i));
        stateListDrawable.addState(STATE_PRESSED, gradientDrawable);
        GradientDrawable gradientDrawable2 = new GradientDrawable();
        gradientDrawable2.setCornerRadius(f);
        gradientDrawable2.setColor(i);
        stateListDrawable.addState(STATE_NORMAL, gradientDrawable2);
        return stateListDrawable;
    }

    public static void setPaddingLeft(View view, int i) {
        if (view == null) {
            return;
        }
        if (Utils.isRtl()) {
            view.setPadding(view.getPaddingLeft(), view.getTop(), i, view.getPaddingBottom());
        } else {
            view.setPadding(i, view.getTop(), view.getPaddingRight(), view.getPaddingBottom());
        }
    }

    public static void highlightKeywords(TextView textView, String str, int i) {
        int iIndexOf;
        if (textView == null || TextUtils.isEmpty(str)) {
            return;
        }
        String string = textView.getText().toString();
        SpannableString spannableString = new SpannableString(string);
        int length = 0;
        String lowerCase = string.toLowerCase(Locale.US);
        String lowerCase2 = str.toLowerCase(Locale.US);
        while (length < lowerCase.length() && (iIndexOf = lowerCase.indexOf(lowerCase2, length)) != -1) {
            spannableString.setSpan(new ForegroundColorSpan(i), iIndexOf, str.length() + iIndexOf, 33);
            length = iIndexOf + str.length();
        }
        textView.setText(spannableString);
    }

    public static void underlineTextView(TextView textView) {
        if (textView == null) {
            return;
        }
        SpannableStringBuilder spannableStringBuilder = new SpannableStringBuilder(textView.getText());
        spannableStringBuilder.setSpan(new UnderlineSpan(), 0, spannableStringBuilder.length(), 0);
        textView.setText(spannableStringBuilder);
    }

    public static void scrollToBottom(ViewGroup viewGroup) {
        View childAt;
        if (viewGroup == null || (childAt = viewGroup.getChildAt(viewGroup.getChildCount() - 1)) == null) {
            return;
        }
        viewGroup.scrollBy(0, (childAt.getBottom() + viewGroup.getPaddingBottom()) - (viewGroup.getScrollY() + viewGroup.getHeight()));
    }

    public static void setMarginStart(ViewGroup.LayoutParams layoutParams, int i) {
        if (layoutParams instanceof ViewGroup.MarginLayoutParams) {
            ViewGroup.MarginLayoutParams marginLayoutParams = (ViewGroup.MarginLayoutParams) layoutParams;
            if (Build.VERSION.SDK_INT < 17) {
                marginLayoutParams.leftMargin = i;
            } else {
                marginLayoutParams.setMarginStart(i);
            }
        }
    }

    public static void setMarginBottom(ViewGroup.LayoutParams layoutParams, int i) {
        if (layoutParams instanceof ViewGroup.MarginLayoutParams) {
            ((ViewGroup.MarginLayoutParams) layoutParams).bottomMargin = i;
        }
    }

    public static void setMarginTop(ViewGroup.LayoutParams layoutParams, int i) {
        if (layoutParams instanceof ViewGroup.MarginLayoutParams) {
            ((ViewGroup.MarginLayoutParams) layoutParams).topMargin = i;
        }
    }

    public static void setMarginStart(View view, int i) {
        if (view == null) {
            return;
        }
        ViewGroup.LayoutParams layoutParams = view.getLayoutParams();
        if (i != getMarginStart(layoutParams)) {
            setMarginStart(layoutParams, i);
            view.setLayoutParams(layoutParams);
        }
    }

    public static void setMarginBottom(View view, int i) {
        if (view == null) {
            return;
        }
        ViewGroup.LayoutParams layoutParams = view.getLayoutParams();
        if (i != getMarginBottom(layoutParams)) {
            setMarginBottom(layoutParams, i);
            view.setLayoutParams(layoutParams);
        }
    }

    public static void setMarginTop(View view, int i) {
        if (view == null) {
            return;
        }
        ViewGroup.LayoutParams layoutParams = view.getLayoutParams();
        if (i != getMarginTop(layoutParams)) {
            setMarginTop(layoutParams, i);
            view.setLayoutParams(layoutParams);
        }
    }

    public static void setMarginEnd(ViewGroup.LayoutParams layoutParams, int i) {
        if (layoutParams instanceof ViewGroup.MarginLayoutParams) {
            ViewGroup.MarginLayoutParams marginLayoutParams = (ViewGroup.MarginLayoutParams) layoutParams;
            if (Build.VERSION.SDK_INT < 17) {
                marginLayoutParams.rightMargin = i;
            } else {
                marginLayoutParams.setMarginEnd(i);
            }
        }
    }

    public static int getMarginStart(ViewGroup.LayoutParams layoutParams) {
        if (!(layoutParams instanceof ViewGroup.MarginLayoutParams)) {
            return 0;
        }
        ViewGroup.MarginLayoutParams marginLayoutParams = (ViewGroup.MarginLayoutParams) layoutParams;
        if (Build.VERSION.SDK_INT < 17) {
            return marginLayoutParams.leftMargin;
        }
        return marginLayoutParams.getMarginStart();
    }

    public static int getMarginEnd(ViewGroup.LayoutParams layoutParams) {
        if (!(layoutParams instanceof ViewGroup.MarginLayoutParams)) {
            return 0;
        }
        ViewGroup.MarginLayoutParams marginLayoutParams = (ViewGroup.MarginLayoutParams) layoutParams;
        if (Build.VERSION.SDK_INT < 17) {
            return marginLayoutParams.rightMargin;
        }
        return marginLayoutParams.getMarginEnd();
    }

    public static int getMarginBottom(ViewGroup.LayoutParams layoutParams) {
        if (layoutParams instanceof ViewGroup.MarginLayoutParams) {
            return ((ViewGroup.MarginLayoutParams) layoutParams).bottomMargin;
        }
        return 0;
    }

    public static int getMarginTop(ViewGroup.LayoutParams layoutParams) {
        if (layoutParams instanceof ViewGroup.MarginLayoutParams) {
            return ((ViewGroup.MarginLayoutParams) layoutParams).topMargin;
        }
        return 0;
    }

    public static void removeFromParent(View view) {
        ViewParent parent = view.getParent();
        if (parent != null) {
            ((FrameLayout) parent).removeView(view);
        }
    }

    public static void setTopBottomOverscrollStretchColor(ListView listView, int i) {
        if (listView instanceof NVListView) {
            NVListView nVListView = (NVListView) listView;
            nVListView.setOverscrollStretchHeader(i);
            nVListView.setOverscrollStretchFooter(i);
        }
    }

    public static void setTopBottomPrefColor(ListView listView, Context context) {
        setTopBottomOverscrollStretchColor(listView, ContextCompat.getColor(context, com.narvii.lib.R.color.prefs_background));
    }

    public static Drawable getRadisDrawable(int i, float f) {
        GradientDrawable gradientDrawable = new GradientDrawable();
        gradientDrawable.setColor(i);
        gradientDrawable.setCornerRadius(f);
        return gradientDrawable;
    }
}
