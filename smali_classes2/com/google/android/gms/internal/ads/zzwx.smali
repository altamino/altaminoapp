.class public final enum Lcom/google/android/gms/internal/ads/zzwx;
.super Ljava/lang/Enum;

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzdoe;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/google/android/gms/internal/ads/zzwx;",
        ">;",
        "Lcom/google/android/gms/internal/ads/zzdoe;"
    }
.end annotation


# static fields
.field public static final enum zzcai:Lcom/google/android/gms/internal/ads/zzwx;

.field public static final enum zzcaj:Lcom/google/android/gms/internal/ads/zzwx;

.field public static final enum zzcak:Lcom/google/android/gms/internal/ads/zzwx;

.field private static final synthetic zzcal:[Lcom/google/android/gms/internal/ads/zzwx;

.field private static final zzeg:Lcom/google/android/gms/internal/ads/zzdof;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/ads/zzdof<",
            "Lcom/google/android/gms/internal/ads/zzwx;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final value:I


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 12
    new-instance v0, Lcom/google/android/gms/internal/ads/zzwx;

    const/4 v1, 0x0

    const-string v2, "ENUM_FALSE"

    invoke-direct {v0, v2, v1, v1}, Lcom/google/android/gms/internal/ads/zzwx;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/google/android/gms/internal/ads/zzwx;->zzcai:Lcom/google/android/gms/internal/ads/zzwx;

    .line 13
    new-instance v0, Lcom/google/android/gms/internal/ads/zzwx;

    const/4 v2, 0x1

    const-string v3, "ENUM_TRUE"

    invoke-direct {v0, v3, v2, v2}, Lcom/google/android/gms/internal/ads/zzwx;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/google/android/gms/internal/ads/zzwx;->zzcaj:Lcom/google/android/gms/internal/ads/zzwx;

    .line 14
    new-instance v0, Lcom/google/android/gms/internal/ads/zzwx;

    const/4 v3, 0x2

    const-string v4, "ENUM_UNKNOWN"

    const/16 v5, 0x3e8

    invoke-direct {v0, v4, v3, v5}, Lcom/google/android/gms/internal/ads/zzwx;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/google/android/gms/internal/ads/zzwx;->zzcak:Lcom/google/android/gms/internal/ads/zzwx;

    const/4 v0, 0x3

    new-array v0, v0, [Lcom/google/android/gms/internal/ads/zzwx;

    .line 15
    sget-object v4, Lcom/google/android/gms/internal/ads/zzwx;->zzcai:Lcom/google/android/gms/internal/ads/zzwx;

    aput-object v4, v0, v1

    sget-object v1, Lcom/google/android/gms/internal/ads/zzwx;->zzcaj:Lcom/google/android/gms/internal/ads/zzwx;

    aput-object v1, v0, v2

    sget-object v1, Lcom/google/android/gms/internal/ads/zzwx;->zzcak:Lcom/google/android/gms/internal/ads/zzwx;

    aput-object v1, v0, v3

    sput-object v0, Lcom/google/android/gms/internal/ads/zzwx;->zzcal:[Lcom/google/android/gms/internal/ads/zzwx;

    .line 16
    new-instance v0, Lcom/google/android/gms/internal/ads/zzwy;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzwy;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/ads/zzwx;->zzeg:Lcom/google/android/gms/internal/ads/zzdof;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 9
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 10
    iput p3, p0, Lcom/google/android/gms/internal/ads/zzwx;->value:I

    return-void
.end method

.method public static values()[Lcom/google/android/gms/internal/ads/zzwx;
    .locals 1

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/ads/zzwx;->zzcal:[Lcom/google/android/gms/internal/ads/zzwx;

    invoke-virtual {v0}, [Lcom/google/android/gms/internal/ads/zzwx;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/android/gms/internal/ads/zzwx;

    return-object v0
.end method

.method public static zzad()Lcom/google/android/gms/internal/ads/zzdog;
    .locals 1

    .line 8
    sget-object v0, Lcom/google/android/gms/internal/ads/zzwz;->zzei:Lcom/google/android/gms/internal/ads/zzdog;

    return-object v0
.end method

.method public static zzca(I)Lcom/google/android/gms/internal/ads/zzwx;
    .locals 1

    if-eqz p0, :cond_2

    const/4 v0, 0x1

    if-eq p0, v0, :cond_1

    const/16 v0, 0x3e8

    if-eq p0, v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 6
    :cond_0
    sget-object p0, Lcom/google/android/gms/internal/ads/zzwx;->zzcak:Lcom/google/android/gms/internal/ads/zzwx;

    return-object p0

    .line 5
    :cond_1
    sget-object p0, Lcom/google/android/gms/internal/ads/zzwx;->zzcaj:Lcom/google/android/gms/internal/ads/zzwx;

    return-object p0

    .line 4
    :cond_2
    sget-object p0, Lcom/google/android/gms/internal/ads/zzwx;->zzcai:Lcom/google/android/gms/internal/ads/zzwx;

    return-object p0
.end method


# virtual methods
.method public final zzac()I
    .locals 1

    .line 2
    iget v0, p0, Lcom/google/android/gms/internal/ads/zzwx;->value:I

    return v0
.end method
