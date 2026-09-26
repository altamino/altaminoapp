package androidx.lifecycle;

import androidx.lifecycle.viewmodel.CreationExtras;
import e8.l;
import kotlin.jvm.internal.t;
import kotlin.jvm.internal.v;
import org.jetbrains.annotations.NotNull;

/* JADX INFO: loaded from: classes2.dex */
final class SavedStateHandleSupport$savedStateHandlesVM$1$1 extends v implements l<CreationExtras, SavedStateHandlesVM> {
    public static final SavedStateHandleSupport$savedStateHandlesVM$1$1 INSTANCE = new SavedStateHandleSupport$savedStateHandlesVM$1$1();

    SavedStateHandleSupport$savedStateHandlesVM$1$1() {
        super(1);
    }

    @Override // e8.l
    @NotNull
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public final SavedStateHandlesVM invoke(@NotNull CreationExtras initializer) {
        t.j(initializer, "$this$initializer");
        return new SavedStateHandlesVM();
    }
}
