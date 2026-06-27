package com.facebook.ads.redexgen.X;

import android.R;
import android.annotation.TargetApi;
import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.Resources;
import android.graphics.Typeface;
import android.graphics.drawable.ColorDrawable;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.GradientDrawable;
import android.graphics.drawable.RippleDrawable;
import android.graphics.drawable.ShapeDrawable;
import android.graphics.drawable.StateListDrawable;
import android.graphics.drawable.shapes.RoundRectShape;
import android.os.Build;
import android.support.annotation.Nullable;
import android.support.v4.view.ViewCompat;
import android.text.Layout;
import android.transition.AutoTransition;
import android.transition.Transition;
import android.transition.TransitionManager;
import android.util.DisplayMetrics;
import android.util.TypedValue;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewParent;
import android.view.animation.AccelerateDecelerateInterpolator;
import android.view.animation.AccelerateInterpolator;
import android.view.animation.BounceInterpolator;
import android.view.animation.ScaleAnimation;
import android.widget.TextView;
import android.widget.Toast;
import java.util.Arrays;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.atomic.AtomicInteger;

/* JADX WARN: Classes with same name are omitted:
  assets.dex
  assets/audience_network.dex
 */
/* loaded from: assets/assets/audience_network.dex */
public final class OY {
    private static byte[] A00;
    public static final float A01;
    public static final DisplayMetrics A02;
    private static final int A03;
    private static final int A04;
    private static final ConcurrentHashMap<Integer, Integer> A05;
    private static final AtomicInteger A06;

    private static String A0D(int i, int i2, int i3) {
        byte[] bArrCopyOfRange = Arrays.copyOfRange(A00, i, i + i2);
        int i4 = 0;
        char c = 2;
        while (true) {
            switch (c) {
                case 2:
                    bArrCopyOfRange = bArrCopyOfRange;
                    if (i4 >= bArrCopyOfRange.length) {
                        c = 4;
                        break;
                    } else {
                        c = 3;
                        break;
                    }
                case 3:
                    bArrCopyOfRange = bArrCopyOfRange;
                    bArrCopyOfRange[i4] = (byte) ((bArrCopyOfRange[i4] ^ i3) ^ 122);
                    i4++;
                    c = 2;
                    break;
                case 4:
                    return new String(bArrCopyOfRange);
            }
        }
    }

    private static void A0E() {
        A00 = new byte[]{111, 125, 114, 111, 49, 111, 121, 110, 117, 122, 49, 113, 121, 120, 117, 105, 113};
    }

    static {
        A0E();
        A04 = C02794x.A01(-1, 0);
        A03 = C02794x.A01(ViewCompat.MEASURED_STATE_MASK, 115);
        A02 = Resources.getSystem().getDisplayMetrics();
        A01 = A02.density;
        A06 = new AtomicInteger(1);
        A05 = new ConcurrentHashMap<>();
    }

    private OY() {
    }

    public static int A00() {
        int result;
        int i;
        do {
            result = A06.get();
            i = result + 1;
            if (i > 16777215) {
                i = 1;
            }
        } while (!A06.compareAndSet(result, i));
        return result;
    }

    public static int A01(int i) {
        return (int) TypedValue.applyDimension(2, i, A02);
    }

    private static int A02(int i) {
        int iA02 = 0;
        char c = A0b(i) ? (char) 2 : (char) 4;
        while (true) {
            switch (c) {
                case 2:
                    iA02 = C02794x.A02(i, -1, 0.4f);
                    c = 3;
                    break;
                case 3:
                    return iA02;
                case 4:
                    iA02 = C02794x.A02(i, ViewCompat.MEASURED_STATE_MASK, 0.2f);
                    c = 3;
                    break;
            }
        }
    }

    public static int A03(@Nullable Context context) {
        int i = 0;
        char c = context == null ? (char) 2 : (char) 4;
        while (true) {
            switch (c) {
                case 2:
                    i = 0;
                    c = 3;
                    break;
                case 3:
                    return i;
                case 4:
                    context = context;
                    i = context.getResources().getConfiguration().orientation;
                    c = 3;
                    break;
            }
        }
    }

    private static int A04(TextView textView) {
        Layout layout = null;
        int lineCount = 0;
        int lines = 0;
        char c = textView != null ? (char) 2 : (char) 3;
        while (true) {
            switch (c) {
                case 2:
                    textView = textView;
                    if (textView.getLayout() != null) {
                        c = 4;
                        break;
                    } else {
                        c = 3;
                        break;
                    }
                case 3:
                    return lines;
                case 4:
                    textView = textView;
                    layout = textView.getLayout();
                    lineCount = layout.getLineCount();
                    if (lineCount <= 0) {
                        c = 3;
                        break;
                    } else {
                        c = 5;
                        break;
                    }
                case 5:
                    textView = textView;
                    layout = layout;
                    double ellipsisCount = layout.getEllipsisCount(lineCount - 1);
                    lines = (int) Math.ceil(ellipsisCount / (textView.getText().length() - ellipsisCount));
                    c = 3;
                    break;
            }
        }
    }

    public static int A05(TextView textView, int lineHeightTitle) {
        int iA04 = A04(textView);
        int i = 0;
        int lineHeight = textView.getLineHeight();
        int lines = 2;
        while (true) {
            switch (lines) {
                case 2:
                    if (lineHeightTitle <= lineHeight) {
                        lines = 5;
                        break;
                    } else {
                        lines = 3;
                        break;
                    }
                case 3:
                    if (i >= iA04) {
                        lines = 5;
                        break;
                    } else {
                        lines = 4;
                        break;
                    }
                case 4:
                    i++;
                    lineHeightTitle -= lineHeight;
                    lines = 2;
                    break;
                case 5:
                    return i;
            }
        }
    }

    public static Drawable A06(int i, int i2) {
        return A09(i, A02(i), i2);
    }

    private static Drawable A07(int i, int i2) {
        GradientDrawable gradientDrawable = new GradientDrawable();
        gradientDrawable.setColor(i);
        gradientDrawable.setCornerRadius(i2);
        return gradientDrawable;
    }

    private static Drawable A08(int i, int i2) {
        float[] fArr = new float[8];
        Arrays.fill(fArr, i2);
        ShapeDrawable shapeDrawable = new ShapeDrawable(new RoundRectShape(fArr, null, null));
        shapeDrawable.getPaint().setColor(i);
        return shapeDrawable;
    }

    public static Drawable A09(int i, int i2, int i3) {
        Object rippleDrawable = null;
        char c = Build.VERSION.SDK_INT >= 21 ? (char) 2 : (char) 4;
        while (true) {
            switch (c) {
                case 2:
                    rippleDrawable = new RippleDrawable(ColorStateList.valueOf(i2), A07(i, i3), A08(i, i3));
                    c = 3;
                    break;
                case 3:
                    return (Drawable) rippleDrawable;
                case 4:
                    rippleDrawable = A0A(i, i2, i3);
                    c = 3;
                    break;
            }
        }
    }

    private static StateListDrawable A0A(int i, int i2, int i3) {
        return A0B(new int[][]{new int[]{R.attr.state_pressed}, new int[0]}, new int[]{i2, i}, i3);
    }

    private static StateListDrawable A0B(int[][] iArr, int[] iArr2, int i) {
        StateListDrawable stateListDrawable = new StateListDrawable();
        int i2 = 0;
        char c = 2;
        while (true) {
            switch (c) {
                case 2:
                    iArr = iArr;
                    if (i2 >= iArr.length) {
                        c = 4;
                        break;
                    } else {
                        c = 3;
                        break;
                    }
                case 3:
                    iArr = iArr;
                    iArr2 = iArr2;
                    stateListDrawable = stateListDrawable;
                    GradientDrawable gradientDrawable = new GradientDrawable();
                    gradientDrawable.setColor(iArr2[i2]);
                    gradientDrawable.setCornerRadius(i);
                    stateListDrawable.addState(iArr[i2], gradientDrawable);
                    i2++;
                    c = 2;
                    break;
                case 4:
                    return stateListDrawable;
            }
        }
    }

    @Nullable
    private static TextView A0C(ViewGroup viewGroup) {
        View v = null;
        View childAt = null;
        int i = 0;
        char c = 2;
        while (true) {
            switch (c) {
                case 2:
                    viewGroup = viewGroup;
                    if (i >= viewGroup.getChildCount()) {
                        c = '\t';
                        break;
                    } else {
                        c = 3;
                        break;
                    }
                case 3:
                    viewGroup = viewGroup;
                    childAt = viewGroup.getChildAt(i);
                    if (!(childAt instanceof TextView)) {
                        c = 6;
                        break;
                    } else {
                        c = 4;
                        break;
                    }
                case 4:
                    childAt = childAt;
                    v = (TextView) childAt;
                    c = 5;
                    break;
                case 5:
                    return (TextView) v;
                case 6:
                    childAt = childAt;
                    if (!(childAt instanceof ViewGroup)) {
                        c = '\b';
                        break;
                    } else {
                        c = 7;
                        break;
                    }
                case 7:
                    childAt = childAt;
                    A0C((ViewGroup) childAt);
                    c = '\b';
                    break;
                case '\b':
                    i++;
                    c = 2;
                    break;
                case '\t':
                    v = null;
                    c = 5;
                    break;
            }
        }
    }

    public static void A0F(int i, float f, View view) {
        ScaleAnimation scaleAnimation = new ScaleAnimation(1.0f, f, 1.0f, f, 1, 0.5f, 1, 0.5f);
        scaleAnimation.setDuration(i / 2);
        scaleAnimation.setInterpolator(new AccelerateInterpolator());
        scaleAnimation.setRepeatCount(1);
        scaleAnimation.setRepeatMode(2);
        view.startAnimation(scaleAnimation);
    }

    public static void A0G(int i, View view) {
        ScaleAnimation scaleAnimation = new ScaleAnimation(1.0f, 0.8f, 1.0f, 0.8f, 1, 0.5f, 1, 0.5f);
        scaleAnimation.setDuration(i / 3);
        scaleAnimation.setInterpolator(new AccelerateInterpolator());
        ScaleAnimation scaleAnimation2 = new ScaleAnimation(0.8f, 1.0f, 0.8f, 1.0f, 1, 0.5f, 1, 0.5f);
        scaleAnimation2.setDuration((i / 3) * 2);
        scaleAnimation2.setInterpolator(new BounceInterpolator());
        scaleAnimation.setAnimationListener(new OX(view, scaleAnimation2));
        view.startAnimation(scaleAnimation);
    }

    public static void A0H(int i, View view) {
        Integer num = A05.get(Integer.valueOf(i));
        char c = num != null ? (char) 2 : (char) 4;
        while (true) {
            switch (c) {
                case 2:
                    view = view;
                    num = num;
                    view.setId(num.intValue());
                    c = 3;
                    break;
                case 3:
                    return;
                case 4:
                    view = view;
                    A0N(view);
                    c = 3;
                    break;
            }
        }
    }

    public static void A0I(@Nullable View view) {
        A0Q(view, 8);
    }

    public static void A0J(View view) {
        ViewParent parent = view.getParent();
        char c = parent != null ? (char) 2 : (char) 4;
        while (true) {
            switch (c) {
                case 2:
                    parent = parent;
                    if (!(parent instanceof ViewGroup)) {
                        c = 4;
                        break;
                    } else {
                        c = 3;
                        break;
                    }
                case 3:
                    parent = parent;
                    A0U((ViewGroup) parent);
                    c = 4;
                    break;
                case 4:
                    return;
            }
        }
    }

    public static void A0K(View view) {
        ViewParent parent = view.getParent();
        char c = Build.VERSION.SDK_INT > 19 ? (char) 2 : (char) 5;
        while (true) {
            switch (c) {
                case 2:
                    parent = parent;
                    if (!(parent instanceof ViewGroup)) {
                        c = 5;
                        break;
                    } else {
                        c = 3;
                        break;
                    }
                case 3:
                    view = view;
                    parent = parent;
                    AutoTransition autoTransition = new AutoTransition();
                    autoTransition.addListener((Transition.TransitionListener) new OU(view));
                    A0X((ViewGroup) parent, autoTransition, 200);
                    c = 4;
                    break;
                case 4:
                    return;
                case 5:
                    view = view;
                    A0L(view);
                    c = 4;
                    break;
            }
        }
    }

    public static void A0L(@Nullable View view) {
        ViewGroup viewGroup = null;
        char c = view == null ? (char) 2 : (char) 3;
        while (true) {
            switch (c) {
                case 2:
                    return;
                case 3:
                    view = view;
                    viewGroup = (ViewGroup) view.getParent();
                    if (viewGroup == null) {
                        c = 2;
                        break;
                    } else {
                        c = 4;
                        break;
                    }
                case 4:
                    view = view;
                    viewGroup = viewGroup;
                    viewGroup.removeView(view);
                    c = 2;
                    break;
            }
        }
    }

    public static void A0M(View view) {
        GradientDrawable gradientDrawable = new GradientDrawable(GradientDrawable.Orientation.TOP_BOTTOM, new int[]{A04, A03});
        gradientDrawable.setCornerRadius(0.0f);
        A0S(view, gradientDrawable);
    }

    public static void A0N(View view) {
        char c = Build.VERSION.SDK_INT >= 17 ? (char) 2 : (char) 4;
        while (true) {
            switch (c) {
                case 2:
                    view = view;
                    view.setId(View.generateViewId());
                    c = 3;
                    break;
                case 3:
                    return;
                case 4:
                    view = view;
                    view.setId(A00());
                    c = 3;
                    break;
            }
        }
    }

    public static void A0O(@Nullable View view) {
        A0Q(view, 0);
    }

    public static void A0P(View view, int i) {
        char c = Build.VERSION.SDK_INT >= 16 ? (char) 2 : (char) 4;
        while (true) {
            switch (c) {
                case 2:
                    view = view;
                    view.setBackground(new ColorDrawable(i));
                    c = 3;
                    break;
                case 3:
                    return;
                case 4:
                    view = view;
                    view.setBackgroundDrawable(new ColorDrawable(i));
                    c = 3;
                    break;
            }
        }
    }

    public static void A0Q(@Nullable View view, int i) {
        if (view != null) {
            view.setVisibility(i);
        }
    }

    public static void A0R(View view, int i, int i2) {
        A0S(view, A09(i, A02(i), i2));
    }

    public static void A0S(View view, Drawable drawable) {
        char c = Build.VERSION.SDK_INT >= 16 ? (char) 2 : (char) 4;
        while (true) {
            switch (c) {
                case 2:
                    view = view;
                    drawable = drawable;
                    view.setBackground(drawable);
                    c = 3;
                    break;
                case 3:
                    return;
                case 4:
                    view = view;
                    drawable = drawable;
                    view.setBackgroundDrawable(drawable);
                    c = 3;
                    break;
            }
        }
    }

    public static void A0T(View view, View view2, int i, int i2) {
        char c = view2 != null ? (char) 2 : (char) 3;
        while (true) {
            switch (c) {
                case 2:
                    view = view;
                    if (view != null) {
                        c = 4;
                        break;
                    } else {
                        c = 3;
                        break;
                    }
                case 3:
                    return;
                case 4:
                    view = view;
                    view2 = view2;
                    view.post(new OV(view2, view, i, i2));
                    c = 3;
                    break;
            }
        }
    }

    public static void A0U(ViewGroup viewGroup) {
        if (Build.VERSION.SDK_INT > 19) {
            A0V(viewGroup, 200);
        }
    }

    public static void A0V(ViewGroup viewGroup, int i) {
        if (Build.VERSION.SDK_INT > 19) {
            A0X(viewGroup, new AutoTransition(), i);
        }
    }

    public static void A0W(ViewGroup viewGroup, Transition transition) {
        if (Build.VERSION.SDK_INT > 19) {
            A0X(viewGroup, transition, 200);
        }
    }

    @TargetApi(19)
    private static void A0X(ViewGroup viewGroup, Transition transition, int i) {
        transition.setDuration(i);
        transition.setInterpolator(new AccelerateDecelerateInterpolator());
        TransitionManager.beginDelayedTransition(viewGroup, transition);
    }

    public static void A0Y(TextView textView, boolean z, int i) {
        Typeface typefaceCreate = null;
        char c = z ? (char) 2 : (char) 6;
        while (true) {
            switch (c) {
                case 2:
                    if (Build.VERSION.SDK_INT < 21) {
                        c = 5;
                        break;
                    } else {
                        c = 3;
                        break;
                    }
                case 3:
                    typefaceCreate = Typeface.create(A0D(0, 17, 102), 0);
                    c = 4;
                    break;
                case 4:
                    TextView textView2 = textView;
                    textView2.setTypeface(typefaceCreate);
                    textView2.setTextSize(2, i);
                    return;
                case 5:
                    typefaceCreate = Typeface.create(Typeface.SANS_SERIF, 1);
                    c = 4;
                    break;
                case 6:
                    typefaceCreate = Typeface.create(Typeface.SANS_SERIF, 0);
                    c = 4;
                    break;
            }
        }
    }

    public static void A0Z(@Nullable Toast toast, String str, int i, int i2, int i3) {
        TextView textViewA0C = null;
        char c = toast == null ? (char) 2 : (char) 3;
        while (true) {
            switch (c) {
                case 2:
                    return;
                case 3:
                    toast = toast;
                    toast.setGravity(i, i2, i3);
                    textViewA0C = A0C((ViewGroup) toast.getView());
                    if (textViewA0C == null) {
                        c = 2;
                        break;
                    } else {
                        c = 4;
                        break;
                    }
                case 4:
                    str = str;
                    textViewA0C = textViewA0C;
                    textViewA0C.setText(str);
                    textViewA0C.setGravity(17);
                    c = 2;
                    break;
            }
        }
    }

    public static void A0a(View... viewArr) {
        int length = viewArr.length;
        int i = 0;
        char c = 2;
        while (true) {
            switch (c) {
                case 2:
                    if (i >= length) {
                        c = 4;
                        break;
                    } else {
                        c = 3;
                        break;
                    }
                case 3:
                    viewArr = viewArr;
                    A0L(viewArr[i]);
                    i++;
                    c = 2;
                    break;
                case 4:
                    return;
            }
        }
    }

    private static boolean A0b(int i) {
        boolean z = false;
        char c = C02794x.A00(i) < 0.5d ? (char) 2 : (char) 4;
        while (true) {
            switch (c) {
                case 2:
                    z = true;
                    c = 3;
                    break;
                case 3:
                    return z;
                case 4:
                    z = false;
                    c = 3;
                    break;
            }
        }
    }
}
