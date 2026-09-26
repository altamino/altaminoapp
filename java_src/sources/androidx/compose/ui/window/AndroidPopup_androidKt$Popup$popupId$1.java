package androidx.compose.ui.window;

import e8.a;
import java.util.UUID;
import kotlin.jvm.internal.v;

/* JADX INFO: loaded from: classes.dex */
final class AndroidPopup_androidKt$Popup$popupId$1 extends v implements a<UUID> {
    public static final AndroidPopup_androidKt$Popup$popupId$1 INSTANCE = new AndroidPopup_androidKt$Popup$popupId$1();

    AndroidPopup_androidKt$Popup$popupId$1() {
        super(0);
    }

    @Override // e8.a
    /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
    public final UUID invoke() {
        return UUID.randomUUID();
    }
}
