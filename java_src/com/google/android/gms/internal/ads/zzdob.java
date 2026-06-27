package com.google.android.gms.internal.ads;

import com.google.android.gms.internal.ads.zzdob;
import com.google.android.gms.internal.ads.zzdob.zza;
import java.io.IOException;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;

/* loaded from: classes2.dex */
public abstract class zzdob<MessageType extends zzdob<MessageType, BuilderType>, BuilderType extends zza<MessageType, BuilderType>> extends zzdmi<MessageType, BuilderType> {
    private static Map<Object, zzdob<?, ?>> zzhhf = new ConcurrentHashMap();
    protected zzdqu zzhhd = zzdqu.zzazz();
    private int zzhhe = -1;

    public static class zzb<T extends zzdob<T, ?>> extends zzdmk<T> {
        private final T zzhhg;

        public zzb(T t) {
            this.zzhhg = t;
        }
    }

    public static abstract class zzc<MessageType extends zzc<MessageType, BuilderType>, BuilderType> extends zzdob<MessageType, BuilderType> implements zzdpm {
        protected zzdns<Object> zzhhj = zzdns.zzaxi();
    }

    public static class zzd<ContainingType extends zzdpk, Type> extends zzdnm<ContainingType, Type> {
    }

    public enum zze {
        public static final int zzhhk = 1;
        public static final int zzhhl = 2;
        public static final int zzhhm = 3;
        public static final int zzhhn = 4;
        public static final int zzhho = 5;
        public static final int zzhhp = 6;
        public static final int zzhhq = 7;
        private static final /* synthetic */ int[] zzhhr = {zzhhk, zzhhl, zzhhm, zzhhn, zzhho, zzhhp, zzhhq};
        public static final int zzhhs = 1;
        public static final int zzhht = 2;
        private static final /* synthetic */ int[] zzhhu = {zzhhs, zzhht};
        public static final int zzhhv = 1;
        public static final int zzhhw = 2;
        private static final /* synthetic */ int[] zzhhx = {zzhhv, zzhhw};

        public static int[] zzayb() {
            return (int[]) zzhhr.clone();
        }
    }

    protected abstract Object zza(int i, Object obj, Object obj2);

    public String toString() {
        return zzdpn.zza(this, super.toString());
    }

    public int hashCode() {
        int i = this.zzhcf;
        if (i != 0) {
            return i;
        }
        this.zzhcf = zzdpx.zzazg().zzan(this).hashCode(this);
        return this.zzhcf;
    }

    public static abstract class zza<MessageType extends zzdob<MessageType, BuilderType>, BuilderType extends zza<MessageType, BuilderType>> extends zzdmj<MessageType, BuilderType> {
        private final MessageType zzhhg;
        protected MessageType zzhhh;
        private boolean zzhhi = false;

        protected zza(MessageType messagetype) {
            this.zzhhg = messagetype;
            this.zzhhh = (MessageType) messagetype.zza(zze.zzhhn, null, null);
        }

        protected final void zzaxw() {
            if (this.zzhhi) {
                MessageType messagetype = (MessageType) this.zzhhh.zza(zze.zzhhn, null, null);
                zza(messagetype, this.zzhhh);
                this.zzhhh = messagetype;
                this.zzhhi = false;
            }
        }

        @Override // com.google.android.gms.internal.ads.zzdpm
        public final boolean isInitialized() {
            return zzdob.zza(this.zzhhh, false);
        }

        @Override // com.google.android.gms.internal.ads.zzdpl
        /* renamed from: zzaxx, reason: merged with bridge method [inline-methods] */
        public MessageType zzaxz() {
            if (this.zzhhi) {
                return this.zzhhh;
            }
            MessageType messagetype = this.zzhhh;
            zzdpx.zzazg().zzan(messagetype).zzaa(messagetype);
            this.zzhhi = true;
            return this.zzhhh;
        }

        @Override // com.google.android.gms.internal.ads.zzdpl
        /* renamed from: zzaxy, reason: merged with bridge method [inline-methods] */
        public final MessageType zzaya() {
            MessageType messagetype = (MessageType) zzaxz();
            boolean zBooleanValue = Boolean.TRUE.booleanValue();
            byte bByteValue = ((Byte) messagetype.zza(zze.zzhhk, null, null)).byteValue();
            boolean zZzam = true;
            if (bByteValue != 1) {
                if (bByteValue == 0) {
                    zZzam = false;
                } else {
                    zZzam = zzdpx.zzazg().zzan(messagetype).zzam(messagetype);
                    if (zBooleanValue) {
                        messagetype.zza(zze.zzhhl, zZzam ? messagetype : null, null);
                    }
                }
            }
            if (zZzam) {
                return messagetype;
            }
            throw new zzdqs(messagetype);
        }

        @Override // com.google.android.gms.internal.ads.zzdmj
        public final BuilderType zza(MessageType messagetype) {
            zzaxw();
            zza(this.zzhhh, messagetype);
            return this;
        }

        private static void zza(MessageType messagetype, MessageType messagetype2) {
            zzdpx.zzazg().zzan(messagetype).zzd(messagetype, messagetype2);
        }

        private final BuilderType zzb(byte[] bArr, int i, int i2, zzdno zzdnoVar) throws zzdok {
            zzaxw();
            try {
                zzdpx.zzazg().zzan(this.zzhhh).zza(this.zzhhh, bArr, 0, i2 + 0, new zzdmo(zzdnoVar));
                return this;
            } catch (zzdok e) {
                throw e;
            } catch (IOException e2) {
                throw new RuntimeException("Reading from byte array should not throw IOException.", e2);
            } catch (IndexOutOfBoundsException unused) {
                throw zzdok.zzayd();
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        @Override // com.google.android.gms.internal.ads.zzdmj
        /* renamed from: zzb, reason: merged with bridge method [inline-methods] */
        public final BuilderType zza(zzdnd zzdndVar, zzdno zzdnoVar) throws IOException {
            zzaxw();
            try {
                zzdpx.zzazg().zzan(this.zzhhh).zza(this.zzhhh, zzdng.zza(zzdndVar), zzdnoVar);
                return this;
            } catch (RuntimeException e) {
                if (e.getCause() instanceof IOException) {
                    throw ((IOException) e.getCause());
                }
                throw e;
            }
        }

        @Override // com.google.android.gms.internal.ads.zzdmj
        public final /* synthetic */ zzdmj zza(byte[] bArr, int i, int i2, zzdno zzdnoVar) throws zzdok {
            return zzb(bArr, 0, i2, zzdnoVar);
        }

        @Override // com.google.android.gms.internal.ads.zzdmj
        /* renamed from: zzavh */
        public final /* synthetic */ zzdmj clone() {
            return (zza) clone();
        }

        @Override // com.google.android.gms.internal.ads.zzdpm
        public final /* synthetic */ zzdpk zzaxv() {
            return this.zzhhg;
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override // com.google.android.gms.internal.ads.zzdmj
        public /* synthetic */ Object clone() throws CloneNotSupportedException {
            zza zzaVar = (zza) this.zzhhg.zza(zze.zzhho, null, null);
            zzaVar.zza((zza) zzaxz());
            return zzaVar;
        }
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (((zzdob) zza(zze.zzhhp, (Object) null, (Object) null)).getClass().isInstance(obj)) {
            return zzdpx.zzazg().zzan(this).equals(this, (zzdob) obj);
        }
        return false;
    }

    @Override // com.google.android.gms.internal.ads.zzdpm
    public final boolean isInitialized() {
        boolean zBooleanValue = Boolean.TRUE.booleanValue();
        byte bByteValue = ((Byte) zza(zze.zzhhk, (Object) null, (Object) null)).byteValue();
        if (bByteValue == 1) {
            return true;
        }
        if (bByteValue == 0) {
            return false;
        }
        boolean zZzam = zzdpx.zzazg().zzan(this).zzam(this);
        if (zBooleanValue) {
            zza(zze.zzhhl, zZzam ? this : null, (Object) null);
        }
        return zZzam;
    }

    @Override // com.google.android.gms.internal.ads.zzdmi
    final int zzavg() {
        return this.zzhhe;
    }

    @Override // com.google.android.gms.internal.ads.zzdmi
    final void zzfi(int i) {
        this.zzhhe = i;
    }

    @Override // com.google.android.gms.internal.ads.zzdpk
    public final void zzb(zzdni zzdniVar) throws IOException {
        zzdpx.zzazg().zzg(getClass()).zza(this, zzdnk.zza(zzdniVar));
    }

    @Override // com.google.android.gms.internal.ads.zzdpk
    public final int zzaxj() {
        if (this.zzhhe == -1) {
            this.zzhhe = zzdpx.zzazg().zzan(this).zzak(this);
        }
        return this.zzhhe;
    }

    static <T extends zzdob<?, ?>> T zze(Class<T> cls) throws ClassNotFoundException {
        zzdob<?, ?> zzdobVar = zzhhf.get(cls);
        if (zzdobVar == null) {
            try {
                Class.forName(cls.getName(), true, cls.getClassLoader());
                zzdobVar = zzhhf.get(cls);
            } catch (ClassNotFoundException e) {
                throw new IllegalStateException("Class initialization cannot fail.", e);
            }
        }
        if (zzdobVar == null) {
            zzdobVar = (T) ((zzdob) zzdqz.zzi(cls)).zza(zze.zzhhp, (Object) null, (Object) null);
            if (zzdobVar == null) {
                throw new IllegalStateException();
            }
            zzhhf.put(cls, zzdobVar);
        }
        return (T) zzdobVar;
    }

    protected static <T extends zzdob<?, ?>> void zza(Class<T> cls, T t) {
        zzhhf.put(cls, t);
    }

    protected static Object zza(zzdpk zzdpkVar, String str, Object[] objArr) {
        return new zzdpz(zzdpkVar, str, objArr);
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

    protected static final <T extends zzdob<T, ?>> boolean zza(T t, boolean z) {
        byte bByteValue = ((Byte) t.zza(zze.zzhhk, null, null)).byteValue();
        if (bByteValue == 1) {
            return true;
        }
        if (bByteValue == 0) {
            return false;
        }
        return zzdpx.zzazg().zzan(t).zzam(t);
    }

    protected static zzdoh zzaxr() {
        return zzdoc.zzayc();
    }

    protected static <E> zzdoj<E> zzaxs() {
        return zzdpy.zzazh();
    }

    private static <T extends zzdob<T, ?>> T zza(T t, zzdnd zzdndVar, zzdno zzdnoVar) throws zzdok {
        T t2 = (T) t.zza(zze.zzhhn, null, null);
        try {
            zzdpx.zzazg().zzan(t2).zza(t2, zzdng.zza(zzdndVar), zzdnoVar);
            zzdpx.zzazg().zzan(t2).zzaa(t2);
            return t2;
        } catch (IOException e) {
            if (e.getCause() instanceof zzdok) {
                throw ((zzdok) e.getCause());
            }
            throw new zzdok(e.getMessage()).zzo(t2);
        } catch (RuntimeException e2) {
            if (e2.getCause() instanceof zzdok) {
                throw ((zzdok) e2.getCause());
            }
            throw e2;
        }
    }

    private static <T extends zzdob<T, ?>> T zza(T t, byte[] bArr, int i, int i2, zzdno zzdnoVar) throws zzdok {
        T t2 = (T) t.zza(zze.zzhhn, null, null);
        try {
            zzdpx.zzazg().zzan(t2).zza(t2, bArr, 0, i2, new zzdmo(zzdnoVar));
            zzdpx.zzazg().zzan(t2).zzaa(t2);
            if (t2.zzhcf == 0) {
                return t2;
            }
            throw new RuntimeException();
        } catch (IOException e) {
            if (e.getCause() instanceof zzdok) {
                throw ((zzdok) e.getCause());
            }
            throw new zzdok(e.getMessage()).zzo(t2);
        } catch (IndexOutOfBoundsException unused) {
            throw zzdok.zzayd().zzo(t2);
        }
    }

    protected static <T extends zzdob<T, ?>> T zza(T t, zzdmr zzdmrVar) throws zzdok {
        boolean zZzam;
        T t2 = (T) zza(t, zzdmrVar, zzdno.zzaxd());
        boolean zZzam2 = false;
        if (t2 != null) {
            boolean zBooleanValue = Boolean.TRUE.booleanValue();
            byte bByteValue = ((Byte) t2.zza(zze.zzhhk, null, null)).byteValue();
            if (bByteValue == 1) {
                zZzam = true;
            } else if (bByteValue == 0) {
                zZzam = false;
            } else {
                zZzam = zzdpx.zzazg().zzan(t2).zzam(t2);
                if (zBooleanValue) {
                    t2.zza(zze.zzhhl, zZzam ? t2 : null, null);
                }
            }
            if (!zZzam) {
                throw new zzdqs(t2).zzazx().zzo(t2);
            }
        }
        if (t2 != null) {
            boolean zBooleanValue2 = Boolean.TRUE.booleanValue();
            byte bByteValue2 = ((Byte) t2.zza(zze.zzhhk, null, null)).byteValue();
            if (bByteValue2 == 1) {
                zZzam2 = true;
            } else if (bByteValue2 != 0) {
                zZzam2 = zzdpx.zzazg().zzan(t2).zzam(t2);
                if (zBooleanValue2) {
                    t2.zza(zze.zzhhl, zZzam2 ? t2 : null, null);
                }
            }
            if (!zZzam2) {
                throw new zzdqs(t2).zzazx().zzo(t2);
            }
        }
        return t2;
    }

    private static <T extends zzdob<T, ?>> T zza(T t, zzdmr zzdmrVar, zzdno zzdnoVar) throws zzdok {
        try {
            zzdnd zzdndVarZzavp = zzdmrVar.zzavp();
            T t2 = (T) zza(t, zzdndVarZzavp, zzdnoVar);
            try {
                zzdndVarZzavp.zzfp(0);
                return t2;
            } catch (zzdok e) {
                throw e.zzo(t2);
            }
        } catch (zzdok e2) {
            throw e2;
        }
    }

    protected static <T extends zzdob<T, ?>> T zza(T t, byte[] bArr) throws zzdok {
        boolean zZzam = false;
        T t2 = (T) zza(t, bArr, 0, bArr.length, zzdno.zzaxd());
        if (t2 != null) {
            boolean zBooleanValue = Boolean.TRUE.booleanValue();
            byte bByteValue = ((Byte) t2.zza(zze.zzhhk, null, null)).byteValue();
            if (bByteValue == 1) {
                zZzam = true;
            } else if (bByteValue != 0) {
                zZzam = zzdpx.zzazg().zzan(t2).zzam(t2);
                if (zBooleanValue) {
                    t2.zza(zze.zzhhl, zZzam ? t2 : null, null);
                }
            }
            if (!zZzam) {
                throw new zzdqs(t2).zzazx().zzo(t2);
            }
        }
        return t2;
    }

    protected static <T extends zzdob<T, ?>> T zza(T t, byte[] bArr, zzdno zzdnoVar) throws zzdok {
        boolean zZzam = false;
        T t2 = (T) zza(t, bArr, 0, bArr.length, zzdnoVar);
        if (t2 != null) {
            boolean zBooleanValue = Boolean.TRUE.booleanValue();
            byte bByteValue = ((Byte) t2.zza(zze.zzhhk, null, null)).byteValue();
            if (bByteValue == 1) {
                zZzam = true;
            } else if (bByteValue != 0) {
                zZzam = zzdpx.zzazg().zzan(t2).zzam(t2);
                if (zBooleanValue) {
                    t2.zza(zze.zzhhl, zZzam ? t2 : null, null);
                }
            }
            if (!zZzam) {
                throw new zzdqs(t2).zzazx().zzo(t2);
            }
        }
        return t2;
    }

    @Override // com.google.android.gms.internal.ads.zzdpk
    public final /* synthetic */ zzdpl zzaxt() {
        zza zzaVar = (zza) zza(zze.zzhho, (Object) null, (Object) null);
        zzaVar.zza((zza) this);
        return zzaVar;
    }

    @Override // com.google.android.gms.internal.ads.zzdpk
    public final /* synthetic */ zzdpl zzaxu() {
        return (zza) zza(zze.zzhho, (Object) null, (Object) null);
    }

    @Override // com.google.android.gms.internal.ads.zzdpm
    public final /* synthetic */ zzdpk zzaxv() {
        return (zzdob) zza(zze.zzhhp, (Object) null, (Object) null);
    }
}
