package androidx.compose.ui.node;

import androidx.compose.runtime.collection.MutableVector;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.focus.FocusOrderModifier;
import androidx.compose.ui.focus.FocusOrderModifierToProperties;
import androidx.compose.ui.focus.FocusPropertiesModifier;
import androidx.compose.ui.modifier.ModifierLocalConsumer;
import androidx.compose.ui.modifier.ModifierLocalProvider;
import androidx.compose.ui.platform.InspectableValueKt;
import e8.p;
import kotlin.jvm.internal.t;
import kotlin.jvm.internal.v;
import org.jetbrains.annotations.NotNull;

/* JADX INFO: loaded from: classes.dex */
final class LayoutNode$setModifierLocals$1 extends v implements p<ModifierLocalProviderEntity, Modifier.Element, ModifierLocalProviderEntity> {
    final /* synthetic */ MutableVector<ModifierLocalConsumerEntity> $consumers;
    final /* synthetic */ LayoutNode this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    LayoutNode$setModifierLocals$1(LayoutNode layoutNode, MutableVector<ModifierLocalConsumerEntity> mutableVector) {
        super(2);
        this.this$0 = layoutNode;
        this.$consumers = mutableVector;
    }

    @Override // e8.p
    @NotNull
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public final ModifierLocalProviderEntity invoke(@NotNull ModifierLocalProviderEntity lastProvider, @NotNull Modifier.Element mod) {
        t.j(lastProvider, "lastProvider");
        t.j(mod, "mod");
        if (mod instanceof FocusOrderModifier) {
            FocusOrderModifier focusOrderModifier = (FocusOrderModifier) mod;
            FocusPropertiesModifier focusPropertiesModifierP = this.this$0.P(focusOrderModifier, this.$consumers);
            if (focusPropertiesModifierP == null) {
                FocusOrderModifierToProperties focusOrderModifierToProperties = new FocusOrderModifierToProperties(focusOrderModifier);
                focusPropertiesModifierP = new FocusPropertiesModifier(focusOrderModifierToProperties, InspectableValueKt.c() ? new LayoutNode$setModifierLocals$1$invoke$lambda1$$inlined$debugInspectorInfo$1(focusOrderModifierToProperties) : InspectableValueKt.a());
            }
            this.this$0.B(focusPropertiesModifierP, lastProvider, this.$consumers);
            lastProvider = this.this$0.C(focusPropertiesModifierP, lastProvider);
        }
        if (mod instanceof ModifierLocalConsumer) {
            this.this$0.B((ModifierLocalConsumer) mod, lastProvider, this.$consumers);
        }
        return mod instanceof ModifierLocalProvider ? this.this$0.C((ModifierLocalProvider) mod, lastProvider) : lastProvider;
    }
}
