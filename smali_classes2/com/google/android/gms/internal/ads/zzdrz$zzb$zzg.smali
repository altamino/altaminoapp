.class public final enum Lcom/google/android/gms/internal/ads/zzdrz$zzb$zzg;
.super Ljava/lang/Enum;

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzdoe;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/ads/zzdrz$zzb;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "zzg"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/google/android/gms/internal/ads/zzdrz$zzb$zzg;",
        ">;",
        "Lcom/google/android/gms/internal/ads/zzdoe;"
    }
.end annotation


# static fields
.field private static final zzeg:Lcom/google/android/gms/internal/ads/zzdof;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/ads/zzdof<",
            "Lcom/google/android/gms/internal/ads/zzdrz$zzb$zzg;",
            ">;"
        }
    .end annotation
.end field

.field private static final enum zzhqs:Lcom/google/android/gms/internal/ads/zzdrz$zzb$zzg;

.field private static final enum zzhqt:Lcom/google/android/gms/internal/ads/zzdrz$zzb$zzg;

.field private static final enum zzhqu:Lcom/google/android/gms/internal/ads/zzdrz$zzb$zzg;

.field private static final enum zzhqv:Lcom/google/android/gms/internal/ads/zzdrz$zzb$zzg;

.field private static final enum zzhqw:Lcom/google/android/gms/internal/ads/zzdrz$zzb$zzg;

.field private static final enum zzhqx:Lcom/google/android/gms/internal/ads/zzdrz$zzb$zzg;

.field private static final enum zzhqy:Lcom/google/android/gms/internal/ads/zzdrz$zzb$zzg;

.field private static final enum zzhqz:Lcom/google/android/gms/internal/ads/zzdrz$zzb$zzg;

.field private static final enum zzhra:Lcom/google/android/gms/internal/ads/zzdrz$zzb$zzg;

.field private static final enum zzhrb:Lcom/google/android/gms/internal/ads/zzdrz$zzb$zzg;

.field private static final synthetic zzhrc:[Lcom/google/android/gms/internal/ads/zzdrz$zzb$zzg;


# instance fields
.field private final value:I


# direct methods
.method static constructor <clinit>()V
    .locals 12

    .line 19
    new-instance v0, Lcom/google/android/gms/internal/ads/zzdrz$zzb$zzg;

    const/4 v1, 0x0

    const-string v2, "UNKNOWN"

    invoke-direct {v0, v2, v1, v1}, Lcom/google/android/gms/internal/ads/zzdrz$zzb$zzg;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/google/android/gms/internal/ads/zzdrz$zzb$zzg;->zzhqs:Lcom/google/android/gms/internal/ads/zzdrz$zzb$zzg;

    .line 20
    new-instance v0, Lcom/google/android/gms/internal/ads/zzdrz$zzb$zzg;

    const/4 v2, 0x1

    const-string v3, "URL_PHISHING"

    invoke-direct {v0, v3, v2, v2}, Lcom/google/android/gms/internal/ads/zzdrz$zzb$zzg;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/google/android/gms/internal/ads/zzdrz$zzb$zzg;->zzhqt:Lcom/google/android/gms/internal/ads/zzdrz$zzb$zzg;

    .line 21
    new-instance v0, Lcom/google/android/gms/internal/ads/zzdrz$zzb$zzg;

    const/4 v3, 0x2

    const-string v4, "URL_MALWARE"

    invoke-direct {v0, v4, v3, v3}, Lcom/google/android/gms/internal/ads/zzdrz$zzb$zzg;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/google/android/gms/internal/ads/zzdrz$zzb$zzg;->zzhqu:Lcom/google/android/gms/internal/ads/zzdrz$zzb$zzg;

    .line 22
    new-instance v0, Lcom/google/android/gms/internal/ads/zzdrz$zzb$zzg;

    const/4 v4, 0x3

    const-string v5, "URL_UNWANTED"

    invoke-direct {v0, v5, v4, v4}, Lcom/google/android/gms/internal/ads/zzdrz$zzb$zzg;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/google/android/gms/internal/ads/zzdrz$zzb$zzg;->zzhqv:Lcom/google/android/gms/internal/ads/zzdrz$zzb$zzg;

    .line 23
    new-instance v0, Lcom/google/android/gms/internal/ads/zzdrz$zzb$zzg;

    const/4 v5, 0x4

    const-string v6, "CLIENT_SIDE_PHISHING_URL"

    invoke-direct {v0, v6, v5, v5}, Lcom/google/android/gms/internal/ads/zzdrz$zzb$zzg;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/google/android/gms/internal/ads/zzdrz$zzb$zzg;->zzhqw:Lcom/google/android/gms/internal/ads/zzdrz$zzb$zzg;

    .line 24
    new-instance v0, Lcom/google/android/gms/internal/ads/zzdrz$zzb$zzg;

    const/4 v6, 0x5

    const-string v7, "CLIENT_SIDE_MALWARE_URL"

    invoke-direct {v0, v7, v6, v6}, Lcom/google/android/gms/internal/ads/zzdrz$zzb$zzg;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/google/android/gms/internal/ads/zzdrz$zzb$zzg;->zzhqx:Lcom/google/android/gms/internal/ads/zzdrz$zzb$zzg;

    .line 25
    new-instance v0, Lcom/google/android/gms/internal/ads/zzdrz$zzb$zzg;

    const/4 v7, 0x6

    const-string v8, "DANGEROUS_DOWNLOAD_RECOVERY"

    invoke-direct {v0, v8, v7, v7}, Lcom/google/android/gms/internal/ads/zzdrz$zzb$zzg;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/google/android/gms/internal/ads/zzdrz$zzb$zzg;->zzhqy:Lcom/google/android/gms/internal/ads/zzdrz$zzb$zzg;

    .line 26
    new-instance v0, Lcom/google/android/gms/internal/ads/zzdrz$zzb$zzg;

    const/4 v8, 0x7

    const-string v9, "DANGEROUS_DOWNLOAD_WARNING"

    invoke-direct {v0, v9, v8, v8}, Lcom/google/android/gms/internal/ads/zzdrz$zzb$zzg;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/google/android/gms/internal/ads/zzdrz$zzb$zzg;->zzhqz:Lcom/google/android/gms/internal/ads/zzdrz$zzb$zzg;

    .line 27
    new-instance v0, Lcom/google/android/gms/internal/ads/zzdrz$zzb$zzg;

    const/16 v9, 0x8

    const-string v10, "OCTAGON_AD"

    invoke-direct {v0, v10, v9, v9}, Lcom/google/android/gms/internal/ads/zzdrz$zzb$zzg;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/google/android/gms/internal/ads/zzdrz$zzb$zzg;->zzhra:Lcom/google/android/gms/internal/ads/zzdrz$zzb$zzg;

    .line 28
    new-instance v0, Lcom/google/android/gms/internal/ads/zzdrz$zzb$zzg;

    const/16 v10, 0x9

    const-string v11, "OCTAGON_AD_SB_MATCH"

    invoke-direct {v0, v11, v10, v10}, Lcom/google/android/gms/internal/ads/zzdrz$zzb$zzg;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/google/android/gms/internal/ads/zzdrz$zzb$zzg;->zzhrb:Lcom/google/android/gms/internal/ads/zzdrz$zzb$zzg;

    const/16 v0, 0xa

    new-array v0, v0, [Lcom/google/android/gms/internal/ads/zzdrz$zzb$zzg;

    .line 29
    sget-object v11, Lcom/google/android/gms/internal/ads/zzdrz$zzb$zzg;->zzhqs:Lcom/google/android/gms/internal/ads/zzdrz$zzb$zzg;

    aput-object v11, v0, v1

    sget-object v1, Lcom/google/android/gms/internal/ads/zzdrz$zzb$zzg;->zzhqt:Lcom/google/android/gms/internal/ads/zzdrz$zzb$zzg;

    aput-object v1, v0, v2

    sget-object v1, Lcom/google/android/gms/internal/ads/zzdrz$zzb$zzg;->zzhqu:Lcom/google/android/gms/internal/ads/zzdrz$zzb$zzg;

    aput-object v1, v0, v3

    sget-object v1, Lcom/google/android/gms/internal/ads/zzdrz$zzb$zzg;->zzhqv:Lcom/google/android/gms/internal/ads/zzdrz$zzb$zzg;

    aput-object v1, v0, v4

    sget-object v1, Lcom/google/android/gms/internal/ads/zzdrz$zzb$zzg;->zzhqw:Lcom/google/android/gms/internal/ads/zzdrz$zzb$zzg;

    aput-object v1, v0, v5

    sget-object v1, Lcom/google/android/gms/internal/ads/zzdrz$zzb$zzg;->zzhqx:Lcom/google/android/gms/internal/ads/zzdrz$zzb$zzg;

    aput-object v1, v0, v6

    sget-object v1, Lcom/google/android/gms/internal/ads/zzdrz$zzb$zzg;->zzhqy:Lcom/google/android/gms/internal/ads/zzdrz$zzb$zzg;

    aput-object v1, v0, v7

    sget-object v1, Lcom/google/android/gms/internal/ads/zzdrz$zzb$zzg;->zzhqz:Lcom/google/android/gms/internal/ads/zzdrz$zzb$zzg;

    aput-object v1, v0, v8

    sget-object v1, Lcom/google/android/gms/internal/ads/zzdrz$zzb$zzg;->zzhra:Lcom/google/android/gms/internal/ads/zzdrz$zzb$zzg;

    aput-object v1, v0, v9

    sget-object v1, Lcom/google/android/gms/internal/ads/zzdrz$zzb$zzg;->zzhrb:Lcom/google/android/gms/internal/ads/zzdrz$zzb$zzg;

    aput-object v1, v0, v10

    sput-object v0, Lcom/google/android/gms/internal/ads/zzdrz$zzb$zzg;->zzhrc:[Lcom/google/android/gms/internal/ads/zzdrz$zzb$zzg;

    .line 30
    new-instance v0, Lcom/google/android/gms/internal/ads/zzdsf;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzdsf;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/ads/zzdrz$zzb$zzg;->zzeg:Lcom/google/android/gms/internal/ads/zzdof;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 16
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 17
    iput p3, p0, Lcom/google/android/gms/internal/ads/zzdrz$zzb$zzg;->value:I

    return-void
.end method

.method public static values()[Lcom/google/android/gms/internal/ads/zzdrz$zzb$zzg;
    .locals 1

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/ads/zzdrz$zzb$zzg;->zzhrc:[Lcom/google/android/gms/internal/ads/zzdrz$zzb$zzg;

    invoke-virtual {v0}, [Lcom/google/android/gms/internal/ads/zzdrz$zzb$zzg;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/android/gms/internal/ads/zzdrz$zzb$zzg;

    return-object v0
.end method

.method public static zzad()Lcom/google/android/gms/internal/ads/zzdog;
    .locals 1

    .line 15
    sget-object v0, Lcom/google/android/gms/internal/ads/zzdsg;->zzei:Lcom/google/android/gms/internal/ads/zzdog;

    return-object v0
.end method

.method public static zzhi(I)Lcom/google/android/gms/internal/ads/zzdrz$zzb$zzg;
    .locals 0

    packed-switch p0, :pswitch_data_0

    const/4 p0, 0x0

    return-object p0

    .line 13
    :pswitch_0
    sget-object p0, Lcom/google/android/gms/internal/ads/zzdrz$zzb$zzg;->zzhrb:Lcom/google/android/gms/internal/ads/zzdrz$zzb$zzg;

    return-object p0

    .line 12
    :pswitch_1
    sget-object p0, Lcom/google/android/gms/internal/ads/zzdrz$zzb$zzg;->zzhra:Lcom/google/android/gms/internal/ads/zzdrz$zzb$zzg;

    return-object p0

    .line 11
    :pswitch_2
    sget-object p0, Lcom/google/android/gms/internal/ads/zzdrz$zzb$zzg;->zzhqz:Lcom/google/android/gms/internal/ads/zzdrz$zzb$zzg;

    return-object p0

    .line 10
    :pswitch_3
    sget-object p0, Lcom/google/android/gms/internal/ads/zzdrz$zzb$zzg;->zzhqy:Lcom/google/android/gms/internal/ads/zzdrz$zzb$zzg;

    return-object p0

    .line 9
    :pswitch_4
    sget-object p0, Lcom/google/android/gms/internal/ads/zzdrz$zzb$zzg;->zzhqx:Lcom/google/android/gms/internal/ads/zzdrz$zzb$zzg;

    return-object p0

    .line 8
    :pswitch_5
    sget-object p0, Lcom/google/android/gms/internal/ads/zzdrz$zzb$zzg;->zzhqw:Lcom/google/android/gms/internal/ads/zzdrz$zzb$zzg;

    return-object p0

    .line 7
    :pswitch_6
    sget-object p0, Lcom/google/android/gms/internal/ads/zzdrz$zzb$zzg;->zzhqv:Lcom/google/android/gms/internal/ads/zzdrz$zzb$zzg;

    return-object p0

    .line 6
    :pswitch_7
    sget-object p0, Lcom/google/android/gms/internal/ads/zzdrz$zzb$zzg;->zzhqu:Lcom/google/android/gms/internal/ads/zzdrz$zzb$zzg;

    return-object p0

    .line 5
    :pswitch_8
    sget-object p0, Lcom/google/android/gms/internal/ads/zzdrz$zzb$zzg;->zzhqt:Lcom/google/android/gms/internal/ads/zzdrz$zzb$zzg;

    return-object p0

    .line 4
    :pswitch_9
    sget-object p0, Lcom/google/android/gms/internal/ads/zzdrz$zzb$zzg;->zzhqs:Lcom/google/android/gms/internal/ads/zzdrz$zzb$zzg;

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public final zzac()I
    .locals 1

    .line 2
    iget v0, p0, Lcom/google/android/gms/internal/ads/zzdrz$zzb$zzg;->value:I

    return v0
.end method
