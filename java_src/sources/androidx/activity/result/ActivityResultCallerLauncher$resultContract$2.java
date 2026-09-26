package androidx.activity.result;

import android.content.Context;
import android.content.Intent;
import androidx.activity.result.contract.ActivityResultContract;
import e8.a;
import kotlin.jvm.internal.t;
import kotlin.jvm.internal.v;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import w7.l0;

/* JADX INFO: loaded from: classes8.dex */
final class ActivityResultCallerLauncher$resultContract$2 extends v implements a<AnonymousClass1> {
    final /* synthetic */ ActivityResultCallerLauncher<I, O> this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    ActivityResultCallerLauncher$resultContract$2(ActivityResultCallerLauncher<I, O> activityResultCallerLauncher) {
        super(0);
        this.this$0 = activityResultCallerLauncher;
    }

    /* JADX WARN: Type inference failed for: r0v0, types: [androidx.activity.result.ActivityResultCallerLauncher$resultContract$2$1] */
    @Override // e8.a
    @NotNull
    /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
    public final AnonymousClass1 invoke() {
        final ActivityResultCallerLauncher<I, O> activityResultCallerLauncher = this.this$0;
        return new ActivityResultContract<l0, O>() { // from class: androidx.activity.result.ActivityResultCallerLauncher$resultContract$2.1
            @Override // androidx.activity.result.contract.ActivityResultContract
            public O c(int i10, @Nullable Intent intent) {
                return (O) activityResultCallerLauncher.d().c(i10, intent);
            }

            @Override // androidx.activity.result.contract.ActivityResultContract
            @NotNull
            /* JADX INFO: renamed from: d, reason: merged with bridge method [inline-methods] */
            public Intent a(@NotNull Context context, @NotNull l0 input) {
                t.j(context, "context");
                t.j(input, "input");
                return activityResultCallerLauncher.d().a(context, activityResultCallerLauncher.e());
            }
        };
    }
}
