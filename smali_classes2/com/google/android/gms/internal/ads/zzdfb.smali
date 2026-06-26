.class public final Lcom/google/android/gms/internal/ads/zzdfb;
.super Lcom/google/android/gms/internal/ads/zzdob;

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzdpm;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/internal/ads/zzdfb$zza;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/ads/zzdob<",
        "Lcom/google/android/gms/internal/ads/zzdfb;",
        "Lcom/google/android/gms/internal/ads/zzdfb$zza;",
        ">;",
        "Lcom/google/android/gms/internal/ads/zzdpm;"
    }
.end annotation


# static fields
.field private static volatile zzdv:Lcom/google/android/gms/internal/ads/zzdpv;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/ads/zzdpv<",
            "Lcom/google/android/gms/internal/ads/zzdfb;",
            ">;"
        }
    .end annotation
.end field

.field private static final zzgrs:Lcom/google/android/gms/internal/ads/zzdfb;


# instance fields
.field private zzgqk:I

.field private zzgqs:Lcom/google/android/gms/internal/ads/zzdmr;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 40
    new-instance v0, Lcom/google/android/gms/internal/ads/zzdfb;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzdfb;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/ads/zzdfb;->zzgrs:Lcom/google/android/gms/internal/ads/zzdfb;

    .line 41
    const-class v0, Lcom/google/android/gms/internal/ads/zzdfb;

    sget-object v1, Lcom/google/android/gms/internal/ads/zzdfb;->zzgrs:Lcom/google/android/gms/internal/ads/zzdfb;

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/zzdob;->zza(Ljava/lang/Class;Lcom/google/android/gms/internal/ads/zzdob;)V

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzdob;-><init>()V

    .line 2
    sget-object v0, Lcom/google/android/gms/internal/ads/zzdmr;->zzhcr:Lcom/google/android/gms/internal/ads/zzdmr;

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzdfb;->zzgqs:Lcom/google/android/gms/internal/ads/zzdmr;

    return-void
.end method

.method private final setVersion(I)V
    .locals 0

    .line 5
    iput p1, p0, Lcom/google/android/gms/internal/ads/zzdfb;->zzgqk:I

    return-void
.end method

.method static synthetic zza(Lcom/google/android/gms/internal/ads/zzdfb;I)V
    .locals 0

    const/4 p1, 0x0

    .line 38
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzdfb;->setVersion(I)V

    return-void
.end method

.method static synthetic zza(Lcom/google/android/gms/internal/ads/zzdfb;Lcom/google/android/gms/internal/ads/zzdmr;)V
    .locals 0

    .line 39
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzdfb;->zzw(Lcom/google/android/gms/internal/ads/zzdmr;)V

    return-void
.end method

.method public static zzap(Lcom/google/android/gms/internal/ads/zzdmr;)Lcom/google/android/gms/internal/ads/zzdfb;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/ads/zzdok;
        }
    .end annotation

    .line 12
    sget-object v0, Lcom/google/android/gms/internal/ads/zzdfb;->zzgrs:Lcom/google/android/gms/internal/ads/zzdfb;

    invoke-static {v0, p0}, Lcom/google/android/gms/internal/ads/zzdob;->zza(Lcom/google/android/gms/internal/ads/zzdob;Lcom/google/android/gms/internal/ads/zzdmr;)Lcom/google/android/gms/internal/ads/zzdob;

    move-result-object p0

    check-cast p0, Lcom/google/android/gms/internal/ads/zzdfb;

    return-object p0
.end method

.method public static zzapt()Lcom/google/android/gms/internal/ads/zzdfb$zza;
    .locals 3

    .line 13
    sget-object v0, Lcom/google/android/gms/internal/ads/zzdfb;->zzgrs:Lcom/google/android/gms/internal/ads/zzdfb;

    .line 14
    sget v1, Lcom/google/android/gms/internal/ads/zzdob$zze;->zzhho:I

    const/4 v2, 0x0

    .line 15
    invoke-virtual {v0, v1, v2, v2}, Lcom/google/android/gms/internal/ads/zzdfb;->zza(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 17
    check-cast v0, Lcom/google/android/gms/internal/ads/zzdfb$zza;

    return-object v0
.end method

.method static synthetic zzapu()Lcom/google/android/gms/internal/ads/zzdfb;
    .locals 1

    .line 37
    sget-object v0, Lcom/google/android/gms/internal/ads/zzdfb;->zzgrs:Lcom/google/android/gms/internal/ads/zzdfb;

    return-object v0
.end method

.method private final zzw(Lcom/google/android/gms/internal/ads/zzdmr;)V
    .locals 0

    if-eqz p1, :cond_0

    .line 10
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzdfb;->zzgqs:Lcom/google/android/gms/internal/ads/zzdmr;

    return-void

    .line 9
    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    invoke-direct {p1}, Ljava/lang/NullPointerException;-><init>()V

    throw p1
.end method


# virtual methods
.method public final getVersion()I
    .locals 1

    .line 4
    iget v0, p0, Lcom/google/android/gms/internal/ads/zzdfb;->zzgqk:I

    return v0
.end method

.method protected final zza(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 18
    sget-object p2, Lcom/google/android/gms/internal/ads/zzdfc;->zzdi:[I

    const/4 p3, 0x1

    sub-int/2addr p1, p3

    aget p1, p2, p1

    const/4 p2, 0x0

    packed-switch p1, :pswitch_data_0

    .line 36
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1

    :pswitch_0
    return-object p2

    .line 34
    :pswitch_1
    invoke-static {p3}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    return-object p1

    .line 25
    :pswitch_2
    sget-object p1, Lcom/google/android/gms/internal/ads/zzdfb;->zzdv:Lcom/google/android/gms/internal/ads/zzdpv;

    if-nez p1, :cond_1

    .line 27
    const-class p2, Lcom/google/android/gms/internal/ads/zzdfb;

    monitor-enter p2

    .line 28
    :try_start_0
    sget-object p1, Lcom/google/android/gms/internal/ads/zzdfb;->zzdv:Lcom/google/android/gms/internal/ads/zzdpv;

    if-nez p1, :cond_0

    .line 30
    new-instance p1, Lcom/google/android/gms/internal/ads/zzdob$zzb;

    sget-object p3, Lcom/google/android/gms/internal/ads/zzdfb;->zzgrs:Lcom/google/android/gms/internal/ads/zzdfb;

    invoke-direct {p1, p3}, Lcom/google/android/gms/internal/ads/zzdob$zzb;-><init>(Lcom/google/android/gms/internal/ads/zzdob;)V

    .line 31
    sput-object p1, Lcom/google/android/gms/internal/ads/zzdfb;->zzdv:Lcom/google/android/gms/internal/ads/zzdpv;

    .line 32
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

    .line 24
    :pswitch_3
    sget-object p1, Lcom/google/android/gms/internal/ads/zzdfb;->zzgrs:Lcom/google/android/gms/internal/ads/zzdfb;

    return-object p1

    :pswitch_4
    const/4 p1, 0x2

    new-array p1, p1, [Ljava/lang/Object;

    const/4 p2, 0x0

    const-string/jumbo v0, "zzgqk"

    aput-object v0, p1, p2

    const-string/jumbo p2, "zzgqs"

    aput-object p2, p1, p3

    .line 23
    sget-object p2, Lcom/google/android/gms/internal/ads/zzdfb;->zzgrs:Lcom/google/android/gms/internal/ads/zzdfb;

    const-string p3, "\u0000\u0002\u0000\u0000\u0001\u0002\u0002\u0000\u0000\u0000\u0001\u000b\u0002\n"

    invoke-static {p2, p3, p1}, Lcom/google/android/gms/internal/ads/zzdob;->zza(Lcom/google/android/gms/internal/ads/zzdpk;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 20
    :pswitch_5
    new-instance p1, Lcom/google/android/gms/internal/ads/zzdfb$zza;

    invoke-direct {p1, p2}, Lcom/google/android/gms/internal/ads/zzdfb$zza;-><init>(Lcom/google/android/gms/internal/ads/zzdfc;)V

    return-object p1

    .line 19
    :pswitch_6
    new-instance p1, Lcom/google/android/gms/internal/ads/zzdfb;

    invoke-direct {p1}, Lcom/google/android/gms/internal/ads/zzdfb;-><init>()V

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

.method public final zzaoi()Lcom/google/android/gms/internal/ads/zzdmr;
    .locals 1

    .line 7
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdfb;->zzgqs:Lcom/google/android/gms/internal/ads/zzdmr;

    return-object v0
.end method
