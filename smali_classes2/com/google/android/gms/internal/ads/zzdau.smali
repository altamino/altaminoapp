.class public final Lcom/google/android/gms/internal/ads/zzdau;
.super Lcom/google/android/gms/internal/ads/zzdob;

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzdpm;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/internal/ads/zzdau$zza;,
        Lcom/google/android/gms/internal/ads/zzdau$zzb;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/ads/zzdob<",
        "Lcom/google/android/gms/internal/ads/zzdau;",
        "Lcom/google/android/gms/internal/ads/zzdau$zza;",
        ">;",
        "Lcom/google/android/gms/internal/ads/zzdpm;"
    }
.end annotation


# static fields
.field private static volatile zzdv:Lcom/google/android/gms/internal/ads/zzdpv;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/ads/zzdpv<",
            "Lcom/google/android/gms/internal/ads/zzdau;",
            ">;"
        }
    .end annotation
.end field

.field private static final zzgoq:Lcom/google/android/gms/internal/ads/zzdau;


# instance fields
.field private zzdj:I

.field private zzdk:Ljava/lang/String;

.field private zzgon:I

.field private zzgoo:Ljava/lang/String;

.field private zzgop:Lcom/google/android/gms/internal/ads/zzdap;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 47
    new-instance v0, Lcom/google/android/gms/internal/ads/zzdau;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzdau;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/ads/zzdau;->zzgoq:Lcom/google/android/gms/internal/ads/zzdau;

    .line 48
    const-class v0, Lcom/google/android/gms/internal/ads/zzdau;

    sget-object v1, Lcom/google/android/gms/internal/ads/zzdau;->zzgoq:Lcom/google/android/gms/internal/ads/zzdau;

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/zzdob;->zza(Ljava/lang/Class;Lcom/google/android/gms/internal/ads/zzdob;)V

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzdob;-><init>()V

    const-string v0, ""

    .line 2
    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzdau;->zzdk:Ljava/lang/String;

    .line 3
    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzdau;->zzgoo:Ljava/lang/String;

    return-void
.end method

.method private final zza(Lcom/google/android/gms/internal/ads/zzdap$zzb;)V
    .locals 0

    .line 15
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzdob$zza;->zzaya()Lcom/google/android/gms/internal/ads/zzdpk;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/ads/zzdap;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzdau;->zzgop:Lcom/google/android/gms/internal/ads/zzdap;

    .line 16
    iget p1, p0, Lcom/google/android/gms/internal/ads/zzdau;->zzdj:I

    or-int/lit8 p1, p1, 0x8

    iput p1, p0, Lcom/google/android/gms/internal/ads/zzdau;->zzdj:I

    return-void
.end method

.method private final zza(Lcom/google/android/gms/internal/ads/zzdau$zzb;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 7
    iget v0, p0, Lcom/google/android/gms/internal/ads/zzdau;->zzdj:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzdau;->zzdj:I

    .line 8
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzdau$zzb;->zzac()I

    move-result p1

    iput p1, p0, Lcom/google/android/gms/internal/ads/zzdau;->zzgon:I

    return-void

    .line 6
    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    invoke-direct {p1}, Ljava/lang/NullPointerException;-><init>()V

    throw p1
.end method

.method static synthetic zza(Lcom/google/android/gms/internal/ads/zzdau;Lcom/google/android/gms/internal/ads/zzdap$zzb;)V
    .locals 0

    .line 46
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzdau;->zza(Lcom/google/android/gms/internal/ads/zzdap$zzb;)V

    return-void
.end method

.method static synthetic zza(Lcom/google/android/gms/internal/ads/zzdau;Lcom/google/android/gms/internal/ads/zzdau$zzb;)V
    .locals 0

    .line 44
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzdau;->zza(Lcom/google/android/gms/internal/ads/zzdau$zzb;)V

    return-void
.end method

.method static synthetic zza(Lcom/google/android/gms/internal/ads/zzdau;Ljava/lang/String;)V
    .locals 0

    .line 45
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzdau;->zzi(Ljava/lang/String;)V

    return-void
.end method

.method public static zzank()Lcom/google/android/gms/internal/ads/zzdau$zza;
    .locals 3

    .line 18
    sget-object v0, Lcom/google/android/gms/internal/ads/zzdau;->zzgoq:Lcom/google/android/gms/internal/ads/zzdau;

    .line 19
    sget v1, Lcom/google/android/gms/internal/ads/zzdob$zze;->zzhho:I

    const/4 v2, 0x0

    .line 20
    invoke-virtual {v0, v1, v2, v2}, Lcom/google/android/gms/internal/ads/zzdau;->zza(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 22
    check-cast v0, Lcom/google/android/gms/internal/ads/zzdau$zza;

    return-object v0
.end method

.method static synthetic zzanl()Lcom/google/android/gms/internal/ads/zzdau;
    .locals 1

    .line 43
    sget-object v0, Lcom/google/android/gms/internal/ads/zzdau;->zzgoq:Lcom/google/android/gms/internal/ads/zzdau;

    return-object v0
.end method

.method private final zzi(Ljava/lang/String;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 12
    iget v0, p0, Lcom/google/android/gms/internal/ads/zzdau;->zzdj:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzdau;->zzdj:I

    .line 13
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzdau;->zzdk:Ljava/lang/String;

    return-void

    .line 11
    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    invoke-direct {p1}, Ljava/lang/NullPointerException;-><init>()V

    throw p1
.end method


# virtual methods
.method protected final zza(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 23
    sget-object p2, Lcom/google/android/gms/internal/ads/zzdav;->zzdi:[I

    const/4 p3, 0x1

    sub-int/2addr p1, p3

    aget p1, p2, p1

    const/4 p2, 0x0

    packed-switch p1, :pswitch_data_0

    .line 42
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1

    :pswitch_0
    return-object p2

    .line 40
    :pswitch_1
    invoke-static {p3}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    return-object p1

    .line 31
    :pswitch_2
    sget-object p1, Lcom/google/android/gms/internal/ads/zzdau;->zzdv:Lcom/google/android/gms/internal/ads/zzdpv;

    if-nez p1, :cond_1

    .line 33
    const-class p2, Lcom/google/android/gms/internal/ads/zzdau;

    monitor-enter p2

    .line 34
    :try_start_0
    sget-object p1, Lcom/google/android/gms/internal/ads/zzdau;->zzdv:Lcom/google/android/gms/internal/ads/zzdpv;

    if-nez p1, :cond_0

    .line 36
    new-instance p1, Lcom/google/android/gms/internal/ads/zzdob$zzb;

    sget-object p3, Lcom/google/android/gms/internal/ads/zzdau;->zzgoq:Lcom/google/android/gms/internal/ads/zzdau;

    invoke-direct {p1, p3}, Lcom/google/android/gms/internal/ads/zzdob$zzb;-><init>(Lcom/google/android/gms/internal/ads/zzdob;)V

    .line 37
    sput-object p1, Lcom/google/android/gms/internal/ads/zzdau;->zzdv:Lcom/google/android/gms/internal/ads/zzdpv;

    .line 38
    :cond_0
    monitor-exit p2

    goto :goto_0

    :catchall_0
    move-exception p1

    monitor-exit p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    :cond_1
    :goto_0
    return-object p1

    .line 30
    :pswitch_3
    sget-object p1, Lcom/google/android/gms/internal/ads/zzdau;->zzgoq:Lcom/google/android/gms/internal/ads/zzdau;

    return-object p1

    :pswitch_4
    const/4 p1, 0x6

    new-array p1, p1, [Ljava/lang/Object;

    const/4 p2, 0x0

    const-string/jumbo v0, "zzdj"

    aput-object v0, p1, p2

    const-string/jumbo p2, "zzgon"

    aput-object p2, p1, p3

    const/4 p2, 0x2

    .line 27
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzdau$zzb;->zzad()Lcom/google/android/gms/internal/ads/zzdog;

    move-result-object p3

    aput-object p3, p1, p2

    const/4 p2, 0x3

    const-string/jumbo p3, "zzdk"

    aput-object p3, p1, p2

    const/4 p2, 0x4

    const-string/jumbo p3, "zzgoo"

    aput-object p3, p1, p2

    const/4 p2, 0x5

    const-string/jumbo p3, "zzgop"

    aput-object p3, p1, p2

    .line 29
    sget-object p2, Lcom/google/android/gms/internal/ads/zzdau;->zzgoq:Lcom/google/android/gms/internal/ads/zzdau;

    const-string p3, "\u0001\u0004\u0000\u0001\u0001\u0004\u0004\u0000\u0000\u0000\u0001\u000c\u0000\u0002\u0008\u0001\u0003\u0008\u0002\u0004\t\u0003"

    invoke-static {p2, p3, p1}, Lcom/google/android/gms/internal/ads/zzdob;->zza(Lcom/google/android/gms/internal/ads/zzdpk;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 25
    :pswitch_5
    new-instance p1, Lcom/google/android/gms/internal/ads/zzdau$zza;

    invoke-direct {p1, p2}, Lcom/google/android/gms/internal/ads/zzdau$zza;-><init>(Lcom/google/android/gms/internal/ads/zzdav;)V

    return-object p1

    .line 24
    :pswitch_6
    new-instance p1, Lcom/google/android/gms/internal/ads/zzdau;

    invoke-direct {p1}, Lcom/google/android/gms/internal/ads/zzdau;-><init>()V

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
