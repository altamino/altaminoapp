.class final synthetic Lcom/google/android/gms/internal/ads/zzcuo;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final zzght:Lcom/google/android/gms/internal/ads/zzcul;

.field private final zzghu:Lcom/google/android/gms/internal/ads/zzcpk;

.field private final zzghv:Landroid/os/Bundle;

.field private final zzghw:Lcom/google/android/gms/internal/ads/zzcpl;

.field private final zzghx:Lcom/google/android/gms/internal/ads/zzbbr;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzcul;Lcom/google/android/gms/internal/ads/zzcpk;Landroid/os/Bundle;Lcom/google/android/gms/internal/ads/zzcpl;Lcom/google/android/gms/internal/ads/zzbbr;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzcuo;->zzght:Lcom/google/android/gms/internal/ads/zzcul;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzcuo;->zzghu:Lcom/google/android/gms/internal/ads/zzcpk;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzcuo;->zzghv:Landroid/os/Bundle;

    iput-object p4, p0, Lcom/google/android/gms/internal/ads/zzcuo;->zzghw:Lcom/google/android/gms/internal/ads/zzcpl;

    iput-object p5, p0, Lcom/google/android/gms/internal/ads/zzcuo;->zzghx:Lcom/google/android/gms/internal/ads/zzbbr;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcuo;->zzght:Lcom/google/android/gms/internal/ads/zzcul;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzcuo;->zzghu:Lcom/google/android/gms/internal/ads/zzcpk;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzcuo;->zzghv:Landroid/os/Bundle;

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzcuo;->zzghw:Lcom/google/android/gms/internal/ads/zzcpl;

    iget-object v4, p0, Lcom/google/android/gms/internal/ads/zzcuo;->zzghx:Lcom/google/android/gms/internal/ads/zzbbr;

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/google/android/gms/internal/ads/zzcul;->zza(Lcom/google/android/gms/internal/ads/zzcpk;Landroid/os/Bundle;Lcom/google/android/gms/internal/ads/zzcpl;Lcom/google/android/gms/internal/ads/zzbbr;)V

    return-void
.end method
