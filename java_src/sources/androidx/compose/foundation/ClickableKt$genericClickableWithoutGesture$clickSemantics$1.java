package androidx.compose.foundation;

import androidx.compose.ui.semantics.Role;
import androidx.compose.ui.semantics.SemanticsPropertiesKt;
import androidx.compose.ui.semantics.SemanticsPropertyReceiver;
import e8.l;
import kotlin.jvm.internal.t;
import kotlin.jvm.internal.v;
import org.jetbrains.annotations.NotNull;
import w7.l0;

/* JADX INFO: loaded from: classes2.dex */
final class ClickableKt$genericClickableWithoutGesture$clickSemantics$1 extends v implements l<SemanticsPropertyReceiver, l0> {
    final /* synthetic */ boolean $enabled;
    final /* synthetic */ e8.a<l0> $onClick;
    final /* synthetic */ String $onClickLabel;
    final /* synthetic */ e8.a<l0> $onLongClick;
    final /* synthetic */ String $onLongClickLabel;
    final /* synthetic */ Role $role;

    /* JADX INFO: renamed from: androidx.compose.foundation.ClickableKt$genericClickableWithoutGesture$clickSemantics$1$1, reason: invalid class name */
    static final class AnonymousClass1 extends v implements e8.a<Boolean> {
        final /* synthetic */ e8.a<l0> $onClick;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        AnonymousClass1(e8.a<l0> aVar) {
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

    /* JADX INFO: renamed from: androidx.compose.foundation.ClickableKt$genericClickableWithoutGesture$clickSemantics$1$2, reason: invalid class name */
    static final class AnonymousClass2 extends v implements e8.a<Boolean> {
        final /* synthetic */ e8.a<l0> $onLongClick;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        AnonymousClass2(e8.a<l0> aVar) {
            super(0);
            this.$onLongClick = aVar;
        }

        @Override // e8.a
        @NotNull
        /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
        public final Boolean invoke() {
            this.$onLongClick.invoke();
            return Boolean.TRUE;
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    ClickableKt$genericClickableWithoutGesture$clickSemantics$1(Role role, String str, e8.a<l0> aVar, String str2, boolean z6, e8.a<l0> aVar2) {
        super(1);
        this.$role = role;
        this.$onClickLabel = str;
        this.$onLongClick = aVar;
        this.$onLongClickLabel = str2;
        this.$enabled = z6;
        this.$onClick = aVar2;
    }

    public final void a(@NotNull SemanticsPropertyReceiver semantics) {
        t.j(semantics, "$this$semantics");
        Role role = this.$role;
        if (role != null) {
            SemanticsPropertiesKt.Q(semantics, role.m());
        }
        SemanticsPropertiesKt.q(semantics, this.$onClickLabel, new AnonymousClass1(this.$onClick));
        e8.a<l0> aVar = this.$onLongClick;
        if (aVar != null) {
            SemanticsPropertiesKt.s(semantics, this.$onLongClickLabel, new AnonymousClass2(aVar));
        }
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
