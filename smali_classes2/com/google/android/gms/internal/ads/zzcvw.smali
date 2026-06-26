.class final synthetic Lcom/google/android/gms/internal/ads/zzcvw;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzbal;


# instance fields
.field private final zzgiw:Lcom/google/android/gms/internal/ads/zzcvu;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzcvu;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzcvw;->zzgiw:Lcom/google/android/gms/internal/ads/zzcvu;

    return-void
.end method


# virtual methods
.method public final zzf(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/zzbbh;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcvw;->zzgiw:Lcom/google/android/gms/internal/ads/zzcvu;

    check-cast p1, Ljava/lang/Throwable;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzcvu;->zzf(Ljava/lang/Throwable;)Lcom/google/android/gms/internal/ads/zzbbh;

    move-result-object p1

    return-object p1
.end method
