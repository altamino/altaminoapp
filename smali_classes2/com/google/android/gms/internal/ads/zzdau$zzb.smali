.class public final enum Lcom/google/android/gms/internal/ads/zzdau$zzb;
.super Ljava/lang/Enum;

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzdoe;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/ads/zzdau;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "zzb"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/google/android/gms/internal/ads/zzdau$zzb;",
        ">;",
        "Lcom/google/android/gms/internal/ads/zzdoe;"
    }
.end annotation


# static fields
.field private static final zzeg:Lcom/google/android/gms/internal/ads/zzdof;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/ads/zzdof<",
            "Lcom/google/android/gms/internal/ads/zzdau$zzb;",
            ">;"
        }
    .end annotation
.end field

.field private static final enum zzgor:Lcom/google/android/gms/internal/ads/zzdau$zzb;

.field public static final enum zzgos:Lcom/google/android/gms/internal/ads/zzdau$zzb;

.field private static final synthetic zzgot:[Lcom/google/android/gms/internal/ads/zzdau$zzb;


# instance fields
.field private final value:I


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 11
    new-instance v0, Lcom/google/android/gms/internal/ads/zzdau$zzb;

    const/4 v1, 0x0

    const-string v2, "EVENT_TYPE_UNKNOWN"

    invoke-direct {v0, v2, v1, v1}, Lcom/google/android/gms/internal/ads/zzdau$zzb;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/google/android/gms/internal/ads/zzdau$zzb;->zzgor:Lcom/google/android/gms/internal/ads/zzdau$zzb;

    .line 12
    new-instance v0, Lcom/google/android/gms/internal/ads/zzdau$zzb;

    const/4 v2, 0x1

    const-string v3, "BLOCKED_IMPRESSION"

    invoke-direct {v0, v3, v2, v2}, Lcom/google/android/gms/internal/ads/zzdau$zzb;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/google/android/gms/internal/ads/zzdau$zzb;->zzgos:Lcom/google/android/gms/internal/ads/zzdau$zzb;

    const/4 v0, 0x2

    new-array v0, v0, [Lcom/google/android/gms/internal/ads/zzdau$zzb;

    .line 13
    sget-object v3, Lcom/google/android/gms/internal/ads/zzdau$zzb;->zzgor:Lcom/google/android/gms/internal/ads/zzdau$zzb;

    aput-object v3, v0, v1

    sget-object v1, Lcom/google/android/gms/internal/ads/zzdau$zzb;->zzgos:Lcom/google/android/gms/internal/ads/zzdau$zzb;

    aput-object v1, v0, v2

    sput-object v0, Lcom/google/android/gms/internal/ads/zzdau$zzb;->zzgot:[Lcom/google/android/gms/internal/ads/zzdau$zzb;

    .line 14
    new-instance v0, Lcom/google/android/gms/internal/ads/zzdaw;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzdaw;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/ads/zzdau$zzb;->zzeg:Lcom/google/android/gms/internal/ads/zzdof;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 8
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 9
    iput p3, p0, Lcom/google/android/gms/internal/ads/zzdau$zzb;->value:I

    return-void
.end method

.method public static values()[Lcom/google/android/gms/internal/ads/zzdau$zzb;
    .locals 1

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/ads/zzdau$zzb;->zzgot:[Lcom/google/android/gms/internal/ads/zzdau$zzb;

    invoke-virtual {v0}, [Lcom/google/android/gms/internal/ads/zzdau$zzb;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/android/gms/internal/ads/zzdau$zzb;

    return-object v0
.end method

.method public static zzad()Lcom/google/android/gms/internal/ads/zzdog;
    .locals 1

    .line 7
    sget-object v0, Lcom/google/android/gms/internal/ads/zzdax;->zzei:Lcom/google/android/gms/internal/ads/zzdog;

    return-object v0
.end method

.method public static zzdt(I)Lcom/google/android/gms/internal/ads/zzdau$zzb;
    .locals 1

    if-eqz p0, :cond_1

    const/4 v0, 0x1

    if-eq p0, v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 5
    :cond_0
    sget-object p0, Lcom/google/android/gms/internal/ads/zzdau$zzb;->zzgos:Lcom/google/android/gms/internal/ads/zzdau$zzb;

    return-object p0

    .line 4
    :cond_1
    sget-object p0, Lcom/google/android/gms/internal/ads/zzdau$zzb;->zzgor:Lcom/google/android/gms/internal/ads/zzdau$zzb;

    return-object p0
.end method


# virtual methods
.method public final zzac()I
    .locals 1

    .line 2
    iget v0, p0, Lcom/google/android/gms/internal/ads/zzdau$zzb;->value:I

    return v0
.end method
