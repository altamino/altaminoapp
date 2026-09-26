package androidx.compose.material;

import androidx.compose.ui.semantics.SemanticsPropertiesKt;
import androidx.compose.ui.semantics.SemanticsPropertyReceiver;
import e8.a;
import e8.l;
import kotlin.jvm.internal.t;
import kotlin.jvm.internal.v;
import org.jetbrains.annotations.NotNull;
import w7.l0;

/* JADX INFO: loaded from: classes2.dex */
final class ExposedDropdownMenuKt$expandable$2 extends v implements l<SemanticsPropertyReceiver, l0> {
    final /* synthetic */ String $menuLabel;
    final /* synthetic */ a<l0> $onExpandedChange;

    /* JADX INFO: renamed from: androidx.compose.material.ExposedDropdownMenuKt$expandable$2$1, reason: invalid class name */
    static final class AnonymousClass1 extends v implements a<Boolean> {
        final /* synthetic */ a<l0> $onExpandedChange;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        AnonymousClass1(a<l0> aVar) {
            super(0);
            this.$onExpandedChange = aVar;
        }

        @Override // e8.a
        @NotNull
        /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
        public final Boolean invoke() {
            this.$onExpandedChange.invoke();
            return Boolean.TRUE;
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    ExposedDropdownMenuKt$expandable$2(String str, a<l0> aVar) {
        super(1);
        this.$menuLabel = str;
        this.$onExpandedChange = aVar;
    }

    public final void a(@NotNull SemanticsPropertyReceiver semantics) {
        t.j(semantics, "$this$semantics");
        SemanticsPropertiesKt.G(semantics, this.$menuLabel);
        SemanticsPropertiesKt.r(semantics, null, new AnonymousClass1(this.$onExpandedChange), 1, null);
    }

    @Override // e8.l
    public /* bridge */ /* synthetic */ l0 invoke(SemanticsPropertyReceiver semanticsPropertyReceiver) {
        a(semanticsPropertyReceiver);
        return l0.INSTANCE;
    }
}
