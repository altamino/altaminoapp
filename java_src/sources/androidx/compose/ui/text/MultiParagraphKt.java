package androidx.compose.ui.text;

import java.util.List;
import kotlin.jvm.internal.t;
import org.jetbrains.annotations.NotNull;

/* JADX INFO: loaded from: classes5.dex */
public final class MultiParagraphKt {
    public static final int a(@NotNull List<ParagraphInfo> paragraphInfoList, int i10) {
        byte b7;
        t.j(paragraphInfoList, "paragraphInfoList");
        int size = paragraphInfoList.size() - 1;
        int i11 = 0;
        while (i11 <= size) {
            int i12 = (i11 + size) >>> 1;
            ParagraphInfo paragraphInfo = paragraphInfoList.get(i12);
            if (paragraphInfo.f() > i10) {
                b7 = 1;
            } else {
                b7 = paragraphInfo.b() <= i10 ? (byte) -1 : (byte) 0;
            }
            if (b7 < 0) {
                i11 = i12 + 1;
            } else {
                if (b7 <= 0) {
                    return i12;
                }
                size = i12 - 1;
            }
        }
        return -(i11 + 1);
    }

    public static final int b(@NotNull List<ParagraphInfo> paragraphInfoList, int i10) {
        byte b7;
        t.j(paragraphInfoList, "paragraphInfoList");
        int size = paragraphInfoList.size() - 1;
        int i11 = 0;
        while (i11 <= size) {
            int i12 = (i11 + size) >>> 1;
            ParagraphInfo paragraphInfo = paragraphInfoList.get(i12);
            if (paragraphInfo.g() > i10) {
                b7 = 1;
            } else {
                b7 = paragraphInfo.c() <= i10 ? (byte) -1 : (byte) 0;
            }
            if (b7 < 0) {
                i11 = i12 + 1;
            } else {
                if (b7 <= 0) {
                    return i12;
                }
                size = i12 - 1;
            }
        }
        return -(i11 + 1);
    }

    public static final int c(@NotNull List<ParagraphInfo> paragraphInfoList, float f) {
        byte b7;
        t.j(paragraphInfoList, "paragraphInfoList");
        int size = paragraphInfoList.size() - 1;
        int i10 = 0;
        while (i10 <= size) {
            int i11 = (i10 + size) >>> 1;
            ParagraphInfo paragraphInfo = paragraphInfoList.get(i11);
            if (paragraphInfo.h() > f) {
                b7 = 1;
            } else {
                b7 = paragraphInfo.a() <= f ? (byte) -1 : (byte) 0;
            }
            if (b7 < 0) {
                i10 = i11 + 1;
            } else {
                if (b7 <= 0) {
                    return i11;
                }
                size = i11 - 1;
            }
        }
        return -(i10 + 1);
    }
}
