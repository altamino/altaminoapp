.class public final Lcom/google/android/gms/internal/ads/zzcpa;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzcou;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/internal/ads/zzcou<",
        "Lcom/google/android/gms/internal/ads/zzbvx;",
        ">;"
    }
.end annotation


# instance fields
.field private final zzfzy:Lcom/google/android/gms/internal/ads/zzbws;

.field private final zzlj:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzbws;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzcpa;->zzlj:Landroid/content/Context;

    .line 3
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzcpa;->zzfzy:Lcom/google/android/gms/internal/ads/zzbws;

    return-void
.end method


# virtual methods
.method public final synthetic zza(Lcom/google/android/gms/internal/ads/zzcxu;Lcom/google/android/gms/internal/ads/zzcxm;Landroid/view/View;Lcom/google/android/gms/internal/ads/zzcoz;)Ljava/lang/Object;
    .locals 3

    .line 6
    new-instance p3, Lcom/google/android/gms/internal/ads/zzcpc;

    sget-object v0, Lcom/google/android/gms/internal/ads/zzcpb;->zzgde:Lcom/google/android/gms/internal/ads/zzbwz;

    invoke-direct {p3, p0, v0}, Lcom/google/android/gms/internal/ads/zzcpc;-><init>(Lcom/google/android/gms/internal/ads/zzcpa;Lcom/google/android/gms/internal/ads/zzbwz;)V

    .line 7
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcpa;->zzfzy:Lcom/google/android/gms/internal/ads/zzbws;

    new-instance v1, Lcom/google/android/gms/internal/ads/zzbpr;

    const/4 v2, 0x0

    invoke-direct {v1, p1, p2, v2}, Lcom/google/android/gms/internal/ads/zzbpr;-><init>(Lcom/google/android/gms/internal/ads/zzcxu;Lcom/google/android/gms/internal/ads/zzcxm;Ljava/lang/String;)V

    .line 8
    invoke-virtual {v0, v1, p3}, Lcom/google/android/gms/internal/ads/zzbws;->zza(Lcom/google/android/gms/internal/ads/zzbpr;Lcom/google/android/gms/internal/ads/zzbvz;)Lcom/google/android/gms/internal/ads/zzbvy;

    move-result-object p1

    .line 9
    new-instance p2, Lcom/google/android/gms/internal/ads/zzcpd;

    invoke-direct {p2, p0, p1}, Lcom/google/android/gms/internal/ads/zzcpd;-><init>(Lcom/google/android/gms/internal/ads/zzcpa;Lcom/google/android/gms/internal/ads/zzbvy;)V

    invoke-virtual {p4, p2}, Lcom/google/android/gms/internal/ads/zzcoz;->zza(Lcom/google/android/gms/ads/internal/zzf;)V

    .line 10
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzbvy;->zzaee()Lcom/google/android/gms/internal/ads/zzbvx;

    move-result-object p1

    return-object p1
.end method
