package coil.decode;

import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.graphics.drawable.BitmapDrawable;
import android.os.Build;
import kotlin.jvm.internal.t;
import kotlin.jvm.internal.v;
import kotlinx.coroutines.x1;
import okio.Buffer;
import okio.BufferedSource;
import okio.ForwardingSource;
import okio.Okio;
import okio.Source;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import w7.w;

/* JADX INFO: loaded from: classes10.dex */
public final class d implements i {

    @NotNull
    public static final a Companion = new a(null);
    public static final int DEFAULT_MAX_PARALLELISM = 4;

    @NotNull
    private final l exifOrientationPolicy;

    @NotNull
    private final coil.request.m options;

    @NotNull
    private final kotlinx.coroutines.sync.d parallelismLock;

    @NotNull
    private final p source;

    public static final class a {
        public /* synthetic */ a(kotlin.jvm.internal.k kVar) {
            this();
        }

        private a() {
        }
    }

    public static final class c implements i.a {

        @NotNull
        private final l exifOrientationPolicy;

        @NotNull
        private final kotlinx.coroutines.sync.d parallelismLock;

        public c(int i10, @NotNull l lVar) {
            this.exifOrientationPolicy = lVar;
            this.parallelismLock = kotlinx.coroutines.sync.f.b(i10, 0, 2, null);
        }

        @Override // coil.decode.i.a
        @NotNull
        public i a(@NotNull coil.fetch.m mVar, @NotNull coil.request.m mVar2, @NotNull coil.e eVar) {
            return new d(mVar.b(), mVar2, this.parallelismLock, this.exifOrientationPolicy);
        }

        public boolean equals(@Nullable Object obj) {
            return obj instanceof c;
        }

        public int hashCode() {
            return c.class.hashCode();
        }

        public /* synthetic */ c(int i10, l lVar, int i11, kotlin.jvm.internal.k kVar) {
            this((i11 & 1) != 0 ? 4 : i10, (i11 & 2) != 0 ? l.RESPECT_PERFORMANCE : lVar);
        }

        /* JADX WARN: Multi-variable type inference failed */
        public c() {
            this(0, null, 3, 0 == true ? 1 : 0);
        }

        /* JADX WARN: Multi-variable type inference failed */
        public /* synthetic */ c(int i10) {
            this(i10, null, 2, 0 == true ? 1 : 0);
        }

        public /* synthetic */ c(int i10, int i11, kotlin.jvm.internal.k kVar) {
            this((i11 & 1) != 0 ? 4 : i10);
        }
    }

    /* JADX INFO: renamed from: coil.decode.d$d, reason: collision with other inner class name */
    @kotlin.coroutines.jvm.internal.f(c = "coil.decode.BitmapFactoryDecoder", f = "BitmapFactoryDecoder.kt", l = {232, 46}, m = "decode")
    static final class C0097d extends kotlin.coroutines.jvm.internal.d {
        Object L$0;
        Object L$1;
        int label;
        /* synthetic */ Object result;

        C0097d(kotlin.coroutines.d<? super C0097d> dVar) {
            super(dVar);
        }

        @Override // kotlin.coroutines.jvm.internal.a
        @Nullable
        public final Object invokeSuspend(@NotNull Object obj) {
            this.result = obj;
            this.label |= Integer.MIN_VALUE;
            return d.this.a(this);
        }
    }

    static final class e extends v implements e8.a<g> {
        e() {
            super(0);
        }

        @Override // e8.a
        @NotNull
        /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
        public final g invoke() {
            return d.this.e(new BitmapFactory.Options());
        }
    }

    public d(@NotNull p pVar, @NotNull coil.request.m mVar, @NotNull kotlinx.coroutines.sync.d dVar, @NotNull l lVar) {
        this.source = pVar;
        this.options = mVar;
        this.parallelismLock = dVar;
        this.exifOrientationPolicy = lVar;
    }

    private static final class b extends ForwardingSource {

        @Nullable
        private Exception exception;

        @Nullable
        public final Exception d() {
            return this.exception;
        }

        public b(@NotNull Source source) {
            super(source);
        }

        @Override // okio.ForwardingSource, okio.Source
        public long read(@NotNull Buffer buffer, long j6) throws Exception {
            try {
                return super.read(buffer, j6);
            } catch (Exception e) {
                this.exception = e;
                throw e;
            }
        }
    }

    public /* synthetic */ d(p pVar, coil.request.m mVar, kotlinx.coroutines.sync.d dVar, l lVar, int i10, kotlin.jvm.internal.k kVar) {
        this(pVar, mVar, (i10 & 4) != 0 ? kotlinx.coroutines.sync.f.b(Integer.MAX_VALUE, 0, 2, null) : dVar, (i10 & 8) != 0 ? l.RESPECT_PERFORMANCE : lVar);
    }

    private final void c(BitmapFactory.Options options, j jVar) {
        Bitmap.Config configF = this.options.f();
        if (jVar.b() || n.a(jVar)) {
            configF = coil.util.a.e(configF);
        }
        if (this.options.d() && configF == Bitmap.Config.ARGB_8888 && t.e(options.outMimeType, "image/jpeg")) {
            configF = Bitmap.Config.RGB_565;
        }
        if (Build.VERSION.SDK_INT >= 26 && options.outConfig == Bitmap.Config.RGBA_F16 && configF != Bitmap.Config.HARDWARE) {
            configF = Bitmap.Config.RGBA_F16;
        }
        options.inPreferredConfig = configF;
    }

    private final void d(BitmapFactory.Options options, j jVar) {
        p.a aVarD = this.source.d();
        if ((aVarD instanceof r) && coil.size.b.a(this.options.n())) {
            options.inSampleSize = 1;
            options.inScaled = true;
            options.inDensity = ((r) aVarD).a();
            options.inTargetDensity = this.options.g().getResources().getDisplayMetrics().densityDpi;
            return;
        }
        if (options.outWidth <= 0 || options.outHeight <= 0) {
            options.inSampleSize = 1;
            options.inScaled = false;
            return;
        }
        int i10 = n.b(jVar) ? options.outHeight : options.outWidth;
        int i11 = n.b(jVar) ? options.outWidth : options.outHeight;
        coil.size.i iVarN = this.options.n();
        int iB = coil.size.b.a(iVarN) ? i10 : coil.util.i.B(iVarN.b(), this.options.m());
        coil.size.i iVarN2 = this.options.n();
        int iB2 = coil.size.b.a(iVarN2) ? i11 : coil.util.i.B(iVarN2.a(), this.options.m());
        int iA = h.a(i10, i11, iB, iB2, this.options.m());
        options.inSampleSize = iA;
        double dB = h.b(((double) i10) / ((double) iA), ((double) i11) / ((double) iA), iB, iB2, this.options.m());
        if (this.options.c()) {
            dB = j8.o.h(dB, 1.0d);
        }
        boolean z6 = !(dB == 1.0d);
        options.inScaled = z6;
        if (z6) {
            if (dB > 1.0d) {
                options.inDensity = g8.c.b(((double) Integer.MAX_VALUE) / dB);
                options.inTargetDensity = Integer.MAX_VALUE;
            } else {
                options.inDensity = Integer.MAX_VALUE;
                options.inTargetDensity = g8.c.b(((double) Integer.MAX_VALUE) * dB);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final g e(BitmapFactory.Options options) throws Exception {
        b bVar = new b(this.source.h());
        BufferedSource bufferedSourceBuffer = Okio.buffer(bVar);
        boolean z6 = true;
        options.inJustDecodeBounds = true;
        BitmapFactory.decodeStream(bufferedSourceBuffer.peek().inputStream(), null, options);
        Exception excD = bVar.d();
        if (excD != null) {
            throw excD;
        }
        options.inJustDecodeBounds = false;
        m mVar = m.INSTANCE;
        j jVarA = mVar.a(options.outMimeType, bufferedSourceBuffer, this.exifOrientationPolicy);
        Exception excD2 = bVar.d();
        if (excD2 != null) {
            throw excD2;
        }
        options.inMutable = false;
        if (Build.VERSION.SDK_INT >= 26 && this.options.e() != null) {
            options.inPreferredColorSpace = this.options.e();
        }
        options.inPremultiplied = this.options.l();
        c(options, jVarA);
        d(options, jVarA);
        try {
            Bitmap bitmapDecodeStream = BitmapFactory.decodeStream(bufferedSourceBuffer.inputStream(), null, options);
            kotlin.io.c.a(bufferedSourceBuffer, null);
            Exception excD3 = bVar.d();
            if (excD3 != null) {
                throw excD3;
            }
            if (bitmapDecodeStream == null) {
                throw new IllegalStateException("BitmapFactory returned a null bitmap. Often this means BitmapFactory could not decode the image data read from the input source (e.g. network, disk, or memory) as it's not encoded as a valid image format.".toString());
            }
            bitmapDecodeStream.setDensity(this.options.g().getResources().getDisplayMetrics().densityDpi);
            BitmapDrawable bitmapDrawable = new BitmapDrawable(this.options.g().getResources(), mVar.b(bitmapDecodeStream, jVarA));
            if (options.inSampleSize <= 1 && !options.inScaled) {
                z6 = false;
            }
            return new g(bitmapDrawable, z6);
        } catch (Throwable th) {
            try {
                throw th;
            } catch (Throwable th2) {
                kotlin.io.c.a(bufferedSourceBuffer, th);
                throw th2;
            }
        }
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    @Override // coil.decode.i
    @Nullable
    public Object a(@NotNull kotlin.coroutines.d<? super g> dVar) throws Throwable {
        C0097d c0097d;
        kotlinx.coroutines.sync.d dVar2;
        d dVar3;
        kotlinx.coroutines.sync.d dVar4;
        Throwable th;
        if (dVar instanceof C0097d) {
            c0097d = (C0097d) dVar;
            int i10 = c0097d.label;
            if ((i10 & Integer.MIN_VALUE) != 0) {
                c0097d.label = i10 - Integer.MIN_VALUE;
            } else {
                c0097d = new C0097d(dVar);
            }
        } else {
            c0097d = new C0097d(dVar);
        }
        Object obj = c0097d.result;
        Object objE = kotlin.coroutines.intrinsics.d.e();
        int i11 = c0097d.label;
        try {
            if (i11 == 0) {
                w.b(obj);
                dVar2 = this.parallelismLock;
                c0097d.L$0 = this;
                c0097d.L$1 = dVar2;
                c0097d.label = 1;
                if (dVar2.c(c0097d) == objE) {
                    return objE;
                }
                dVar3 = this;
            } else {
                if (i11 != 1) {
                    if (i11 != 2) {
                        throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                    }
                    dVar4 = (kotlinx.coroutines.sync.d) c0097d.L$0;
                    try {
                        w.b(obj);
                        g gVar = (g) obj;
                        dVar4.release();
                        return gVar;
                    } catch (Throwable th2) {
                        th = th2;
                        dVar4.release();
                        throw th;
                    }
                }
                kotlinx.coroutines.sync.d dVar5 = (kotlinx.coroutines.sync.d) c0097d.L$1;
                dVar3 = (d) c0097d.L$0;
                w.b(obj);
                dVar2 = dVar5;
            }
            e eVar = dVar3.new e();
            c0097d.L$0 = dVar2;
            c0097d.L$1 = null;
            c0097d.label = 2;
            Object objC = x1.c(null, eVar, c0097d, 1, null);
            if (objC == objE) {
                return objE;
            }
            dVar4 = dVar2;
            obj = objC;
            g gVar2 = (g) obj;
            dVar4.release();
            return gVar2;
        } catch (Throwable th3) {
            dVar4 = dVar2;
            th = th3;
            dVar4.release();
            throw th;
        }
    }

    public /* synthetic */ d(p pVar, coil.request.m mVar) {
        this(pVar, mVar, null, null, 12, null);
    }

    public /* synthetic */ d(p pVar, coil.request.m mVar, kotlinx.coroutines.sync.d dVar, int i10, kotlin.jvm.internal.k kVar) {
        this(pVar, mVar, (i10 & 4) != 0 ? kotlinx.coroutines.sync.f.b(Integer.MAX_VALUE, 0, 2, null) : dVar);
    }

    public /* synthetic */ d(p pVar, coil.request.m mVar, kotlinx.coroutines.sync.d dVar) {
        this(pVar, mVar, dVar, null, 8, null);
    }
}
