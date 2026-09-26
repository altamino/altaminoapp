package androidx.activity;

import android.app.Activity;
import android.app.PictureInPictureParams;
import android.graphics.Rect;
import androidx.annotation.RequiresApi;
import kotlin.jvm.internal.t;
import org.jetbrains.annotations.NotNull;

/* JADX INFO: loaded from: classes11.dex */
@RequiresApi
public final class Api26Impl {

    @NotNull
    public static final Api26Impl INSTANCE = new Api26Impl();

    public final void a(@NotNull Activity activity, @NotNull Rect hint) {
        t.j(activity, "activity");
        t.j(hint, "hint");
        activity.setPictureInPictureParams(new PictureInPictureParams.Builder().setSourceRectHint(hint).build());
    }

    private Api26Impl() {
    }
}
