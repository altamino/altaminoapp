package androidx.compose.ui.platform;

import org.jetbrains.annotations.NotNull;

/* JADX INFO: loaded from: classes4.dex */
final class DisposableSaveableStateRegistry_androidKt$DisposableSaveableStateRegistry$saveableStateRegistry$1 extends kotlin.jvm.internal.v implements e8.l<Object, Boolean> {
    public static final DisposableSaveableStateRegistry_androidKt$DisposableSaveableStateRegistry$saveableStateRegistry$1 INSTANCE = new DisposableSaveableStateRegistry_androidKt$DisposableSaveableStateRegistry$saveableStateRegistry$1();

    DisposableSaveableStateRegistry_androidKt$DisposableSaveableStateRegistry$saveableStateRegistry$1() {
        super(1);
    }

    @Override // e8.l
    @NotNull
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public final Boolean invoke(@NotNull Object it) {
        kotlin.jvm.internal.t.j(it, "it");
        return Boolean.valueOf(DisposableSaveableStateRegistry_androidKt.e(it));
    }
}
