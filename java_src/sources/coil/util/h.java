package coil.util;

import android.graphics.drawable.Drawable;
import android.widget.ImageView;
import androidx.annotation.DrawableRes;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes7.dex */
public final class h {

    @NotNull
    private static final coil.request.b DEFAULT_REQUEST_OPTIONS = new coil.request.b(null, null, null, null, null, null, null, false, false, null, null, null, null, null, null, 32767, null);

    public /* synthetic */ class a {
        public static final /* synthetic */ int[] $EnumSwitchMapping$0;

        static {
            int[] iArr = new int[coil.size.e.values().length];
            iArr[coil.size.e.EXACT.ordinal()] = 1;
            iArr[coil.size.e.INEXACT.ordinal()] = 2;
            iArr[coil.size.e.AUTOMATIC.ordinal()] = 3;
            $EnumSwitchMapping$0 = iArr;
        }
    }

    @NotNull
    public static final coil.request.b b() {
        return DEFAULT_REQUEST_OPTIONS;
    }

    @Nullable
    public static final Drawable c(@NotNull coil.request.h hVar, @Nullable Drawable drawable, @DrawableRes @Nullable Integer num, @Nullable Drawable drawable2) {
        if (drawable != null) {
            return drawable;
        }
        if (num == null) {
            return drawable2;
        }
        if (num.intValue() == 0) {
            return null;
        }
        return d.a(hVar.l(), num.intValue());
    }

    public static final boolean a(@NotNull coil.request.h hVar) {
        int i10 = a.$EnumSwitchMapping$0[hVar.H().ordinal()];
        if (i10 == 1) {
            return false;
        }
        if (i10 != 2) {
            if (i10 == 3) {
                if ((hVar.q().m() != null || !(hVar.K() instanceof coil.size.d)) && (!(hVar.M() instanceof f0.b) || !(hVar.K() instanceof coil.size.l) || !(((f0.b) hVar.M()).getView() instanceof ImageView) || ((f0.b) hVar.M()).getView() != ((coil.size.l) hVar.K()).getView())) {
                    return false;
                }
            } else {
                throw new w7.s();
            }
        }
        return true;
    }
}
