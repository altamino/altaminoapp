package androidx.media3.ui;

import android.content.Context;
import android.text.Layout;
import android.util.AttributeSet;
import android.util.Base64;
import android.view.MotionEvent;
import android.webkit.WebView;
import android.widget.FrameLayout;
import androidx.annotation.Nullable;
import androidx.media3.common.text.Cue;
import androidx.media3.common.util.Assertions;
import androidx.media3.common.util.Util;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;

/* JADX INFO: loaded from: classes7.dex */
final class WebViewSubtitleOutput extends FrameLayout implements SubtitleView.Output {
    private static final float CSS_LINE_HEIGHT = 1.2f;
    private static final String DEFAULT_BACKGROUND_CSS_CLASS = "default_bg";
    private float bottomPaddingFraction;
    private final CanvasSubtitleOutput canvasSubtitleOutput;
    private float defaultTextSize;
    private int defaultTextSizeType;
    private CaptionStyleCompat style;
    private List<Cue> textCues;
    private final WebView webView;

    public WebViewSubtitleOutput(Context context) {
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

    /* JADX INFO: renamed from: androidx.media3.ui.WebViewSubtitleOutput$2, reason: invalid class name */
    static /* synthetic */ class AnonymousClass2 {
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

    public WebViewSubtitleOutput(Context context, @Nullable AttributeSet attributeSet) {
        super(context, attributeSet);
        this.textCues = Collections.emptyList();
        this.style = CaptionStyleCompat.DEFAULT;
        this.defaultTextSize = 0.0533f;
        this.defaultTextSizeType = 0;
        this.bottomPaddingFraction = 0.08f;
        CanvasSubtitleOutput canvasSubtitleOutput = new CanvasSubtitleOutput(context, attributeSet);
        this.canvasSubtitleOutput = canvasSubtitleOutput;
        WebView webView = new WebView(context, attributeSet) { // from class: androidx.media3.ui.WebViewSubtitleOutput.1
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
        };
        this.webView = webView;
        webView.setBackgroundColor(0);
        addView(canvasSubtitleOutput);
        addView(webView);
    }

    private static String c(@Nullable Layout.Alignment alignment) {
        if (alignment == null) {
            return "center";
        }
        int i10 = AnonymousClass2.$SwitchMap$android$text$Layout$Alignment[alignment.ordinal()];
        if (i10 != 1) {
            return i10 != 2 ? "center" : "end";
        }
        return "start";
    }

    private static String d(CaptionStyleCompat captionStyleCompat) {
        int i10 = captionStyleCompat.edgeType;
        if (i10 == 1) {
            return Util.D("1px 1px 0 %1$s, 1px -1px 0 %1$s, -1px 1px 0 %1$s, -1px -1px 0 %1$s", HtmlUtils.b(captionStyleCompat.edgeColor));
        }
        if (i10 == 2) {
            return Util.D("0.1em 0.12em 0.15em %s", HtmlUtils.b(captionStyleCompat.edgeColor));
        }
        if (i10 != 3) {
            return i10 != 4 ? "unset" : Util.D("-0.05em -0.05em 0.15em %s", HtmlUtils.b(captionStyleCompat.edgeColor));
        }
        return Util.D("0.06em 0.08em 0.15em %s", HtmlUtils.b(captionStyleCompat.edgeColor));
    }

    private static String h(Cue cue) {
        float f = cue.shearDegrees;
        if (f == 0.0f) {
            return "";
        }
        int i10 = cue.verticalType;
        return Util.D("%s(%.2fdeg)", (i10 == 2 || i10 == 1) ? "skewY" : "skewX", Float.valueOf(f));
    }

    /* JADX WARN: Code duplicated, block: B:25:0x00f9  */
    /* JADX WARN: Code duplicated, block: B:26:0x0108  */
    /* JADX WARN: Code duplicated, block: B:29:0x0122  */
    /* JADX WARN: Code duplicated, block: B:30:0x0125  */
    /* JADX WARN: Code duplicated, block: B:33:0x013e  */
    /* JADX WARN: Code duplicated, block: B:35:0x0141 A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:36:0x0143  */
    /* JADX WARN: Code duplicated, block: B:38:0x0147 A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:40:0x014a  */
    /* JADX WARN: Code duplicated, block: B:42:0x0152 A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:49:0x0161  */
    /* JADX WARN: Code duplicated, block: B:53:0x0189  */
    /* JADX WARN: Code duplicated, block: B:59:0x01b2  */
    /* JADX WARN: Code duplicated, block: B:63:0x0225  */
    /* JADX WARN: Code duplicated, block: B:64:0x0241  */
    private void i() {
        String strD;
        int iB;
        int i10;
        float f;
        String strD2;
        int i11;
        int i12;
        int i13;
        String str;
        String str2;
        int i14;
        String str3;
        String str4;
        int i15;
        SpannedToHtmlConverter.HtmlAndCss htmlAndCssA;
        Iterator it;
        SpannedToHtmlConverter.HtmlAndCss htmlAndCss;
        Layout.Alignment alignment;
        String str5;
        boolean z6;
        WebViewSubtitleOutput webViewSubtitleOutput = this;
        StringBuilder sb = new StringBuilder();
        int i16 = 0;
        int i17 = 1;
        float f6 = 1.2f;
        sb.append(Util.D("<body><div style='-webkit-user-select:none;position:fixed;top:0;bottom:0;left:0;right:0;color:%s;font-size:%s;line-height:%.2f;text-shadow:%s;'>", HtmlUtils.b(webViewSubtitleOutput.style.foregroundColor), webViewSubtitleOutput.e(webViewSubtitleOutput.defaultTextSizeType, webViewSubtitleOutput.defaultTextSize), Float.valueOf(1.2f), d(webViewSubtitleOutput.style)));
        HashMap map = new HashMap();
        map.put(HtmlUtils.a(DEFAULT_BACKGROUND_CSS_CLASS), Util.D("background-color:%s;", HtmlUtils.b(webViewSubtitleOutput.style.backgroundColor)));
        int i18 = 0;
        while (i18 < webViewSubtitleOutput.textCues.size()) {
            Cue cue = webViewSubtitleOutput.textCues.get(i18);
            float f7 = cue.position;
            float f10 = f7 != -3.4028235E38f ? f7 * 100.0f : 50.0f;
            int iB2 = b(cue.positionAnchor);
            float f11 = cue.line;
            if (f11 != -3.4028235E38f) {
                if (cue.lineType != i17) {
                    Object[] objArr = new Object[i17];
                    objArr[i16] = Float.valueOf(f11 * 100.0f);
                    strD = Util.D("%.2f%%", objArr);
                    iB = cue.verticalType == i17 ? -b(cue.lineAnchor) : b(cue.lineAnchor);
                } else if (f11 >= 0.0f) {
                    Object[] objArr2 = new Object[i17];
                    objArr2[i16] = Float.valueOf(f11 * f6);
                    strD = Util.D("%.2fem", objArr2);
                    iB = i16;
                    i10 = iB;
                } else {
                    Object[] objArr3 = new Object[i17];
                    objArr3[i16] = Float.valueOf(((-f11) - 1.0f) * f6);
                    strD = Util.D("%.2fem", objArr3);
                    iB = i16;
                    i10 = i17;
                }
                f = cue.size;
                if (f != -3.4028235E38f) {
                    Object[] objArr4 = new Object[i17];
                    objArr4[0] = Float.valueOf(f * 100.0f);
                    strD2 = Util.D("%.2f%%", objArr4);
                } else {
                    strD2 = "fit-content";
                }
                String strC = c(cue.textAlignment);
                String strF = f(cue.verticalType);
                String strE = webViewSubtitleOutput.e(cue.textSizeType, cue.textSize);
                if (cue.windowColorSet) {
                    i11 = cue.windowColor;
                } else {
                    i11 = webViewSubtitleOutput.style.windowColor;
                }
                String strB = HtmlUtils.b(i11);
                i12 = iB;
                i13 = cue.verticalType;
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
                htmlAndCssA = SpannedToHtmlConverter.a(cue.text, getContext().getResources().getDisplayMetrics().density);
                it = map.keySet().iterator();
                while (it.hasNext()) {
                    Iterator it2 = it;
                    String str6 = (String) it.next();
                    SpannedToHtmlConverter.HtmlAndCss htmlAndCss2 = htmlAndCssA;
                    str5 = (String) map.put(str6, (String) map.get(str6));
                    if (str5 != null || str5.equals(map.get(str6))) {
                        z6 = true;
                    } else {
                        z6 = false;
                    }
                    Assertions.g(z6);
                    it = it2;
                    htmlAndCssA = htmlAndCss2;
                }
                htmlAndCss = htmlAndCssA;
                sb.append(Util.D("<div style='position:absolute;z-index:%s;%s:%.2f%%;%s:%s;%s:%s;text-align:%s;writing-mode:%s;font-size:%s;background-color:%s;transform:translate(%s%%,%s%%)%s;'>", Integer.valueOf(i18), str2, Float.valueOf(f10), str3, strD, str4, strD2, strC, strF, strE, strB, Integer.valueOf(i15), Integer.valueOf(i12), h(cue)));
                sb.append(Util.D("<span class='%s'>", DEFAULT_BACKGROUND_CSS_CLASS));
                alignment = cue.multiRowAlignment;
                if (alignment != null) {
                    sb.append(Util.D("<span style='display:inline-block; text-align:%s;'>", c(alignment)));
                    sb.append(htmlAndCss.html);
                    sb.append("</span>");
                } else {
                    sb.append(htmlAndCss.html);
                }
                sb.append("</span>");
                sb.append("</div>");
                i18++;
                f6 = 1.2f;
                i16 = 0;
                webViewSubtitleOutput = this;
                i17 = 1;
            } else {
                Object[] objArr5 = new Object[i17];
                objArr5[i16] = Float.valueOf((1.0f - webViewSubtitleOutput.bottomPaddingFraction) * 100.0f);
                strD = Util.D("%.2f%%", objArr5);
                iB = -100;
            }
            i10 = i16;
            f = cue.size;
            if (f != -3.4028235E38f) {
                Object[] objArr6 = new Object[i17];
                objArr6[0] = Float.valueOf(f * 100.0f);
                strD2 = Util.D("%.2f%%", objArr6);
            } else {
                strD2 = "fit-content";
            }
            String strC2 = c(cue.textAlignment);
            String strF2 = f(cue.verticalType);
            String strE2 = webViewSubtitleOutput.e(cue.textSizeType, cue.textSize);
            if (cue.windowColorSet) {
                i11 = cue.windowColor;
            } else {
                i11 = webViewSubtitleOutput.style.windowColor;
            }
            String strB2 = HtmlUtils.b(i11);
            i12 = iB;
            i13 = cue.verticalType;
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
            htmlAndCssA = SpannedToHtmlConverter.a(cue.text, getContext().getResources().getDisplayMetrics().density);
            it = map.keySet().iterator();
            while (it.hasNext()) {
                Iterator it3 = it;
                String str7 = (String) it.next();
                SpannedToHtmlConverter.HtmlAndCss htmlAndCss3 = htmlAndCssA;
                str5 = (String) map.put(str7, (String) map.get(str7));
                if (str5 != null) {
                    z6 = true;
                } else {
                    z6 = true;
                }
                Assertions.g(z6);
                it = it3;
                htmlAndCssA = htmlAndCss3;
            }
            htmlAndCss = htmlAndCssA;
            sb.append(Util.D("<div style='position:absolute;z-index:%s;%s:%.2f%%;%s:%s;%s:%s;text-align:%s;writing-mode:%s;font-size:%s;background-color:%s;transform:translate(%s%%,%s%%)%s;'>", Integer.valueOf(i18), str2, Float.valueOf(f10), str3, strD, str4, strD2, strC2, strF2, strE2, strB2, Integer.valueOf(i15), Integer.valueOf(i12), h(cue)));
            sb.append(Util.D("<span class='%s'>", DEFAULT_BACKGROUND_CSS_CLASS));
            alignment = cue.multiRowAlignment;
            if (alignment != null) {
                sb.append(Util.D("<span style='display:inline-block; text-align:%s;'>", c(alignment)));
                sb.append(htmlAndCss.html);
                sb.append("</span>");
            } else {
                sb.append(htmlAndCss.html);
            }
            sb.append("</span>");
            sb.append("</div>");
            i18++;
            f6 = 1.2f;
            i16 = 0;
            webViewSubtitleOutput = this;
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

    @Override // androidx.media3.ui.SubtitleView.Output
    public void a(List<Cue> list, CaptionStyleCompat captionStyleCompat, float f, int i10, float f6) {
        this.style = captionStyleCompat;
        this.defaultTextSize = f;
        this.defaultTextSizeType = i10;
        this.bottomPaddingFraction = f6;
        ArrayList arrayList = new ArrayList();
        ArrayList arrayList2 = new ArrayList();
        for (int i11 = 0; i11 < list.size(); i11++) {
            Cue cue = list.get(i11);
            if (cue.bitmap != null) {
                arrayList.add(cue);
            } else {
                arrayList2.add(cue);
            }
        }
        if (!this.textCues.isEmpty() || !arrayList2.isEmpty()) {
            this.textCues = arrayList2;
            i();
        }
        this.canvasSubtitleOutput.a(arrayList, captionStyleCompat, f, i10, f6);
        invalidate();
    }

    public void g() {
        this.webView.destroy();
    }

    private String e(int i10, float f) {
        float fH = SubtitleViewUtils.h(i10, f, getHeight(), (getHeight() - getPaddingTop()) - getPaddingBottom());
        if (fH == -3.4028235E38f) {
            return "unset";
        }
        return Util.D("%.2fpx", Float.valueOf(fH / getContext().getResources().getDisplayMetrics().density));
    }

    @Override // android.widget.FrameLayout, android.view.ViewGroup, android.view.View
    protected void onLayout(boolean z6, int i10, int i11, int i12, int i13) {
        super.onLayout(z6, i10, i11, i12, i13);
        if (z6 && !this.textCues.isEmpty()) {
            i();
        }
    }
}
