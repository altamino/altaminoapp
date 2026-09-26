package com.narvii.util.text;

import android.graphics.Paint;
import android.text.Layout;
import android.text.SpannableStringBuilder;
import android.text.TextPaint;
import android.text.style.AlignmentSpan;
import android.text.style.BackgroundColorSpan;
import android.text.style.CharacterStyle;
import android.text.style.ForegroundColorSpan;
import android.text.style.LineHeightSpan;
import android.text.style.RelativeSizeSpan;
import android.text.style.StrikethroughSpan;
import android.text.style.StyleSpan;
import android.text.style.UnderlineSpan;
import android.view.View;
import com.linkedin.urls.detection.f;
import com.linkedin.urls.detection.g;
import com.narvii.util.Log;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.ListIterator;
import java.util.Locale;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

/* JADX INFO: loaded from: classes5.dex */
public class NVText extends SpannableStringBuilder {
    public boolean addPaddingForBoldMode;
    protected boolean isDarkTheme;
    protected ForegroundColorSpan spanColor;
    protected static final StyleSpan SPAN_BOLD = new StyleSpan(1);
    protected static final ForegroundColorSpan SPAN_COLOR = new ForegroundColorSpan(-12233086);
    protected static final ForegroundColorSpan SPAN_COLOR_PRESSED = new ForegroundColorSpan(-16030210);
    protected static final BackgroundColorSpan SPAN_BG_PRESSED = new BackgroundColorSpan(-6239490);
    protected static final ForegroundColorSpan SPAN_DARK_COLOR = new ForegroundColorSpan(-1);
    protected static final ForegroundColorSpan SPAN_DARK_COLOR_PRESSED = new ForegroundColorSpan(-1);
    protected static final BackgroundColorSpan SPAN_DARK_BG_PRESSED = new BackgroundColorSpan(-1996488705);
    private static final Pattern TITLE_URL_PATTERN = Pattern.compile("\\[([^\\[\\]]+)\\|\\s*(.+?)\\s*\\]");
    private static final Pattern TYPEFACE_PATTERN = Pattern.compile("^((?:\\[[BCIUS]+\\])+).*$", 10);
    private static Paint.FontMetricsInt FMI = new Paint.FontMetricsInt();

    private class ClickableTagSpan extends TouchableSpan {
        OnTagClickListener listener;
        String text;
        int type;

        @Override // android.text.style.ClickableSpan, android.text.style.CharacterStyle
        public void updateDrawState(TextPaint textPaint) {
            textPaint.setUnderlineText(true);
            NVText.this.renderTextPaint(textPaint, isPressed());
        }

        public ClickableTagSpan(int i10, String str, OnTagClickListener onTagClickListener) {
            this.type = i10;
            this.text = str;
            this.listener = onTagClickListener;
        }

        @Override // android.text.style.ClickableSpan
        public void onClick(View view) {
            OnTagClickListener onTagClickListener = this.listener;
            if (onTagClickListener != null) {
                onTagClickListener.onClick(view, NVText.this, this.type, this.text);
            }
        }
    }

    private static class LineSpan implements LineHeightSpan.WithDensity {
        private final float f;

        @Override // android.text.style.LineHeightSpan
        public void chooseHeight(CharSequence charSequence, int i10, int i11, int i12, int i13, Paint.FontMetricsInt fontMetricsInt) {
        }

        @Override // android.text.style.LineHeightSpan.WithDensity
        public void chooseHeight(CharSequence charSequence, int i10, int i11, int i12, int i13, Paint.FontMetricsInt fontMetricsInt, TextPaint textPaint) {
            textPaint.getFontMetricsInt(NVText.FMI);
            int i14 = NVText.FMI.descent - NVText.FMI.ascent;
            fontMetricsInt.ascent = 0;
            int i15 = (int) (i14 * this.f);
            fontMetricsInt.descent = i15;
            fontMetricsInt.bottom = i15;
            fontMetricsInt.leading = 0;
            fontMetricsInt.top = 0;
        }

        LineSpan(float f) {
            this.f = f;
        }
    }

    private class TagSpan extends CharacterStyle {
        @Override // android.text.style.CharacterStyle
        public void updateDrawState(TextPaint textPaint) {
            textPaint.setUnderlineText(false);
            NVText.this.renderTextPaint(textPaint, false);
        }

        private TagSpan() {
        }
    }

    private static class URLWithTitle {
        int end;
        int end1;
        int end2;
        int start;
        int start1;
        int start2;
        String title;
        String url;

        private URLWithTitle() {
        }

        boolean match(com.linkedin.urls.a aVar) {
            if (aVar.b() > this.start && aVar.a() < this.end && aVar.c() == com.linkedin.urls.a.EnumC0279a.URL) {
                return true;
            }
            return false;
        }

        void set(Matcher matcher) {
            this.start = matcher.start();
            this.end = matcher.end();
            this.start1 = matcher.start(1);
            this.end1 = matcher.end(1);
            this.start2 = matcher.start(2);
            this.end2 = matcher.end(2);
            this.title = matcher.group(1);
            this.url = matcher.group(2);
        }
    }

    public NVText() {
        this.addPaddingForBoldMode = true;
    }

    private void markTag(com.linkedin.urls.a aVar, OnTagClickListener onTagClickListener) {
        if (aVar.c() == com.linkedin.urls.a.EnumC0279a.URL) {
            markTag(aVar.b(), aVar.a(), aVar.d(), 5, onTagClickListener);
        }
        if (aVar.c() == com.linkedin.urls.a.EnumC0279a.HASHTAG) {
            markTag(aVar.b(), aVar.a(), aVar.d(), 1, onTagClickListener);
        }
    }

    public int markAllEntries(OnTagClickListener onTagClickListener) {
        return markHashtagAndLink(onTagClickListener, true) + markText("[Guidelines]", "Community Guidelines", onTagClickListener) + markText("[guidelines]", "Community Guidelines", onTagClickListener) + markText("[TOS]", "Terms of Service", onTagClickListener) + markTypefaceMarkers();
    }

    public int markSimpleEntries(OnTagClickListener onTagClickListener) {
        return markHashtagAndLink(onTagClickListener, false) + markText("[Guidelines]", "Community Guidelines", onTagClickListener) + markText("[guidelines]", "Community Guidelines", onTagClickListener) + markText("[TOS]", "Terms of Service", onTagClickListener) + markTypefaceMarkers();
    }

    public int markText(String str, OnTagClickListener onTagClickListener) {
        return markText(str, null, onTagClickListener);
    }

    public void setDarkTheme(boolean z6) {
        this.isDarkTheme = z6;
    }

    private static class TypefaceMarkers {
        int end;
        int markEnd;
        int start;
        String value;

        TypefaceMarkers(Matcher matcher) {
            this.start = matcher.start();
            this.end = matcher.end();
            this.value = matcher.group();
            this.markEnd = matcher.end(1);
        }
    }

    public NVText(CharSequence charSequence) {
        super(charSequence == null ? null : charSequence.toString().replace("\r", "\n"));
        this.addPaddingForBoldMode = true;
        this.spanColor = SPAN_COLOR;
    }

    public int markText(String str, String str2, OnTagClickListener onTagClickListener) {
        int iIndexOf;
        int length;
        String string = toString();
        ArrayList arrayList = new ArrayList();
        int i10 = 0;
        while (i10 < string.length() && (iIndexOf = string.indexOf(str, i10)) != -1) {
            if (str2 == null) {
                length = str.length() + iIndexOf;
                arrayList.add(new com.linkedin.urls.a(iIndexOf, length, str, com.linkedin.urls.a.EnumC0279a.URL));
            } else {
                replace(iIndexOf, str.length() + iIndexOf, (CharSequence) str2);
                string = toString();
                length = str2.length() + iIndexOf;
                arrayList.add(new com.linkedin.urls.a(iIndexOf, length, str, com.linkedin.urls.a.EnumC0279a.URL));
            }
            i10 = length;
        }
        markTags(arrayList, 5, onTagClickListener);
        return arrayList.size();
    }

    public int markTypefaceMarkers() {
        Matcher matcher = TYPEFACE_PATTERN.matcher(toString());
        ArrayList arrayList = null;
        while (matcher.find()) {
            TypefaceMarkers typefaceMarkers = new TypefaceMarkers(matcher);
            if (arrayList == null) {
                arrayList = new ArrayList();
            }
            arrayList.add(typefaceMarkers);
        }
        if (arrayList == null) {
            return 0;
        }
        for (int size = arrayList.size() - 1; size >= 0; size--) {
            TypefaceMarkers typefaceMarkers2 = (TypefaceMarkers) arrayList.get(size);
            String str = typefaceMarkers2.value;
            int i10 = typefaceMarkers2.start;
            int i11 = typefaceMarkers2.end;
            replace(i10, typefaceMarkers2.markEnd, "");
            int i12 = typefaceMarkers2.markEnd;
            int i13 = i11 - (i12 - i10);
            String upperCase = str.substring(0, i12 - i10).toUpperCase(Locale.US);
            boolean z6 = upperCase.indexOf(73) != -1;
            if (upperCase.indexOf(85) != -1) {
                setSpan(new UnderlineSpan(), i10, i13, 33);
            }
            if (upperCase.indexOf(83) != -1) {
                setSpan(new StrikethroughSpan(), i10, i13, 33);
            }
            if (upperCase.indexOf(67) != -1) {
                setSpan(new AlignmentSpan.Standard(Layout.Alignment.ALIGN_CENTER), i10, i13, 33);
            }
            if (upperCase.indexOf(66) != -1) {
                setSpan(new StyleSpan(z6 ? 3 : 1), i10, i13, 33);
                setSpan(new RelativeSizeSpan(1.25f), i10, i13, 33);
                if (this.addPaddingForBoldMode) {
                    insert(i13, "\n ");
                    setSpan(new LineSpan(0.25f), i13 + 1, i13 + 2, 33);
                    insert(i10, " \n");
                    setSpan(new LineSpan(0.75f), i10, i10 + 1, 33);
                }
            } else if (z6) {
                setSpan(new StyleSpan(2), i10, i13, 33);
            }
        }
        return arrayList.size();
    }

    protected void renderTextPaint(TextPaint textPaint, boolean z6) {
        SPAN_BOLD.updateDrawState(textPaint);
        if (!z6) {
            if (this.isDarkTheme) {
                SPAN_DARK_COLOR.updateDrawState(textPaint);
                return;
            } else {
                this.spanColor.updateDrawState(textPaint);
                return;
            }
        }
        if (this.isDarkTheme) {
            SPAN_DARK_COLOR_PRESSED.updateDrawState(textPaint);
            SPAN_DARK_BG_PRESSED.updateDrawState(textPaint);
        } else {
            SPAN_COLOR_PRESSED.updateDrawState(textPaint);
            SPAN_BG_PRESSED.updateDrawState(textPaint);
        }
    }

    public NVText(CharSequence charSequence, Object... objArr) {
        this(charSequence);
        for (Object obj : objArr) {
            setSpan(obj, 0, length(), 33);
        }
        this.spanColor = SPAN_COLOR;
    }

    private void markTags(List<com.linkedin.urls.a> list, int i10, OnTagClickListener onTagClickListener) {
        ListIterator<com.linkedin.urls.a> listIterator = list.listIterator(list.size());
        while (listIterator.hasPrevious()) {
            com.linkedin.urls.a aVarPrevious = listIterator.previous();
            markTag(aVarPrevious.b(), aVarPrevious.a(), aVarPrevious.d(), i10, onTagClickListener);
        }
    }

    public static String removeTags(String str) {
        return removeTypefaceMarkers(removeTitleTags(IMGUtils.removeIMGs(str)));
    }

    public static String removeTitleTags(String str) {
        if (!android.text.TextUtils.isEmpty(str) && str.indexOf(91) != -1 && str.indexOf(124) != -1 && str.indexOf(93) != -1) {
            Matcher matcher = TITLE_URL_PATTERN.matcher(str);
            ArrayList arrayList = null;
            List<com.linkedin.urls.a> listC = null;
            while (matcher.find()) {
                if (listC == null) {
                    listC = new f(str, g.Default).c();
                }
                URLWithTitle uRLWithTitle = new URLWithTitle();
                uRLWithTitle.set(matcher);
                Iterator<com.linkedin.urls.a> it = listC.iterator();
                while (it.hasNext()) {
                    if (uRLWithTitle.match(it.next())) {
                        if (arrayList == null) {
                            arrayList = new ArrayList();
                        }
                        arrayList.add(uRLWithTitle);
                    }
                }
            }
            if (arrayList == null) {
                return str;
            }
            StringBuilder sb = new StringBuilder(str);
            for (int size = arrayList.size() - 1; size >= 0; size--) {
                URLWithTitle uRLWithTitle2 = (URLWithTitle) arrayList.get(size);
                sb.replace(uRLWithTitle2.start, uRLWithTitle2.end, uRLWithTitle2.title);
            }
            return sb.toString();
        }
        return str;
    }

    public static String removeTypefaceMarkers(String str) {
        if (!android.text.TextUtils.isEmpty(str) && str.indexOf(91) != -1 && str.indexOf(93) != -1) {
            Matcher matcher = TYPEFACE_PATTERN.matcher(str);
            ArrayList arrayList = null;
            while (matcher.find()) {
                com.linkedin.urls.a aVar = new com.linkedin.urls.a(matcher.start(), matcher.end(), matcher.group(0), com.linkedin.urls.a.EnumC0279a.CASHTAG);
                if (arrayList == null) {
                    arrayList = new ArrayList();
                }
                arrayList.add(aVar);
            }
            if (arrayList != null) {
                StringBuilder sb = new StringBuilder(str);
                for (int size = arrayList.size() - 1; size >= 0; size--) {
                    com.linkedin.urls.a aVar2 = (com.linkedin.urls.a) arrayList.get(size);
                    int iB = aVar2.b();
                    aVar2.a();
                    int iIndexOf = aVar2.d().indexOf(93);
                    if (iIndexOf >= 1) {
                        sb.replace(iB, iIndexOf + iB + 1, "");
                    }
                }
                return sb.toString();
            }
            return str;
        }
        return str;
    }

    public void format(CharSequence... charSequenceArr) {
        int i10;
        try {
            int length = length();
            int length2 = 0;
            while (length2 < length) {
                if (charAt(length2) == '%' && (i10 = length2 + 3) < length) {
                    char cCharAt = charAt(length2 + 1);
                    int i11 = cCharAt - '1';
                    if (i11 >= 0 && i11 < charSequenceArr.length && charAt(length2 + 2) == '$' && charAt(i10) == 's') {
                        CharSequence charSequence = charSequenceArr[i11];
                        if (charSequence == null) {
                            charSequence = "";
                        }
                        replace(length2, length2 + 4, charSequence);
                        length2 += charSequence.length();
                        length = (length - 4) + charSequence.length();
                    } else {
                        StringBuilder sb = new StringBuilder();
                        sb.append("format arg %");
                        sb.append(cCharAt - '0');
                        sb.append(" not found: ");
                        sb.append(toString());
                        Log.w(sb.toString());
                    }
                }
                length2++;
            }
        } catch (Exception e) {
            Log.e(e.getMessage());
        }
    }

    public int markHashtagAndLink(OnTagClickListener onTagClickListener, boolean z6) {
        String string = toString();
        List<com.linkedin.urls.a> listC = new f(string, g.Default).c();
        if (z6) {
            int size = listC.size();
            URLWithTitle[] uRLWithTitleArr = new URLWithTitle[size];
            Matcher matcher = TITLE_URL_PATTERN.matcher(string);
            int i10 = 0;
            boolean z10 = false;
            while (matcher.find()) {
                URLWithTitle uRLWithTitle = new URLWithTitle();
                uRLWithTitle.set(matcher);
                for (int i11 = 0; i11 < size; i11++) {
                    if (uRLWithTitle.match(listC.get(i11))) {
                        uRLWithTitleArr[i11] = uRLWithTitle;
                        z10 = true;
                    }
                }
            }
            if (z10) {
                HashSet hashSet = new HashSet();
                int i12 = 0;
                for (int i13 = size - 1; i13 >= 0; i13--) {
                    URLWithTitle uRLWithTitle2 = uRLWithTitleArr[i13];
                    if (uRLWithTitle2 == null) {
                        com.linkedin.urls.a aVar = listC.get(i13);
                        if (aVar.b() < i10 || aVar.a() > i12) {
                            markTag(aVar, onTagClickListener);
                        }
                    } else if (!hashSet.contains(uRLWithTitle2)) {
                        replace(uRLWithTitle2.start, uRLWithTitle2.end, (CharSequence) uRLWithTitle2.title);
                        int i14 = uRLWithTitle2.start;
                        markTag(i14, i14 + uRLWithTitle2.title.length(), uRLWithTitle2.url, 5, onTagClickListener);
                        i10 = uRLWithTitle2.start;
                        i12 = uRLWithTitle2.end;
                        hashSet.add(uRLWithTitle2);
                    }
                }
                return listC.size();
            }
        }
        Iterator<com.linkedin.urls.a> it = listC.iterator();
        while (it.hasNext()) {
            markTag(it.next(), onTagClickListener);
        }
        return listC.size();
    }

    private void markTag(int i10, int i11, String str, int i12, OnTagClickListener onTagClickListener) {
        if (onTagClickListener == null) {
            setSpan(new TagSpan(), i10, i11, 33);
        } else {
            setSpan(new ClickableTagSpan(i12, str, onTagClickListener), i10, i11, 33);
        }
    }

    public NVText(CharSequence charSequence, int i10) {
        this(charSequence);
        this.spanColor = new ForegroundColorSpan(i10);
    }
}
