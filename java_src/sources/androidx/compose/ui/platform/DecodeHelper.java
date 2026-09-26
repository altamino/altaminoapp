package androidx.compose.ui.platform;

import android.os.Parcel;
import android.util.Base64;
import androidx.compose.ui.geometry.OffsetKt;
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
import androidx.compose.ui.unit.TextUnitKt;
import androidx.compose.ui.unit.TextUnitType;
import org.jetbrains.annotations.NotNull;

/* JADX INFO: loaded from: classes9.dex */
public final class DecodeHelper {

    @NotNull
    private final Parcel parcel;

    public DecodeHelper(@NotNull String string) {
        kotlin.jvm.internal.t.j(string, "string");
        Parcel parcelObtain = Parcel.obtain();
        kotlin.jvm.internal.t.i(parcelObtain, "obtain()");
        this.parcel = parcelObtain;
        byte[] bArrDecode = Base64.decode(string, 0);
        parcelObtain.unmarshall(bArrDecode, 0, bArrDecode.length);
        parcelObtain.setDataPosition(0);
    }

    private final int a() {
        return this.parcel.dataAvail();
    }

    private final byte c() {
        return this.parcel.readByte();
    }

    private final float e() {
        return this.parcel.readFloat();
    }

    private final int i() {
        return this.parcel.readInt();
    }

    private final Shadow j() {
        return new Shadow(d(), OffsetKt.a(e(), e()), e(), null);
    }

    private final String l() {
        return this.parcel.readString();
    }

    private final TextGeometricTransform n() {
        return new TextGeometricTransform(e(), e());
    }

    private final long p() {
        return w7.f0.b(this.parcel.readLong());
    }

    @NotNull
    public final FontWeight h() {
        return new FontWeight(i());
    }

    @NotNull
    public final SpanStyle k() {
        MutableSpanStyle mutableSpanStyle;
        MutableSpanStyle mutableSpanStyle2 = mutableSpanStyle;
        MutableSpanStyle mutableSpanStyle3 = new MutableSpanStyle(0L, 0L, null, null, null, null, null, 0L, null, null, null, 0L, null, null, 16383, null);
        while (this.parcel.dataAvail() > 1) {
            byte bC = c();
            if (bC != 1) {
                mutableSpanStyle = mutableSpanStyle2;
                if (bC == 2) {
                    if (a() < 5) {
                        return mutableSpanStyle.m();
                    }
                    mutableSpanStyle.e(o());
                    mutableSpanStyle2 = mutableSpanStyle;
                } else if (bC == 3) {
                    if (a() < 4) {
                        return mutableSpanStyle.m();
                    }
                    mutableSpanStyle.h(h());
                    mutableSpanStyle2 = mutableSpanStyle;
                } else if (bC == 4) {
                    if (a() < 1) {
                        return mutableSpanStyle.m();
                    }
                    mutableSpanStyle.f(FontStyle.c(f()));
                    mutableSpanStyle2 = mutableSpanStyle;
                } else if (bC != 5) {
                    if (bC == 6) {
                        mutableSpanStyle.d(l());
                    } else if (bC == 7) {
                        if (a() < 5) {
                            return mutableSpanStyle.m();
                        }
                        mutableSpanStyle.i(o());
                    } else if (bC == 8) {
                        if (a() < 4) {
                            return mutableSpanStyle.m();
                        }
                        mutableSpanStyle.b(BaselineShift.b(b()));
                    } else if (bC == 9) {
                        if (a() < 8) {
                            return mutableSpanStyle.m();
                        }
                        mutableSpanStyle.l(n());
                    } else if (bC == 10) {
                        if (a() < 8) {
                            return mutableSpanStyle.m();
                        }
                        mutableSpanStyle.a(d());
                    } else if (bC == 11) {
                        if (a() < 4) {
                            return mutableSpanStyle.m();
                        }
                        mutableSpanStyle.k(m());
                    } else if (bC == 12) {
                        if (a() < 20) {
                            return mutableSpanStyle.m();
                        }
                        mutableSpanStyle.j(j());
                    }
                    mutableSpanStyle2 = mutableSpanStyle;
                } else {
                    if (a() < 1) {
                        return mutableSpanStyle.m();
                    }
                    mutableSpanStyle.g(FontSynthesis.e(g()));
                    mutableSpanStyle2 = mutableSpanStyle;
                }
            } else {
                if (a() < 8) {
                    break;
                }
                mutableSpanStyle2.c(d());
            }
        }
        mutableSpanStyle = mutableSpanStyle2;
        return mutableSpanStyle.m();
    }

    private final float b() {
        return BaselineShift.c(e());
    }

    private final TextDecoration m() {
        boolean z6;
        boolean z10;
        int i10 = i();
        TextDecoration.Companion companion = TextDecoration.Companion;
        if ((companion.b().e() & i10) != 0) {
            z6 = true;
        } else {
            z6 = false;
        }
        if ((i10 & companion.d().e()) != 0) {
            z10 = true;
        } else {
            z10 = false;
        }
        if (z6 && z10) {
            return companion.a(kotlin.collections.v.p(companion.b(), companion.d()));
        }
        if (z6) {
            return companion.b();
        }
        if (z10) {
            return companion.d();
        }
        return companion.c();
    }

    public final long d() {
        return Color.i(p());
    }

    public final int f() {
        byte bC = c();
        if (bC == 0) {
            return FontStyle.Companion.b();
        }
        if (bC == 1) {
            return FontStyle.Companion.a();
        }
        return FontStyle.Companion.b();
    }

    public final int g() {
        byte bC = c();
        if (bC == 0) {
            return FontSynthesis.Companion.b();
        }
        if (bC == 1) {
            return FontSynthesis.Companion.a();
        }
        if (bC == 3) {
            return FontSynthesis.Companion.c();
        }
        if (bC == 2) {
            return FontSynthesis.Companion.d();
        }
        return FontSynthesis.Companion.b();
    }

    public final long o() {
        long jC;
        byte bC = c();
        if (bC == 1) {
            jC = TextUnitType.Companion.b();
        } else if (bC == 2) {
            jC = TextUnitType.Companion.a();
        } else {
            jC = TextUnitType.Companion.c();
        }
        if (TextUnitType.g(jC, TextUnitType.Companion.c())) {
            return TextUnit.Companion.a();
        }
        return TextUnitKt.a(e(), jC);
    }
}
