.class public final Lcom/google/android/gms/internal/ads/zzdrz$zzb$zzc;
.super Lcom/google/android/gms/internal/ads/zzdob;

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzdpm;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/ads/zzdrz$zzb;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "zzc"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/internal/ads/zzdrz$zzb$zzc$zza;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/ads/zzdob<",
        "Lcom/google/android/gms/internal/ads/zzdrz$zzb$zzc;",
        "Lcom/google/android/gms/internal/ads/zzdrz$zzb$zzc$zza;",
        ">;",
        "Lcom/google/android/gms/internal/ads/zzdpm;"
    }
.end annotation


# static fields
.field private static volatile zzdv:Lcom/google/android/gms/internal/ads/zzdpv;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/ads/zzdpv<",
            "Lcom/google/android/gms/internal/ads/zzdrz$zzb$zzc;",
            ">;"
        }
    .end annotation
.end field

.field private static final zzhpv:Lcom/google/android/gms/internal/ads/zzdrz$zzb$zzc;


# instance fields
.field private zzdj:I

.field private zzgua:Lcom/google/android/gms/internal/ads/zzdmr;

.field private zzhop:B

.field private zzhpu:Lcom/google/android/gms/internal/ads/zzdmr;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 27
    new-instance v0, Lcom/google/android/gms/internal/ads/zzdrz$zzb$zzc;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzdrz$zzb$zzc;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/ads/zzdrz$zzb$zzc;->zzhpv:Lcom/google/android/gms/internal/ads/zzdrz$zzb$zzc;

    .line 28
    const-class v0, Lcom/google/android/gms/internal/ads/zzdrz$zzb$zzc;

    sget-object v1, Lcom/google/android/gms/internal/ads/zzdrz$zzb$zzc;->zzhpv:Lcom/google/android/gms/internal/ads/zzdrz$zzb$zzc;

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/zzdob;->zza(Ljava/lang/Class;Lcom/google/android/gms/internal/ads/zzdob;)V

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzdob;-><init>()V

    const/4 v0, 0x2

    .line 2
    iput-byte v0, p0, Lcom/google/android/gms/internal/ads/zzdrz$zzb$zzc;->zzhop:B

    .line 3
    sget-object v0, Lcom/google/android/gms/internal/ads/zzdmr;->zzhcr:Lcom/google/android/gms/internal/ads/zzdmr;

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzdrz$zzb$zzc;->zzhpu:Lcom/google/android/gms/internal/ads/zzdmr;

    .line 4
    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzdrz$zzb$zzc;->zzgua:Lcom/google/android/gms/internal/ads/zzdmr;

    return-void
.end method

.method static synthetic zzbar()Lcom/google/android/gms/internal/ads/zzdrz$zzb$zzc;
    .locals 1

    .line 26
    sget-object v0, Lcom/google/android/gms/internal/ads/zzdrz$zzb$zzc;->zzhpv:Lcom/google/android/gms/internal/ads/zzdrz$zzb$zzc;

    return-object v0
.end method


# virtual methods
.method protected final zza(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .line 6
    sget-object p3, Lcom/google/android/gms/internal/ads/zzdsa;->zzdi:[I

    const/4 v0, 0x1

    sub-int/2addr p1, v0

    aget p1, p3, p1

    const/4 p3, 0x0

    const/4 v1, 0x0

    packed-switch p1, :pswitch_data_0

    .line 25
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

    .line 23
    iput-byte p1, p0, Lcom/google/android/gms/internal/ads/zzdrz$zzb$zzc;->zzhop:B

    return-object v1

    .line 22
    :pswitch_1
    iget-byte p1, p0, Lcom/google/android/gms/internal/ads/zzdrz$zzb$zzc;->zzhop:B

    invoke-static {p1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    return-object p1

    .line 13
    :pswitch_2
    sget-object p1, Lcom/google/android/gms/internal/ads/zzdrz$zzb$zzc;->zzdv:Lcom/google/android/gms/internal/ads/zzdpv;

    if-nez p1, :cond_2

    .line 15
    const-class p2, Lcom/google/android/gms/internal/ads/zzdrz$zzb$zzc;

    monitor-enter p2

    .line 16
    :try_start_0
    sget-object p1, Lcom/google/android/gms/internal/ads/zzdrz$zzb$zzc;->zzdv:Lcom/google/android/gms/internal/ads/zzdpv;

    if-nez p1, :cond_1

    .line 18
    new-instance p1, Lcom/google/android/gms/internal/ads/zzdob$zzb;

    sget-object p3, Lcom/google/android/gms/internal/ads/zzdrz$zzb$zzc;->zzhpv:Lcom/google/android/gms/internal/ads/zzdrz$zzb$zzc;

    invoke-direct {p1, p3}, Lcom/google/android/gms/internal/ads/zzdob$zzb;-><init>(Lcom/google/android/gms/internal/ads/zzdob;)V

    .line 19
    sput-object p1, Lcom/google/android/gms/internal/ads/zzdrz$zzb$zzc;->zzdv:Lcom/google/android/gms/internal/ads/zzdpv;

    .line 20
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

    .line 12
    :pswitch_3
    sget-object p1, Lcom/google/android/gms/internal/ads/zzdrz$zzb$zzc;->zzhpv:Lcom/google/android/gms/internal/ads/zzdrz$zzb$zzc;

    return-object p1

    :pswitch_4
    const/4 p1, 0x3

    new-array p1, p1, [Ljava/lang/Object;

    const-string/jumbo p2, "zzdj"

    aput-object p2, p1, p3

    const-string/jumbo p2, "zzhpu"

    aput-object p2, p1, v0

    const/4 p2, 0x2

    const-string/jumbo p3, "zzgua"

    aput-object p3, p1, p2

    .line 11
    sget-object p2, Lcom/google/android/gms/internal/ads/zzdrz$zzb$zzc;->zzhpv:Lcom/google/android/gms/internal/ads/zzdrz$zzb$zzc;

    const-string p3, "\u0001\u0002\u0000\u0001\u0001\u0002\u0002\u0000\u0000\u0001\u0001\u050a\u0000\u0002\n\u0001"

    invoke-static {p2, p3, p1}, Lcom/google/android/gms/internal/ads/zzdob;->zza(Lcom/google/android/gms/internal/ads/zzdpk;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 8
    :pswitch_5
    new-instance p1, Lcom/google/android/gms/internal/ads/zzdrz$zzb$zzc$zza;

    invoke-direct {p1, v1}, Lcom/google/android/gms/internal/ads/zzdrz$zzb$zzc$zza;-><init>(Lcom/google/android/gms/internal/ads/zzdsa;)V

    return-object p1

    .line 7
    :pswitch_6
    new-instance p1, Lcom/google/android/gms/internal/ads/zzdrz$zzb$zzc;

    invoke-direct {p1}, Lcom/google/android/gms/internal/ads/zzdrz$zzb$zzc;-><init>()V

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
