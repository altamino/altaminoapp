package androidx.compose.foundation;

import androidx.compose.ui.input.key.KeyEvent;
import e8.l;
import kotlin.jvm.internal.t;
import kotlin.jvm.internal.v;
import org.jetbrains.annotations.NotNull;
import w7.l0;

/* JADX INFO: loaded from: classes2.dex */
final class ClickableKt$genericClickableWithoutGesture$detectClickFromKey$1 extends v implements l<KeyEvent, Boolean> {
    final /* synthetic */ boolean $enabled;
    final /* synthetic */ e8.a<l0> $onClick;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    ClickableKt$genericClickableWithoutGesture$detectClickFromKey$1(boolean z6, e8.a<l0> aVar) {
        super(1);
        this.$enabled = z6;
        this.$onClick = aVar;
    }

    @NotNull
    public final Boolean a(@NotNull android.view.KeyEvent it) {
        boolean z6;
        t.j(it, "it");
        if (this.$enabled && Clickable_androidKt.c(it)) {
            this.$onClick.invoke();
            z6 = true;
        } else {
            z6 = false;
        }
        return Boolean.valueOf(z6);
    }

    @Override // e8.l
    public /* bridge */ /* synthetic */ Boolean invoke(KeyEvent keyEvent) {
        return a(keyEvent.f());
    }
}
