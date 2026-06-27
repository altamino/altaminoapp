package com.google.android.gms.internal.ads;

import com.google.android.gms.ads.doubleclick.AppEventListener;
import com.google.android.gms.ads.reward.AdMetadataListener;
import com.google.android.gms.common.util.Clock;
import java.util.HashSet;
import java.util.Set;
import java.util.concurrent.Executor;

/* loaded from: classes2.dex */
public class zzbtv {
    private final Set<zzbuz<zzxr>> zzfko;
    private final Set<zzbuz<zzbrl>> zzfkp;
    private final Set<zzbuz<zzbrw>> zzfkq;
    private final Set<zzbuz<zzbsr>> zzfkr;
    private final Set<zzbuz<zzbro>> zzfks;
    private final Set<zzbuz<zzbrs>> zzfkt;
    private final Set<zzbuz<AdMetadataListener>> zzfku;
    private final Set<zzbuz<AppEventListener>> zzfkv;
    private zzbrm zzfkw;
    private zzcmu zzfkx;

    private zzbtv(zza zzaVar) {
        this.zzfko = zzaVar.zzfko;
        this.zzfkq = zzaVar.zzfkq;
        this.zzfkp = zzaVar.zzfkp;
        this.zzfkr = zzaVar.zzfkr;
        this.zzfks = zzaVar.zzfks;
        this.zzfkt = zzaVar.zzfkt;
        this.zzfku = zzaVar.zzfku;
        this.zzfkv = zzaVar.zzfkv;
    }

    public static class zza {
        private Set<zzbuz<zzxr>> zzfko = new HashSet();
        private Set<zzbuz<zzbrl>> zzfkp = new HashSet();
        private Set<zzbuz<zzbrw>> zzfkq = new HashSet();
        private Set<zzbuz<zzbsr>> zzfkr = new HashSet();
        private Set<zzbuz<zzbro>> zzfks = new HashSet();
        private Set<zzbuz<AdMetadataListener>> zzfku = new HashSet();
        private Set<zzbuz<AppEventListener>> zzfkv = new HashSet();
        private Set<zzbuz<zzbrs>> zzfkt = new HashSet();

        public final zza zza(zzbrl zzbrlVar, Executor executor) {
            this.zzfkp.add(new zzbuz<>(zzbrlVar, executor));
            return this;
        }

        public final zza zza(zzbsr zzbsrVar, Executor executor) {
            this.zzfkr.add(new zzbuz<>(zzbsrVar, executor));
            return this;
        }

        public final zza zza(zzbro zzbroVar, Executor executor) {
            this.zzfks.add(new zzbuz<>(zzbroVar, executor));
            return this;
        }

        public final zza zza(zzbrs zzbrsVar, Executor executor) {
            this.zzfkt.add(new zzbuz<>(zzbrsVar, executor));
            return this;
        }

        public final zza zza(AdMetadataListener adMetadataListener, Executor executor) {
            this.zzfku.add(new zzbuz<>(adMetadataListener, executor));
            return this;
        }

        public final zza zza(AppEventListener appEventListener, Executor executor) {
            this.zzfkv.add(new zzbuz<>(appEventListener, executor));
            return this;
        }

        public final zza zza(zzzs zzzsVar, Executor executor) {
            if (this.zzfkv != null) {
                zzcpy zzcpyVar = new zzcpy();
                zzcpyVar.zzb(zzzsVar);
                this.zzfkv.add(new zzbuz<>(zzcpyVar, executor));
            }
            return this;
        }

        public final zza zza(zzxr zzxrVar, Executor executor) {
            this.zzfko.add(new zzbuz<>(zzxrVar, executor));
            return this;
        }

        public final zza zza(zzbrw zzbrwVar, Executor executor) {
            this.zzfkq.add(new zzbuz<>(zzbrwVar, executor));
            return this;
        }

        public final zzbtv zzagt() {
            return new zzbtv(this);
        }
    }

    public final Set<zzbuz<zzbrl>> zzagl() {
        return this.zzfkp;
    }

    public final Set<zzbuz<zzbsr>> zzagm() {
        return this.zzfkr;
    }

    public final Set<zzbuz<zzbro>> zzagn() {
        return this.zzfks;
    }

    public final Set<zzbuz<zzbrs>> zzago() {
        return this.zzfkt;
    }

    public final Set<zzbuz<AdMetadataListener>> zzagp() {
        return this.zzfku;
    }

    public final Set<zzbuz<AppEventListener>> zzagq() {
        return this.zzfkv;
    }

    public final Set<zzbuz<zzxr>> zzagr() {
        return this.zzfko;
    }

    public final Set<zzbuz<zzbrw>> zzags() {
        return this.zzfkq;
    }

    public final zzbrm zzc(Set<zzbuz<zzbro>> set) {
        if (this.zzfkw == null) {
            this.zzfkw = new zzbrm(set);
        }
        return this.zzfkw;
    }

    public final zzcmu zza(Clock clock) {
        if (this.zzfkx == null) {
            this.zzfkx = new zzcmu(clock);
        }
        return this.zzfkx;
    }
}
