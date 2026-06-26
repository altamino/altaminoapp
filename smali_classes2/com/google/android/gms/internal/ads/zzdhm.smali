.class public final enum Lcom/google/android/gms/internal/ads/zzdhm;
.super Ljava/lang/Enum;

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzdoe;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/google/android/gms/internal/ads/zzdhm;",
        ">;",
        "Lcom/google/android/gms/internal/ads/zzdoe;"
    }
.end annotation


# static fields
.field private static final zzeg:Lcom/google/android/gms/internal/ads/zzdof;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/ads/zzdof<",
            "Lcom/google/android/gms/internal/ads/zzdhm;",
            ">;"
        }
    .end annotation
.end field

.field public static final enum zzgvq:Lcom/google/android/gms/internal/ads/zzdhm;

.field public static final enum zzgvr:Lcom/google/android/gms/internal/ads/zzdhm;

.field public static final enum zzgvs:Lcom/google/android/gms/internal/ads/zzdhm;

.field public static final enum zzgvt:Lcom/google/android/gms/internal/ads/zzdhm;

.field public static final enum zzgvu:Lcom/google/android/gms/internal/ads/zzdhm;

.field public static final enum zzgvv:Lcom/google/android/gms/internal/ads/zzdhm;

.field private static final synthetic zzgvw:[Lcom/google/android/gms/internal/ads/zzdhm;


# instance fields
.field private final value:I


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .line 15
    new-instance v0, Lcom/google/android/gms/internal/ads/zzdhm;

    const/4 v1, 0x0

    const-string v2, "UNKNOWN_PREFIX"

    invoke-direct {v0, v2, v1, v1}, Lcom/google/android/gms/internal/ads/zzdhm;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/google/android/gms/internal/ads/zzdhm;->zzgvq:Lcom/google/android/gms/internal/ads/zzdhm;

    .line 16
    new-instance v0, Lcom/google/android/gms/internal/ads/zzdhm;

    const/4 v2, 0x1

    const-string v3, "TINK"

    invoke-direct {v0, v3, v2, v2}, Lcom/google/android/gms/internal/ads/zzdhm;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/google/android/gms/internal/ads/zzdhm;->zzgvr:Lcom/google/android/gms/internal/ads/zzdhm;

    .line 17
    new-instance v0, Lcom/google/android/gms/internal/ads/zzdhm;

    const/4 v3, 0x2

    const-string v4, "LEGACY"

    invoke-direct {v0, v4, v3, v3}, Lcom/google/android/gms/internal/ads/zzdhm;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/google/android/gms/internal/ads/zzdhm;->zzgvs:Lcom/google/android/gms/internal/ads/zzdhm;

    .line 18
    new-instance v0, Lcom/google/android/gms/internal/ads/zzdhm;

    const/4 v4, 0x3

    const-string v5, "RAW"

    invoke-direct {v0, v5, v4, v4}, Lcom/google/android/gms/internal/ads/zzdhm;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/google/android/gms/internal/ads/zzdhm;->zzgvt:Lcom/google/android/gms/internal/ads/zzdhm;

    .line 19
    new-instance v0, Lcom/google/android/gms/internal/ads/zzdhm;

    const/4 v5, 0x4

    const-string v6, "CRUNCHY"

    invoke-direct {v0, v6, v5, v5}, Lcom/google/android/gms/internal/ads/zzdhm;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/google/android/gms/internal/ads/zzdhm;->zzgvu:Lcom/google/android/gms/internal/ads/zzdhm;

    .line 20
    new-instance v0, Lcom/google/android/gms/internal/ads/zzdhm;

    const/4 v6, 0x5

    const-string v7, "UNRECOGNIZED"

    const/4 v8, -0x1

    invoke-direct {v0, v7, v6, v8}, Lcom/google/android/gms/internal/ads/zzdhm;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/google/android/gms/internal/ads/zzdhm;->zzgvv:Lcom/google/android/gms/internal/ads/zzdhm;

    const/4 v0, 0x6

    new-array v0, v0, [Lcom/google/android/gms/internal/ads/zzdhm;

    .line 21
    sget-object v7, Lcom/google/android/gms/internal/ads/zzdhm;->zzgvq:Lcom/google/android/gms/internal/ads/zzdhm;

    aput-object v7, v0, v1

    sget-object v1, Lcom/google/android/gms/internal/ads/zzdhm;->zzgvr:Lcom/google/android/gms/internal/ads/zzdhm;

    aput-object v1, v0, v2

    sget-object v1, Lcom/google/android/gms/internal/ads/zzdhm;->zzgvs:Lcom/google/android/gms/internal/ads/zzdhm;

    aput-object v1, v0, v3

    sget-object v1, Lcom/google/android/gms/internal/ads/zzdhm;->zzgvt:Lcom/google/android/gms/internal/ads/zzdhm;

    aput-object v1, v0, v4

    sget-object v1, Lcom/google/android/gms/internal/ads/zzdhm;->zzgvu:Lcom/google/android/gms/internal/ads/zzdhm;

    aput-object v1, v0, v5

    sget-object v1, Lcom/google/android/gms/internal/ads/zzdhm;->zzgvv:Lcom/google/android/gms/internal/ads/zzdhm;

    aput-object v1, v0, v6

    sput-object v0, Lcom/google/android/gms/internal/ads/zzdhm;->zzgvw:[Lcom/google/android/gms/internal/ads/zzdhm;

    .line 22
    new-instance v0, Lcom/google/android/gms/internal/ads/zzdhn;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzdhn;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/ads/zzdhm;->zzeg:Lcom/google/android/gms/internal/ads/zzdof;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 12
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 13
    iput p3, p0, Lcom/google/android/gms/internal/ads/zzdhm;->value:I

    return-void
.end method

.method public static values()[Lcom/google/android/gms/internal/ads/zzdhm;
    .locals 1

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/ads/zzdhm;->zzgvw:[Lcom/google/android/gms/internal/ads/zzdhm;

    invoke-virtual {v0}, [Lcom/google/android/gms/internal/ads/zzdhm;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/android/gms/internal/ads/zzdhm;

    return-object v0
.end method

.method public static zzez(I)Lcom/google/android/gms/internal/ads/zzdhm;
    .locals 1

    if-eqz p0, :cond_4

    const/4 v0, 0x1

    if-eq p0, v0, :cond_3

    const/4 v0, 0x2

    if-eq p0, v0, :cond_2

    const/4 v0, 0x3

    if-eq p0, v0, :cond_1

    const/4 v0, 0x4

    if-eq p0, v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 10
    :cond_0
    sget-object p0, Lcom/google/android/gms/internal/ads/zzdhm;->zzgvu:Lcom/google/android/gms/internal/ads/zzdhm;

    return-object p0

    .line 9
    :cond_1
    sget-object p0, Lcom/google/android/gms/internal/ads/zzdhm;->zzgvt:Lcom/google/android/gms/internal/ads/zzdhm;

    return-object p0

    .line 8
    :cond_2
    sget-object p0, Lcom/google/android/gms/internal/ads/zzdhm;->zzgvs:Lcom/google/android/gms/internal/ads/zzdhm;

    return-object p0

    .line 7
    :cond_3
    sget-object p0, Lcom/google/android/gms/internal/ads/zzdhm;->zzgvr:Lcom/google/android/gms/internal/ads/zzdhm;

    return-object p0

    .line 6
    :cond_4
    sget-object p0, Lcom/google/android/gms/internal/ads/zzdhm;->zzgvq:Lcom/google/android/gms/internal/ads/zzdhm;

    return-object p0
.end method


# virtual methods
.method public final zzac()I
    .locals 2

    .line 2
    sget-object v0, Lcom/google/android/gms/internal/ads/zzdhm;->zzgvv:Lcom/google/android/gms/internal/ads/zzdhm;

    if-eq p0, v0, :cond_0

    .line 4
    iget v0, p0, Lcom/google/android/gms/internal/ads/zzdhm;->value:I

    return v0

    .line 3
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Can\'t get the number of an unknown enum value."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
