package coil.request;

import android.graphics.Bitmap;
import android.graphics.drawable.Drawable;
import android.view.View;
import androidx.annotation.WorkerThread;
import androidx.lifecycle.Lifecycle;
import kotlin.jvm.internal.t;
import kotlinx.coroutines.b2;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes4.dex */
public final class o {

    @NotNull
    private final coil.util.m hardwareBitmapService;

    @NotNull
    private final coil.e imageLoader;

    @NotNull
    private final coil.util.s systemCallbacks;

    @NotNull
    public final e b(@NotNull h hVar, @NotNull Throwable th) {
        Drawable drawableT;
        if (!(th instanceof k) || (drawableT = hVar.u()) == null) {
            drawableT = hVar.t();
        }
        return new e(drawableT, hVar, th);
    }

    public o(@NotNull coil.e eVar, @NotNull coil.util.s sVar, @Nullable coil.util.q qVar) {
        this.imageLoader = eVar;
        this.systemCallbacks = sVar;
        this.hardwareBitmapService = coil.util.f.a(qVar);
    }

    private final boolean d(h hVar, coil.size.i iVar) {
        if (c(hVar, hVar.j()) && this.hardwareBitmapService.a(iVar)) {
            return true;
        }
        return false;
    }

    private final boolean e(h hVar) {
        if (!hVar.O().isEmpty() && !kotlin.collections.p.F(coil.util.i.q(), hVar.j())) {
            return false;
        }
        return true;
    }

    @WorkerThread
    public final boolean a(@NotNull m mVar) {
        if (coil.util.a.d(mVar.f()) && !this.hardwareBitmapService.b()) {
            return false;
        }
        return true;
    }

    public final boolean c(@NotNull h hVar, @NotNull Bitmap.Config config) {
        if (!coil.util.a.d(config)) {
            return true;
        }
        if (!hVar.h()) {
            return false;
        }
        f0.a aVarM = hVar.M();
        if (aVarM instanceof f0.b) {
            View view = ((f0.b) aVarM).getView();
            if (view.isAttachedToWindow() && !view.isHardwareAccelerated()) {
                return false;
            }
        }
        return true;
    }

    @NotNull
    public final m f(@NotNull h hVar, @NotNull coil.size.i iVar) {
        Bitmap.Config configJ;
        a aVarD;
        boolean z6;
        coil.size.h hVarJ;
        if (e(hVar) && d(hVar, iVar)) {
            configJ = hVar.j();
        } else {
            configJ = Bitmap.Config.ARGB_8888;
        }
        Bitmap.Config config = configJ;
        if (this.systemCallbacks.b()) {
            aVarD = hVar.D();
        } else {
            aVarD = a.DISABLED;
        }
        a aVar = aVarD;
        if (hVar.i() && hVar.O().isEmpty() && config != Bitmap.Config.ALPHA_8) {
            z6 = true;
        } else {
            z6 = false;
        }
        boolean z10 = z6;
        coil.size.c cVarB = iVar.b();
        coil.size.c.b bVar = coil.size.c.b.INSTANCE;
        if (!t.e(cVarB, bVar) && !t.e(iVar.a(), bVar)) {
            hVarJ = hVar.J();
        } else {
            hVarJ = coil.size.h.FIT;
        }
        return new m(hVar.l(), config, hVar.k(), iVar, hVarJ, coil.util.h.a(hVar), z10, hVar.I(), hVar.r(), hVar.x(), hVar.L(), hVar.E(), hVar.C(), hVar.s(), aVar);
    }

    @NotNull
    public final RequestDelegate g(@NotNull h hVar, @NotNull b2 b2Var) {
        Lifecycle lifecycleZ = hVar.z();
        f0.a aVarM = hVar.M();
        if (aVarM instanceof f0.b) {
            return new ViewTargetRequestDelegate(this.imageLoader, hVar, (f0.b) aVarM, lifecycleZ, b2Var);
        }
        return new BaseRequestDelegate(lifecycleZ, b2Var);
    }
}
