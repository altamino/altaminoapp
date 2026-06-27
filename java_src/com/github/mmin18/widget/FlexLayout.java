package com.github.mmin18.widget;

import android.R;
import android.content.Context;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.os.Build;
import android.support.v4.internal.view.SupportMenu;
import android.util.AttributeSet;
import android.util.TypedValue;
import android.view.View;
import android.view.ViewGroup;
import com.github.mmin18.flexlayout.R$styleable;
import com.google.android.exoplayer2.text.ttml.TtmlNode;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
import java.util.Stack;

/* loaded from: classes.dex */
public class FlexLayout extends ViewGroup {
    static final Operator ADD;
    static final Operator BL;
    static final Operator BR;
    static final Operator COMMA;
    static final Operator CP_EQ;
    static final Operator CP_GT;
    static final Operator CP_GT_EQ;
    static final Operator CP_LT;
    static final Operator CP_LT_EQ;
    static final Operator CP_NOT_EQ;
    static final Operator DIV;
    static final Operator F_ABS;
    static final Operator F_CEIL;
    static final Operator F_FLOOR;
    static final Operator F_MAX;
    static final Operator F_MIN;
    static final Operator F_MOD;
    static final Operator F_POW;
    static final Operator F_ROUND;
    static final Operator LOG_AND;
    static final Operator LOG_OR;
    static final Operator MUL;
    static final Operator NOT;
    static Operator[] OPS;
    static final Operator PERC;
    static final Operator SUB;
    static final Operator U_DIP;
    static final Operator U_DP;
    static final Operator U_IN;
    static final Operator U_MM;
    static final Operator U_PT;
    static final Operator U_PX;
    static final Operator U_SP;
    static final Operator X_COND1;
    static final Operator X_COND2;
    static final Operator X_FILL_PARENT;
    static final Operator X_MATCH_PARENT;
    static final Operator X_WRAP_CONTENT;
    int myHeight;
    int myHeightMeasureSpec;
    int myWidth;
    int myWidthMeasureSpec;
    static Boolean DEBUG = null;
    static HashMap<String, Integer> EDIT_MODE_ID_MAP = null;
    static int EDIT_MODE_CUR_ID = 251789312;

    static boolean isEditModeId(int i) {
        return (i & SupportMenu.CATEGORY_MASK) == 251789312;
    }

    public FlexLayout(Context context) {
        this(context, null);
    }

    public FlexLayout(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public FlexLayout(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        if (isInEditMode()) {
            DEBUG = Boolean.TRUE;
            if (EDIT_MODE_ID_MAP == null) {
                EDIT_MODE_ID_MAP = new HashMap<>();
            }
        }
    }

    boolean isRtl() {
        return Build.VERSION.SDK_INT >= 17 && getLayoutDirection() == 1;
    }

    public static class LayoutParams extends ViewGroup.LayoutParams {
        static int UNSPECIFIED = -5;
        static final int[] ViewGroup_Layout = {R.attr.layout_width, R.attr.layout_height};
        RPN bottom;
        RPN centerX;
        RPN centerY;
        int editModeId;
        RPN height2;
        RPN left;
        float mBottom;
        float mCenterX;
        float mCenterY;
        float mHeight;
        float mLeft;
        int mMeasuredHeight;
        int mMeasuredWidth;
        float mRight;
        float mTop;
        float mWidth;
        String positionDescription;
        RPN right;
        RPN top;
        RPN width2;

        public LayoutParams(Context context, AttributeSet attributeSet) {
            String attributeValue;
            String strSubstring;
            super(0, 0);
            if (FlexLayout.EDIT_MODE_ID_MAP != null && (attributeValue = attributeSet.getAttributeValue("http://schemas.android.com/apk/res/android", "id")) != null) {
                if (attributeValue.startsWith("@+id/")) {
                    strSubstring = attributeValue.substring(5);
                } else if (attributeValue.startsWith("@id/")) {
                    strSubstring = attributeValue.substring(4);
                } else if (attributeValue.startsWith("@android:id/")) {
                    strSubstring = "android:" + attributeValue.substring(12);
                } else {
                    throw new IllegalArgumentException("unidentified id " + attributeValue);
                }
                this.editModeId = FlexLayout.getEditModeId(strSubstring);
            }
            if (FlexLayout.isDebug(context)) {
                this.positionDescription = attributeSet.getPositionDescription();
            }
            TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, ViewGroup_Layout);
            ((ViewGroup.LayoutParams) this).width = typedArrayObtainStyledAttributes.getLayoutDimension(0, UNSPECIFIED);
            ((ViewGroup.LayoutParams) this).height = typedArrayObtainStyledAttributes.getLayoutDimension(1, UNSPECIFIED);
            typedArrayObtainStyledAttributes.recycle();
            TypedArray typedArrayObtainStyledAttributes2 = context.obtainStyledAttributes(attributeSet, R$styleable.FlexLayout_Layout);
            this.left = RPN.parse(context, typedArrayObtainStyledAttributes2.getString(R$styleable.FlexLayout_Layout_layout_left), "layout_left");
            this.top = RPN.parse(context, typedArrayObtainStyledAttributes2.getString(R$styleable.FlexLayout_Layout_layout_top), "layout_top");
            this.right = RPN.parse(context, typedArrayObtainStyledAttributes2.getString(R$styleable.FlexLayout_Layout_layout_right), "layout_right");
            this.bottom = RPN.parse(context, typedArrayObtainStyledAttributes2.getString(R$styleable.FlexLayout_Layout_layout_bottom), "layout_bottom");
            this.centerX = RPN.parse(context, typedArrayObtainStyledAttributes2.getString(R$styleable.FlexLayout_Layout_layout_centerX), "layout_centerX");
            this.centerY = RPN.parse(context, typedArrayObtainStyledAttributes2.getString(R$styleable.FlexLayout_Layout_layout_centerY), "layout_centerY");
            String string = typedArrayObtainStyledAttributes2.getString(R$styleable.FlexLayout_Layout_layout_width);
            if ("match_parent".equals(string) || "fill_parent".equals(string)) {
                ((ViewGroup.LayoutParams) this).width = -1;
            } else if ("wrap_content".equals(string)) {
                ((ViewGroup.LayoutParams) this).width = -2;
            } else {
                this.width2 = RPN.parse(context, string, "layout_width");
            }
            String string2 = typedArrayObtainStyledAttributes2.getString(R$styleable.FlexLayout_Layout_layout_height);
            if ("match_parent".equals(string2) || "fill_parent".equals(string2)) {
                ((ViewGroup.LayoutParams) this).height = -1;
            } else if ("wrap_content".equals(string2)) {
                ((ViewGroup.LayoutParams) this).height = -2;
            } else {
                this.height2 = RPN.parse(context, string2, "layout_height");
            }
            typedArrayObtainStyledAttributes2.recycle();
            int i = this.left != null ? 1 : 0;
            i = this.right != null ? i + 1 : i;
            i = this.centerX != null ? i + 1 : i;
            i = (this.width2 == null && ((ViewGroup.LayoutParams) this).width == UNSPECIFIED) ? i : i + 1;
            if (i < 1) {
                throw new IllegalArgumentException("no LayoutParams in layout_left|layout_right|layout_centerX|layout_width");
            }
            if (i > 2) {
                if (this.left != null && this.right != null) {
                    this.width2 = null;
                    ((ViewGroup.LayoutParams) this).width = UNSPECIFIED;
                } else if (this.centerX != null && (this.width2 != null || ((ViewGroup.LayoutParams) this).width != UNSPECIFIED)) {
                    this.left = null;
                    this.right = null;
                } else {
                    throw new IllegalArgumentException("too many restriction on LayoutParams");
                }
            }
            int i2 = this.top != null ? 1 : 0;
            i2 = this.bottom != null ? i2 + 1 : i2;
            i2 = this.centerY != null ? i2 + 1 : i2;
            i2 = (this.height2 == null && ((ViewGroup.LayoutParams) this).height == UNSPECIFIED) ? i2 : i2 + 1;
            if (i2 < 1) {
                throw new IllegalArgumentException("no LayoutParams in layout_top|layout_bottom|layout_centerY|layout_height");
            }
            if (i2 > 2) {
                if (this.top != null && this.bottom != null) {
                    this.height2 = null;
                    ((ViewGroup.LayoutParams) this).height = UNSPECIFIED;
                } else {
                    if (this.centerY != null && (this.height2 != null || ((ViewGroup.LayoutParams) this).height != UNSPECIFIED)) {
                        this.top = null;
                        this.bottom = null;
                        return;
                    }
                    throw new IllegalArgumentException("too many restriction on LayoutParams");
                }
            }
        }

        public LayoutParams(int i, int i2) {
            super(i, i2);
        }

        public LayoutParams(ViewGroup.LayoutParams layoutParams) {
            super(layoutParams);
        }

        void reset() {
            this.mLeft = Float.NaN;
            this.mRight = Float.NaN;
            this.mTop = Float.NaN;
            this.mBottom = Float.NaN;
            this.mCenterX = Float.NaN;
            this.mCenterY = Float.NaN;
            this.mWidth = Float.NaN;
            this.mHeight = Float.NaN;
            this.mMeasuredWidth = -1;
            this.mMeasuredHeight = -1;
        }

        float getLeft() {
            float f = this.mLeft;
            if (f == f) {
                return f;
            }
            float f2 = this.mWidth;
            if (f2 == f2) {
                float f3 = this.mRight;
                if (f3 == f3) {
                    return f3 - f2;
                }
                float f4 = this.mCenterX;
                if (f4 == f4) {
                    return f4 - (f2 / 2.0f);
                }
            }
            float f5 = this.mCenterX;
            if (f5 != f5) {
                return Float.NaN;
            }
            float f6 = this.mRight;
            if (f6 == f6) {
                return (f5 * 2.0f) - f6;
            }
            return Float.NaN;
        }

        float getRight() {
            float f = this.mRight;
            if (f == f) {
                return f;
            }
            float f2 = this.mWidth;
            if (f2 == f2) {
                float f3 = this.mLeft;
                if (f3 == f3) {
                    return f3 + f2;
                }
                float f4 = this.mCenterX;
                if (f4 == f4) {
                    return f4 + (f2 / 2.0f);
                }
            }
            float f5 = this.mCenterX;
            if (f5 != f5) {
                return Float.NaN;
            }
            float f6 = this.mLeft;
            if (f6 == f6) {
                return (f5 * 2.0f) - f6;
            }
            return Float.NaN;
        }

        float getTop() {
            float f = this.mTop;
            if (f == f) {
                return f;
            }
            float f2 = this.mHeight;
            if (f2 == f2) {
                float f3 = this.mBottom;
                if (f3 == f3) {
                    return f3 - f2;
                }
                float f4 = this.mCenterY;
                if (f4 == f4) {
                    return f4 - (f2 / 2.0f);
                }
            }
            float f5 = this.mCenterY;
            if (f5 != f5) {
                return Float.NaN;
            }
            float f6 = this.mBottom;
            if (f6 == f6) {
                return (f5 * 2.0f) - f6;
            }
            return Float.NaN;
        }

        float getBottom() {
            float f = this.mBottom;
            if (f == f) {
                return f;
            }
            float f2 = this.mHeight;
            if (f2 == f2) {
                float f3 = this.mTop;
                if (f3 == f3) {
                    return f3 + f2;
                }
                float f4 = this.mCenterY;
                if (f4 == f4) {
                    return f4 + (f2 / 2.0f);
                }
            }
            float f5 = this.mCenterY;
            if (f5 != f5) {
                return Float.NaN;
            }
            float f6 = this.mTop;
            if (f6 == f6) {
                return (f5 * 2.0f) - f6;
            }
            return Float.NaN;
        }

        float getCenterX() {
            float f = this.mCenterX;
            if (f == f) {
                return f;
            }
            float f2 = this.mWidth;
            if (f2 == f2) {
                float f3 = this.mLeft;
                if (f3 == f3) {
                    return f3 + (f2 / 2.0f);
                }
                float f4 = this.mRight;
                if (f4 == f4) {
                    return f4 - (f2 / 2.0f);
                }
            }
            float f5 = this.mLeft;
            if (f5 != f5) {
                return Float.NaN;
            }
            float f6 = this.mRight;
            if (f6 == f6) {
                return (f5 + f6) / 2.0f;
            }
            return Float.NaN;
        }

        float getCenterY() {
            float f = this.mCenterY;
            if (f == f) {
                return f;
            }
            float f2 = this.mHeight;
            if (f2 == f2) {
                float f3 = this.mTop;
                if (f3 == f3) {
                    return f3 + (f2 / 2.0f);
                }
                float f4 = this.mBottom;
                if (f4 == f4) {
                    return f4 - (f2 / 2.0f);
                }
            }
            float f5 = this.mTop;
            if (f5 != f5) {
                return Float.NaN;
            }
            float f6 = this.mBottom;
            if (f6 == f6) {
                return (f5 + f6) / 2.0f;
            }
            return Float.NaN;
        }

        float getWidth() {
            float f = this.mWidth;
            if (f == f) {
                return f;
            }
            float f2 = this.mLeft;
            if (f2 == f2) {
                float f3 = this.mRight;
                if (f3 == f3) {
                    return f3 - f2;
                }
                float f4 = this.mCenterX;
                if (f4 == f4) {
                    return (f4 - f2) * 2.0f;
                }
            }
            float f5 = this.mRight;
            if (f5 != f5) {
                return Float.NaN;
            }
            float f6 = this.mCenterX;
            if (f6 == f6) {
                return (f5 - f6) * 2.0f;
            }
            return Float.NaN;
        }

        float getHeight() {
            float f = this.mHeight;
            if (f == f) {
                return f;
            }
            float f2 = this.mTop;
            if (f2 == f2) {
                float f3 = this.mBottom;
                if (f3 == f3) {
                    return f3 - f2;
                }
                float f4 = this.mCenterY;
                if (f4 == f4) {
                    return (f4 - f2) * 2.0f;
                }
            }
            float f5 = this.mBottom;
            if (f5 != f5) {
                return Float.NaN;
            }
            float f6 = this.mCenterY;
            if (f6 == f6) {
                return (f5 - f6) * 2.0f;
            }
            return Float.NaN;
        }

        boolean isValidH() {
            float f = this.mLeft;
            int i = f == f ? 1 : 0;
            float f2 = this.mRight;
            if (f2 == f2) {
                i++;
            }
            float f3 = this.mWidth;
            if (f3 == f3) {
                i++;
            }
            float f4 = this.mCenterX;
            if (f4 == f4) {
                i++;
            }
            return i >= 2;
        }

        boolean isValidV() {
            float f = this.mTop;
            int i = f == f ? 1 : 0;
            float f2 = this.mBottom;
            if (f2 == f2) {
                i++;
            }
            float f3 = this.mHeight;
            if (f3 == f3) {
                i++;
            }
            float f4 = this.mCenterY;
            if (f4 == f4) {
                i++;
            }
            return i >= 2;
        }

        boolean isValid() {
            return isValidH() && isValidV();
        }
    }

    @Override // android.view.ViewGroup
    public LayoutParams generateLayoutParams(AttributeSet attributeSet) {
        return new LayoutParams(getContext(), attributeSet);
    }

    @Override // android.view.ViewGroup
    protected ViewGroup.LayoutParams generateDefaultLayoutParams() {
        return new LayoutParams(-2, -2);
    }

    @Override // android.view.ViewGroup
    protected boolean checkLayoutParams(ViewGroup.LayoutParams layoutParams) {
        return layoutParams instanceof LayoutParams;
    }

    @Override // android.view.ViewGroup
    protected ViewGroup.LayoutParams generateLayoutParams(ViewGroup.LayoutParams layoutParams) {
        return new LayoutParams(layoutParams);
    }

    /* JADX WARN: Code restructure failed: missing block: B:215:0x0326, code lost:
    
        if (r16 != false) goto L227;
     */
    /* JADX WARN: Code restructure failed: missing block: B:216:0x0328, code lost:
    
        r1 = new java.lang.StringBuilder();
        r2 = 0;
     */
    /* JADX WARN: Code restructure failed: missing block: B:217:0x032e, code lost:
    
        if (r2 >= r7) goto L271;
     */
    /* JADX WARN: Code restructure failed: missing block: B:219:0x033e, code lost:
    
        if (((com.github.mmin18.widget.FlexLayout.LayoutParams) getChildAt(r2).getLayoutParams()).isValid() != false) goto L273;
     */
    /* JADX WARN: Code restructure failed: missing block: B:221:0x0344, code lost:
    
        if (r1.length() <= 0) goto L223;
     */
    /* JADX WARN: Code restructure failed: missing block: B:222:0x0346, code lost:
    
        r1.append(',');
     */
    /* JADX WARN: Code restructure failed: missing block: B:223:0x034b, code lost:
    
        r1.append(r2);
     */
    /* JADX WARN: Code restructure failed: missing block: B:224:0x034e, code lost:
    
        r2 = r2 + 1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:226:0x0368, code lost:
    
        throw new java.lang.IllegalStateException("incomplete layout, circular dependency? (index=" + ((java.lang.Object) r1) + ")");
     */
    /* JADX WARN: Code restructure failed: missing block: B:227:0x0369, code lost:
    
        r2 = 0;
     */
    /* JADX WARN: Code restructure failed: missing block: B:228:0x036a, code lost:
    
        if (r2 >= r7) goto L274;
     */
    /* JADX WARN: Code restructure failed: missing block: B:229:0x036c, code lost:
    
        r3 = getChildAt(r2);
        r4 = (com.github.mmin18.widget.FlexLayout.LayoutParams) r3.getLayoutParams();
     */
    /* JADX WARN: Code restructure failed: missing block: B:230:0x0378, code lost:
    
        if (r4.width2 == null) goto L234;
     */
    /* JADX WARN: Code restructure failed: missing block: B:231:0x037a, code lost:
    
        r5 = r4.mWidth;
     */
    /* JADX WARN: Code restructure failed: missing block: B:232:0x037e, code lost:
    
        if (r5 != r5) goto L234;
     */
    /* JADX WARN: Code restructure failed: missing block: B:233:0x0380, code lost:
    
        r6 = 1073741824;
        r5 = android.view.View.MeasureSpec.makeMeasureSpec(java.lang.Math.round(r5), 1073741824);
     */
    /* JADX WARN: Code restructure failed: missing block: B:234:0x038b, code lost:
    
        r6 = 1073741824;
        r5 = ((android.view.ViewGroup.LayoutParams) r4).width;
     */
    /* JADX WARN: Code restructure failed: missing block: B:235:0x0390, code lost:
    
        if (r5 != (-2)) goto L237;
     */
    /* JADX WARN: Code restructure failed: missing block: B:236:0x0392, code lost:
    
        r5 = android.view.View.MeasureSpec.makeMeasureSpec(r21.myWidth, Integer.MIN_VALUE);
     */
    /* JADX WARN: Code restructure failed: missing block: B:238:0x039c, code lost:
    
        if (r5 != (-1)) goto L240;
     */
    /* JADX WARN: Code restructure failed: missing block: B:239:0x039e, code lost:
    
        r5 = android.view.View.MeasureSpec.makeMeasureSpec(r21.myWidth, 1073741824);
     */
    /* JADX WARN: Code restructure failed: missing block: B:240:0x03a5, code lost:
    
        r5 = android.view.View.MeasureSpec.makeMeasureSpec(java.lang.Math.round(r4.getWidth()), 1073741824);
     */
    /* JADX WARN: Code restructure failed: missing block: B:242:0x03b3, code lost:
    
        if (r4.height2 == null) goto L246;
     */
    /* JADX WARN: Code restructure failed: missing block: B:243:0x03b5, code lost:
    
        r8 = r4.mHeight;
     */
    /* JADX WARN: Code restructure failed: missing block: B:244:0x03b9, code lost:
    
        if (r8 != r8) goto L246;
     */
    /* JADX WARN: Code restructure failed: missing block: B:245:0x03bb, code lost:
    
        r4 = android.view.View.MeasureSpec.makeMeasureSpec(java.lang.Math.round(r8), r6);
     */
    /* JADX WARN: Code restructure failed: missing block: B:246:0x03c7, code lost:
    
        r8 = ((android.view.ViewGroup.LayoutParams) r4).height;
     */
    /* JADX WARN: Code restructure failed: missing block: B:247:0x03ca, code lost:
    
        if (r8 != (-2)) goto L250;
     */
    /* JADX WARN: Code restructure failed: missing block: B:248:0x03cc, code lost:
    
        r4 = android.view.View.MeasureSpec.makeMeasureSpec(r21.myHeight, Integer.MIN_VALUE);
     */
    /* JADX WARN: Code restructure failed: missing block: B:251:0x03d9, code lost:
    
        if (r8 != (-1)) goto L253;
     */
    /* JADX WARN: Code restructure failed: missing block: B:252:0x03db, code lost:
    
        r4 = android.view.View.MeasureSpec.makeMeasureSpec(r21.myHeight, r6);
     */
    /* JADX WARN: Code restructure failed: missing block: B:253:0x03e2, code lost:
    
        r4 = android.view.View.MeasureSpec.makeMeasureSpec(java.lang.Math.round(r4.getHeight()), r6);
     */
    /* JADX WARN: Code restructure failed: missing block: B:254:0x03ee, code lost:
    
        r3.measure(r5, r4);
        r2 = r2 + 1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:255:0x03f5, code lost:
    
        setMeasuredDimension((r21.myWidth + r1) + r20, (r21.myHeight + r19) + r18);
     */
    /* JADX WARN: Code restructure failed: missing block: B:256:0x0403, code lost:
    
        return;
     */
    @Override // android.view.View
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    protected void onMeasure(int r22, int r23) throws android.content.res.Resources.NotFoundException {
        /*
            Method dump skipped, instructions count: 1028
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.github.mmin18.widget.FlexLayout.onMeasure(int, int):void");
    }

    static boolean measureChild(FlexLayout flexLayout, View view, LayoutParams layoutParams, int i, int i2) {
        int childMeasureSpec;
        int childMeasureSpec2;
        if (i == LayoutParams.UNSPECIFIED) {
            float width = layoutParams.getWidth();
            if (width == width) {
                i = Math.round(width);
            } else {
                if (!onlyRefSelf(layoutParams.width2) || !onlyRefSelf(layoutParams.left) || !onlyRefSelf(layoutParams.right) || !onlyRefSelf(layoutParams.centerX)) {
                    return false;
                }
                i = -2;
            }
        }
        if (i2 == LayoutParams.UNSPECIFIED) {
            float height = layoutParams.getHeight();
            if (height == height) {
                i2 = Math.round(height);
            } else {
                if (!onlyRefSelf(layoutParams.height2) || !onlyRefSelf(layoutParams.top) || !onlyRefSelf(layoutParams.bottom) || !onlyRefSelf(layoutParams.centerY)) {
                    return false;
                }
                i2 = -2;
            }
        }
        int i3 = flexLayout.myWidth;
        if (i3 == -1) {
            childMeasureSpec = ViewGroup.getChildMeasureSpec(flexLayout.myWidthMeasureSpec, flexLayout.getPaddingLeft() + flexLayout.getPaddingRight(), i);
        } else {
            childMeasureSpec = ViewGroup.getChildMeasureSpec(View.MeasureSpec.makeMeasureSpec(i3, 1073741824), 0, i);
        }
        int i4 = flexLayout.myHeight;
        if (i4 == -1) {
            childMeasureSpec2 = ViewGroup.getChildMeasureSpec(flexLayout.myHeightMeasureSpec, flexLayout.getPaddingTop() + flexLayout.getPaddingBottom(), i2);
        } else {
            childMeasureSpec2 = ViewGroup.getChildMeasureSpec(View.MeasureSpec.makeMeasureSpec(i4, 1073741824), 0, i2);
        }
        view.measure(childMeasureSpec, childMeasureSpec2);
        layoutParams.mMeasuredWidth = view.getMeasuredWidth();
        layoutParams.mMeasuredHeight = view.getMeasuredHeight();
        return true;
    }

    static boolean onlyRefSelf(RPN rpn) {
        if (rpn == null) {
            return true;
        }
        Iterator it = rpn.list.iterator();
        while (it.hasNext()) {
            Object next = it.next();
            if ((next instanceof Ref) && ((Ref) next).target != 0) {
                return false;
            }
        }
        return true;
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void onLayout(boolean z, int i, int i2, int i3, int i4) {
        int paddingLeft = getPaddingLeft();
        int paddingTop = getPaddingTop();
        int childCount = getChildCount();
        for (int i5 = 0; i5 < childCount; i5++) {
            View childAt = getChildAt(i5);
            if (childAt.getVisibility() != 8) {
                LayoutParams layoutParams = (LayoutParams) childAt.getLayoutParams();
                if (isRtl()) {
                    int i6 = (i3 - i) - paddingLeft;
                    childAt.layout(i6 - Math.round(layoutParams.getRight()), Math.round(layoutParams.getTop()) + paddingTop, i6 - Math.round(layoutParams.getLeft()), Math.round(layoutParams.getBottom()) + paddingTop);
                } else {
                    childAt.layout(Math.round(layoutParams.getLeft()) + paddingLeft, Math.round(layoutParams.getTop()) + paddingTop, Math.round(layoutParams.getRight()) + paddingLeft, Math.round(layoutParams.getBottom()) + paddingTop);
                }
            }
        }
    }

    static abstract class Operator {
        public static final int ASSOC_LEFT = 1;
        public static final int ASSOC_RIGHT = 2;
        public static final int FLAG_FUNCTION = 1;
        public final int argc;
        public final int assoc;
        public final int flag;
        public final String op;
        public final int prec;

        public abstract float eval(FlexLayout flexLayout, int i, int i2, float f, float f2);

        public Operator(String str, int i, int i2, int i3, int i4) {
            this.op = str;
            this.prec = i;
            this.assoc = i2;
            this.argc = i3;
            this.flag = i4;
        }

        public String toString() {
            return this.op;
        }
    }

    static {
        int i = 2;
        MUL = new Operator("*", 8, 1, i, 0) { // from class: com.github.mmin18.widget.FlexLayout.1
            @Override // com.github.mmin18.widget.FlexLayout.Operator
            public float eval(FlexLayout flexLayout, int i2, int i3, float f, float f2) {
                return f * f2;
            }
        };
        int i2 = 1;
        int i3 = 2;
        int i4 = 0;
        DIV = new Operator("/", 8, i2, i3, i4) { // from class: com.github.mmin18.widget.FlexLayout.2
            @Override // com.github.mmin18.widget.FlexLayout.Operator
            public float eval(FlexLayout flexLayout, int i5, int i6, float f, float f2) {
                return f / f2;
            }
        };
        int i5 = 0;
        PERC = new Operator("%", 8, i, 1, i5) { // from class: com.github.mmin18.widget.FlexLayout.3
            @Override // com.github.mmin18.widget.FlexLayout.Operator
            public float eval(FlexLayout flexLayout, int i6, int i7, float f, float f2) {
                int i8;
                if (i7 == 0) {
                    i8 = flexLayout.myWidth;
                    if (i8 == -1) {
                        return Float.NaN;
                    }
                } else {
                    i8 = flexLayout.myHeight;
                    if (i8 == -1) {
                        return Float.NaN;
                    }
                }
                return i8 * f * 0.01f;
            }
        };
        ADD = new Operator("+", 7, i2, i3, i4) { // from class: com.github.mmin18.widget.FlexLayout.4
            @Override // com.github.mmin18.widget.FlexLayout.Operator
            public float eval(FlexLayout flexLayout, int i6, int i7, float f, float f2) {
                return f + f2;
            }
        };
        int i6 = 1;
        int i7 = 2;
        SUB = new Operator("-", 7, i6, i7, i5) { // from class: com.github.mmin18.widget.FlexLayout.5
            @Override // com.github.mmin18.widget.FlexLayout.Operator
            public float eval(FlexLayout flexLayout, int i8, int i9, float f, float f2) {
                return f - f2;
            }
        };
        NOT = new Operator("!", 9, 2, 1, i4) { // from class: com.github.mmin18.widget.FlexLayout.6
            @Override // com.github.mmin18.widget.FlexLayout.Operator
            public float eval(FlexLayout flexLayout, int i8, int i9, float f, float f2) {
                if (f == f) {
                    return f == 0.0f ? 1.0f : 0.0f;
                }
                return Float.NaN;
            }
        };
        int i8 = 6;
        CP_LT = new Operator("<", i8, i6, i7, i5) { // from class: com.github.mmin18.widget.FlexLayout.7
            @Override // com.github.mmin18.widget.FlexLayout.Operator
            public float eval(FlexLayout flexLayout, int i9, int i10, float f, float f2) {
                if (f == f && f2 == f2) {
                    return f < f2 ? 1.0f : 0.0f;
                }
                return Float.NaN;
            }
        };
        int i9 = 6;
        int i10 = 1;
        int i11 = 2;
        CP_LT_EQ = new Operator("<=", i9, i10, i11, i4) { // from class: com.github.mmin18.widget.FlexLayout.8
            @Override // com.github.mmin18.widget.FlexLayout.Operator
            public float eval(FlexLayout flexLayout, int i12, int i13, float f, float f2) {
                if (f == f && f2 == f2) {
                    return f <= f2 ? 1.0f : 0.0f;
                }
                return Float.NaN;
            }
        };
        CP_GT = new Operator(">", i8, i6, i7, i5) { // from class: com.github.mmin18.widget.FlexLayout.9
            @Override // com.github.mmin18.widget.FlexLayout.Operator
            public float eval(FlexLayout flexLayout, int i12, int i13, float f, float f2) {
                if (f == f && f2 == f2) {
                    return f > f2 ? 1.0f : 0.0f;
                }
                return Float.NaN;
            }
        };
        CP_GT_EQ = new Operator(">=", i9, i10, i11, i4) { // from class: com.github.mmin18.widget.FlexLayout.10
            @Override // com.github.mmin18.widget.FlexLayout.Operator
            public float eval(FlexLayout flexLayout, int i12, int i13, float f, float f2) {
                if (f == f && f2 == f2) {
                    return f >= f2 ? 1.0f : 0.0f;
                }
                return Float.NaN;
            }
        };
        CP_EQ = new Operator("==", 5, i6, i7, i5) { // from class: com.github.mmin18.widget.FlexLayout.11
            @Override // com.github.mmin18.widget.FlexLayout.Operator
            public float eval(FlexLayout flexLayout, int i12, int i13, float f, float f2) {
                if (f == f && f2 == f2) {
                    return f == f2 ? 1.0f : 0.0f;
                }
                return Float.NaN;
            }
        };
        CP_NOT_EQ = new Operator("!=", 5, i10, i11, i4) { // from class: com.github.mmin18.widget.FlexLayout.12
            @Override // com.github.mmin18.widget.FlexLayout.Operator
            public float eval(FlexLayout flexLayout, int i12, int i13, float f, float f2) {
                if (f == f && f2 == f2) {
                    return f != f2 ? 1.0f : 0.0f;
                }
                return Float.NaN;
            }
        };
        LOG_AND = new Operator("&&", 4, i6, i7, i5) { // from class: com.github.mmin18.widget.FlexLayout.13
            @Override // com.github.mmin18.widget.FlexLayout.Operator
            public float eval(FlexLayout flexLayout, int i12, int i13, float f, float f2) {
                if (f == f && f2 == f2) {
                    return (f == 0.0f || f2 == 0.0f) ? 0.0f : 1.0f;
                }
                return Float.NaN;
            }
        };
        LOG_OR = new Operator("||", 3, i10, i11, i4) { // from class: com.github.mmin18.widget.FlexLayout.14
            @Override // com.github.mmin18.widget.FlexLayout.Operator
            public float eval(FlexLayout flexLayout, int i12, int i13, float f, float f2) {
                if (f == f && f2 == f2) {
                    return (f == 0.0f && f2 == 0.0f) ? 0.0f : 1.0f;
                }
                return Float.NaN;
            }
        };
        int i12 = 0;
        int i13 = 0;
        BL = new Operator("(", i12, 0, i13, i5) { // from class: com.github.mmin18.widget.FlexLayout.15
            @Override // com.github.mmin18.widget.FlexLayout.Operator
            public float eval(FlexLayout flexLayout, int i14, int i15, float f, float f2) {
                return Float.NaN;
            }
        };
        BR = new Operator(")", 0, 0, 0, i4) { // from class: com.github.mmin18.widget.FlexLayout.16
            @Override // com.github.mmin18.widget.FlexLayout.Operator
            public float eval(FlexLayout flexLayout, int i14, int i15, float f, float f2) {
                return Float.NaN;
            }
        };
        COMMA = new Operator(",", i12, 1, i13, i5) { // from class: com.github.mmin18.widget.FlexLayout.17
            @Override // com.github.mmin18.widget.FlexLayout.Operator
            public float eval(FlexLayout flexLayout, int i14, int i15, float f, float f2) {
                return Float.NaN;
            }
        };
        int i14 = 10;
        int i15 = 2;
        int i16 = 1;
        U_SP = new Operator("sp", i14, i15, i16, i4) { // from class: com.github.mmin18.widget.FlexLayout.18
            @Override // com.github.mmin18.widget.FlexLayout.Operator
            public float eval(FlexLayout flexLayout, int i17, int i18, float f, float f2) {
                return TypedValue.applyDimension(2, f, flexLayout.getResources().getDisplayMetrics());
            }
        };
        int i17 = 10;
        int i18 = 2;
        int i19 = 1;
        U_DP = new Operator("dp", i17, i18, i19, i5) { // from class: com.github.mmin18.widget.FlexLayout.19
            @Override // com.github.mmin18.widget.FlexLayout.Operator
            public float eval(FlexLayout flexLayout, int i20, int i21, float f, float f2) {
                return TypedValue.applyDimension(1, f, flexLayout.getResources().getDisplayMetrics());
            }
        };
        U_DIP = new Operator("dip", i14, i15, i16, i4) { // from class: com.github.mmin18.widget.FlexLayout.20
            @Override // com.github.mmin18.widget.FlexLayout.Operator
            public float eval(FlexLayout flexLayout, int i20, int i21, float f, float f2) {
                return TypedValue.applyDimension(1, f, flexLayout.getResources().getDisplayMetrics());
            }
        };
        U_PX = new Operator("px", i17, i18, i19, i5) { // from class: com.github.mmin18.widget.FlexLayout.21
            @Override // com.github.mmin18.widget.FlexLayout.Operator
            public float eval(FlexLayout flexLayout, int i20, int i21, float f, float f2) {
                return TypedValue.applyDimension(0, f, flexLayout.getResources().getDisplayMetrics());
            }
        };
        U_PT = new Operator("pt", i14, i15, i16, i4) { // from class: com.github.mmin18.widget.FlexLayout.22
            @Override // com.github.mmin18.widget.FlexLayout.Operator
            public float eval(FlexLayout flexLayout, int i20, int i21, float f, float f2) {
                return TypedValue.applyDimension(3, f, flexLayout.getResources().getDisplayMetrics());
            }
        };
        U_MM = new Operator("mm", i17, i18, i19, i5) { // from class: com.github.mmin18.widget.FlexLayout.23
            @Override // com.github.mmin18.widget.FlexLayout.Operator
            public float eval(FlexLayout flexLayout, int i20, int i21, float f, float f2) {
                return TypedValue.applyDimension(5, f, flexLayout.getResources().getDisplayMetrics());
            }
        };
        U_IN = new Operator("in", i14, i15, i16, i4) { // from class: com.github.mmin18.widget.FlexLayout.24
            @Override // com.github.mmin18.widget.FlexLayout.Operator
            public float eval(FlexLayout flexLayout, int i20, int i21, float f, float f2) {
                return TypedValue.applyDimension(4, f, flexLayout.getResources().getDisplayMetrics());
            }
        };
        int i20 = 0;
        int i21 = 0;
        int i22 = 1;
        F_MAX = new Operator("max", i20, i21, 2, i22) { // from class: com.github.mmin18.widget.FlexLayout.25
            @Override // com.github.mmin18.widget.FlexLayout.Operator
            public float eval(FlexLayout flexLayout, int i23, int i24, float f, float f2) {
                return Math.max(f, f2);
            }
        };
        int i23 = 0;
        int i24 = 0;
        int i25 = 1;
        F_MIN = new Operator("min", i23, i24, 2, i25) { // from class: com.github.mmin18.widget.FlexLayout.26
            @Override // com.github.mmin18.widget.FlexLayout.Operator
            public float eval(FlexLayout flexLayout, int i26, int i27, float f, float f2) {
                return Math.min(f, f2);
            }
        };
        int i26 = 1;
        F_ROUND = new Operator("round", i20, i21, i26, i22) { // from class: com.github.mmin18.widget.FlexLayout.27
            @Override // com.github.mmin18.widget.FlexLayout.Operator
            public float eval(FlexLayout flexLayout, int i27, int i28, float f, float f2) {
                return Math.round(f);
            }
        };
        int i27 = 1;
        F_CEIL = new Operator("ceil", i23, i24, i27, i25) { // from class: com.github.mmin18.widget.FlexLayout.28
            @Override // com.github.mmin18.widget.FlexLayout.Operator
            public float eval(FlexLayout flexLayout, int i28, int i29, float f, float f2) {
                return (float) Math.ceil(f);
            }
        };
        F_FLOOR = new Operator("floor", i20, i21, i26, i22) { // from class: com.github.mmin18.widget.FlexLayout.29
            @Override // com.github.mmin18.widget.FlexLayout.Operator
            public float eval(FlexLayout flexLayout, int i28, int i29, float f, float f2) {
                return (float) Math.floor(f);
            }
        };
        F_ABS = new Operator("abs", i23, i24, i27, i25) { // from class: com.github.mmin18.widget.FlexLayout.30
            @Override // com.github.mmin18.widget.FlexLayout.Operator
            public float eval(FlexLayout flexLayout, int i28, int i29, float f, float f2) {
                return Math.abs(f);
            }
        };
        F_MOD = new Operator("mod", i20, i21, 2, i22) { // from class: com.github.mmin18.widget.FlexLayout.31
            @Override // com.github.mmin18.widget.FlexLayout.Operator
            public float eval(FlexLayout flexLayout, int i28, int i29, float f, float f2) {
                return f % f2;
            }
        };
        F_POW = new Operator("pow", i23, i24, 2, i25) { // from class: com.github.mmin18.widget.FlexLayout.32
            @Override // com.github.mmin18.widget.FlexLayout.Operator
            public float eval(FlexLayout flexLayout, int i28, int i29, float f, float f2) {
                return (float) Math.pow(f, f2);
            }
        };
        int i28 = 0;
        X_COND1 = new Operator("?", 2, 2, 1, i28) { // from class: com.github.mmin18.widget.FlexLayout.33
            @Override // com.github.mmin18.widget.FlexLayout.Operator
            public float eval(FlexLayout flexLayout, int i29, int i30, float f, float f2) {
                return f;
            }
        };
        int i29 = 0;
        X_COND2 = new Operator(":", 1, 1, 3, i29) { // from class: com.github.mmin18.widget.FlexLayout.34
            @Override // com.github.mmin18.widget.FlexLayout.Operator
            public float eval(FlexLayout flexLayout, int i30, int i31, float f, float f2) {
                return Float.NaN;
            }
        };
        int i30 = 0;
        int i31 = 0;
        int i32 = 0;
        X_MATCH_PARENT = new Operator("match_parent", i30, i31, i32, i28) { // from class: com.github.mmin18.widget.FlexLayout.35
            @Override // com.github.mmin18.widget.FlexLayout.Operator
            public float eval(FlexLayout flexLayout, int i33, int i34, float f, float f2) {
                if (i34 == 0) {
                    int i35 = flexLayout.myWidth;
                    if (i35 != -1) {
                        return i35;
                    }
                    return Float.NaN;
                }
                int i36 = flexLayout.myHeight;
                if (i36 != -1) {
                    return i36;
                }
                return Float.NaN;
            }
        };
        X_FILL_PARENT = new Operator("fill_parent", 0, 0, 0, i29) { // from class: com.github.mmin18.widget.FlexLayout.36
            @Override // com.github.mmin18.widget.FlexLayout.Operator
            public float eval(FlexLayout flexLayout, int i33, int i34, float f, float f2) {
                return FlexLayout.X_MATCH_PARENT.eval(flexLayout, i33, i34, f, f2);
            }
        };
        X_WRAP_CONTENT = new Operator("wrap_content", i30, i31, i32, i28) { // from class: com.github.mmin18.widget.FlexLayout.37
            @Override // com.github.mmin18.widget.FlexLayout.Operator
            public float eval(FlexLayout flexLayout, int i33, int i34, float f, float f2) {
                View childAt = flexLayout.getChildAt(i33);
                LayoutParams layoutParams = (LayoutParams) childAt.getLayoutParams();
                if (i34 == 0) {
                    if (layoutParams.mMeasuredWidth == -1) {
                        FlexLayout.measureChild(flexLayout, childAt, layoutParams, -2, ((ViewGroup.LayoutParams) layoutParams).height);
                        layoutParams.mMeasuredHeight = -1;
                    }
                    int i35 = layoutParams.mMeasuredWidth;
                    if (i35 == -1) {
                        return Float.NaN;
                    }
                    return i35;
                }
                if (layoutParams.mMeasuredHeight == -1) {
                    FlexLayout.measureChild(flexLayout, childAt, layoutParams, ((ViewGroup.LayoutParams) layoutParams).width, -2);
                    layoutParams.mMeasuredWidth = -1;
                }
                int i36 = layoutParams.mMeasuredHeight;
                if (i36 == -1) {
                    return Float.NaN;
                }
                return i36;
            }
        };
        OPS = new Operator[]{ADD, SUB, DIV, MUL, PERC, NOT, CP_LT, CP_LT_EQ, CP_GT, CP_GT_EQ, CP_EQ, CP_NOT_EQ, LOG_AND, LOG_OR, BL, BR, COMMA, U_SP, U_DP, U_DIP, U_PX, U_PT, U_MM, U_IN, F_MAX, F_MIN, F_ROUND, F_CEIL, F_FLOOR, F_ABS, F_MOD, F_POW, X_COND1, X_COND2, X_MATCH_PARENT, X_FILL_PARENT, X_WRAP_CONTENT};
    }

    static class Ref {
        public static final int PROP_BOTTOM = 3;
        public static final int PROP_CENTER_X = 4;
        public static final int PROP_CENTER_Y = 5;
        public static final int PROP_GONE = 11;
        public static final int PROP_HEIGHT = 7;
        public static final int PROP_LEFT = 0;
        public static final int PROP_RIGHT = 2;
        public static final int PROP_TAG = 15;
        public static final int PROP_TOP = 1;
        public static final int PROP_VISIBLE = 10;
        public static final int PROP_WIDTH = 6;
        public static final int TARGET_NEXT = 2;
        public static final int TARGET_PARENT = 3;
        public static final int TARGET_PREV = 1;
        public static final int TARGET_SCREEN = 4;
        public static final int TARGET_THIS = 0;
        public final int property;
        public final int target;

        public Ref(int i, int i2) {
            this.target = i;
            this.property = i2;
        }

        public String toString() {
            StringBuilder sb = new StringBuilder();
            int i = this.target;
            if (i == 0) {
                sb.append("this");
            } else if (i == 1) {
                sb.append("prev");
            } else if (i == 2) {
                sb.append("next");
            } else if (i == 3) {
                sb.append("parent");
            } else if (i == 4) {
                sb.append("screen");
            } else {
                sb.append("?");
            }
            sb.append('.');
            int i2 = this.property;
            if (i2 == 10) {
                sb.append("visible");
            } else if (i2 == 11) {
                sb.append("gone");
            } else if (i2 != 15) {
                switch (i2) {
                    case 0:
                        sb.append(TtmlNode.LEFT);
                        break;
                    case 1:
                        sb.append("top");
                        break;
                    case 2:
                        sb.append(TtmlNode.RIGHT);
                        break;
                    case 3:
                        sb.append("bottom");
                        break;
                    case 4:
                        sb.append("centerX");
                        break;
                    case 5:
                        sb.append("centerY");
                        break;
                    case 6:
                        sb.append("width");
                        break;
                    case 7:
                        sb.append("height");
                        break;
                    default:
                        sb.append("?");
                        break;
                }
            } else {
                sb.append("tag");
            }
            return sb.toString();
        }

        /* JADX WARN: Code restructure failed: missing block: B:35:0x005f, code lost:
        
            if (r4 == 5) goto L36;
         */
        /* JADX WARN: Removed duplicated region for block: B:95:0x01a2 A[RETURN] */
        /* JADX WARN: Removed duplicated region for block: B:96:0x01a3  */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public float eval(com.github.mmin18.widget.FlexLayout r18, int r19, int r20, java.lang.String r21) throws android.content.res.Resources.NotFoundException {
            /*
                Method dump skipped, instructions count: 594
                To view this dump add '--comments-level debug' option
            */
            throw new UnsupportedOperationException("Method not decompiled: com.github.mmin18.widget.FlexLayout.Ref.eval(com.github.mmin18.widget.FlexLayout, int, int, java.lang.String):float");
        }
    }

    static class TokenReader {
        private char[] chars;
        private String from;
        private int i = 0;
        private int n;
        private String orig;

        public TokenReader(String str, String str2) {
            this.orig = str;
            this.chars = str.toCharArray();
            this.n = str.length();
            this.from = str2;
        }

        /* JADX WARN: Code restructure failed: missing block: B:105:0x0177, code lost:
        
            return java.lang.Float.valueOf(parseDimen(r18, r5, r7));
         */
        /* JADX WARN: Code restructure failed: missing block: B:29:0x0060, code lost:
        
            r1 = r17.i;
         */
        /* JADX WARN: Code restructure failed: missing block: B:30:0x0067, code lost:
        
            if ((r1 + 1) >= r17.n) goto L32;
         */
        /* JADX WARN: Code restructure failed: missing block: B:31:0x0069, code lost:
        
            r1 = r17.chars[r1 + 1];
         */
        /* JADX WARN: Code restructure failed: missing block: B:32:0x006f, code lost:
        
            r1 = 0;
         */
        /* JADX WARN: Code restructure failed: missing block: B:34:0x0072, code lost:
        
            if (r1 != '=') goto L50;
         */
        /* JADX WARN: Code restructure failed: missing block: B:35:0x0074, code lost:
        
            if (r9 != '=') goto L38;
         */
        /* JADX WARN: Code restructure failed: missing block: B:36:0x0076, code lost:
        
            r17.i += 2;
         */
        /* JADX WARN: Code restructure failed: missing block: B:37:0x007e, code lost:
        
            return com.github.mmin18.widget.FlexLayout.CP_EQ;
         */
        /* JADX WARN: Code restructure failed: missing block: B:39:0x0081, code lost:
        
            if (r9 != '!') goto L42;
         */
        /* JADX WARN: Code restructure failed: missing block: B:40:0x0083, code lost:
        
            r17.i += 2;
         */
        /* JADX WARN: Code restructure failed: missing block: B:41:0x008b, code lost:
        
            return com.github.mmin18.widget.FlexLayout.CP_NOT_EQ;
         */
        /* JADX WARN: Code restructure failed: missing block: B:43:0x008e, code lost:
        
            if (r9 != '<') goto L46;
         */
        /* JADX WARN: Code restructure failed: missing block: B:44:0x0090, code lost:
        
            r17.i += 2;
         */
        /* JADX WARN: Code restructure failed: missing block: B:45:0x0098, code lost:
        
            return com.github.mmin18.widget.FlexLayout.CP_LT_EQ;
         */
        /* JADX WARN: Code restructure failed: missing block: B:47:0x009b, code lost:
        
            if (r9 != '>') goto L62;
         */
        /* JADX WARN: Code restructure failed: missing block: B:48:0x009d, code lost:
        
            r17.i += 2;
         */
        /* JADX WARN: Code restructure failed: missing block: B:49:0x00a5, code lost:
        
            return com.github.mmin18.widget.FlexLayout.CP_GT_EQ;
         */
        /* JADX WARN: Code restructure failed: missing block: B:51:0x00a8, code lost:
        
            if (r9 != '&') goto L56;
         */
        /* JADX WARN: Code restructure failed: missing block: B:53:0x00ac, code lost:
        
            if (r1 != '&') goto L56;
         */
        /* JADX WARN: Code restructure failed: missing block: B:54:0x00ae, code lost:
        
            r17.i += 2;
         */
        /* JADX WARN: Code restructure failed: missing block: B:55:0x00b6, code lost:
        
            return com.github.mmin18.widget.FlexLayout.LOG_AND;
         */
        /* JADX WARN: Code restructure failed: missing block: B:57:0x00b9, code lost:
        
            if (r9 != '|') goto L62;
         */
        /* JADX WARN: Code restructure failed: missing block: B:59:0x00bd, code lost:
        
            if (r1 != '|') goto L62;
         */
        /* JADX WARN: Code restructure failed: missing block: B:60:0x00bf, code lost:
        
            r17.i += 2;
         */
        /* JADX WARN: Code restructure failed: missing block: B:61:0x00c7, code lost:
        
            return com.github.mmin18.widget.FlexLayout.LOG_OR;
         */
        /* JADX WARN: Code restructure failed: missing block: B:62:0x00c8, code lost:
        
            r1 = com.github.mmin18.widget.FlexLayout.OPS;
            r2 = r1.length;
            r3 = 0;
         */
        /* JADX WARN: Code restructure failed: missing block: B:63:0x00cc, code lost:
        
            if (r3 >= r2) goto L151;
         */
        /* JADX WARN: Code restructure failed: missing block: B:64:0x00ce, code lost:
        
            r5 = r1[r3];
         */
        /* JADX WARN: Code restructure failed: missing block: B:65:0x00d6, code lost:
        
            if (r5.op.length() != 1) goto L152;
         */
        /* JADX WARN: Code restructure failed: missing block: B:67:0x00de, code lost:
        
            if (r5.op.charAt(0) != r9) goto L153;
         */
        /* JADX WARN: Code restructure failed: missing block: B:68:0x00e0, code lost:
        
            r17.i++;
         */
        /* JADX WARN: Code restructure failed: missing block: B:69:0x00e5, code lost:
        
            return r5;
         */
        /* JADX WARN: Code restructure failed: missing block: B:70:0x00e6, code lost:
        
            r3 = r3 + 1;
         */
        /* JADX WARN: Code restructure failed: missing block: B:72:0x010c, code lost:
        
            throw new java.lang.IllegalArgumentException("syntax error: " + r17.from + "=" + r17.orig);
         */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public java.lang.Object readToken(android.content.Context r18) {
            /*
                Method dump skipped, instructions count: 480
                To view this dump add '--comments-level debug' option
            */
            throw new UnsupportedOperationException("Method not decompiled: com.github.mmin18.widget.FlexLayout.TokenReader.readToken(android.content.Context):java.lang.Object");
        }

        private Object parseStr(Context context, StringBuilder sb, int i) {
            int identifier;
            int i2 = 0;
            if (i == -1) {
                String string = sb.toString();
                Operator[] operatorArr = FlexLayout.OPS;
                int length = operatorArr.length;
                while (i2 < length) {
                    Operator operator = operatorArr[i2];
                    if (operator.op.equals(string)) {
                        return operator;
                    }
                    i2++;
                }
                throw new IllegalArgumentException("unknown token " + string + ", " + this.from + "=" + this.orig);
            }
            String strSubstring = sb.substring(0, i);
            String strSubstring2 = sb.substring(i + 1);
            if ("this".equals(strSubstring)) {
                identifier = 0;
            } else if ("prev".equals(strSubstring)) {
                identifier = 1;
            } else if ("next".equals(strSubstring)) {
                identifier = 2;
            } else if ("parent".equals(strSubstring)) {
                identifier = 3;
            } else if ("screen".equals(strSubstring)) {
                identifier = 4;
            } else {
                if (strSubstring.startsWith("android:")) {
                    identifier = context.getResources().getIdentifier(strSubstring.substring(8), "id", "android");
                } else {
                    identifier = context.getResources().getIdentifier(strSubstring, "id", context.getPackageName());
                }
                if (identifier == 0) {
                    if (FlexLayout.EDIT_MODE_ID_MAP != null) {
                        identifier = FlexLayout.getEditModeId(strSubstring);
                    } else {
                        throw new IllegalArgumentException("unknown identifier " + strSubstring + ", " + this.from + "=" + this.orig);
                    }
                }
            }
            if (!TtmlNode.LEFT.equals(strSubstring2)) {
                if ("top".equals(strSubstring2)) {
                    i2 = 1;
                } else if (TtmlNode.RIGHT.equals(strSubstring2)) {
                    i2 = 2;
                } else if ("bottom".equals(strSubstring2)) {
                    i2 = 3;
                } else if ("centerX".equals(strSubstring2)) {
                    i2 = 4;
                } else if ("centerY".equals(strSubstring2)) {
                    i2 = 5;
                } else if ("width".equals(strSubstring2)) {
                    i2 = 6;
                } else if ("height".equals(strSubstring2)) {
                    i2 = 7;
                } else if ("visible".equals(strSubstring2)) {
                    i2 = 10;
                } else if ("gone".equals(strSubstring2)) {
                    i2 = 11;
                } else {
                    if (!"tag".equals(strSubstring2)) {
                        throw new IllegalArgumentException("unknown token " + strSubstring2 + ", " + this.from + "=" + this.orig);
                    }
                    i2 = 15;
                }
            }
            return new Ref(identifier, i2);
        }

        private float parseDimen(Context context, StringBuilder sb, int i) {
            String packageName;
            if (i == -1) {
                throw new IllegalArgumentException("unknown token " + ((Object) sb) + ", " + this.from + "=" + this.orig);
            }
            String strSubstring = sb.substring(1, i);
            String strSubstring2 = sb.substring(i + 1);
            if ("dimen".equals(strSubstring)) {
                packageName = context.getPackageName();
            } else {
                if (!"android:dimen".equals(strSubstring)) {
                    throw new IllegalArgumentException("unknown identifier " + ((Object) sb) + ", " + this.from + "=" + this.orig);
                }
                packageName = "android";
            }
            int identifier = context.getResources().getIdentifier(strSubstring2, "dimen", packageName);
            if (identifier == 0) {
                if (FlexLayout.EDIT_MODE_ID_MAP != null) {
                    throw new IllegalStateException(((Object) sb) + " is not supported in AndroidStudio Preview, " + this.from + "=" + this.orig);
                }
                throw new IllegalArgumentException("unknown identifier " + ((Object) sb) + ", " + this.from + "=" + this.orig);
            }
            return context.getResources().getDimension(identifier);
        }
    }

    static class RPN {
        private ArrayList<Object> list;
        private String orig;

        public RPN(ArrayList<Object> arrayList, String str) {
            this.list = arrayList;
            this.orig = str;
        }

        public static RPN parse(Context context, String str, String str2) {
            String str3 = null;
            if (str == null || str.length() == 0) {
                return null;
            }
            TokenReader tokenReader = new TokenReader(str, str2);
            ArrayList arrayList = new ArrayList();
            Stack stack = new Stack();
            while (true) {
                Object token = tokenReader.readToken(context);
                if (token != null) {
                    if (token instanceof Number) {
                        arrayList.add(token);
                    } else if (token instanceof Ref) {
                        arrayList.add(token);
                    } else if (token instanceof Operator) {
                        Operator operator = (Operator) token;
                        if ((operator.flag & 1) != 0) {
                            stack.push(operator);
                        } else if (operator == FlexLayout.COMMA) {
                            while (!stack.empty() && stack.peek() != FlexLayout.BL) {
                                arrayList.add(stack.pop());
                            }
                            if (stack.empty()) {
                                throw new IllegalArgumentException("comma misplaced or parentheses mismatched: " + str2 + "=" + str);
                            }
                        } else if (operator == FlexLayout.BL) {
                            stack.push(operator);
                        } else if (operator == FlexLayout.BR) {
                            while (!stack.empty() && stack.peek() != FlexLayout.BL) {
                                arrayList.add(stack.pop());
                            }
                            if (stack.empty()) {
                                throw new IllegalArgumentException("parentheses mismatched: " + str2 + "=" + str);
                            }
                            stack.pop();
                            if (!stack.empty() && (((Operator) stack.peek()).flag & 1) != 0) {
                                arrayList.add(stack.pop());
                            }
                        } else if (operator.argc == 0) {
                            arrayList.add(operator);
                        } else {
                            while (!stack.empty()) {
                                Operator operator2 = (Operator) stack.peek();
                                if ((operator.assoc != 1 || operator.prec > operator2.prec) && (operator.assoc != 2 || operator.prec >= operator2.prec)) {
                                    break;
                                }
                                arrayList.add(stack.pop());
                            }
                            stack.push(operator);
                        }
                    } else {
                        throw new IllegalArgumentException("unknown token " + token + ", " + str2 + "=" + str);
                    }
                } else {
                    while (!stack.empty()) {
                        Operator operator3 = (Operator) stack.pop();
                        if (operator3 == FlexLayout.BL) {
                            throw new IllegalArgumentException("parentheses mismatched: " + str2 + "=" + str);
                        }
                        if (operator3.assoc == 0) {
                            throw new IllegalArgumentException("syntax error: " + str2 + "=" + str);
                        }
                        arrayList.add(operator3);
                    }
                    if (arrayList.isEmpty()) {
                        return null;
                    }
                    if (FlexLayout.isDebug(null)) {
                        str3 = str2 + "=" + str;
                    }
                    return new RPN(arrayList, str3);
                }
            }
        }

        public float eval(FlexLayout flexLayout, int i, int i2, String str) throws Resources.NotFoundException {
            String str2;
            int i3;
            float f;
            float f2;
            float[] fArr = new float[this.list.size()];
            Iterator<Object> it = this.list.iterator();
            int i4 = 0;
            while (true) {
                String str3 = "";
                if (!it.hasNext()) {
                    if (i4 != 1) {
                        StringBuilder sb = new StringBuilder();
                        sb.append("syntax error");
                        if (str != null && this.orig != null) {
                            str3 = " (" + str + ":" + this.orig + ")";
                        }
                        sb.append(str3);
                        throw new IllegalArgumentException(sb.toString());
                    }
                    return fArr[0];
                }
                Object next = it.next();
                if (next instanceof Operator) {
                    Operator operator = (Operator) next;
                    int i5 = operator.argc;
                    if (i4 < i5) {
                        StringBuilder sb2 = new StringBuilder();
                        sb2.append("arg error ");
                        sb2.append(operator);
                        if (str != null && this.orig != null) {
                            str3 = " (" + str + ":" + this.orig + ")";
                        }
                        sb2.append(str3);
                        throw new IllegalArgumentException(sb2.toString());
                    }
                    if (i5 == 0) {
                        f = Float.NaN;
                    } else if (i5 == 1) {
                        i4--;
                        f = fArr[i4];
                    } else if (i5 == 2) {
                        int i6 = i4 - 1;
                        float f3 = fArr[i6];
                        i4 = i6 - 1;
                        f2 = f3;
                        f = fArr[i4];
                        i3 = i4 + 1;
                        fArr[i4] = operator.eval(flexLayout, i, i2, f, f2);
                    } else if (operator == FlexLayout.X_COND2) {
                        int i7 = i4 - 1;
                        float f4 = fArr[i7];
                        int i8 = i7 - 1;
                        float f5 = fArr[i8];
                        int i9 = i8 - 1;
                        float f6 = fArr[i9];
                        fArr[i9] = f6 == f6 ? f6 != 0.0f ? f5 : f4 : Float.NaN;
                        i4 = i9 + 1;
                    } else {
                        StringBuilder sb3 = new StringBuilder();
                        sb3.append("argc>2 not supported");
                        if (str != null && this.orig != null) {
                            str3 = " (" + str + ":" + this.orig + ")";
                        }
                        sb3.append(str3);
                        throw new IllegalArgumentException(sb3.toString());
                    }
                    f2 = Float.NaN;
                    i3 = i4 + 1;
                    fArr[i4] = operator.eval(flexLayout, i, i2, f, f2);
                } else if (next instanceof Float) {
                    i3 = i4 + 1;
                    fArr[i4] = ((Float) next).floatValue();
                } else if (next instanceof Ref) {
                    Ref ref = (Ref) next;
                    if (str == null || this.orig == null) {
                        str2 = null;
                    } else {
                        str2 = str + ":" + this.orig;
                    }
                    float fEval = ref.eval(flexLayout, i, i2, str2);
                    i3 = i4 + 1;
                    fArr[i4] = fEval;
                    i4 = i3;
                } else {
                    StringBuilder sb4 = new StringBuilder();
                    sb4.append("unknown token ");
                    sb4.append(next);
                    if (str != null && this.orig != null) {
                        str3 = " (" + str + ":" + this.orig + ")";
                    }
                    sb4.append(str3);
                    throw new IllegalArgumentException(sb4.toString());
                }
                i4 = i3;
            }
        }

        public String toString() {
            return String.valueOf(this.list);
        }
    }

    static boolean isDebug(Context context) {
        if (DEBUG == null && context != null) {
            DEBUG = Boolean.valueOf((context.getApplicationInfo().flags & 2) != 0);
        }
        return DEBUG == Boolean.TRUE;
    }

    static int getEditModeId(String str) {
        Integer num = EDIT_MODE_ID_MAP.get(str);
        if (num == null) {
            int i = EDIT_MODE_CUR_ID;
            EDIT_MODE_CUR_ID = i + 1;
            EDIT_MODE_ID_MAP.put(str, Integer.valueOf(i));
            return i;
        }
        return num.intValue();
    }

    static String getEditModeIdName(int i) {
        for (Map.Entry<String, Integer> entry : EDIT_MODE_ID_MAP.entrySet()) {
            if (entry.getValue().intValue() == i) {
                return entry.getKey();
            }
        }
        return null;
    }
}
