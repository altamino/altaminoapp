package com.bumptech.glide;

import android.content.ComponentCallbacks2;
import android.content.ContentResolver;
import android.content.Context;
import android.content.res.AssetFileDescriptor;
import android.content.res.Configuration;
import android.content.res.Resources;
import android.graphics.Bitmap;
import android.graphics.drawable.BitmapDrawable;
import android.graphics.drawable.Drawable;
import android.net.Uri;
import android.os.Build;
import android.os.ParcelFileDescriptor;
import android.util.Log;
import androidx.annotation.GuardedBy;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.fragment.app.Fragment;
import com.bumptech.glide.load.ImageHeaderParser;
import com.bumptech.glide.load.data.m;
import com.bumptech.glide.load.model.t;
import com.bumptech.glide.load.model.u;
import com.bumptech.glide.load.model.v;
import com.bumptech.glide.load.model.x;
import com.bumptech.glide.load.resource.bitmap.a0;
import com.bumptech.glide.load.resource.bitmap.b0;
import com.bumptech.glide.load.resource.bitmap.d0;
import com.bumptech.glide.load.resource.bitmap.f0;
import com.bumptech.glide.load.resource.bitmap.p;
import com.bumptech.glide.load.resource.bitmap.s;
import com.bumptech.glide.load.resource.bitmap.w;
import com.bumptech.glide.load.resource.bitmap.y;
import com.bumptech.glide.manager.l;
import java.io.File;
import java.io.InputStream;
import java.lang.reflect.InvocationTargetException;
import java.net.URL;
import java.nio.ByteBuffer;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Set;

/* JADX INFO: loaded from: classes6.dex */
public class b implements ComponentCallbacks2 {
    private static final String DEFAULT_DISK_CACHE_DIR = "image_manager_disk_cache";
    private static final String TAG = "Glide";
    private static volatile b glide;
    private static volatile boolean isInitializing;
    private final com.bumptech.glide.load.engine.bitmap_recycle.b arrayPool;
    private final com.bumptech.glide.load.engine.bitmap_recycle.d bitmapPool;

    @Nullable
    @GuardedBy
    private com.bumptech.glide.load.engine.prefill.b bitmapPreFiller;
    private final com.bumptech.glide.manager.d connectivityMonitorFactory;
    private final a defaultRequestOptionsFactory;
    private final com.bumptech.glide.load.engine.k engine;
    private final d glideContext;
    private final com.bumptech.glide.load.engine.cache.h memoryCache;
    private final h registry;
    private final l requestManagerRetriever;
    private final List<j> managers = new ArrayList();
    private e memoryCategory = e.NORMAL;

    public interface a {
        @NonNull
        y0.f build();
    }

    b(@NonNull Context context, @NonNull com.bumptech.glide.load.engine.k kVar, @NonNull com.bumptech.glide.load.engine.cache.h hVar, @NonNull com.bumptech.glide.load.engine.bitmap_recycle.d dVar, @NonNull com.bumptech.glide.load.engine.bitmap_recycle.b bVar, @NonNull l lVar, @NonNull com.bumptech.glide.manager.d dVar2, int i10, @NonNull a aVar, @NonNull Map<Class<?>, k<?, ?>> map, @NonNull List<y0.e<Object>> list, boolean z6, boolean z10) {
        com.bumptech.glide.load.k hVar2;
        com.bumptech.glide.load.k b0Var;
        h hVar3;
        this.engine = kVar;
        this.bitmapPool = dVar;
        this.arrayPool = bVar;
        this.memoryCache = hVar;
        this.requestManagerRetriever = lVar;
        this.connectivityMonitorFactory = dVar2;
        this.defaultRequestOptionsFactory = aVar;
        Resources resources = context.getResources();
        h hVar4 = new h();
        this.registry = hVar4;
        hVar4.o(new com.bumptech.glide.load.resource.bitmap.k());
        int i11 = Build.VERSION.SDK_INT;
        if (i11 >= 27) {
            hVar4.o(new s());
        }
        List<ImageHeaderParser> listG = hVar4.g();
        com.bumptech.glide.load.resource.gif.a aVar2 = new com.bumptech.glide.load.resource.gif.a(context, listG, dVar, bVar);
        com.bumptech.glide.load.k<ParcelFileDescriptor, Bitmap> kVarH = f0.h(dVar);
        p pVar = new p(hVar4.g(), resources.getDisplayMetrics(), dVar, bVar);
        if (!z10 || i11 < 28) {
            hVar2 = new com.bumptech.glide.load.resource.bitmap.h(pVar);
            b0Var = new b0(pVar, bVar);
        } else {
            b0Var = new w();
            hVar2 = new com.bumptech.glide.load.resource.bitmap.j();
        }
        com.bumptech.glide.load.resource.drawable.d dVar3 = new com.bumptech.glide.load.resource.drawable.d(context);
        com.bumptech.glide.load.model.s.c cVar = new com.bumptech.glide.load.model.s.c(resources);
        com.bumptech.glide.load.model.s.d dVar4 = new com.bumptech.glide.load.model.s.d(resources);
        com.bumptech.glide.load.model.s.b bVar2 = new com.bumptech.glide.load.model.s.b(resources);
        com.bumptech.glide.load.model.s.a aVar3 = new com.bumptech.glide.load.model.s.a(resources);
        com.bumptech.glide.load.resource.bitmap.c cVar2 = new com.bumptech.glide.load.resource.bitmap.c(bVar);
        com.bumptech.glide.load.resource.transcode.a aVar4 = new com.bumptech.glide.load.resource.transcode.a();
        com.bumptech.glide.load.resource.transcode.d dVar5 = new com.bumptech.glide.load.resource.transcode.d();
        ContentResolver contentResolver = context.getContentResolver();
        hVar4.a(ByteBuffer.class, new com.bumptech.glide.load.model.c()).a(InputStream.class, new t(bVar)).e(h.BUCKET_BITMAP, ByteBuffer.class, Bitmap.class, hVar2).e(h.BUCKET_BITMAP, InputStream.class, Bitmap.class, b0Var);
        if (m.c()) {
            hVar4.e(h.BUCKET_BITMAP, ParcelFileDescriptor.class, Bitmap.class, new y(pVar));
        }
        hVar4.e(h.BUCKET_BITMAP, ParcelFileDescriptor.class, Bitmap.class, kVarH).e(h.BUCKET_BITMAP, AssetFileDescriptor.class, Bitmap.class, f0.c(dVar)).d(Bitmap.class, Bitmap.class, v.a.a()).e(h.BUCKET_BITMAP, Bitmap.class, Bitmap.class, new d0()).b(Bitmap.class, cVar2).e(h.BUCKET_BITMAP_DRAWABLE, ByteBuffer.class, BitmapDrawable.class, new com.bumptech.glide.load.resource.bitmap.a(resources, hVar2)).e(h.BUCKET_BITMAP_DRAWABLE, InputStream.class, BitmapDrawable.class, new com.bumptech.glide.load.resource.bitmap.a(resources, b0Var)).e(h.BUCKET_BITMAP_DRAWABLE, ParcelFileDescriptor.class, BitmapDrawable.class, new com.bumptech.glide.load.resource.bitmap.a(resources, kVarH)).b(BitmapDrawable.class, new com.bumptech.glide.load.resource.bitmap.b(dVar, cVar2)).e(h.BUCKET_GIF, InputStream.class, com.bumptech.glide.load.resource.gif.c.class, new com.bumptech.glide.load.resource.gif.j(listG, aVar2, bVar)).e(h.BUCKET_GIF, ByteBuffer.class, com.bumptech.glide.load.resource.gif.c.class, aVar2).b(com.bumptech.glide.load.resource.gif.c.class, new com.bumptech.glide.load.resource.gif.d()).d(com.bumptech.glide.gifdecoder.a.class, com.bumptech.glide.gifdecoder.a.class, v.a.a()).e(h.BUCKET_BITMAP, com.bumptech.glide.gifdecoder.a.class, Bitmap.class, new com.bumptech.glide.load.resource.gif.h(dVar)).c(Uri.class, Drawable.class, dVar3).c(Uri.class, Bitmap.class, new a0(dVar3, dVar)).p(new v0.a.C0501a()).d(File.class, ByteBuffer.class, new com.bumptech.glide.load.model.d.b()).d(File.class, InputStream.class, new com.bumptech.glide.load.model.f.e()).c(File.class, File.class, new w0.a()).d(File.class, ParcelFileDescriptor.class, new com.bumptech.glide.load.model.f.b()).d(File.class, File.class, v.a.a()).p(new com.bumptech.glide.load.data.k.a(bVar));
        if (m.c()) {
            hVar3 = hVar4;
            hVar3.p(new m.a());
        } else {
            hVar3 = hVar4;
        }
        Class cls = Integer.TYPE;
        hVar3.d(cls, InputStream.class, cVar).d(cls, ParcelFileDescriptor.class, bVar2).d(Integer.class, InputStream.class, cVar).d(Integer.class, ParcelFileDescriptor.class, bVar2).d(Integer.class, Uri.class, dVar4).d(cls, AssetFileDescriptor.class, aVar3).d(Integer.class, AssetFileDescriptor.class, aVar3).d(cls, Uri.class, dVar4).d(String.class, InputStream.class, new com.bumptech.glide.load.model.e.c()).d(Uri.class, InputStream.class, new com.bumptech.glide.load.model.e.c()).d(String.class, InputStream.class, new u.c()).d(String.class, ParcelFileDescriptor.class, new u.b()).d(String.class, AssetFileDescriptor.class, new u.a()).d(Uri.class, InputStream.class, new u0.b.a()).d(Uri.class, InputStream.class, new com.bumptech.glide.load.model.a.c(context.getAssets())).d(Uri.class, ParcelFileDescriptor.class, new com.bumptech.glide.load.model.a.b(context.getAssets())).d(Uri.class, InputStream.class, new u0.c.a(context)).d(Uri.class, InputStream.class, new u0.d.a(context));
        if (i11 >= 29) {
            hVar3.d(Uri.class, InputStream.class, new u0.e.c(context));
            hVar3.d(Uri.class, ParcelFileDescriptor.class, new u0.e.b(context));
        }
        hVar3.d(Uri.class, InputStream.class, new com.bumptech.glide.load.model.w.d(contentResolver)).d(Uri.class, ParcelFileDescriptor.class, new com.bumptech.glide.load.model.w.b(contentResolver)).d(Uri.class, AssetFileDescriptor.class, new com.bumptech.glide.load.model.w.a(contentResolver)).d(Uri.class, InputStream.class, new x.a()).d(URL.class, InputStream.class, new u0.h.a()).d(Uri.class, File.class, new com.bumptech.glide.load.model.k.a(context)).d(com.bumptech.glide.load.model.g.class, InputStream.class, new u0.a.C0499a()).d(byte[].class, ByteBuffer.class, new com.bumptech.glide.load.model.b.a()).d(byte[].class, InputStream.class, new com.bumptech.glide.load.model.b.d()).d(Uri.class, Uri.class, v.a.a()).d(Drawable.class, Drawable.class, v.a.a()).c(Drawable.class, Drawable.class, new com.bumptech.glide.load.resource.drawable.e()).q(Bitmap.class, BitmapDrawable.class, new com.bumptech.glide.load.resource.transcode.b(resources)).q(Bitmap.class, byte[].class, aVar4).q(Drawable.class, byte[].class, new com.bumptech.glide.load.resource.transcode.c(dVar, aVar4, dVar5)).q(com.bumptech.glide.load.resource.gif.c.class, byte[].class, dVar5);
        com.bumptech.glide.load.k<ByteBuffer, Bitmap> kVarD = f0.d(dVar);
        hVar3.c(ByteBuffer.class, Bitmap.class, kVarD);
        hVar3.c(ByteBuffer.class, BitmapDrawable.class, new com.bumptech.glide.load.resource.bitmap.a(resources, kVarD));
        this.glideContext = new d(context, bVar, hVar3, new com.bumptech.glide.request.target.c(), aVar, map, list, kVar, z6, i10);
    }

    @NonNull
    public com.bumptech.glide.load.engine.bitmap_recycle.b e() {
        return this.arrayPool;
    }

    @NonNull
    public com.bumptech.glide.load.engine.bitmap_recycle.d f() {
        return this.bitmapPool;
    }

    com.bumptech.glide.manager.d g() {
        return this.connectivityMonitorFactory;
    }

    @NonNull
    d i() {
        return this.glideContext;
    }

    @NonNull
    public h j() {
        return this.registry;
    }

    @NonNull
    public l k() {
        return this.requestManagerRetriever;
    }

    @Override // android.content.ComponentCallbacks
    public void onConfigurationChanged(Configuration configuration) {
    }

    @GuardedBy
    private static void a(@NonNull Context context, @Nullable GeneratedAppGlideModule generatedAppGlideModule) {
        if (isInitializing) {
            throw new IllegalStateException("You cannot call Glide.get() in registerComponents(), use the provided Glide instance instead");
        }
        isInitializing = true;
        m(context, generatedAppGlideModule);
        isInitializing = false;
    }

    @NonNull
    public static b c(@NonNull Context context) {
        if (glide == null) {
            GeneratedAppGlideModule generatedAppGlideModuleD = d(context.getApplicationContext());
            synchronized (b.class) {
                try {
                    if (glide == null) {
                        a(context, generatedAppGlideModuleD);
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
        }
        return glide;
    }

    @Nullable
    private static GeneratedAppGlideModule d(Context context) {
        try {
            return (GeneratedAppGlideModule) Class.forName("com.bumptech.glide.GeneratedAppGlideModuleImpl").getDeclaredConstructor(Context.class).newInstance(context.getApplicationContext());
        } catch (ClassNotFoundException unused) {
            if (Log.isLoggable(TAG, 5)) {
                Log.w(TAG, "Failed to find GeneratedAppGlideModule. You should include an annotationProcessor compile dependency on com.github.bumptech.glide:compiler in your application and a @GlideModule annotated AppGlideModule implementation or LibraryGlideModules will be silently ignored");
            }
            return null;
        } catch (IllegalAccessException e) {
            q(e);
            return null;
        } catch (InstantiationException e2) {
            q(e2);
            return null;
        } catch (NoSuchMethodException e6) {
            q(e6);
            return null;
        } catch (InvocationTargetException e7) {
            q(e7);
            return null;
        }
    }

    @NonNull
    private static l l(@Nullable Context context) {
        com.bumptech.glide.util.j.e(context, "You cannot start a load on a not yet attached View or a Fragment where getActivity() returns null (which usually occurs when getActivity() is called before the Fragment is attached or after the Fragment is destroyed).");
        return c(context).k();
    }

    @GuardedBy
    private static void m(@NonNull Context context, @Nullable GeneratedAppGlideModule generatedAppGlideModule) {
        n(context, new c(), generatedAppGlideModule);
    }

    private static void q(Exception exc) {
        throw new IllegalStateException("GeneratedAppGlideModuleImpl is implemented incorrectly. If you've manually implemented this class, remove your implementation. The Annotation processor will generate a correct implementation.", exc);
    }

    @NonNull
    public Context h() {
        return this.glideContext.getBaseContext();
    }

    void o(j jVar) {
        synchronized (this.managers) {
            try {
                if (this.managers.contains(jVar)) {
                    throw new IllegalStateException("Cannot register already registered manager");
                }
                this.managers.add(jVar);
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    boolean p(@NonNull com.bumptech.glide.request.target.e<?> eVar) {
        synchronized (this.managers) {
            try {
                Iterator<j> it = this.managers.iterator();
                while (it.hasNext()) {
                    if (it.next().w(eVar)) {
                        return true;
                    }
                }
                return false;
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    void s(j jVar) {
        synchronized (this.managers) {
            try {
                if (!this.managers.contains(jVar)) {
                    throw new IllegalStateException("Cannot unregister not yet registered manager");
                }
                this.managers.remove(jVar);
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    @GuardedBy
    private static void n(@NonNull Context context, @NonNull c cVar, @Nullable GeneratedAppGlideModule generatedAppGlideModule) {
        l.b bVarE;
        Context applicationContext = context.getApplicationContext();
        List<x0.b> listEmptyList = Collections.emptyList();
        if (generatedAppGlideModule == null || generatedAppGlideModule.c()) {
            listEmptyList = new x0.d(applicationContext).a();
        }
        if (generatedAppGlideModule != null && !generatedAppGlideModule.d().isEmpty()) {
            Set<Class<?>> setD = generatedAppGlideModule.d();
            Iterator<x0.b> it = listEmptyList.iterator();
            while (it.hasNext()) {
                x0.b next = it.next();
                if (setD.contains(next.getClass())) {
                    if (Log.isLoggable(TAG, 3)) {
                        Log.d(TAG, "AppGlideModule excludes manifest GlideModule: " + next);
                    }
                    it.remove();
                }
            }
        }
        if (Log.isLoggable(TAG, 3)) {
            Iterator<x0.b> it2 = listEmptyList.iterator();
            while (it2.hasNext()) {
                Log.d(TAG, "Discovered GlideModule from manifest: " + it2.next().getClass());
            }
        }
        if (generatedAppGlideModule != null) {
            bVarE = generatedAppGlideModule.e();
        } else {
            bVarE = null;
        }
        cVar.b(bVarE);
        Iterator<x0.b> it3 = listEmptyList.iterator();
        while (it3.hasNext()) {
            it3.next().a(applicationContext, cVar);
        }
        if (generatedAppGlideModule != null) {
            generatedAppGlideModule.b(applicationContext, cVar);
        }
        b bVarA = cVar.a(applicationContext);
        for (x0.b bVar : listEmptyList) {
            try {
                bVar.b(applicationContext, bVarA, bVarA.registry);
            } catch (AbstractMethodError e) {
                throw new IllegalStateException("Attempting to register a Glide v3 module. If you see this, you or one of your dependencies may be including Glide v3 even though you're using Glide v4. You'll need to find and remove (or update) the offending dependency. The v3 module name is: " + bVar.getClass().getName(), e);
            }
        }
        if (generatedAppGlideModule != null) {
            generatedAppGlideModule.a(applicationContext, bVarA, bVarA.registry);
        }
        applicationContext.registerComponentCallbacks(bVarA);
        glide = bVarA;
    }

    @NonNull
    public static j t(@NonNull Context context) {
        return l(context).e(context);
    }

    @NonNull
    public static j u(@NonNull Fragment fragment) {
        return l(fragment.getContext()).f(fragment);
    }

    public void b() {
        com.bumptech.glide.util.k.a();
        this.memoryCache.b();
        this.bitmapPool.b();
        this.arrayPool.b();
    }

    @Override // android.content.ComponentCallbacks
    public void onLowMemory() {
        b();
    }

    @Override // android.content.ComponentCallbacks2
    public void onTrimMemory(int i10) {
        r(i10);
    }

    public void r(int i10) {
        com.bumptech.glide.util.k.a();
        Iterator<j> it = this.managers.iterator();
        while (it.hasNext()) {
            it.next().onTrimMemory(i10);
        }
        this.memoryCache.a(i10);
        this.bitmapPool.a(i10);
        this.arrayPool.a(i10);
    }
}
