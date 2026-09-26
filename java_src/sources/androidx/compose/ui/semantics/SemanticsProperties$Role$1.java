package androidx.compose.ui.semantics;

import e8.p;
import kotlin.jvm.internal.v;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes6.dex */
final class SemanticsProperties$Role$1 extends v implements p<Role, Role, Role> {
    public static final SemanticsProperties$Role$1 INSTANCE = new SemanticsProperties$Role$1();

    SemanticsProperties$Role$1() {
        super(2);
    }

    @Nullable
    public final Role a(@Nullable Role role, int i10) {
        return role;
    }

    @Override // e8.p
    public /* bridge */ /* synthetic */ Role invoke(Role role, Role role2) {
        return a(role, role2.m());
    }
}
