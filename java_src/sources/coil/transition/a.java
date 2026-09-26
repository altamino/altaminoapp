package coil.transition;

import android.graphics.drawable.Drawable;
import coil.request.e;
import coil.request.i;
import coil.request.p;
import coil.size.h;
import kotlin.jvm.internal.k;
import org.jetbrains.annotations.NotNull;

/* JADX INFO: loaded from: classes8.dex */
public final class a implements c {
    private final int durationMillis;
    private final boolean preferExactIntrinsicSize;

    @NotNull
    private final i result;

    @NotNull
    private final d target;

    public a(@NotNull d dVar, @NotNull i iVar) {
        this(dVar, iVar, 0, false, 12, null);
    }

    public final int b() {
        return this.durationMillis;
    }

    public final boolean c() {
        return this.preferExactIntrinsicSize;
    }

    public a(@NotNull d dVar, @NotNull i iVar, int i10) {
        this(dVar, iVar, i10, false, 8, null);
    }

    @Override // coil.transition.c
    public void a() {
        Drawable drawableD = this.target.d();
        Drawable drawableA = this.result.a();
        h hVarJ = this.result.b().J();
        int i10 = this.durationMillis;
        i iVar = this.result;
        c0.b bVar = new c0.b(drawableD, drawableA, hVarJ, i10, ((iVar instanceof p) && ((p) iVar).d()) ? false : true, this.preferExactIntrinsicSize);
        i iVar2 = this.result;
        if (iVar2 instanceof p) {
            this.target.a(bVar);
        } else if (iVar2 instanceof e) {
            this.target.c(bVar);
        }
    }

    public a(@NotNull d dVar, @NotNull i iVar, int i10, boolean z6) {
        this.target = dVar;
        this.result = iVar;
        this.durationMillis = i10;
        this.preferExactIntrinsicSize = z6;
        if (i10 <= 0) {
            throw new IllegalArgumentException("durationMillis must be > 0.".toString());
        }
    }

    public /* synthetic */ a(d dVar, i iVar, int i10, boolean z6, int i11, k kVar) {
        this(dVar, iVar, (i11 & 4) != 0 ? 100 : i10, (i11 & 8) != 0 ? false : z6);
    }
}
