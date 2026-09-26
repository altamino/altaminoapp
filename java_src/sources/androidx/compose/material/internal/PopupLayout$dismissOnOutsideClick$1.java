package androidx.compose.material.internal;

import androidx.compose.ui.geometry.Offset;
import androidx.compose.ui.unit.IntRect;
import e8.p;
import kotlin.jvm.internal.t;
import kotlin.jvm.internal.v;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes2.dex */
final class PopupLayout$dismissOnOutsideClick$1 extends v implements p<Offset, IntRect, Boolean> {
    public static final PopupLayout$dismissOnOutsideClick$1 INSTANCE = new PopupLayout$dismissOnOutsideClick$1();

    PopupLayout$dismissOnOutsideClick$1() {
        super(2);
    }

    @Override // e8.p
    @NotNull
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public final Boolean invoke(@Nullable Offset offset, @NotNull IntRect bounds) {
        t.j(bounds, "bounds");
        boolean z6 = false;
        if (offset != null && (Offset.m(offset.u()) < bounds.c() || Offset.m(offset.u()) > bounds.d() || Offset.n(offset.u()) < bounds.e() || Offset.n(offset.u()) > bounds.a())) {
            z6 = true;
        }
        return Boolean.valueOf(z6);
    }
}
