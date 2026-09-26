package androidx.compose.ui.platform;

import android.content.ClipData;
import android.content.ClipDescription;
import android.content.Context;
import androidx.compose.ui.text.AnnotatedString;
import androidx.webkit.internal.AssetHelper;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes10.dex */
public final class AndroidClipboardManager implements ClipboardManager {

    @NotNull
    private final android.content.ClipboardManager clipboardManager;

    public AndroidClipboardManager(@NotNull android.content.ClipboardManager clipboardManager) {
        kotlin.jvm.internal.t.j(clipboardManager, "clipboardManager");
        this.clipboardManager = clipboardManager;
    }

    /* JADX WARN: Illegal instructions before constructor call */
    public AndroidClipboardManager(@NotNull Context context) {
        kotlin.jvm.internal.t.j(context, "context");
        Object systemService = context.getSystemService("clipboard");
        if (systemService == null) {
            throw new NullPointerException("null cannot be cast to non-null type android.content.ClipboardManager");
        }
        this((android.content.ClipboardManager) systemService);
    }

    @Override // androidx.compose.ui.platform.ClipboardManager
    @Nullable
    public AnnotatedString a() {
        ClipData primaryClip = this.clipboardManager.getPrimaryClip();
        if (primaryClip == null || primaryClip.getItemCount() <= 0) {
            return null;
        }
        ClipData.Item itemAt = primaryClip.getItemAt(0);
        return AndroidClipboardManager_androidKt.a(itemAt != null ? itemAt.getText() : null);
    }

    @Override // androidx.compose.ui.platform.ClipboardManager
    public void b(@NotNull AnnotatedString annotatedString) {
        kotlin.jvm.internal.t.j(annotatedString, "annotatedString");
        this.clipboardManager.setPrimaryClip(ClipData.newPlainText("plain text", AndroidClipboardManager_androidKt.b(annotatedString)));
    }

    public final boolean c() {
        ClipDescription primaryClipDescription = this.clipboardManager.getPrimaryClipDescription();
        if (primaryClipDescription != null) {
            return primaryClipDescription.hasMimeType(AssetHelper.DEFAULT_MIME_TYPE);
        }
        return false;
    }
}
