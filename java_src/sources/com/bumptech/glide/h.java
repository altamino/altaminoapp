package com.bumptech.glide;

import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.core.util.Pools;
import com.bumptech.glide.load.ImageHeaderParser;
import com.bumptech.glide.load.engine.t;
import com.bumptech.glide.load.engine.v;
import com.bumptech.glide.load.l;
import com.bumptech.glide.load.model.n;
import com.bumptech.glide.load.model.o;
import com.bumptech.glide.load.model.p;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;

/* JADX INFO: loaded from: classes9.dex */
public class h {
    private static final String BUCKET_APPEND_ALL = "legacy_append";
    public static final String BUCKET_BITMAP = "Bitmap";
    public static final String BUCKET_BITMAP_DRAWABLE = "BitmapDrawable";
    public static final String BUCKET_GIF = "Gif";
    private static final String BUCKET_PREPEND_ALL = "legacy_prepend_all";
    private final com.bumptech.glide.load.data.f dataRewinderRegistry;
    private final com.bumptech.glide.provider.e decoderRegistry;
    private final com.bumptech.glide.provider.a encoderRegistry;
    private final com.bumptech.glide.provider.b imageHeaderParserRegistry;
    private final p modelLoaderRegistry;
    private final com.bumptech.glide.provider.f resourceEncoderRegistry;
    private final Pools.Pool<List<Throwable>> throwableListPool;
    private final com.bumptech.glide.load.resource.transcode.f transcoderRegistry;
    private final com.bumptech.glide.provider.d modelToResourceClassCache = new com.bumptech.glide.provider.d();
    private final com.bumptech.glide.provider.c loadPathCache = new com.bumptech.glide.provider.c();

    public static final class b extends a {
        public b() {
            super("Failed to find image header parser.");
        }
    }

    public static class c extends a {
        public c(@NonNull Object obj) {
            super("Failed to find any ModelLoaders registered for model class: " + obj.getClass());
        }

        public <M> c(@NonNull M m, @NonNull List<n<M, ?>> list) {
            super("Found ModelLoaders for model class: " + list + ", but none that handle this specific model instance: " + m);
        }

        public c(@NonNull Class<?> cls, @NonNull Class<?> cls2) {
            super("Failed to find any ModelLoaders for model: " + cls + " and data: " + cls2);
        }
    }

    public static class d extends a {
        public d(@NonNull Class<?> cls) {
            super("Failed to find result encoder for resource class: " + cls + ", you may need to consider registering a new Encoder for the requested type or DiskCacheStrategy.DATA/DiskCacheStrategy.NONE if caching your transformed resource is unnecessary.");
        }
    }

    public static class e extends a {
        public e(@NonNull Class<?> cls) {
            super("Failed to find source encoder for data class: " + cls);
        }
    }

    public static class a extends RuntimeException {
        public a(@NonNull String str) {
            super(str);
        }
    }

    @NonNull
    private <Data, TResource, Transcode> List<com.bumptech.glide.load.engine.i<Data, TResource, Transcode>> f(@NonNull Class<Data> cls, @NonNull Class<TResource> cls2, @NonNull Class<Transcode> cls3) {
        ArrayList arrayList = new ArrayList();
        for (Class cls4 : this.decoderRegistry.d(cls, cls2)) {
            for (Class cls5 : this.transcoderRegistry.b(cls4, cls3)) {
                arrayList.add(new com.bumptech.glide.load.engine.i(cls, cls4, cls5, this.decoderRegistry.b(cls, cls4), this.transcoderRegistry.a(cls4, cls5), this.throwableListPool));
            }
        }
        return arrayList;
    }

    @NonNull
    public <Data> h a(@NonNull Class<Data> cls, @NonNull com.bumptech.glide.load.d<Data> dVar) {
        this.encoderRegistry.a(cls, dVar);
        return this;
    }

    @NonNull
    public <TResource> h b(@NonNull Class<TResource> cls, @NonNull l<TResource> lVar) {
        this.resourceEncoderRegistry.a(cls, lVar);
        return this;
    }

    @NonNull
    public <Data, TResource> h c(@NonNull Class<Data> cls, @NonNull Class<TResource> cls2, @NonNull com.bumptech.glide.load.k<Data, TResource> kVar) {
        e(BUCKET_APPEND_ALL, cls, cls2, kVar);
        return this;
    }

    @NonNull
    public <Model, Data> h d(@NonNull Class<Model> cls, @NonNull Class<Data> cls2, @NonNull o<Model, Data> oVar) {
        this.modelLoaderRegistry.a(cls, cls2, oVar);
        return this;
    }

    @NonNull
    public <Data, TResource> h e(@NonNull String str, @NonNull Class<Data> cls, @NonNull Class<TResource> cls2, @NonNull com.bumptech.glide.load.k<Data, TResource> kVar) {
        this.decoderRegistry.a(str, kVar, cls, cls2);
        return this;
    }

    @NonNull
    public List<ImageHeaderParser> g() {
        List<ImageHeaderParser> listB = this.imageHeaderParserRegistry.b();
        if (listB.isEmpty()) {
            throw new b();
        }
        return listB;
    }

    @Nullable
    public <Data, TResource, Transcode> t<Data, TResource, Transcode> h(@NonNull Class<Data> cls, @NonNull Class<TResource> cls2, @NonNull Class<Transcode> cls3) {
        t<Data, TResource, Transcode> tVarA = this.loadPathCache.a(cls, cls2, cls3);
        if (this.loadPathCache.c(tVarA)) {
            return null;
        }
        if (tVarA == null) {
            List<com.bumptech.glide.load.engine.i<Data, TResource, Transcode>> listF = f(cls, cls2, cls3);
            tVarA = listF.isEmpty() ? null : new t<>(cls, cls2, cls3, listF, this.throwableListPool);
            this.loadPathCache.d(cls, cls2, cls3, tVarA);
        }
        return tVarA;
    }

    @NonNull
    public <Model> List<n<Model, ?>> i(@NonNull Model model) {
        return this.modelLoaderRegistry.d(model);
    }

    @NonNull
    public <Model, TResource, Transcode> List<Class<?>> j(@NonNull Class<Model> cls, @NonNull Class<TResource> cls2, @NonNull Class<Transcode> cls3) {
        List<Class<?>> listA = this.modelToResourceClassCache.a(cls, cls2, cls3);
        if (listA == null) {
            listA = new ArrayList<>();
            Iterator<Class<?>> it = this.modelLoaderRegistry.c(cls).iterator();
            while (it.hasNext()) {
                for (Class<?> cls4 : this.decoderRegistry.d(it.next(), cls2)) {
                    if (!this.transcoderRegistry.b(cls4, cls3).isEmpty() && !listA.contains(cls4)) {
                        listA.add(cls4);
                    }
                }
            }
            this.modelToResourceClassCache.b(cls, cls2, cls3, Collections.unmodifiableList(listA));
        }
        return listA;
    }

    @NonNull
    public <X> l<X> k(@NonNull v<X> vVar) throws d {
        l<X> lVarB = this.resourceEncoderRegistry.b(vVar.b());
        if (lVarB != null) {
            return lVarB;
        }
        throw new d(vVar.b());
    }

    @NonNull
    public <X> com.bumptech.glide.load.data.e<X> l(@NonNull X x6) {
        return this.dataRewinderRegistry.a(x6);
    }

    @NonNull
    public <X> com.bumptech.glide.load.d<X> m(@NonNull X x6) throws e {
        com.bumptech.glide.load.d<X> dVarB = this.encoderRegistry.b(x6.getClass());
        if (dVarB != null) {
            return dVarB;
        }
        throw new e(x6.getClass());
    }

    public boolean n(@NonNull v<?> vVar) {
        return this.resourceEncoderRegistry.b(vVar.b()) != null;
    }

    @NonNull
    public h o(@NonNull ImageHeaderParser imageHeaderParser) {
        this.imageHeaderParserRegistry.a(imageHeaderParser);
        return this;
    }

    @NonNull
    public h p(@NonNull com.bumptech.glide.load.data.e.a<?> aVar) {
        this.dataRewinderRegistry.b(aVar);
        return this;
    }

    @NonNull
    public <TResource, Transcode> h q(@NonNull Class<TResource> cls, @NonNull Class<Transcode> cls2, @NonNull com.bumptech.glide.load.resource.transcode.e<TResource, Transcode> eVar) {
        this.transcoderRegistry.c(cls, cls2, eVar);
        return this;
    }

    @NonNull
    public final h r(@NonNull List<String> list) {
        ArrayList arrayList = new ArrayList(list.size());
        arrayList.addAll(list);
        arrayList.add(0, BUCKET_PREPEND_ALL);
        arrayList.add(BUCKET_APPEND_ALL);
        this.decoderRegistry.e(arrayList);
        return this;
    }

    public h() {
        Pools.Pool<List<Throwable>> poolE = a1.a.e();
        this.throwableListPool = poolE;
        this.modelLoaderRegistry = new p(poolE);
        this.encoderRegistry = new com.bumptech.glide.provider.a();
        this.decoderRegistry = new com.bumptech.glide.provider.e();
        this.resourceEncoderRegistry = new com.bumptech.glide.provider.f();
        this.dataRewinderRegistry = new com.bumptech.glide.load.data.f();
        this.transcoderRegistry = new com.bumptech.glide.load.resource.transcode.f();
        this.imageHeaderParserRegistry = new com.bumptech.glide.provider.b();
        r(Arrays.asList(BUCKET_GIF, BUCKET_BITMAP, BUCKET_BITMAP_DRAWABLE));
    }
}
