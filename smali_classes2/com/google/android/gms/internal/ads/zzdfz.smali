.class public final Lcom/google/android/gms/internal/ads/zzdfz;
.super Lcom/google/android/gms/internal/ads/zzdob;

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzdpm;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/internal/ads/zzdfz$zza;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/ads/zzdob<",
        "Lcom/google/android/gms/internal/ads/zzdfz;",
        "Lcom/google/android/gms/internal/ads/zzdfz$zza;",
        ">;",
        "Lcom/google/android/gms/internal/ads/zzdpm;"
    }
.end annotation


# static fields
.field private static volatile zzdv:Lcom/google/android/gms/internal/ads/zzdpv;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/ads/zzdpv<",
            "Lcom/google/android/gms/internal/ads/zzdfz;",
            ">;"
        }
    .end annotation
.end field

.field private static final zzgtc:Lcom/google/android/gms/internal/ads/zzdfz;


# instance fields
.field private zzgqy:I

.field private zzgta:I

.field private zzgtb:Lcom/google/android/gms/internal/ads/zzdmr;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 30
    new-instance v0, Lcom/google/android/gms/internal/ads/zzdfz;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzdfz;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/ads/zzdfz;->zzgtc:Lcom/google/android/gms/internal/ads/zzdfz;

    .line 31
    const-class v0, Lcom/google/android/gms/internal/ads/zzdfz;

    sget-object v1, Lcom/google/android/gms/internal/ads/zzdfz;->zzgtc:Lcom/google/android/gms/internal/ads/zzdfz;

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/zzdob;->zza(Ljava/lang/Class;Lcom/google/android/gms/internal/ads/zzdob;)V

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzdob;-><init>()V

    .line 2
    sget-object v0, Lcom/google/android/gms/internal/ads/zzdmr;->zzhcr:Lcom/google/android/gms/internal/ads/zzdmr;

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzdfz;->zzgtb:Lcom/google/android/gms/internal/ads/zzdmr;

    return-void
.end method

.method public static zzarc()Lcom/google/android/gms/internal/ads/zzdfz;
    .locals 1

    .line 28
    sget-object v0, Lcom/google/android/gms/internal/ads/zzdfz;->zzgtc:Lcom/google/android/gms/internal/ads/zzdfz;

    return-object v0
.end method

.method static synthetic zzard()Lcom/google/android/gms/internal/ads/zzdfz;
    .locals 1

    .line 29
    sget-object v0, Lcom/google/android/gms/internal/ads/zzdfz;->zzgtc:Lcom/google/android/gms/internal/ads/zzdfz;

    return-object v0
.end method


# virtual methods
.method protected final zza(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 9
    sget-object p2, Lcom/google/android/gms/internal/ads/zzdga;->zzdi:[I

    const/4 p3, 0x1

    sub-int/2addr p1, p3

    aget p1, p2, p1

    const/4 p2, 0x0

    packed-switch p1, :pswitch_data_0

    .line 27
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1

    :pswitch_0
    return-object p2

    .line 25
    :pswitch_1
    invoke-static {p3}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    return-object p1

    .line 16
    :pswitch_2
    sget-object p1, Lcom/google/android/gms/internal/ads/zzdfz;->zzdv:Lcom/google/android/gms/internal/ads/zzdpv;

    if-nez p1, :cond_1

    .line 18
    const-class p2, Lcom/google/android/gms/internal/ads/zzdfz;

    monitor-enter p2

    .line 19
    :try_start_0
    sget-object p1, Lcom/google/android/gms/internal/ads/zzdfz;->zzdv:Lcom/google/android/gms/internal/ads/zzdpv;

    if-nez p1, :cond_0

    .line 21
    new-instance p1, Lcom/google/android/gms/internal/ads/zzdob$zzb;

    sget-object p3, Lcom/google/android/gms/internal/ads/zzdfz;->zzgtc:Lcom/google/android/gms/internal/ads/zzdfz;

    invoke-direct {p1, p3}, Lcom/google/android/gms/internal/ads/zzdob$zzb;-><init>(Lcom/google/android/gms/internal/ads/zzdob;)V

    .line 22
    sput-object p1, Lcom/google/android/gms/internal/ads/zzdfz;->zzdv:Lcom/google/android/gms/internal/ads/zzdpv;

    .line 23
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

    .line 15
    :pswitch_3
    sget-object p1, Lcom/google/android/gms/internal/ads/zzdfz;->zzgtc:Lcom/google/android/gms/internal/ads/zzdfz;

    return-object p1

    :pswitch_4
    const/4 p1, 0x3

    new-array p1, p1, [Ljava/lang/Object;

    const/4 p2, 0x0

    const-string/jumbo v0, "zzgta"

    aput-object v0, p1, p2

    const-string/jumbo p2, "zzgqy"

    aput-object p2, p1, p3

    const/4 p2, 0x2

    const-string/jumbo p3, "zzgtb"

    aput-object p3, p1, p2

    .line 14
    sget-object p2, Lcom/google/android/gms/internal/ads/zzdfz;->zzgtc:Lcom/google/android/gms/internal/ads/zzdfz;

    const-string p3, "\u0000\u0003\u0000\u0000\u0001\u000b\u0003\u0000\u0000\u0000\u0001\u000c\u0002\u000c\u000b\n"

    invoke-static {p2, p3, p1}, Lcom/google/android/gms/internal/ads/zzdob;->zza(Lcom/google/android/gms/internal/ads/zzdpk;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 11
    :pswitch_5
    new-instance p1, Lcom/google/android/gms/internal/ads/zzdfz$zza;

    invoke-direct {p1, p2}, Lcom/google/android/gms/internal/ads/zzdfz$zza;-><init>(Lcom/google/android/gms/internal/ads/zzdga;)V

    return-object p1

    .line 10
    :pswitch_6
    new-instance p1, Lcom/google/android/gms/internal/ads/zzdfz;

    invoke-direct {p1}, Lcom/google/android/gms/internal/ads/zzdfz;-><init>()V

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

.method public final zzaoo()Lcom/google/android/gms/internal/ads/zzdgj;
    .locals 1

    .line 6
    iget v0, p0, Lcom/google/android/gms/internal/ads/zzdfz;->zzgqy:I

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzdgj;->zzel(I)Lcom/google/android/gms/internal/ads/zzdgj;

    move-result-object v0

    if-nez v0, :cond_0

    .line 7
    sget-object v0, Lcom/google/android/gms/internal/ads/zzdgj;->zzgtr:Lcom/google/android/gms/internal/ads/zzdgj;

    :cond_0
    return-object v0
.end method

.method public final zzara()Lcom/google/android/gms/internal/ads/zzdgf;
    .locals 1

    .line 4
    iget v0, p0, Lcom/google/android/gms/internal/ads/zzdfz;->zzgta:I

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzdgf;->zzek(I)Lcom/google/android/gms/internal/ads/zzdgf;

    move-result-object v0

    if-nez v0, :cond_0

    .line 5
    sget-object v0, Lcom/google/android/gms/internal/ads/zzdgf;->zzgtk:Lcom/google/android/gms/internal/ads/zzdgf;

    :cond_0
    return-object v0
.end method

.method public final zzarb()Lcom/google/android/gms/internal/ads/zzdmr;
    .locals 1

    .line 8
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdfz;->zzgtb:Lcom/google/android/gms/internal/ads/zzdmr;

    return-object v0
.end method
