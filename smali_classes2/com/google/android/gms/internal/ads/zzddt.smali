.class public final Lcom/google/android/gms/internal/ads/zzddt;
.super Lcom/google/android/gms/internal/ads/zzdob;

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzdpm;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/internal/ads/zzddt$zza;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/ads/zzdob<",
        "Lcom/google/android/gms/internal/ads/zzddt;",
        "Lcom/google/android/gms/internal/ads/zzddt$zza;",
        ">;",
        "Lcom/google/android/gms/internal/ads/zzdpm;"
    }
.end annotation


# static fields
.field private static volatile zzdv:Lcom/google/android/gms/internal/ads/zzdpv;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/ads/zzdpv<",
            "Lcom/google/android/gms/internal/ads/zzddt;",
            ">;"
        }
    .end annotation
.end field

.field private static final zzgqq:Lcom/google/android/gms/internal/ads/zzddt;


# instance fields
.field private zzgqo:Lcom/google/android/gms/internal/ads/zzded;

.field private zzgqp:Lcom/google/android/gms/internal/ads/zzdgn;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 26
    new-instance v0, Lcom/google/android/gms/internal/ads/zzddt;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzddt;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/ads/zzddt;->zzgqq:Lcom/google/android/gms/internal/ads/zzddt;

    .line 27
    const-class v0, Lcom/google/android/gms/internal/ads/zzddt;

    sget-object v1, Lcom/google/android/gms/internal/ads/zzddt;->zzgqq:Lcom/google/android/gms/internal/ads/zzddt;

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/zzdob;->zza(Ljava/lang/Class;Lcom/google/android/gms/internal/ads/zzdob;)V

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzdob;-><init>()V

    return-void
.end method

.method static synthetic zzaog()Lcom/google/android/gms/internal/ads/zzddt;
    .locals 1

    .line 25
    sget-object v0, Lcom/google/android/gms/internal/ads/zzddt;->zzgqq:Lcom/google/android/gms/internal/ads/zzddt;

    return-object v0
.end method

.method public static zzv(Lcom/google/android/gms/internal/ads/zzdmr;)Lcom/google/android/gms/internal/ads/zzddt;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/ads/zzdok;
        }
    .end annotation

    .line 5
    sget-object v0, Lcom/google/android/gms/internal/ads/zzddt;->zzgqq:Lcom/google/android/gms/internal/ads/zzddt;

    invoke-static {v0, p0}, Lcom/google/android/gms/internal/ads/zzdob;->zza(Lcom/google/android/gms/internal/ads/zzdob;Lcom/google/android/gms/internal/ads/zzdmr;)Lcom/google/android/gms/internal/ads/zzdob;

    move-result-object p0

    check-cast p0, Lcom/google/android/gms/internal/ads/zzddt;

    return-object p0
.end method


# virtual methods
.method protected final zza(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 6
    sget-object p2, Lcom/google/android/gms/internal/ads/zzddu;->zzdi:[I

    const/4 p3, 0x1

    sub-int/2addr p1, p3

    aget p1, p2, p1

    const/4 p2, 0x0

    packed-switch p1, :pswitch_data_0

    .line 24
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1

    :pswitch_0
    return-object p2

    .line 22
    :pswitch_1
    invoke-static {p3}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    return-object p1

    .line 13
    :pswitch_2
    sget-object p1, Lcom/google/android/gms/internal/ads/zzddt;->zzdv:Lcom/google/android/gms/internal/ads/zzdpv;

    if-nez p1, :cond_1

    .line 15
    const-class p2, Lcom/google/android/gms/internal/ads/zzddt;

    monitor-enter p2

    .line 16
    :try_start_0
    sget-object p1, Lcom/google/android/gms/internal/ads/zzddt;->zzdv:Lcom/google/android/gms/internal/ads/zzdpv;

    if-nez p1, :cond_0

    .line 18
    new-instance p1, Lcom/google/android/gms/internal/ads/zzdob$zzb;

    sget-object p3, Lcom/google/android/gms/internal/ads/zzddt;->zzgqq:Lcom/google/android/gms/internal/ads/zzddt;

    invoke-direct {p1, p3}, Lcom/google/android/gms/internal/ads/zzdob$zzb;-><init>(Lcom/google/android/gms/internal/ads/zzdob;)V

    .line 19
    sput-object p1, Lcom/google/android/gms/internal/ads/zzddt;->zzdv:Lcom/google/android/gms/internal/ads/zzdpv;

    .line 20
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

    .line 12
    :pswitch_3
    sget-object p1, Lcom/google/android/gms/internal/ads/zzddt;->zzgqq:Lcom/google/android/gms/internal/ads/zzddt;

    return-object p1

    :pswitch_4
    const/4 p1, 0x2

    new-array p1, p1, [Ljava/lang/Object;

    const/4 p2, 0x0

    const-string/jumbo v0, "zzgqo"

    aput-object v0, p1, p2

    const-string/jumbo p2, "zzgqp"

    aput-object p2, p1, p3

    .line 11
    sget-object p2, Lcom/google/android/gms/internal/ads/zzddt;->zzgqq:Lcom/google/android/gms/internal/ads/zzddt;

    const-string p3, "\u0000\u0002\u0000\u0000\u0001\u0002\u0002\u0000\u0000\u0000\u0001\t\u0002\t"

    invoke-static {p2, p3, p1}, Lcom/google/android/gms/internal/ads/zzdob;->zza(Lcom/google/android/gms/internal/ads/zzdpk;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 8
    :pswitch_5
    new-instance p1, Lcom/google/android/gms/internal/ads/zzddt$zza;

    invoke-direct {p1, p2}, Lcom/google/android/gms/internal/ads/zzddt$zza;-><init>(Lcom/google/android/gms/internal/ads/zzddu;)V

    return-object p1

    .line 7
    :pswitch_6
    new-instance p1, Lcom/google/android/gms/internal/ads/zzddt;

    invoke-direct {p1}, Lcom/google/android/gms/internal/ads/zzddt;-><init>()V

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

.method public final zzaoe()Lcom/google/android/gms/internal/ads/zzded;
    .locals 1

    .line 3
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzddt;->zzgqo:Lcom/google/android/gms/internal/ads/zzded;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzded;->zzaow()Lcom/google/android/gms/internal/ads/zzded;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public final zzaof()Lcom/google/android/gms/internal/ads/zzdgn;
    .locals 1

    .line 4
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzddt;->zzgqp:Lcom/google/android/gms/internal/ads/zzdgn;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzdgn;->zzarn()Lcom/google/android/gms/internal/ads/zzdgn;

    move-result-object v0

    :cond_0
    return-object v0
.end method
