.class public final Lcom/google/android/gms/internal/ads/zzcmq;
.super Lcom/google/android/gms/internal/ads/zzcmn;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/ads/zzcmn<",
        "Lcom/google/android/gms/internal/ads/zzbvx;",
        ">;"
    }
.end annotation


# instance fields
.field private final zzeqb:Lcom/google/android/gms/internal/ads/zzbtv;

.field private final zzezu:Lcom/google/android/gms/internal/ads/zzcow;

.field private final zzgbc:Lcom/google/android/gms/internal/ads/zzbjm;

.field private final zzgbd:Lcom/google/android/gms/internal/ads/zzbqy$zza;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzbjm;Lcom/google/android/gms/internal/ads/zzbqy$zza;Lcom/google/android/gms/internal/ads/zzcow;Lcom/google/android/gms/internal/ads/zzbtv;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzcmn;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzcmq;->zzgbc:Lcom/google/android/gms/internal/ads/zzbjm;

    .line 3
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzcmq;->zzgbd:Lcom/google/android/gms/internal/ads/zzbqy$zza;

    .line 4
    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzcmq;->zzezu:Lcom/google/android/gms/internal/ads/zzcow;

    .line 5
    iput-object p4, p0, Lcom/google/android/gms/internal/ads/zzcmq;->zzeqb:Lcom/google/android/gms/internal/ads/zzbtv;

    return-void
.end method


# virtual methods
.method protected final zza(Lcom/google/android/gms/internal/ads/zzcxv;Landroid/os/Bundle;)Lcom/google/android/gms/internal/ads/zzbbh;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/ads/zzcxv;",
            "Landroid/os/Bundle;",
            ")",
            "Lcom/google/android/gms/internal/ads/zzbbh<",
            "Lcom/google/android/gms/internal/ads/zzbvx;",
            ">;"
        }
    .end annotation

    .line 7
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcmq;->zzgbc:Lcom/google/android/gms/internal/ads/zzbjm;

    .line 8
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzbjm;->zzack()Lcom/google/android/gms/internal/ads/zzbwt;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzcmq;->zzgbd:Lcom/google/android/gms/internal/ads/zzbqy$zza;

    .line 9
    invoke-virtual {v1, p1}, Lcom/google/android/gms/internal/ads/zzbqy$zza;->zza(Lcom/google/android/gms/internal/ads/zzcxv;)Lcom/google/android/gms/internal/ads/zzbqy$zza;

    move-result-object p1

    .line 10
    invoke-virtual {p1, p2}, Lcom/google/android/gms/internal/ads/zzbqy$zza;->zze(Landroid/os/Bundle;)Lcom/google/android/gms/internal/ads/zzbqy$zza;

    move-result-object p1

    .line 11
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzbqy$zza;->zzagh()Lcom/google/android/gms/internal/ads/zzbqy;

    move-result-object p1

    .line 12
    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/ads/zzbwt;->zzc(Lcom/google/android/gms/internal/ads/zzbqy;)Lcom/google/android/gms/internal/ads/zzbwt;

    move-result-object p1

    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zzcmq;->zzeqb:Lcom/google/android/gms/internal/ads/zzbtv;

    .line 13
    invoke-interface {p1, p2}, Lcom/google/android/gms/internal/ads/zzbwt;->zzc(Lcom/google/android/gms/internal/ads/zzbtv;)Lcom/google/android/gms/internal/ads/zzbwt;

    move-result-object p1

    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zzcmq;->zzezu:Lcom/google/android/gms/internal/ads/zzcow;

    .line 14
    invoke-interface {p1, p2}, Lcom/google/android/gms/internal/ads/zzbwt;->zzb(Lcom/google/android/gms/internal/ads/zzcow;)Lcom/google/android/gms/internal/ads/zzbwt;

    move-result-object p1

    .line 15
    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/zzbwt;->zzaed()Lcom/google/android/gms/internal/ads/zzbws;

    move-result-object p1

    .line 16
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzbws;->zzadu()Lcom/google/android/gms/internal/ads/zzbbh;

    move-result-object p1

    return-object p1
.end method
