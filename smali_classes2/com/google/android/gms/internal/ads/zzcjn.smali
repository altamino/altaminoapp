.class final Lcom/google/android/gms/internal/ads/zzcjn;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzban;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/internal/ads/zzban<",
        "Landroid/os/Bundle;",
        ">;"
    }
.end annotation


# instance fields
.field private final synthetic zzfza:Z

.field final synthetic zzfzb:Lcom/google/android/gms/internal/ads/zzcjm;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzcjm;Z)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzcjn;->zzfzb:Lcom/google/android/gms/internal/ads/zzcjm;

    iput-boolean p2, p0, Lcom/google/android/gms/internal/ads/zzcjn;->zzfza:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final zzb(Ljava/lang/Throwable;)V
    .locals 0

    const-string p1, "Failed to get signals bundle"

    .line 2
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzbad;->zzen(Ljava/lang/String;)V

    return-void
.end method

.method public final synthetic zzk(Ljava/lang/Object;)V
    .locals 7

    .line 4
    check-cast p1, Landroid/os/Bundle;

    .line 5
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcjn;->zzfzb:Lcom/google/android/gms/internal/ads/zzcjm;

    invoke-static {v0, p1}, Lcom/google/android/gms/internal/ads/zzcjm;->zza(Lcom/google/android/gms/internal/ads/zzcjm;Landroid/os/Bundle;)Ljava/util/ArrayList;

    move-result-object v4

    .line 6
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcjn;->zzfzb:Lcom/google/android/gms/internal/ads/zzcjm;

    invoke-static {v0, p1}, Lcom/google/android/gms/internal/ads/zzcjm;->zzb(Lcom/google/android/gms/internal/ads/zzcjm;Landroid/os/Bundle;)Lcom/google/android/gms/internal/ads/zzwt$zzi$zzc;

    move-result-object v6

    .line 7
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcjn;->zzfzb:Lcom/google/android/gms/internal/ads/zzcjm;

    invoke-static {v0, p1}, Lcom/google/android/gms/internal/ads/zzcjm;->zzc(Lcom/google/android/gms/internal/ads/zzcjm;Landroid/os/Bundle;)Lcom/google/android/gms/internal/ads/zzwt$zzg;

    move-result-object v5

    .line 8
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzcjn;->zzfzb:Lcom/google/android/gms/internal/ads/zzcjm;

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzcjm;->zza(Lcom/google/android/gms/internal/ads/zzcjm;)Lcom/google/android/gms/internal/ads/zzcjc;

    move-result-object p1

    new-instance v0, Lcom/google/android/gms/internal/ads/zzcjo;

    iget-boolean v3, p0, Lcom/google/android/gms/internal/ads/zzcjn;->zzfza:Z

    move-object v1, v0

    move-object v2, p0

    invoke-direct/range {v1 .. v6}, Lcom/google/android/gms/internal/ads/zzcjo;-><init>(Lcom/google/android/gms/internal/ads/zzcjn;ZLjava/util/ArrayList;Lcom/google/android/gms/internal/ads/zzwt$zzg;Lcom/google/android/gms/internal/ads/zzwt$zzi$zzc;)V

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/ads/zzcjc;->zza(Lcom/google/android/gms/internal/ads/zzczc;)V

    return-void
.end method
