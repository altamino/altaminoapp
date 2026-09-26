package androidx.compose.ui.text.font;

import java.util.ArrayList;
import java.util.List;
import kotlin.jvm.internal.t;
import org.jetbrains.annotations.NotNull;
import w7.l0;

/* JADX INFO: loaded from: classes11.dex */
public final class FontMatcher {
    @NotNull
    public final List<Font> a(@NotNull List<? extends Font> fontList, @NotNull FontWeight fontWeight, int i10) {
        t.j(fontList, "fontList");
        t.j(fontWeight, "fontWeight");
        ArrayList arrayList = new ArrayList(fontList.size());
        int size = fontList.size();
        int i11 = 0;
        for (int i12 = 0; i12 < size; i12++) {
            Font font = fontList.get(i12);
            Font font2 = font;
            if (t.e(font2.b(), fontWeight) && FontStyle.f(font2.c(), i10)) {
                arrayList.add(font);
            }
        }
        if (!arrayList.isEmpty()) {
            return arrayList;
        }
        l0 l0Var = l0.INSTANCE;
        ArrayList arrayList2 = new ArrayList(fontList.size());
        int size2 = fontList.size();
        for (int i13 = 0; i13 < size2; i13++) {
            Font font3 = fontList.get(i13);
            if (FontStyle.f(font3.c(), i10)) {
                arrayList2.add(font3);
            }
        }
        if (!arrayList2.isEmpty()) {
            fontList = arrayList2;
        }
        List<? extends Font> list = fontList;
        FontWeight.Companion companion = FontWeight.Companion;
        FontWeight fontWeight2 = null;
        if (fontWeight.compareTo(companion.e()) < 0) {
            int size3 = list.size();
            FontWeight fontWeight3 = null;
            for (int i14 = 0; i14 < size3; i14++) {
                FontWeight fontWeightB = list.get(i14).b();
                if (fontWeightB.compareTo(fontWeight) >= 0) {
                    if (fontWeightB.compareTo(fontWeight) <= 0) {
                        fontWeight3 = fontWeightB;
                        fontWeight2 = fontWeight3;
                        break;
                    }
                    if (fontWeight3 == null || fontWeightB.compareTo(fontWeight3) < 0) {
                        fontWeight3 = fontWeightB;
                    }
                } else if (fontWeight2 == null || fontWeightB.compareTo(fontWeight2) > 0) {
                    fontWeight2 = fontWeightB;
                }
            }
            if (fontWeight2 != null) {
                fontWeight3 = fontWeight2;
            }
            ArrayList arrayList3 = new ArrayList(list.size());
            int size4 = list.size();
            while (i11 < size4) {
                Font font4 = list.get(i11);
                if (t.e(font4.b(), fontWeight3)) {
                    arrayList3.add(font4);
                }
                i11++;
            }
            return arrayList3;
        }
        if (fontWeight.compareTo(companion.f()) > 0) {
            int size5 = list.size();
            FontWeight fontWeight4 = null;
            for (int i15 = 0; i15 < size5; i15++) {
                FontWeight fontWeightB2 = list.get(i15).b();
                if (fontWeightB2.compareTo(fontWeight) >= 0) {
                    if (fontWeightB2.compareTo(fontWeight) <= 0) {
                        fontWeight4 = fontWeightB2;
                        fontWeight2 = fontWeight4;
                        break;
                    }
                    if (fontWeight4 == null || fontWeightB2.compareTo(fontWeight4) < 0) {
                        fontWeight4 = fontWeightB2;
                    }
                } else if (fontWeight2 == null || fontWeightB2.compareTo(fontWeight2) > 0) {
                    fontWeight2 = fontWeightB2;
                }
            }
            if (fontWeight4 == null) {
                fontWeight4 = fontWeight2;
            }
            ArrayList arrayList4 = new ArrayList(list.size());
            int size6 = list.size();
            while (i11 < size6) {
                Font font5 = list.get(i11);
                if (t.e(font5.b(), fontWeight4)) {
                    arrayList4.add(font5);
                }
                i11++;
            }
            return arrayList4;
        }
        FontWeight fontWeightF = companion.f();
        int size7 = list.size();
        FontWeight fontWeight5 = null;
        FontWeight fontWeight6 = null;
        for (int i16 = 0; i16 < size7; i16++) {
            FontWeight fontWeightB3 = list.get(i16).b();
            if (fontWeightF == null || fontWeightB3.compareTo(fontWeightF) <= 0) {
                if (fontWeightB3.compareTo(fontWeight) >= 0) {
                    if (fontWeightB3.compareTo(fontWeight) <= 0) {
                        fontWeight5 = fontWeightB3;
                        fontWeight6 = fontWeight5;
                        break;
                    }
                    if (fontWeight6 == null || fontWeightB3.compareTo(fontWeight6) < 0) {
                        fontWeight6 = fontWeightB3;
                    }
                } else if (fontWeight5 == null || fontWeightB3.compareTo(fontWeight5) > 0) {
                    fontWeight5 = fontWeightB3;
                }
            }
        }
        if (fontWeight6 != null) {
            fontWeight5 = fontWeight6;
        }
        ArrayList arrayList5 = new ArrayList(list.size());
        int size8 = list.size();
        for (int i17 = 0; i17 < size8; i17++) {
            Font font6 = list.get(i17);
            if (t.e(font6.b(), fontWeight5)) {
                arrayList5.add(font6);
            }
        }
        if (!arrayList5.isEmpty()) {
            return arrayList5;
        }
        FontWeight fontWeightF2 = FontWeight.Companion.f();
        int size9 = list.size();
        FontWeight fontWeight7 = null;
        for (int i18 = 0; i18 < size9; i18++) {
            FontWeight fontWeightB4 = list.get(i18).b();
            if (fontWeightF2 == null || fontWeightB4.compareTo(fontWeightF2) >= 0) {
                if (fontWeightB4.compareTo(fontWeight) >= 0) {
                    if (fontWeightB4.compareTo(fontWeight) <= 0) {
                        fontWeight2 = fontWeightB4;
                        fontWeight7 = fontWeight2;
                        break;
                    }
                    if (fontWeight7 == null || fontWeightB4.compareTo(fontWeight7) < 0) {
                        fontWeight7 = fontWeightB4;
                    }
                } else if (fontWeight2 == null || fontWeightB4.compareTo(fontWeight2) > 0) {
                    fontWeight2 = fontWeightB4;
                }
            }
        }
        if (fontWeight7 != null) {
            fontWeight2 = fontWeight7;
        }
        ArrayList arrayList6 = new ArrayList(list.size());
        int size10 = list.size();
        while (i11 < size10) {
            Font font7 = list.get(i11);
            if (t.e(font7.b(), fontWeight2)) {
                arrayList6.add(font7);
            }
            i11++;
        }
        return arrayList6;
    }
}
