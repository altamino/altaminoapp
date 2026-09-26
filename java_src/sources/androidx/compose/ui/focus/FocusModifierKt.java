package androidx.compose.ui.focus;

import androidx.compose.ui.ComposedModifierKt;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.b;
import androidx.compose.ui.modifier.ModifierLocalKt;
import androidx.compose.ui.modifier.ModifierLocalProvider;
import androidx.compose.ui.modifier.ProvidableModifierLocal;
import androidx.compose.ui.platform.InspectableValueKt;
import e8.l;
import e8.p;
import kotlin.jvm.internal.t;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes7.dex */
public final class FocusModifierKt {

    @NotNull
    private static final ProvidableModifierLocal<FocusModifier> ModifierLocalParentFocusModifier = ModifierLocalKt.a(FocusModifierKt$ModifierLocalParentFocusModifier$1.INSTANCE);

    @NotNull
    private static final Modifier ResetFocusModifierLocals = Modifier.Companion.B(new ModifierLocalProvider<FocusPropertiesModifier>() { // from class: androidx.compose.ui.focus.FocusModifierKt$ResetFocusModifierLocals$1
        @Override // androidx.compose.ui.Modifier
        public /* synthetic */ Modifier B(Modifier modifier) {
            return androidx.compose.ui.a.a(this, modifier);
        }

        @Override // androidx.compose.ui.Modifier
        public /* synthetic */ Object V(Object obj, p pVar) {
            return b.c(this, obj, pVar);
        }

        @Override // androidx.compose.ui.modifier.ModifierLocalProvider
        @Nullable
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public FocusPropertiesModifier getValue() {
            return null;
        }

        @Override // androidx.compose.ui.Modifier
        public /* synthetic */ Object a0(Object obj, p pVar) {
            return b.b(this, obj, pVar);
        }

        @Override // androidx.compose.ui.Modifier
        public /* synthetic */ boolean d0(l lVar) {
            return b.a(this, lVar);
        }

        @Override // androidx.compose.ui.modifier.ModifierLocalProvider
        @NotNull
        public ProvidableModifierLocal<FocusPropertiesModifier> getKey() {
            return FocusPropertiesKt.c();
        }
    }).B(new ModifierLocalProvider<FocusEventModifierLocal>() { // from class: androidx.compose.ui.focus.FocusModifierKt$ResetFocusModifierLocals$2
        @Override // androidx.compose.ui.Modifier
        public /* synthetic */ Modifier B(Modifier modifier) {
            return androidx.compose.ui.a.a(this, modifier);
        }

        @Override // androidx.compose.ui.Modifier
        public /* synthetic */ Object V(Object obj, p pVar) {
            return b.c(this, obj, pVar);
        }

        @Override // androidx.compose.ui.modifier.ModifierLocalProvider
        @Nullable
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public FocusEventModifierLocal getValue() {
            return null;
        }

        @Override // androidx.compose.ui.Modifier
        public /* synthetic */ Object a0(Object obj, p pVar) {
            return b.b(this, obj, pVar);
        }

        @Override // androidx.compose.ui.Modifier
        public /* synthetic */ boolean d0(l lVar) {
            return b.a(this, lVar);
        }

        @Override // androidx.compose.ui.modifier.ModifierLocalProvider
        @NotNull
        public ProvidableModifierLocal<FocusEventModifierLocal> getKey() {
            return FocusEventModifierKt.a();
        }
    }).B(new ModifierLocalProvider<FocusRequesterModifierLocal>() { // from class: androidx.compose.ui.focus.FocusModifierKt$ResetFocusModifierLocals$3
        @Override // androidx.compose.ui.Modifier
        public /* synthetic */ Modifier B(Modifier modifier) {
            return androidx.compose.ui.a.a(this, modifier);
        }

        @Override // androidx.compose.ui.Modifier
        public /* synthetic */ Object V(Object obj, p pVar) {
            return b.c(this, obj, pVar);
        }

        @Override // androidx.compose.ui.modifier.ModifierLocalProvider
        @Nullable
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public FocusRequesterModifierLocal getValue() {
            return null;
        }

        @Override // androidx.compose.ui.Modifier
        public /* synthetic */ Object a0(Object obj, p pVar) {
            return b.b(this, obj, pVar);
        }

        @Override // androidx.compose.ui.Modifier
        public /* synthetic */ boolean d0(l lVar) {
            return b.a(this, lVar);
        }

        @Override // androidx.compose.ui.modifier.ModifierLocalProvider
        @NotNull
        public ProvidableModifierLocal<FocusRequesterModifierLocal> getKey() {
            return FocusRequesterModifierKt.b();
        }
    });

    @NotNull
    public static final ProvidableModifierLocal<FocusModifier> c() {
        return ModifierLocalParentFocusModifier;
    }

    @NotNull
    public static final Modifier a(@NotNull Modifier modifier) {
        t.j(modifier, "<this>");
        return ComposedModifierKt.c(modifier, InspectableValueKt.c() ? new FocusModifierKt$focusTarget$$inlined$debugInspectorInfo$1() : InspectableValueKt.a(), FocusModifierKt$focusTarget$2.INSTANCE);
    }

    @NotNull
    public static final Modifier b(@NotNull Modifier modifier, @NotNull FocusModifier focusModifier) {
        t.j(modifier, "<this>");
        t.j(focusModifier, "focusModifier");
        return modifier.B(focusModifier).B(ResetFocusModifierLocals);
    }
}
