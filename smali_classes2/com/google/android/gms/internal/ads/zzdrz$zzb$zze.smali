.class public final Lcom/google/android/gms/internal/ads/zzdrz$zzb$zze;
.super Lcom/google/android/gms/internal/ads/zzdob;

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzdpm;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/ads/zzdrz$zzb;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "zze"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/internal/ads/zzdrz$zzb$zze$zza;,
        Lcom/google/android/gms/internal/ads/zzdrz$zzb$zze$zzb;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/ads/zzdob<",
        "Lcom/google/android/gms/internal/ads/zzdrz$zzb$zze;",
        "Lcom/google/android/gms/internal/ads/zzdrz$zzb$zze$zza;",
        ">;",
        "Lcom/google/android/gms/internal/ads/zzdpm;"
    }
.end annotation


# static fields
.field private static volatile zzdv:Lcom/google/android/gms/internal/ads/zzdpv;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/ads/zzdpv<",
            "Lcom/google/android/gms/internal/ads/zzdrz$zzb$zze;",
            ">;"
        }
    .end annotation
.end field

.field private static final zzhqi:Lcom/google/android/gms/internal/ads/zzdrz$zzb$zze;


# instance fields
.field private zzdj:I

.field private zzhop:B

.field private zzhpx:Lcom/google/android/gms/internal/ads/zzdoj;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/ads/zzdoj<",
            "Lcom/google/android/gms/internal/ads/zzdrz$zzb$zzc;",
            ">;"
        }
    .end annotation
.end field

.field private zzhpy:Lcom/google/android/gms/internal/ads/zzdmr;

.field private zzhpz:Lcom/google/android/gms/internal/ads/zzdmr;

.field private zzhqa:I

.field private zzhqg:Lcom/google/android/gms/internal/ads/zzdrz$zzb$zze$zzb;

.field private zzhqh:Lcom/google/android/gms/internal/ads/zzdmr;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 29
    new-instance v0, Lcom/google/android/gms/internal/ads/zzdrz$zzb$zze;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzdrz$zzb$zze;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/ads/zzdrz$zzb$zze;->zzhqi:Lcom/google/android/gms/internal/ads/zzdrz$zzb$zze;

    .line 30
    const-class v0, Lcom/google/android/gms/internal/ads/zzdrz$zzb$zze;

    sget-object v1, Lcom/google/android/gms/internal/ads/zzdrz$zzb$zze;->zzhqi:Lcom/google/android/gms/internal/ads/zzdrz$zzb$zze;

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/zzdob;->zza(Ljava/lang/Class;Lcom/google/android/gms/internal/ads/zzdob;)V

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzdob;-><init>()V

    const/4 v0, 0x2

    .line 2
    iput-byte v0, p0, Lcom/google/android/gms/internal/ads/zzdrz$zzb$zze;->zzhop:B

    .line 3
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzdob;->zzaxs()Lcom/google/android/gms/internal/ads/zzdoj;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzdrz$zzb$zze;->zzhpx:Lcom/google/android/gms/internal/ads/zzdoj;

    .line 4
    sget-object v0, Lcom/google/android/gms/internal/ads/zzdmr;->zzhcr:Lcom/google/android/gms/internal/ads/zzdmr;

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzdrz$zzb$zze;->zzhpy:Lcom/google/android/gms/internal/ads/zzdmr;

    .line 5
    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzdrz$zzb$zze;->zzhpz:Lcom/google/android/gms/internal/ads/zzdmr;

    .line 6
    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzdrz$zzb$zze;->zzhqh:Lcom/google/android/gms/internal/ads/zzdmr;

    return-void
.end method

.method static synthetic zzbau()Lcom/google/android/gms/internal/ads/zzdrz$zzb$zze;
    .locals 1

    .line 28
    sget-object v0, Lcom/google/android/gms/internal/ads/zzdrz$zzb$zze;->zzhqi:Lcom/google/android/gms/internal/ads/zzdrz$zzb$zze;

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

    .line 27
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

    .line 25
    iput-byte p1, p0, Lcom/google/android/gms/internal/ads/zzdrz$zzb$zze;->zzhop:B

    return-object v1

    .line 24
    :pswitch_1
    iget-byte p1, p0, Lcom/google/android/gms/internal/ads/zzdrz$zzb$zze;->zzhop:B

    invoke-static {p1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    return-object p1

    .line 15
    :pswitch_2
    sget-object p1, Lcom/google/android/gms/internal/ads/zzdrz$zzb$zze;->zzdv:Lcom/google/android/gms/internal/ads/zzdpv;

    if-nez p1, :cond_2

    .line 17
    const-class p2, Lcom/google/android/gms/internal/ads/zzdrz$zzb$zze;

    monitor-enter p2

    .line 18
    :try_start_0
    sget-object p1, Lcom/google/android/gms/internal/ads/zzdrz$zzb$zze;->zzdv:Lcom/google/android/gms/internal/ads/zzdpv;

    if-nez p1, :cond_1

    .line 20
    new-instance p1, Lcom/google/android/gms/internal/ads/zzdob$zzb;

    sget-object p3, Lcom/google/android/gms/internal/ads/zzdrz$zzb$zze;->zzhqi:Lcom/google/android/gms/internal/ads/zzdrz$zzb$zze;

    invoke-direct {p1, p3}, Lcom/google/android/gms/internal/ads/zzdob$zzb;-><init>(Lcom/google/android/gms/internal/ads/zzdob;)V

    .line 21
    sput-object p1, Lcom/google/android/gms/internal/ads/zzdrz$zzb$zze;->zzdv:Lcom/google/android/gms/internal/ads/zzdpv;

    .line 22
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

    .line 14
    :pswitch_3
    sget-object p1, Lcom/google/android/gms/internal/ads/zzdrz$zzb$zze;->zzhqi:Lcom/google/android/gms/internal/ads/zzdrz$zzb$zze;

    return-object p1

    :pswitch_4
    const/16 p1, 0x8

    new-array p1, p1, [Ljava/lang/Object;

    const-string/jumbo p2, "zzdj"

    aput-object p2, p1, p3

    const-string/jumbo p2, "zzhqg"

    aput-object p2, p1, v0

    const/4 p2, 0x2

    const-string/jumbo p3, "zzhpx"

    aput-object p3, p1, p2

    const/4 p2, 0x3

    .line 11
    const-class p3, Lcom/google/android/gms/internal/ads/zzdrz$zzb$zzc;

    aput-object p3, p1, p2

    const/4 p2, 0x4

    const-string/jumbo p3, "zzhpy"

    aput-object p3, p1, p2

    const/4 p2, 0x5

    const-string/jumbo p3, "zzhpz"

    aput-object p3, p1, p2

    const/4 p2, 0x6

    const-string/jumbo p3, "zzhqa"

    aput-object p3, p1, p2

    const/4 p2, 0x7

    const-string/jumbo p3, "zzhqh"

    aput-object p3, p1, p2

    .line 13
    sget-object p2, Lcom/google/android/gms/internal/ads/zzdrz$zzb$zze;->zzhqi:Lcom/google/android/gms/internal/ads/zzdrz$zzb$zze;

    const-string p3, "\u0001\u0006\u0000\u0001\u0001\u0006\u0006\u0000\u0001\u0001\u0001\t\u0000\u0002\u041b\u0003\n\u0001\u0004\n\u0002\u0005\u0004\u0003\u0006\n\u0004"

    invoke-static {p2, p3, p1}, Lcom/google/android/gms/internal/ads/zzdob;->zza(Lcom/google/android/gms/internal/ads/zzdpk;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 10
    :pswitch_5
    new-instance p1, Lcom/google/android/gms/internal/ads/zzdrz$zzb$zze$zza;

    invoke-direct {p1, v1}, Lcom/google/android/gms/internal/ads/zzdrz$zzb$zze$zza;-><init>(Lcom/google/android/gms/internal/ads/zzdsa;)V

    return-object p1

    .line 9
    :pswitch_6
    new-instance p1, Lcom/google/android/gms/internal/ads/zzdrz$zzb$zze;

    invoke-direct {p1}, Lcom/google/android/gms/internal/ads/zzdrz$zzb$zze;-><init>()V

    return-object p1

    nop

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
