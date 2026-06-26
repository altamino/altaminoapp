.class public final enum Lcom/google/android/gms/internal/ads/zzdgf;
.super Ljava/lang/Enum;

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzdoe;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/google/android/gms/internal/ads/zzdgf;",
        ">;",
        "Lcom/google/android/gms/internal/ads/zzdoe;"
    }
.end annotation


# static fields
.field private static final zzeg:Lcom/google/android/gms/internal/ads/zzdof;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/ads/zzdof<",
            "Lcom/google/android/gms/internal/ads/zzdgf;",
            ">;"
        }
    .end annotation
.end field

.field private static final enum zzgtg:Lcom/google/android/gms/internal/ads/zzdgf;

.field public static final enum zzgth:Lcom/google/android/gms/internal/ads/zzdgf;

.field public static final enum zzgti:Lcom/google/android/gms/internal/ads/zzdgf;

.field public static final enum zzgtj:Lcom/google/android/gms/internal/ads/zzdgf;

.field public static final enum zzgtk:Lcom/google/android/gms/internal/ads/zzdgf;

.field private static final synthetic zzgtl:[Lcom/google/android/gms/internal/ads/zzdgf;


# instance fields
.field private final value:I


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .line 14
    new-instance v0, Lcom/google/android/gms/internal/ads/zzdgf;

    const/4 v1, 0x0

    const-string v2, "UNKNOWN_CURVE"

    invoke-direct {v0, v2, v1, v1}, Lcom/google/android/gms/internal/ads/zzdgf;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/google/android/gms/internal/ads/zzdgf;->zzgtg:Lcom/google/android/gms/internal/ads/zzdgf;

    .line 15
    new-instance v0, Lcom/google/android/gms/internal/ads/zzdgf;

    const/4 v2, 0x1

    const/4 v3, 0x2

    const-string v4, "NIST_P256"

    invoke-direct {v0, v4, v2, v3}, Lcom/google/android/gms/internal/ads/zzdgf;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/google/android/gms/internal/ads/zzdgf;->zzgth:Lcom/google/android/gms/internal/ads/zzdgf;

    .line 16
    new-instance v0, Lcom/google/android/gms/internal/ads/zzdgf;

    const/4 v4, 0x3

    const-string v5, "NIST_P384"

    invoke-direct {v0, v5, v3, v4}, Lcom/google/android/gms/internal/ads/zzdgf;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/google/android/gms/internal/ads/zzdgf;->zzgti:Lcom/google/android/gms/internal/ads/zzdgf;

    .line 17
    new-instance v0, Lcom/google/android/gms/internal/ads/zzdgf;

    const/4 v5, 0x4

    const-string v6, "NIST_P521"

    invoke-direct {v0, v6, v4, v5}, Lcom/google/android/gms/internal/ads/zzdgf;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/google/android/gms/internal/ads/zzdgf;->zzgtj:Lcom/google/android/gms/internal/ads/zzdgf;

    .line 18
    new-instance v0, Lcom/google/android/gms/internal/ads/zzdgf;

    const-string v6, "UNRECOGNIZED"

    const/4 v7, -0x1

    invoke-direct {v0, v6, v5, v7}, Lcom/google/android/gms/internal/ads/zzdgf;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/google/android/gms/internal/ads/zzdgf;->zzgtk:Lcom/google/android/gms/internal/ads/zzdgf;

    const/4 v0, 0x5

    new-array v0, v0, [Lcom/google/android/gms/internal/ads/zzdgf;

    .line 19
    sget-object v6, Lcom/google/android/gms/internal/ads/zzdgf;->zzgtg:Lcom/google/android/gms/internal/ads/zzdgf;

    aput-object v6, v0, v1

    sget-object v1, Lcom/google/android/gms/internal/ads/zzdgf;->zzgth:Lcom/google/android/gms/internal/ads/zzdgf;

    aput-object v1, v0, v2

    sget-object v1, Lcom/google/android/gms/internal/ads/zzdgf;->zzgti:Lcom/google/android/gms/internal/ads/zzdgf;

    aput-object v1, v0, v3

    sget-object v1, Lcom/google/android/gms/internal/ads/zzdgf;->zzgtj:Lcom/google/android/gms/internal/ads/zzdgf;

    aput-object v1, v0, v4

    sget-object v1, Lcom/google/android/gms/internal/ads/zzdgf;->zzgtk:Lcom/google/android/gms/internal/ads/zzdgf;

    aput-object v1, v0, v5

    sput-object v0, Lcom/google/android/gms/internal/ads/zzdgf;->zzgtl:[Lcom/google/android/gms/internal/ads/zzdgf;

    .line 20
    new-instance v0, Lcom/google/android/gms/internal/ads/zzdgg;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzdgg;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/ads/zzdgf;->zzeg:Lcom/google/android/gms/internal/ads/zzdof;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 11
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 12
    iput p3, p0, Lcom/google/android/gms/internal/ads/zzdgf;->value:I

    return-void
.end method

.method public static values()[Lcom/google/android/gms/internal/ads/zzdgf;
    .locals 1

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/ads/zzdgf;->zzgtl:[Lcom/google/android/gms/internal/ads/zzdgf;

    invoke-virtual {v0}, [Lcom/google/android/gms/internal/ads/zzdgf;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/android/gms/internal/ads/zzdgf;

    return-object v0
.end method

.method public static zzek(I)Lcom/google/android/gms/internal/ads/zzdgf;
    .locals 1

    if-eqz p0, :cond_3

    const/4 v0, 0x2

    if-eq p0, v0, :cond_2

    const/4 v0, 0x3

    if-eq p0, v0, :cond_1

    const/4 v0, 0x4

    if-eq p0, v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 9
    :cond_0
    sget-object p0, Lcom/google/android/gms/internal/ads/zzdgf;->zzgtj:Lcom/google/android/gms/internal/ads/zzdgf;

    return-object p0

    .line 8
    :cond_1
    sget-object p0, Lcom/google/android/gms/internal/ads/zzdgf;->zzgti:Lcom/google/android/gms/internal/ads/zzdgf;

    return-object p0

    .line 7
    :cond_2
    sget-object p0, Lcom/google/android/gms/internal/ads/zzdgf;->zzgth:Lcom/google/android/gms/internal/ads/zzdgf;

    return-object p0

    .line 6
    :cond_3
    sget-object p0, Lcom/google/android/gms/internal/ads/zzdgf;->zzgtg:Lcom/google/android/gms/internal/ads/zzdgf;

    return-object p0
.end method


# virtual methods
.method public final zzac()I
    .locals 2

    .line 2
    sget-object v0, Lcom/google/android/gms/internal/ads/zzdgf;->zzgtk:Lcom/google/android/gms/internal/ads/zzdgf;

    if-eq p0, v0, :cond_0

    .line 4
    iget v0, p0, Lcom/google/android/gms/internal/ads/zzdgf;->value:I

    return v0

    .line 3
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Can\'t get the number of an unknown enum value."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
