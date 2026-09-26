package androidx.compose.runtime.saveable;

import e8.a;
import kotlin.jvm.internal.v;
import org.jetbrains.annotations.NotNull;

/* JADX INFO: loaded from: classes8.dex */
final class SaveableStateHolderKt$rememberSaveableStateHolder$1 extends v implements a<SaveableStateHolderImpl> {
    public static final SaveableStateHolderKt$rememberSaveableStateHolder$1 INSTANCE = new SaveableStateHolderKt$rememberSaveableStateHolder$1();

    SaveableStateHolderKt$rememberSaveableStateHolder$1() {
        super(0);
    }

    @Override // e8.a
    @NotNull
    /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
    public final SaveableStateHolderImpl invoke() {
        return new SaveableStateHolderImpl(null, 1, null);
    }
}
