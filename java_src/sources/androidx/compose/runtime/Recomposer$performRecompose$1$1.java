package androidx.compose.runtime;

import androidx.compose.runtime.collection.IdentityArraySet;
import java.util.Iterator;
import kotlin.jvm.internal.v;
import w7.l0;

/* JADX INFO: loaded from: classes2.dex */
final class Recomposer$performRecompose$1$1 extends v implements e8.a<l0> {
    final /* synthetic */ ControlledComposition $composition;
    final /* synthetic */ IdentityArraySet<Object> $modifiedValues;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    Recomposer$performRecompose$1$1(IdentityArraySet<Object> identityArraySet, ControlledComposition controlledComposition) {
        super(0);
        this.$modifiedValues = identityArraySet;
        this.$composition = controlledComposition;
    }

    @Override // e8.a
    public /* bridge */ /* synthetic */ l0 invoke() {
        invoke2();
        return l0.INSTANCE;
    }

    /* JADX INFO: renamed from: invoke, reason: avoid collision after fix types in other method */
    public final void invoke2() {
        IdentityArraySet<Object> identityArraySet = this.$modifiedValues;
        ControlledComposition controlledComposition = this.$composition;
        Iterator<Object> it = identityArraySet.iterator();
        while (it.hasNext()) {
            controlledComposition.n(it.next());
        }
    }
}
