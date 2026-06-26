.class final synthetic Lcom/google/android/gms/internal/ads/zzcjd;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/concurrent/Callable;


# instance fields
.field private final zzfye:Lcom/google/android/gms/internal/ads/zzcja;


# direct methods
.method private constructor <init>(Lcom/google/android/gms/internal/ads/zzcja;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzcjd;->zzfye:Lcom/google/android/gms/internal/ads/zzcja;

    return-void
.end method

.method static zza(Lcom/google/android/gms/internal/ads/zzcja;)Ljava/util/concurrent/Callable;
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/ads/zzcjd;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/ads/zzcjd;-><init>(Lcom/google/android/gms/internal/ads/zzcja;)V

    return-object v0
.end method


# virtual methods
.method public final call()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcjd;->zzfye:Lcom/google/android/gms/internal/ads/zzcja;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    return-object v0
.end method
