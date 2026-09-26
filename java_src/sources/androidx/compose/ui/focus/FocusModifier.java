package androidx.compose.ui.focus;

import androidx.compose.runtime.collection.MutableVector;
import androidx.compose.ui.ExperimentalComposeUiApi;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.b;
import androidx.compose.ui.input.focus.FocusAwareInputModifier;
import androidx.compose.ui.input.key.KeyInputModifier;
import androidx.compose.ui.input.key.KeyInputModifierKt;
import androidx.compose.ui.input.rotary.RotaryInputModifierKt;
import androidx.compose.ui.input.rotary.RotaryScrollEvent;
import androidx.compose.ui.layout.BeyondBoundsLayout;
import androidx.compose.ui.layout.LayoutCoordinates;
import androidx.compose.ui.layout.OnPlacedModifier;
import androidx.compose.ui.modifier.ModifierLocalConsumer;
import androidx.compose.ui.modifier.ModifierLocalProvider;
import androidx.compose.ui.modifier.ModifierLocalReadScope;
import androidx.compose.ui.modifier.ProvidableModifierLocal;
import androidx.compose.ui.node.LayoutNode;
import androidx.compose.ui.node.LayoutNodeWrapper;
import androidx.compose.ui.node.Owner;
import androidx.compose.ui.node.OwnerScope;
import androidx.compose.ui.platform.InspectableValueKt;
import androidx.compose.ui.platform.InspectorInfo;
import androidx.compose.ui.platform.InspectorValueInfo;
import e8.l;
import e8.p;
import kotlin.jvm.internal.k;
import kotlin.jvm.internal.t;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import w7.l0;

/* JADX INFO: loaded from: classes6.dex */
public final class FocusModifier extends InspectorValueInfo implements ModifierLocalConsumer, ModifierLocalProvider<FocusModifier>, OwnerScope, OnPlacedModifier {

    @NotNull
    public static final Companion Companion = new Companion(null);

    @NotNull
    private static final l<FocusModifier, l0> RefreshFocusProperties = FocusModifier$Companion$RefreshFocusProperties$1.INSTANCE;

    @Nullable
    private BeyondBoundsLayout beyondBoundsLayoutParent;

    @NotNull
    private final MutableVector<FocusModifier> children;

    @Nullable
    private FocusEventModifierLocal focusEventListener;

    @NotNull
    private final FocusProperties focusProperties;

    @Nullable
    private FocusPropertiesModifier focusPropertiesModifier;
    private boolean focusRequestedOnPlaced;

    @Nullable
    private FocusRequesterModifierLocal focusRequester;

    @NotNull
    private FocusStateImpl focusState;

    @Nullable
    private FocusModifier focusedChild;

    @NotNull
    private final MutableVector<KeyInputModifier> keyInputChildren;

    @Nullable
    private KeyInputModifier keyInputModifier;

    @Nullable
    private LayoutNodeWrapper layoutNodeWrapper;
    public ModifierLocalReadScope modifierLocalReadScope;

    @Nullable
    private FocusModifier parent;

    @Nullable
    private FocusAwareInputModifier<RotaryScrollEvent> rotaryScrollParent;

    public static final class Companion {
        public /* synthetic */ Companion(k kVar) {
            this();
        }

        private Companion() {
        }

        @NotNull
        public final l<FocusModifier, l0> a() {
            return FocusModifier.RefreshFocusProperties;
        }
    }

    public /* synthetic */ class WhenMappings {
        public static final /* synthetic */ int[] $EnumSwitchMapping$0;

        static {
            int[] iArr = new int[FocusStateImpl.values().length];
            iArr[FocusStateImpl.Active.ordinal()] = 1;
            iArr[FocusStateImpl.Captured.ordinal()] = 2;
            iArr[FocusStateImpl.ActiveParent.ordinal()] = 3;
            iArr[FocusStateImpl.DeactivatedParent.ordinal()] = 4;
            iArr[FocusStateImpl.Deactivated.ordinal()] = 5;
            iArr[FocusStateImpl.Inactive.ordinal()] = 6;
            $EnumSwitchMapping$0 = iArr;
        }
    }

    public /* synthetic */ FocusModifier(FocusStateImpl focusStateImpl, l lVar, int i10, k kVar) {
        this(focusStateImpl, (i10 & 2) != 0 ? InspectableValueKt.a() : lVar);
    }

    @Override // androidx.compose.ui.Modifier
    public /* synthetic */ Modifier B(Modifier modifier) {
        return androidx.compose.ui.a.a(this, modifier);
    }

    @Override // androidx.compose.ui.Modifier
    public /* synthetic */ Object V(Object obj, p pVar) {
        return b.c(this, obj, pVar);
    }

    @Override // androidx.compose.ui.Modifier
    public /* synthetic */ Object a0(Object obj, p pVar) {
        return b.b(this, obj, pVar);
    }

    @Nullable
    public final BeyondBoundsLayout b() {
        return this.beyondBoundsLayoutParent;
    }

    @NotNull
    public final MutableVector<FocusModifier> c() {
        return this.children;
    }

    @Nullable
    public final FocusEventModifierLocal d() {
        return this.focusEventListener;
    }

    @Override // androidx.compose.ui.Modifier
    public /* synthetic */ boolean d0(l lVar) {
        return b.a(this, lVar);
    }

    @NotNull
    public final FocusProperties f() {
        return this.focusProperties;
    }

    @Nullable
    public final FocusPropertiesModifier g() {
        return this.focusPropertiesModifier;
    }

    @NotNull
    public final FocusStateImpl h() {
        return this.focusState;
    }

    @Nullable
    public final FocusModifier i() {
        return this.focusedChild;
    }

    @Override // androidx.compose.ui.node.OwnerScope
    public boolean isValid() {
        return this.parent != null;
    }

    @NotNull
    public final MutableVector<KeyInputModifier> j() {
        return this.keyInputChildren;
    }

    @Nullable
    public final KeyInputModifier k() {
        return this.keyInputModifier;
    }

    @Nullable
    public final LayoutNodeWrapper l() {
        return this.layoutNodeWrapper;
    }

    @Nullable
    public final FocusModifier n() {
        return this.parent;
    }

    @Override // androidx.compose.ui.modifier.ModifierLocalProvider
    @NotNull
    /* JADX INFO: renamed from: o, reason: merged with bridge method [inline-methods] */
    public FocusModifier getValue() {
        return this;
    }

    public final void q(boolean z6) {
        this.focusRequestedOnPlaced = z6;
    }

    public final void t(@Nullable FocusModifier focusModifier) {
        this.focusedChild = focusModifier;
    }

    public final void u(@NotNull ModifierLocalReadScope modifierLocalReadScope) {
        t.j(modifierLocalReadScope, "<set-?>");
        this.modifierLocalReadScope = modifierLocalReadScope;
    }

    @Override // androidx.compose.ui.layout.OnPlacedModifier
    public void e(@NotNull LayoutCoordinates coordinates) {
        t.j(coordinates, "coordinates");
        boolean z6 = this.layoutNodeWrapper == null;
        this.layoutNodeWrapper = (LayoutNodeWrapper) coordinates;
        if (z6) {
            FocusPropertiesKt.d(this);
        }
        if (this.focusRequestedOnPlaced) {
            this.focusRequestedOnPlaced = false;
            FocusTransactionsKt.h(this);
        }
    }

    @ExperimentalComposeUiApi
    public final boolean p(@NotNull RotaryScrollEvent event) {
        t.j(event, "event");
        FocusAwareInputModifier<RotaryScrollEvent> focusAwareInputModifier = this.rotaryScrollParent;
        if (focusAwareInputModifier != null) {
            return focusAwareInputModifier.c(event);
        }
        return false;
    }

    public final void s(@NotNull FocusStateImpl value) {
        t.j(value, "value");
        this.focusState = value;
        FocusTransactionsKt.k(this);
    }

    @Override // androidx.compose.ui.modifier.ModifierLocalConsumer
    public void z0(@NotNull ModifierLocalReadScope scope) {
        MutableVector<FocusModifier> mutableVector;
        MutableVector<FocusModifier> mutableVector2;
        LayoutNodeWrapper layoutNodeWrapper;
        LayoutNode layoutNodeX1;
        Owner ownerS0;
        FocusManager focusManager;
        t.j(scope, "scope");
        u(scope);
        FocusModifier focusModifier = (FocusModifier) scope.a(FocusModifierKt.c());
        if (!t.e(focusModifier, this.parent)) {
            if (focusModifier == null) {
                int i10 = WhenMappings.$EnumSwitchMapping$0[this.focusState.ordinal()];
                if ((i10 == 1 || i10 == 2) && (layoutNodeWrapper = this.layoutNodeWrapper) != null && (layoutNodeX1 = layoutNodeWrapper.x1()) != null && (ownerS0 = layoutNodeX1.s0()) != null && (focusManager = ownerS0.getFocusManager()) != null) {
                    focusManager.b(true);
                }
            }
            FocusModifier focusModifier2 = this.parent;
            if (focusModifier2 != null && (mutableVector2 = focusModifier2.children) != null) {
                mutableVector2.s(this);
            }
            if (focusModifier != null && (mutableVector = focusModifier.children) != null) {
                mutableVector.b(this);
            }
        }
        this.parent = focusModifier;
        FocusEventModifierLocal focusEventModifierLocal = (FocusEventModifierLocal) scope.a(FocusEventModifierKt.a());
        if (!t.e(focusEventModifierLocal, this.focusEventListener)) {
            FocusEventModifierLocal focusEventModifierLocal2 = this.focusEventListener;
            if (focusEventModifierLocal2 != null) {
                focusEventModifierLocal2.g(this);
            }
            if (focusEventModifierLocal != null) {
                focusEventModifierLocal.a(this);
            }
        }
        this.focusEventListener = focusEventModifierLocal;
        FocusRequesterModifierLocal focusRequesterModifierLocal = (FocusRequesterModifierLocal) scope.a(FocusRequesterModifierKt.b());
        if (!t.e(focusRequesterModifierLocal, this.focusRequester)) {
            FocusRequesterModifierLocal focusRequesterModifierLocal2 = this.focusRequester;
            if (focusRequesterModifierLocal2 != null) {
                focusRequesterModifierLocal2.f(this);
            }
            if (focusRequesterModifierLocal != null) {
                focusRequesterModifierLocal.a(this);
            }
        }
        this.focusRequester = focusRequesterModifierLocal;
        this.rotaryScrollParent = (FocusAwareInputModifier) scope.a(RotaryInputModifierKt.b());
        this.beyondBoundsLayoutParent = (BeyondBoundsLayout) scope.a(androidx.compose.ui.layout.BeyondBoundsLayoutKt.a());
        this.keyInputModifier = (KeyInputModifier) scope.a(KeyInputModifierKt.a());
        this.focusPropertiesModifier = (FocusPropertiesModifier) scope.a(FocusPropertiesKt.c());
        FocusPropertiesKt.d(this);
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public FocusModifier(@NotNull FocusStateImpl initialFocus, @NotNull l<? super InspectorInfo, l0> inspectorInfo) {
        super(inspectorInfo);
        t.j(initialFocus, "initialFocus");
        t.j(inspectorInfo, "inspectorInfo");
        this.children = new MutableVector<>(new FocusModifier[16], 0);
        this.focusState = initialFocus;
        this.focusProperties = new FocusPropertiesImpl();
        this.keyInputChildren = new MutableVector<>(new KeyInputModifier[16], 0);
    }

    @Override // androidx.compose.ui.modifier.ModifierLocalProvider
    @NotNull
    public ProvidableModifierLocal<FocusModifier> getKey() {
        return FocusModifierKt.c();
    }
}
