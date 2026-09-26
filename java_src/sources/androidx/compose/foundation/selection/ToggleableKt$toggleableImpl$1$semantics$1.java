package androidx.compose.foundation.selection;

import androidx.compose.ui.semantics.Role;
import androidx.compose.ui.semantics.SemanticsPropertiesKt;
import androidx.compose.ui.semantics.SemanticsPropertyReceiver;
import androidx.compose.ui.state.ToggleableState;
import e8.a;
import e8.l;
import kotlin.jvm.internal.t;
import kotlin.jvm.internal.v;
import org.jetbrains.annotations.NotNull;
import w7.l0;

/* JADX INFO: loaded from: classes6.dex */
final class ToggleableKt$toggleableImpl$1$semantics$1 extends v implements l<SemanticsPropertyReceiver, l0> {
    final /* synthetic */ boolean $enabled;
    final /* synthetic */ a<l0> $onClick;
    final /* synthetic */ Role $role;
    final /* synthetic */ ToggleableState $state;

    /* JADX INFO: renamed from: androidx.compose.foundation.selection.ToggleableKt$toggleableImpl$1$semantics$1$1, reason: invalid class name */
    static final class AnonymousClass1 extends v implements a<Boolean> {
        final /* synthetic */ a<l0> $onClick;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        AnonymousClass1(a<l0> aVar) {
            super(0);
            this.$onClick = aVar;
        }

        @Override // e8.a
        @NotNull
        /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
        public final Boolean invoke() {
            this.$onClick.invoke();
            return Boolean.TRUE;
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    ToggleableKt$toggleableImpl$1$semantics$1(Role role, ToggleableState toggleableState, boolean z6, a<l0> aVar) {
        super(1);
        this.$role = role;
        this.$state = toggleableState;
        this.$enabled = z6;
        this.$onClick = aVar;
    }

    public final void a(@NotNull SemanticsPropertyReceiver semantics) {
        t.j(semantics, "$this$semantics");
        Role role = this.$role;
        if (role != null) {
            SemanticsPropertiesKt.Q(semantics, role.m());
        }
        SemanticsPropertiesKt.Z(semantics, this.$state);
        SemanticsPropertiesKt.r(semantics, null, new AnonymousClass1(this.$onClick), 1, null);
        if (this.$enabled) {
            return;
        }
        SemanticsPropertiesKt.h(semantics);
    }

    @Override // e8.l
    public /* bridge */ /* synthetic */ l0 invoke(SemanticsPropertyReceiver semanticsPropertyReceiver) {
        a(semanticsPropertyReceiver);
        return l0.INSTANCE;
    }
}
