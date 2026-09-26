package androidx.compose.ui.window;

import e8.a;
import java.util.UUID;
import kotlin.jvm.internal.v;

/* JADX INFO: loaded from: classes2.dex */
final class AndroidDialog_androidKt$Dialog$dialogId$1 extends v implements a<UUID> {
    public static final AndroidDialog_androidKt$Dialog$dialogId$1 INSTANCE = new AndroidDialog_androidKt$Dialog$dialogId$1();

    AndroidDialog_androidKt$Dialog$dialogId$1() {
        super(0);
    }

    @Override // e8.a
    /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
    public final UUID invoke() {
        return UUID.randomUUID();
    }
}
