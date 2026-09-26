package androidx.compose.ui.input.pointer;

import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import kotlin.jvm.internal.k;
import kotlin.jvm.internal.t;
import org.jetbrains.annotations.NotNull;

/* JADX INFO: loaded from: classes7.dex */
final class PointerInputChangeEventProducer {

    @NotNull
    private final Map<PointerId, PointerInputData> previousPointerInputData = new LinkedHashMap();

    private static final class PointerInputData {
        private final boolean down;
        private final long positionOnScreen;
        private final int type;
        private final long uptime;

        public /* synthetic */ PointerInputData(long j6, long j10, boolean z6, int i10, k kVar) {
            this(j6, j10, z6, i10);
        }

        public final boolean a() {
            return this.down;
        }

        public final long b() {
            return this.positionOnScreen;
        }

        public final long c() {
            return this.uptime;
        }

        private PointerInputData(long j6, long j10, boolean z6, int i10) {
            this.uptime = j6;
            this.positionOnScreen = j10;
            this.down = z6;
            this.type = i10;
        }
    }

    public final void a() {
        this.previousPointerInputData.clear();
    }

    @NotNull
    public final InternalPointerEvent b(@NotNull PointerInputEvent pointerInputEvent, @NotNull PositionCalculator positionCalculator) {
        long jI;
        boolean zA;
        long jD;
        t.j(pointerInputEvent, "pointerInputEvent");
        t.j(positionCalculator, "positionCalculator");
        LinkedHashMap linkedHashMap = new LinkedHashMap(pointerInputEvent.b().size());
        List<PointerInputEventData> listB = pointerInputEvent.b();
        int size = listB.size();
        for (int i10 = 0; i10 < size; i10++) {
            PointerInputEventData pointerInputEventData = listB.get(i10);
            PointerInputData pointerInputData = this.previousPointerInputData.get(PointerId.a(pointerInputEventData.c()));
            if (pointerInputData == null) {
                jI = pointerInputEventData.i();
                jD = pointerInputEventData.e();
                zA = false;
            } else {
                long jC = pointerInputData.c();
                jI = jC;
                zA = pointerInputData.a();
                jD = positionCalculator.d(pointerInputData.b());
            }
            linkedHashMap.put(PointerId.a(pointerInputEventData.c()), new PointerInputChange(pointerInputEventData.c(), pointerInputEventData.i(), pointerInputEventData.e(), pointerInputEventData.a(), jI, jD, zA, false, pointerInputEventData.h(), (List) pointerInputEventData.b(), pointerInputEventData.g(), (k) null));
            if (pointerInputEventData.a()) {
                this.previousPointerInputData.put(PointerId.a(pointerInputEventData.c()), new PointerInputData(pointerInputEventData.i(), pointerInputEventData.f(), pointerInputEventData.a(), pointerInputEventData.h(), null));
            } else {
                this.previousPointerInputData.remove(PointerId.a(pointerInputEventData.c()));
            }
        }
        return new InternalPointerEvent(linkedHashMap, pointerInputEvent);
    }
}
