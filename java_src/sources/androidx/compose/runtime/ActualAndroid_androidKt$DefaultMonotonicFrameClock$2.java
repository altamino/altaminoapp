package androidx.compose.runtime;

import android.os.Looper;
import kotlin.jvm.internal.v;
import org.jetbrains.annotations.NotNull;

/* JADX INFO: loaded from: classes11.dex */
final class ActualAndroid_androidKt$DefaultMonotonicFrameClock$2 extends v implements e8.a<MonotonicFrameClock> {
    public static final ActualAndroid_androidKt$DefaultMonotonicFrameClock$2 INSTANCE = new ActualAndroid_androidKt$DefaultMonotonicFrameClock$2();

    ActualAndroid_androidKt$DefaultMonotonicFrameClock$2() {
        super(0);
    }

    @Override // e8.a
    @NotNull
    /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
    public final MonotonicFrameClock invoke() {
        if (Looper.getMainLooper() != null) {
            return DefaultChoreographerFrameClock.INSTANCE;
        }
        return SdkStubsFallbackFrameClock.INSTANCE;
    }
}
