package com.bumptech.glide;

import android.annotation.SuppressLint;
import android.content.Context;
import android.widget.ImageView;
import androidx.annotation.CheckResult;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.Executor;

/* JADX INFO: loaded from: classes7.dex */
public class i<TranscodeType> extends y0.a<i<TranscodeType>> {
    protected static final y0.f DOWNLOAD_ONLY_OPTIONS = new y0.f().g(com.bumptech.glide.load.engine.j.DATA).N(f.LOW).V(true);
    private final Context context;

    @Nullable
    private i<TranscodeType> errorBuilder;
    private final b glide;
    private final d glideContext;
    private boolean isDefaultTransitionOptionsSet = true;
    private boolean isModelSet;
    private boolean isThumbnailBuilt;

    @Nullable
    private Object model;

    @Nullable
    private List<y0.e<TranscodeType>> requestListeners;
    private final j requestManager;

    @Nullable
    private Float thumbSizeMultiplier;

    @Nullable
    private i<TranscodeType> thumbnailBuilder;
    private final Class<TranscodeType> transcodeClass;

    @NonNull
    private k<?, ? super TranscodeType> transitionOptions;

    @NonNull
    private i<TranscodeType> p0(@Nullable Object obj) {
        this.model = obj;
        this.isModelSet = true;
        return this;
    }

    @NonNull
    public <Y extends com.bumptech.glide.request.target.e<TranscodeType>> Y j0(@NonNull Y y6) {
        return (Y) k0(y6, null, com.bumptech.glide.util.e.b());
    }

    static /* synthetic */ class a {
        static final /* synthetic */ int[] $SwitchMap$android$widget$ImageView$ScaleType;
        static final /* synthetic */ int[] $SwitchMap$com$bumptech$glide$Priority;

        static {
            int[] iArr = new int[f.values().length];
            $SwitchMap$com$bumptech$glide$Priority = iArr;
            try {
                iArr[f.LOW.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                $SwitchMap$com$bumptech$glide$Priority[f.NORMAL.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                $SwitchMap$com$bumptech$glide$Priority[f.HIGH.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                $SwitchMap$com$bumptech$glide$Priority[f.IMMEDIATE.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            int[] iArr2 = new int[ImageView.ScaleType.values().length];
            $SwitchMap$android$widget$ImageView$ScaleType = iArr2;
            try {
                iArr2[ImageView.ScaleType.CENTER_CROP.ordinal()] = 1;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                $SwitchMap$android$widget$ImageView$ScaleType[ImageView.ScaleType.CENTER_INSIDE.ordinal()] = 2;
            } catch (NoSuchFieldError unused6) {
            }
            try {
                $SwitchMap$android$widget$ImageView$ScaleType[ImageView.ScaleType.FIT_CENTER.ordinal()] = 3;
            } catch (NoSuchFieldError unused7) {
            }
            try {
                $SwitchMap$android$widget$ImageView$ScaleType[ImageView.ScaleType.FIT_START.ordinal()] = 4;
            } catch (NoSuchFieldError unused8) {
            }
            try {
                $SwitchMap$android$widget$ImageView$ScaleType[ImageView.ScaleType.FIT_END.ordinal()] = 5;
            } catch (NoSuchFieldError unused9) {
            }
            try {
                $SwitchMap$android$widget$ImageView$ScaleType[ImageView.ScaleType.FIT_XY.ordinal()] = 6;
            } catch (NoSuchFieldError unused10) {
            }
            try {
                $SwitchMap$android$widget$ImageView$ScaleType[ImageView.ScaleType.CENTER.ordinal()] = 7;
            } catch (NoSuchFieldError unused11) {
            }
            try {
                $SwitchMap$android$widget$ImageView$ScaleType[ImageView.ScaleType.MATRIX.ordinal()] = 8;
            } catch (NoSuchFieldError unused12) {
            }
        }
    }

    private y0.c d0(com.bumptech.glide.request.target.e<TranscodeType> eVar, @Nullable y0.e<TranscodeType> eVar2, y0.a<?> aVar, Executor executor) {
        return e0(new Object(), eVar, eVar2, null, this.transitionOptions, aVar.u(), aVar.r(), aVar.q(), aVar, executor);
    }

    /* JADX WARN: Multi-variable type inference failed */
    private y0.c e0(Object obj, com.bumptech.glide.request.target.e<TranscodeType> eVar, @Nullable y0.e<TranscodeType> eVar2, @Nullable y0.d dVar, k<?, ? super TranscodeType> kVar, f fVar, int i10, int i11, y0.a<?> aVar, Executor executor) {
        y0.d dVar2;
        y0.d bVar;
        if (this.errorBuilder != null) {
            bVar = new y0.b(obj, dVar);
            dVar2 = bVar;
        } else {
            dVar2 = null;
            bVar = dVar;
        }
        y0.c cVarF0 = f0(obj, eVar, eVar2, bVar, kVar, fVar, i10, i11, aVar, executor);
        if (dVar2 == null) {
            return cVarF0;
        }
        int iR = this.errorBuilder.r();
        int iQ = this.errorBuilder.q();
        if (com.bumptech.glide.util.k.r(i10, i11) && !this.errorBuilder.I()) {
            iR = aVar.r();
            iQ = aVar.q();
        }
        i<TranscodeType> iVar = this.errorBuilder;
        y0.b bVar2 = dVar2;
        bVar2.o(cVarF0, iVar.e0(obj, eVar, eVar2, bVar2, iVar.transitionOptions, iVar.u(), iR, iQ, this.errorBuilder, executor));
        return bVar2;
    }

    private y0.c f0(Object obj, com.bumptech.glide.request.target.e<TranscodeType> eVar, y0.e<TranscodeType> eVar2, @Nullable y0.d dVar, k<?, ? super TranscodeType> kVar, f fVar, int i10, int i11, y0.a<?> aVar, Executor executor) {
        i<TranscodeType> iVar = this.thumbnailBuilder;
        if (iVar == null) {
            if (this.thumbSizeMultiplier == null) {
                return q0(obj, eVar, eVar2, aVar, dVar, kVar, fVar, i10, i11, executor);
            }
            y0.i iVar2 = new y0.i(obj, dVar);
            iVar2.n(q0(obj, eVar, eVar2, aVar, iVar2, kVar, fVar, i10, i11, executor), q0(obj, eVar, eVar2, aVar.e().U(this.thumbSizeMultiplier.floatValue()), iVar2, kVar, h0(fVar), i10, i11, executor));
            return iVar2;
        }
        if (this.isThumbnailBuilt) {
            throw new IllegalStateException("You cannot use a request as both the main request and a thumbnail, consider using clone() on the request(s) passed to thumbnail()");
        }
        k<?, ? super TranscodeType> kVar2 = iVar.isDefaultTransitionOptionsSet ? kVar : iVar.transitionOptions;
        f fVarU = iVar.D() ? this.thumbnailBuilder.u() : h0(fVar);
        int iR = this.thumbnailBuilder.r();
        int iQ = this.thumbnailBuilder.q();
        if (com.bumptech.glide.util.k.r(i10, i11) && !this.thumbnailBuilder.I()) {
            iR = aVar.r();
            iQ = aVar.q();
        }
        y0.i iVar3 = new y0.i(obj, dVar);
        y0.c cVarQ0 = q0(obj, eVar, eVar2, aVar, iVar3, kVar, fVar, i10, i11, executor);
        this.isThumbnailBuilt = true;
        i<TranscodeType> iVar4 = this.thumbnailBuilder;
        y0.c cVarE0 = iVar4.e0(obj, eVar, eVar2, iVar3, kVar2, fVarU, iR, iQ, iVar4, executor);
        this.isThumbnailBuilt = false;
        iVar3.n(cVarQ0, cVarE0);
        return iVar3;
    }

    @NonNull
    private f h0(@NonNull f fVar) {
        int i10 = a.$SwitchMap$com$bumptech$glide$Priority[fVar.ordinal()];
        if (i10 == 1) {
            return f.NORMAL;
        }
        if (i10 == 2) {
            return f.HIGH;
        }
        if (i10 == 3 || i10 == 4) {
            return f.IMMEDIATE;
        }
        throw new IllegalArgumentException("unknown priority: " + u());
    }

    private y0.c q0(Object obj, com.bumptech.glide.request.target.e<TranscodeType> eVar, y0.e<TranscodeType> eVar2, y0.a<?> aVar, y0.d dVar, k<?, ? super TranscodeType> kVar, f fVar, int i10, int i11, Executor executor) {
        Context context = this.context;
        d dVar2 = this.glideContext;
        return y0.h.x(context, dVar2, obj, this.model, this.transcodeClass, aVar, i10, i11, fVar, eVar, eVar2, this.requestListeners, dVar, dVar2.e(), kVar.c(), executor);
    }

    @NonNull
    @CheckResult
    public i<TranscodeType> b0(@Nullable y0.e<TranscodeType> eVar) {
        if (eVar != null) {
            if (this.requestListeners == null) {
                this.requestListeners = new ArrayList();
            }
            this.requestListeners.add(eVar);
        }
        return this;
    }

    @SuppressLint({"CheckResult"})
    protected i(@NonNull b bVar, j jVar, Class<TranscodeType> cls, Context context) {
        this.glide = bVar;
        this.requestManager = jVar;
        this.transcodeClass = cls;
        this.context = context;
        this.transitionOptions = jVar.o(cls);
        this.glideContext = bVar.i();
        i0(jVar.m());
        b(jVar.n());
    }

    @SuppressLint({"CheckResult"})
    private void i0(List<y0.e<Object>> list) {
        Iterator<y0.e<Object>> it = list.iterator();
        while (it.hasNext()) {
            b0((y0.e) it.next());
        }
    }

    private <Y extends com.bumptech.glide.request.target.e<TranscodeType>> Y l0(@NonNull Y y6, @Nullable y0.e<TranscodeType> eVar, y0.a<?> aVar, Executor executor) {
        com.bumptech.glide.util.j.d(y6);
        if (this.isModelSet) {
            y0.c cVarD0 = d0(y6, eVar, aVar, executor);
            y0.c cVarA = y6.a();
            if (cVarD0.h(cVarA) && !m0(aVar, cVarA)) {
                if (!((y0.c) com.bumptech.glide.util.j.d(cVarA)).isRunning()) {
                    cVarA.j();
                }
                return y6;
            }
            this.requestManager.l(y6);
            y6.c(cVarD0);
            this.requestManager.v(y6, cVarD0);
            return y6;
        }
        throw new IllegalArgumentException("You must call #load() before calling #into()");
    }

    private boolean m0(y0.a<?> aVar, y0.c cVar) {
        if (!aVar.C() && cVar.f()) {
            return true;
        }
        return false;
    }

    @Override // y0.a
    @NonNull
    @CheckResult
    /* JADX INFO: renamed from: c0, reason: merged with bridge method [inline-methods] */
    public i<TranscodeType> b(@NonNull y0.a<?> aVar) {
        com.bumptech.glide.util.j.d(aVar);
        return (i) super.b(aVar);
    }

    @Override // y0.a
    @CheckResult
    /* JADX INFO: renamed from: g0, reason: merged with bridge method [inline-methods] and merged with bridge method [inline-methods] */
    public i<TranscodeType> e() {
        i<TranscodeType> iVar = (i) super.e();
        iVar.transitionOptions = iVar.transitionOptions.clone();
        return iVar;
    }

    @NonNull
    <Y extends com.bumptech.glide.request.target.e<TranscodeType>> Y k0(@NonNull Y y6, @Nullable y0.e<TranscodeType> eVar, Executor executor) {
        return (Y) l0(y6, eVar, this, executor);
    }

    @NonNull
    @CheckResult
    public i<TranscodeType> n0(@Nullable Object obj) {
        return p0(obj);
    }

    @NonNull
    @CheckResult
    public i<TranscodeType> o0(@Nullable String str) {
        return p0(str);
    }
}
