package coil.util;

import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.Rect;
import android.graphics.drawable.BitmapDrawable;
import android.graphics.drawable.Drawable;
import androidx.annotation.WorkerThread;
import org.jetbrains.annotations.NotNull;

/* JADX INFO: loaded from: classes7.dex */
public final class k {
    private static final int DEFAULT_SIZE = 512;

    @NotNull
    public static final k INSTANCE = new k();

    private final boolean c(boolean z6, Bitmap bitmap, coil.size.i iVar, coil.size.h hVar) {
        if (z6) {
            return true;
        }
        return coil.decode.h.c(bitmap.getWidth(), bitmap.getHeight(), coil.size.b.a(iVar) ? bitmap.getWidth() : i.B(iVar.b(), hVar), coil.size.b.a(iVar) ? bitmap.getHeight() : i.B(iVar.a(), hVar), hVar) == 1.0d;
    }

    @WorkerThread
    @NotNull
    public final Bitmap a(@NotNull Drawable drawable, @NotNull Bitmap.Config config, @NotNull coil.size.i iVar, @NotNull coil.size.h hVar, boolean z6) {
        if (drawable instanceof BitmapDrawable) {
            Bitmap bitmap = ((BitmapDrawable) drawable).getBitmap();
            if (b(bitmap, config) && c(z6, bitmap, iVar, hVar)) {
                return bitmap;
            }
        }
        Drawable drawableMutate = drawable.mutate();
        int iR = i.r(drawableMutate);
        if (iR <= 0) {
            iR = 512;
        }
        int iJ = i.j(drawableMutate);
        int i10 = iJ > 0 ? iJ : 512;
        double dC = coil.decode.h.c(iR, i10, coil.size.b.a(iVar) ? iR : i.B(iVar.b(), hVar), coil.size.b.a(iVar) ? i10 : i.B(iVar.a(), hVar), hVar);
        int iB = g8.c.b(((double) iR) * dC);
        int iB2 = g8.c.b(dC * ((double) i10));
        Bitmap bitmapCreateBitmap = Bitmap.createBitmap(iB, iB2, a.e(config));
        kotlin.jvm.internal.t.i(bitmapCreateBitmap, "createBitmap(width, height, config)");
        Rect bounds = drawableMutate.getBounds();
        int i11 = bounds.left;
        int i12 = bounds.top;
        int i13 = bounds.right;
        int i14 = bounds.bottom;
        drawableMutate.setBounds(0, 0, iB, iB2);
        drawableMutate.draw(new Canvas(bitmapCreateBitmap));
        drawableMutate.setBounds(i11, i12, i13, i14);
        return bitmapCreateBitmap;
    }

    private k() {
    }

    private final boolean b(Bitmap bitmap, Bitmap.Config config) {
        if (bitmap.getConfig() == a.e(config)) {
            return true;
        }
        return false;
    }
}
