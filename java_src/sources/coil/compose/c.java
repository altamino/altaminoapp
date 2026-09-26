package coil.compose;

import android.graphics.drawable.Drawable;
import androidx.annotation.MainThread;
import androidx.compose.runtime.Composable;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.ComposerKt;
import androidx.compose.ui.geometry.Size;
import androidx.compose.ui.graphics.ImageBitmap;
import androidx.compose.ui.graphics.drawscope.DrawScope;
import androidx.compose.ui.graphics.painter.Painter;
import androidx.compose.ui.graphics.vector.ImageVector;
import androidx.compose.ui.layout.ContentScale;
import androidx.compose.ui.platform.InspectionModeKt;
import e8.l;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import w7.l0;

/* JADX INFO: loaded from: classes5.dex */
public final class c {

    @NotNull
    private static final a FakeTransitionTarget = new a();

    public static final class a implements coil.transition.d {
        @Override // coil.transition.d
        @Nullable
        public Drawable d() {
            return null;
        }

        a() {
        }

        @Override // f0.a
        @MainThread
        public void a(@NotNull Drawable drawable) {
            coil.transition.d.a.c(this, drawable);
        }

        @Override // f0.a
        @MainThread
        public void b(@Nullable Drawable drawable) {
            coil.transition.d.a.b(this, drawable);
        }

        @Override // f0.a
        @MainThread
        public void c(@Nullable Drawable drawable) {
            coil.transition.d.a.a(this, drawable);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final coil.size.i e(long j6) {
        if (j6 == Size.Companion.a()) {
            return coil.size.i.ORIGINAL;
        }
        if (!c(j6)) {
            return null;
        }
        float fI = Size.i(j6);
        coil.size.c cVarA = (Float.isInfinite(fI) || Float.isNaN(fI)) ? coil.size.c.b.INSTANCE : coil.size.a.a(g8.c.c(Size.i(j6)));
        float fG = Size.g(j6);
        return new coil.size.i(cVarA, (Float.isInfinite(fG) || Float.isNaN(fG)) ? coil.size.c.b.INSTANCE : coil.size.a.a(g8.c.c(Size.g(j6))));
    }

    private static final Void f(String str, String str2) {
        throw new IllegalArgumentException("Unsupported type: " + str + ". " + str2);
    }

    static /* synthetic */ Void g(String str, String str2, int i10, Object obj) {
        if ((i10 & 2) != 0) {
            str2 = "If you wish to display this " + str + ", use androidx.compose.foundation.Image.";
        }
        return f(str, str2);
    }

    private static final boolean c(long j6) {
        if (Size.i(j6) >= 0.5d && Size.g(j6) >= 0.5d) {
            return true;
        }
        return false;
    }

    @Composable
    @NotNull
    public static final b d(@Nullable Object obj, @NotNull coil.e eVar, @Nullable l<? super b.c, ? extends b.c> lVar, @Nullable l<? super b.c, l0> lVar2, @Nullable ContentScale contentScale, int i10, @Nullable Composer composer, int i11, int i12) {
        composer.G(-2020614074);
        if ((i12 & 4) != 0) {
            lVar = b.Companion.a();
        }
        if ((i12 & 8) != 0) {
            lVar2 = null;
        }
        if ((i12 & 16) != 0) {
            contentScale = ContentScale.Companion.b();
        }
        if ((i12 & 32) != 0) {
            i10 = DrawScope.Companion.b();
        }
        if (ComposerKt.O()) {
            ComposerKt.Z(-2020614074, i11, -1, "coil.compose.rememberAsyncImagePainter (AsyncImagePainter.kt:131)");
        }
        coil.request.h hVarD = j.d(obj, composer, 8);
        h(hVarD);
        composer.G(-492369756);
        Object objH = composer.H();
        if (objH == Composer.Companion.a()) {
            objH = new b(hVarD, eVar);
            composer.z(objH);
        }
        composer.Q();
        b bVar = (b) objH;
        bVar.K(lVar);
        bVar.F(lVar2);
        bVar.C(contentScale);
        bVar.D(i10);
        bVar.H(((Boolean) composer.x(InspectionModeKt.a())).booleanValue());
        bVar.E(eVar);
        bVar.I(hVarD);
        bVar.b();
        if (ComposerKt.O()) {
            ComposerKt.Y();
        }
        composer.Q();
        return bVar;
    }

    private static final void h(coil.request.h hVar) {
        Object objM = hVar.m();
        if (!(objM instanceof coil.request.h.a)) {
            if (!(objM instanceof ImageBitmap)) {
                if (!(objM instanceof ImageVector)) {
                    if (!(objM instanceof Painter)) {
                        if (hVar.M() == null) {
                            return;
                        } else {
                            throw new IllegalArgumentException("request.target must be null.".toString());
                        }
                    } else {
                        g("Painter", null, 2, null);
                        throw new w7.i();
                    }
                }
                g("ImageVector", null, 2, null);
                throw new w7.i();
            }
            g("ImageBitmap", null, 2, null);
            throw new w7.i();
        }
        f("ImageRequest.Builder", "Did you forget to call ImageRequest.Builder.build()?");
        throw new w7.i();
    }
}
