.class public final Lcom/google/android/gms/internal/ads/zzwt$zzf;
.super Lcom/google/android/gms/internal/ads/zzdob;

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzdpm;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/ads/zzwt;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "zzf"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/internal/ads/zzwt$zzf$zza;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/ads/zzdob<",
        "Lcom/google/android/gms/internal/ads/zzwt$zzf;",
        "Lcom/google/android/gms/internal/ads/zzwt$zzf$zza;",
        ">;",
        "Lcom/google/android/gms/internal/ads/zzdpm;"
    }
.end annotation


# static fields
.field private static final zzcav:Lcom/google/android/gms/internal/ads/zzwt$zzf;

.field private static volatile zzdv:Lcom/google/android/gms/internal/ads/zzdpv;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/ads/zzdpv<",
            "Lcom/google/android/gms/internal/ads/zzwt$zzf;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private zzcap:Lcom/google/android/gms/internal/ads/zzwt$zzn;

.field private zzcar:I

.field private zzcat:Lcom/google/android/gms/internal/ads/zzwt$zzd;

.field private zzcau:Lcom/google/android/gms/internal/ads/zzdoj;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/ads/zzdoj<",
            "Lcom/google/android/gms/internal/ads/zzwt$zzm;",
            ">;"
        }
    .end annotation
.end field

.field private zzdj:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 25
    new-instance v0, Lcom/google/android/gms/internal/ads/zzwt$zzf;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzwt$zzf;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/ads/zzwt$zzf;->zzcav:Lcom/google/android/gms/internal/ads/zzwt$zzf;

    .line 26
    const-class v0, Lcom/google/android/gms/internal/ads/zzwt$zzf;

    sget-object v1, Lcom/google/android/gms/internal/ads/zzwt$zzf;->zzcav:Lcom/google/android/gms/internal/ads/zzwt$zzf;

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/zzdob;->zza(Ljava/lang/Class;Lcom/google/android/gms/internal/ads/zzdob;)V

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzdob;-><init>()V

    .line 2
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzdob;->zzaxs()Lcom/google/android/gms/internal/ads/zzdoj;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzwt$zzf;->zzcau:Lcom/google/android/gms/internal/ads/zzdoj;

    return-void
.end method

.method static synthetic zznu()Lcom/google/android/gms/internal/ads/zzwt$zzf;
    .locals 1

    .line 24
    sget-object v0, Lcom/google/android/gms/internal/ads/zzwt$zzf;->zzcav:Lcom/google/android/gms/internal/ads/zzwt$zzf;

    return-object v0
.end method


# virtual methods
.method protected final zza(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 4
    sget-object p2, Lcom/google/android/gms/internal/ads/zzwu;->zzdi:[I

    const/4 p3, 0x1

    sub-int/2addr p1, p3

    aget p1, p2, p1

    const/4 p2, 0x0

    packed-switch p1, :pswitch_data_0

    .line 23
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1

    :pswitch_0
    return-object p2

    .line 21
    :pswitch_1
    invoke-static {p3}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    return-object p1

    .line 12
    :pswitch_2
    sget-object p1, Lcom/google/android/gms/internal/ads/zzwt$zzf;->zzdv:Lcom/google/android/gms/internal/ads/zzdpv;

    if-nez p1, :cond_1

    .line 14
    const-class p2, Lcom/google/android/gms/internal/ads/zzwt$zzf;

    monitor-enter p2

    .line 15
    :try_start_0
    sget-object p1, Lcom/google/android/gms/internal/ads/zzwt$zzf;->zzdv:Lcom/google/android/gms/internal/ads/zzdpv;

    if-nez p1, :cond_0

    .line 17
    new-instance p1, Lcom/google/android/gms/internal/ads/zzdob$zzb;

    sget-object p3, Lcom/google/android/gms/internal/ads/zzwt$zzf;->zzcav:Lcom/google/android/gms/internal/ads/zzwt$zzf;

    invoke-direct {p1, p3}, Lcom/google/android/gms/internal/ads/zzdob$zzb;-><init>(Lcom/google/android/gms/internal/ads/zzdob;)V

    .line 18
    sput-object p1, Lcom/google/android/gms/internal/ads/zzwt$zzf;->zzdv:Lcom/google/android/gms/internal/ads/zzdpv;

    .line 19
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

    .line 11
    :pswitch_3
    sget-object p1, Lcom/google/android/gms/internal/ads/zzwt$zzf;->zzcav:Lcom/google/android/gms/internal/ads/zzwt$zzf;

    return-object p1

    :pswitch_4
    const/4 p1, 0x7

    new-array p1, p1, [Ljava/lang/Object;

    const/4 p2, 0x0

    const-string/jumbo v0, "zzdj"

    aput-object v0, p1, p2

    const-string/jumbo p2, "zzcat"

    aput-object p2, p1, p3

    const/4 p2, 0x2

    const-string/jumbo p3, "zzcau"

    aput-object p3, p1, p2

    const/4 p2, 0x3

    .line 7
    const-class p3, Lcom/google/android/gms/internal/ads/zzwt$zzm;

    aput-object p3, p1, p2

    const/4 p2, 0x4

    const-string/jumbo p3, "zzcar"

    aput-object p3, p1, p2

    const/4 p2, 0x5

    .line 8
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzwx;->zzad()Lcom/google/android/gms/internal/ads/zzdog;

    move-result-object p3

    aput-object p3, p1, p2

    const/4 p2, 0x6

    const-string/jumbo p3, "zzcap"

    aput-object p3, p1, p2

    .line 10
    sget-object p2, Lcom/google/android/gms/internal/ads/zzwt$zzf;->zzcav:Lcom/google/android/gms/internal/ads/zzwt$zzf;

    const-string p3, "\u0001\u0004\u0000\u0001\u0001\u0004\u0004\u0000\u0001\u0000\u0001\t\u0000\u0002\u001b\u0003\u000c\u0001\u0004\t\u0002"

    invoke-static {p2, p3, p1}, Lcom/google/android/gms/internal/ads/zzdob;->zza(Lcom/google/android/gms/internal/ads/zzdpk;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 6
    :pswitch_5
    new-instance p1, Lcom/google/android/gms/internal/ads/zzwt$zzf$zza;

    invoke-direct {p1, p2}, Lcom/google/android/gms/internal/ads/zzwt$zzf$zza;-><init>(Lcom/google/android/gms/internal/ads/zzwu;)V

    return-object p1

    .line 5
    :pswitch_6
    new-instance p1, Lcom/google/android/gms/internal/ads/zzwt$zzf;

    invoke-direct {p1}, Lcom/google/android/gms/internal/ads/zzwt$zzf;-><init>()V

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
