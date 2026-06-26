.class public final enum Lcom/google/android/gms/internal/ads/zzdgu;
.super Ljava/lang/Enum;

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzdoe;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/google/android/gms/internal/ads/zzdgu;",
        ">;",
        "Lcom/google/android/gms/internal/ads/zzdoe;"
    }
.end annotation


# static fields
.field private static final zzeg:Lcom/google/android/gms/internal/ads/zzdof;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/ads/zzdof<",
            "Lcom/google/android/gms/internal/ads/zzdgu;",
            ">;"
        }
    .end annotation
.end field

.field public static final enum zzguk:Lcom/google/android/gms/internal/ads/zzdgu;

.field public static final enum zzgul:Lcom/google/android/gms/internal/ads/zzdgu;

.field public static final enum zzgum:Lcom/google/android/gms/internal/ads/zzdgu;

.field public static final enum zzgun:Lcom/google/android/gms/internal/ads/zzdgu;

.field public static final enum zzguo:Lcom/google/android/gms/internal/ads/zzdgu;

.field private static final synthetic zzgup:[Lcom/google/android/gms/internal/ads/zzdgu;


# instance fields
.field private final value:I


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .line 14
    new-instance v0, Lcom/google/android/gms/internal/ads/zzdgu;

    const/4 v1, 0x0

    const-string v2, "UNKNOWN_STATUS"

    invoke-direct {v0, v2, v1, v1}, Lcom/google/android/gms/internal/ads/zzdgu;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/google/android/gms/internal/ads/zzdgu;->zzguk:Lcom/google/android/gms/internal/ads/zzdgu;

    .line 15
    new-instance v0, Lcom/google/android/gms/internal/ads/zzdgu;

    const/4 v2, 0x1

    const-string v3, "ENABLED"

    invoke-direct {v0, v3, v2, v2}, Lcom/google/android/gms/internal/ads/zzdgu;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/google/android/gms/internal/ads/zzdgu;->zzgul:Lcom/google/android/gms/internal/ads/zzdgu;

    .line 16
    new-instance v0, Lcom/google/android/gms/internal/ads/zzdgu;

    const/4 v3, 0x2

    const-string v4, "DISABLED"

    invoke-direct {v0, v4, v3, v3}, Lcom/google/android/gms/internal/ads/zzdgu;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/google/android/gms/internal/ads/zzdgu;->zzgum:Lcom/google/android/gms/internal/ads/zzdgu;

    .line 17
    new-instance v0, Lcom/google/android/gms/internal/ads/zzdgu;

    const/4 v4, 0x3

    const-string v5, "DESTROYED"

    invoke-direct {v0, v5, v4, v4}, Lcom/google/android/gms/internal/ads/zzdgu;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/google/android/gms/internal/ads/zzdgu;->zzgun:Lcom/google/android/gms/internal/ads/zzdgu;

    .line 18
    new-instance v0, Lcom/google/android/gms/internal/ads/zzdgu;

    const/4 v5, 0x4

    const-string v6, "UNRECOGNIZED"

    const/4 v7, -0x1

    invoke-direct {v0, v6, v5, v7}, Lcom/google/android/gms/internal/ads/zzdgu;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/google/android/gms/internal/ads/zzdgu;->zzguo:Lcom/google/android/gms/internal/ads/zzdgu;

    const/4 v0, 0x5

    new-array v0, v0, [Lcom/google/android/gms/internal/ads/zzdgu;

    .line 19
    sget-object v6, Lcom/google/android/gms/internal/ads/zzdgu;->zzguk:Lcom/google/android/gms/internal/ads/zzdgu;

    aput-object v6, v0, v1

    sget-object v1, Lcom/google/android/gms/internal/ads/zzdgu;->zzgul:Lcom/google/android/gms/internal/ads/zzdgu;

    aput-object v1, v0, v2

    sget-object v1, Lcom/google/android/gms/internal/ads/zzdgu;->zzgum:Lcom/google/android/gms/internal/ads/zzdgu;

    aput-object v1, v0, v3

    sget-object v1, Lcom/google/android/gms/internal/ads/zzdgu;->zzgun:Lcom/google/android/gms/internal/ads/zzdgu;

    aput-object v1, v0, v4

    sget-object v1, Lcom/google/android/gms/internal/ads/zzdgu;->zzguo:Lcom/google/android/gms/internal/ads/zzdgu;

    aput-object v1, v0, v5

    sput-object v0, Lcom/google/android/gms/internal/ads/zzdgu;->zzgup:[Lcom/google/android/gms/internal/ads/zzdgu;

    .line 20
    new-instance v0, Lcom/google/android/gms/internal/ads/zzdgv;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzdgv;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/ads/zzdgu;->zzeg:Lcom/google/android/gms/internal/ads/zzdof;

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
    iput p3, p0, Lcom/google/android/gms/internal/ads/zzdgu;->value:I

    return-void
.end method

.method public static values()[Lcom/google/android/gms/internal/ads/zzdgu;
    .locals 1

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/ads/zzdgu;->zzgup:[Lcom/google/android/gms/internal/ads/zzdgu;

    invoke-virtual {v0}, [Lcom/google/android/gms/internal/ads/zzdgu;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/android/gms/internal/ads/zzdgu;

    return-object v0
.end method

.method public static zzeo(I)Lcom/google/android/gms/internal/ads/zzdgu;
    .locals 1

    if-eqz p0, :cond_3

    const/4 v0, 0x1

    if-eq p0, v0, :cond_2

    const/4 v0, 0x2

    if-eq p0, v0, :cond_1

    const/4 v0, 0x3

    if-eq p0, v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 9
    :cond_0
    sget-object p0, Lcom/google/android/gms/internal/ads/zzdgu;->zzgun:Lcom/google/android/gms/internal/ads/zzdgu;

    return-object p0

    .line 8
    :cond_1
    sget-object p0, Lcom/google/android/gms/internal/ads/zzdgu;->zzgum:Lcom/google/android/gms/internal/ads/zzdgu;

    return-object p0

    .line 7
    :cond_2
    sget-object p0, Lcom/google/android/gms/internal/ads/zzdgu;->zzgul:Lcom/google/android/gms/internal/ads/zzdgu;

    return-object p0

    .line 6
    :cond_3
    sget-object p0, Lcom/google/android/gms/internal/ads/zzdgu;->zzguk:Lcom/google/android/gms/internal/ads/zzdgu;

    return-object p0
.end method


# virtual methods
.method public final zzac()I
    .locals 2

    .line 2
    sget-object v0, Lcom/google/android/gms/internal/ads/zzdgu;->zzguo:Lcom/google/android/gms/internal/ads/zzdgu;

    if-eq p0, v0, :cond_0

    .line 4
    iget v0, p0, Lcom/google/android/gms/internal/ads/zzdgu;->value:I

    return v0

    .line 3
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Can\'t get the number of an unknown enum value."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
