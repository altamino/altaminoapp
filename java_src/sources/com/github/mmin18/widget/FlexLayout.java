package com.github.mmin18.widget;

import android.R;
import android.content.Context;
import android.content.res.TypedArray;
import android.util.AttributeSet;
import android.util.DisplayMetrics;
import android.util.TypedValue;
import android.view.View;
import android.view.ViewGroup;
import androidx.core.internal.view.SupportMenu;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
import java.util.Stack;

/* JADX INFO: loaded from: classes2.dex */
public class FlexLayout extends ViewGroup {
    static final m0 ADD;
    static final m0 BL;
    static final m0 BR;
    static final m0 COMMA;
    static final m0 CP_EQ;
    static final m0 CP_GT;
    static final m0 CP_GT_EQ;
    static final m0 CP_LT;
    static final m0 CP_LT_EQ;
    static final m0 CP_NOT_EQ;
    static Boolean DEBUG;
    static final m0 DIV;
    static int EDIT_MODE_CUR_ID;
    static HashMap<String, Integer> EDIT_MODE_ID_MAP;
    static final m0 F_ABS;
    static final m0 F_CEIL;
    static final m0 F_FLOOR;
    static final m0 F_MAX;
    static final m0 F_MIN;
    static final m0 F_MOD;
    static final m0 F_POW;
    static final m0 F_ROUND;
    static final m0 LOG_AND;
    static final m0 LOG_OR;
    static final m0 MUL;
    static final m0 NOT;
    static m0[] OPS;
    static final m0 PERC;
    static final m0 SUB;
    static final m0 U_DIP;
    static final m0 U_DP;
    static final m0 U_IN;
    static final m0 U_MM;
    static final m0 U_PT;
    static final m0 U_PX;
    static final m0 U_SP;
    static final m0 X_COND1;
    static final m0 X_COND2;
    static final m0 X_FILL_PARENT;
    static final m0 X_MATCH_PARENT;
    static final m0 X_WRAP_CONTENT;
    int myHeight;
    int myHeightMeasureSpec;
    int myWidth;
    int myWidthMeasureSpec;

    class b0 extends m0 {
        @Override // com.github.mmin18.widget.FlexLayout.m0
        public float a(FlexLayout flexLayout, int i10, int i11, float f, float f6) {
            if (i11 == 0) {
                int i12 = flexLayout.myWidth;
                if (i12 != -1) {
                    return i12;
                }
                return Float.NaN;
            }
            int i13 = flexLayout.myHeight;
            if (i13 != -1) {
                return i13;
            }
            return Float.NaN;
        }

        b0(String str, int i10, int i11, int i12, int i13) {
            super(str, i10, i11, i12, i13);
        }
    }

    class c0 extends m0 {
        @Override // com.github.mmin18.widget.FlexLayout.m0
        public float a(FlexLayout flexLayout, int i10, int i11, float f, float f6) {
            return FlexLayout.X_MATCH_PARENT.a(flexLayout, i10, i11, f, f6);
        }

        c0(String str, int i10, int i11, int i12, int i13) {
            super(str, i10, i11, i12, i13);
        }
    }

    static class n0 {
        private ArrayList<Object> list;
        private String orig;

        public static n0 c(Context context, String str, String str2) {
            String str3 = null;
            if (str == null || str.length() == 0) {
                return null;
            }
            p0 p0Var = new p0(str, str2);
            ArrayList arrayList = new ArrayList();
            Stack stack = new Stack();
            while (true) {
                Object objC = p0Var.c(context);
                if (objC == null) {
                    while (!stack.empty()) {
                        m0 m0Var = (m0) stack.pop();
                        if (m0Var == FlexLayout.BL) {
                            throw new IllegalArgumentException("parentheses mismatched: " + str2 + "=" + str);
                        }
                        if (m0Var.assoc == 0) {
                            throw new IllegalArgumentException("syntax error: " + str2 + "=" + str);
                        }
                        arrayList.add(m0Var);
                    }
                    if (arrayList.isEmpty()) {
                        return null;
                    }
                    if (FlexLayout.isDebug(null)) {
                        str3 = str2 + "=" + str;
                    }
                    return new n0(arrayList, str3);
                }
                if (objC instanceof Number) {
                    arrayList.add(objC);
                } else if (objC instanceof o0) {
                    arrayList.add(objC);
                } else {
                    if (!(objC instanceof m0)) {
                        throw new IllegalArgumentException("unknown token " + objC + ", " + str2 + "=" + str);
                    }
                    m0 m0Var2 = (m0) objC;
                    if ((m0Var2.flag & 1) != 0) {
                        stack.push(m0Var2);
                    } else if (m0Var2 == FlexLayout.COMMA) {
                        while (!stack.empty() && stack.peek() != FlexLayout.BL) {
                            arrayList.add(stack.pop());
                        }
                        if (stack.empty()) {
                            throw new IllegalArgumentException("comma misplaced or parentheses mismatched: " + str2 + "=" + str);
                        }
                    } else if (m0Var2 == FlexLayout.BL) {
                        stack.push(m0Var2);
                    } else if (m0Var2 == FlexLayout.BR) {
                        while (!stack.empty() && stack.peek() != FlexLayout.BL) {
                            arrayList.add(stack.pop());
                        }
                        if (stack.empty()) {
                            throw new IllegalArgumentException("parentheses mismatched: " + str2 + "=" + str);
                        }
                        stack.pop();
                        if (!stack.empty() && (((m0) stack.peek()).flag & 1) != 0) {
                            arrayList.add(stack.pop());
                        }
                    } else if (m0Var2.argc == 0) {
                        arrayList.add(m0Var2);
                    } else {
                        while (!stack.empty()) {
                            m0 m0Var3 = (m0) stack.peek();
                            int i10 = m0Var2.assoc;
                            if ((i10 != 1 || m0Var2.prec > m0Var3.prec) && (i10 != 2 || m0Var2.prec >= m0Var3.prec)) {
                                break;
                            }
                            arrayList.add(stack.pop());
                        }
                        stack.push(m0Var2);
                    }
                }
            }
        }

        public float b(FlexLayout flexLayout, int i10, int i11, String str) {
            String str2;
            int i12;
            float f;
            float f6;
            float[] fArr = new float[this.list.size()];
            Iterator<Object> it = this.list.iterator();
            int i13 = 0;
            while (true) {
                String str3 = "";
                if (!it.hasNext()) {
                    if (i13 == 1) {
                        return fArr[0];
                    }
                    StringBuilder sb = new StringBuilder();
                    sb.append("syntax error");
                    if (str != null && this.orig != null) {
                        str3 = " (" + str + ":" + this.orig + ")";
                    }
                    sb.append(str3);
                    throw new IllegalArgumentException(sb.toString());
                }
                Object next = it.next();
                if (next instanceof m0) {
                    m0 m0Var = (m0) next;
                    int i14 = m0Var.argc;
                    if (i13 < i14) {
                        StringBuilder sb2 = new StringBuilder();
                        sb2.append("arg error ");
                        sb2.append(m0Var);
                        if (str != null && this.orig != null) {
                            str3 = " (" + str + ":" + this.orig + ")";
                        }
                        sb2.append(str3);
                        throw new IllegalArgumentException(sb2.toString());
                    }
                    float f7 = Float.NaN;
                    if (i14 == 0) {
                        f = Float.NaN;
                        f6 = Float.NaN;
                    } else if (i14 == 1) {
                        i13--;
                        f = fArr[i13];
                        f6 = Float.NaN;
                    } else if (i14 == 2) {
                        float f10 = fArr[i13 - 1];
                        i13 -= 2;
                        f6 = f10;
                        f = fArr[i13];
                    } else {
                        if (m0Var != FlexLayout.X_COND2) {
                            StringBuilder sb3 = new StringBuilder();
                            sb3.append("argc>2 not supported");
                            if (str != null && this.orig != null) {
                                str3 = " (" + str + ":" + this.orig + ")";
                            }
                            sb3.append(str3);
                            throw new IllegalArgumentException(sb3.toString());
                        }
                        float f11 = fArr[i13 - 1];
                        float f12 = fArr[i13 - 2];
                        int i15 = i13 - 3;
                        float f13 = fArr[i15];
                        if (f13 == f13) {
                            f7 = f13 != 0.0f ? f12 : f11;
                        }
                        i13 -= 2;
                        fArr[i15] = f7;
                    }
                    i12 = i13 + 1;
                    fArr[i13] = m0Var.a(flexLayout, i10, i11, f, f6);
                } else {
                    if (next instanceof Float) {
                        i12 = i13 + 1;
                        fArr[i13] = ((Float) next).floatValue();
                    } else {
                        if (!(next instanceof o0)) {
                            StringBuilder sb4 = new StringBuilder();
                            sb4.append("unknown token ");
                            sb4.append(next);
                            if (str != null && this.orig != null) {
                                str3 = " (" + str + ":" + this.orig + ")";
                            }
                            sb4.append(str3);
                            throw new IllegalArgumentException(sb4.toString());
                        }
                        o0 o0Var = (o0) next;
                        if (str == null || this.orig == null) {
                            str2 = null;
                        } else {
                            str2 = str + ":" + this.orig;
                        }
                        float fA = o0Var.a(flexLayout, i10, i11, str2);
                        i12 = i13 + 1;
                        fArr[i13] = fA;
                    }
                    i13 = i12;
                }
                i13 = i12;
            }
        }

        public String toString() {
            return String.valueOf(this.list);
        }

        public n0(ArrayList<Object> arrayList, String str) {
            this.list = arrayList;
            this.orig = str;
        }
    }

    static class o0 {
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

        /* JADX WARN: Code duplicated, block: B:101:0x01cc A[DONT_INVERT] */
        /* JADX WARN: Code duplicated, block: B:102:0x01ce  */
        /* JADX WARN: Code duplicated, block: B:104:0x01d9 A[DONT_INVERT] */
        /* JADX WARN: Code duplicated, block: B:105:0x01db  */
        /* JADX WARN: Code duplicated, block: B:107:0x01e6 A[DONT_INVERT] */
        /* JADX WARN: Code duplicated, block: B:108:0x01e8  */
        /* JADX WARN: Code duplicated, block: B:110:0x01f3 A[DONT_INVERT] */
        /* JADX WARN: Code duplicated, block: B:111:0x01f5  */
        /* JADX WARN: Code duplicated, block: B:113:0x0200  */
        /* JADX WARN: Code duplicated, block: B:115:0x0203  */
        /* JADX WARN: Code duplicated, block: B:117:0x020e  */
        /* JADX WARN: Code duplicated, block: B:119:0x0211  */
        /* JADX WARN: Code duplicated, block: B:121:0x021c  */
        /* JADX WARN: Code duplicated, block: B:123:0x0222  */
        /* JADX WARN: Code duplicated, block: B:125:0x0228  */
        /* JADX WARN: Code duplicated, block: B:127:0x022a  */
        /* JADX WARN: Code duplicated, block: B:129:0x022e  */
        /* JADX WARN: Code duplicated, block: B:131:0x0236  */
        /* JADX WARN: Code duplicated, block: B:133:0x0238  */
        /* JADX WARN: Code duplicated, block: B:135:0x023c  */
        /* JADX WARN: Code duplicated, block: B:137:0x0244  */
        /* JADX WARN: Code duplicated, block: B:139:0x024b  */
        /* JADX WARN: Code duplicated, block: B:145:0x0259 A[RETURN] */
        /* JADX WARN: Code duplicated, block: B:153:? A[RETURN, SYNTHETIC] */
        /* JADX WARN: Code duplicated, block: B:154:? A[RETURN, SYNTHETIC] */
        /* JADX WARN: Code duplicated, block: B:93:0x01af A[RETURN] */
        /* JADX WARN: Code duplicated, block: B:94:0x01b0  */
        /* JADX WARN: Code duplicated, block: B:96:0x01b4  */
        /* JADX WARN: Code duplicated, block: B:98:0x01bf A[DONT_INVERT] */
        /* JADX WARN: Code duplicated, block: B:99:0x01c1  */
        /* JADX WARN: Code duplicated, block: B:9:0x0026  */
        public float a(FlexLayout flexLayout, int i10, int i11, String str) {
            View view;
            View childAt;
            int i12;
            Object tag;
            View childAt2;
            FlexLayout flexLayout2 = flexLayout;
            int i13 = this.target;
            if (i13 != 0) {
                if (i13 == 1) {
                    if (i10 > 0) {
                        childAt2 = flexLayout2.getChildAt(i10 - 1);
                    } else {
                        view = null;
                    }
                } else if (i13 != 2) {
                    String str2 = "";
                    if (i13 == 3) {
                        int i14 = this.property;
                        if (i14 == 6) {
                            int i15 = flexLayout2.myWidth;
                            if (i15 == -1) {
                                childAt2 = flexLayout2;
                                return Float.NaN;
                            }
                            childAt2 = flexLayout2;
                            return i15;
                        }
                        if (i14 == 7) {
                            int i16 = flexLayout2.myHeight;
                            if (i16 == -1) {
                                return Float.NaN;
                            }
                            return i16;
                        }
                        if (i14 == 0 || i14 == 1 || i14 == 2 || i14 == 3 || i14 == 4 || i14 == 5) {
                            StringBuilder sb = new StringBuilder();
                            sb.append(toString());
                            sb.append(" is not supported");
                            if (str != null) {
                                str2 = " (" + str + ")";
                            }
                            sb.append(str2);
                            throw new IllegalArgumentException(sb.toString());
                        }
                    } else {
                        if (i13 == 4) {
                            DisplayMetrics displayMetrics = flexLayout.getResources().getDisplayMetrics();
                            int i17 = this.property;
                            if (i17 == 6) {
                                return displayMetrics.widthPixels;
                            }
                            if (i17 == 7) {
                                return displayMetrics.heightPixels;
                            }
                            StringBuilder sb2 = new StringBuilder();
                            sb2.append(toString());
                            sb2.append(" is not supported");
                            if (str != null) {
                                str2 = " (" + str + ")";
                            }
                            sb2.append(str2);
                            throw new IllegalArgumentException(sb2.toString());
                        }
                        if (FlexLayout.isEditModeId(i13)) {
                            int childCount = flexLayout.getChildCount();
                            int i18 = 0;
                            while (true) {
                                if (i18 >= childCount) {
                                    childAt = null;
                                    break;
                                }
                                childAt = flexLayout2.getChildAt(i18);
                                if ((childAt.getLayoutParams() instanceof l0) && ((l0) childAt.getLayoutParams()).editModeId == this.target) {
                                    break;
                                }
                                i18++;
                            }
                            if (childAt == null) {
                                String editModeIdName = FlexLayout.getEditModeIdName(this.target);
                                StringBuilder sb3 = new StringBuilder();
                                sb3.append(editModeIdName);
                                sb3.append(" not found");
                                if (str != null) {
                                    str2 = " (" + str + ")";
                                }
                                sb3.append(str2);
                                throw new IllegalArgumentException(sb3.toString());
                            }
                            view = childAt;
                        } else {
                            int childCount2 = flexLayout.getChildCount();
                            int i19 = 0;
                            while (true) {
                                if (i19 >= childCount2) {
                                    view = null;
                                    break;
                                }
                                View childAt3 = flexLayout2.getChildAt(i19);
                                if (childAt3.getId() == this.target) {
                                    view = childAt3;
                                    break;
                                }
                                i19++;
                            }
                            if (view == null) {
                                String resourceEntryName = flexLayout.getResources().getResourceEntryName(this.target);
                                StringBuilder sb4 = new StringBuilder();
                                if (resourceEntryName == null) {
                                    resourceEntryName = "view";
                                }
                                sb4.append(resourceEntryName);
                                sb4.append(" not found");
                                if (str != null) {
                                    str2 = " (" + str + ")";
                                }
                                sb4.append(str2);
                                throw new IllegalArgumentException(sb4.toString());
                            }
                        }
                    }
                } else if (i10 < flexLayout.getChildCount() - 1) {
                    childAt2 = flexLayout2.getChildAt(i10 + 1);
                } else {
                    view = null;
                }
                if (view == null) {
                    return 0.0f;
                }
                i12 = this.property;
                if (i12 == 0) {
                    return ((l0) view.getLayoutParams()).e();
                }
                if (i12 == 1) {
                    return ((l0) view.getLayoutParams()).g();
                }
                if (i12 == 2) {
                    return ((l0) view.getLayoutParams()).f();
                }
                if (i12 == 3) {
                    return ((l0) view.getLayoutParams()).a();
                }
                if (i12 == 4) {
                    return ((l0) view.getLayoutParams()).b();
                }
                if (i12 == 5) {
                    return ((l0) view.getLayoutParams()).c();
                }
                if (i12 == 6) {
                    return ((l0) view.getLayoutParams()).h();
                }
                if (i12 == 7) {
                    return ((l0) view.getLayoutParams()).d();
                }
                if (i12 == 10) {
                    if (view.getVisibility() == 0) {
                        return 1.0f;
                    }
                    return 0.0f;
                }
                if (i12 == 11) {
                    if (view.getVisibility() == 8) {
                        return 1.0f;
                    }
                    return 0.0f;
                }
                if (i12 == 15) {
                    return Float.NaN;
                }
                tag = view.getTag();
                if (tag instanceof Number) {
                    return ((Number) tag).floatValue();
                }
                return ((tag instanceof Boolean) && ((Boolean) tag).booleanValue()) ? 1.0f : 0.0f;
            }
            childAt2 = flexLayout.getChildAt(i10);
            view = childAt2;
            if (view == null) {
                return 0.0f;
            }
            i12 = this.property;
            if (i12 == 0) {
                return ((l0) view.getLayoutParams()).e();
            }
            if (i12 == 1) {
                return ((l0) view.getLayoutParams()).g();
            }
            if (i12 == 2) {
                return ((l0) view.getLayoutParams()).f();
            }
            if (i12 == 3) {
                return ((l0) view.getLayoutParams()).a();
            }
            if (i12 == 4) {
                return ((l0) view.getLayoutParams()).b();
            }
            if (i12 == 5) {
                return ((l0) view.getLayoutParams()).c();
            }
            if (i12 == 6) {
                return ((l0) view.getLayoutParams()).h();
            }
            if (i12 == 7) {
                return ((l0) view.getLayoutParams()).d();
            }
            if (i12 == 10) {
                if (view.getVisibility() == 0) {
                    return 1.0f;
                }
                return 0.0f;
            }
            if (i12 == 11) {
                if (view.getVisibility() == 8) {
                    return 1.0f;
                }
                return 0.0f;
            }
            if (i12 == 15) {
                return Float.NaN;
            }
            tag = view.getTag();
            if (tag instanceof Number) {
                return ((Number) tag).floatValue();
            }
            if (tag instanceof Boolean) {
                return 0.0f;
            }
        }

        public String toString() {
            StringBuilder sb = new StringBuilder();
            int i10 = this.target;
            if (i10 == 0) {
                sb.append("this");
            } else if (i10 == 1) {
                sb.append("prev");
            } else if (i10 == 2) {
                sb.append("next");
            } else if (i10 == 3) {
                sb.append("parent");
            } else if (i10 != 4) {
                sb.append("?");
            } else {
                sb.append("screen");
            }
            sb.append('.');
            int i11 = this.property;
            if (i11 == 10) {
                sb.append("visible");
            } else if (i11 == 11) {
                sb.append("gone");
            } else if (i11 != 15) {
                switch (i11) {
                    case 0:
                        sb.append("left");
                        break;
                    case 1:
                        sb.append("top");
                        break;
                    case 2:
                        sb.append("right");
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

        public o0(int i10, int i11) {
            this.target = i10;
            this.property = i11;
        }
    }

    static class p0 {
        private char[] chars;
        private String from;

        /* JADX INFO: renamed from: i, reason: collision with root package name */
        private int f962i = 0;
        private int n;
        private String orig;

        private float a(Context context, StringBuilder sb, int i10) {
            String packageName;
            if (i10 == -1) {
                throw new IllegalArgumentException("unknown token " + ((Object) sb) + ", " + this.from + "=" + this.orig);
            }
            String strSubstring = sb.substring(1, i10);
            String strSubstring2 = sb.substring(i10 + 1);
            if ("dimen".equals(strSubstring)) {
                packageName = context.getPackageName();
            } else {
                if (!"android:dimen".equals(strSubstring)) {
                    throw new IllegalArgumentException("unknown identifier " + ((Object) sb) + ", " + this.from + "=" + this.orig);
                }
                packageName = "android";
            }
            int identifier = context.getResources().getIdentifier(strSubstring2, "dimen", packageName);
            if (identifier != 0) {
                return context.getResources().getDimension(identifier);
            }
            if (FlexLayout.EDIT_MODE_ID_MAP != null) {
                throw new IllegalStateException(((Object) sb) + " is not supported in AndroidStudio Preview, " + this.from + "=" + this.orig);
            }
            throw new IllegalArgumentException("unknown identifier " + ((Object) sb) + ", " + this.from + "=" + this.orig);
        }

        private Object b(Context context, StringBuilder sb, int i10) {
            int identifier;
            int i11 = 0;
            if (i10 == -1) {
                String string = sb.toString();
                m0[] m0VarArr = FlexLayout.OPS;
                int length = m0VarArr.length;
                while (i11 < length) {
                    m0 m0Var = m0VarArr[i11];
                    if (m0Var.op.equals(string)) {
                        return m0Var;
                    }
                    i11++;
                }
                throw new IllegalArgumentException("unknown token " + string + ", " + this.from + "=" + this.orig);
            }
            String strSubstring = sb.substring(0, i10);
            String strSubstring2 = sb.substring(i10 + 1);
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
                identifier = strSubstring.startsWith("android:") ? context.getResources().getIdentifier(strSubstring.substring(8), "id", "android") : context.getResources().getIdentifier(strSubstring, "id", context.getPackageName());
                if (identifier == 0) {
                    if (FlexLayout.EDIT_MODE_ID_MAP == null) {
                        throw new IllegalArgumentException("unknown identifier " + strSubstring + ", " + this.from + "=" + this.orig);
                    }
                    identifier = FlexLayout.getEditModeId(strSubstring);
                }
            }
            if (!"left".equals(strSubstring2)) {
                if ("top".equals(strSubstring2)) {
                    i11 = 1;
                } else if ("right".equals(strSubstring2)) {
                    i11 = 2;
                } else if ("bottom".equals(strSubstring2)) {
                    i11 = 3;
                } else if ("centerX".equals(strSubstring2)) {
                    i11 = 4;
                } else if ("centerY".equals(strSubstring2)) {
                    i11 = 5;
                } else if ("width".equals(strSubstring2)) {
                    i11 = 6;
                } else if ("height".equals(strSubstring2)) {
                    i11 = 7;
                } else if ("visible".equals(strSubstring2)) {
                    i11 = 10;
                } else if ("gone".equals(strSubstring2)) {
                    i11 = 11;
                } else {
                    if (!"tag".equals(strSubstring2)) {
                        throw new IllegalArgumentException("unknown token " + strSubstring2 + ", " + this.from + "=" + this.orig);
                    }
                    i11 = 15;
                }
            }
            return new o0(identifier, i11);
        }

        public Object c(Context context) {
            StringBuilder sb = null;
            StringBuilder sb2 = null;
            StringBuilder sb3 = null;
            int length = -1;
            int length2 = -1;
            while (true) {
                int i10 = this.f962i;
                int i11 = this.n;
                if (i10 >= i11) {
                    if (sb != null) {
                        return Float.valueOf(Float.parseFloat(sb.toString()));
                    }
                    if (sb2 != null) {
                        return Float.valueOf(a(context, sb2, length));
                    }
                    if (sb3 != null) {
                        return b(context, sb3, length2);
                    }
                    return null;
                }
                char[] cArr = this.chars;
                char c7 = cArr[i10];
                if (sb != null || sb2 != null || sb3 != null) {
                    if (sb != null) {
                        if ((c7 < '0' || c7 > '9') && c7 != '.') {
                            return Float.valueOf(Float.parseFloat(sb.toString()));
                        }
                        sb.append(c7);
                    } else if (sb2 != null) {
                        if ((c7 >= '0' && c7 <= '9') || ((c7 >= 'a' && c7 <= 'z') || c7 == '_' || (c7 >= 'A' && c7 <= 'Z'))) {
                            sb2.append(c7);
                        } else if (c7 == '/' && length == -1) {
                            length = sb2.length();
                            sb2.append(c7);
                        } else {
                            if (c7 != ':' || !"@android".equals(sb2.toString())) {
                                return Float.valueOf(a(context, sb2, length));
                            }
                            sb2.append(c7);
                        }
                    } else if ((c7 >= '0' && c7 <= '9') || ((c7 >= 'a' && c7 <= 'z') || c7 == '_' || (c7 >= 'A' && c7 <= 'Z'))) {
                        sb3.append(c7);
                    } else if (c7 == '.') {
                        length2 = sb3.length();
                        sb3.append(c7);
                    } else {
                        if (c7 != ':' || !"android".equals(sb3.toString())) {
                            return b(context, sb3, length2);
                        }
                        sb3.append(c7);
                    }
                    this.f962i++;
                } else if ((c7 >= '0' && c7 <= '9') || c7 == '.') {
                    sb = new StringBuilder();
                    sb.append(c7);
                } else if (c7 != ' ' && c7 != '\t') {
                    if (c7 == '@') {
                        sb2 = new StringBuilder();
                        sb2.append(c7);
                    } else {
                        if ((c7 < 'a' || c7 > 'z') && c7 != '_' && (c7 < 'A' || c7 > 'Z')) {
                            char c10 = i10 + 1 < i11 ? cArr[i10 + 1] : (char) 0;
                            if (c10 == '=') {
                                if (c7 == '=') {
                                    this.f962i = i10 + 2;
                                    return FlexLayout.CP_EQ;
                                }
                                if (c7 == '!') {
                                    this.f962i = i10 + 2;
                                    return FlexLayout.CP_NOT_EQ;
                                }
                                if (c7 == '<') {
                                    this.f962i = i10 + 2;
                                    return FlexLayout.CP_LT_EQ;
                                }
                                if (c7 == '>') {
                                    this.f962i = i10 + 2;
                                    return FlexLayout.CP_GT_EQ;
                                }
                            } else {
                                if (c7 == '&' && c10 == '&') {
                                    this.f962i = i10 + 2;
                                    return FlexLayout.LOG_AND;
                                }
                                if (c7 == '|' && c10 == '|') {
                                    this.f962i = i10 + 2;
                                    return FlexLayout.LOG_OR;
                                }
                            }
                            for (m0 m0Var : FlexLayout.OPS) {
                                if (m0Var.op.length() == 1 && m0Var.op.charAt(0) == c7) {
                                    this.f962i++;
                                    return m0Var;
                                }
                            }
                            throw new IllegalArgumentException("syntax error: " + this.from + "=" + this.orig);
                        }
                        sb3 = new StringBuilder();
                        sb3.append(c7);
                    }
                }
                this.f962i++;
            }
        }

        public p0(String str, String str2) {
            this.orig = str;
            this.chars = str.toCharArray();
            this.n = str.length();
            this.from = str2;
        }
    }

    public FlexLayout(Context context) {
        this(context, null);
    }

    static boolean isEditModeId(int i10) {
        return (i10 & SupportMenu.CATEGORY_MASK) == 251789312;
    }

    class a extends m0 {
        @Override // com.github.mmin18.widget.FlexLayout.m0
        public float a(FlexLayout flexLayout, int i10, int i11, float f, float f6) {
            if (f == f && f6 == f6) {
                return f >= f6 ? 1.0f : 0.0f;
            }
            return Float.NaN;
        }

        a(String str, int i10, int i11, int i12, int i13) {
            super(str, i10, i11, i12, i13);
        }
    }

    class a0 extends m0 {
        @Override // com.github.mmin18.widget.FlexLayout.m0
        public float a(FlexLayout flexLayout, int i10, int i11, float f, float f6) {
            return Float.NaN;
        }

        a0(String str, int i10, int i11, int i12, int i13) {
            super(str, i10, i11, i12, i13);
        }
    }

    class b extends m0 {
        @Override // com.github.mmin18.widget.FlexLayout.m0
        public float a(FlexLayout flexLayout, int i10, int i11, float f, float f6) {
            if (f == f && f6 == f6) {
                return f == f6 ? 1.0f : 0.0f;
            }
            return Float.NaN;
        }

        b(String str, int i10, int i11, int i12, int i13) {
            super(str, i10, i11, i12, i13);
        }
    }

    class c extends m0 {
        @Override // com.github.mmin18.widget.FlexLayout.m0
        public float a(FlexLayout flexLayout, int i10, int i11, float f, float f6) {
            if (f == f && f6 == f6) {
                return f != f6 ? 1.0f : 0.0f;
            }
            return Float.NaN;
        }

        c(String str, int i10, int i11, int i12, int i13) {
            super(str, i10, i11, i12, i13);
        }
    }

    class d extends m0 {
        @Override // com.github.mmin18.widget.FlexLayout.m0
        public float a(FlexLayout flexLayout, int i10, int i11, float f, float f6) {
            if (f == f && f6 == f6) {
                return (f == 0.0f || f6 == 0.0f) ? 0.0f : 1.0f;
            }
            return Float.NaN;
        }

        d(String str, int i10, int i11, int i12, int i13) {
            super(str, i10, i11, i12, i13);
        }
    }

    class d0 extends m0 {
        d0(String str, int i10, int i11, int i12, int i13) {
            super(str, i10, i11, i12, i13);
        }

        @Override // com.github.mmin18.widget.FlexLayout.m0
        public float a(FlexLayout flexLayout, int i10, int i11, float f, float f6) {
            View childAt = flexLayout.getChildAt(i10);
            l0 l0Var = (l0) childAt.getLayoutParams();
            if (i11 == 0) {
                if (l0Var.mMeasuredWidth == -1) {
                    FlexLayout.measureChild(flexLayout, childAt, l0Var, -2, ((ViewGroup.LayoutParams) l0Var).height);
                    l0Var.mMeasuredHeight = -1;
                }
                int i12 = l0Var.mMeasuredWidth;
                if (i12 == -1) {
                    return Float.NaN;
                }
                return i12;
            }
            if (l0Var.mMeasuredHeight == -1) {
                FlexLayout.measureChild(flexLayout, childAt, l0Var, ((ViewGroup.LayoutParams) l0Var).width, -2);
                l0Var.mMeasuredWidth = -1;
            }
            int i13 = l0Var.mMeasuredHeight;
            if (i13 == -1) {
                return Float.NaN;
            }
            return i13;
        }
    }

    class e extends m0 {
        @Override // com.github.mmin18.widget.FlexLayout.m0
        public float a(FlexLayout flexLayout, int i10, int i11, float f, float f6) {
            if (f == f && f6 == f6) {
                return (f == 0.0f && f6 == 0.0f) ? 0.0f : 1.0f;
            }
            return Float.NaN;
        }

        e(String str, int i10, int i11, int i12, int i13) {
            super(str, i10, i11, i12, i13);
        }
    }

    class e0 extends m0 {
        e0(String str, int i10, int i11, int i12, int i13) {
            super(str, i10, i11, i12, i13);
        }

        @Override // com.github.mmin18.widget.FlexLayout.m0
        public float a(FlexLayout flexLayout, int i10, int i11, float f, float f6) {
            int i12;
            if (i11 == 0) {
                i12 = flexLayout.myWidth;
                if (i12 == -1) {
                    return Float.NaN;
                }
            } else {
                i12 = flexLayout.myHeight;
                if (i12 == -1) {
                    return Float.NaN;
                }
            }
            return i12 * f * 0.01f;
        }
    }

    class f extends m0 {
        @Override // com.github.mmin18.widget.FlexLayout.m0
        public float a(FlexLayout flexLayout, int i10, int i11, float f, float f6) {
            return Float.NaN;
        }

        f(String str, int i10, int i11, int i12, int i13) {
            super(str, i10, i11, i12, i13);
        }
    }

    class f0 extends m0 {
        @Override // com.github.mmin18.widget.FlexLayout.m0
        public float a(FlexLayout flexLayout, int i10, int i11, float f, float f6) {
            return f + f6;
        }

        f0(String str, int i10, int i11, int i12, int i13) {
            super(str, i10, i11, i12, i13);
        }
    }

    class g extends m0 {
        @Override // com.github.mmin18.widget.FlexLayout.m0
        public float a(FlexLayout flexLayout, int i10, int i11, float f, float f6) {
            return Float.NaN;
        }

        g(String str, int i10, int i11, int i12, int i13) {
            super(str, i10, i11, i12, i13);
        }
    }

    class g0 extends m0 {
        @Override // com.github.mmin18.widget.FlexLayout.m0
        public float a(FlexLayout flexLayout, int i10, int i11, float f, float f6) {
            return f - f6;
        }

        g0(String str, int i10, int i11, int i12, int i13) {
            super(str, i10, i11, i12, i13);
        }
    }

    class h extends m0 {
        @Override // com.github.mmin18.widget.FlexLayout.m0
        public float a(FlexLayout flexLayout, int i10, int i11, float f, float f6) {
            return Float.NaN;
        }

        h(String str, int i10, int i11, int i12, int i13) {
            super(str, i10, i11, i12, i13);
        }
    }

    class h0 extends m0 {
        @Override // com.github.mmin18.widget.FlexLayout.m0
        public float a(FlexLayout flexLayout, int i10, int i11, float f, float f6) {
            if (f == f) {
                return f == 0.0f ? 1.0f : 0.0f;
            }
            return Float.NaN;
        }

        h0(String str, int i10, int i11, int i12, int i13) {
            super(str, i10, i11, i12, i13);
        }
    }

    class i extends m0 {
        i(String str, int i10, int i11, int i12, int i13) {
            super(str, i10, i11, i12, i13);
        }

        @Override // com.github.mmin18.widget.FlexLayout.m0
        public float a(FlexLayout flexLayout, int i10, int i11, float f, float f6) {
            return TypedValue.applyDimension(2, f, flexLayout.getResources().getDisplayMetrics());
        }
    }

    class i0 extends m0 {
        @Override // com.github.mmin18.widget.FlexLayout.m0
        public float a(FlexLayout flexLayout, int i10, int i11, float f, float f6) {
            if (f == f && f6 == f6) {
                return f < f6 ? 1.0f : 0.0f;
            }
            return Float.NaN;
        }

        i0(String str, int i10, int i11, int i12, int i13) {
            super(str, i10, i11, i12, i13);
        }
    }

    class j extends m0 {
        j(String str, int i10, int i11, int i12, int i13) {
            super(str, i10, i11, i12, i13);
        }

        @Override // com.github.mmin18.widget.FlexLayout.m0
        public float a(FlexLayout flexLayout, int i10, int i11, float f, float f6) {
            return TypedValue.applyDimension(1, f, flexLayout.getResources().getDisplayMetrics());
        }
    }

    class j0 extends m0 {
        @Override // com.github.mmin18.widget.FlexLayout.m0
        public float a(FlexLayout flexLayout, int i10, int i11, float f, float f6) {
            if (f == f && f6 == f6) {
                return f <= f6 ? 1.0f : 0.0f;
            }
            return Float.NaN;
        }

        j0(String str, int i10, int i11, int i12, int i13) {
            super(str, i10, i11, i12, i13);
        }
    }

    class k extends m0 {
        @Override // com.github.mmin18.widget.FlexLayout.m0
        public float a(FlexLayout flexLayout, int i10, int i11, float f, float f6) {
            return f * f6;
        }

        k(String str, int i10, int i11, int i12, int i13) {
            super(str, i10, i11, i12, i13);
        }
    }

    class k0 extends m0 {
        @Override // com.github.mmin18.widget.FlexLayout.m0
        public float a(FlexLayout flexLayout, int i10, int i11, float f, float f6) {
            if (f == f && f6 == f6) {
                return f > f6 ? 1.0f : 0.0f;
            }
            return Float.NaN;
        }

        k0(String str, int i10, int i11, int i12, int i13) {
            super(str, i10, i11, i12, i13);
        }
    }

    class l extends m0 {
        l(String str, int i10, int i11, int i12, int i13) {
            super(str, i10, i11, i12, i13);
        }

        @Override // com.github.mmin18.widget.FlexLayout.m0
        public float a(FlexLayout flexLayout, int i10, int i11, float f, float f6) {
            return TypedValue.applyDimension(1, f, flexLayout.getResources().getDisplayMetrics());
        }
    }

    public static class l0 extends ViewGroup.LayoutParams {
        static int UNSPECIFIED = -5;
        static final int[] ViewGroup_Layout = {R.attr.layout_width, R.attr.layout_height};
        n0 bottom;
        n0 centerX;
        n0 centerY;
        int editModeId;
        n0 height2;
        n0 left;
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
        n0 right;
        n0 top;
        n0 width2;

        public l0(Context context, AttributeSet attributeSet) {
            String attributeValue;
            String strSubstring;
            super(0, 0);
            if (FlexLayout.EDIT_MODE_ID_MAP != null && (attributeValue = attributeSet.getAttributeValue("http://schemas.android.com/apk/res/android", "id")) != null) {
                if (attributeValue.startsWith("@+id/")) {
                    strSubstring = attributeValue.substring(5);
                } else if (attributeValue.startsWith("@id/")) {
                    strSubstring = attributeValue.substring(4);
                } else {
                    if (!attributeValue.startsWith("@android:id/")) {
                        throw new IllegalArgumentException("unidentified id " + attributeValue);
                    }
                    strSubstring = "android:" + attributeValue.substring(12);
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
            TypedArray typedArrayObtainStyledAttributes2 = context.obtainStyledAttributes(attributeSet, com.narvii.lib.R.styleable.FlexLayout_Layout);
            this.left = n0.c(context, typedArrayObtainStyledAttributes2.getString(com.narvii.lib.R.styleable.FlexLayout_Layout_layout_left), "layout_left");
            this.top = n0.c(context, typedArrayObtainStyledAttributes2.getString(com.narvii.lib.R.styleable.FlexLayout_Layout_layout_top), "layout_top");
            this.right = n0.c(context, typedArrayObtainStyledAttributes2.getString(com.narvii.lib.R.styleable.FlexLayout_Layout_layout_right), "layout_right");
            this.bottom = n0.c(context, typedArrayObtainStyledAttributes2.getString(com.narvii.lib.R.styleable.FlexLayout_Layout_layout_bottom), "layout_bottom");
            this.centerX = n0.c(context, typedArrayObtainStyledAttributes2.getString(com.narvii.lib.R.styleable.FlexLayout_Layout_layout_centerX), "layout_centerX");
            this.centerY = n0.c(context, typedArrayObtainStyledAttributes2.getString(com.narvii.lib.R.styleable.FlexLayout_Layout_layout_centerY), "layout_centerY");
            String string = typedArrayObtainStyledAttributes2.getString(com.narvii.lib.R.styleable.FlexLayout_Layout_layout_width);
            if ("match_parent".equals(string) || "fill_parent".equals(string)) {
                ((ViewGroup.LayoutParams) this).width = -1;
            } else if ("wrap_content".equals(string)) {
                ((ViewGroup.LayoutParams) this).width = -2;
            } else {
                this.width2 = n0.c(context, string, "layout_width");
            }
            String string2 = typedArrayObtainStyledAttributes2.getString(com.narvii.lib.R.styleable.FlexLayout_Layout_layout_height);
            if ("match_parent".equals(string2) || "fill_parent".equals(string2)) {
                ((ViewGroup.LayoutParams) this).height = -1;
            } else if ("wrap_content".equals(string2)) {
                ((ViewGroup.LayoutParams) this).height = -2;
            } else {
                this.height2 = n0.c(context, string2, "layout_height");
            }
            typedArrayObtainStyledAttributes2.recycle();
            n0 n0Var = this.left;
            int i10 = n0Var != null ? 1 : 0;
            n0 n0Var2 = this.right;
            i10 = n0Var2 != null ? i10 + 1 : i10;
            n0 n0Var3 = this.centerX;
            i10 = n0Var3 != null ? i10 + 1 : i10;
            n0 n0Var4 = this.width2;
            i10 = (n0Var4 == null && ((ViewGroup.LayoutParams) this).width == UNSPECIFIED) ? i10 : i10 + 1;
            if (i10 < 1) {
                throw new IllegalArgumentException("no LayoutParams in layout_left|layout_right|layout_centerX|layout_width");
            }
            if (i10 > 2) {
                if (n0Var != null && n0Var2 != null) {
                    this.width2 = null;
                    ((ViewGroup.LayoutParams) this).width = UNSPECIFIED;
                } else {
                    if (n0Var3 == null || (n0Var4 == null && ((ViewGroup.LayoutParams) this).width == UNSPECIFIED)) {
                        throw new IllegalArgumentException("too many restriction on LayoutParams");
                    }
                    this.left = null;
                    this.right = null;
                }
            }
            n0 n0Var5 = this.top;
            int i11 = n0Var5 != null ? 1 : 0;
            n0 n0Var6 = this.bottom;
            i11 = n0Var6 != null ? i11 + 1 : i11;
            n0 n0Var7 = this.centerY;
            i11 = n0Var7 != null ? i11 + 1 : i11;
            n0 n0Var8 = this.height2;
            i11 = (n0Var8 == null && ((ViewGroup.LayoutParams) this).height == UNSPECIFIED) ? i11 : i11 + 1;
            if (i11 < 1) {
                throw new IllegalArgumentException("no LayoutParams in layout_top|layout_bottom|layout_centerY|layout_height");
            }
            if (i11 > 2) {
                if (n0Var5 != null && n0Var6 != null) {
                    this.height2 = null;
                    ((ViewGroup.LayoutParams) this).height = UNSPECIFIED;
                } else {
                    if (n0Var7 == null || (n0Var8 == null && ((ViewGroup.LayoutParams) this).height == UNSPECIFIED)) {
                        throw new IllegalArgumentException("too many restriction on LayoutParams");
                    }
                    this.top = null;
                    this.bottom = null;
                }
            }
        }

        float a() {
            float f = this.mBottom;
            if (f == f) {
                return f;
            }
            float f6 = this.mHeight;
            if (f6 == f6) {
                float f7 = this.mTop;
                if (f7 == f7) {
                    return f7 + f6;
                }
                float f10 = this.mCenterY;
                if (f10 == f10) {
                    return f10 + (f6 / 2.0f);
                }
            }
            float f11 = this.mCenterY;
            if (f11 != f11) {
                return Float.NaN;
            }
            float f12 = this.mTop;
            if (f12 == f12) {
                return (f11 * 2.0f) - f12;
            }
            return Float.NaN;
        }

        float b() {
            float f = this.mCenterX;
            if (f == f) {
                return f;
            }
            float f6 = this.mWidth;
            if (f6 == f6) {
                float f7 = this.mLeft;
                if (f7 == f7) {
                    return f7 + (f6 / 2.0f);
                }
                float f10 = this.mRight;
                if (f10 == f10) {
                    return f10 - (f6 / 2.0f);
                }
            }
            float f11 = this.mLeft;
            if (f11 != f11) {
                return Float.NaN;
            }
            float f12 = this.mRight;
            if (f12 == f12) {
                return (f11 + f12) / 2.0f;
            }
            return Float.NaN;
        }

        float c() {
            float f = this.mCenterY;
            if (f == f) {
                return f;
            }
            float f6 = this.mHeight;
            if (f6 == f6) {
                float f7 = this.mTop;
                if (f7 == f7) {
                    return f7 + (f6 / 2.0f);
                }
                float f10 = this.mBottom;
                if (f10 == f10) {
                    return f10 - (f6 / 2.0f);
                }
            }
            float f11 = this.mTop;
            if (f11 != f11) {
                return Float.NaN;
            }
            float f12 = this.mBottom;
            if (f12 == f12) {
                return (f11 + f12) / 2.0f;
            }
            return Float.NaN;
        }

        float d() {
            float f = this.mHeight;
            if (f == f) {
                return f;
            }
            float f6 = this.mTop;
            if (f6 == f6) {
                float f7 = this.mBottom;
                if (f7 == f7) {
                    return f7 - f6;
                }
                float f10 = this.mCenterY;
                if (f10 == f10) {
                    return (f10 - f6) * 2.0f;
                }
            }
            float f11 = this.mBottom;
            if (f11 != f11) {
                return Float.NaN;
            }
            float f12 = this.mCenterY;
            if (f12 == f12) {
                return (f11 - f12) * 2.0f;
            }
            return Float.NaN;
        }

        float e() {
            float f = this.mLeft;
            if (f == f) {
                return f;
            }
            float f6 = this.mWidth;
            if (f6 == f6) {
                float f7 = this.mRight;
                if (f7 == f7) {
                    return f7 - f6;
                }
                float f10 = this.mCenterX;
                if (f10 == f10) {
                    return f10 - (f6 / 2.0f);
                }
            }
            float f11 = this.mCenterX;
            if (f11 != f11) {
                return Float.NaN;
            }
            float f12 = this.mRight;
            if (f12 == f12) {
                return (f11 * 2.0f) - f12;
            }
            return Float.NaN;
        }

        float f() {
            float f = this.mRight;
            if (f == f) {
                return f;
            }
            float f6 = this.mWidth;
            if (f6 == f6) {
                float f7 = this.mLeft;
                if (f7 == f7) {
                    return f7 + f6;
                }
                float f10 = this.mCenterX;
                if (f10 == f10) {
                    return f10 + (f6 / 2.0f);
                }
            }
            float f11 = this.mCenterX;
            if (f11 != f11) {
                return Float.NaN;
            }
            float f12 = this.mLeft;
            if (f12 == f12) {
                return (f11 * 2.0f) - f12;
            }
            return Float.NaN;
        }

        float g() {
            float f = this.mTop;
            if (f == f) {
                return f;
            }
            float f6 = this.mHeight;
            if (f6 == f6) {
                float f7 = this.mBottom;
                if (f7 == f7) {
                    return f7 - f6;
                }
                float f10 = this.mCenterY;
                if (f10 == f10) {
                    return f10 - (f6 / 2.0f);
                }
            }
            float f11 = this.mCenterY;
            if (f11 != f11) {
                return Float.NaN;
            }
            float f12 = this.mBottom;
            if (f12 == f12) {
                return (f11 * 2.0f) - f12;
            }
            return Float.NaN;
        }

        float h() {
            float f = this.mWidth;
            if (f == f) {
                return f;
            }
            float f6 = this.mLeft;
            if (f6 == f6) {
                float f7 = this.mRight;
                if (f7 == f7) {
                    return f7 - f6;
                }
                float f10 = this.mCenterX;
                if (f10 == f10) {
                    return (f10 - f6) * 2.0f;
                }
            }
            float f11 = this.mRight;
            if (f11 != f11) {
                return Float.NaN;
            }
            float f12 = this.mCenterX;
            if (f12 == f12) {
                return (f11 - f12) * 2.0f;
            }
            return Float.NaN;
        }

        boolean j() {
            float f = this.mLeft;
            int i10 = f == f ? 1 : 0;
            float f6 = this.mRight;
            if (f6 == f6) {
                i10++;
            }
            float f7 = this.mWidth;
            if (f7 == f7) {
                i10++;
            }
            float f10 = this.mCenterX;
            if (f10 == f10) {
                i10++;
            }
            return i10 >= 2;
        }

        boolean k() {
            float f = this.mTop;
            int i10 = f == f ? 1 : 0;
            float f6 = this.mBottom;
            if (f6 == f6) {
                i10++;
            }
            float f7 = this.mHeight;
            if (f7 == f7) {
                i10++;
            }
            float f10 = this.mCenterY;
            if (f10 == f10) {
                i10++;
            }
            return i10 >= 2;
        }

        void l() {
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

        boolean i() {
            if (j() && k()) {
                return true;
            }
            return false;
        }

        public l0(int i10, int i11) {
            super(i10, i11);
        }

        public l0(ViewGroup.LayoutParams layoutParams) {
            super(layoutParams);
        }
    }

    class m extends m0 {
        m(String str, int i10, int i11, int i12, int i13) {
            super(str, i10, i11, i12, i13);
        }

        @Override // com.github.mmin18.widget.FlexLayout.m0
        public float a(FlexLayout flexLayout, int i10, int i11, float f, float f6) {
            return TypedValue.applyDimension(0, f, flexLayout.getResources().getDisplayMetrics());
        }
    }

    static abstract class m0 {
        public static final int ASSOC_LEFT = 1;
        public static final int ASSOC_RIGHT = 2;
        public static final int FLAG_FUNCTION = 1;
        public final int argc;
        public final int assoc;
        public final int flag;
        public final String op;
        public final int prec;

        public abstract float a(FlexLayout flexLayout, int i10, int i11, float f, float f6);

        public String toString() {
            return this.op;
        }

        public m0(String str, int i10, int i11, int i12, int i13) {
            this.op = str;
            this.prec = i10;
            this.assoc = i11;
            this.argc = i12;
            this.flag = i13;
        }
    }

    class n extends m0 {
        n(String str, int i10, int i11, int i12, int i13) {
            super(str, i10, i11, i12, i13);
        }

        @Override // com.github.mmin18.widget.FlexLayout.m0
        public float a(FlexLayout flexLayout, int i10, int i11, float f, float f6) {
            return TypedValue.applyDimension(3, f, flexLayout.getResources().getDisplayMetrics());
        }
    }

    class o extends m0 {
        o(String str, int i10, int i11, int i12, int i13) {
            super(str, i10, i11, i12, i13);
        }

        @Override // com.github.mmin18.widget.FlexLayout.m0
        public float a(FlexLayout flexLayout, int i10, int i11, float f, float f6) {
            return TypedValue.applyDimension(5, f, flexLayout.getResources().getDisplayMetrics());
        }
    }

    class p extends m0 {
        p(String str, int i10, int i11, int i12, int i13) {
            super(str, i10, i11, i12, i13);
        }

        @Override // com.github.mmin18.widget.FlexLayout.m0
        public float a(FlexLayout flexLayout, int i10, int i11, float f, float f6) {
            return TypedValue.applyDimension(4, f, flexLayout.getResources().getDisplayMetrics());
        }
    }

    class q extends m0 {
        q(String str, int i10, int i11, int i12, int i13) {
            super(str, i10, i11, i12, i13);
        }

        @Override // com.github.mmin18.widget.FlexLayout.m0
        public float a(FlexLayout flexLayout, int i10, int i11, float f, float f6) {
            return Math.max(f, f6);
        }
    }

    class r extends m0 {
        r(String str, int i10, int i11, int i12, int i13) {
            super(str, i10, i11, i12, i13);
        }

        @Override // com.github.mmin18.widget.FlexLayout.m0
        public float a(FlexLayout flexLayout, int i10, int i11, float f, float f6) {
            return Math.min(f, f6);
        }
    }

    class s extends m0 {
        s(String str, int i10, int i11, int i12, int i13) {
            super(str, i10, i11, i12, i13);
        }

        @Override // com.github.mmin18.widget.FlexLayout.m0
        public float a(FlexLayout flexLayout, int i10, int i11, float f, float f6) {
            return Math.round(f);
        }
    }

    class t extends m0 {
        @Override // com.github.mmin18.widget.FlexLayout.m0
        public float a(FlexLayout flexLayout, int i10, int i11, float f, float f6) {
            return (float) Math.ceil(f);
        }

        t(String str, int i10, int i11, int i12, int i13) {
            super(str, i10, i11, i12, i13);
        }
    }

    class u extends m0 {
        @Override // com.github.mmin18.widget.FlexLayout.m0
        public float a(FlexLayout flexLayout, int i10, int i11, float f, float f6) {
            return (float) Math.floor(f);
        }

        u(String str, int i10, int i11, int i12, int i13) {
            super(str, i10, i11, i12, i13);
        }
    }

    class v extends m0 {
        @Override // com.github.mmin18.widget.FlexLayout.m0
        public float a(FlexLayout flexLayout, int i10, int i11, float f, float f6) {
            return f / f6;
        }

        v(String str, int i10, int i11, int i12, int i13) {
            super(str, i10, i11, i12, i13);
        }
    }

    class w extends m0 {
        w(String str, int i10, int i11, int i12, int i13) {
            super(str, i10, i11, i12, i13);
        }

        @Override // com.github.mmin18.widget.FlexLayout.m0
        public float a(FlexLayout flexLayout, int i10, int i11, float f, float f6) {
            return Math.abs(f);
        }
    }

    class x extends m0 {
        @Override // com.github.mmin18.widget.FlexLayout.m0
        public float a(FlexLayout flexLayout, int i10, int i11, float f, float f6) {
            return f % f6;
        }

        x(String str, int i10, int i11, int i12, int i13) {
            super(str, i10, i11, i12, i13);
        }
    }

    class y extends m0 {
        @Override // com.github.mmin18.widget.FlexLayout.m0
        public float a(FlexLayout flexLayout, int i10, int i11, float f, float f6) {
            return (float) Math.pow(f, f6);
        }

        y(String str, int i10, int i11, int i12, int i13) {
            super(str, i10, i11, i12, i13);
        }
    }

    class z extends m0 {
        @Override // com.github.mmin18.widget.FlexLayout.m0
        public float a(FlexLayout flexLayout, int i10, int i11, float f, float f6) {
            return f;
        }

        z(String str, int i10, int i11, int i12, int i13) {
            super(str, i10, i11, i12, i13);
        }
    }

    static {
        k kVar = new k("*", 8, 1, 2, 0);
        MUL = kVar;
        v vVar = new v(com.google.firebase.sessions.settings.c.FORWARD_SLASH_STRING, 8, 1, 2, 0);
        DIV = vVar;
        e0 e0Var = new e0("%", 8, 2, 1, 0);
        PERC = e0Var;
        f0 f0Var = new f0(org.slf4j.c.ANY_NON_NULL_MARKER, 7, 1, 2, 0);
        ADD = f0Var;
        g0 g0Var = new g0("-", 7, 1, 2, 0);
        SUB = g0Var;
        h0 h0Var = new h0("!", 9, 2, 1, 0);
        NOT = h0Var;
        i0 i0Var = new i0("<", 6, 1, 2, 0);
        CP_LT = i0Var;
        j0 j0Var = new j0("<=", 6, 1, 2, 0);
        CP_LT_EQ = j0Var;
        k0 k0Var = new k0(">", 6, 1, 2, 0);
        CP_GT = k0Var;
        a aVar = new a(">=", 6, 1, 2, 0);
        CP_GT_EQ = aVar;
        b bVar = new b("==", 5, 1, 2, 0);
        CP_EQ = bVar;
        c cVar = new c("!=", 5, 1, 2, 0);
        CP_NOT_EQ = cVar;
        d dVar = new d("&&", 4, 1, 2, 0);
        LOG_AND = dVar;
        e eVar = new e("||", 3, 1, 2, 0);
        LOG_OR = eVar;
        f fVar = new f("(", 0, 0, 0, 0);
        BL = fVar;
        g gVar = new g(")", 0, 0, 0, 0);
        BR = gVar;
        h hVar = new h(",", 0, 1, 0, 0);
        COMMA = hVar;
        i iVar = new i("sp", 10, 2, 1, 0);
        U_SP = iVar;
        j jVar = new j("dp", 10, 2, 1, 0);
        U_DP = jVar;
        l lVar = new l("dip", 10, 2, 1, 0);
        U_DIP = lVar;
        m mVar = new m("px", 10, 2, 1, 0);
        U_PX = mVar;
        n nVar = new n("pt", 10, 2, 1, 0);
        U_PT = nVar;
        o oVar = new o("mm", 10, 2, 1, 0);
        U_MM = oVar;
        p pVar = new p("in", 10, 2, 1, 0);
        U_IN = pVar;
        q qVar = new q("max", 0, 0, 2, 1);
        F_MAX = qVar;
        r rVar = new r("min", 0, 0, 2, 1);
        F_MIN = rVar;
        s sVar = new s("round", 0, 0, 1, 1);
        F_ROUND = sVar;
        t tVar = new t("ceil", 0, 0, 1, 1);
        F_CEIL = tVar;
        u uVar = new u("floor", 0, 0, 1, 1);
        F_FLOOR = uVar;
        w wVar = new w("abs", 0, 0, 1, 1);
        F_ABS = wVar;
        x xVar = new x("mod", 0, 0, 2, 1);
        F_MOD = xVar;
        y yVar = new y("pow", 0, 0, 2, 1);
        F_POW = yVar;
        z zVar = new z("?", 2, 2, 1, 0);
        X_COND1 = zVar;
        a0 a0Var = new a0(":", 1, 1, 3, 0);
        X_COND2 = a0Var;
        b0 b0Var = new b0("match_parent", 0, 0, 0, 0);
        X_MATCH_PARENT = b0Var;
        c0 c0Var = new c0("fill_parent", 0, 0, 0, 0);
        X_FILL_PARENT = c0Var;
        d0 d0Var = new d0("wrap_content", 0, 0, 0, 0);
        X_WRAP_CONTENT = d0Var;
        OPS = new m0[]{f0Var, g0Var, vVar, kVar, e0Var, h0Var, i0Var, j0Var, k0Var, aVar, bVar, cVar, dVar, eVar, fVar, gVar, hVar, iVar, jVar, lVar, mVar, nVar, oVar, pVar, qVar, rVar, sVar, tVar, uVar, wVar, xVar, yVar, zVar, a0Var, b0Var, c0Var, d0Var};
        DEBUG = null;
        EDIT_MODE_ID_MAP = null;
        EDIT_MODE_CUR_ID = 251789312;
    }

    public FlexLayout(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    static int getEditModeId(String str) {
        Integer num = EDIT_MODE_ID_MAP.get(str);
        if (num != null) {
            return num.intValue();
        }
        int i10 = EDIT_MODE_CUR_ID;
        EDIT_MODE_CUR_ID = i10 + 1;
        EDIT_MODE_ID_MAP.put(str, Integer.valueOf(i10));
        return i10;
    }

    static String getEditModeIdName(int i10) {
        for (Map.Entry<String, Integer> entry : EDIT_MODE_ID_MAP.entrySet()) {
            if (entry.getValue().intValue() == i10) {
                return entry.getKey();
            }
        }
        return null;
    }

    static boolean isDebug(Context context) {
        if (DEBUG == null && context != null) {
            DEBUG = Boolean.valueOf((context.getApplicationInfo().flags & 2) != 0);
        }
        return DEBUG == Boolean.TRUE;
    }

    static boolean measureChild(FlexLayout flexLayout, View view, l0 l0Var, int i10, int i11) {
        if (i10 == l0.UNSPECIFIED) {
            float fH = l0Var.h();
            if (fH == fH) {
                i10 = Math.round(fH);
            } else {
                if (!onlyRefSelf(l0Var.width2) || !onlyRefSelf(l0Var.left) || !onlyRefSelf(l0Var.right) || !onlyRefSelf(l0Var.centerX)) {
                    return false;
                }
                i10 = -2;
            }
        }
        if (i11 == l0.UNSPECIFIED) {
            float fD = l0Var.d();
            if (fD == fD) {
                i11 = Math.round(fD);
            } else {
                if (!onlyRefSelf(l0Var.height2) || !onlyRefSelf(l0Var.top) || !onlyRefSelf(l0Var.bottom) || !onlyRefSelf(l0Var.centerY)) {
                    return false;
                }
                i11 = -2;
            }
        }
        int i12 = flexLayout.myWidth;
        int childMeasureSpec = i12 == -1 ? ViewGroup.getChildMeasureSpec(flexLayout.myWidthMeasureSpec, flexLayout.getPaddingLeft() + flexLayout.getPaddingRight(), i10) : ViewGroup.getChildMeasureSpec(View.MeasureSpec.makeMeasureSpec(i12, 1073741824), 0, i10);
        int i13 = flexLayout.myHeight;
        view.measure(childMeasureSpec, i13 == -1 ? ViewGroup.getChildMeasureSpec(flexLayout.myHeightMeasureSpec, flexLayout.getPaddingTop() + flexLayout.getPaddingBottom(), i11) : ViewGroup.getChildMeasureSpec(View.MeasureSpec.makeMeasureSpec(i13, 1073741824), 0, i11));
        l0Var.mMeasuredWidth = view.getMeasuredWidth();
        l0Var.mMeasuredHeight = view.getMeasuredHeight();
        return true;
    }

    static boolean onlyRefSelf(n0 n0Var) {
        if (n0Var == null) {
            return true;
        }
        for (Object obj : n0Var.list) {
            if ((obj instanceof o0) && ((o0) obj).target != 0) {
                return false;
            }
        }
        return true;
    }

    @Override // android.view.ViewGroup
    protected boolean checkLayoutParams(ViewGroup.LayoutParams layoutParams) {
        return layoutParams instanceof l0;
    }

    @Override // android.view.ViewGroup
    protected ViewGroup.LayoutParams generateDefaultLayoutParams() {
        return new l0(-2, -2);
    }

    @Override // android.view.ViewGroup
    public l0 generateLayoutParams(AttributeSet attributeSet) {
        return new l0(getContext(), attributeSet);
    }

    /* JADX WARN: Code duplicated, block: B:235:0x0381  */
    /* JADX WARN: Code duplicated, block: B:237:0x0388  */
    /* JADX WARN: Code duplicated, block: B:238:0x0391  */
    /* JADX WARN: Code duplicated, block: B:240:0x0394  */
    /* JADX WARN: Code duplicated, block: B:241:0x039b  */
    /* JADX WARN: Code duplicated, block: B:248:0x03be  */
    /* JADX WARN: Code duplicated, block: B:250:0x03c3  */
    /* JADX WARN: Code duplicated, block: B:251:0x03cc  */
    /* JADX WARN: Code duplicated, block: B:253:0x03d1  */
    /* JADX WARN: Code duplicated, block: B:254:0x03d8  */
    @Override // android.view.View
    protected void onMeasure(int i10, int i11) {
        int i12;
        int i13;
        int i14;
        int i15;
        int i16;
        int i17;
        int i18;
        int iMakeMeasureSpec;
        int i19;
        int iMakeMeasureSpec2;
        int i20;
        int i21;
        int i22;
        int i23;
        int i24;
        super.onMeasure(i10, i11);
        int paddingLeft = getPaddingLeft();
        int paddingRight = getPaddingRight();
        int paddingTop = getPaddingTop();
        int paddingBottom = getPaddingBottom();
        int mode = View.MeasureSpec.getMode(i10);
        int mode2 = View.MeasureSpec.getMode(i11);
        int size = View.MeasureSpec.getSize(i10);
        int size2 = View.MeasureSpec.getSize(i11);
        this.myWidthMeasureSpec = i10;
        this.myHeightMeasureSpec = i11;
        if (mode == 1073741824) {
            i12 = (size - paddingLeft) - paddingRight;
            this.myWidth = i12;
        } else if (mode == Integer.MIN_VALUE) {
            this.myWidth = -1;
            i12 = (size - paddingLeft) - paddingRight;
        } else {
            this.myWidth = -1;
            i12 = -1;
        }
        if (mode2 == 1073741824) {
            i13 = (size2 - paddingTop) - paddingBottom;
            this.myHeight = i13;
        } else if (mode2 == Integer.MIN_VALUE) {
            this.myHeight = -1;
            i13 = (size2 - paddingTop) - paddingBottom;
        } else {
            this.myHeight = -1;
            i13 = -1;
        }
        int childCount = getChildCount();
        for (int i25 = 0; i25 < childCount; i25++) {
            View childAt = getChildAt(i25);
            l0 l0Var = (l0) childAt.getLayoutParams();
            l0Var.l();
            if (childAt.getVisibility() == 8) {
                l0Var.mWidth = 0.0f;
                l0Var.mHeight = 0.0f;
            }
            if (l0Var.left == null) {
                int i26 = l0Var.right != null ? 1 : 0;
                if (l0Var.centerX != null) {
                    i26++;
                }
                if (l0Var.width2 != null || ((ViewGroup.LayoutParams) l0Var).width != l0.UNSPECIFIED) {
                    i26++;
                }
                if (i26 < 2) {
                    l0Var.mLeft = 0.0f;
                }
            }
            if (l0Var.top == null) {
                int i27 = l0Var.bottom != null ? 1 : 0;
                if (l0Var.centerY != null) {
                    i27++;
                }
                if (l0Var.height2 != null || ((ViewGroup.LayoutParams) l0Var).height != l0.UNSPECIFIED) {
                    i27++;
                }
                if (i27 < 2) {
                    l0Var.mTop = 0.0f;
                }
            }
        }
        boolean z6 = childCount == 0;
        int i28 = 0;
        while (true) {
            if (i28 >= childCount * 4) {
                i14 = paddingRight;
                i15 = paddingTop;
                i16 = paddingBottom;
                if (z6) {
                    break;
                }
                StringBuilder sb = new StringBuilder();
                for (int i29 = 0; i29 < childCount; i29++) {
                    if (!((l0) getChildAt(i29).getLayoutParams()).i()) {
                        if (sb.length() > 0) {
                            sb.append(kotlinx.serialization.json.internal.b.COMMA);
                        }
                        sb.append(i29);
                    }
                }
                throw new IllegalStateException("incomplete layout, circular dependency? (index=" + ((Object) sb) + ")");
            }
            int i30 = -1;
            int i31 = 0;
            int i32 = 0;
            int i33 = 0;
            while (i31 < childCount) {
                View childAt2 = getChildAt(i31);
                l0 l0Var2 = (l0) childAt2.getLayoutParams();
                int i34 = paddingBottom;
                n0 n0Var = l0Var2.left;
                if (n0Var != null) {
                    i22 = paddingTop;
                    float f6 = l0Var2.mLeft;
                    if (f6 != f6) {
                        i21 = paddingRight;
                        float fB = n0Var.b(this, i31, 0, l0Var2.positionDescription);
                        if (fB == fB) {
                            l0Var2.mLeft = fB;
                            i33++;
                        }
                    } else {
                        i21 = paddingRight;
                    }
                } else {
                    i21 = paddingRight;
                    i22 = paddingTop;
                }
                n0 n0Var2 = l0Var2.right;
                if (n0Var2 != null) {
                    float f7 = l0Var2.mRight;
                    if (f7 != f7) {
                        float fB2 = n0Var2.b(this, i31, 0, l0Var2.positionDescription);
                        if (fB2 == fB2) {
                            l0Var2.mRight = fB2;
                            i33++;
                        }
                    }
                }
                n0 n0Var3 = l0Var2.top;
                if (n0Var3 != null) {
                    float f10 = l0Var2.mTop;
                    if (f10 != f10) {
                        float fB3 = n0Var3.b(this, i31, 1, l0Var2.positionDescription);
                        if (fB3 == fB3) {
                            l0Var2.mTop = fB3;
                            i33++;
                        }
                    }
                }
                n0 n0Var4 = l0Var2.bottom;
                if (n0Var4 != null) {
                    float f11 = l0Var2.mBottom;
                    if (f11 != f11) {
                        float fB4 = n0Var4.b(this, i31, 1, l0Var2.positionDescription);
                        if (fB4 == fB4) {
                            l0Var2.mBottom = fB4;
                            i33++;
                        }
                    }
                }
                n0 n0Var5 = l0Var2.centerX;
                if (n0Var5 != null) {
                    float f12 = l0Var2.mCenterX;
                    if (f12 != f12) {
                        float fB5 = n0Var5.b(this, i31, 0, l0Var2.positionDescription);
                        if (fB5 == fB5) {
                            l0Var2.mCenterX = fB5;
                            i33++;
                        }
                    }
                }
                n0 n0Var6 = l0Var2.centerY;
                if (n0Var6 != null) {
                    float f13 = l0Var2.mCenterY;
                    if (f13 != f13) {
                        float fB6 = n0Var6.b(this, i31, 1, l0Var2.positionDescription);
                        if (fB6 == fB6) {
                            l0Var2.mCenterY = fB6;
                            i33++;
                        }
                    }
                }
                float f14 = l0Var2.mWidth;
                if (f14 != f14) {
                    n0 n0Var7 = l0Var2.width2;
                    if (n0Var7 != null) {
                        float fB7 = n0Var7.b(this, i31, 0, l0Var2.positionDescription);
                        if (fB7 == fB7) {
                            l0Var2.mWidth = fB7;
                            i33++;
                        }
                    } else {
                        int i35 = ((ViewGroup.LayoutParams) l0Var2).width;
                        if (i35 != l0.UNSPECIFIED) {
                            if (i35 == -1 && (i24 = this.myWidth) != -1) {
                                l0Var2.mWidth = i24;
                            } else if (i35 >= 0) {
                                l0Var2.mWidth = i35;
                            } else {
                                if (l0Var2.mMeasuredWidth == -1 && measureChild(this, childAt2, l0Var2, i35, ((ViewGroup.LayoutParams) l0Var2).height)) {
                                    i33++;
                                }
                                int i36 = l0Var2.mMeasuredWidth;
                                if (i36 != -1 && ((ViewGroup.LayoutParams) l0Var2).width == -2) {
                                    l0Var2.mWidth = i36;
                                }
                            }
                            i33++;
                        }
                    }
                }
                float f15 = l0Var2.mHeight;
                if (f15 != f15) {
                    n0 n0Var8 = l0Var2.height2;
                    if (n0Var8 != null) {
                        float fB8 = n0Var8.b(this, i31, 1, l0Var2.positionDescription);
                        if (fB8 == fB8) {
                            l0Var2.mHeight = fB8;
                            i33++;
                        }
                    } else {
                        int i37 = ((ViewGroup.LayoutParams) l0Var2).height;
                        if (i37 != l0.UNSPECIFIED) {
                            if (i37 == -1 && (i23 = this.myHeight) != -1) {
                                l0Var2.mHeight = i23;
                            } else if (i37 >= 0) {
                                l0Var2.mHeight = i37;
                            } else {
                                if (l0Var2.mMeasuredHeight == -1 && measureChild(this, childAt2, l0Var2, ((ViewGroup.LayoutParams) l0Var2).width, i37)) {
                                    i33++;
                                }
                                int i38 = l0Var2.mMeasuredHeight;
                                if (i38 != -1 && ((ViewGroup.LayoutParams) l0Var2).height == -2) {
                                    l0Var2.mHeight = i38;
                                }
                            }
                            i33++;
                        }
                    }
                }
                if (l0Var2.i()) {
                    i32++;
                } else if (i30 == -1) {
                    i30 = i31;
                }
                i31++;
                paddingBottom = i34;
                paddingTop = i22;
                paddingRight = i21;
            }
            i14 = paddingRight;
            i15 = paddingTop;
            i16 = paddingBottom;
            if (i32 == childCount && this.myWidth != -1 && this.myHeight != -1) {
                break;
            }
            if (i33 == 0) {
                if (this.myWidth != -1 && this.myHeight != -1) {
                    throw new IllegalStateException("incomplete layout, circular dependency? (index=" + i30 + ")");
                }
                int iMin = 0;
                int iMin2 = 0;
                for (int i39 = 0; i39 < childCount; i39++) {
                    l0 l0Var3 = (l0) getChildAt(i39).getLayoutParams();
                    float f16 = l0Var3.f();
                    if (f16 == f16) {
                        iMin = Math.max(iMin, Math.round(f16));
                    } else if (l0Var3.mMeasuredWidth != -1) {
                        float fE = l0Var3.e();
                        iMin = fE == fE ? Math.max(iMin, Math.round(fE + l0Var3.mMeasuredWidth)) : Math.max(iMin, l0Var3.mMeasuredWidth);
                    }
                    float fA = l0Var3.a();
                    if (fA == fA) {
                        iMin2 = Math.max(iMin2, Math.round(fA));
                    } else {
                        if (l0Var3.mMeasuredHeight != -1) {
                            float fG = l0Var3.g();
                            iMin2 = fG == fG ? Math.max(iMin2, Math.round(fG + l0Var3.mMeasuredHeight)) : Math.max(iMin2, l0Var3.mMeasuredHeight);
                        } else {
                            i20 = -1;
                        }
                        l0Var3.mMeasuredWidth = i20;
                        l0Var3.mMeasuredHeight = i20;
                    }
                    i20 = -1;
                    l0Var3.mMeasuredWidth = i20;
                    l0Var3.mMeasuredHeight = i20;
                }
                if (this.myWidth == -1) {
                    if (i12 != -1) {
                        iMin = Math.min(iMin, i12);
                    }
                    this.myWidth = iMin;
                }
                if (this.myHeight == -1) {
                    if (i13 != -1) {
                        iMin2 = Math.min(iMin2, i13);
                    }
                    this.myHeight = iMin2;
                }
            }
            i28++;
            paddingBottom = i16;
            paddingTop = i15;
            paddingRight = i14;
        }
        for (int i40 = 0; i40 < childCount; i40++) {
            View childAt3 = getChildAt(i40);
            l0 l0Var4 = (l0) childAt3.getLayoutParams();
            if (l0Var4.width2 != null) {
                float f17 = l0Var4.mWidth;
                if (f17 == f17) {
                    i17 = 1073741824;
                    iMakeMeasureSpec = View.MeasureSpec.makeMeasureSpec(Math.round(f17), 1073741824);
                } else {
                    i17 = 1073741824;
                    i18 = ((ViewGroup.LayoutParams) l0Var4).width;
                    if (i18 == -2) {
                        iMakeMeasureSpec = View.MeasureSpec.makeMeasureSpec(this.myWidth, Integer.MIN_VALUE);
                    } else if (i18 == -1) {
                        iMakeMeasureSpec = View.MeasureSpec.makeMeasureSpec(this.myWidth, 1073741824);
                    } else {
                        iMakeMeasureSpec = View.MeasureSpec.makeMeasureSpec(Math.round(l0Var4.h()), 1073741824);
                    }
                }
            } else {
                i17 = 1073741824;
                i18 = ((ViewGroup.LayoutParams) l0Var4).width;
                if (i18 == -2) {
                    iMakeMeasureSpec = View.MeasureSpec.makeMeasureSpec(this.myWidth, Integer.MIN_VALUE);
                } else if (i18 == -1) {
                    iMakeMeasureSpec = View.MeasureSpec.makeMeasureSpec(this.myWidth, 1073741824);
                } else {
                    iMakeMeasureSpec = View.MeasureSpec.makeMeasureSpec(Math.round(l0Var4.h()), 1073741824);
                }
            }
            if (l0Var4.height2 != null) {
                float f18 = l0Var4.mHeight;
                if (f18 == f18) {
                    iMakeMeasureSpec2 = View.MeasureSpec.makeMeasureSpec(Math.round(f18), i17);
                } else {
                    i19 = ((ViewGroup.LayoutParams) l0Var4).height;
                    if (i19 == -2) {
                        iMakeMeasureSpec2 = View.MeasureSpec.makeMeasureSpec(this.myHeight, Integer.MIN_VALUE);
                    } else if (i19 == -1) {
                        iMakeMeasureSpec2 = View.MeasureSpec.makeMeasureSpec(this.myHeight, i17);
                    } else {
                        iMakeMeasureSpec2 = View.MeasureSpec.makeMeasureSpec(Math.round(l0Var4.d()), i17);
                    }
                }
            } else {
                i19 = ((ViewGroup.LayoutParams) l0Var4).height;
                if (i19 == -2) {
                    iMakeMeasureSpec2 = View.MeasureSpec.makeMeasureSpec(this.myHeight, Integer.MIN_VALUE);
                } else if (i19 == -1) {
                    iMakeMeasureSpec2 = View.MeasureSpec.makeMeasureSpec(this.myHeight, i17);
                } else {
                    iMakeMeasureSpec2 = View.MeasureSpec.makeMeasureSpec(Math.round(l0Var4.d()), i17);
                }
            }
            childAt3.measure(iMakeMeasureSpec, iMakeMeasureSpec2);
        }
        setMeasuredDimension(this.myWidth + paddingLeft + i14, this.myHeight + i15 + i16);
    }

    public FlexLayout(Context context, AttributeSet attributeSet, int i10) {
        super(context, attributeSet, i10);
        if (isInEditMode()) {
            DEBUG = Boolean.TRUE;
            if (EDIT_MODE_ID_MAP == null) {
                EDIT_MODE_ID_MAP = new HashMap<>();
            }
        }
    }

    @Override // android.view.ViewGroup
    protected ViewGroup.LayoutParams generateLayoutParams(ViewGroup.LayoutParams layoutParams) {
        return new l0(layoutParams);
    }

    boolean isRtl() {
        if (getLayoutDirection() == 1) {
            return true;
        }
        return false;
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void onLayout(boolean z6, int i10, int i11, int i12, int i13) {
        int paddingLeft = getPaddingLeft();
        int paddingTop = getPaddingTop();
        int childCount = getChildCount();
        for (int i14 = 0; i14 < childCount; i14++) {
            View childAt = getChildAt(i14);
            if (childAt.getVisibility() != 8) {
                l0 l0Var = (l0) childAt.getLayoutParams();
                if (isRtl()) {
                    int i15 = (i12 - i10) - paddingLeft;
                    childAt.layout(i15 - Math.round(l0Var.f()), Math.round(l0Var.g()) + paddingTop, i15 - Math.round(l0Var.e()), Math.round(l0Var.a()) + paddingTop);
                } else {
                    childAt.layout(Math.round(l0Var.e()) + paddingLeft, Math.round(l0Var.g()) + paddingTop, Math.round(l0Var.f()) + paddingLeft, Math.round(l0Var.a()) + paddingTop);
                }
            }
        }
    }
}
