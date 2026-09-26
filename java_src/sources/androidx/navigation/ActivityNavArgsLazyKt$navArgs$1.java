package androidx.navigation;

import android.app.Activity;
import android.content.Intent;
import android.os.Bundle;
import kotlin.jvm.internal.v;
import org.jetbrains.annotations.NotNull;

/* JADX INFO: loaded from: classes9.dex */
public final class ActivityNavArgsLazyKt$navArgs$1 extends v implements e8.a<Bundle> {
    final /* synthetic */ Activity $this_navArgs;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public ActivityNavArgsLazyKt$navArgs$1(Activity activity) {
        super(0);
        this.$this_navArgs = activity;
    }

    @Override // e8.a
    @NotNull
    /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
    public final Bundle invoke() {
        Bundle extras;
        Intent intent = this.$this_navArgs.getIntent();
        if (intent != null) {
            Activity activity = this.$this_navArgs;
            extras = intent.getExtras();
            if (extras == null) {
                throw new IllegalStateException("Activity " + activity + " has null extras in " + intent);
            }
        } else {
            extras = null;
        }
        if (extras != null) {
            return extras;
        }
        throw new IllegalStateException("Activity " + this.$this_navArgs + " has a null Intent");
    }
}
