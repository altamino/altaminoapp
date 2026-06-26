.class public final Lcom/google/android/gms/internal/ads/zzdrz$zzb$zzh;
.super Lcom/google/android/gms/internal/ads/zzdob;

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzdpm;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/ads/zzdrz$zzb;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "zzh"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/internal/ads/zzdrz$zzb$zzh$zzb;,
        Lcom/google/android/gms/internal/ads/zzdrz$zzb$zzh$zza;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/ads/zzdob<",
        "Lcom/google/android/gms/internal/ads/zzdrz$zzb$zzh;",
        "Lcom/google/android/gms/internal/ads/zzdrz$zzb$zzh$zzb;",
        ">;",
        "Lcom/google/android/gms/internal/ads/zzdpm;"
    }
.end annotation


# static fields
.field private static volatile zzdv:Lcom/google/android/gms/internal/ads/zzdpv;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/ads/zzdpv<",
            "Lcom/google/android/gms/internal/ads/zzdrz$zzb$zzh;",
            ">;"
        }
    .end annotation
.end field

.field private static final zzhrl:Lcom/google/android/gms/internal/ads/zzdrz$zzb$zzh;


# instance fields
.field private zzdj:I

.field private zzhop:B

.field private zzhos:Ljava/lang/String;

.field private zzhrd:I

.field private zzhre:Lcom/google/android/gms/internal/ads/zzdrz$zzb$zzd;

.field private zzhrf:Lcom/google/android/gms/internal/ads/zzdrz$zzb$zze;

.field private zzhrg:I

.field private zzhrh:Lcom/google/android/gms/internal/ads/zzdoh;

.field private zzhri:Ljava/lang/String;

.field private zzhrj:I

.field private zzhrk:Lcom/google/android/gms/internal/ads/zzdoj;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/ads/zzdoj<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 30
    new-instance v0, Lcom/google/android/gms/internal/ads/zzdrz$zzb$zzh;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzdrz$zzb$zzh;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/ads/zzdrz$zzb$zzh;->zzhrl:Lcom/google/android/gms/internal/ads/zzdrz$zzb$zzh;

    .line 31
    const-class v0, Lcom/google/android/gms/internal/ads/zzdrz$zzb$zzh;

    sget-object v1, Lcom/google/android/gms/internal/ads/zzdrz$zzb$zzh;->zzhrl:Lcom/google/android/gms/internal/ads/zzdrz$zzb$zzh;

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/zzdob;->zza(Ljava/lang/Class;Lcom/google/android/gms/internal/ads/zzdob;)V

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzdob;-><init>()V

    const/4 v0, 0x2

    .line 2
    iput-byte v0, p0, Lcom/google/android/gms/internal/ads/zzdrz$zzb$zzh;->zzhop:B

    const-string v0, ""

    .line 3
    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzdrz$zzb$zzh;->zzhos:Ljava/lang/String;

    .line 4
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzdob;->zzaxr()Lcom/google/android/gms/internal/ads/zzdoh;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/gms/internal/ads/zzdrz$zzb$zzh;->zzhrh:Lcom/google/android/gms/internal/ads/zzdoh;

    .line 5
    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzdrz$zzb$zzh;->zzhri:Ljava/lang/String;

    .line 6
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzdob;->zzaxs()Lcom/google/android/gms/internal/ads/zzdoj;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzdrz$zzb$zzh;->zzhrk:Lcom/google/android/gms/internal/ads/zzdoj;

    return-void
.end method

.method static synthetic zzbax()Lcom/google/android/gms/internal/ads/zzdrz$zzb$zzh;
    .locals 1

    .line 29
    sget-object v0, Lcom/google/android/gms/internal/ads/zzdrz$zzb$zzh;->zzhrl:Lcom/google/android/gms/internal/ads/zzdrz$zzb$zzh;

    return-object v0
.end method


# virtual methods
.method protected final zza(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .line 8
    sget-object p3, Lcom/google/android/gms/internal/ads/zzdsa;->zzdi:[I

    const/4 v0, 0x1

    sub-int/2addr p1, v0

    aget p1, p3, p1

    const/4 p3, 0x0

    const/4 v1, 0x0

    packed-switch p1, :pswitch_data_0

    .line 28
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1

    :pswitch_0
    if-nez p2, :cond_0

    goto :goto_0

    :cond_0
    const/4 p3, 0x1

    :goto_0
    int-to-byte p1, p3

    .line 26
    iput-byte p1, p0, Lcom/google/android/gms/internal/ads/zzdrz$zzb$zzh;->zzhop:B

    return-object v1

    .line 25
    :pswitch_1
    iget-byte p1, p0, Lcom/google/android/gms/internal/ads/zzdrz$zzb$zzh;->zzhop:B

    invoke-static {p1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    return-object p1

    .line 16
    :pswitch_2
    sget-object p1, Lcom/google/android/gms/internal/ads/zzdrz$zzb$zzh;->zzdv:Lcom/google/android/gms/internal/ads/zzdpv;

    if-nez p1, :cond_2

    .line 18
    const-class p2, Lcom/google/android/gms/internal/ads/zzdrz$zzb$zzh;

    monitor-enter p2

    .line 19
    :try_start_0
    sget-object p1, Lcom/google/android/gms/internal/ads/zzdrz$zzb$zzh;->zzdv:Lcom/google/android/gms/internal/ads/zzdpv;

    if-nez p1, :cond_1

    .line 21
    new-instance p1, Lcom/google/android/gms/internal/ads/zzdob$zzb;

    sget-object p3, Lcom/google/android/gms/internal/ads/zzdrz$zzb$zzh;->zzhrl:Lcom/google/android/gms/internal/ads/zzdrz$zzb$zzh;

    invoke-direct {p1, p3}, Lcom/google/android/gms/internal/ads/zzdob$zzb;-><init>(Lcom/google/android/gms/internal/ads/zzdob;)V

    .line 22
    sput-object p1, Lcom/google/android/gms/internal/ads/zzdrz$zzb$zzh;->zzdv:Lcom/google/android/gms/internal/ads/zzdpv;

    .line 23
    :cond_1
    monitor-exit p2

    goto :goto_1

    :catchall_0
    move-exception p1

    monitor-exit p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    :cond_2
    :goto_1
    return-object p1

    .line 15
    :pswitch_3
    sget-object p1, Lcom/google/android/gms/internal/ads/zzdrz$zzb$zzh;->zzhrl:Lcom/google/android/gms/internal/ads/zzdrz$zzb$zzh;

    return-object p1

    :pswitch_4
    const/16 p1, 0xb

    new-array p1, p1, [Ljava/lang/Object;

    const-string/jumbo p2, "zzdj"

    aput-object p2, p1, p3

    const-string/jumbo p2, "zzhrd"

    aput-object p2, p1, v0

    const/4 p2, 0x2

    const-string/jumbo p3, "zzhos"

    aput-object p3, p1, p2

    const/4 p2, 0x3

    const-string/jumbo p3, "zzhre"

    aput-object p3, p1, p2

    const/4 p2, 0x4

    const-string/jumbo p3, "zzhrf"

    aput-object p3, p1, p2

    const/4 p2, 0x5

    const-string/jumbo p3, "zzhrg"

    aput-object p3, p1, p2

    const/4 p2, 0x6

    const-string/jumbo p3, "zzhrh"

    aput-object p3, p1, p2

    const/4 p2, 0x7

    const-string/jumbo p3, "zzhri"

    aput-object p3, p1, p2

    const/16 p2, 0x8

    const-string/jumbo p3, "zzhrj"

    aput-object p3, p1, p2

    const/16 p2, 0x9

    .line 12
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzdrz$zzb$zzh$zza;->zzad()Lcom/google/android/gms/internal/ads/zzdog;

    move-result-object p3

    aput-object p3, p1, p2

    const/16 p2, 0xa

    const-string/jumbo p3, "zzhrk"

    aput-object p3, p1, p2

    .line 14
    sget-object p2, Lcom/google/android/gms/internal/ads/zzdrz$zzb$zzh;->zzhrl:Lcom/google/android/gms/internal/ads/zzdrz$zzb$zzh;

    const-string p3, "\u0001\t\u0000\u0001\u0001\t\t\u0000\u0002\u0003\u0001\u0504\u0000\u0002\u0008\u0001\u0003\u0409\u0002\u0004\u0409\u0003\u0005\u0004\u0004\u0006\u0016\u0007\u0008\u0005\u0008\u000c\u0006\t\u001a"

    invoke-static {p2, p3, p1}, Lcom/google/android/gms/internal/ads/zzdob;->zza(Lcom/google/android/gms/internal/ads/zzdpk;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 10
    :pswitch_5
    new-instance p1, Lcom/google/android/gms/internal/ads/zzdrz$zzb$zzh$zzb;

    invoke-direct {p1, v1}, Lcom/google/android/gms/internal/ads/zzdrz$zzb$zzh$zzb;-><init>(Lcom/google/android/gms/internal/ads/zzdsa;)V

    return-object p1

    .line 9
    :pswitch_6
    new-instance p1, Lcom/google/android/gms/internal/ads/zzdrz$zzb$zzh;

    invoke-direct {p1}, Lcom/google/android/gms/internal/ads/zzdrz$zzb$zzh;-><init>()V

    return-object p1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
