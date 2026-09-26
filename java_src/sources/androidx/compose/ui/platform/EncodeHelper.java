package androidx.compose.ui.platform;

import android.os.Parcel;
import android.util.Base64;
import androidx.compose.ui.geometry.Offset;
import androidx.compose.ui.graphics.Color;
import androidx.compose.ui.graphics.Shadow;
import androidx.compose.ui.text.SpanStyle;
import androidx.compose.ui.text.font.FontStyle;
import androidx.compose.ui.text.font.FontSynthesis;
import androidx.compose.ui.text.font.FontWeight;
import androidx.compose.ui.text.style.BaselineShift;
import androidx.compose.ui.text.style.TextDecoration;
import androidx.compose.ui.text.style.TextGeometricTransform;
import androidx.compose.ui.unit.TextUnit;
import androidx.compose.ui.unit.TextUnitType;
import org.jetbrains.annotations.NotNull;

/* JADX INFO: loaded from: classes7.dex */
public final class EncodeHelper {

    @NotNull
    private Parcel parcel;

    public final void a(byte b7) {
        this.parcel.writeByte(b7);
    }

    public final void b(float f) {
        this.parcel.writeFloat(f);
    }

    public final void c(int i10) {
        this.parcel.writeInt(i10);
    }

    public final void d(@NotNull Shadow shadow) {
        kotlin.jvm.internal.t.j(shadow, "shadow");
        m(shadow.c());
        b(Offset.m(shadow.d()));
        b(Offset.n(shadow.d()));
        b(shadow.b());
    }

    public final void e(@NotNull SpanStyle spanStyle) {
        kotlin.jvm.internal.t.j(spanStyle, "spanStyle");
        long jF = spanStyle.f();
        Color.Companion companion = Color.Companion;
        if (!Color.n(jF, companion.f())) {
            a((byte) 1);
            m(spanStyle.f());
        }
        long jI = spanStyle.i();
        TextUnit.Companion companion2 = TextUnit.Companion;
        if (!TextUnit.e(jI, companion2.a())) {
            a((byte) 2);
            j(spanStyle.i());
        }
        FontWeight fontWeightL = spanStyle.l();
        if (fontWeightL != null) {
            a((byte) 3);
            f(fontWeightL);
        }
        FontStyle fontStyleJ = spanStyle.j();
        if (fontStyleJ != null) {
            int i10 = fontStyleJ.i();
            a((byte) 4);
            o(i10);
        }
        FontSynthesis fontSynthesisK = spanStyle.k();
        if (fontSynthesisK != null) {
            int iM = fontSynthesisK.m();
            a((byte) 5);
            l(iM);
        }
        String strH = spanStyle.h();
        if (strH != null) {
            a((byte) 6);
            i(strH);
        }
        if (!TextUnit.e(spanStyle.m(), companion2.a())) {
            a((byte) 7);
            j(spanStyle.m());
        }
        BaselineShift baselineShiftD = spanStyle.d();
        if (baselineShiftD != null) {
            float fH = baselineShiftD.h();
            a((byte) 8);
            k(fH);
        }
        TextGeometricTransform textGeometricTransformS = spanStyle.s();
        if (textGeometricTransformS != null) {
            a((byte) 9);
            h(textGeometricTransformS);
        }
        if (!Color.n(spanStyle.c(), companion.f())) {
            a((byte) 10);
            m(spanStyle.c());
        }
        TextDecoration textDecorationQ = spanStyle.q();
        if (textDecorationQ != null) {
            a(com.google.common.base.c.VT);
            g(textDecorationQ);
        }
        Shadow shadowP = spanStyle.p();
        if (shadowP != null) {
            a(com.google.common.base.c.FF);
            d(shadowP);
        }
    }

    public final void f(@NotNull FontWeight fontWeight) {
        kotlin.jvm.internal.t.j(fontWeight, "fontWeight");
        c(fontWeight.k());
    }

    public final void g(@NotNull TextDecoration textDecoration) {
        kotlin.jvm.internal.t.j(textDecoration, "textDecoration");
        c(textDecoration.e());
    }

    public final void h(@NotNull TextGeometricTransform textGeometricTransform) {
        kotlin.jvm.internal.t.j(textGeometricTransform, "textGeometricTransform");
        b(textGeometricTransform.b());
        b(textGeometricTransform.c());
    }

    public final void i(@NotNull String string) {
        kotlin.jvm.internal.t.j(string, "string");
        this.parcel.writeString(string);
    }

    public final void l(int i10) {
        FontSynthesis.Companion companion = FontSynthesis.Companion;
        byte b7 = 0;
        if (!FontSynthesis.h(i10, companion.b())) {
            if (FontSynthesis.h(i10, companion.a())) {
                b7 = 1;
            } else if (FontSynthesis.h(i10, companion.d())) {
                b7 = 2;
            } else if (FontSynthesis.h(i10, companion.c())) {
                b7 = 3;
            }
        }
        a(b7);
    }

    public final void n(long j6) {
        this.parcel.writeLong(j6);
    }

    public final void o(int i10) {
        FontStyle.Companion companion = FontStyle.Companion;
        byte b7 = 0;
        if (!FontStyle.f(i10, companion.b()) && FontStyle.f(i10, companion.a())) {
            b7 = 1;
        }
        a(b7);
    }

    @NotNull
    public final String p() {
        String strEncodeToString = Base64.encodeToString(this.parcel.marshall(), 0);
        kotlin.jvm.internal.t.i(strEncodeToString, "encodeToString(bytes, Base64.DEFAULT)");
        return strEncodeToString;
    }

    public final void q() {
        this.parcel.recycle();
        Parcel parcelObtain = Parcel.obtain();
        kotlin.jvm.internal.t.i(parcelObtain, "obtain()");
        this.parcel = parcelObtain;
    }

    public EncodeHelper() {
        Parcel parcelObtain = Parcel.obtain();
        kotlin.jvm.internal.t.i(parcelObtain, "obtain()");
        this.parcel = parcelObtain;
    }

    public final void j(long j6) {
        long jG = TextUnit.g(j6);
        TextUnitType.Companion companion = TextUnitType.Companion;
        byte b7 = 0;
        if (!TextUnitType.g(jG, companion.c())) {
            if (TextUnitType.g(jG, companion.b())) {
                b7 = 1;
            } else if (TextUnitType.g(jG, companion.a())) {
                b7 = 2;
            }
        }
        a(b7);
        if (!TextUnitType.g(TextUnit.g(j6), companion.c())) {
            b(TextUnit.h(j6));
        }
    }

    public final void k(float f) {
        b(f);
    }

    public final void m(long j6) {
        n(j6);
    }
}
