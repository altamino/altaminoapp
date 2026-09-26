.class abstract Lcom/google/android/gms/internal/measurement/zzjs;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final zza:Lcom/google/android/gms/internal/measurement/zzjs;

.field private static final zzb:Lcom/google/android/gms/internal/measurement/zzjs;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    .line 2
    new-instance v0, Lcom/google/android/gms/internal/measurement/zzjr;

    .line 3
    const/4 v1, 0x0

    .line 4
    .line 5
    .line 6
    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/measurement/zzjr;-><init>(Lcom/google/android/gms/internal/measurement/zzju;)V

    .line 7
    .line 8
    sput-object v0, Lcom/google/android/gms/internal/measurement/zzjs;->zza:Lcom/google/android/gms/internal/measurement/zzjs;

    .line 9
    .line 10
    new-instance v0, Lcom/google/android/gms/internal/measurement/zzjt;

    .line 11
    .line 12
    .line 13
    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/measurement/zzjt;-><init>(Lcom/google/android/gms/internal/measurement/zzjw;)V

    .line 14
    .line 15
    sput-object v0, Lcom/google/android/gms/internal/measurement/zzjs;->zzb:Lcom/google/android/gms/internal/measurement/zzjs;

    .line 16
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/gms/internal/measurement/zzjv;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/measurement/zzjs;-><init>()V

    return-void
.end method

.method static zza()Lcom/google/android/gms/internal/measurement/zzjs;
    .locals 1

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/measurement/zzjs;->zza:Lcom/google/android/gms/internal/measurement/zzjs;

    return-object v0
.end method

.method static zzb()Lcom/google/android/gms/internal/measurement/zzjs;
    .locals 1

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/measurement/zzjs;->zzb:Lcom/google/android/gms/internal/measurement/zzjs;

    return-object v0
.end method


# virtual methods
.method abstract zza(Ljava/lang/Object;J)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<",
            "L:Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Object;",
            "J)",
            "Ljava/util/List<",
            "T",
            "L;",
            ">;"
        }
    .end annotation
.end method

.method abstract zza(Ljava/lang/Object;Ljava/lang/Object;J)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<",
            "L:Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            "J)V"
        }
    .end annotation
.end method

.method abstract zzb(Ljava/lang/Object;J)V
.end method
