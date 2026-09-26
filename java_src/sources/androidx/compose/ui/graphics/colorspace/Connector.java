package androidx.compose.ui.graphics.colorspace;

import java.util.Arrays;
import kotlin.jvm.internal.k;
import kotlin.jvm.internal.t;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes3.dex */
public class Connector {

    @NotNull
    public static final Companion Companion = new Companion(null);

    @NotNull
    private final ColorSpace destination;
    private final int renderIntent;

    @NotNull
    private final ColorSpace source;

    @Nullable
    private final float[] transform;

    @NotNull
    private final ColorSpace transformDestination;

    @NotNull
    private final ColorSpace transformSource;

    public static final class Companion {
        public /* synthetic */ Companion(k kVar) {
            this();
        }

        private Companion() {
        }

        /* JADX INFO: Access modifiers changed from: private */
        public final float[] b(ColorSpace colorSpace, ColorSpace colorSpace2, int i10) {
            if (!RenderIntent.f(i10, RenderIntent.Companion.a())) {
                return null;
            }
            long jF = colorSpace.f();
            ColorModel.Companion companion = ColorModel.Companion;
            boolean zF = ColorModel.f(jF, companion.b());
            boolean zF2 = ColorModel.f(colorSpace2.f(), companion.b());
            if (zF && zF2) {
                return null;
            }
            if (!zF && !zF2) {
                return null;
            }
            if (!zF) {
                colorSpace = colorSpace2;
            }
            Rgb rgb = (Rgb) colorSpace;
            float[] fArrC = zF ? rgb.r().c() : Illuminant.INSTANCE.c();
            float[] fArrC2 = zF2 ? rgb.r().c() : Illuminant.INSTANCE.c();
            return new float[]{fArrC[0] / fArrC2[0], fArrC[1] / fArrC2[1], fArrC[2] / fArrC2[2]};
        }

        @NotNull
        public final Connector c(@NotNull final ColorSpace source) {
            t.j(source, "source");
            final int iC = RenderIntent.Companion.c();
            return new Connector(source, iC) { // from class: androidx.compose.ui.graphics.colorspace.Connector$Companion$identity$1
                {
                    super(source, source, iC, null);
                }

                @Override // androidx.compose.ui.graphics.colorspace.Connector
                @NotNull
                public float[] a(@NotNull float[] v5) {
                    t.j(v5, "v");
                    return v5;
                }
            };
        }
    }

    public static final class RgbConnector extends Connector {

        @NotNull
        private final Rgb mDestination;

        @NotNull
        private final Rgb mSource;

        @NotNull
        private final float[] mTransform;

        public /* synthetic */ RgbConnector(Rgb rgb, Rgb rgb2, int i10, k kVar) {
            this(rgb, rgb2, i10);
        }

        private RgbConnector(Rgb rgb, Rgb rgb2, int i10) {
            super(rgb, rgb2, rgb, rgb2, i10, null, null);
            this.mSource = rgb;
            this.mDestination = rgb2;
            this.mTransform = b(rgb, rgb2, i10);
        }

        @Override // androidx.compose.ui.graphics.colorspace.Connector
        @NotNull
        public float[] a(@NotNull float[] v5) {
            t.j(v5, "v");
            v5[0] = (float) this.mSource.l().invoke(Double.valueOf(v5[0])).doubleValue();
            v5[1] = (float) this.mSource.l().invoke(Double.valueOf(v5[1])).doubleValue();
            v5[2] = (float) this.mSource.l().invoke(Double.valueOf(v5[2])).doubleValue();
            ColorSpaceKt.m(this.mTransform, v5);
            v5[0] = (float) this.mDestination.o().invoke(Double.valueOf(v5[0])).doubleValue();
            v5[1] = (float) this.mDestination.o().invoke(Double.valueOf(v5[1])).doubleValue();
            v5[2] = (float) this.mDestination.o().invoke(Double.valueOf(v5[2])).doubleValue();
            return v5;
        }

        private final float[] b(Rgb rgb, Rgb rgb2, int i10) {
            if (ColorSpaceKt.f(rgb.r(), rgb2.r())) {
                return ColorSpaceKt.k(rgb2.n(), rgb.q());
            }
            float[] fArrQ = rgb.q();
            float[] fArrN = rgb2.n();
            float[] fArrC = rgb.r().c();
            float[] fArrC2 = rgb2.r().c();
            WhitePoint whitePointR = rgb.r();
            Illuminant illuminant = Illuminant.INSTANCE;
            if (!ColorSpaceKt.f(whitePointR, illuminant.b())) {
                float[] fArrB = Adaptation.Companion.a().b();
                float[] fArrC3 = illuminant.c();
                float[] fArrCopyOf = Arrays.copyOf(fArrC3, fArrC3.length);
                t.i(fArrCopyOf, "copyOf(this, size)");
                fArrQ = ColorSpaceKt.k(ColorSpaceKt.e(fArrB, fArrC, fArrCopyOf), rgb.q());
            }
            if (!ColorSpaceKt.f(rgb2.r(), illuminant.b())) {
                float[] fArrB2 = Adaptation.Companion.a().b();
                float[] fArrC4 = illuminant.c();
                float[] fArrCopyOf2 = Arrays.copyOf(fArrC4, fArrC4.length);
                t.i(fArrCopyOf2, "copyOf(this, size)");
                fArrN = ColorSpaceKt.j(ColorSpaceKt.k(ColorSpaceKt.e(fArrB2, fArrC2, fArrCopyOf2), rgb2.q()));
            }
            if (RenderIntent.f(i10, RenderIntent.Companion.a())) {
                fArrQ = ColorSpaceKt.l(new float[]{fArrC[0] / fArrC2[0], fArrC[1] / fArrC2[1], fArrC[2] / fArrC2[2]}, fArrQ);
            }
            return ColorSpaceKt.k(fArrN, fArrQ);
        }
    }

    public /* synthetic */ Connector(ColorSpace colorSpace, ColorSpace colorSpace2, int i10, k kVar) {
        this(colorSpace, colorSpace2, i10);
    }

    public /* synthetic */ Connector(ColorSpace colorSpace, ColorSpace colorSpace2, ColorSpace colorSpace3, ColorSpace colorSpace4, int i10, float[] fArr, k kVar) {
        this(colorSpace, colorSpace2, colorSpace3, colorSpace4, i10, fArr);
    }

    @NotNull
    public float[] a(@NotNull float[] v5) {
        t.j(v5, "v");
        float[] fArrI = this.transformSource.i(v5);
        float[] fArr = this.transform;
        if (fArr != null) {
            fArrI[0] = fArrI[0] * fArr[0];
            fArrI[1] = fArrI[1] * fArr[1];
            fArrI[2] = fArrI[2] * fArr[2];
        }
        return this.transformDestination.a(fArrI);
    }

    private Connector(ColorSpace colorSpace, ColorSpace colorSpace2, ColorSpace colorSpace3, ColorSpace colorSpace4, int i10, float[] fArr) {
        this.source = colorSpace;
        this.destination = colorSpace2;
        this.transformSource = colorSpace3;
        this.transformDestination = colorSpace4;
        this.renderIntent = i10;
        this.transform = fArr;
    }

    /* JADX WARN: Illegal instructions before constructor call */
    private Connector(ColorSpace colorSpace, ColorSpace colorSpace2, int i10) {
        long jF = colorSpace.f();
        ColorModel.Companion companion = ColorModel.Companion;
        this(colorSpace, colorSpace2, ColorModel.f(jF, companion.b()) ? ColorSpaceKt.d(colorSpace, Illuminant.INSTANCE.b(), null, 2, null) : colorSpace, ColorModel.f(colorSpace2.f(), companion.b()) ? ColorSpaceKt.d(colorSpace2, Illuminant.INSTANCE.b(), null, 2, null) : colorSpace2, i10, Companion.b(colorSpace, colorSpace2, i10), null);
    }
}
