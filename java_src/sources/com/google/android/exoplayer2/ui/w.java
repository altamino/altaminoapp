package com.google.android.exoplayer2.ui;

import android.text.Html;
import android.text.Spanned;
import android.text.style.AbsoluteSizeSpan;
import android.text.style.BackgroundColorSpan;
import android.text.style.ForegroundColorSpan;
import android.text.style.RelativeSizeSpan;
import android.text.style.StrikethroughSpan;
import android.text.style.StyleSpan;
import android.text.style.TypefaceSpan;
import android.text.style.UnderlineSpan;
import android.util.SparseArray;
import androidx.annotation.Nullable;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Comparator;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.regex.Pattern;

/* JADX INFO: loaded from: classes2.dex */
final class w {
    private static final Pattern NEWLINE_PATTERN = Pattern.compile("(&#13;)?&#10;");

    public static class b {
        public final Map<String, String> cssRuleSets;
        public final String html;

        private b(String str, Map<String, String> map) {
            this.html = str;
            this.cssRuleSets = map;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    static final class c {
        public final String closingTag;
        public final int end;
        public final String openingTag;
        public final int start;
        private static final Comparator<c> FOR_OPENING_TAGS = new Comparator() { // from class: com.google.android.exoplayer2.ui.x
            @Override // java.util.Comparator
            public final int compare(Object obj, Object obj2) {
                return w.c.e((w.c) obj, (w.c) obj2);
            }
        };
        private static final Comparator<c> FOR_CLOSING_TAGS = new Comparator() { // from class: com.google.android.exoplayer2.ui.y
            @Override // java.util.Comparator
            public final int compare(Object obj, Object obj2) {
                return w.c.f((w.c) obj, (w.c) obj2);
            }
        };

        private c(int i10, int i11, String str, String str2) {
            this.start = i10;
            this.end = i11;
            this.openingTag = str;
            this.closingTag = str2;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static /* synthetic */ int e(c cVar, c cVar2) {
            int iCompare = Integer.compare(cVar2.end, cVar.end);
            if (iCompare != 0) {
                return iCompare;
            }
            int iCompareTo = cVar.openingTag.compareTo(cVar2.openingTag);
            return iCompareTo != 0 ? iCompareTo : cVar.closingTag.compareTo(cVar2.closingTag);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static /* synthetic */ int f(c cVar, c cVar2) {
            int iCompare = Integer.compare(cVar2.start, cVar.start);
            if (iCompare != 0) {
                return iCompare;
            }
            int iCompareTo = cVar2.openingTag.compareTo(cVar.openingTag);
            return iCompareTo != 0 ? iCompareTo : cVar2.closingTag.compareTo(cVar.closingTag);
        }
    }

    private static final class d {
        private final List<c> spansAdded = new ArrayList();
        private final List<c> spansRemoved = new ArrayList();
    }

    public static b a(@Nullable CharSequence charSequence, float f) {
        if (charSequence == null) {
            return new b("", com.google.common.collect.b0.m());
        }
        if (!(charSequence instanceof Spanned)) {
            return new b(b(charSequence), com.google.common.collect.b0.m());
        }
        Spanned spanned = (Spanned) charSequence;
        HashSet hashSet = new HashSet();
        int i10 = 0;
        for (BackgroundColorSpan backgroundColorSpan : (BackgroundColorSpan[]) spanned.getSpans(0, spanned.length(), BackgroundColorSpan.class)) {
            hashSet.add(Integer.valueOf(backgroundColorSpan.getBackgroundColor()));
        }
        HashMap map = new HashMap();
        Iterator it = hashSet.iterator();
        while (it.hasNext()) {
            int iIntValue = ((Integer) it.next()).intValue();
            map.put(j.a("bg_" + iIntValue), com.google.android.exoplayer2.util.o0.z("background-color:%s;", j.b(iIntValue)));
        }
        SparseArray<d> sparseArrayC = c(spanned, f);
        StringBuilder sb = new StringBuilder(spanned.length());
        int i11 = 0;
        while (i10 < sparseArrayC.size()) {
            int iKeyAt = sparseArrayC.keyAt(i10);
            sb.append(b(spanned.subSequence(i11, iKeyAt)));
            d dVar = sparseArrayC.get(iKeyAt);
            Collections.sort(dVar.spansRemoved, c.FOR_CLOSING_TAGS);
            Iterator it2 = dVar.spansRemoved.iterator();
            while (it2.hasNext()) {
                sb.append(((c) it2.next()).closingTag);
            }
            Collections.sort(dVar.spansAdded, c.FOR_OPENING_TAGS);
            Iterator it3 = dVar.spansAdded.iterator();
            while (it3.hasNext()) {
                sb.append(((c) it3.next()).openingTag);
            }
            i10++;
            i11 = iKeyAt;
        }
        sb.append(b(spanned.subSequence(i11, spanned.length())));
        return new b(sb.toString(), map);
    }

    private static String g(int i10) {
        return i10 != 2 ? "over right" : "under left";
    }

    private static SparseArray<d> c(Spanned spanned, float f) {
        SparseArray<d> sparseArray = new SparseArray<>();
        for (Object obj : spanned.getSpans(0, spanned.length(), Object.class)) {
            String strE = e(obj, f);
            String strD = d(obj);
            int spanStart = spanned.getSpanStart(obj);
            int spanEnd = spanned.getSpanEnd(obj);
            if (strE != null) {
                com.google.android.exoplayer2.util.a.e(strD);
                c cVar = new c(spanStart, spanEnd, strE, strD);
                f(sparseArray, spanStart).spansAdded.add(cVar);
                f(sparseArray, spanEnd).spansRemoved.add(cVar);
            }
        }
        return sparseArray;
    }

    @Nullable
    private static String d(Object obj) {
        if ((obj instanceof StrikethroughSpan) || (obj instanceof ForegroundColorSpan) || (obj instanceof BackgroundColorSpan) || (obj instanceof a3.a) || (obj instanceof AbsoluteSizeSpan) || (obj instanceof RelativeSizeSpan) || (obj instanceof a3.e)) {
            return "</span>";
        }
        if (obj instanceof TypefaceSpan) {
            if (((TypefaceSpan) obj).getFamily() != null) {
                return "</span>";
            }
            return null;
        }
        if (obj instanceof StyleSpan) {
            int style = ((StyleSpan) obj).getStyle();
            if (style == 1) {
                return "</b>";
            }
            if (style == 2) {
                return "</i>";
            }
            if (style == 3) {
                return "</i></b>";
            }
        } else {
            if (obj instanceof a3.c) {
                return "<rt>" + b(((a3.c) obj).rubyText) + "</rt></ruby>";
            }
            if (obj instanceof UnderlineSpan) {
                return "</u>";
            }
        }
        return null;
    }

    @Nullable
    private static String e(Object obj, float f) {
        if (obj instanceof StrikethroughSpan) {
            return "<span style='text-decoration:line-through;'>";
        }
        if (obj instanceof ForegroundColorSpan) {
            return com.google.android.exoplayer2.util.o0.z("<span style='color:%s;'>", j.b(((ForegroundColorSpan) obj).getForegroundColor()));
        }
        if (obj instanceof BackgroundColorSpan) {
            return com.google.android.exoplayer2.util.o0.z("<span class='bg_%s'>", Integer.valueOf(((BackgroundColorSpan) obj).getBackgroundColor()));
        }
        if (obj instanceof a3.a) {
            return "<span style='text-combine-upright:all;'>";
        }
        if (obj instanceof AbsoluteSizeSpan) {
            AbsoluteSizeSpan absoluteSizeSpan = (AbsoluteSizeSpan) obj;
            return com.google.android.exoplayer2.util.o0.z("<span style='font-size:%.2fpx;'>", Float.valueOf(absoluteSizeSpan.getDip() ? absoluteSizeSpan.getSize() : absoluteSizeSpan.getSize() / f));
        }
        if (obj instanceof RelativeSizeSpan) {
            return com.google.android.exoplayer2.util.o0.z("<span style='font-size:%.2f%%;'>", Float.valueOf(((RelativeSizeSpan) obj).getSizeChange() * 100.0f));
        }
        if (obj instanceof TypefaceSpan) {
            String family = ((TypefaceSpan) obj).getFamily();
            if (family != null) {
                return com.google.android.exoplayer2.util.o0.z("<span style='font-family:\"%s\";'>", family);
            }
            return null;
        }
        if (obj instanceof StyleSpan) {
            int style = ((StyleSpan) obj).getStyle();
            if (style == 1) {
                return "<b>";
            }
            if (style == 2) {
                return "<i>";
            }
            if (style != 3) {
                return null;
            }
            return "<b><i>";
        }
        if (!(obj instanceof a3.c)) {
            if (obj instanceof UnderlineSpan) {
                return "<u>";
            }
            if (!(obj instanceof a3.e)) {
                return null;
            }
            a3.e eVar = (a3.e) obj;
            return com.google.android.exoplayer2.util.o0.z("<span style='-webkit-text-emphasis-style:%1$s;text-emphasis-style:%1$s;-webkit-text-emphasis-position:%2$s;text-emphasis-position:%2$s;display:inline-block;'>", h(eVar.markShape, eVar.markFill), g(eVar.position));
        }
        int i10 = ((a3.c) obj).position;
        if (i10 == -1) {
            return "<ruby style='ruby-position:unset;'>";
        }
        if (i10 == 1) {
            return "<ruby style='ruby-position:over;'>";
        }
        if (i10 != 2) {
            return null;
        }
        return "<ruby style='ruby-position:under;'>";
    }

    private static String h(int i10, int i11) {
        StringBuilder sb = new StringBuilder();
        if (i11 == 1) {
            sb.append("filled ");
        } else if (i11 == 2) {
            sb.append("open ");
        }
        if (i10 == 0) {
            sb.append("none");
        } else if (i10 == 1) {
            sb.append("circle");
        } else if (i10 == 2) {
            sb.append("dot");
        } else if (i10 != 3) {
            sb.append("unset");
        } else {
            sb.append("sesame");
        }
        return sb.toString();
    }

    private static String b(CharSequence charSequence) {
        return NEWLINE_PATTERN.matcher(Html.escapeHtml(charSequence)).replaceAll("<br>");
    }

    private static d f(SparseArray<d> sparseArray, int i10) {
        d dVar = sparseArray.get(i10);
        if (dVar == null) {
            d dVar2 = new d();
            sparseArray.put(i10, dVar2);
            return dVar2;
        }
        return dVar;
    }
}
