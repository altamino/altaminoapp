package androidx.window.layout;

import androidx.window.sidecar.SidecarDisplayFeature;
import e8.l;
import kotlin.jvm.internal.t;
import kotlin.jvm.internal.v;
import org.jetbrains.annotations.NotNull;

/* JADX INFO: loaded from: classes7.dex */
final class SidecarAdapter$translate$checkedFeature$4 extends v implements l<SidecarDisplayFeature, Boolean> {
    public static final SidecarAdapter$translate$checkedFeature$4 INSTANCE = new SidecarAdapter$translate$checkedFeature$4();

    SidecarAdapter$translate$checkedFeature$4() {
        super(1);
    }

    @Override // e8.l
    @NotNull
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public final Boolean invoke(@NotNull SidecarDisplayFeature require) {
        t.j(require, "$this$require");
        return Boolean.valueOf(require.getRect().left == 0 || require.getRect().top == 0);
    }
}
