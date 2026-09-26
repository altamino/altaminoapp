package androidx.compose.ui.input.pointer;

import androidx.compose.ui.node.HitTestResult;
import androidx.compose.ui.node.LayoutNode;
import java.util.Collection;
import java.util.Iterator;
import kotlin.jvm.internal.t;
import org.jetbrains.annotations.NotNull;

/* JADX INFO: loaded from: classes5.dex */
public final class PointerInputEventProcessor {

    @NotNull
    private final HitPathTracker hitPathTracker;

    @NotNull
    private final HitTestResult<PointerInputFilter> hitResult;
    private boolean isProcessing;

    @NotNull
    private final PointerInputChangeEventProducer pointerInputChangeEventProducer;

    @NotNull
    private final LayoutNode root;

    public PointerInputEventProcessor(@NotNull LayoutNode root) {
        t.j(root, "root");
        this.root = root;
        this.hitPathTracker = new HitPathTracker(root.f());
        this.pointerInputChangeEventProducer = new PointerInputChangeEventProducer();
        this.hitResult = new HitTestResult<>();
    }

    /* JADX WARN: Code duplicated, block: B:26:0x0071 A[Catch: all -> 0x003b, TryCatch #0 {all -> 0x003b, blocks: (B:7:0x001b, B:9:0x0031, B:23:0x005d, B:24:0x006b, B:26:0x0071, B:28:0x0079, B:30:0x007f, B:32:0x00a6, B:33:0x00b7, B:48:0x0100, B:36:0x00cc, B:38:0x00da, B:41:0x00e4, B:42:0x00e8, B:44:0x00ee, B:46:0x00fa, B:14:0x003e, B:15:0x0042, B:17:0x0048, B:19:0x0054), top: B:53:0x001b }] */
    /* JADX WARN: Code duplicated, block: B:35:0x00ca A[EDGE_INSN: B:35:0x00ca->B:48:0x0100 BREAK  A[LOOP:1: B:42:0x00e8->B:66:0x00e8]] */
    /* JADX WARN: Code duplicated, block: B:36:0x00cc A[Catch: all -> 0x003b, TryCatch #0 {all -> 0x003b, blocks: (B:7:0x001b, B:9:0x0031, B:23:0x005d, B:24:0x006b, B:26:0x0071, B:28:0x0079, B:30:0x007f, B:32:0x00a6, B:33:0x00b7, B:48:0x0100, B:36:0x00cc, B:38:0x00da, B:41:0x00e4, B:42:0x00e8, B:44:0x00ee, B:46:0x00fa, B:14:0x003e, B:15:0x0042, B:17:0x0048, B:19:0x0054), top: B:53:0x001b }] */
    /* JADX WARN: Code duplicated, block: B:41:0x00e4 A[Catch: all -> 0x003b, TryCatch #0 {all -> 0x003b, blocks: (B:7:0x001b, B:9:0x0031, B:23:0x005d, B:24:0x006b, B:26:0x0071, B:28:0x0079, B:30:0x007f, B:32:0x00a6, B:33:0x00b7, B:48:0x0100, B:36:0x00cc, B:38:0x00da, B:41:0x00e4, B:42:0x00e8, B:44:0x00ee, B:46:0x00fa, B:14:0x003e, B:15:0x0042, B:17:0x0048, B:19:0x0054), top: B:53:0x001b }] */
    /* JADX WARN: Code duplicated, block: B:44:0x00ee A[Catch: all -> 0x003b, TryCatch #0 {all -> 0x003b, blocks: (B:7:0x001b, B:9:0x0031, B:23:0x005d, B:24:0x006b, B:26:0x0071, B:28:0x0079, B:30:0x007f, B:32:0x00a6, B:33:0x00b7, B:48:0x0100, B:36:0x00cc, B:38:0x00da, B:41:0x00e4, B:42:0x00e8, B:44:0x00ee, B:46:0x00fa, B:14:0x003e, B:15:0x0042, B:17:0x0048, B:19:0x0054), top: B:53:0x001b }] */
    /* JADX WARN: Code duplicated, block: B:58:0x00a6 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:61:0x006b A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:63:0x00ca A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:64:0x00fa A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:67:0x00e8 A[ADDED_TO_REGION, REMOVE, SYNTHETIC] */
    public final int a(@NotNull PointerInputEvent pointerEvent, @NotNull PositionCalculator positionCalculator, boolean z6) {
        boolean z10;
        Collection<PointerInputChange> collectionValues;
        Iterator<T> it;
        PointerInputChange pointerInputChange;
        t.j(pointerEvent, "pointerEvent");
        t.j(positionCalculator, "positionCalculator");
        if (this.isProcessing) {
            return PointerInputEventProcessorKt.a(false, false);
        }
        boolean z11 = true;
        try {
            this.isProcessing = true;
            InternalPointerEvent internalPointerEventB = this.pointerInputChangeEventProducer.b(pointerEvent, positionCalculator);
            Collection<PointerInputChange> collectionValues2 = internalPointerEventB.a().values();
            if (!(collectionValues2 instanceof Collection) || !collectionValues2.isEmpty()) {
                Iterator<T> it2 = collectionValues2.iterator();
                while (true) {
                    if (it2.hasNext()) {
                        PointerInputChange pointerInputChange2 = (PointerInputChange) it2.next();
                        if (pointerInputChange2.g() || pointerInputChange2.i()) {
                            z10 = false;
                        }
                    }
                    for (PointerInputChange pointerInputChange3 : internalPointerEventB.a().values()) {
                        if (!z10 || PointerEventKt.b(pointerInputChange3)) {
                            LayoutNode.D0(this.root, pointerInputChange3.f(), this.hitResult, PointerType.h(pointerInputChange3.k(), PointerType.Companion.d()), false, 8, null);
                            if (!this.hitResult.isEmpty()) {
                                this.hitPathTracker.a(pointerInputChange3.e(), this.hitResult);
                                this.hitResult.clear();
                            }
                        }
                    }
                    this.hitPathTracker.d();
                    boolean zB = this.hitPathTracker.b(internalPointerEventB, z6);
                    if (!internalPointerEventB.c()) {
                        collectionValues = internalPointerEventB.a().values();
                        if (!(collectionValues instanceof Collection) || !collectionValues.isEmpty()) {
                            it = collectionValues.iterator();
                            while (true) {
                                if (it.hasNext()) {
                                    pointerInputChange = (PointerInputChange) it.next();
                                    if (!PointerEventKt.k(pointerInputChange) && pointerInputChange.m()) {
                                        break;
                                    }
                                }
                            }
                        }
                        z11 = false;
                        break;
                    }
                    z11 = false;
                    break;
                    return PointerInputEventProcessorKt.a(zB, z11);
                }
            }
            z10 = true;
            while (r5.hasNext()) {
                if (!z10) {
                }
                LayoutNode.D0(this.root, pointerInputChange3.f(), this.hitResult, PointerType.h(pointerInputChange3.k(), PointerType.Companion.d()), false, 8, null);
                if (!this.hitResult.isEmpty()) {
                    this.hitPathTracker.a(pointerInputChange3.e(), this.hitResult);
                    this.hitResult.clear();
                }
            }
            this.hitPathTracker.d();
            boolean zB2 = this.hitPathTracker.b(internalPointerEventB, z6);
            if (!internalPointerEventB.c()) {
                z11 = false;
                break;
            }
            collectionValues = internalPointerEventB.a().values();
            if (!(collectionValues instanceof Collection)) {
                it = collectionValues.iterator();
                while (true) {
                    if (it.hasNext()) {
                        z11 = false;
                        break;
                    }
                    pointerInputChange = (PointerInputChange) it.next();
                    if (!PointerEventKt.k(pointerInputChange)) {
                    }
                }
            } else {
                it = collectionValues.iterator();
                while (true) {
                    if (it.hasNext()) {
                        z11 = false;
                        break;
                    }
                    pointerInputChange = (PointerInputChange) it.next();
                    if (!PointerEventKt.k(pointerInputChange)) {
                    }
                }
            }
            return PointerInputEventProcessorKt.a(zB2, z11);
        } finally {
            this.isProcessing = false;
        }
    }

    public final void b() {
        this.pointerInputChangeEventProducer.a();
        this.hitPathTracker.c();
    }
}
