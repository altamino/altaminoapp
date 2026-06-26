.class public final enum Lcom/google/android/gms/internal/ads/zzwt$zzi$zzc;
.super Ljava/lang/Enum;

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzdoe;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/ads/zzwt$zzi;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "zzc"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/google/android/gms/internal/ads/zzwt$zzi$zzc;",
        ">;",
        "Lcom/google/android/gms/internal/ads/zzdoe;"
    }
.end annotation


# static fields
.field public static final enum zzccf:Lcom/google/android/gms/internal/ads/zzwt$zzi$zzc;

.field public static final enum zzccg:Lcom/google/android/gms/internal/ads/zzwt$zzi$zzc;

.field public static final enum zzcch:Lcom/google/android/gms/internal/ads/zzwt$zzi$zzc;

.field public static final enum zzcci:Lcom/google/android/gms/internal/ads/zzwt$zzi$zzc;

.field public static final enum zzccj:Lcom/google/android/gms/internal/ads/zzwt$zzi$zzc;

.field public static final enum zzcck:Lcom/google/android/gms/internal/ads/zzwt$zzi$zzc;

.field private static final synthetic zzccl:[Lcom/google/android/gms/internal/ads/zzwt$zzi$zzc;

.field private static final zzeg:Lcom/google/android/gms/internal/ads/zzdof;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/ads/zzdof<",
            "Lcom/google/android/gms/internal/ads/zzwt$zzi$zzc;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final value:I


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .line 15
    new-instance v0, Lcom/google/android/gms/internal/ads/zzwt$zzi$zzc;

    const/4 v1, 0x0

    const-string v2, "UNSPECIFIED"

    invoke-direct {v0, v2, v1, v1}, Lcom/google/android/gms/internal/ads/zzwt$zzi$zzc;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/google/android/gms/internal/ads/zzwt$zzi$zzc;->zzccf:Lcom/google/android/gms/internal/ads/zzwt$zzi$zzc;

    .line 16
    new-instance v0, Lcom/google/android/gms/internal/ads/zzwt$zzi$zzc;

    const/4 v2, 0x1

    const-string v3, "CONNECTING"

    invoke-direct {v0, v3, v2, v2}, Lcom/google/android/gms/internal/ads/zzwt$zzi$zzc;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/google/android/gms/internal/ads/zzwt$zzi$zzc;->zzccg:Lcom/google/android/gms/internal/ads/zzwt$zzi$zzc;

    .line 17
    new-instance v0, Lcom/google/android/gms/internal/ads/zzwt$zzi$zzc;

    const/4 v3, 0x2

    const-string v4, "CONNECTED"

    invoke-direct {v0, v4, v3, v3}, Lcom/google/android/gms/internal/ads/zzwt$zzi$zzc;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/google/android/gms/internal/ads/zzwt$zzi$zzc;->zzcch:Lcom/google/android/gms/internal/ads/zzwt$zzi$zzc;

    .line 18
    new-instance v0, Lcom/google/android/gms/internal/ads/zzwt$zzi$zzc;

    const/4 v4, 0x3

    const-string v5, "DISCONNECTING"

    invoke-direct {v0, v5, v4, v4}, Lcom/google/android/gms/internal/ads/zzwt$zzi$zzc;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/google/android/gms/internal/ads/zzwt$zzi$zzc;->zzcci:Lcom/google/android/gms/internal/ads/zzwt$zzi$zzc;

    .line 19
    new-instance v0, Lcom/google/android/gms/internal/ads/zzwt$zzi$zzc;

    const/4 v5, 0x4

    const-string v6, "DISCONNECTED"

    invoke-direct {v0, v6, v5, v5}, Lcom/google/android/gms/internal/ads/zzwt$zzi$zzc;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/google/android/gms/internal/ads/zzwt$zzi$zzc;->zzccj:Lcom/google/android/gms/internal/ads/zzwt$zzi$zzc;

    .line 20
    new-instance v0, Lcom/google/android/gms/internal/ads/zzwt$zzi$zzc;

    const/4 v6, 0x5

    const-string v7, "SUSPENDED"

    invoke-direct {v0, v7, v6, v6}, Lcom/google/android/gms/internal/ads/zzwt$zzi$zzc;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/google/android/gms/internal/ads/zzwt$zzi$zzc;->zzcck:Lcom/google/android/gms/internal/ads/zzwt$zzi$zzc;

    const/4 v0, 0x6

    new-array v0, v0, [Lcom/google/android/gms/internal/ads/zzwt$zzi$zzc;

    .line 21
    sget-object v7, Lcom/google/android/gms/internal/ads/zzwt$zzi$zzc;->zzccf:Lcom/google/android/gms/internal/ads/zzwt$zzi$zzc;

    aput-object v7, v0, v1

    sget-object v1, Lcom/google/android/gms/internal/ads/zzwt$zzi$zzc;->zzccg:Lcom/google/android/gms/internal/ads/zzwt$zzi$zzc;

    aput-object v1, v0, v2

    sget-object v1, Lcom/google/android/gms/internal/ads/zzwt$zzi$zzc;->zzcch:Lcom/google/android/gms/internal/ads/zzwt$zzi$zzc;

    aput-object v1, v0, v3

    sget-object v1, Lcom/google/android/gms/internal/ads/zzwt$zzi$zzc;->zzcci:Lcom/google/android/gms/internal/ads/zzwt$zzi$zzc;

    aput-object v1, v0, v4

    sget-object v1, Lcom/google/android/gms/internal/ads/zzwt$zzi$zzc;->zzccj:Lcom/google/android/gms/internal/ads/zzwt$zzi$zzc;

    aput-object v1, v0, v5

    sget-object v1, Lcom/google/android/gms/internal/ads/zzwt$zzi$zzc;->zzcck:Lcom/google/android/gms/internal/ads/zzwt$zzi$zzc;

    aput-object v1, v0, v6

    sput-object v0, Lcom/google/android/gms/internal/ads/zzwt$zzi$zzc;->zzccl:[Lcom/google/android/gms/internal/ads/zzwt$zzi$zzc;

    .line 22
    new-instance v0, Lcom/google/android/gms/internal/ads/zzxf;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzxf;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/ads/zzwt$zzi$zzc;->zzeg:Lcom/google/android/gms/internal/ads/zzdof;

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
    iput p3, p0, Lcom/google/android/gms/internal/ads/zzwt$zzi$zzc;->value:I

    return-void
.end method

.method public static values()[Lcom/google/android/gms/internal/ads/zzwt$zzi$zzc;
    .locals 1

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/ads/zzwt$zzi$zzc;->zzccl:[Lcom/google/android/gms/internal/ads/zzwt$zzi$zzc;

    invoke-virtual {v0}, [Lcom/google/android/gms/internal/ads/zzwt$zzi$zzc;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/android/gms/internal/ads/zzwt$zzi$zzc;

    return-object v0
.end method

.method public static zzad()Lcom/google/android/gms/internal/ads/zzdog;
    .locals 1

    .line 11
    sget-object v0, Lcom/google/android/gms/internal/ads/zzxg;->zzei:Lcom/google/android/gms/internal/ads/zzdog;

    return-object v0
.end method

.method public static zzcj(I)Lcom/google/android/gms/internal/ads/zzwt$zzi$zzc;
    .locals 1

    if-eqz p0, :cond_5

    const/4 v0, 0x1

    if-eq p0, v0, :cond_4

    const/4 v0, 0x2

    if-eq p0, v0, :cond_3

    const/4 v0, 0x3

    if-eq p0, v0, :cond_2

    const/4 v0, 0x4

    if-eq p0, v0, :cond_1

    const/4 v0, 0x5

    if-eq p0, v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 9
    :cond_0
    sget-object p0, Lcom/google/android/gms/internal/ads/zzwt$zzi$zzc;->zzcck:Lcom/google/android/gms/internal/ads/zzwt$zzi$zzc;

    return-object p0

    .line 8
    :cond_1
    sget-object p0, Lcom/google/android/gms/internal/ads/zzwt$zzi$zzc;->zzccj:Lcom/google/android/gms/internal/ads/zzwt$zzi$zzc;

    return-object p0

    .line 7
    :cond_2
    sget-object p0, Lcom/google/android/gms/internal/ads/zzwt$zzi$zzc;->zzcci:Lcom/google/android/gms/internal/ads/zzwt$zzi$zzc;

    return-object p0

    .line 6
    :cond_3
    sget-object p0, Lcom/google/android/gms/internal/ads/zzwt$zzi$zzc;->zzcch:Lcom/google/android/gms/internal/ads/zzwt$zzi$zzc;

    return-object p0

    .line 5
    :cond_4
    sget-object p0, Lcom/google/android/gms/internal/ads/zzwt$zzi$zzc;->zzccg:Lcom/google/android/gms/internal/ads/zzwt$zzi$zzc;

    return-object p0

    .line 4
    :cond_5
    sget-object p0, Lcom/google/android/gms/internal/ads/zzwt$zzi$zzc;->zzccf:Lcom/google/android/gms/internal/ads/zzwt$zzi$zzc;

    return-object p0
.end method


# virtual methods
.method public final zzac()I
    .locals 1

    .line 2
    iget v0, p0, Lcom/google/android/gms/internal/ads/zzwt$zzi$zzc;->value:I

    return v0
.end method
