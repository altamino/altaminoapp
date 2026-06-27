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
import com.linkedin.urls.Entity;
import com.linkedin.urls.detection.UrlDetector;
import com.linkedin.urls.detection.UrlDetectorOptions;
import com.narvii.util.Log;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.ListIterator;
import java.util.Locale;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

/* loaded from: classes3.dex */
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

    public NVText() {
        this.addPaddingForBoldMode = true;
    }

    public NVText(CharSequence charSequence) {
        super(charSequence == null ? null : charSequence.toString().replace("\r", "\n"));
        this.addPaddingForBoldMode = true;
        this.spanColor = SPAN_COLOR;
    }

    public NVText(CharSequence charSequence, Object... objArr) {
        this(charSequence);
        for (Object obj : objArr) {
            setSpan(obj, 0, length(), 33);
        }
        this.spanColor = SPAN_COLOR;
    }

    public NVText(CharSequence charSequence, int i) {
        this(charSequence);
        this.spanColor = new ForegroundColorSpan(i);
    }

    public void setDarkTheme(boolean z) {
        this.isDarkTheme = z;
    }

    public void format(CharSequence... charSequenceArr) {
        int i;
        int length = 0;
        try {
            int length2 = length();
            while (length < length2) {
                if (charAt(length) == '%' && (i = length + 3) < length2) {
                    int iCharAt = charAt(length + 1) - '1';
                    if (iCharAt >= 0 && iCharAt < charSequenceArr.length && charAt(length + 2) == '$' && charAt(i) == 's') {
                        CharSequence charSequence = charSequenceArr[iCharAt];
                        if (charSequence == null) {
                            charSequence = "";
                        }
                        replace(length, length + 4, charSequence);
                        length += charSequence.length();
                        length2 = (length2 - 4) + charSequence.length();
                    } else {
                        Log.w("format arg %" + (iCharAt + 1) + " not found: " + toString());
                    }
                }
                length++;
            }
        } catch (Exception e) {
            Log.e(e.getMessage());
        }
    }

    public int markAllEntries(OnTagClickListener onTagClickListener) {
        return markHashtagAndLink(onTagClickListener, true) + 0 + markText("[Guidelines]", "Community Guidelines", onTagClickListener) + markText("[guidelines]", "Community Guidelines", onTagClickListener) + markText("[TOS]", "Terms of Service", onTagClickListener) + markTypefaceMarkers();
    }

    public int markSimpleEntries(OnTagClickListener onTagClickListener) {
        return markHashtagAndLink(onTagClickListener, false) + 0 + markText("[Guidelines]", "Community Guidelines", onTagClickListener) + markText("[guidelines]", "Community Guidelines", onTagClickListener) + markText("[TOS]", "Terms of Service", onTagClickListener) + markTypefaceMarkers();
    }

    public int markHashtagAndLink(OnTagClickListener onTagClickListener, boolean z) {
        String string = toString();
        List<Entity> listDetect = new UrlDetector(string, UrlDetectorOptions.Default).detect();
        if (z) {
            int size = listDetect.size();
            URLWithTitle[] uRLWithTitleArr = new URLWithTitle[size];
            Matcher matcher = TITLE_URL_PATTERN.matcher(string);
            int i = 0;
            boolean z2 = false;
            while (matcher.find()) {
                URLWithTitle uRLWithTitle = new URLWithTitle();
                uRLWithTitle.set(matcher);
                boolean z3 = z2;
                for (int i2 = 0; i2 < size; i2++) {
                    if (uRLWithTitle.match(listDetect.get(i2))) {
                        uRLWithTitleArr[i2] = uRLWithTitle;
                        z3 = true;
                    }
                }
                z2 = z3;
            }
            if (z2) {
                HashSet hashSet = new HashSet();
                int i3 = 0;
                for (int i4 = size - 1; i4 >= 0; i4--) {
                    URLWithTitle uRLWithTitle2 = uRLWithTitleArr[i4];
                    if (uRLWithTitle2 == null) {
                        Entity entity = listDetect.get(i4);
                        if (entity.getStart() < i || entity.getEnd() > i3) {
                            markTag(entity, onTagClickListener);
                        }
                    } else if (!hashSet.contains(uRLWithTitle2)) {
                        replace(uRLWithTitle2.start, uRLWithTitle2.end, (CharSequence) uRLWithTitle2.title);
                        int i5 = uRLWithTitle2.start;
                        markTag(i5, i5 + uRLWithTitle2.title.length(), uRLWithTitle2.url, 5, onTagClickListener);
                        i = uRLWithTitle2.start;
                        i3 = uRLWithTitle2.end;
                        hashSet.add(uRLWithTitle2);
                    }
                }
                return listDetect.size();
            }
        }
        Iterator<Entity> it = listDetect.iterator();
        while (it.hasNext()) {
            markTag(it.next(), onTagClickListener);
        }
        return listDetect.size();
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

        boolean match(Entity entity) {
            return entity.getStart() > this.start && entity.getEnd() < this.end && entity.getType() == Entity.Type.URL;
        }
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
            int i = typefaceMarkers2.start;
            int i2 = typefaceMarkers2.end;
            replace(i, typefaceMarkers2.markEnd, "");
            int i3 = typefaceMarkers2.markEnd;
            int i4 = i2 - (i3 - i);
            String upperCase = str.substring(0, i3 - i).toUpperCase(Locale.US);
            boolean z = upperCase.indexOf(73) != -1;
            if (upperCase.indexOf(85) != -1) {
                setSpan(new UnderlineSpan(), i, i4, 33);
            }
            if (upperCase.indexOf(83) != -1) {
                setSpan(new StrikethroughSpan(), i, i4, 33);
            }
            if (upperCase.indexOf(67) != -1) {
                setSpan(new AlignmentSpan.Standard(Layout.Alignment.ALIGN_CENTER), i, i4, 33);
            }
            if (upperCase.indexOf(66) != -1) {
                setSpan(new StyleSpan(z ? 3 : 1), i, i4, 33);
                setSpan(new RelativeSizeSpan(1.25f), i, i4, 33);
                if (this.addPaddingForBoldMode) {
                    insert(i4, "\n ");
                    setSpan(new LineSpan(0.25f), i4 + 1, i4 + 2, 33);
                    insert(i, " \n");
                    setSpan(new LineSpan(0.75f), i, i + 1, 33);
                }
            } else if (z) {
                setSpan(new StyleSpan(2), i, i4, 33);
            }
        }
        return arrayList.size();
    }

    private static class LineSpan implements LineHeightSpan.WithDensity {
        private final float f;

        @Override // android.text.style.LineHeightSpan
        public void chooseHeight(CharSequence charSequence, int i, int i2, int i3, int i4, Paint.FontMetricsInt fontMetricsInt) {
        }

        LineSpan(float f) {
            this.f = f;
        }

        @Override // android.text.style.LineHeightSpan.WithDensity
        public void chooseHeight(CharSequence charSequence, int i, int i2, int i3, int i4, Paint.FontMetricsInt fontMetricsInt, TextPaint textPaint) {
            textPaint.getFontMetricsInt(NVText.FMI);
            int i5 = NVText.FMI.descent - NVText.FMI.ascent;
            fontMetricsInt.ascent = 0;
            int i6 = (int) (i5 * this.f);
            fontMetricsInt.descent = i6;
            fontMetricsInt.bottom = i6;
            fontMetricsInt.leading = 0;
            fontMetricsInt.top = 0;
        }
    }

    public int markText(String str, OnTagClickListener onTagClickListener) {
        return markText(str, null, onTagClickListener);
    }

    public int markText(String str, String str2, OnTagClickListener onTagClickListener) {
        int iIndexOf;
        int length;
        String string = toString();
        ArrayList arrayList = new ArrayList();
        int i = 0;
        while (i < string.length() && (iIndexOf = string.indexOf(str, i)) != -1) {
            if (str2 == null) {
                length = str.length() + iIndexOf;
                arrayList.add(new Entity(iIndexOf, length, str, Entity.Type.URL));
            } else {
                replace(iIndexOf, str.length() + iIndexOf, (CharSequence) str2);
                string = toString();
                length = str2.length() + iIndexOf;
                arrayList.add(new Entity(iIndexOf, length, str, Entity.Type.URL));
            }
            i = length;
        }
        markTags(arrayList, 5, onTagClickListener);
        return arrayList.size();
    }

    private void markTags(List<Entity> list, int i, OnTagClickListener onTagClickListener) {
        ListIterator<Entity> listIterator = list.listIterator(list.size());
        while (listIterator.hasPrevious()) {
            Entity entityPrevious = listIterator.previous();
            markTag(entityPrevious.getStart(), entityPrevious.getEnd(), entityPrevious.getValue(), i, onTagClickListener);
        }
    }

    private void markTag(Entity entity, OnTagClickListener onTagClickListener) {
        if (entity.getType() == Entity.Type.URL) {
            markTag(entity.getStart(), entity.getEnd(), entity.getValue(), 5, onTagClickListener);
        }
        if (entity.getType() == Entity.Type.HASHTAG) {
            markTag(entity.getStart(), entity.getEnd(), entity.getValue(), 1, onTagClickListener);
        }
    }

    private void markTag(int i, int i2, String str, int i3, OnTagClickListener onTagClickListener) {
        if (onTagClickListener == null) {
            setSpan(new TagSpan(), i, i2, 33);
        } else {
            setSpan(new ClickableTagSpan(i3, str, onTagClickListener), i, i2, 33);
        }
    }

    private class TagSpan extends CharacterStyle {
        private TagSpan() {
        }

        @Override // android.text.style.CharacterStyle
        public void updateDrawState(TextPaint textPaint) {
            textPaint.setUnderlineText(false);
            NVText.this.renderTextPaint(textPaint, false);
        }
    }

    private class ClickableTagSpan extends TouchableSpan {
        OnTagClickListener listener;
        String text;
        int type;

        public ClickableTagSpan(int i, String str, OnTagClickListener onTagClickListener) {
            this.type = i;
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

        @Override // android.text.style.ClickableSpan, android.text.style.CharacterStyle
        public void updateDrawState(TextPaint textPaint) {
            textPaint.setUnderlineText(true);
            NVText.this.renderTextPaint(textPaint, isPressed());
        }
    }

    protected void renderTextPaint(TextPaint textPaint, boolean z) {
        SPAN_BOLD.updateDrawState(textPaint);
        if (z) {
            if (this.isDarkTheme) {
                SPAN_DARK_COLOR_PRESSED.updateDrawState(textPaint);
                SPAN_DARK_BG_PRESSED.updateDrawState(textPaint);
                return;
            } else {
                SPAN_COLOR_PRESSED.updateDrawState(textPaint);
                SPAN_BG_PRESSED.updateDrawState(textPaint);
                return;
            }
        }
        if (this.isDarkTheme) {
            SPAN_DARK_COLOR.updateDrawState(textPaint);
        } else {
            this.spanColor.updateDrawState(textPaint);
        }
    }

    public static String removeTags(String str) {
        return removeTypefaceMarkers(removeTitleTags(IMGUtils.removeIMGs(str)));
    }

    public static String removeTitleTags(String str) {
        if (android.text.TextUtils.isEmpty(str) || str.indexOf(91) == -1 || str.indexOf(124) == -1 || str.indexOf(93) == -1) {
            return str;
        }
        Matcher matcher = TITLE_URL_PATTERN.matcher(str);
        ArrayList arrayList = null;
        List<Entity> listDetect = null;
        while (matcher.find()) {
            if (listDetect == null) {
                listDetect = new UrlDetector(str, UrlDetectorOptions.Default).detect();
            }
            URLWithTitle uRLWithTitle = new URLWithTitle();
            uRLWithTitle.set(matcher);
            Iterator<Entity> it = listDetect.iterator();
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

    public static String removeTypefaceMarkers(String str) {
        if (android.text.TextUtils.isEmpty(str) || str.indexOf(91) == -1 || str.indexOf(93) == -1) {
            return str;
        }
        ArrayList arrayList = null;
        Matcher matcher = TYPEFACE_PATTERN.matcher(str);
        while (matcher.find()) {
            Entity entity = new Entity(matcher.start(), matcher.end(), matcher.group(0), Entity.Type.CASHTAG);
            if (arrayList == null) {
                arrayList = new ArrayList();
            }
            arrayList.add(entity);
        }
        if (arrayList == null) {
            return str;
        }
        StringBuilder sb = new StringBuilder(str);
        for (int size = arrayList.size() - 1; size >= 0; size--) {
            Entity entity2 = (Entity) arrayList.get(size);
            int start = entity2.getStart();
            entity2.getEnd();
            int iIndexOf = entity2.getValue().indexOf(93);
            if (iIndexOf >= 1) {
                sb.replace(start, iIndexOf + start + 1, "");
            }
        }
        return sb.toString();
    }
}
