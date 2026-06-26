.class final synthetic Lcom/google/android/gms/internal/ads/zzcwg;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzcuz;


# instance fields
.field private final zzgje:Lcom/google/android/gms/internal/ads/zzcwf;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzcwf;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzcwg;->zzgje:Lcom/google/android/gms/internal/ads/zzcwf;

    return-void
.end method


# virtual methods
.method public final zzt(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcwg;->zzgje:Lcom/google/android/gms/internal/ads/zzcwf;

    check-cast p1, Lorg/json/JSONObject;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzcwf;->zzo(Lorg/json/JSONObject;)V

    return-void
.end method
