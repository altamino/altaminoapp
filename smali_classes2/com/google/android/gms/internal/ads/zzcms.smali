.class public final Lcom/google/android/gms/internal/ads/zzcms;
.super Lcom/google/android/gms/internal/ads/zzcmn;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/ads/zzcmn<",
        "Lcom/google/android/gms/internal/ads/zzcdb;",
        ">;"
    }
.end annotation


# instance fields
.field private final zzeqb:Lcom/google/android/gms/internal/ads/zzbtv;

.field private final zzgbc:Lcom/google/android/gms/internal/ads/zzbjm;

.field private final zzgbd:Lcom/google/android/gms/internal/ads/zzbqy$zza;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzbjm;Lcom/google/android/gms/internal/ads/zzbqy$zza;Lcom/google/android/gms/internal/ads/zzbtv;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzcmn;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzcms;->zzgbc:Lcom/google/android/gms/internal/ads/zzbjm;

    .line 3
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzcms;->zzgbd:Lcom/google/android/gms/internal/ads/zzbqy$zza;

    .line 4
    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzcms;->zzeqb:Lcom/google/android/gms/internal/ads/zzbtv;

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
            "Lcom/google/android/gms/internal/ads/zzcdb;",
            ">;"
        }
    .end annotation

    .line 6
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcms;->zzgbc:Lcom/google/android/gms/internal/ads/zzbjm;

    .line 7
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzbjm;->zzacm()Lcom/google/android/gms/internal/ads/zzcdg;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzcms;->zzgbd:Lcom/google/android/gms/internal/ads/zzbqy$zza;

    .line 8
    invoke-virtual {v1, p1}, Lcom/google/android/gms/internal/ads/zzbqy$zza;->zza(Lcom/google/android/gms/internal/ads/zzcxv;)Lcom/google/android/gms/internal/ads/zzbqy$zza;

    move-result-object p1

    .line 9
    invoke-virtual {p1, p2}, Lcom/google/android/gms/internal/ads/zzbqy$zza;->zze(Landroid/os/Bundle;)Lcom/google/android/gms/internal/ads/zzbqy$zza;

    move-result-object p1

    .line 10
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzbqy$zza;->zzagh()Lcom/google/android/gms/internal/ads/zzbqy;

    move-result-object p1

    .line 11
    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/ads/zzcdg;->zzd(Lcom/google/android/gms/internal/ads/zzbqy;)Lcom/google/android/gms/internal/ads/zzcdg;

    move-result-object p1

    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zzcms;->zzeqb:Lcom/google/android/gms/internal/ads/zzbtv;

    .line 12
    invoke-interface {p1, p2}, Lcom/google/android/gms/internal/ads/zzcdg;->zzd(Lcom/google/android/gms/internal/ads/zzbtv;)Lcom/google/android/gms/internal/ads/zzcdg;

    move-result-object p1

    .line 13
    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/zzcdg;->zzaeh()Lcom/google/android/gms/internal/ads/zzcdf;

    move-result-object p1

    .line 14
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzcdf;->zzadu()Lcom/google/android/gms/internal/ads/zzbbh;

    move-result-object p1

    return-object p1
.end method
