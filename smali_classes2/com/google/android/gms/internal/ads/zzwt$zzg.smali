.class public final Lcom/google/android/gms/internal/ads/zzwt$zzg;
.super Lcom/google/android/gms/internal/ads/zzdob;

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzdpm;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/ads/zzwt;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "zzg"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/internal/ads/zzwt$zzg$zza;,
        Lcom/google/android/gms/internal/ads/zzwt$zzg$zzb;,
        Lcom/google/android/gms/internal/ads/zzwt$zzg$zzc;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/ads/zzdob<",
        "Lcom/google/android/gms/internal/ads/zzwt$zzg;",
        "Lcom/google/android/gms/internal/ads/zzwt$zzg$zza;",
        ">;",
        "Lcom/google/android/gms/internal/ads/zzdpm;"
    }
.end annotation


# static fields
.field private static final zzcax:Lcom/google/android/gms/internal/ads/zzwt$zzg;

.field private static volatile zzdv:Lcom/google/android/gms/internal/ads/zzdpv;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/ads/zzdpv<",
            "Lcom/google/android/gms/internal/ads/zzwt$zzg;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private zzbzi:I

.field private zzcaw:I

.field private zzdj:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 42
    new-instance v0, Lcom/google/android/gms/internal/ads/zzwt$zzg;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzwt$zzg;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/ads/zzwt$zzg;->zzcax:Lcom/google/android/gms/internal/ads/zzwt$zzg;

    .line 43
    const-class v0, Lcom/google/android/gms/internal/ads/zzwt$zzg;

    sget-object v1, Lcom/google/android/gms/internal/ads/zzwt$zzg;->zzcax:Lcom/google/android/gms/internal/ads/zzwt$zzg;

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/zzdob;->zza(Ljava/lang/Class;Lcom/google/android/gms/internal/ads/zzdob;)V

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzdob;-><init>()V

    return-void
.end method

.method private final zza(Lcom/google/android/gms/internal/ads/zzwt$zzg$zzb;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 10
    iget v0, p0, Lcom/google/android/gms/internal/ads/zzwt$zzg;->zzdj:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzwt$zzg;->zzdj:I

    .line 11
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzwt$zzg$zzb;->zzac()I

    move-result p1

    iput p1, p0, Lcom/google/android/gms/internal/ads/zzwt$zzg;->zzcaw:I

    return-void

    .line 9
    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    invoke-direct {p1}, Ljava/lang/NullPointerException;-><init>()V

    throw p1
.end method

.method private final zza(Lcom/google/android/gms/internal/ads/zzwt$zzg$zzc;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 5
    iget v0, p0, Lcom/google/android/gms/internal/ads/zzwt$zzg;->zzdj:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzwt$zzg;->zzdj:I

    .line 6
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzwt$zzg$zzc;->zzac()I

    move-result p1

    iput p1, p0, Lcom/google/android/gms/internal/ads/zzwt$zzg;->zzbzi:I

    return-void

    .line 4
    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    invoke-direct {p1}, Ljava/lang/NullPointerException;-><init>()V

    throw p1
.end method

.method static synthetic zza(Lcom/google/android/gms/internal/ads/zzwt$zzg;Lcom/google/android/gms/internal/ads/zzwt$zzg$zzb;)V
    .locals 0

    .line 41
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzwt$zzg;->zza(Lcom/google/android/gms/internal/ads/zzwt$zzg$zzb;)V

    return-void
.end method

.method static synthetic zza(Lcom/google/android/gms/internal/ads/zzwt$zzg;Lcom/google/android/gms/internal/ads/zzwt$zzg$zzc;)V
    .locals 0

    .line 40
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzwt$zzg;->zza(Lcom/google/android/gms/internal/ads/zzwt$zzg$zzc;)V

    return-void
.end method

.method public static zznv()Lcom/google/android/gms/internal/ads/zzwt$zzg$zza;
    .locals 3

    .line 13
    sget-object v0, Lcom/google/android/gms/internal/ads/zzwt$zzg;->zzcax:Lcom/google/android/gms/internal/ads/zzwt$zzg;

    .line 14
    sget v1, Lcom/google/android/gms/internal/ads/zzdob$zze;->zzhho:I

    const/4 v2, 0x0

    .line 15
    invoke-virtual {v0, v1, v2, v2}, Lcom/google/android/gms/internal/ads/zzwt$zzg;->zza(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 17
    check-cast v0, Lcom/google/android/gms/internal/ads/zzwt$zzg$zza;

    return-object v0
.end method

.method static synthetic zznw()Lcom/google/android/gms/internal/ads/zzwt$zzg;
    .locals 1

    .line 39
    sget-object v0, Lcom/google/android/gms/internal/ads/zzwt$zzg;->zzcax:Lcom/google/android/gms/internal/ads/zzwt$zzg;

    return-object v0
.end method


# virtual methods
.method protected final zza(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 18
    sget-object p2, Lcom/google/android/gms/internal/ads/zzwu;->zzdi:[I

    const/4 p3, 0x1

    sub-int/2addr p1, p3

    aget p1, p2, p1

    const/4 p2, 0x0

    packed-switch p1, :pswitch_data_0

    .line 38
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1

    :pswitch_0
    return-object p2

    .line 36
    :pswitch_1
    invoke-static {p3}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    return-object p1

    .line 27
    :pswitch_2
    sget-object p1, Lcom/google/android/gms/internal/ads/zzwt$zzg;->zzdv:Lcom/google/android/gms/internal/ads/zzdpv;

    if-nez p1, :cond_1

    .line 29
    const-class p2, Lcom/google/android/gms/internal/ads/zzwt$zzg;

    monitor-enter p2

    .line 30
    :try_start_0
    sget-object p1, Lcom/google/android/gms/internal/ads/zzwt$zzg;->zzdv:Lcom/google/android/gms/internal/ads/zzdpv;

    if-nez p1, :cond_0

    .line 32
    new-instance p1, Lcom/google/android/gms/internal/ads/zzdob$zzb;

    sget-object p3, Lcom/google/android/gms/internal/ads/zzwt$zzg;->zzcax:Lcom/google/android/gms/internal/ads/zzwt$zzg;

    invoke-direct {p1, p3}, Lcom/google/android/gms/internal/ads/zzdob$zzb;-><init>(Lcom/google/android/gms/internal/ads/zzdob;)V

    .line 33
    sput-object p1, Lcom/google/android/gms/internal/ads/zzwt$zzg;->zzdv:Lcom/google/android/gms/internal/ads/zzdpv;

    .line 34
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

    .line 26
    :pswitch_3
    sget-object p1, Lcom/google/android/gms/internal/ads/zzwt$zzg;->zzcax:Lcom/google/android/gms/internal/ads/zzwt$zzg;

    return-object p1

    :pswitch_4
    const/4 p1, 0x5

    new-array p1, p1, [Ljava/lang/Object;

    const/4 p2, 0x0

    const-string/jumbo v0, "zzdj"

    aput-object v0, p1, p2

    const-string/jumbo p2, "zzbzi"

    aput-object p2, p1, p3

    const/4 p2, 0x2

    .line 22
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzwt$zzg$zzc;->zzad()Lcom/google/android/gms/internal/ads/zzdog;

    move-result-object p3

    aput-object p3, p1, p2

    const/4 p2, 0x3

    const-string/jumbo p3, "zzcaw"

    aput-object p3, p1, p2

    const/4 p2, 0x4

    .line 23
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzwt$zzg$zzb;->zzad()Lcom/google/android/gms/internal/ads/zzdog;

    move-result-object p3

    aput-object p3, p1, p2

    .line 25
    sget-object p2, Lcom/google/android/gms/internal/ads/zzwt$zzg;->zzcax:Lcom/google/android/gms/internal/ads/zzwt$zzg;

    const-string p3, "\u0001\u0002\u0000\u0001\u0001\u0002\u0002\u0000\u0000\u0000\u0001\u000c\u0000\u0002\u000c\u0001"

    invoke-static {p2, p3, p1}, Lcom/google/android/gms/internal/ads/zzdob;->zza(Lcom/google/android/gms/internal/ads/zzdpk;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 20
    :pswitch_5
    new-instance p1, Lcom/google/android/gms/internal/ads/zzwt$zzg$zza;

    invoke-direct {p1, p2}, Lcom/google/android/gms/internal/ads/zzwt$zzg$zza;-><init>(Lcom/google/android/gms/internal/ads/zzwu;)V

    return-object p1

    .line 19
    :pswitch_6
    new-instance p1, Lcom/google/android/gms/internal/ads/zzwt$zzg;

    invoke-direct {p1}, Lcom/google/android/gms/internal/ads/zzwt$zzg;-><init>()V

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
