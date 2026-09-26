package androidx.compose.material;

import androidx.compose.runtime.State;
import androidx.compose.ui.geometry.Offset;
import androidx.compose.ui.geometry.OffsetKt;
import androidx.compose.ui.geometry.Size;
import androidx.compose.ui.graphics.Color;
import androidx.compose.ui.graphics.PointMode;
import androidx.compose.ui.graphics.StrokeCap;
import androidx.compose.ui.graphics.drawscope.DrawScope;
import androidx.compose.ui.graphics.drawscope.a;
import androidx.compose.ui.unit.LayoutDirection;
import e8.l;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import kotlin.collections.w;
import kotlin.jvm.internal.t;
import kotlin.jvm.internal.v;
import org.jetbrains.annotations.NotNull;
import w7.l0;

/* JADX INFO: loaded from: classes.dex */
final class SliderKt$Track$1 extends v implements l<DrawScope, l0> {
    final /* synthetic */ State<Color> $activeTickColor;
    final /* synthetic */ State<Color> $activeTrackColor;
    final /* synthetic */ State<Color> $inactiveTickColor;
    final /* synthetic */ State<Color> $inactiveTrackColor;
    final /* synthetic */ float $positionFractionEnd;
    final /* synthetic */ float $positionFractionStart;
    final /* synthetic */ float $thumbPx;
    final /* synthetic */ List<Float> $tickFractions;
    final /* synthetic */ float $trackStrokeWidth;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    SliderKt$Track$1(float f, State<Color> state, float f6, float f7, float f10, State<Color> state2, List<Float> list, State<Color> state3, State<Color> state4) {
        super(1);
        this.$thumbPx = f;
        this.$inactiveTrackColor = state;
        this.$trackStrokeWidth = f6;
        this.$positionFractionEnd = f7;
        this.$positionFractionStart = f10;
        this.$activeTrackColor = state2;
        this.$tickFractions = list;
        this.$inactiveTickColor = state3;
        this.$activeTickColor = state4;
    }

    public final void a(@NotNull DrawScope Canvas) {
        t.j(Canvas, "$this$Canvas");
        boolean z6 = Canvas.getLayoutDirection() == LayoutDirection.Rtl;
        long jA = OffsetKt.a(this.$thumbPx, Offset.n(Canvas.W()));
        long jA2 = OffsetKt.a(Size.i(Canvas.c()) - this.$thumbPx, Offset.n(Canvas.W()));
        long j6 = z6 ? jA2 : jA;
        long j10 = z6 ? jA : jA2;
        long jV = this.$inactiveTrackColor.getValue().v();
        float f = this.$trackStrokeWidth;
        StrokeCap.Companion companion = StrokeCap.Companion;
        long j11 = j10;
        long j12 = j6;
        a.i(Canvas, jV, j6, j10, f, companion.b(), null, 0.0f, null, 0, 480, null);
        a.i(Canvas, this.$activeTrackColor.getValue().v(), OffsetKt.a(Offset.m(j12) + ((Offset.m(j11) - Offset.m(j12)) * this.$positionFractionStart), Offset.n(Canvas.W())), OffsetKt.a(Offset.m(j12) + ((Offset.m(j11) - Offset.m(j12)) * this.$positionFractionEnd), Offset.n(Canvas.W())), this.$trackStrokeWidth, companion.b(), null, 0.0f, null, 0, 480, null);
        List<Float> list = this.$tickFractions;
        float f6 = this.$positionFractionEnd;
        float f7 = this.$positionFractionStart;
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        for (Object obj : list) {
            float fFloatValue = ((Number) obj).floatValue();
            Boolean boolValueOf = Boolean.valueOf(fFloatValue > f6 || fFloatValue < f7);
            Object arrayList = linkedHashMap.get(boolValueOf);
            if (arrayList == null) {
                arrayList = new ArrayList();
                linkedHashMap.put(boolValueOf, arrayList);
            }
            ((List) arrayList).add(obj);
        }
        State<Color> state = this.$inactiveTickColor;
        State<Color> state2 = this.$activeTickColor;
        float f10 = this.$trackStrokeWidth;
        for (Map.Entry entry : linkedHashMap.entrySet()) {
            boolean zBooleanValue = ((Boolean) entry.getKey()).booleanValue();
            List list2 = (List) entry.getValue();
            ArrayList arrayList2 = new ArrayList(w.x(list2, 10));
            Iterator it = list2.iterator();
            while (it.hasNext()) {
                arrayList2.add(Offset.d(OffsetKt.a(Offset.m(OffsetKt.e(j12, j11, ((Number) it.next()).floatValue())), Offset.n(Canvas.W()))));
            }
            long j13 = j11;
            long j14 = j12;
            a.l(Canvas, arrayList2, PointMode.Companion.b(), (zBooleanValue ? state : state2).getValue().v(), f10, StrokeCap.Companion.b(), null, 0.0f, null, 0, 480, null);
            j12 = j14;
            f10 = f10;
            j11 = j13;
        }
    }

    @Override // e8.l
    public /* bridge */ /* synthetic */ l0 invoke(DrawScope drawScope) {
        a(drawScope);
        return l0.INSTANCE;
    }
}
