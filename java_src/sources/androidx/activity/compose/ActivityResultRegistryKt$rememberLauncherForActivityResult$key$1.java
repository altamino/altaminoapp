package androidx.activity.compose;

import e8.a;
import java.util.UUID;
import kotlin.jvm.internal.v;
import org.jetbrains.annotations.NotNull;

/* JADX INFO: loaded from: classes9.dex */
final class ActivityResultRegistryKt$rememberLauncherForActivityResult$key$1 extends v implements a<String> {
    public static final ActivityResultRegistryKt$rememberLauncherForActivityResult$key$1 INSTANCE = new ActivityResultRegistryKt$rememberLauncherForActivityResult$key$1();

    ActivityResultRegistryKt$rememberLauncherForActivityResult$key$1() {
        super(0);
    }

    @Override // e8.a
    @NotNull
    public final String invoke() {
        return UUID.randomUUID().toString();
    }
}
