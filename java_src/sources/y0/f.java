package y0;

import androidx.annotation.CheckResult;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.bumptech.glide.load.engine.j;

/* JADX INFO: loaded from: classes10.dex */
public class f extends a<f> {

    @Nullable
    private static f centerCropOptions;

    @Nullable
    private static f centerInsideOptions;

    @Nullable
    private static f circleCropOptions;

    @Nullable
    private static f fitCenterOptions;

    @Nullable
    private static f noAnimationOptions;

    @Nullable
    private static f noTransformOptions;

    @Nullable
    private static f skipMemoryCacheFalseOptions;

    @Nullable
    private static f skipMemoryCacheTrueOptions;

    @NonNull
    @CheckResult
    public static f b0(@NonNull Class<?> cls) {
        return new f().f(cls);
    }

    @NonNull
    @CheckResult
    public static f c0(@NonNull j jVar) {
        return new f().g(jVar);
    }

    @NonNull
    @CheckResult
    public static f d0(@NonNull com.bumptech.glide.load.g gVar) {
        return new f().T(gVar);
    }
}
