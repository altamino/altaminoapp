.class public final Lcom/google/android/gms/internal/ads/zzaso;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzasb;


# annotations
.annotation runtime Lcom/google/android/gms/internal/ads/zzard;
.end annotation


# instance fields
.field private zzdqj:Lcom/google/android/gms/internal/ads/zzalj;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/ads/zzalj<",
            "Lorg/json/JSONObject;",
            "Lorg/json/JSONObject;",
            ">;"
        }
    .end annotation
.end field

.field private zzdql:Lcom/google/android/gms/internal/ads/zzalj;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/ads/zzalj<",
            "Lorg/json/JSONObject;",
            "Lorg/json/JSONObject;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzk;->zzlt()Lcom/google/android/gms/internal/ads/zzalk;

    move-result-object v0

    .line 4
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzbai;->zzxc()Lcom/google/android/gms/internal/ads/zzbai;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/google/android/gms/internal/ads/zzalk;->zza(Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzbai;)Lcom/google/android/gms/internal/ads/zzalr;

    move-result-object v0

    sget-object v1, Lcom/google/android/gms/internal/ads/zzalo;->zzddi:Lcom/google/android/gms/internal/ads/zzaln;

    const-string v2, "google.afma.request.getAdDictionary"

    .line 5
    invoke-virtual {v0, v2, v1, v1}, Lcom/google/android/gms/internal/ads/zzalr;->zza(Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzalm;Lcom/google/android/gms/internal/ads/zzall;)Lcom/google/android/gms/internal/ads/zzalj;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzaso;->zzdql:Lcom/google/android/gms/internal/ads/zzalj;

    .line 7
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzk;->zzlt()Lcom/google/android/gms/internal/ads/zzalk;

    move-result-object v0

    .line 8
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzbai;->zzxc()Lcom/google/android/gms/internal/ads/zzbai;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/google/android/gms/internal/ads/zzalk;->zza(Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzbai;)Lcom/google/android/gms/internal/ads/zzalr;

    move-result-object p1

    sget-object v0, Lcom/google/android/gms/internal/ads/zzalo;->zzddi:Lcom/google/android/gms/internal/ads/zzaln;

    const-string v1, "google.afma.sdkConstants.getSdkConstants"

    .line 9
    invoke-virtual {p1, v1, v0, v0}, Lcom/google/android/gms/internal/ads/zzalr;->zza(Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzalm;Lcom/google/android/gms/internal/ads/zzall;)Lcom/google/android/gms/internal/ads/zzalj;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzaso;->zzdqj:Lcom/google/android/gms/internal/ads/zzalj;

    return-void
.end method


# virtual methods
.method public final zztt()Lcom/google/android/gms/internal/ads/zzalj;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/android/gms/internal/ads/zzalj<",
            "Lorg/json/JSONObject;",
            "Lorg/json/JSONObject;",
            ">;"
        }
    .end annotation

    .line 11
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzaso;->zzdqj:Lcom/google/android/gms/internal/ads/zzalj;

    return-object v0
.end method
