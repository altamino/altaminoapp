package androidx.compose.ui.text.platform;

import android.content.Context;
import android.graphics.Typeface;
import androidx.compose.ui.text.TempListUtilsKt;
import androidx.compose.ui.text.font.Font;
import androidx.compose.ui.text.font.FontFamily;
import androidx.compose.ui.text.font.FontListFontFamily;
import androidx.compose.ui.text.font.FontLoadingStrategy;
import androidx.compose.ui.text.font.FontMatcher;
import androidx.compose.ui.text.font.FontStyle;
import androidx.compose.ui.text.font.FontSynthesis_androidKt;
import androidx.compose.ui.text.font.FontWeight;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import kotlin.collections.d0;
import kotlin.jvm.internal.k;
import kotlin.jvm.internal.t;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import w7.u;

/* JADX INFO: loaded from: classes9.dex */
public final class AndroidFontListTypeface implements AndroidTypeface {

    @NotNull
    private static final Companion Companion = new Companion(null);

    @Deprecated
    @NotNull
    private static final FontMatcher fontMatcher = new FontMatcher();

    @NotNull
    private final FontFamily fontFamily;

    @NotNull
    private final FontMatcher fontMatcher$1;

    @NotNull
    private final Map<Font, Typeface> loadedTypefaces;

    private static final class Companion {
        public /* synthetic */ Companion(k kVar) {
            this();
        }

        private Companion() {
        }
    }

    /* JADX WARN: Code duplicated, block: B:20:0x00b2  */
    public AndroidFontListTypeface(@NotNull FontListFontFamily fontFamily, @NotNull Context context, @Nullable List<u<FontWeight, FontStyle>> list, @NotNull FontMatcher fontMatcher2) {
        ArrayList arrayList;
        t.j(fontFamily, "fontFamily");
        t.j(context, "context");
        t.j(fontMatcher2, "fontMatcher");
        this.fontMatcher$1 = fontMatcher2;
        List<Font> listQ = fontFamily.q();
        ArrayList arrayList2 = new ArrayList(listQ.size());
        int size = listQ.size();
        for (int i10 = 0; i10 < size; i10++) {
            Font font = listQ.get(i10);
            if (FontLoadingStrategy.f(font.a(), FontLoadingStrategy.Companion.b())) {
                arrayList2.add(font);
            }
        }
        if (list != null) {
            ArrayList arrayList3 = new ArrayList(list.size());
            int size2 = list.size();
            for (int i11 = 0; i11 < size2; i11++) {
                u<FontWeight, FontStyle> uVar = list.get(i11);
                arrayList3.add((Font) d0.l0(this.fontMatcher$1.a(arrayList2, uVar.a(), uVar.b().i())));
            }
            List listB = TempListUtilsKt.b(arrayList3);
            if (listB != null) {
                HashSet hashSet = new HashSet(listB.size());
                arrayList = new ArrayList(listB.size());
                int size3 = listB.size();
                for (int i12 = 0; i12 < size3; i12++) {
                    Object obj = listB.get(i12);
                    if (hashSet.add((Font) obj)) {
                        arrayList.add(obj);
                    }
                }
            } else {
                arrayList = null;
            }
        } else {
            arrayList = null;
        }
        arrayList2 = arrayList != null ? arrayList : arrayList2;
        if (arrayList2.isEmpty()) {
            throw new IllegalStateException("Could not match font");
        }
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        int size4 = arrayList2.size();
        for (int i13 = 0; i13 < size4; i13++) {
            Font font2 = (Font) arrayList2.get(i13);
            try {
                linkedHashMap.put(font2, AndroidTypefaceCache.INSTANCE.b(context, font2));
            } catch (Exception unused) {
                throw new IllegalStateException("Cannot create Typeface from " + font2);
            }
        }
        this.loadedTypefaces = linkedHashMap;
        this.fontFamily = fontFamily;
    }

    @Override // androidx.compose.ui.text.platform.AndroidTypeface
    @NotNull
    public Typeface a(@NotNull FontWeight fontWeight, int i10, int i11) {
        t.j(fontWeight, "fontWeight");
        Font font = (Font) d0.l0(this.fontMatcher$1.a(new ArrayList(this.loadedTypefaces.keySet()), fontWeight, i10));
        if (font == null) {
            throw new IllegalStateException("Could not load font");
        }
        Typeface typeface = this.loadedTypefaces.get(font);
        if (typeface != null) {
            return (Typeface) FontSynthesis_androidKt.a(i11, typeface, font, fontWeight, i10);
        }
        throw new IllegalArgumentException("Required value was null.".toString());
    }

    public /* synthetic */ AndroidFontListTypeface(FontListFontFamily fontListFontFamily, Context context, List list, FontMatcher fontMatcher2, int i10, k kVar) {
        this(fontListFontFamily, context, (i10 & 4) != 0 ? null : list, (i10 & 8) != 0 ? fontMatcher : fontMatcher2);
    }
}
