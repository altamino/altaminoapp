package coil.decode;

import java.util.Set;
import kotlin.collections.y0;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes10.dex */
public final class n {

    @NotNull
    private static final Set<String> RESPECT_PERFORMANCE_MIME_TYPES = y0.i("image/jpeg", "image/webp", "image/heic", "image/heif");

    public /* synthetic */ class a {
        public static final /* synthetic */ int[] $EnumSwitchMapping$0;

        static {
            int[] iArr = new int[l.values().length];
            iArr[l.RESPECT_PERFORMANCE.ordinal()] = 1;
            iArr[l.IGNORE.ordinal()] = 2;
            iArr[l.RESPECT_ALL.ordinal()] = 3;
            $EnumSwitchMapping$0 = iArr;
        }
    }

    public static final boolean c(@NotNull l lVar, @Nullable String str) {
        int i10 = a.$EnumSwitchMapping$0[lVar.ordinal()];
        if (i10 != 1) {
            if (i10 == 2) {
                return false;
            }
            if (i10 != 3) {
                throw new w7.s();
            }
        } else if (str == null || !RESPECT_PERFORMANCE_MIME_TYPES.contains(str)) {
            return false;
        }
        return true;
    }

    public static final boolean a(@NotNull j jVar) {
        if (jVar.a() > 0) {
            return true;
        }
        return false;
    }

    public static final boolean b(@NotNull j jVar) {
        if (jVar.a() != 90 && jVar.a() != 270) {
            return false;
        }
        return true;
    }
}
