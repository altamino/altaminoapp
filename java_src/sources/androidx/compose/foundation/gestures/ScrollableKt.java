package androidx.compose.foundation.gestures;

import androidx.compose.foundation.ExperimentalFoundationApi;
import androidx.compose.foundation.OverscrollEffect;
import androidx.compose.foundation.interaction.MutableInteractionSource;
import androidx.compose.runtime.Composable;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.MutableState;
import androidx.compose.runtime.SnapshotStateKt;
import androidx.compose.runtime.SnapshotStateKt__SnapshotStateKt;
import androidx.compose.runtime.State;
import androidx.compose.ui.ComposedModifierKt;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.input.nestedscroll.NestedScrollConnection;
import androidx.compose.ui.input.nestedscroll.NestedScrollDispatcher;
import androidx.compose.ui.input.nestedscroll.NestedScrollModifierKt;
import androidx.compose.ui.input.pointer.SuspendingPointerInputFilterKt;
import androidx.compose.ui.modifier.ModifierLocalKt;
import androidx.compose.ui.modifier.ProvidableModifierLocal;
import androidx.compose.ui.platform.InspectableValueKt;
import kotlin.jvm.internal.t;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes3.dex */
public final class ScrollableKt {

    @NotNull
    private static final ScrollScope NoOpScrollScope = new ScrollScope() { // from class: androidx.compose.foundation.gestures.ScrollableKt$NoOpScrollScope$1
        @Override // androidx.compose.foundation.gestures.ScrollScope
        public float a(float f) {
            return f;
        }
    };

    @NotNull
    private static final ProvidableModifierLocal<Boolean> ModifierLocalScrollableContainer = ModifierLocalKt.a(ScrollableKt$ModifierLocalScrollableContainer$1.INSTANCE);

    @NotNull
    public static final ProvidableModifierLocal<Boolean> e() {
        return ModifierLocalScrollableContainer;
    }

    @ExperimentalFoundationApi
    @NotNull
    public static final Modifier h(@NotNull Modifier modifier, @NotNull ScrollableState state, @NotNull Orientation orientation, @Nullable OverscrollEffect overscrollEffect, boolean z6, boolean z10, @Nullable FlingBehavior flingBehavior, @Nullable MutableInteractionSource mutableInteractionSource) {
        t.j(modifier, "<this>");
        t.j(state, "state");
        t.j(orientation, "orientation");
        return ComposedModifierKt.c(modifier, InspectableValueKt.c() ? new ScrollableKt$scrollable$$inlined$debugInspectorInfo$1(orientation, state, overscrollEffect, z6, z10, flingBehavior, mutableInteractionSource) : InspectableValueKt.a(), new ScrollableKt$scrollable$2(orientation, state, z10, mutableInteractionSource, flingBehavior, overscrollEffect, z6));
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Code duplicated, block: B:17:0x0043 A[RETURN] */
    /* JADX WARN: Code duplicated, block: B:20:0x0056 A[RETURN] */
    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:16:0x0041 -> B:18:0x0044). Please report as a decompilation issue!!! */
    /*  JADX ERROR: JadxOverflowException in pass: RegionMakerVisitor
        jadx.core.utils.exceptions.JadxOverflowException: Regions count limit reached at block B:0:?
        	at jadx.core.utils.ErrorsCounter.addError(ErrorsCounter.java:59)
        	at jadx.core.utils.ErrorsCounter.error(ErrorsCounter.java:31)
        	at jadx.core.dex.attributes.nodes.NotificationAttrNode.addError(NotificationAttrNode.java:19)
        */
    public static final java.lang.Object d(androidx.compose.ui.input.pointer.AwaitPointerEventScope r5, kotlin.coroutines.d<? super androidx.compose.ui.input.pointer.PointerEvent> r6) {
        /*
            boolean r0 = r6 instanceof androidx.compose.foundation.gestures.ScrollableKt$awaitScrollEvent$1
            if (r0 == 0) goto L13
            r0 = r6
            androidx.compose.foundation.gestures.ScrollableKt$awaitScrollEvent$1 r0 = (androidx.compose.foundation.gestures.ScrollableKt$awaitScrollEvent$1) r0
            int r1 = r0.label
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = r1 & r2
            if (r3 == 0) goto L13
            int r1 = r1 - r2
            r0.label = r1
            goto L18
        L13:
            androidx.compose.foundation.gestures.ScrollableKt$awaitScrollEvent$1 r0 = new androidx.compose.foundation.gestures.ScrollableKt$awaitScrollEvent$1
            r0.<init>(r6)
        L18:
            java.lang.Object r6 = r0.result
            java.lang.Object r1 = kotlin.coroutines.intrinsics.b.e()
            int r2 = r0.label
            r3 = 1
            if (r2 == 0) goto L35
            if (r2 != r3) goto L2d
            java.lang.Object r5 = r0.L$0
            androidx.compose.ui.input.pointer.AwaitPointerEventScope r5 = (androidx.compose.ui.input.pointer.AwaitPointerEventScope) r5
            w7.w.b(r6)
            goto L44
        L2d:
            java.lang.IllegalStateException r5 = new java.lang.IllegalStateException
            java.lang.String r6 = "call to 'resume' before 'invoke' with coroutine"
            r5.<init>(r6)
            throw r5
        L35:
            w7.w.b(r6)
        L38:
            r0.L$0 = r5
            r0.label = r3
            r6 = 0
            java.lang.Object r6 = androidx.compose.ui.input.pointer.b.a(r5, r6, r0, r3, r6)
            if (r6 != r1) goto L44
            return r1
        L44:
            androidx.compose.ui.input.pointer.PointerEvent r6 = (androidx.compose.ui.input.pointer.PointerEvent) r6
            int r2 = r6.f()
            androidx.compose.ui.input.pointer.PointerEventType$Companion r4 = androidx.compose.ui.input.pointer.PointerEventType.Companion
            int r4 = r4.f()
            boolean r2 = androidx.compose.ui.input.pointer.PointerEventType.j(r2, r4)
            if (r2 == 0) goto L38
            return r6
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.compose.foundation.gestures.ScrollableKt.d(androidx.compose.ui.input.pointer.AwaitPointerEventScope, kotlin.coroutines.d):java.lang.Object");
    }

    private static final Modifier f(Modifier modifier, State<ScrollingLogic> state, ScrollConfig scrollConfig) {
        return SuspendingPointerInputFilterKt.c(modifier, state, scrollConfig, new ScrollableKt$mouseWheelScroll$1(scrollConfig, state, null));
    }

    /* JADX INFO: Access modifiers changed from: private */
    @Composable
    public static final Modifier g(Modifier modifier, MutableInteractionSource mutableInteractionSource, Orientation orientation, boolean z6, ScrollableState scrollableState, FlingBehavior flingBehavior, OverscrollEffect overscrollEffect, boolean z10, Composer composer, int i10) {
        composer.G(-2012025036);
        composer.G(-1730187034);
        FlingBehavior flingBehaviorA = flingBehavior == null ? ScrollableDefaults.INSTANCE.a(composer, 6) : flingBehavior;
        composer.Q();
        composer.G(-492369756);
        Object objH = composer.H();
        Composer.Companion companion = Composer.Companion;
        if (objH == companion.a()) {
            objH = SnapshotStateKt__SnapshotStateKt.e(new NestedScrollDispatcher(), null, 2, null);
            composer.z(objH);
        }
        composer.Q();
        MutableState mutableState = (MutableState) objH;
        State stateN = SnapshotStateKt.n(new ScrollingLogic(orientation, z6, mutableState, scrollableState, flingBehaviorA, overscrollEffect), composer, 0);
        Boolean boolValueOf = Boolean.valueOf(z10);
        composer.G(1157296644);
        boolean zK = composer.k(boolValueOf);
        Object objH2 = composer.H();
        if (zK || objH2 == companion.a()) {
            objH2 = k(stateN, z10);
            composer.z(objH2);
        }
        composer.Q();
        NestedScrollConnection nestedScrollConnection = (NestedScrollConnection) objH2;
        composer.G(-492369756);
        Object objH3 = composer.H();
        if (objH3 == companion.a()) {
            objH3 = new ScrollDraggableState(stateN);
            composer.z(objH3);
        }
        composer.Q();
        Modifier modifierA = NestedScrollModifierKt.a(f(DraggableKt.i(modifier, new ScrollableKt$pointerScrollable$1((ScrollDraggableState) objH3), ScrollableKt$pointerScrollable$2.INSTANCE, orientation, (64 & 8) != 0 ? true : z10, (64 & 16) != 0 ? null : mutableInteractionSource, new ScrollableKt$pointerScrollable$3(stateN), (64 & 64) != 0 ? new DraggableKt$draggable$6(null) : null, (64 & 128) != 0 ? new DraggableKt$draggable$7(null) : new ScrollableKt$pointerScrollable$4(mutableState, stateN, null), (64 & 256) != 0 ? false : false), stateN, AndroidScrollable_androidKt.a(composer, 0)), nestedScrollConnection, (NestedScrollDispatcher) mutableState.getValue());
        composer.Q();
        return modifierA;
    }

    @NotNull
    public static final Modifier i(@NotNull Modifier modifier, @NotNull ScrollableState state, @NotNull Orientation orientation, boolean z6, boolean z10, @Nullable FlingBehavior flingBehavior, @Nullable MutableInteractionSource mutableInteractionSource) {
        t.j(modifier, "<this>");
        t.j(state, "state");
        t.j(orientation, "orientation");
        return h(modifier, state, orientation, null, z6, z10, flingBehavior, mutableInteractionSource);
    }

    public static /* synthetic */ Modifier j(Modifier modifier, ScrollableState scrollableState, Orientation orientation, boolean z6, boolean z10, FlingBehavior flingBehavior, MutableInteractionSource mutableInteractionSource, int i10, Object obj) {
        if ((i10 & 4) != 0) {
            z6 = true;
        }
        boolean z11 = z6;
        if ((i10 & 8) != 0) {
            z10 = false;
        }
        return i(modifier, scrollableState, orientation, z11, z10, (i10 & 16) != 0 ? null : flingBehavior, (i10 & 32) != 0 ? null : mutableInteractionSource);
    }

    private static final NestedScrollConnection k(State<ScrollingLogic> state, boolean z6) {
        return new ScrollableKt$scrollableNestedScrollConnection$1(z6, state);
    }
}
