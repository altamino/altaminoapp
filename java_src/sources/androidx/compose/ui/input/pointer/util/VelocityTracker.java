package androidx.compose.ui.input.pointer.util;

import androidx.compose.runtime.internal.StabilityInferred;
import androidx.compose.ui.geometry.Offset;
import androidx.compose.ui.geometry.OffsetKt;
import androidx.compose.ui.unit.VelocityKt;
import java.util.ArrayList;
import org.jetbrains.annotations.NotNull;

/* JADX INFO: loaded from: classes10.dex */
@StabilityInferred
public final class VelocityTracker {
    public static final int $stable = 8;
    private int index;

    @NotNull
    private final PointAtTime[] samples;
    private final boolean useImpulse;

    private final long c() {
        PointAtTime pointAtTime = this.samples[this.index];
        if (pointAtTime == null) {
            return VelocityKt.a(0.0f, 0.0f);
        }
        ImpulseCalculator impulseCalculator = new ImpulseCalculator();
        ImpulseCalculator impulseCalculator2 = new ImpulseCalculator();
        int i10 = this.index;
        int i11 = 0;
        PointAtTime pointAtTime2 = pointAtTime;
        do {
            i10 = (i10 + 1) % 20;
            PointAtTime pointAtTime3 = this.samples[i10];
            if (pointAtTime3 != null) {
                long jB = pointAtTime.b() - pointAtTime3.b();
                long jAbs = Math.abs(pointAtTime3.b() - pointAtTime2.b());
                if (jB <= 100) {
                    if (jAbs > 40) {
                        impulseCalculator.c();
                        impulseCalculator2.c();
                    }
                    long j6 = -jB;
                    impulseCalculator.a(j6, Offset.m(pointAtTime3.a()));
                    impulseCalculator2.a(j6, Offset.n(pointAtTime3.a()));
                    i11++;
                }
                pointAtTime2 = pointAtTime;
            }
            if (i10 == this.index) {
                break;
            }
        } while (i11 < 20);
        return i11 < 3 ? VelocityKt.a(0.0f, 0.0f) : VelocityKt.a(impulseCalculator.b(), impulseCalculator2.b());
    }

    private final VelocityEstimate d() {
        ArrayList arrayList = new ArrayList();
        ArrayList arrayList2 = new ArrayList();
        ArrayList arrayList3 = new ArrayList();
        int i10 = this.index;
        PointAtTime pointAtTime = this.samples[i10];
        if (pointAtTime == null) {
            return VelocityEstimate.Companion.a();
        }
        int i11 = 0;
        PointAtTime pointAtTime2 = pointAtTime;
        while (true) {
            PointAtTime pointAtTime3 = this.samples[i10];
            if (pointAtTime3 == null) {
                break;
            }
            float fB = pointAtTime.b() - pointAtTime3.b();
            float fAbs = Math.abs(pointAtTime3.b() - pointAtTime2.b());
            if (fB > 100.0f || fAbs > 40.0f) {
                break;
            }
            long jA = pointAtTime3.a();
            arrayList.add(Float.valueOf(Offset.m(jA)));
            arrayList2.add(Float.valueOf(Offset.n(jA)));
            arrayList3.add(Float.valueOf(-fB));
            if (i10 == 0) {
                i10 = 20;
            }
            i10--;
            i11++;
            if (i11 >= 20) {
                pointAtTime2 = pointAtTime3;
                break;
            }
            pointAtTime2 = pointAtTime3;
        }
        if (i11 < 3) {
            return new VelocityEstimate(Offset.Companion.c(), 1.0f, pointAtTime.b() - pointAtTime2.b(), Offset.q(pointAtTime.a(), pointAtTime2.a()), null);
        }
        try {
            PolynomialFit polynomialFitD = VelocityTrackerKt.d(arrayList3, arrayList, 2);
            PolynomialFit polynomialFitD2 = VelocityTrackerKt.d(arrayList3, arrayList2, 2);
            float f = 1000;
            return new VelocityEstimate(OffsetKt.a(polynomialFitD.a().get(1).floatValue() * f, polynomialFitD2.a().get(1).floatValue() * f), polynomialFitD.b() * polynomialFitD2.b(), pointAtTime.b() - pointAtTime2.b(), Offset.q(pointAtTime.a(), pointAtTime2.a()), null);
        } catch (IllegalArgumentException unused) {
            return VelocityEstimate.Companion.a();
        }
    }

    public final void a(long j6, long j10) {
        int i10 = (this.index + 1) % 20;
        this.index = i10;
        this.samples[i10] = new PointAtTime(j10, j6, null);
    }

    public final long b() {
        if (this.useImpulse) {
            return c();
        }
        long jB = d().b();
        return VelocityKt.a(Offset.m(jB), Offset.n(jB));
    }

    public VelocityTracker() {
        PointAtTime[] pointAtTimeArr = new PointAtTime[20];
        for (int i10 = 0; i10 < 20; i10++) {
            pointAtTimeArr[i10] = null;
        }
        this.samples = pointAtTimeArr;
        this.useImpulse = true;
    }
}
