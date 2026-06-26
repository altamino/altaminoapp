.class public final enum Lcom/google/android/gms/internal/ads/zzdrz$zzb$zzh$zza;
.super Ljava/lang/Enum;

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzdoe;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/ads/zzdrz$zzb$zzh;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "zza"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/google/android/gms/internal/ads/zzdrz$zzb$zzh$zza;",
        ">;",
        "Lcom/google/android/gms/internal/ads/zzdoe;"
    }
.end annotation


# static fields
.field private static final zzeg:Lcom/google/android/gms/internal/ads/zzdof;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/ads/zzdof<",
            "Lcom/google/android/gms/internal/ads/zzdrz$zzb$zzh$zza;",
            ">;"
        }
    .end annotation
.end field

.field private static final enum zzhrm:Lcom/google/android/gms/internal/ads/zzdrz$zzb$zzh$zza;

.field private static final enum zzhrn:Lcom/google/android/gms/internal/ads/zzdrz$zzb$zzh$zza;

.field private static final enum zzhro:Lcom/google/android/gms/internal/ads/zzdrz$zzb$zzh$zza;

.field private static final enum zzhrp:Lcom/google/android/gms/internal/ads/zzdrz$zzb$zzh$zza;

.field private static final synthetic zzhrq:[Lcom/google/android/gms/internal/ads/zzdrz$zzb$zzh$zza;


# instance fields
.field private final value:I


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 13
    new-instance v0, Lcom/google/android/gms/internal/ads/zzdrz$zzb$zzh$zza;

    const/4 v1, 0x0

    const-string v2, "AD_RESOURCE_UNKNOWN"

    invoke-direct {v0, v2, v1, v1}, Lcom/google/android/gms/internal/ads/zzdrz$zzb$zzh$zza;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/google/android/gms/internal/ads/zzdrz$zzb$zzh$zza;->zzhrm:Lcom/google/android/gms/internal/ads/zzdrz$zzb$zzh$zza;

    .line 14
    new-instance v0, Lcom/google/android/gms/internal/ads/zzdrz$zzb$zzh$zza;

    const/4 v2, 0x1

    const-string v3, "AD_RESOURCE_CREATIVE"

    invoke-direct {v0, v3, v2, v2}, Lcom/google/android/gms/internal/ads/zzdrz$zzb$zzh$zza;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/google/android/gms/internal/ads/zzdrz$zzb$zzh$zza;->zzhrn:Lcom/google/android/gms/internal/ads/zzdrz$zzb$zzh$zza;

    .line 15
    new-instance v0, Lcom/google/android/gms/internal/ads/zzdrz$zzb$zzh$zza;

    const/4 v3, 0x2

    const-string v4, "AD_RESOURCE_POST_CLICK"

    invoke-direct {v0, v4, v3, v3}, Lcom/google/android/gms/internal/ads/zzdrz$zzb$zzh$zza;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/google/android/gms/internal/ads/zzdrz$zzb$zzh$zza;->zzhro:Lcom/google/android/gms/internal/ads/zzdrz$zzb$zzh$zza;

    .line 16
    new-instance v0, Lcom/google/android/gms/internal/ads/zzdrz$zzb$zzh$zza;

    const/4 v4, 0x3

    const-string v5, "AD_RESOURCE_AUTO_CLICK_DESTINATION"

    invoke-direct {v0, v5, v4, v4}, Lcom/google/android/gms/internal/ads/zzdrz$zzb$zzh$zza;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/google/android/gms/internal/ads/zzdrz$zzb$zzh$zza;->zzhrp:Lcom/google/android/gms/internal/ads/zzdrz$zzb$zzh$zza;

    const/4 v0, 0x4

    new-array v0, v0, [Lcom/google/android/gms/internal/ads/zzdrz$zzb$zzh$zza;

    .line 17
    sget-object v5, Lcom/google/android/gms/internal/ads/zzdrz$zzb$zzh$zza;->zzhrm:Lcom/google/android/gms/internal/ads/zzdrz$zzb$zzh$zza;

    aput-object v5, v0, v1

    sget-object v1, Lcom/google/android/gms/internal/ads/zzdrz$zzb$zzh$zza;->zzhrn:Lcom/google/android/gms/internal/ads/zzdrz$zzb$zzh$zza;

    aput-object v1, v0, v2

    sget-object v1, Lcom/google/android/gms/internal/ads/zzdrz$zzb$zzh$zza;->zzhro:Lcom/google/android/gms/internal/ads/zzdrz$zzb$zzh$zza;

    aput-object v1, v0, v3

    sget-object v1, Lcom/google/android/gms/internal/ads/zzdrz$zzb$zzh$zza;->zzhrp:Lcom/google/android/gms/internal/ads/zzdrz$zzb$zzh$zza;

    aput-object v1, v0, v4

    sput-object v0, Lcom/google/android/gms/internal/ads/zzdrz$zzb$zzh$zza;->zzhrq:[Lcom/google/android/gms/internal/ads/zzdrz$zzb$zzh$zza;

    .line 18
    new-instance v0, Lcom/google/android/gms/internal/ads/zzdsh;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzdsh;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/ads/zzdrz$zzb$zzh$zza;->zzeg:Lcom/google/android/gms/internal/ads/zzdof;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 10
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 11
    iput p3, p0, Lcom/google/android/gms/internal/ads/zzdrz$zzb$zzh$zza;->value:I

    return-void
.end method

.method public static values()[Lcom/google/android/gms/internal/ads/zzdrz$zzb$zzh$zza;
    .locals 1

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/ads/zzdrz$zzb$zzh$zza;->zzhrq:[Lcom/google/android/gms/internal/ads/zzdrz$zzb$zzh$zza;

    invoke-virtual {v0}, [Lcom/google/android/gms/internal/ads/zzdrz$zzb$zzh$zza;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/android/gms/internal/ads/zzdrz$zzb$zzh$zza;

    return-object v0
.end method

.method public static zzad()Lcom/google/android/gms/internal/ads/zzdog;
    .locals 1

    .line 9
    sget-object v0, Lcom/google/android/gms/internal/ads/zzdsi;->zzei:Lcom/google/android/gms/internal/ads/zzdog;

    return-object v0
.end method

.method public static zzhj(I)Lcom/google/android/gms/internal/ads/zzdrz$zzb$zzh$zza;
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

    .line 7
    :cond_0
    sget-object p0, Lcom/google/android/gms/internal/ads/zzdrz$zzb$zzh$zza;->zzhrp:Lcom/google/android/gms/internal/ads/zzdrz$zzb$zzh$zza;

    return-object p0

    .line 6
    :cond_1
    sget-object p0, Lcom/google/android/gms/internal/ads/zzdrz$zzb$zzh$zza;->zzhro:Lcom/google/android/gms/internal/ads/zzdrz$zzb$zzh$zza;

    return-object p0

    .line 5
    :cond_2
    sget-object p0, Lcom/google/android/gms/internal/ads/zzdrz$zzb$zzh$zza;->zzhrn:Lcom/google/android/gms/internal/ads/zzdrz$zzb$zzh$zza;

    return-object p0

    .line 4
    :cond_3
    sget-object p0, Lcom/google/android/gms/internal/ads/zzdrz$zzb$zzh$zza;->zzhrm:Lcom/google/android/gms/internal/ads/zzdrz$zzb$zzh$zza;

    return-object p0
.end method


# virtual methods
.method public final zzac()I
    .locals 1

    .line 2
    iget v0, p0, Lcom/google/android/gms/internal/ads/zzdrz$zzb$zzh$zza;->value:I

    return v0
.end method
