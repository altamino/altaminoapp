package com.google.android.gms.internal.measurement;

import com.google.android.gms.internal.measurement.zzez;
import com.google.android.gms.internal.measurement.zzez.zza;
import java.io.IOException;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;

/* loaded from: classes2.dex */
public abstract class zzez<MessageType extends zzez<MessageType, BuilderType>, BuilderType extends zza<MessageType, BuilderType>> extends zzdg<MessageType, BuilderType> {
    private static Map<Object, zzez<?, ?>> zzagp = new ConcurrentHashMap();
    protected zzhr zzagn = zzhr.zzor();
    private int zzago = -1;

    public static class zzd<ContainingType extends zzgh, Type> extends zzek<ContainingType, Type> {
    }

    public enum zze {
        public static final int zzagu = 1;
        public static final int zzagv = 2;
        public static final int zzagw = 3;
        public static final int zzagx = 4;
        public static final int zzagy = 5;
        public static final int zzagz = 6;
        public static final int zzaha = 7;
        private static final /* synthetic */ int[] zzahb = {zzagu, zzagv, zzagw, zzagx, zzagy, zzagz, zzaha};
        public static final int zzahc = 1;
        public static final int zzahd = 2;
        private static final /* synthetic */ int[] zzahe = {zzahc, zzahd};
        public static final int zzahf = 1;
        public static final int zzahg = 2;
        private static final /* synthetic */ int[] zzahh = {zzahf, zzahg};

        public static int[] zzmt() {
            return (int[]) zzahb.clone();
        }
    }

    protected abstract Object zza(int i, Object obj, Object obj2);

    public static abstract class zzc<MessageType extends zzc<MessageType, BuilderType>, BuilderType> extends zzez<MessageType, BuilderType> implements zzgj {
        protected zzeq<Object> zzagt = zzeq.zzlx();

        final zzeq<Object> zzms() {
            if (this.zzagt.isImmutable()) {
                this.zzagt = (zzeq) this.zzagt.clone();
            }
            return this.zzagt;
        }
    }

    public static class zzb<T extends zzez<T, ?>> extends zzdi<T> {
        private final T zzagq;

        public zzb(T t) {
            this.zzagq = t;
        }

        @Override // com.google.android.gms.internal.measurement.zzgs
        public final /* synthetic */ Object zza(zzeb zzebVar, zzem zzemVar) throws zzfh {
            return zzez.zza(this.zzagq, zzebVar, zzemVar);
        }
    }

    public String toString() {
        return zzgk.zza(this, super.toString());
    }

    public int hashCode() {
        int i = this.zzabm;
        if (i != 0) {
            return i;
        }
        this.zzabm = zzgu.zznz().zzv(this).hashCode(this);
        return this.zzabm;
    }

    public static abstract class zza<MessageType extends zzez<MessageType, BuilderType>, BuilderType extends zza<MessageType, BuilderType>> extends zzdh<MessageType, BuilderType> {
        private final MessageType zzagq;
        protected MessageType zzagr;
        private boolean zzags = false;

        protected zza(MessageType messagetype) {
            this.zzagq = messagetype;
            this.zzagr = (MessageType) messagetype.zza(zze.zzagx, null, null);
        }

        protected final void zzmn() {
            if (this.zzags) {
                MessageType messagetype = (MessageType) this.zzagr.zza(zze.zzagx, null, null);
                zza(messagetype, this.zzagr);
                this.zzagr = messagetype;
                this.zzags = false;
            }
        }

        @Override // com.google.android.gms.internal.measurement.zzgj
        public final boolean isInitialized() {
            return zzez.zza(this.zzagr, false);
        }

        @Override // com.google.android.gms.internal.measurement.zzgi
        /* renamed from: zzmo, reason: merged with bridge method [inline-methods] */
        public MessageType zzmq() {
            if (this.zzags) {
                return this.zzagr;
            }
            this.zzagr.zzjz();
            this.zzags = true;
            return this.zzagr;
        }

        @Override // com.google.android.gms.internal.measurement.zzgi
        /* renamed from: zzmp, reason: merged with bridge method [inline-methods] */
        public final MessageType zzmr() {
            MessageType messagetype = (MessageType) zzmq();
            if (messagetype.isInitialized()) {
                return messagetype;
            }
            throw new zzhp(messagetype);
        }

        @Override // com.google.android.gms.internal.measurement.zzdh
        public final BuilderType zza(MessageType messagetype) {
            zzmn();
            zza(this.zzagr, messagetype);
            return this;
        }

        private static void zza(MessageType messagetype, MessageType messagetype2) {
            zzgu.zznz().zzv(messagetype).zzc(messagetype, messagetype2);
        }

        @Override // com.google.android.gms.internal.measurement.zzdh
        /* renamed from: zzjx */
        public final /* synthetic */ zzdh clone() {
            return (zza) clone();
        }

        @Override // com.google.android.gms.internal.measurement.zzgj
        public final /* synthetic */ zzgh zzmm() {
            return this.zzagq;
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override // com.google.android.gms.internal.measurement.zzdh
        public /* synthetic */ Object clone() throws CloneNotSupportedException {
            zza zzaVar = (zza) this.zzagq.zza(zze.zzagy, null, null);
            zzaVar.zza((zza) zzmq());
            return zzaVar;
        }
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (((zzez) zza(zze.zzagz, (Object) null, (Object) null)).getClass().isInstance(obj)) {
            return zzgu.zznz().zzv(this).equals(this, (zzez) obj);
        }
        return false;
    }

    protected final void zzjz() {
        zzgu.zznz().zzv(this).zzi(this);
    }

    protected final <MessageType extends zzez<MessageType, BuilderType>, BuilderType extends zza<MessageType, BuilderType>> BuilderType zzmg() {
        return (BuilderType) zza(zze.zzagy, (Object) null, (Object) null);
    }

    @Override // com.google.android.gms.internal.measurement.zzgj
    public final boolean isInitialized() {
        return zza(this, Boolean.TRUE.booleanValue());
    }

    public final BuilderType zzmh() {
        BuilderType buildertype = (BuilderType) zza(zze.zzagy, (Object) null, (Object) null);
        buildertype.zza(this);
        return buildertype;
    }

    @Override // com.google.android.gms.internal.measurement.zzdg
    final int zzjw() {
        return this.zzago;
    }

    @Override // com.google.android.gms.internal.measurement.zzdg
    final void zzn(int i) {
        this.zzago = i;
    }

    @Override // com.google.android.gms.internal.measurement.zzgh
    public final void zzb(zzeg zzegVar) throws IOException {
        zzgu.zznz().zzf(getClass()).zza(this, zzei.zza(zzegVar));
    }

    @Override // com.google.android.gms.internal.measurement.zzgh
    public final int zzly() {
        if (this.zzago == -1) {
            this.zzago = zzgu.zznz().zzv(this).zzs(this);
        }
        return this.zzago;
    }

    static <T extends zzez<?, ?>> T zzd(Class<T> cls) throws ClassNotFoundException {
        zzez<?, ?> zzezVar = zzagp.get(cls);
        if (zzezVar == null) {
            try {
                Class.forName(cls.getName(), true, cls.getClassLoader());
                zzezVar = zzagp.get(cls);
            } catch (ClassNotFoundException e) {
                throw new IllegalStateException("Class initialization cannot fail.", e);
            }
        }
        if (zzezVar == null) {
            zzezVar = (T) ((zzez) zzhw.zzh(cls)).zza(zze.zzagz, (Object) null, (Object) null);
            if (zzezVar == null) {
                throw new IllegalStateException();
            }
            zzagp.put(cls, zzezVar);
        }
        return (T) zzezVar;
    }

    protected static <T extends zzez<?, ?>> void zza(Class<T> cls, T t) {
        zzagp.put(cls, t);
    }

    protected static Object zza(zzgh zzghVar, String str, Object[] objArr) {
        return new zzgw(zzghVar, str, objArr);
    }

    static Object zza(Method method, Object obj, Object... objArr) {
        try {
            return method.invoke(obj, objArr);
        } catch (IllegalAccessException e) {
            throw new RuntimeException("Couldn't use Java reflection to implement protocol message reflection.", e);
        } catch (InvocationTargetException e2) {
            Throwable cause = e2.getCause();
            if (cause instanceof RuntimeException) {
                throw ((RuntimeException) cause);
            }
            if (cause instanceof Error) {
                throw ((Error) cause);
            }
            throw new RuntimeException("Unexpected exception thrown by generated accessor method.", cause);
        }
    }

    protected static final <T extends zzez<T, ?>> boolean zza(T t, boolean z) {
        byte bByteValue = ((Byte) t.zza(zze.zzagu, null, null)).byteValue();
        if (bByteValue == 1) {
            return true;
        }
        if (bByteValue == 0) {
            return false;
        }
        boolean zZzu = zzgu.zznz().zzv(t).zzu(t);
        if (z) {
            t.zza(zze.zzagv, zZzu ? t : null, null);
        }
        return zZzu;
    }

    protected static zzff zzmi() {
        return zzfv.zznk();
    }

    protected static zzff zza(zzff zzffVar) {
        int size = zzffVar.size();
        return zzffVar.zzq(size == 0 ? 10 : size << 1);
    }

    protected static <E> zzfg<E> zzmj() {
        return zzgv.zzoa();
    }

    protected static <E> zzfg<E> zza(zzfg<E> zzfgVar) {
        int size = zzfgVar.size();
        return zzfgVar.zzq(size == 0 ? 10 : size << 1);
    }

    static <T extends zzez<T, ?>> T zza(T t, zzeb zzebVar, zzem zzemVar) throws zzfh {
        T t2 = (T) t.zza(zze.zzagx, null, null);
        try {
            zzgu.zznz().zzv(t2).zza(t2, zzee.zza(zzebVar), zzemVar);
            t2.zzjz();
            return t2;
        } catch (IOException e) {
            if (e.getCause() instanceof zzfh) {
                throw ((zzfh) e.getCause());
            }
            throw new zzfh(e.getMessage()).zzg(t2);
        } catch (RuntimeException e2) {
            if (e2.getCause() instanceof zzfh) {
                throw ((zzfh) e2.getCause());
            }
            throw e2;
        }
    }

    private static <T extends zzez<T, ?>> T zza(T t, byte[] bArr, int i, int i2, zzem zzemVar) throws zzfh {
        T t2 = (T) t.zza(zze.zzagx, null, null);
        try {
            zzgu.zznz().zzv(t2).zza(t2, bArr, 0, i2, new zzdm(zzemVar));
            t2.zzjz();
            if (t2.zzabm == 0) {
                return t2;
            }
            throw new RuntimeException();
        } catch (IOException e) {
            if (e.getCause() instanceof zzfh) {
                throw ((zzfh) e.getCause());
            }
            throw new zzfh(e.getMessage()).zzg(t2);
        } catch (IndexOutOfBoundsException unused) {
            throw zzfh.zzmu().zzg(t2);
        }
    }

    protected static <T extends zzez<T, ?>> T zza(T t, byte[] bArr, zzem zzemVar) throws zzfh {
        T t2 = (T) zza(t, bArr, 0, bArr.length, zzemVar);
        if (t2 == null || t2.isInitialized()) {
            return t2;
        }
        throw new zzfh(new zzhp(t2).getMessage()).zzg(t2);
    }

    @Override // com.google.android.gms.internal.measurement.zzgh
    public final /* synthetic */ zzgi zzmk() {
        zza zzaVar = (zza) zza(zze.zzagy, (Object) null, (Object) null);
        zzaVar.zza((zza) this);
        return zzaVar;
    }

    @Override // com.google.android.gms.internal.measurement.zzgh
    public final /* synthetic */ zzgi zzml() {
        return (zza) zza(zze.zzagy, (Object) null, (Object) null);
    }

    @Override // com.google.android.gms.internal.measurement.zzgj
    public final /* synthetic */ zzgh zzmm() {
        return (zzez) zza(zze.zzagz, (Object) null, (Object) null);
    }
}
