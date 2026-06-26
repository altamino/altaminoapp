.class public final Lcom/google/android/gms/internal/ads/zzcoc;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzcjz;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/internal/ads/zzcjz<",
        "Lcom/google/android/gms/internal/ads/zzaov;",
        "Lcom/google/android/gms/internal/ads/zzcla;",
        ">;"
    }
.end annotation


# instance fields
.field private final zzfvd:Lcom/google/android/gms/internal/ads/zzclc;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzclc;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzcoc;->zzfvd:Lcom/google/android/gms/internal/ads/zzclc;

    return-void
.end method


# virtual methods
.method public final zzd(Ljava/lang/String;Lorg/json/JSONObject;)Lcom/google/android/gms/internal/ads/zzcjy;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lorg/json/JSONObject;",
            ")",
            "Lcom/google/android/gms/internal/ads/zzcjy<",
            "Lcom/google/android/gms/internal/ads/zzaov;",
            "Lcom/google/android/gms/internal/ads/zzcla;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 4
    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zzcoc;->zzfvd:Lcom/google/android/gms/internal/ads/zzclc;

    invoke-virtual {p2, p1}, Lcom/google/android/gms/internal/ads/zzclc;->zzcy(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzaov;

    move-result-object p2

    if-nez p2, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 7
    :cond_0
    new-instance v0, Lcom/google/android/gms/internal/ads/zzcla;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzcla;-><init>()V

    .line 8
    new-instance v1, Lcom/google/android/gms/internal/ads/zzcjy;

    invoke-direct {v1, p2, v0, p1}, Lcom/google/android/gms/internal/ads/zzcjy;-><init>(Ljava/lang/Object;Lcom/google/android/gms/internal/ads/zzbsm;Ljava/lang/String;)V

    return-object v1
.end method
