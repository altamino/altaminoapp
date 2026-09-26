package androidx.compose.ui.input.pointer;

import android.os.Build;
import android.util.SparseBooleanArray;
import android.util.SparseLongArray;
import android.view.MotionEvent;
import androidx.compose.ui.geometry.Offset;
import androidx.compose.ui.geometry.OffsetKt;
import java.util.ArrayList;
import java.util.List;
import kotlin.jvm.internal.t;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes7.dex */
public final class MotionEventAdapter {
    private long nextId;

    @NotNull
    private final SparseLongArray motionEventToComposePointerIdMap = new SparseLongArray();

    @NotNull
    private final SparseBooleanArray canHover = new SparseBooleanArray();

    @NotNull
    private final List<PointerInputEventData> pointers = new ArrayList();
    private int previousToolType = -1;
    private int previousSource = -1;

    /* JADX WARN: Code duplicated, block: B:12:0x004e  */
    /* JADX WARN: Code duplicated, block: B:14:0x0051  */
    /* JADX WARN: Code duplicated, block: B:16:0x0054  */
    /* JADX WARN: Code duplicated, block: B:18:0x0057  */
    /* JADX WARN: Code duplicated, block: B:20:0x005a  */
    /* JADX WARN: Code duplicated, block: B:22:0x0062  */
    /* JADX WARN: Code duplicated, block: B:23:0x0069  */
    /* JADX WARN: Code duplicated, block: B:24:0x0070  */
    /* JADX WARN: Code duplicated, block: B:25:0x0077  */
    /* JADX WARN: Code duplicated, block: B:26:0x007e  */
    /* JADX WARN: Code duplicated, block: B:29:0x0091  */
    /* JADX WARN: Code duplicated, block: B:41:0x00d0  */
    /* JADX WARN: Code duplicated, block: B:43:0x00e4  */
    private final PointerInputEventData d(PositionCalculator positionCalculator, MotionEvent motionEvent, int i10, boolean z6) {
        long j6;
        long jN;
        long jA;
        long jD;
        int toolType;
        int iE;
        int historySize;
        int i11;
        long jC;
        float historicalX;
        long jF = f(motionEvent.getPointerId(i10));
        long jA2 = OffsetKt.a(motionEvent.getX(i10), motionEvent.getY(i10));
        if (i10 != 0) {
            if (Build.VERSION.SDK_INT >= 29) {
                jA = MotionEventHelper.INSTANCE.a(motionEvent, i10);
                jD = positionCalculator.d(jA);
            } else {
                j6 = jA2;
                jN = positionCalculator.n(jA2);
            }
            toolType = motionEvent.getToolType(i10);
            if (toolType != 0) {
                iE = PointerType.Companion.e();
            } else if (toolType != 1) {
                iE = PointerType.Companion.d();
            } else if (toolType != 2) {
                iE = PointerType.Companion.c();
            } else if (toolType != 3) {
                iE = PointerType.Companion.b();
            } else if (toolType != 4) {
                iE = PointerType.Companion.e();
            } else {
                iE = PointerType.Companion.a();
            }
            int i12 = iE;
            ArrayList arrayList = new ArrayList();
            historySize = motionEvent.getHistorySize();
            for (i11 = 0; i11 < historySize; i11++) {
                historicalX = motionEvent.getHistoricalX(i10, i11);
                float historicalY = motionEvent.getHistoricalY(i10, i11);
                if (Float.isInfinite(historicalX) && !Float.isNaN(historicalX) && !Float.isInfinite(historicalY) && !Float.isNaN(historicalY)) {
                    arrayList.add(new HistoricalChange(motionEvent.getHistoricalEventTime(i11), OffsetKt.a(historicalX, historicalY), null));
                }
            }
            if (motionEvent.getActionMasked() == 8) {
                jC = OffsetKt.a(motionEvent.getAxisValue(10), -motionEvent.getAxisValue(9));
            } else {
                jC = Offset.Companion.c();
            }
            long j10 = jC;
            return new PointerInputEventData(jF, motionEvent.getEventTime(), jN, j6, z6, i12, this.canHover.get(motionEvent.getPointerId(i10), false), arrayList, j10, null);
        }
        jA = OffsetKt.a(motionEvent.getRawX(), motionEvent.getRawY());
        jD = positionCalculator.d(jA);
        jN = jA;
        j6 = jD;
        toolType = motionEvent.getToolType(i10);
        if (toolType != 0) {
            iE = PointerType.Companion.e();
        } else if (toolType != 1) {
            iE = PointerType.Companion.d();
        } else if (toolType != 2) {
            iE = PointerType.Companion.c();
        } else if (toolType != 3) {
            iE = PointerType.Companion.b();
        } else if (toolType != 4) {
            iE = PointerType.Companion.e();
        } else {
            iE = PointerType.Companion.a();
        }
        int i13 = iE;
        ArrayList arrayList2 = new ArrayList();
        historySize = motionEvent.getHistorySize();
        while (i11 < historySize) {
            historicalX = motionEvent.getHistoricalX(i10, i11);
            float historicalY2 = motionEvent.getHistoricalY(i10, i11);
            if (Float.isInfinite(historicalX)) {
            }
        }
        if (motionEvent.getActionMasked() == 8) {
            jC = OffsetKt.a(motionEvent.getAxisValue(10), -motionEvent.getAxisValue(9));
        } else {
            jC = Offset.Companion.c();
        }
        long j11 = jC;
        return new PointerInputEventData(jF, motionEvent.getEventTime(), jN, j6, z6, i13, this.canHover.get(motionEvent.getPointerId(i10), false), arrayList2, j11, null);
    }

    private final long f(int i10) {
        long jValueAt;
        int iIndexOfKey = this.motionEventToComposePointerIdMap.indexOfKey(i10);
        if (iIndexOfKey >= 0) {
            jValueAt = this.motionEventToComposePointerIdMap.valueAt(iIndexOfKey);
        } else {
            jValueAt = this.nextId;
            this.nextId = 1 + jValueAt;
            this.motionEventToComposePointerIdMap.put(i10, jValueAt);
        }
        return PointerId.b(jValueAt);
    }

    @Nullable
    public final PointerInputEvent c(@NotNull MotionEvent motionEvent, @NotNull PositionCalculator positionCalculator) {
        int actionIndex;
        t.j(motionEvent, "motionEvent");
        t.j(positionCalculator, "positionCalculator");
        int actionMasked = motionEvent.getActionMasked();
        if (actionMasked == 3) {
            this.motionEventToComposePointerIdMap.clear();
            this.canHover.clear();
            return null;
        }
        b(motionEvent);
        a(motionEvent);
        boolean z6 = actionMasked == 10 || actionMasked == 7 || actionMasked == 9;
        boolean z10 = actionMasked == 8;
        if (z6) {
            this.canHover.put(motionEvent.getPointerId(motionEvent.getActionIndex()), true);
        }
        if (actionMasked != 1) {
            actionIndex = actionMasked != 6 ? -1 : motionEvent.getActionIndex();
        } else {
            actionIndex = 0;
        }
        this.pointers.clear();
        int pointerCount = motionEvent.getPointerCount();
        int i10 = 0;
        while (i10 < pointerCount) {
            this.pointers.add(d(positionCalculator, motionEvent, i10, (z6 || i10 == actionIndex || (z10 && motionEvent.getButtonState() == 0)) ? false : true));
            i10++;
        }
        h(motionEvent);
        return new PointerInputEvent(motionEvent.getEventTime(), this.pointers, motionEvent);
    }

    public final void e(int i10) {
        this.canHover.delete(i10);
        this.motionEventToComposePointerIdMap.delete(i10);
    }

    private final void a(MotionEvent motionEvent) {
        int actionMasked = motionEvent.getActionMasked();
        if (actionMasked != 0 && actionMasked != 5) {
            if (actionMasked == 9) {
                int pointerId = motionEvent.getPointerId(0);
                if (this.motionEventToComposePointerIdMap.indexOfKey(pointerId) < 0) {
                    SparseLongArray sparseLongArray = this.motionEventToComposePointerIdMap;
                    long j6 = this.nextId;
                    this.nextId = 1 + j6;
                    sparseLongArray.put(pointerId, j6);
                    return;
                }
                return;
            }
            return;
        }
        int actionIndex = motionEvent.getActionIndex();
        int pointerId2 = motionEvent.getPointerId(actionIndex);
        if (this.motionEventToComposePointerIdMap.indexOfKey(pointerId2) < 0) {
            SparseLongArray sparseLongArray2 = this.motionEventToComposePointerIdMap;
            long j10 = this.nextId;
            this.nextId = 1 + j10;
            sparseLongArray2.put(pointerId2, j10);
            if (motionEvent.getToolType(actionIndex) == 3) {
                this.canHover.put(pointerId2, true);
            }
        }
    }

    private final void b(MotionEvent motionEvent) {
        if (motionEvent.getPointerCount() != 1) {
            return;
        }
        int toolType = motionEvent.getToolType(0);
        int source = motionEvent.getSource();
        if (toolType != this.previousToolType || source != this.previousSource) {
            this.previousToolType = toolType;
            this.previousSource = source;
            this.canHover.clear();
            this.motionEventToComposePointerIdMap.clear();
        }
    }

    private final boolean g(MotionEvent motionEvent, int i10) {
        int pointerCount = motionEvent.getPointerCount();
        for (int i11 = 0; i11 < pointerCount; i11++) {
            if (motionEvent.getPointerId(i11) == i10) {
                return true;
            }
        }
        return false;
    }

    private final void h(MotionEvent motionEvent) {
        int actionMasked = motionEvent.getActionMasked();
        if (actionMasked == 1 || actionMasked == 6) {
            int pointerId = motionEvent.getPointerId(motionEvent.getActionIndex());
            if (!this.canHover.get(pointerId, false)) {
                this.motionEventToComposePointerIdMap.delete(pointerId);
                this.canHover.delete(pointerId);
            }
        }
        if (this.motionEventToComposePointerIdMap.size() > motionEvent.getPointerCount()) {
            for (int size = this.motionEventToComposePointerIdMap.size() - 1; -1 < size; size--) {
                int iKeyAt = this.motionEventToComposePointerIdMap.keyAt(size);
                if (!g(motionEvent, iKeyAt)) {
                    this.motionEventToComposePointerIdMap.removeAt(size);
                    this.canHover.delete(iKeyAt);
                }
            }
        }
    }
}
