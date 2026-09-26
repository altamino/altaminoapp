package androidx.compose.ui.platform;

import androidx.compose.ui.text.input.PlatformTextInputService;
import androidx.compose.ui.text.input.TextInputService;
import org.jetbrains.annotations.NotNull;

/* JADX INFO: loaded from: classes7.dex */
final class AndroidComposeView_androidKt$textInputServiceFactory$1 extends kotlin.jvm.internal.v implements e8.l<PlatformTextInputService, TextInputService> {
    public static final AndroidComposeView_androidKt$textInputServiceFactory$1 INSTANCE = new AndroidComposeView_androidKt$textInputServiceFactory$1();

    AndroidComposeView_androidKt$textInputServiceFactory$1() {
        super(1);
    }

    @Override // e8.l
    @NotNull
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public final TextInputService invoke(@NotNull PlatformTextInputService it) {
        kotlin.jvm.internal.t.j(it, "it");
        return new TextInputService(it);
    }
}
