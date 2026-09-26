package androidx.privacysandbox.ads.adservices.topics;

import android.annotation.SuppressLint;
import android.content.Context;
import androidx.annotation.RequiresExtension;
import androidx.annotation.RestrictTo;
import kotlin.jvm.internal.t;
import org.jetbrains.annotations.NotNull;

/* JADX INFO: loaded from: classes10.dex */
@RequiresExtension
@SuppressLint({"NewApi", "ClassVerificationFailure"})
@RestrictTo
public final class TopicsManagerApi33Ext4Impl extends TopicsManagerImplCommon {
    /* JADX WARN: Illegal instructions before constructor call */
    public TopicsManagerApi33Ext4Impl(@NotNull Context context) {
        t.j(context, "context");
        Object systemService = context.getSystemService((Class<Object>) a.a());
        t.i(systemService, "context.getSystemService…opicsManager::class.java)");
        super(b.a(systemService));
    }
}
