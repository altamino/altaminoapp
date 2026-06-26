.class final synthetic Lcom/google/android/gms/internal/ads/zzcjs;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzczc;


# instance fields
.field private final zzfzi:Lcom/google/android/gms/internal/ads/zzcjr;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzcjr;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzcjs;->zzfzi:Lcom/google/android/gms/internal/ads/zzcjr;

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcjs;->zzfzi:Lcom/google/android/gms/internal/ads/zzcjr;

    check-cast p1, Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzcjr;->zzb(Landroid/database/sqlite/SQLiteDatabase;)Ljava/lang/Void;

    move-result-object p1

    return-object p1
.end method
