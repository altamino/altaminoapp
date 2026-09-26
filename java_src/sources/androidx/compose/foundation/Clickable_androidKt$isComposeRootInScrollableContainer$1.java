package androidx.compose.foundation;

import android.view.View;
import kotlin.jvm.internal.v;
import org.jetbrains.annotations.NotNull;

/* JADX INFO: loaded from: classes9.dex */
final class Clickable_androidKt$isComposeRootInScrollableContainer$1 extends v implements e8.a<Boolean> {
    final /* synthetic */ View $view;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    Clickable_androidKt$isComposeRootInScrollableContainer$1(View view) {
        super(0);
        this.$view = view;
    }

    @Override // e8.a
    @NotNull
    /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
    public final Boolean invoke() {
        return Boolean.valueOf(Clickable_androidKt.e(this.$view));
    }
}
