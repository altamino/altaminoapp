package com.google.android.exoplayer2.ui;

import android.content.Context;
import android.text.Layout;
import android.util.AttributeSet;
import android.util.Base64;
import android.view.MotionEvent;
import android.webkit.WebView;
import android.widget.FrameLayout;
import androidx.annotation.Nullable;
import com.safedk.android.analytics.brandsafety.DetectTouchUtils;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;

/* JADX INFO: loaded from: classes3.dex */
final class d1 extends FrameLayout implements SubtitleView.a {
    private static final float CSS_LINE_HEIGHT = 1.2f;
    private static final String DEFAULT_BACKGROUND_CSS_CLASS = "default_bg";
    private float bottomPaddingFraction;
    private final c canvasSubtitleOutput;
    private float defaultTextSize;
    private int defaultTextSizeType;
    private d style;
    private List<com.google.android.exoplayer2.text.b> textCues;
    private final WebView webView;

    public d1(Context context) {
        this(context, null);
    }

    private static int b(int i10) {
        if (i10 != 1) {
            return i10 != 2 ? 0 : -100;
        }
        return -50;
    }

    private static String f(int i10) {
        if (i10 != 1) {
            return i10 != 2 ? "horizontal-tb" : "vertical-lr";
        }
        return "vertical-rl";
    }

    @Override // android.view.ViewGroup, android.view.View
    public boolean dispatchTouchEvent(MotionEvent me) {
        DetectTouchUtils.viewOnTouch("com.google.android.exoplayer", this, me);
        return super.dispatchTouchEvent(me);
    }

    @Override // android.widget.FrameLayout, android.view.View
    protected void onMeasure(int widthMeasureSpec, int heightMeasureSpec) {
        if (1 == 0) {
            setMeasuredDimension(0, 0);
        } else {
            super.onMeasure(widthMeasureSpec, heightMeasureSpec);
        }
    }

    class a extends WebView {
        @Override // android.view.ViewGroup, android.view.View
        public boolean dispatchTouchEvent(MotionEvent me) {
            DetectTouchUtils.viewOnTouch("com.google.android.exoplayer", this, me);
            return super.dispatchTouchEvent(me);
        }

        @Override // android.webkit.WebView, android.widget.AbsoluteLayout, android.view.View
        protected void onMeasure(int widthMeasureSpec, int heightMeasureSpec) {
            if (1 == 0) {
                setMeasuredDimension(0, 0);
            } else {
                super.onMeasure(widthMeasureSpec, heightMeasureSpec);
            }
        }

        a(d1 d1Var, Context context, AttributeSet attributeSet) {
            super(context, attributeSet);
        }

        @Override // android.webkit.WebView, android.view.View
        public boolean onTouchEvent(MotionEvent motionEvent) {
            super.onTouchEvent(motionEvent);
            return false;
        }

        @Override // android.view.View
        public boolean performClick() {
            super.performClick();
            return false;
        }
    }

    static /* synthetic */ class b {
        static final /* synthetic */ int[] $SwitchMap$android$text$Layout$Alignment;

        static {
            int[] iArr = new int[Layout.Alignment.values().length];
            $SwitchMap$android$text$Layout$Alignment = iArr;
            try {
                iArr[Layout.Alignment.ALIGN_NORMAL.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                $SwitchMap$android$text$Layout$Alignment[Layout.Alignment.ALIGN_OPPOSITE.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                $SwitchMap$android$text$Layout$Alignment[Layout.Alignment.ALIGN_CENTER.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
        }
    }

    public d1(Context context, @Nullable AttributeSet attributeSet) {
        super(context, attributeSet);
        this.textCues = Collections.emptyList();
        this.style = d.DEFAULT;
        this.defaultTextSize = 0.0533f;
        this.defaultTextSizeType = 0;
        this.bottomPaddingFraction = 0.08f;
        c cVar = new c(context, attributeSet);
        this.canvasSubtitleOutput = cVar;
        a aVar = new a(this, context, attributeSet);
        this.webView = aVar;
        aVar.setBackgroundColor(0);
        addView(cVar);
        addView(aVar);
    }

    private static String c(@Nullable Layout.Alignment alignment) {
        if (alignment == null) {
            return "center";
        }
        int i10 = b.$SwitchMap$android$text$Layout$Alignment[alignment.ordinal()];
        if (i10 != 1) {
            return i10 != 2 ? "center" : "end";
        }
        return "start";
    }

    private static String d(d dVar) {
        int i10 = dVar.edgeType;
        if (i10 == 1) {
            return com.google.android.exoplayer2.util.o0.z("1px 1px 0 %1$s, 1px -1px 0 %1$s, -1px 1px 0 %1$s, -1px -1px 0 %1$s", j.b(dVar.edgeColor));
        }
        if (i10 == 2) {
            return com.google.android.exoplayer2.util.o0.z("0.1em 0.12em 0.15em %s", j.b(dVar.edgeColor));
        }
        if (i10 != 3) {
            return i10 != 4 ? "unset" : com.google.android.exoplayer2.util.o0.z("-0.05em -0.05em 0.15em %s", j.b(dVar.edgeColor));
        }
        return com.google.android.exoplayer2.util.o0.z("0.06em 0.08em 0.15em %s", j.b(dVar.edgeColor));
    }

    private static String h(com.google.android.exoplayer2.text.b bVar) {
        float f = bVar.shearDegrees;
        if (f == 0.0f) {
            return "";
        }
        int i10 = bVar.verticalType;
        return com.google.android.exoplayer2.util.o0.z("%s(%.2fdeg)", (i10 == 2 || i10 == 1) ? "skewY" : "skewX", Float.valueOf(f));
    }

    /* JADX WARN: Code duplicated, block: B:25:0x00f9  */
    /* JADX WARN: Code duplicated, block: B:26:0x0108  */
    /* JADX WARN: Code duplicated, block: B:29:0x0122  */
    /* JADX WARN: Code duplicated, block: B:30:0x0125  */
    /* JADX WARN: Code duplicated, block: B:33:0x013c  */
    /* JADX WARN: Code duplicated, block: B:35:0x013f A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:36:0x0141  */
    /* JADX WARN: Code duplicated, block: B:38:0x0145 A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:40:0x0148  */
    /* JADX WARN: Code duplicated, block: B:42:0x0150 A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:49:0x015e  */
    /* JADX WARN: Code duplicated, block: B:53:0x0186  */
    /* JADX WARN: Code duplicated, block: B:59:0x01af  */
    /* JADX WARN: Code duplicated, block: B:63:0x0222  */
    /* JADX WARN: Code duplicated, block: B:64:0x023e  */
    private void i() {
        String strZ;
        int iB;
        int i10;
        float f;
        String strZ2;
        int i11;
        int i12;
        int i13;
        String str;
        String str2;
        int i14;
        String str3;
        String str4;
        int i15;
        w.b bVarA;
        Iterator it;
        w.b bVar;
        Layout.Alignment alignment;
        String str5;
        boolean z6;
        d1 d1Var = this;
        StringBuilder sb = new StringBuilder();
        int i16 = 0;
        int i17 = 1;
        float f6 = 1.2f;
        sb.append(com.google.android.exoplayer2.util.o0.z("<body><div style='-webkit-user-select:none;position:fixed;top:0;bottom:0;left:0;right:0;color:%s;font-size:%s;line-height:%.2f;text-shadow:%s;'>", j.b(d1Var.style.foregroundColor), d1Var.e(d1Var.defaultTextSizeType, d1Var.defaultTextSize), Float.valueOf(1.2f), d(d1Var.style)));
        HashMap map = new HashMap();
        map.put(j.a(DEFAULT_BACKGROUND_CSS_CLASS), com.google.android.exoplayer2.util.o0.z("background-color:%s;", j.b(d1Var.style.backgroundColor)));
        int i18 = 0;
        while (i18 < d1Var.textCues.size()) {
            com.google.android.exoplayer2.text.b bVar2 = d1Var.textCues.get(i18);
            float f7 = bVar2.position;
            float f10 = f7 != -3.4028235E38f ? f7 * 100.0f : 50.0f;
            int iB2 = b(bVar2.positionAnchor);
            float f11 = bVar2.line;
            if (f11 != -3.4028235E38f) {
                if (bVar2.lineType != i17) {
                    Object[] objArr = new Object[i17];
                    objArr[i16] = Float.valueOf(f11 * 100.0f);
                    strZ = com.google.android.exoplayer2.util.o0.z("%.2f%%", objArr);
                    iB = bVar2.verticalType == i17 ? -b(bVar2.lineAnchor) : b(bVar2.lineAnchor);
                } else if (f11 >= 0.0f) {
                    Object[] objArr2 = new Object[i17];
                    objArr2[i16] = Float.valueOf(f11 * f6);
                    strZ = com.google.android.exoplayer2.util.o0.z("%.2fem", objArr2);
                    iB = i16;
                    i10 = iB;
                } else {
                    Object[] objArr3 = new Object[i17];
                    objArr3[i16] = Float.valueOf(((-f11) - 1.0f) * f6);
                    strZ = com.google.android.exoplayer2.util.o0.z("%.2fem", objArr3);
                    iB = i16;
                    i10 = i17;
                }
                f = bVar2.size;
                if (f != -3.4028235E38f) {
                    Object[] objArr4 = new Object[i17];
                    objArr4[0] = Float.valueOf(f * 100.0f);
                    strZ2 = com.google.android.exoplayer2.util.o0.z("%.2f%%", objArr4);
                } else {
                    strZ2 = "fit-content";
                }
                String strC = c(bVar2.textAlignment);
                String strF = f(bVar2.verticalType);
                String strE = d1Var.e(bVar2.textSizeType, bVar2.textSize);
                if (bVar2.windowColorSet) {
                    i11 = bVar2.windowColor;
                } else {
                    i11 = d1Var.style.windowColor;
                }
                String strB = j.b(i11);
                i12 = iB;
                i13 = bVar2.verticalType;
                str = "right";
                str2 = "left";
                if (i13 != 1) {
                    if (i10 != 0) {
                        str = "left";
                    }
                    str2 = "top";
                    i14 = 2;
                    str3 = str;
                } else if (i13 != 2) {
                    str3 = i10 != 0 ? "bottom" : "top";
                    i14 = 2;
                } else {
                    if (i10 == 0) {
                        str = "left";
                    }
                    str2 = "top";
                    i14 = 2;
                    str3 = str;
                }
                if (i13 != i14 || i13 == 1) {
                    str4 = "height";
                    i15 = i12;
                    i12 = iB2;
                } else {
                    str4 = "width";
                    i15 = iB2;
                }
                bVarA = w.a(bVar2.text, getContext().getResources().getDisplayMetrics().density);
                it = map.keySet().iterator();
                while (it.hasNext()) {
                    Iterator it2 = it;
                    String str6 = (String) it.next();
                    w.b bVar3 = bVarA;
                    str5 = (String) map.put(str6, (String) map.get(str6));
                    if (str5 != null || str5.equals(map.get(str6))) {
                        z6 = true;
                    } else {
                        z6 = false;
                    }
                    com.google.android.exoplayer2.util.a.g(z6);
                    it = it2;
                    bVarA = bVar3;
                }
                bVar = bVarA;
                sb.append(com.google.android.exoplayer2.util.o0.z("<div style='position:absolute;z-index:%s;%s:%.2f%%;%s:%s;%s:%s;text-align:%s;writing-mode:%s;font-size:%s;background-color:%s;transform:translate(%s%%,%s%%)%s;'>", Integer.valueOf(i18), str2, Float.valueOf(f10), str3, strZ, str4, strZ2, strC, strF, strE, strB, Integer.valueOf(i15), Integer.valueOf(i12), h(bVar2)));
                sb.append(com.google.android.exoplayer2.util.o0.z("<span class='%s'>", DEFAULT_BACKGROUND_CSS_CLASS));
                alignment = bVar2.multiRowAlignment;
                if (alignment != null) {
                    sb.append(com.google.android.exoplayer2.util.o0.z("<span style='display:inline-block; text-align:%s;'>", c(alignment)));
                    sb.append(bVar.html);
                    sb.append("</span>");
                } else {
                    sb.append(bVar.html);
                }
                sb.append("</span>");
                sb.append("</div>");
                i18++;
                f6 = 1.2f;
                i16 = 0;
                d1Var = this;
                i17 = 1;
            } else {
                Object[] objArr5 = new Object[i17];
                objArr5[i16] = Float.valueOf((1.0f - d1Var.bottomPaddingFraction) * 100.0f);
                strZ = com.google.android.exoplayer2.util.o0.z("%.2f%%", objArr5);
                iB = -100;
            }
            i10 = i16;
            f = bVar2.size;
            if (f != -3.4028235E38f) {
                Object[] objArr6 = new Object[i17];
                objArr6[0] = Float.valueOf(f * 100.0f);
                strZ2 = com.google.android.exoplayer2.util.o0.z("%.2f%%", objArr6);
            } else {
                strZ2 = "fit-content";
            }
            String strC2 = c(bVar2.textAlignment);
            String strF2 = f(bVar2.verticalType);
            String strE2 = d1Var.e(bVar2.textSizeType, bVar2.textSize);
            if (bVar2.windowColorSet) {
                i11 = bVar2.windowColor;
            } else {
                i11 = d1Var.style.windowColor;
            }
            String strB2 = j.b(i11);
            i12 = iB;
            i13 = bVar2.verticalType;
            str = "right";
            str2 = "left";
            if (i13 != 1) {
                if (i10 != 0) {
                    str = "left";
                }
                str2 = "top";
                i14 = 2;
                str3 = str;
            } else if (i13 != 2) {
                if (i10 != 0) {
                }
                i14 = 2;
            } else {
                if (i10 == 0) {
                    str = "left";
                }
                str2 = "top";
                i14 = 2;
                str3 = str;
            }
            if (i13 != i14) {
                str4 = "height";
                i15 = i12;
                i12 = iB2;
            } else {
                str4 = "height";
                i15 = i12;
                i12 = iB2;
            }
            bVarA = w.a(bVar2.text, getContext().getResources().getDisplayMetrics().density);
            it = map.keySet().iterator();
            while (it.hasNext()) {
                Iterator it3 = it;
                String str7 = (String) it.next();
                w.b bVar4 = bVarA;
                str5 = (String) map.put(str7, (String) map.get(str7));
                if (str5 != null) {
                    z6 = true;
                } else {
                    z6 = true;
                }
                com.google.android.exoplayer2.util.a.g(z6);
                it = it3;
                bVarA = bVar4;
            }
            bVar = bVarA;
            sb.append(com.google.android.exoplayer2.util.o0.z("<div style='position:absolute;z-index:%s;%s:%.2f%%;%s:%s;%s:%s;text-align:%s;writing-mode:%s;font-size:%s;background-color:%s;transform:translate(%s%%,%s%%)%s;'>", Integer.valueOf(i18), str2, Float.valueOf(f10), str3, strZ, str4, strZ2, strC2, strF2, strE2, strB2, Integer.valueOf(i15), Integer.valueOf(i12), h(bVar2)));
            sb.append(com.google.android.exoplayer2.util.o0.z("<span class='%s'>", DEFAULT_BACKGROUND_CSS_CLASS));
            alignment = bVar2.multiRowAlignment;
            if (alignment != null) {
                sb.append(com.google.android.exoplayer2.util.o0.z("<span style='display:inline-block; text-align:%s;'>", c(alignment)));
                sb.append(bVar.html);
                sb.append("</span>");
            } else {
                sb.append(bVar.html);
            }
            sb.append("</span>");
            sb.append("</div>");
            i18++;
            f6 = 1.2f;
            i16 = 0;
            d1Var = this;
            i17 = 1;
        }
        sb.append("</div></body></html>");
        StringBuilder sb2 = new StringBuilder();
        sb2.append("<html><head><style>");
        for (String str8 : map.keySet()) {
            sb2.append(str8);
            sb2.append("{");
            sb2.append((String) map.get(str8));
            sb2.append("}");
        }
        sb2.append("</style></head>");
        sb.insert(0, sb2.toString());
        this.webView.loadData(Base64.encodeToString(sb.toString().getBytes(com.google.common.base.e.UTF_8), 1), "text/html", "base64");
    }

    @Override // com.google.android.exoplayer2.ui.SubtitleView.a
    public void a(List<com.google.android.exoplayer2.text.b> list, d dVar, float f, int i10, float f6) {
        this.style = dVar;
        this.defaultTextSize = f;
        this.defaultTextSizeType = i10;
        this.bottomPaddingFraction = f6;
        ArrayList arrayList = new ArrayList();
        ArrayList arrayList2 = new ArrayList();
        for (int i11 = 0; i11 < list.size(); i11++) {
            com.google.android.exoplayer2.text.b bVar = list.get(i11);
            if (bVar.bitmap != null) {
                arrayList.add(bVar);
            } else {
                arrayList2.add(bVar);
            }
        }
        if (!this.textCues.isEmpty() || !arrayList2.isEmpty()) {
            this.textCues = arrayList2;
            i();
        }
        this.canvasSubtitleOutput.a(arrayList, dVar, f, i10, f6);
        invalidate();
    }

    public void g() {
        this.webView.destroy();
    }

    private String e(int i10, float f) {
        float fH = a1.h(i10, f, getHeight(), (getHeight() - getPaddingTop()) - getPaddingBottom());
        if (fH == -3.4028235E38f) {
            return "unset";
        }
        return com.google.android.exoplayer2.util.o0.z("%.2fpx", Float.valueOf(fH / getContext().getResources().getDisplayMetrics().density));
    }

    @Override // android.widget.FrameLayout, android.view.ViewGroup, android.view.View
    protected void onLayout(boolean z6, int i10, int i11, int i12, int i13) {
        super.onLayout(z6, i10, i11, i12, i13);
        if (z6 && !this.textCues.isEmpty()) {
            i();
        }
    }
}
