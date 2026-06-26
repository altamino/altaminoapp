.class final synthetic Lcom/google/android/gms/internal/ads/zzbhv;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final zzdbk:Ljava/lang/String;

.field private final zzemg:Lcom/google/android/gms/internal/ads/zzbht;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzbht;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzbhv;->zzemg:Lcom/google/android/gms/internal/ads/zzbht;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzbhv;->zzdbk:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbhv;->zzemg:Lcom/google/android/gms/internal/ads/zzbht;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzbhv;->zzdbk:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzbht;->zzff(Ljava/lang/String;)V

    return-void
.end method
