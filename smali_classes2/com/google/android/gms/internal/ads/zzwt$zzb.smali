.class public final Lcom/google/android/gms/internal/ads/zzwt$zzb;
.super Lcom/google/android/gms/internal/ads/zzdob;

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzdpm;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/ads/zzwt;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "zzb"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/internal/ads/zzwt$zzb$zza;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/ads/zzdob<",
        "Lcom/google/android/gms/internal/ads/zzwt$zzb;",
        "Lcom/google/android/gms/internal/ads/zzwt$zzb$zza;",
        ">;",
        "Lcom/google/android/gms/internal/ads/zzdpm;"
    }
.end annotation


# static fields
.field private static final zzcaa:Lcom/google/android/gms/internal/ads/zzwt$zzb;

.field private static volatile zzdv:Lcom/google/android/gms/internal/ads/zzdpv;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/ads/zzdpv<",
            "Lcom/google/android/gms/internal/ads/zzwt$zzb;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private zzbzx:Ljava/lang/String;

.field private zzbzy:Lcom/google/android/gms/internal/ads/zzdoj;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/ads/zzdoj<",
            "Lcom/google/android/gms/internal/ads/zzwt$zza;",
            ">;"
        }
    .end annotation
.end field

.field private zzbzz:I

.field private zzdj:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 26
    new-instance v0, Lcom/google/android/gms/internal/ads/zzwt$zzb;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzwt$zzb;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/ads/zzwt$zzb;->zzcaa:Lcom/google/android/gms/internal/ads/zzwt$zzb;

    .line 27
    const-class v0, Lcom/google/android/gms/internal/ads/zzwt$zzb;

    sget-object v1, Lcom/google/android/gms/internal/ads/zzwt$zzb;->zzcaa:Lcom/google/android/gms/internal/ads/zzwt$zzb;

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/zzdob;->zza(Ljava/lang/Class;Lcom/google/android/gms/internal/ads/zzdob;)V

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzdob;-><init>()V

    const-string v0, ""

    .line 2
    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzwt$zzb;->zzbzx:Ljava/lang/String;

    .line 3
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzdob;->zzaxs()Lcom/google/android/gms/internal/ads/zzdoj;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzwt$zzb;->zzbzy:Lcom/google/android/gms/internal/ads/zzdoj;

    return-void
.end method

.method static synthetic zznq()Lcom/google/android/gms/internal/ads/zzwt$zzb;
    .locals 1

    .line 25
    sget-object v0, Lcom/google/android/gms/internal/ads/zzwt$zzb;->zzcaa:Lcom/google/android/gms/internal/ads/zzwt$zzb;

    return-object v0
.end method


# virtual methods
.method protected final zza(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 5
    sget-object p2, Lcom/google/android/gms/internal/ads/zzwu;->zzdi:[I

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
    sget-object p1, Lcom/google/android/gms/internal/ads/zzwt$zzb;->zzdv:Lcom/google/android/gms/internal/ads/zzdpv;

    if-nez p1, :cond_1

    .line 15
    const-class p2, Lcom/google/android/gms/internal/ads/zzwt$zzb;

    monitor-enter p2

    .line 16
    :try_start_0
    sget-object p1, Lcom/google/android/gms/internal/ads/zzwt$zzb;->zzdv:Lcom/google/android/gms/internal/ads/zzdpv;

    if-nez p1, :cond_0

    .line 18
    new-instance p1, Lcom/google/android/gms/internal/ads/zzdob$zzb;

    sget-object p3, Lcom/google/android/gms/internal/ads/zzwt$zzb;->zzcaa:Lcom/google/android/gms/internal/ads/zzwt$zzb;

    invoke-direct {p1, p3}, Lcom/google/android/gms/internal/ads/zzdob$zzb;-><init>(Lcom/google/android/gms/internal/ads/zzdob;)V

    .line 19
    sput-object p1, Lcom/google/android/gms/internal/ads/zzwt$zzb;->zzdv:Lcom/google/android/gms/internal/ads/zzdpv;

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
    sget-object p1, Lcom/google/android/gms/internal/ads/zzwt$zzb;->zzcaa:Lcom/google/android/gms/internal/ads/zzwt$zzb;

    return-object p1

    :pswitch_4
    const/4 p1, 0x6

    new-array p1, p1, [Ljava/lang/Object;

    const/4 p2, 0x0

    const-string/jumbo v0, "zzdj"

    aput-object v0, p1, p2

    const-string/jumbo p2, "zzbzx"

    aput-object p2, p1, p3

    const/4 p2, 0x2

    const-string/jumbo p3, "zzbzy"

    aput-object p3, p1, p2

    const/4 p2, 0x3

    .line 8
    const-class p3, Lcom/google/android/gms/internal/ads/zzwt$zza;

    aput-object p3, p1, p2

    const/4 p2, 0x4

    const-string/jumbo p3, "zzbzz"

    aput-object p3, p1, p2

    const/4 p2, 0x5

    .line 9
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzwx;->zzad()Lcom/google/android/gms/internal/ads/zzdog;

    move-result-object p3

    aput-object p3, p1, p2

    .line 11
    sget-object p2, Lcom/google/android/gms/internal/ads/zzwt$zzb;->zzcaa:Lcom/google/android/gms/internal/ads/zzwt$zzb;

    const-string p3, "\u0001\u0003\u0000\u0001\u0001\u0003\u0003\u0000\u0001\u0000\u0001\u0008\u0000\u0002\u001b\u0003\u000c\u0001"

    invoke-static {p2, p3, p1}, Lcom/google/android/gms/internal/ads/zzdob;->zza(Lcom/google/android/gms/internal/ads/zzdpk;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 7
    :pswitch_5
    new-instance p1, Lcom/google/android/gms/internal/ads/zzwt$zzb$zza;

    invoke-direct {p1, p2}, Lcom/google/android/gms/internal/ads/zzwt$zzb$zza;-><init>(Lcom/google/android/gms/internal/ads/zzwu;)V

    return-object p1

    .line 6
    :pswitch_6
    new-instance p1, Lcom/google/android/gms/internal/ads/zzwt$zzb;

    invoke-direct {p1}, Lcom/google/android/gms/internal/ads/zzwt$zzb;-><init>()V

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
