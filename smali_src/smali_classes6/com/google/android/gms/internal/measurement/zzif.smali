.class final Lcom/google/android/gms/internal/measurement/zzif;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/measurement/zzlc;


# instance fields
.field private final zza:Lcom/google/android/gms/internal/measurement/zzib;

.field private zzb:I

.field private zzc:I

.field private zzd:I


# direct methods
.method private constructor <init>(Lcom/google/android/gms/internal/measurement/zzib;)V
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    const/4 v0, 0x0

    .line 5
    .line 6
    iput v0, p0, Lcom/google/android/gms/internal/measurement/zzif;->zzd:I

    .line 7
    .line 8
    const-string v0, "input"

    .line 9
    .line 10
    .line 11
    invoke-static {p1, v0}, Lcom/google/android/gms/internal/measurement/zziz;->zza(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 12
    move-result-object p1

    .line 13
    .line 14
    check-cast p1, Lcom/google/android/gms/internal/measurement/zzib;

    .line 15
    .line 16
    iput-object p1, p0, Lcom/google/android/gms/internal/measurement/zzif;->zza:Lcom/google/android/gms/internal/measurement/zzib;

    .line 17
    .line 18
    iput-object p0, p1, Lcom/google/android/gms/internal/measurement/zzib;->zzc:Lcom/google/android/gms/internal/measurement/zzif;

    .line 19
    return-void
.end method

.method public static zza(Lcom/google/android/gms/internal/measurement/zzib;)Lcom/google/android/gms/internal/measurement/zzif;
    .locals 1

    .line 3
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzib;->zzc:Lcom/google/android/gms/internal/measurement/zzif;

    if-eqz v0, :cond_0

    return-object v0

    .line 4
    :cond_0
    new-instance v0, Lcom/google/android/gms/internal/measurement/zzif;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/measurement/zzif;-><init>(Lcom/google/android/gms/internal/measurement/zzib;)V

    return-object v0
.end method

.method private final zza(Lcom/google/android/gms/internal/measurement/zzlb;Lcom/google/android/gms/internal/measurement/zzik;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/android/gms/internal/measurement/zzlb<",
            "TT;>;",
            "Lcom/google/android/gms/internal/measurement/zzik;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 25
    invoke-interface {p1}, Lcom/google/android/gms/internal/measurement/zzlb;->zza()Ljava/lang/Object;

    move-result-object v0

    .line 26
    invoke-direct {p0, v0, p1, p2}, Lcom/google/android/gms/internal/measurement/zzif;->zzc(Ljava/lang/Object;Lcom/google/android/gms/internal/measurement/zzlb;Lcom/google/android/gms/internal/measurement/zzik;)V

    .line 27
    invoke-interface {p1, v0}, Lcom/google/android/gms/internal/measurement/zzlb;->zzc(Ljava/lang/Object;)V

    return-object v0
.end method

.method private final zza(Lcom/google/android/gms/internal/measurement/zzmn;Ljava/lang/Class;Lcom/google/android/gms/internal/measurement/zzik;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/measurement/zzmn;",
            "Ljava/lang/Class<",
            "*>;",
            "Lcom/google/android/gms/internal/measurement/zzik;",
            ")",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 5
    sget-object v0, Lcom/google/android/gms/internal/measurement/zzie;->zza:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, v0, p1

    packed-switch p1, :pswitch_data_0

    .line 6
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "unsupported field type."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 7
    :pswitch_0
    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/zzif;->zzo()J

    move-result-wide p1

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    return-object p1

    .line 8
    :pswitch_1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/zzif;->zzj()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1

    .line 9
    :pswitch_2
    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/zzif;->zzr()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 10
    :pswitch_3
    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/zzif;->zzn()J

    move-result-wide p1

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    return-object p1

    .line 11
    :pswitch_4
    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/zzif;->zzi()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1

    .line 12
    :pswitch_5
    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/zzif;->zzm()J

    move-result-wide p1

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    return-object p1

    .line 13
    :pswitch_6
    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/zzif;->zzh()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1

    :pswitch_7
    const/4 p1, 0x2

    .line 14
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/measurement/zzif;->zzb(I)V

    .line 15
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzkx;->zza()Lcom/google/android/gms/internal/measurement/zzkx;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/google/android/gms/internal/measurement/zzkx;->zza(Ljava/lang/Class;)Lcom/google/android/gms/internal/measurement/zzlb;

    move-result-object p1

    invoke-direct {p0, p1, p3}, Lcom/google/android/gms/internal/measurement/zzif;->zzb(Lcom/google/android/gms/internal/measurement/zzlb;Lcom/google/android/gms/internal/measurement/zzik;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 16
    :pswitch_8
    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/zzif;->zzl()J

    move-result-wide p1

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    return-object p1

    .line 17
    :pswitch_9
    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/zzif;->zzg()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1

    .line 18
    :pswitch_a
    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/zzif;->zzb()F

    move-result p1

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    return-object p1

    .line 19
    :pswitch_b
    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/zzif;->zzk()J

    move-result-wide p1

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    return-object p1

    .line 20
    :pswitch_c
    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/zzif;->zzf()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1

    .line 21
    :pswitch_d
    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/zzif;->zze()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1

    .line 22
    :pswitch_e
    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/zzif;->zza()D

    move-result-wide p1

    invoke-static {p1, p2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    return-object p1

    .line 23
    :pswitch_f
    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/zzif;->zzp()Lcom/google/android/gms/internal/measurement/zzhm;

    move-result-object p1

    return-object p1

    .line 24
    :pswitch_10
    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/zzif;->zzs()Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private final zza(I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzif;->zza:Lcom/google/android/gms/internal/measurement/zzib;

    .line 82
    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzib;->zzc()I

    move-result v0

    if-ne v0, p1, :cond_0

    return-void

    .line 83
    :cond_0
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzji;->zzh()Lcom/google/android/gms/internal/measurement/zzji;

    move-result-object p1

    throw p1
.end method

.method private final zza(Ljava/util/List;Z)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;Z)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget v0, p0, Lcom/google/android/gms/internal/measurement/zzif;->zzb:I

    and-int/lit8 v0, v0, 0x7

    const/4 v1, 0x2

    if-ne v0, v1, :cond_5

    .line 73
    instance-of v0, p1, Lcom/google/android/gms/internal/measurement/zzjp;

    if-eqz v0, :cond_2

    if-nez p2, :cond_2

    .line 74
    move-object v0, p1

    check-cast v0, Lcom/google/android/gms/internal/measurement/zzjp;

    .line 75
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/zzif;->zzp()Lcom/google/android/gms/internal/measurement/zzhm;

    move-result-object p1

    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/measurement/zzjp;->zza(Lcom/google/android/gms/internal/measurement/zzhm;)V

    iget-object p1, p0, Lcom/google/android/gms/internal/measurement/zzif;->zza:Lcom/google/android/gms/internal/measurement/zzib;

    .line 76
    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zzib;->zzt()Z

    move-result p1

    if-eqz p1, :cond_1

    return-void

    :cond_1
    iget-object p1, p0, Lcom/google/android/gms/internal/measurement/zzif;->zza:Lcom/google/android/gms/internal/measurement/zzib;

    .line 77
    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zzib;->zzi()I

    move-result p1

    iget p2, p0, Lcom/google/android/gms/internal/measurement/zzif;->zzb:I

    if-eq p1, p2, :cond_0

    iput p1, p0, Lcom/google/android/gms/internal/measurement/zzif;->zzd:I

    return-void

    :cond_2
    if-eqz p2, :cond_3

    .line 78
    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/zzif;->zzr()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_3
    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/zzif;->zzq()Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzif;->zza:Lcom/google/android/gms/internal/measurement/zzib;

    .line 79
    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzib;->zzt()Z

    move-result v0

    if-eqz v0, :cond_4

    return-void

    :cond_4
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzif;->zza:Lcom/google/android/gms/internal/measurement/zzib;

    .line 80
    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzib;->zzi()I

    move-result v0

    iget v1, p0, Lcom/google/android/gms/internal/measurement/zzif;->zzb:I

    if-eq v0, v1, :cond_2

    iput v0, p0, Lcom/google/android/gms/internal/measurement/zzif;->zzd:I

    return-void

    .line 81
    :cond_5
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzji;->zza()Lcom/google/android/gms/internal/measurement/zzjh;

    move-result-object p1

    throw p1
.end method

.method private final zzb(Lcom/google/android/gms/internal/measurement/zzlb;Lcom/google/android/gms/internal/measurement/zzik;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/android/gms/internal/measurement/zzlb<",
            "TT;>;",
            "Lcom/google/android/gms/internal/measurement/zzik;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 3
    invoke-interface {p1}, Lcom/google/android/gms/internal/measurement/zzlb;->zza()Ljava/lang/Object;

    move-result-object v0

    .line 4
    invoke-direct {p0, v0, p1, p2}, Lcom/google/android/gms/internal/measurement/zzif;->zzd(Ljava/lang/Object;Lcom/google/android/gms/internal/measurement/zzlb;Lcom/google/android/gms/internal/measurement/zzik;)V

    .line 5
    invoke-interface {p1, v0}, Lcom/google/android/gms/internal/measurement/zzlb;->zzc(Ljava/lang/Object;)V

    return-object v0
.end method

.method private final zzb(I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget v0, p0, Lcom/google/android/gms/internal/measurement/zzif;->zzb:I

    and-int/lit8 v0, v0, 0x7

    if-ne v0, p1, :cond_0

    return-void

    .line 16
    :cond_0
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzji;->zza()Lcom/google/android/gms/internal/measurement/zzjh;

    move-result-object p1

    throw p1
.end method

.method private static zzc(I)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    and-int/lit8 p0, p0, 0x3

    if-nez p0, :cond_0

    return-void

    .line 25
    :cond_0
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzji;->zzg()Lcom/google/android/gms/internal/measurement/zzji;

    move-result-object p0

    throw p0
.end method

.method private final zzc(Ljava/lang/Object;Lcom/google/android/gms/internal/measurement/zzlb;Lcom/google/android/gms/internal/measurement/zzik;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;",
            "Lcom/google/android/gms/internal/measurement/zzlb<",
            "TT;>;",
            "Lcom/google/android/gms/internal/measurement/zzik;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget v0, p0, Lcom/google/android/gms/internal/measurement/zzif;->zzc:I

    iget v1, p0, Lcom/google/android/gms/internal/measurement/zzif;->zzb:I

    ushr-int/lit8 v1, v1, 0x3

    shl-int/lit8 v1, v1, 0x3

    or-int/lit8 v1, v1, 0x4

    iput v1, p0, Lcom/google/android/gms/internal/measurement/zzif;->zzc:I

    .line 2
    :try_start_0
    invoke-interface {p2, p1, p0, p3}, Lcom/google/android/gms/internal/measurement/zzlb;->zza(Ljava/lang/Object;Lcom/google/android/gms/internal/measurement/zzlc;Lcom/google/android/gms/internal/measurement/zzik;)V

    iget p1, p0, Lcom/google/android/gms/internal/measurement/zzif;->zzb:I

    iget p2, p0, Lcom/google/android/gms/internal/measurement/zzif;->zzc:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-ne p1, p2, :cond_0

    iput v0, p0, Lcom/google/android/gms/internal/measurement/zzif;->zzc:I

    return-void

    .line 3
    :cond_0
    :try_start_1
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzji;->zzg()Lcom/google/android/gms/internal/measurement/zzji;

    move-result-object p1

    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception p1

    iput v0, p0, Lcom/google/android/gms/internal/measurement/zzif;->zzc:I

    .line 4
    throw p1
.end method

.method private static zzd(I)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    and-int/lit8 p0, p0, 0x7

    if-nez p0, :cond_0

    return-void

    .line 32
    :cond_0
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzji;->zzg()Lcom/google/android/gms/internal/measurement/zzji;

    move-result-object p0

    throw p0
.end method

.method private final zzd(Ljava/lang/Object;Lcom/google/android/gms/internal/measurement/zzlb;Lcom/google/android/gms/internal/measurement/zzik;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;",
            "Lcom/google/android/gms/internal/measurement/zzlb<",
            "TT;>;",
            "Lcom/google/android/gms/internal/measurement/zzik;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzif;->zza:Lcom/google/android/gms/internal/measurement/zzib;

    .line 2
    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzib;->zzj()I

    move-result v0

    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/zzif;->zza:Lcom/google/android/gms/internal/measurement/zzib;

    .line 3
    iget v2, v1, Lcom/google/android/gms/internal/measurement/zzib;->zza:I

    iget v3, v1, Lcom/google/android/gms/internal/measurement/zzib;->zzb:I

    if-ge v2, v3, :cond_0

    .line 4
    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/measurement/zzib;->zza(I)I

    move-result v0

    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/zzif;->zza:Lcom/google/android/gms/internal/measurement/zzib;

    .line 5
    iget v2, v1, Lcom/google/android/gms/internal/measurement/zzib;->zza:I

    add-int/lit8 v2, v2, 0x1

    iput v2, v1, Lcom/google/android/gms/internal/measurement/zzib;->zza:I

    .line 6
    invoke-interface {p2, p1, p0, p3}, Lcom/google/android/gms/internal/measurement/zzlb;->zza(Ljava/lang/Object;Lcom/google/android/gms/internal/measurement/zzlc;Lcom/google/android/gms/internal/measurement/zzik;)V

    iget-object p1, p0, Lcom/google/android/gms/internal/measurement/zzif;->zza:Lcom/google/android/gms/internal/measurement/zzib;

    const/4 p2, 0x0

    .line 7
    invoke-virtual {p1, p2}, Lcom/google/android/gms/internal/measurement/zzib;->zzb(I)V

    iget-object p1, p0, Lcom/google/android/gms/internal/measurement/zzif;->zza:Lcom/google/android/gms/internal/measurement/zzib;

    .line 8
    iget p2, p1, Lcom/google/android/gms/internal/measurement/zzib;->zza:I

    add-int/lit8 p2, p2, -0x1

    iput p2, p1, Lcom/google/android/gms/internal/measurement/zzib;->zza:I

    .line 9
    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/measurement/zzib;->zzc(I)V

    return-void

    .line 10
    :cond_0
    new-instance p1, Lcom/google/android/gms/internal/measurement/zzji;

    const-string p2, "Protocol message had too many levels of nesting.  May be malicious.  Use CodedInputStream.setRecursionLimit() to increase the depth limit."

    invoke-direct {p1, p2}, Lcom/google/android/gms/internal/measurement/zzji;-><init>(Ljava/lang/String;)V

    .line 11
    throw p1
.end method


# virtual methods
.method public final zza()D
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x1

    .line 1
    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/measurement/zzif;->zzb(I)V

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzif;->zza:Lcom/google/android/gms/internal/measurement/zzib;

    .line 2
    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzib;->zza()D

    move-result-wide v0

    return-wide v0
.end method

.method public final zza(Ljava/lang/Object;Lcom/google/android/gms/internal/measurement/zzlb;Lcom/google/android/gms/internal/measurement/zzik;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;",
            "Lcom/google/android/gms/internal/measurement/zzlb<",
            "TT;>;",
            "Lcom/google/android/gms/internal/measurement/zzik;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x3

    .line 28
    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/measurement/zzif;->zzb(I)V

    .line 29
    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/gms/internal/measurement/zzif;->zzc(Ljava/lang/Object;Lcom/google/android/gms/internal/measurement/zzlb;Lcom/google/android/gms/internal/measurement/zzik;)V

    return-void
.end method

.method public final zza(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 30
    instance-of v0, p1, Lcom/google/android/gms/internal/measurement/zzhk;

    const/4 v1, 0x2

    if-eqz v0, :cond_4

    .line 31
    move-object v0, p1

    check-cast v0, Lcom/google/android/gms/internal/measurement/zzhk;

    iget p1, p0, Lcom/google/android/gms/internal/measurement/zzif;->zzb:I

    and-int/lit8 p1, p1, 0x7

    if-eqz p1, :cond_2

    if-ne p1, v1, :cond_1

    iget-object p1, p0, Lcom/google/android/gms/internal/measurement/zzif;->zza:Lcom/google/android/gms/internal/measurement/zzib;

    .line 32
    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zzib;->zzj()I

    move-result p1

    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/zzif;->zza:Lcom/google/android/gms/internal/measurement/zzib;

    .line 33
    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/zzib;->zzc()I

    move-result v1

    add-int/2addr v1, p1

    :cond_0
    iget-object p1, p0, Lcom/google/android/gms/internal/measurement/zzif;->zza:Lcom/google/android/gms/internal/measurement/zzib;

    .line 34
    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zzib;->zzu()Z

    move-result p1

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/measurement/zzhk;->zza(Z)V

    iget-object p1, p0, Lcom/google/android/gms/internal/measurement/zzif;->zza:Lcom/google/android/gms/internal/measurement/zzib;

    .line 35
    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zzib;->zzc()I

    move-result p1

    if-lt p1, v1, :cond_0

    .line 36
    invoke-direct {p0, v1}, Lcom/google/android/gms/internal/measurement/zzif;->zza(I)V

    return-void

    .line 37
    :cond_1
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzji;->zza()Lcom/google/android/gms/internal/measurement/zzjh;

    move-result-object p1

    throw p1

    :cond_2
    iget-object p1, p0, Lcom/google/android/gms/internal/measurement/zzif;->zza:Lcom/google/android/gms/internal/measurement/zzib;

    .line 38
    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zzib;->zzu()Z

    move-result p1

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/measurement/zzhk;->zza(Z)V

    iget-object p1, p0, Lcom/google/android/gms/internal/measurement/zzif;->zza:Lcom/google/android/gms/internal/measurement/zzib;

    .line 39
    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zzib;->zzt()Z

    move-result p1

    if-eqz p1, :cond_3

    return-void

    :cond_3
    iget-object p1, p0, Lcom/google/android/gms/internal/measurement/zzif;->zza:Lcom/google/android/gms/internal/measurement/zzib;

    .line 40
    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zzib;->zzi()I

    move-result p1

    iget v1, p0, Lcom/google/android/gms/internal/measurement/zzif;->zzb:I

    if-eq p1, v1, :cond_2

    iput p1, p0, Lcom/google/android/gms/internal/measurement/zzif;->zzd:I

    return-void

    :cond_4
    iget v0, p0, Lcom/google/android/gms/internal/measurement/zzif;->zzb:I

    and-int/lit8 v0, v0, 0x7

    if-eqz v0, :cond_7

    if-ne v0, v1, :cond_6

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzif;->zza:Lcom/google/android/gms/internal/measurement/zzib;

    .line 41
    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzib;->zzj()I

    move-result v0

    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/zzif;->zza:Lcom/google/android/gms/internal/measurement/zzib;

    .line 42
    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/zzib;->zzc()I

    move-result v1

    add-int/2addr v1, v0

    :cond_5
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzif;->zza:Lcom/google/android/gms/internal/measurement/zzib;

    .line 43
    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzib;->zzu()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzif;->zza:Lcom/google/android/gms/internal/measurement/zzib;

    .line 44
    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzib;->zzc()I

    move-result v0

    if-lt v0, v1, :cond_5

    .line 45
    invoke-direct {p0, v1}, Lcom/google/android/gms/internal/measurement/zzif;->zza(I)V

    return-void

    .line 46
    :cond_6
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzji;->zza()Lcom/google/android/gms/internal/measurement/zzjh;

    move-result-object p1

    throw p1

    :cond_7
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzif;->zza:Lcom/google/android/gms/internal/measurement/zzib;

    .line 47
    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzib;->zzu()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzif;->zza:Lcom/google/android/gms/internal/measurement/zzib;

    .line 48
    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzib;->zzt()Z

    move-result v0

    if-eqz v0, :cond_8

    return-void

    :cond_8
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzif;->zza:Lcom/google/android/gms/internal/measurement/zzib;

    .line 49
    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzib;->zzi()I

    move-result v0

    iget v1, p0, Lcom/google/android/gms/internal/measurement/zzif;->zzb:I

    if-eq v0, v1, :cond_7

    iput v0, p0, Lcom/google/android/gms/internal/measurement/zzif;->zzd:I

    return-void
.end method

.method public final zza(Ljava/util/List;Lcom/google/android/gms/internal/measurement/zzlb;Lcom/google/android/gms/internal/measurement/zzik;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/List<",
            "TT;>;",
            "Lcom/google/android/gms/internal/measurement/zzlb<",
            "TT;>;",
            "Lcom/google/android/gms/internal/measurement/zzik;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget v0, p0, Lcom/google/android/gms/internal/measurement/zzif;->zzb:I

    and-int/lit8 v1, v0, 0x7

    const/4 v2, 0x3

    if-ne v1, v2, :cond_3

    .line 50
    :cond_0
    invoke-direct {p0, p2, p3}, Lcom/google/android/gms/internal/measurement/zzif;->zza(Lcom/google/android/gms/internal/measurement/zzlb;Lcom/google/android/gms/internal/measurement/zzik;)Ljava/lang/Object;

    move-result-object v1

    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/zzif;->zza:Lcom/google/android/gms/internal/measurement/zzib;

    .line 51
    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/zzib;->zzt()Z

    move-result v1

    if-nez v1, :cond_2

    iget v1, p0, Lcom/google/android/gms/internal/measurement/zzif;->zzd:I

    if-eqz v1, :cond_1

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/zzif;->zza:Lcom/google/android/gms/internal/measurement/zzib;

    .line 52
    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/zzib;->zzi()I

    move-result v1

    if-eq v1, v0, :cond_0

    iput v1, p0, Lcom/google/android/gms/internal/measurement/zzif;->zzd:I

    :cond_2
    :goto_0
    return-void

    .line 53
    :cond_3
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzji;->zza()Lcom/google/android/gms/internal/measurement/zzjh;

    move-result-object p1

    throw p1
.end method

.method public final zza(Ljava/util/Map;Lcom/google/android/gms/internal/measurement/zzke;Lcom/google/android/gms/internal/measurement/zzik;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Map<",
            "TK;TV;>;",
            "Lcom/google/android/gms/internal/measurement/zzke<",
            "TK;TV;>;",
            "Lcom/google/android/gms/internal/measurement/zzik;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x2

    .line 54
    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/measurement/zzif;->zzb(I)V

    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/zzif;->zza:Lcom/google/android/gms/internal/measurement/zzib;

    .line 55
    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/zzib;->zzj()I

    move-result v1

    iget-object v2, p0, Lcom/google/android/gms/internal/measurement/zzif;->zza:Lcom/google/android/gms/internal/measurement/zzib;

    .line 56
    invoke-virtual {v2, v1}, Lcom/google/android/gms/internal/measurement/zzib;->zza(I)I

    move-result v1

    .line 57
    iget-object v2, p2, Lcom/google/android/gms/internal/measurement/zzke;->zzb:Ljava/lang/Object;

    .line 58
    iget-object v3, p2, Lcom/google/android/gms/internal/measurement/zzke;->zzd:Ljava/lang/Object;

    .line 59
    :goto_0
    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/zzif;->zzc()I

    move-result v4

    const v5, 0x7fffffff

    if-eq v4, v5, :cond_4

    iget-object v5, p0, Lcom/google/android/gms/internal/measurement/zzif;->zza:Lcom/google/android/gms/internal/measurement/zzib;

    .line 60
    invoke-virtual {v5}, Lcom/google/android/gms/internal/measurement/zzib;->zzt()Z

    move-result v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v5, :cond_4

    const/4 v5, 0x1

    const-string v6, "Unable to parse map entry."

    if-eq v4, v5, :cond_2

    if-eq v4, v0, :cond_1

    .line 61
    :try_start_1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/zzif;->zzt()Z

    move-result v4

    if-eqz v4, :cond_0

    goto :goto_0

    .line 62
    :cond_0
    new-instance v4, Lcom/google/android/gms/internal/measurement/zzji;

    invoke-direct {v4, v6}, Lcom/google/android/gms/internal/measurement/zzji;-><init>(Ljava/lang/String;)V

    throw v4

    :catchall_0
    move-exception p1

    goto :goto_1

    .line 63
    :cond_1
    iget-object v4, p2, Lcom/google/android/gms/internal/measurement/zzke;->zzc:Lcom/google/android/gms/internal/measurement/zzmn;

    iget-object v5, p2, Lcom/google/android/gms/internal/measurement/zzke;->zzd:Ljava/lang/Object;

    .line 64
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    .line 65
    invoke-direct {p0, v4, v5, p3}, Lcom/google/android/gms/internal/measurement/zzif;->zza(Lcom/google/android/gms/internal/measurement/zzmn;Ljava/lang/Class;Lcom/google/android/gms/internal/measurement/zzik;)Ljava/lang/Object;

    move-result-object v3

    goto :goto_0

    .line 66
    :cond_2
    iget-object v4, p2, Lcom/google/android/gms/internal/measurement/zzke;->zza:Lcom/google/android/gms/internal/measurement/zzmn;

    const/4 v5, 0x0

    invoke-direct {p0, v4, v5, v5}, Lcom/google/android/gms/internal/measurement/zzif;->zza(Lcom/google/android/gms/internal/measurement/zzmn;Ljava/lang/Class;Lcom/google/android/gms/internal/measurement/zzik;)Ljava/lang/Object;

    move-result-object v2
    :try_end_1
    .catch Lcom/google/android/gms/internal/measurement/zzjh; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 67
    :catch_0
    :try_start_2
    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/zzif;->zzt()Z

    move-result v4

    if-eqz v4, :cond_3

    goto :goto_0

    .line 68
    :cond_3
    new-instance p1, Lcom/google/android/gms/internal/measurement/zzji;

    invoke-direct {p1, v6}, Lcom/google/android/gms/internal/measurement/zzji;-><init>(Ljava/lang/String;)V

    throw p1

    .line 69
    :cond_4
    invoke-interface {p1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    iget-object p1, p0, Lcom/google/android/gms/internal/measurement/zzif;->zza:Lcom/google/android/gms/internal/measurement/zzib;

    .line 70
    invoke-virtual {p1, v1}, Lcom/google/android/gms/internal/measurement/zzib;->zzc(I)V

    return-void

    :goto_1
    iget-object p2, p0, Lcom/google/android/gms/internal/measurement/zzif;->zza:Lcom/google/android/gms/internal/measurement/zzib;

    .line 71
    invoke-virtual {p2, v1}, Lcom/google/android/gms/internal/measurement/zzib;->zzc(I)V

    .line 72
    throw p1
.end method

.method public final zzb()F
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x5

    .line 1
    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/measurement/zzif;->zzb(I)V

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzif;->zza:Lcom/google/android/gms/internal/measurement/zzib;

    .line 2
    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzib;->zzb()F

    move-result v0

    return v0
.end method

.method public final zzb(Ljava/lang/Object;Lcom/google/android/gms/internal/measurement/zzlb;Lcom/google/android/gms/internal/measurement/zzik;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;",
            "Lcom/google/android/gms/internal/measurement/zzlb<",
            "TT;>;",
            "Lcom/google/android/gms/internal/measurement/zzik;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x2

    .line 6
    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/measurement/zzif;->zzb(I)V

    .line 7
    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/gms/internal/measurement/zzif;->zzd(Ljava/lang/Object;Lcom/google/android/gms/internal/measurement/zzlb;Lcom/google/android/gms/internal/measurement/zzik;)V

    return-void
.end method

.method public final zzb(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/google/android/gms/internal/measurement/zzhm;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget v0, p0, Lcom/google/android/gms/internal/measurement/zzif;->zzb:I

    and-int/lit8 v0, v0, 0x7

    const/4 v1, 0x2

    if-ne v0, v1, :cond_2

    .line 8
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/zzif;->zzp()Lcom/google/android/gms/internal/measurement/zzhm;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzif;->zza:Lcom/google/android/gms/internal/measurement/zzib;

    .line 9
    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzib;->zzt()Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzif;->zza:Lcom/google/android/gms/internal/measurement/zzib;

    .line 10
    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzib;->zzi()I

    move-result v0

    iget v1, p0, Lcom/google/android/gms/internal/measurement/zzif;->zzb:I

    if-eq v0, v1, :cond_0

    iput v0, p0, Lcom/google/android/gms/internal/measurement/zzif;->zzd:I

    return-void

    .line 11
    :cond_2
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzji;->zza()Lcom/google/android/gms/internal/measurement/zzjh;

    move-result-object p1

    throw p1
.end method

.method public final zzb(Ljava/util/List;Lcom/google/android/gms/internal/measurement/zzlb;Lcom/google/android/gms/internal/measurement/zzik;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/List<",
            "TT;>;",
            "Lcom/google/android/gms/internal/measurement/zzlb<",
            "TT;>;",
            "Lcom/google/android/gms/internal/measurement/zzik;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget v0, p0, Lcom/google/android/gms/internal/measurement/zzif;->zzb:I

    and-int/lit8 v1, v0, 0x7

    const/4 v2, 0x2

    if-ne v1, v2, :cond_3

    .line 12
    :cond_0
    invoke-direct {p0, p2, p3}, Lcom/google/android/gms/internal/measurement/zzif;->zzb(Lcom/google/android/gms/internal/measurement/zzlb;Lcom/google/android/gms/internal/measurement/zzik;)Ljava/lang/Object;

    move-result-object v1

    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/zzif;->zza:Lcom/google/android/gms/internal/measurement/zzib;

    .line 13
    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/zzib;->zzt()Z

    move-result v1

    if-nez v1, :cond_2

    iget v1, p0, Lcom/google/android/gms/internal/measurement/zzif;->zzd:I

    if-eqz v1, :cond_1

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/zzif;->zza:Lcom/google/android/gms/internal/measurement/zzib;

    .line 14
    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/zzib;->zzi()I

    move-result v1

    if-eq v1, v0, :cond_0

    iput v1, p0, Lcom/google/android/gms/internal/measurement/zzif;->zzd:I

    :cond_2
    :goto_0
    return-void

    .line 15
    :cond_3
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzji;->zza()Lcom/google/android/gms/internal/measurement/zzjh;

    move-result-object p1

    throw p1
.end method

.method public final zzc()I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget v0, p0, Lcom/google/android/gms/internal/measurement/zzif;->zzd:I

    if-eqz v0, :cond_0

    iput v0, p0, Lcom/google/android/gms/internal/measurement/zzif;->zzb:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/gms/internal/measurement/zzif;->zzd:I

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzif;->zza:Lcom/google/android/gms/internal/measurement/zzib;

    .line 1
    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzib;->zzi()I

    move-result v0

    iput v0, p0, Lcom/google/android/gms/internal/measurement/zzif;->zzb:I

    :goto_0
    iget v0, p0, Lcom/google/android/gms/internal/measurement/zzif;->zzb:I

    if-eqz v0, :cond_2

    iget v1, p0, Lcom/google/android/gms/internal/measurement/zzif;->zzc:I

    if-ne v0, v1, :cond_1

    goto :goto_1

    :cond_1
    ushr-int/lit8 v0, v0, 0x3

    return v0

    :cond_2
    :goto_1
    const v0, 0x7fffffff

    return v0
.end method

.method public final zzc(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Double;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 5
    instance-of v0, p1, Lcom/google/android/gms/internal/measurement/zzii;

    const/4 v1, 0x2

    const/4 v2, 0x1

    if-eqz v0, :cond_4

    .line 6
    move-object v0, p1

    check-cast v0, Lcom/google/android/gms/internal/measurement/zzii;

    iget p1, p0, Lcom/google/android/gms/internal/measurement/zzif;->zzb:I

    and-int/lit8 p1, p1, 0x7

    if-eq p1, v2, :cond_2

    if-ne p1, v1, :cond_1

    iget-object p1, p0, Lcom/google/android/gms/internal/measurement/zzif;->zza:Lcom/google/android/gms/internal/measurement/zzib;

    .line 7
    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zzib;->zzj()I

    move-result p1

    .line 8
    invoke-static {p1}, Lcom/google/android/gms/internal/measurement/zzif;->zzd(I)V

    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/zzif;->zza:Lcom/google/android/gms/internal/measurement/zzib;

    .line 9
    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/zzib;->zzc()I

    move-result v1

    add-int/2addr v1, p1

    :cond_0
    iget-object p1, p0, Lcom/google/android/gms/internal/measurement/zzif;->zza:Lcom/google/android/gms/internal/measurement/zzib;

    .line 10
    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zzib;->zza()D

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/google/android/gms/internal/measurement/zzii;->zza(D)V

    iget-object p1, p0, Lcom/google/android/gms/internal/measurement/zzif;->zza:Lcom/google/android/gms/internal/measurement/zzib;

    .line 11
    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zzib;->zzc()I

    move-result p1

    if-lt p1, v1, :cond_0

    return-void

    .line 12
    :cond_1
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzji;->zza()Lcom/google/android/gms/internal/measurement/zzjh;

    move-result-object p1

    throw p1

    :cond_2
    iget-object p1, p0, Lcom/google/android/gms/internal/measurement/zzif;->zza:Lcom/google/android/gms/internal/measurement/zzib;

    .line 13
    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zzib;->zza()D

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/measurement/zzii;->zza(D)V

    iget-object p1, p0, Lcom/google/android/gms/internal/measurement/zzif;->zza:Lcom/google/android/gms/internal/measurement/zzib;

    .line 14
    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zzib;->zzt()Z

    move-result p1

    if-eqz p1, :cond_3

    return-void

    :cond_3
    iget-object p1, p0, Lcom/google/android/gms/internal/measurement/zzif;->zza:Lcom/google/android/gms/internal/measurement/zzib;

    .line 15
    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zzib;->zzi()I

    move-result p1

    iget v1, p0, Lcom/google/android/gms/internal/measurement/zzif;->zzb:I

    if-eq p1, v1, :cond_2

    iput p1, p0, Lcom/google/android/gms/internal/measurement/zzif;->zzd:I

    return-void

    :cond_4
    iget v0, p0, Lcom/google/android/gms/internal/measurement/zzif;->zzb:I

    and-int/lit8 v0, v0, 0x7

    if-eq v0, v2, :cond_7

    if-ne v0, v1, :cond_6

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzif;->zza:Lcom/google/android/gms/internal/measurement/zzib;

    .line 16
    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzib;->zzj()I

    move-result v0

    .line 17
    invoke-static {v0}, Lcom/google/android/gms/internal/measurement/zzif;->zzd(I)V

    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/zzif;->zza:Lcom/google/android/gms/internal/measurement/zzib;

    .line 18
    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/zzib;->zzc()I

    move-result v1

    add-int/2addr v1, v0

    :cond_5
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzif;->zza:Lcom/google/android/gms/internal/measurement/zzib;

    .line 19
    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzib;->zza()D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzif;->zza:Lcom/google/android/gms/internal/measurement/zzib;

    .line 20
    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzib;->zzc()I

    move-result v0

    if-lt v0, v1, :cond_5

    return-void

    .line 21
    :cond_6
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzji;->zza()Lcom/google/android/gms/internal/measurement/zzjh;

    move-result-object p1

    throw p1

    :cond_7
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzif;->zza:Lcom/google/android/gms/internal/measurement/zzib;

    .line 22
    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzib;->zza()D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzif;->zza:Lcom/google/android/gms/internal/measurement/zzib;

    .line 23
    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzib;->zzt()Z

    move-result v0

    if-eqz v0, :cond_8

    return-void

    :cond_8
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzif;->zza:Lcom/google/android/gms/internal/measurement/zzib;

    .line 24
    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzib;->zzi()I

    move-result v0

    iget v1, p0, Lcom/google/android/gms/internal/measurement/zzif;->zzb:I

    if-eq v0, v1, :cond_7

    iput v0, p0, Lcom/google/android/gms/internal/measurement/zzif;->zzd:I

    return-void
.end method

.method public final zzd()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/google/android/gms/internal/measurement/zzif;->zzb:I

    return v0
.end method

.method public final zzd(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 12
    instance-of v0, p1, Lcom/google/android/gms/internal/measurement/zzja;

    const/4 v1, 0x2

    if-eqz v0, :cond_4

    .line 13
    move-object v0, p1

    check-cast v0, Lcom/google/android/gms/internal/measurement/zzja;

    iget p1, p0, Lcom/google/android/gms/internal/measurement/zzif;->zzb:I

    and-int/lit8 p1, p1, 0x7

    if-eqz p1, :cond_2

    if-ne p1, v1, :cond_1

    iget-object p1, p0, Lcom/google/android/gms/internal/measurement/zzif;->zza:Lcom/google/android/gms/internal/measurement/zzib;

    .line 14
    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zzib;->zzj()I

    move-result p1

    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/zzif;->zza:Lcom/google/android/gms/internal/measurement/zzib;

    .line 15
    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/zzib;->zzc()I

    move-result v1

    add-int/2addr v1, p1

    :cond_0
    iget-object p1, p0, Lcom/google/android/gms/internal/measurement/zzif;->zza:Lcom/google/android/gms/internal/measurement/zzib;

    .line 16
    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zzib;->zzd()I

    move-result p1

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/measurement/zzja;->zzd(I)V

    iget-object p1, p0, Lcom/google/android/gms/internal/measurement/zzif;->zza:Lcom/google/android/gms/internal/measurement/zzib;

    .line 17
    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zzib;->zzc()I

    move-result p1

    if-lt p1, v1, :cond_0

    .line 18
    invoke-direct {p0, v1}, Lcom/google/android/gms/internal/measurement/zzif;->zza(I)V

    return-void

    .line 19
    :cond_1
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzji;->zza()Lcom/google/android/gms/internal/measurement/zzjh;

    move-result-object p1

    throw p1

    :cond_2
    iget-object p1, p0, Lcom/google/android/gms/internal/measurement/zzif;->zza:Lcom/google/android/gms/internal/measurement/zzib;

    .line 20
    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zzib;->zzd()I

    move-result p1

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/measurement/zzja;->zzd(I)V

    iget-object p1, p0, Lcom/google/android/gms/internal/measurement/zzif;->zza:Lcom/google/android/gms/internal/measurement/zzib;

    .line 21
    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zzib;->zzt()Z

    move-result p1

    if-eqz p1, :cond_3

    return-void

    :cond_3
    iget-object p1, p0, Lcom/google/android/gms/internal/measurement/zzif;->zza:Lcom/google/android/gms/internal/measurement/zzib;

    .line 22
    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zzib;->zzi()I

    move-result p1

    iget v1, p0, Lcom/google/android/gms/internal/measurement/zzif;->zzb:I

    if-eq p1, v1, :cond_2

    iput p1, p0, Lcom/google/android/gms/internal/measurement/zzif;->zzd:I

    return-void

    :cond_4
    iget v0, p0, Lcom/google/android/gms/internal/measurement/zzif;->zzb:I

    and-int/lit8 v0, v0, 0x7

    if-eqz v0, :cond_7

    if-ne v0, v1, :cond_6

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzif;->zza:Lcom/google/android/gms/internal/measurement/zzib;

    .line 23
    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzib;->zzj()I

    move-result v0

    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/zzif;->zza:Lcom/google/android/gms/internal/measurement/zzib;

    .line 24
    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/zzib;->zzc()I

    move-result v1

    add-int/2addr v1, v0

    :cond_5
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzif;->zza:Lcom/google/android/gms/internal/measurement/zzib;

    .line 25
    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzib;->zzd()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzif;->zza:Lcom/google/android/gms/internal/measurement/zzib;

    .line 26
    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzib;->zzc()I

    move-result v0

    if-lt v0, v1, :cond_5

    .line 27
    invoke-direct {p0, v1}, Lcom/google/android/gms/internal/measurement/zzif;->zza(I)V

    return-void

    .line 28
    :cond_6
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzji;->zza()Lcom/google/android/gms/internal/measurement/zzjh;

    move-result-object p1

    throw p1

    :cond_7
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzif;->zza:Lcom/google/android/gms/internal/measurement/zzib;

    .line 29
    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzib;->zzd()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzif;->zza:Lcom/google/android/gms/internal/measurement/zzib;

    .line 30
    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzib;->zzt()Z

    move-result v0

    if-eqz v0, :cond_8

    return-void

    :cond_8
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzif;->zza:Lcom/google/android/gms/internal/measurement/zzib;

    .line 31
    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzib;->zzi()I

    move-result v0

    iget v1, p0, Lcom/google/android/gms/internal/measurement/zzif;->zzb:I

    if-eq v0, v1, :cond_7

    iput v0, p0, Lcom/google/android/gms/internal/measurement/zzif;->zzd:I

    return-void
.end method

.method public final zze()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/measurement/zzif;->zzb(I)V

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzif;->zza:Lcom/google/android/gms/internal/measurement/zzib;

    .line 2
    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzib;->zzd()I

    move-result v0

    return v0
.end method

.method public final zze(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 3
    instance-of v0, p1, Lcom/google/android/gms/internal/measurement/zzja;

    const/4 v1, 0x5

    const/4 v2, 0x2

    if-eqz v0, :cond_5

    .line 4
    move-object v0, p1

    check-cast v0, Lcom/google/android/gms/internal/measurement/zzja;

    iget p1, p0, Lcom/google/android/gms/internal/measurement/zzif;->zzb:I

    and-int/lit8 p1, p1, 0x7

    if-eq p1, v2, :cond_3

    if-ne p1, v1, :cond_2

    :cond_0
    iget-object p1, p0, Lcom/google/android/gms/internal/measurement/zzif;->zza:Lcom/google/android/gms/internal/measurement/zzib;

    .line 5
    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zzib;->zze()I

    move-result p1

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/measurement/zzja;->zzd(I)V

    iget-object p1, p0, Lcom/google/android/gms/internal/measurement/zzif;->zza:Lcom/google/android/gms/internal/measurement/zzib;

    .line 6
    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zzib;->zzt()Z

    move-result p1

    if-eqz p1, :cond_1

    return-void

    :cond_1
    iget-object p1, p0, Lcom/google/android/gms/internal/measurement/zzif;->zza:Lcom/google/android/gms/internal/measurement/zzib;

    .line 7
    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zzib;->zzi()I

    move-result p1

    iget v1, p0, Lcom/google/android/gms/internal/measurement/zzif;->zzb:I

    if-eq p1, v1, :cond_0

    iput p1, p0, Lcom/google/android/gms/internal/measurement/zzif;->zzd:I

    return-void

    .line 8
    :cond_2
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzji;->zza()Lcom/google/android/gms/internal/measurement/zzjh;

    move-result-object p1

    throw p1

    :cond_3
    iget-object p1, p0, Lcom/google/android/gms/internal/measurement/zzif;->zza:Lcom/google/android/gms/internal/measurement/zzib;

    .line 9
    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zzib;->zzj()I

    move-result p1

    .line 10
    invoke-static {p1}, Lcom/google/android/gms/internal/measurement/zzif;->zzc(I)V

    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/zzif;->zza:Lcom/google/android/gms/internal/measurement/zzib;

    .line 11
    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/zzib;->zzc()I

    move-result v1

    add-int v3, v1, p1

    :cond_4
    iget-object p1, p0, Lcom/google/android/gms/internal/measurement/zzif;->zza:Lcom/google/android/gms/internal/measurement/zzib;

    .line 12
    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zzib;->zze()I

    move-result p1

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/measurement/zzja;->zzd(I)V

    iget-object p1, p0, Lcom/google/android/gms/internal/measurement/zzif;->zza:Lcom/google/android/gms/internal/measurement/zzib;

    .line 13
    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zzib;->zzc()I

    move-result p1

    if-lt p1, v3, :cond_4

    return-void

    :cond_5
    iget v0, p0, Lcom/google/android/gms/internal/measurement/zzif;->zzb:I

    and-int/lit8 v0, v0, 0x7

    if-eq v0, v2, :cond_9

    if-ne v0, v1, :cond_8

    :cond_6
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzif;->zza:Lcom/google/android/gms/internal/measurement/zzib;

    .line 14
    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzib;->zze()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzif;->zza:Lcom/google/android/gms/internal/measurement/zzib;

    .line 15
    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzib;->zzt()Z

    move-result v0

    if-eqz v0, :cond_7

    return-void

    :cond_7
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzif;->zza:Lcom/google/android/gms/internal/measurement/zzib;

    .line 16
    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzib;->zzi()I

    move-result v0

    iget v1, p0, Lcom/google/android/gms/internal/measurement/zzif;->zzb:I

    if-eq v0, v1, :cond_6

    iput v0, p0, Lcom/google/android/gms/internal/measurement/zzif;->zzd:I

    return-void

    .line 17
    :cond_8
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzji;->zza()Lcom/google/android/gms/internal/measurement/zzjh;

    move-result-object p1

    throw p1

    :cond_9
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzif;->zza:Lcom/google/android/gms/internal/measurement/zzib;

    .line 18
    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzib;->zzj()I

    move-result v0

    .line 19
    invoke-static {v0}, Lcom/google/android/gms/internal/measurement/zzif;->zzc(I)V

    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/zzif;->zza:Lcom/google/android/gms/internal/measurement/zzib;

    .line 20
    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/zzib;->zzc()I

    move-result v1

    add-int/2addr v1, v0

    :cond_a
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzif;->zza:Lcom/google/android/gms/internal/measurement/zzib;

    .line 21
    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzib;->zze()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzif;->zza:Lcom/google/android/gms/internal/measurement/zzib;

    .line 22
    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzib;->zzc()I

    move-result v0

    if-lt v0, v1, :cond_a

    return-void
.end method

.method public final zzf()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x5

    .line 1
    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/measurement/zzif;->zzb(I)V

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzif;->zza:Lcom/google/android/gms/internal/measurement/zzib;

    .line 2
    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzib;->zze()I

    move-result v0

    return v0
.end method

.method public final zzf(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 3
    instance-of v0, p1, Lcom/google/android/gms/internal/measurement/zzjy;

    const/4 v1, 0x2

    const/4 v2, 0x1

    if-eqz v0, :cond_4

    .line 4
    move-object v0, p1

    check-cast v0, Lcom/google/android/gms/internal/measurement/zzjy;

    iget p1, p0, Lcom/google/android/gms/internal/measurement/zzif;->zzb:I

    and-int/lit8 p1, p1, 0x7

    if-eq p1, v2, :cond_2

    if-ne p1, v1, :cond_1

    iget-object p1, p0, Lcom/google/android/gms/internal/measurement/zzif;->zza:Lcom/google/android/gms/internal/measurement/zzib;

    .line 5
    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zzib;->zzj()I

    move-result p1

    .line 6
    invoke-static {p1}, Lcom/google/android/gms/internal/measurement/zzif;->zzd(I)V

    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/zzif;->zza:Lcom/google/android/gms/internal/measurement/zzib;

    .line 7
    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/zzib;->zzc()I

    move-result v1

    add-int/2addr v1, p1

    :cond_0
    iget-object p1, p0, Lcom/google/android/gms/internal/measurement/zzif;->zza:Lcom/google/android/gms/internal/measurement/zzib;

    .line 8
    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zzib;->zzk()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/google/android/gms/internal/measurement/zzjy;->zza(J)V

    iget-object p1, p0, Lcom/google/android/gms/internal/measurement/zzif;->zza:Lcom/google/android/gms/internal/measurement/zzib;

    .line 9
    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zzib;->zzc()I

    move-result p1

    if-lt p1, v1, :cond_0

    return-void

    .line 10
    :cond_1
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzji;->zza()Lcom/google/android/gms/internal/measurement/zzjh;

    move-result-object p1

    throw p1

    :cond_2
    iget-object p1, p0, Lcom/google/android/gms/internal/measurement/zzif;->zza:Lcom/google/android/gms/internal/measurement/zzib;

    .line 11
    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zzib;->zzk()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/measurement/zzjy;->zza(J)V

    iget-object p1, p0, Lcom/google/android/gms/internal/measurement/zzif;->zza:Lcom/google/android/gms/internal/measurement/zzib;

    .line 12
    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zzib;->zzt()Z

    move-result p1

    if-eqz p1, :cond_3

    return-void

    :cond_3
    iget-object p1, p0, Lcom/google/android/gms/internal/measurement/zzif;->zza:Lcom/google/android/gms/internal/measurement/zzib;

    .line 13
    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zzib;->zzi()I

    move-result p1

    iget v1, p0, Lcom/google/android/gms/internal/measurement/zzif;->zzb:I

    if-eq p1, v1, :cond_2

    iput p1, p0, Lcom/google/android/gms/internal/measurement/zzif;->zzd:I

    return-void

    :cond_4
    iget v0, p0, Lcom/google/android/gms/internal/measurement/zzif;->zzb:I

    and-int/lit8 v0, v0, 0x7

    if-eq v0, v2, :cond_7

    if-ne v0, v1, :cond_6

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzif;->zza:Lcom/google/android/gms/internal/measurement/zzib;

    .line 14
    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzib;->zzj()I

    move-result v0

    .line 15
    invoke-static {v0}, Lcom/google/android/gms/internal/measurement/zzif;->zzd(I)V

    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/zzif;->zza:Lcom/google/android/gms/internal/measurement/zzib;

    .line 16
    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/zzib;->zzc()I

    move-result v1

    add-int/2addr v1, v0

    :cond_5
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzif;->zza:Lcom/google/android/gms/internal/measurement/zzib;

    .line 17
    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzib;->zzk()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzif;->zza:Lcom/google/android/gms/internal/measurement/zzib;

    .line 18
    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzib;->zzc()I

    move-result v0

    if-lt v0, v1, :cond_5

    return-void

    .line 19
    :cond_6
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzji;->zza()Lcom/google/android/gms/internal/measurement/zzjh;

    move-result-object p1

    throw p1

    :cond_7
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzif;->zza:Lcom/google/android/gms/internal/measurement/zzib;

    .line 20
    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzib;->zzk()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzif;->zza:Lcom/google/android/gms/internal/measurement/zzib;

    .line 21
    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzib;->zzt()Z

    move-result v0

    if-eqz v0, :cond_8

    return-void

    :cond_8
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzif;->zza:Lcom/google/android/gms/internal/measurement/zzib;

    .line 22
    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzib;->zzi()I

    move-result v0

    iget v1, p0, Lcom/google/android/gms/internal/measurement/zzif;->zzb:I

    if-eq v0, v1, :cond_7

    iput v0, p0, Lcom/google/android/gms/internal/measurement/zzif;->zzd:I

    return-void
.end method

.method public final zzg()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/measurement/zzif;->zzb(I)V

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzif;->zza:Lcom/google/android/gms/internal/measurement/zzib;

    .line 2
    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzib;->zzf()I

    move-result v0

    return v0
.end method

.method public final zzg(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Float;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 3
    instance-of v0, p1, Lcom/google/android/gms/internal/measurement/zziw;

    const/4 v1, 0x5

    const/4 v2, 0x2

    if-eqz v0, :cond_5

    .line 4
    move-object v0, p1

    check-cast v0, Lcom/google/android/gms/internal/measurement/zziw;

    iget p1, p0, Lcom/google/android/gms/internal/measurement/zzif;->zzb:I

    and-int/lit8 p1, p1, 0x7

    if-eq p1, v2, :cond_3

    if-ne p1, v1, :cond_2

    :cond_0
    iget-object p1, p0, Lcom/google/android/gms/internal/measurement/zzif;->zza:Lcom/google/android/gms/internal/measurement/zzib;

    .line 5
    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zzib;->zzb()F

    move-result p1

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/measurement/zziw;->zza(F)V

    iget-object p1, p0, Lcom/google/android/gms/internal/measurement/zzif;->zza:Lcom/google/android/gms/internal/measurement/zzib;

    .line 6
    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zzib;->zzt()Z

    move-result p1

    if-eqz p1, :cond_1

    return-void

    :cond_1
    iget-object p1, p0, Lcom/google/android/gms/internal/measurement/zzif;->zza:Lcom/google/android/gms/internal/measurement/zzib;

    .line 7
    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zzib;->zzi()I

    move-result p1

    iget v1, p0, Lcom/google/android/gms/internal/measurement/zzif;->zzb:I

    if-eq p1, v1, :cond_0

    iput p1, p0, Lcom/google/android/gms/internal/measurement/zzif;->zzd:I

    return-void

    .line 8
    :cond_2
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzji;->zza()Lcom/google/android/gms/internal/measurement/zzjh;

    move-result-object p1

    throw p1

    :cond_3
    iget-object p1, p0, Lcom/google/android/gms/internal/measurement/zzif;->zza:Lcom/google/android/gms/internal/measurement/zzib;

    .line 9
    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zzib;->zzj()I

    move-result p1

    .line 10
    invoke-static {p1}, Lcom/google/android/gms/internal/measurement/zzif;->zzc(I)V

    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/zzif;->zza:Lcom/google/android/gms/internal/measurement/zzib;

    .line 11
    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/zzib;->zzc()I

    move-result v1

    add-int v3, v1, p1

    :cond_4
    iget-object p1, p0, Lcom/google/android/gms/internal/measurement/zzif;->zza:Lcom/google/android/gms/internal/measurement/zzib;

    .line 12
    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zzib;->zzb()F

    move-result p1

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/measurement/zziw;->zza(F)V

    iget-object p1, p0, Lcom/google/android/gms/internal/measurement/zzif;->zza:Lcom/google/android/gms/internal/measurement/zzib;

    .line 13
    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zzib;->zzc()I

    move-result p1

    if-lt p1, v3, :cond_4

    return-void

    :cond_5
    iget v0, p0, Lcom/google/android/gms/internal/measurement/zzif;->zzb:I

    and-int/lit8 v0, v0, 0x7

    if-eq v0, v2, :cond_9

    if-ne v0, v1, :cond_8

    :cond_6
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzif;->zza:Lcom/google/android/gms/internal/measurement/zzib;

    .line 14
    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzib;->zzb()F

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzif;->zza:Lcom/google/android/gms/internal/measurement/zzib;

    .line 15
    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzib;->zzt()Z

    move-result v0

    if-eqz v0, :cond_7

    return-void

    :cond_7
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzif;->zza:Lcom/google/android/gms/internal/measurement/zzib;

    .line 16
    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzib;->zzi()I

    move-result v0

    iget v1, p0, Lcom/google/android/gms/internal/measurement/zzif;->zzb:I

    if-eq v0, v1, :cond_6

    iput v0, p0, Lcom/google/android/gms/internal/measurement/zzif;->zzd:I

    return-void

    .line 17
    :cond_8
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzji;->zza()Lcom/google/android/gms/internal/measurement/zzjh;

    move-result-object p1

    throw p1

    :cond_9
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzif;->zza:Lcom/google/android/gms/internal/measurement/zzib;

    .line 18
    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzib;->zzj()I

    move-result v0

    .line 19
    invoke-static {v0}, Lcom/google/android/gms/internal/measurement/zzif;->zzc(I)V

    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/zzif;->zza:Lcom/google/android/gms/internal/measurement/zzib;

    .line 20
    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/zzib;->zzc()I

    move-result v1

    add-int/2addr v1, v0

    :cond_a
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzif;->zza:Lcom/google/android/gms/internal/measurement/zzib;

    .line 21
    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzib;->zzb()F

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzif;->zza:Lcom/google/android/gms/internal/measurement/zzib;

    .line 22
    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzib;->zzc()I

    move-result v0

    if-lt v0, v1, :cond_a

    return-void
.end method

.method public final zzh()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x5

    .line 1
    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/measurement/zzif;->zzb(I)V

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzif;->zza:Lcom/google/android/gms/internal/measurement/zzib;

    .line 2
    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzib;->zzg()I

    move-result v0

    return v0
.end method

.method public final zzh(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 3
    instance-of v0, p1, Lcom/google/android/gms/internal/measurement/zzja;

    const/4 v1, 0x2

    if-eqz v0, :cond_4

    .line 4
    move-object v0, p1

    check-cast v0, Lcom/google/android/gms/internal/measurement/zzja;

    iget p1, p0, Lcom/google/android/gms/internal/measurement/zzif;->zzb:I

    and-int/lit8 p1, p1, 0x7

    if-eqz p1, :cond_2

    if-ne p1, v1, :cond_1

    iget-object p1, p0, Lcom/google/android/gms/internal/measurement/zzif;->zza:Lcom/google/android/gms/internal/measurement/zzib;

    .line 5
    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zzib;->zzj()I

    move-result p1

    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/zzif;->zza:Lcom/google/android/gms/internal/measurement/zzib;

    .line 6
    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/zzib;->zzc()I

    move-result v1

    add-int/2addr v1, p1

    :cond_0
    iget-object p1, p0, Lcom/google/android/gms/internal/measurement/zzif;->zza:Lcom/google/android/gms/internal/measurement/zzib;

    .line 7
    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zzib;->zzf()I

    move-result p1

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/measurement/zzja;->zzd(I)V

    iget-object p1, p0, Lcom/google/android/gms/internal/measurement/zzif;->zza:Lcom/google/android/gms/internal/measurement/zzib;

    .line 8
    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zzib;->zzc()I

    move-result p1

    if-lt p1, v1, :cond_0

    .line 9
    invoke-direct {p0, v1}, Lcom/google/android/gms/internal/measurement/zzif;->zza(I)V

    return-void

    .line 10
    :cond_1
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzji;->zza()Lcom/google/android/gms/internal/measurement/zzjh;

    move-result-object p1

    throw p1

    :cond_2
    iget-object p1, p0, Lcom/google/android/gms/internal/measurement/zzif;->zza:Lcom/google/android/gms/internal/measurement/zzib;

    .line 11
    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zzib;->zzf()I

    move-result p1

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/measurement/zzja;->zzd(I)V

    iget-object p1, p0, Lcom/google/android/gms/internal/measurement/zzif;->zza:Lcom/google/android/gms/internal/measurement/zzib;

    .line 12
    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zzib;->zzt()Z

    move-result p1

    if-eqz p1, :cond_3

    return-void

    :cond_3
    iget-object p1, p0, Lcom/google/android/gms/internal/measurement/zzif;->zza:Lcom/google/android/gms/internal/measurement/zzib;

    .line 13
    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zzib;->zzi()I

    move-result p1

    iget v1, p0, Lcom/google/android/gms/internal/measurement/zzif;->zzb:I

    if-eq p1, v1, :cond_2

    iput p1, p0, Lcom/google/android/gms/internal/measurement/zzif;->zzd:I

    return-void

    :cond_4
    iget v0, p0, Lcom/google/android/gms/internal/measurement/zzif;->zzb:I

    and-int/lit8 v0, v0, 0x7

    if-eqz v0, :cond_7

    if-ne v0, v1, :cond_6

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzif;->zza:Lcom/google/android/gms/internal/measurement/zzib;

    .line 14
    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzib;->zzj()I

    move-result v0

    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/zzif;->zza:Lcom/google/android/gms/internal/measurement/zzib;

    .line 15
    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/zzib;->zzc()I

    move-result v1

    add-int/2addr v1, v0

    :cond_5
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzif;->zza:Lcom/google/android/gms/internal/measurement/zzib;

    .line 16
    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzib;->zzf()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzif;->zza:Lcom/google/android/gms/internal/measurement/zzib;

    .line 17
    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzib;->zzc()I

    move-result v0

    if-lt v0, v1, :cond_5

    .line 18
    invoke-direct {p0, v1}, Lcom/google/android/gms/internal/measurement/zzif;->zza(I)V

    return-void

    .line 19
    :cond_6
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzji;->zza()Lcom/google/android/gms/internal/measurement/zzjh;

    move-result-object p1

    throw p1

    :cond_7
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzif;->zza:Lcom/google/android/gms/internal/measurement/zzib;

    .line 20
    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzib;->zzf()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzif;->zza:Lcom/google/android/gms/internal/measurement/zzib;

    .line 21
    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzib;->zzt()Z

    move-result v0

    if-eqz v0, :cond_8

    return-void

    :cond_8
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzif;->zza:Lcom/google/android/gms/internal/measurement/zzib;

    .line 22
    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzib;->zzi()I

    move-result v0

    iget v1, p0, Lcom/google/android/gms/internal/measurement/zzif;->zzb:I

    if-eq v0, v1, :cond_7

    iput v0, p0, Lcom/google/android/gms/internal/measurement/zzif;->zzd:I

    return-void
.end method

.method public final zzi()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/measurement/zzif;->zzb(I)V

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzif;->zza:Lcom/google/android/gms/internal/measurement/zzib;

    .line 2
    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzib;->zzh()I

    move-result v0

    return v0
.end method

.method public final zzi(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 3
    instance-of v0, p1, Lcom/google/android/gms/internal/measurement/zzjy;

    const/4 v1, 0x2

    if-eqz v0, :cond_4

    .line 4
    move-object v0, p1

    check-cast v0, Lcom/google/android/gms/internal/measurement/zzjy;

    iget p1, p0, Lcom/google/android/gms/internal/measurement/zzif;->zzb:I

    and-int/lit8 p1, p1, 0x7

    if-eqz p1, :cond_2

    if-ne p1, v1, :cond_1

    iget-object p1, p0, Lcom/google/android/gms/internal/measurement/zzif;->zza:Lcom/google/android/gms/internal/measurement/zzib;

    .line 5
    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zzib;->zzj()I

    move-result p1

    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/zzif;->zza:Lcom/google/android/gms/internal/measurement/zzib;

    .line 6
    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/zzib;->zzc()I

    move-result v1

    add-int/2addr v1, p1

    :cond_0
    iget-object p1, p0, Lcom/google/android/gms/internal/measurement/zzif;->zza:Lcom/google/android/gms/internal/measurement/zzib;

    .line 7
    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zzib;->zzl()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/google/android/gms/internal/measurement/zzjy;->zza(J)V

    iget-object p1, p0, Lcom/google/android/gms/internal/measurement/zzif;->zza:Lcom/google/android/gms/internal/measurement/zzib;

    .line 8
    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zzib;->zzc()I

    move-result p1

    if-lt p1, v1, :cond_0

    .line 9
    invoke-direct {p0, v1}, Lcom/google/android/gms/internal/measurement/zzif;->zza(I)V

    return-void

    .line 10
    :cond_1
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzji;->zza()Lcom/google/android/gms/internal/measurement/zzjh;

    move-result-object p1

    throw p1

    :cond_2
    iget-object p1, p0, Lcom/google/android/gms/internal/measurement/zzif;->zza:Lcom/google/android/gms/internal/measurement/zzib;

    .line 11
    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zzib;->zzl()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/measurement/zzjy;->zza(J)V

    iget-object p1, p0, Lcom/google/android/gms/internal/measurement/zzif;->zza:Lcom/google/android/gms/internal/measurement/zzib;

    .line 12
    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zzib;->zzt()Z

    move-result p1

    if-eqz p1, :cond_3

    return-void

    :cond_3
    iget-object p1, p0, Lcom/google/android/gms/internal/measurement/zzif;->zza:Lcom/google/android/gms/internal/measurement/zzib;

    .line 13
    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zzib;->zzi()I

    move-result p1

    iget v1, p0, Lcom/google/android/gms/internal/measurement/zzif;->zzb:I

    if-eq p1, v1, :cond_2

    iput p1, p0, Lcom/google/android/gms/internal/measurement/zzif;->zzd:I

    return-void

    :cond_4
    iget v0, p0, Lcom/google/android/gms/internal/measurement/zzif;->zzb:I

    and-int/lit8 v0, v0, 0x7

    if-eqz v0, :cond_7

    if-ne v0, v1, :cond_6

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzif;->zza:Lcom/google/android/gms/internal/measurement/zzib;

    .line 14
    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzib;->zzj()I

    move-result v0

    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/zzif;->zza:Lcom/google/android/gms/internal/measurement/zzib;

    .line 15
    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/zzib;->zzc()I

    move-result v1

    add-int/2addr v1, v0

    :cond_5
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzif;->zza:Lcom/google/android/gms/internal/measurement/zzib;

    .line 16
    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzib;->zzl()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzif;->zza:Lcom/google/android/gms/internal/measurement/zzib;

    .line 17
    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzib;->zzc()I

    move-result v0

    if-lt v0, v1, :cond_5

    .line 18
    invoke-direct {p0, v1}, Lcom/google/android/gms/internal/measurement/zzif;->zza(I)V

    return-void

    .line 19
    :cond_6
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzji;->zza()Lcom/google/android/gms/internal/measurement/zzjh;

    move-result-object p1

    throw p1

    :cond_7
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzif;->zza:Lcom/google/android/gms/internal/measurement/zzib;

    .line 20
    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzib;->zzl()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzif;->zza:Lcom/google/android/gms/internal/measurement/zzib;

    .line 21
    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzib;->zzt()Z

    move-result v0

    if-eqz v0, :cond_8

    return-void

    :cond_8
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzif;->zza:Lcom/google/android/gms/internal/measurement/zzib;

    .line 22
    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzib;->zzi()I

    move-result v0

    iget v1, p0, Lcom/google/android/gms/internal/measurement/zzif;->zzb:I

    if-eq v0, v1, :cond_7

    iput v0, p0, Lcom/google/android/gms/internal/measurement/zzif;->zzd:I

    return-void
.end method

.method public final zzj()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/measurement/zzif;->zzb(I)V

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzif;->zza:Lcom/google/android/gms/internal/measurement/zzib;

    .line 2
    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzib;->zzj()I

    move-result v0

    return v0
.end method

.method public final zzj(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 3
    instance-of v0, p1, Lcom/google/android/gms/internal/measurement/zzja;

    const/4 v1, 0x5

    const/4 v2, 0x2

    if-eqz v0, :cond_5

    .line 4
    move-object v0, p1

    check-cast v0, Lcom/google/android/gms/internal/measurement/zzja;

    iget p1, p0, Lcom/google/android/gms/internal/measurement/zzif;->zzb:I

    and-int/lit8 p1, p1, 0x7

    if-eq p1, v2, :cond_3

    if-ne p1, v1, :cond_2

    :cond_0
    iget-object p1, p0, Lcom/google/android/gms/internal/measurement/zzif;->zza:Lcom/google/android/gms/internal/measurement/zzib;

    .line 5
    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zzib;->zzg()I

    move-result p1

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/measurement/zzja;->zzd(I)V

    iget-object p1, p0, Lcom/google/android/gms/internal/measurement/zzif;->zza:Lcom/google/android/gms/internal/measurement/zzib;

    .line 6
    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zzib;->zzt()Z

    move-result p1

    if-eqz p1, :cond_1

    return-void

    :cond_1
    iget-object p1, p0, Lcom/google/android/gms/internal/measurement/zzif;->zza:Lcom/google/android/gms/internal/measurement/zzib;

    .line 7
    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zzib;->zzi()I

    move-result p1

    iget v1, p0, Lcom/google/android/gms/internal/measurement/zzif;->zzb:I

    if-eq p1, v1, :cond_0

    iput p1, p0, Lcom/google/android/gms/internal/measurement/zzif;->zzd:I

    return-void

    .line 8
    :cond_2
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzji;->zza()Lcom/google/android/gms/internal/measurement/zzjh;

    move-result-object p1

    throw p1

    :cond_3
    iget-object p1, p0, Lcom/google/android/gms/internal/measurement/zzif;->zza:Lcom/google/android/gms/internal/measurement/zzib;

    .line 9
    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zzib;->zzj()I

    move-result p1

    .line 10
    invoke-static {p1}, Lcom/google/android/gms/internal/measurement/zzif;->zzc(I)V

    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/zzif;->zza:Lcom/google/android/gms/internal/measurement/zzib;

    .line 11
    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/zzib;->zzc()I

    move-result v1

    add-int v3, v1, p1

    :cond_4
    iget-object p1, p0, Lcom/google/android/gms/internal/measurement/zzif;->zza:Lcom/google/android/gms/internal/measurement/zzib;

    .line 12
    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zzib;->zzg()I

    move-result p1

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/measurement/zzja;->zzd(I)V

    iget-object p1, p0, Lcom/google/android/gms/internal/measurement/zzif;->zza:Lcom/google/android/gms/internal/measurement/zzib;

    .line 13
    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zzib;->zzc()I

    move-result p1

    if-lt p1, v3, :cond_4

    return-void

    :cond_5
    iget v0, p0, Lcom/google/android/gms/internal/measurement/zzif;->zzb:I

    and-int/lit8 v0, v0, 0x7

    if-eq v0, v2, :cond_9

    if-ne v0, v1, :cond_8

    :cond_6
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzif;->zza:Lcom/google/android/gms/internal/measurement/zzib;

    .line 14
    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzib;->zzg()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzif;->zza:Lcom/google/android/gms/internal/measurement/zzib;

    .line 15
    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzib;->zzt()Z

    move-result v0

    if-eqz v0, :cond_7

    return-void

    :cond_7
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzif;->zza:Lcom/google/android/gms/internal/measurement/zzib;

    .line 16
    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzib;->zzi()I

    move-result v0

    iget v1, p0, Lcom/google/android/gms/internal/measurement/zzif;->zzb:I

    if-eq v0, v1, :cond_6

    iput v0, p0, Lcom/google/android/gms/internal/measurement/zzif;->zzd:I

    return-void

    .line 17
    :cond_8
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzji;->zza()Lcom/google/android/gms/internal/measurement/zzjh;

    move-result-object p1

    throw p1

    :cond_9
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzif;->zza:Lcom/google/android/gms/internal/measurement/zzib;

    .line 18
    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzib;->zzj()I

    move-result v0

    .line 19
    invoke-static {v0}, Lcom/google/android/gms/internal/measurement/zzif;->zzc(I)V

    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/zzif;->zza:Lcom/google/android/gms/internal/measurement/zzib;

    .line 20
    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/zzib;->zzc()I

    move-result v1

    add-int/2addr v1, v0

    :cond_a
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzif;->zza:Lcom/google/android/gms/internal/measurement/zzib;

    .line 21
    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzib;->zzg()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzif;->zza:Lcom/google/android/gms/internal/measurement/zzib;

    .line 22
    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzib;->zzc()I

    move-result v0

    if-lt v0, v1, :cond_a

    return-void
.end method

.method public final zzk()J
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x1

    .line 1
    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/measurement/zzif;->zzb(I)V

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzif;->zza:Lcom/google/android/gms/internal/measurement/zzib;

    .line 2
    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzib;->zzk()J

    move-result-wide v0

    return-wide v0
.end method

.method public final zzk(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 3
    instance-of v0, p1, Lcom/google/android/gms/internal/measurement/zzjy;

    const/4 v1, 0x2

    const/4 v2, 0x1

    if-eqz v0, :cond_4

    .line 4
    move-object v0, p1

    check-cast v0, Lcom/google/android/gms/internal/measurement/zzjy;

    iget p1, p0, Lcom/google/android/gms/internal/measurement/zzif;->zzb:I

    and-int/lit8 p1, p1, 0x7

    if-eq p1, v2, :cond_2

    if-ne p1, v1, :cond_1

    iget-object p1, p0, Lcom/google/android/gms/internal/measurement/zzif;->zza:Lcom/google/android/gms/internal/measurement/zzib;

    .line 5
    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zzib;->zzj()I

    move-result p1

    .line 6
    invoke-static {p1}, Lcom/google/android/gms/internal/measurement/zzif;->zzd(I)V

    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/zzif;->zza:Lcom/google/android/gms/internal/measurement/zzib;

    .line 7
    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/zzib;->zzc()I

    move-result v1

    add-int/2addr v1, p1

    :cond_0
    iget-object p1, p0, Lcom/google/android/gms/internal/measurement/zzif;->zza:Lcom/google/android/gms/internal/measurement/zzib;

    .line 8
    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zzib;->zzn()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/google/android/gms/internal/measurement/zzjy;->zza(J)V

    iget-object p1, p0, Lcom/google/android/gms/internal/measurement/zzif;->zza:Lcom/google/android/gms/internal/measurement/zzib;

    .line 9
    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zzib;->zzc()I

    move-result p1

    if-lt p1, v1, :cond_0

    return-void

    .line 10
    :cond_1
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzji;->zza()Lcom/google/android/gms/internal/measurement/zzjh;

    move-result-object p1

    throw p1

    :cond_2
    iget-object p1, p0, Lcom/google/android/gms/internal/measurement/zzif;->zza:Lcom/google/android/gms/internal/measurement/zzib;

    .line 11
    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zzib;->zzn()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/measurement/zzjy;->zza(J)V

    iget-object p1, p0, Lcom/google/android/gms/internal/measurement/zzif;->zza:Lcom/google/android/gms/internal/measurement/zzib;

    .line 12
    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zzib;->zzt()Z

    move-result p1

    if-eqz p1, :cond_3

    return-void

    :cond_3
    iget-object p1, p0, Lcom/google/android/gms/internal/measurement/zzif;->zza:Lcom/google/android/gms/internal/measurement/zzib;

    .line 13
    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zzib;->zzi()I

    move-result p1

    iget v1, p0, Lcom/google/android/gms/internal/measurement/zzif;->zzb:I

    if-eq p1, v1, :cond_2

    iput p1, p0, Lcom/google/android/gms/internal/measurement/zzif;->zzd:I

    return-void

    :cond_4
    iget v0, p0, Lcom/google/android/gms/internal/measurement/zzif;->zzb:I

    and-int/lit8 v0, v0, 0x7

    if-eq v0, v2, :cond_7

    if-ne v0, v1, :cond_6

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzif;->zza:Lcom/google/android/gms/internal/measurement/zzib;

    .line 14
    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzib;->zzj()I

    move-result v0

    .line 15
    invoke-static {v0}, Lcom/google/android/gms/internal/measurement/zzif;->zzd(I)V

    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/zzif;->zza:Lcom/google/android/gms/internal/measurement/zzib;

    .line 16
    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/zzib;->zzc()I

    move-result v1

    add-int/2addr v1, v0

    :cond_5
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzif;->zza:Lcom/google/android/gms/internal/measurement/zzib;

    .line 17
    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzib;->zzn()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzif;->zza:Lcom/google/android/gms/internal/measurement/zzib;

    .line 18
    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzib;->zzc()I

    move-result v0

    if-lt v0, v1, :cond_5

    return-void

    .line 19
    :cond_6
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzji;->zza()Lcom/google/android/gms/internal/measurement/zzjh;

    move-result-object p1

    throw p1

    :cond_7
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzif;->zza:Lcom/google/android/gms/internal/measurement/zzib;

    .line 20
    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzib;->zzn()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzif;->zza:Lcom/google/android/gms/internal/measurement/zzib;

    .line 21
    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzib;->zzt()Z

    move-result v0

    if-eqz v0, :cond_8

    return-void

    :cond_8
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzif;->zza:Lcom/google/android/gms/internal/measurement/zzib;

    .line 22
    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzib;->zzi()I

    move-result v0

    iget v1, p0, Lcom/google/android/gms/internal/measurement/zzif;->zzb:I

    if-eq v0, v1, :cond_7

    iput v0, p0, Lcom/google/android/gms/internal/measurement/zzif;->zzd:I

    return-void
.end method

.method public final zzl()J
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/measurement/zzif;->zzb(I)V

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzif;->zza:Lcom/google/android/gms/internal/measurement/zzib;

    .line 2
    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzib;->zzl()J

    move-result-wide v0

    return-wide v0
.end method

.method public final zzl(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 3
    instance-of v0, p1, Lcom/google/android/gms/internal/measurement/zzja;

    const/4 v1, 0x2

    if-eqz v0, :cond_4

    .line 4
    move-object v0, p1

    check-cast v0, Lcom/google/android/gms/internal/measurement/zzja;

    iget p1, p0, Lcom/google/android/gms/internal/measurement/zzif;->zzb:I

    and-int/lit8 p1, p1, 0x7

    if-eqz p1, :cond_2

    if-ne p1, v1, :cond_1

    iget-object p1, p0, Lcom/google/android/gms/internal/measurement/zzif;->zza:Lcom/google/android/gms/internal/measurement/zzib;

    .line 5
    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zzib;->zzj()I

    move-result p1

    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/zzif;->zza:Lcom/google/android/gms/internal/measurement/zzib;

    .line 6
    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/zzib;->zzc()I

    move-result v1

    add-int/2addr v1, p1

    :cond_0
    iget-object p1, p0, Lcom/google/android/gms/internal/measurement/zzif;->zza:Lcom/google/android/gms/internal/measurement/zzib;

    .line 7
    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zzib;->zzh()I

    move-result p1

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/measurement/zzja;->zzd(I)V

    iget-object p1, p0, Lcom/google/android/gms/internal/measurement/zzif;->zza:Lcom/google/android/gms/internal/measurement/zzib;

    .line 8
    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zzib;->zzc()I

    move-result p1

    if-lt p1, v1, :cond_0

    .line 9
    invoke-direct {p0, v1}, Lcom/google/android/gms/internal/measurement/zzif;->zza(I)V

    return-void

    .line 10
    :cond_1
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzji;->zza()Lcom/google/android/gms/internal/measurement/zzjh;

    move-result-object p1

    throw p1

    :cond_2
    iget-object p1, p0, Lcom/google/android/gms/internal/measurement/zzif;->zza:Lcom/google/android/gms/internal/measurement/zzib;

    .line 11
    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zzib;->zzh()I

    move-result p1

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/measurement/zzja;->zzd(I)V

    iget-object p1, p0, Lcom/google/android/gms/internal/measurement/zzif;->zza:Lcom/google/android/gms/internal/measurement/zzib;

    .line 12
    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zzib;->zzt()Z

    move-result p1

    if-eqz p1, :cond_3

    return-void

    :cond_3
    iget-object p1, p0, Lcom/google/android/gms/internal/measurement/zzif;->zza:Lcom/google/android/gms/internal/measurement/zzib;

    .line 13
    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zzib;->zzi()I

    move-result p1

    iget v1, p0, Lcom/google/android/gms/internal/measurement/zzif;->zzb:I

    if-eq p1, v1, :cond_2

    iput p1, p0, Lcom/google/android/gms/internal/measurement/zzif;->zzd:I

    return-void

    :cond_4
    iget v0, p0, Lcom/google/android/gms/internal/measurement/zzif;->zzb:I

    and-int/lit8 v0, v0, 0x7

    if-eqz v0, :cond_7

    if-ne v0, v1, :cond_6

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzif;->zza:Lcom/google/android/gms/internal/measurement/zzib;

    .line 14
    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzib;->zzj()I

    move-result v0

    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/zzif;->zza:Lcom/google/android/gms/internal/measurement/zzib;

    .line 15
    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/zzib;->zzc()I

    move-result v1

    add-int/2addr v1, v0

    :cond_5
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzif;->zza:Lcom/google/android/gms/internal/measurement/zzib;

    .line 16
    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzib;->zzh()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzif;->zza:Lcom/google/android/gms/internal/measurement/zzib;

    .line 17
    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzib;->zzc()I

    move-result v0

    if-lt v0, v1, :cond_5

    .line 18
    invoke-direct {p0, v1}, Lcom/google/android/gms/internal/measurement/zzif;->zza(I)V

    return-void

    .line 19
    :cond_6
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzji;->zza()Lcom/google/android/gms/internal/measurement/zzjh;

    move-result-object p1

    throw p1

    :cond_7
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzif;->zza:Lcom/google/android/gms/internal/measurement/zzib;

    .line 20
    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzib;->zzh()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzif;->zza:Lcom/google/android/gms/internal/measurement/zzib;

    .line 21
    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzib;->zzt()Z

    move-result v0

    if-eqz v0, :cond_8

    return-void

    :cond_8
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzif;->zza:Lcom/google/android/gms/internal/measurement/zzib;

    .line 22
    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzib;->zzi()I

    move-result v0

    iget v1, p0, Lcom/google/android/gms/internal/measurement/zzif;->zzb:I

    if-eq v0, v1, :cond_7

    iput v0, p0, Lcom/google/android/gms/internal/measurement/zzif;->zzd:I

    return-void
.end method

.method public final zzm()J
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x1

    .line 1
    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/measurement/zzif;->zzb(I)V

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzif;->zza:Lcom/google/android/gms/internal/measurement/zzib;

    .line 2
    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzib;->zzn()J

    move-result-wide v0

    return-wide v0
.end method

.method public final zzm(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 3
    instance-of v0, p1, Lcom/google/android/gms/internal/measurement/zzjy;

    const/4 v1, 0x2

    if-eqz v0, :cond_4

    .line 4
    move-object v0, p1

    check-cast v0, Lcom/google/android/gms/internal/measurement/zzjy;

    iget p1, p0, Lcom/google/android/gms/internal/measurement/zzif;->zzb:I

    and-int/lit8 p1, p1, 0x7

    if-eqz p1, :cond_2

    if-ne p1, v1, :cond_1

    iget-object p1, p0, Lcom/google/android/gms/internal/measurement/zzif;->zza:Lcom/google/android/gms/internal/measurement/zzib;

    .line 5
    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zzib;->zzj()I

    move-result p1

    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/zzif;->zza:Lcom/google/android/gms/internal/measurement/zzib;

    .line 6
    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/zzib;->zzc()I

    move-result v1

    add-int/2addr v1, p1

    :cond_0
    iget-object p1, p0, Lcom/google/android/gms/internal/measurement/zzif;->zza:Lcom/google/android/gms/internal/measurement/zzib;

    .line 7
    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zzib;->zzo()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/google/android/gms/internal/measurement/zzjy;->zza(J)V

    iget-object p1, p0, Lcom/google/android/gms/internal/measurement/zzif;->zza:Lcom/google/android/gms/internal/measurement/zzib;

    .line 8
    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zzib;->zzc()I

    move-result p1

    if-lt p1, v1, :cond_0

    .line 9
    invoke-direct {p0, v1}, Lcom/google/android/gms/internal/measurement/zzif;->zza(I)V

    return-void

    .line 10
    :cond_1
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzji;->zza()Lcom/google/android/gms/internal/measurement/zzjh;

    move-result-object p1

    throw p1

    :cond_2
    iget-object p1, p0, Lcom/google/android/gms/internal/measurement/zzif;->zza:Lcom/google/android/gms/internal/measurement/zzib;

    .line 11
    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zzib;->zzo()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/measurement/zzjy;->zza(J)V

    iget-object p1, p0, Lcom/google/android/gms/internal/measurement/zzif;->zza:Lcom/google/android/gms/internal/measurement/zzib;

    .line 12
    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zzib;->zzt()Z

    move-result p1

    if-eqz p1, :cond_3

    return-void

    :cond_3
    iget-object p1, p0, Lcom/google/android/gms/internal/measurement/zzif;->zza:Lcom/google/android/gms/internal/measurement/zzib;

    .line 13
    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zzib;->zzi()I

    move-result p1

    iget v1, p0, Lcom/google/android/gms/internal/measurement/zzif;->zzb:I

    if-eq p1, v1, :cond_2

    iput p1, p0, Lcom/google/android/gms/internal/measurement/zzif;->zzd:I

    return-void

    :cond_4
    iget v0, p0, Lcom/google/android/gms/internal/measurement/zzif;->zzb:I

    and-int/lit8 v0, v0, 0x7

    if-eqz v0, :cond_7

    if-ne v0, v1, :cond_6

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzif;->zza:Lcom/google/android/gms/internal/measurement/zzib;

    .line 14
    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzib;->zzj()I

    move-result v0

    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/zzif;->zza:Lcom/google/android/gms/internal/measurement/zzib;

    .line 15
    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/zzib;->zzc()I

    move-result v1

    add-int/2addr v1, v0

    :cond_5
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzif;->zza:Lcom/google/android/gms/internal/measurement/zzib;

    .line 16
    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzib;->zzo()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzif;->zza:Lcom/google/android/gms/internal/measurement/zzib;

    .line 17
    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzib;->zzc()I

    move-result v0

    if-lt v0, v1, :cond_5

    .line 18
    invoke-direct {p0, v1}, Lcom/google/android/gms/internal/measurement/zzif;->zza(I)V

    return-void

    .line 19
    :cond_6
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzji;->zza()Lcom/google/android/gms/internal/measurement/zzjh;

    move-result-object p1

    throw p1

    :cond_7
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzif;->zza:Lcom/google/android/gms/internal/measurement/zzib;

    .line 20
    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzib;->zzo()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzif;->zza:Lcom/google/android/gms/internal/measurement/zzib;

    .line 21
    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzib;->zzt()Z

    move-result v0

    if-eqz v0, :cond_8

    return-void

    :cond_8
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzif;->zza:Lcom/google/android/gms/internal/measurement/zzib;

    .line 22
    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzib;->zzi()I

    move-result v0

    iget v1, p0, Lcom/google/android/gms/internal/measurement/zzif;->zzb:I

    if-eq v0, v1, :cond_7

    iput v0, p0, Lcom/google/android/gms/internal/measurement/zzif;->zzd:I

    return-void
.end method

.method public final zzn()J
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/measurement/zzif;->zzb(I)V

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzif;->zza:Lcom/google/android/gms/internal/measurement/zzib;

    .line 2
    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzib;->zzo()J

    move-result-wide v0

    return-wide v0
.end method

.method public final zzn(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 3
    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/internal/measurement/zzif;->zza(Ljava/util/List;Z)V

    return-void
.end method

.method public final zzo()J
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/measurement/zzif;->zzb(I)V

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzif;->zza:Lcom/google/android/gms/internal/measurement/zzib;

    .line 2
    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzib;->zzp()J

    move-result-wide v0

    return-wide v0
.end method

.method public final zzo(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x1

    .line 3
    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/internal/measurement/zzif;->zza(Ljava/util/List;Z)V

    return-void
.end method

.method public final zzp()Lcom/google/android/gms/internal/measurement/zzhm;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x2

    .line 1
    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/measurement/zzif;->zzb(I)V

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzif;->zza:Lcom/google/android/gms/internal/measurement/zzib;

    .line 2
    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzib;->zzq()Lcom/google/android/gms/internal/measurement/zzhm;

    move-result-object v0

    return-object v0
.end method

.method public final zzp(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 3
    instance-of v0, p1, Lcom/google/android/gms/internal/measurement/zzja;

    const/4 v1, 0x2

    if-eqz v0, :cond_4

    .line 4
    move-object v0, p1

    check-cast v0, Lcom/google/android/gms/internal/measurement/zzja;

    iget p1, p0, Lcom/google/android/gms/internal/measurement/zzif;->zzb:I

    and-int/lit8 p1, p1, 0x7

    if-eqz p1, :cond_2

    if-ne p1, v1, :cond_1

    iget-object p1, p0, Lcom/google/android/gms/internal/measurement/zzif;->zza:Lcom/google/android/gms/internal/measurement/zzib;

    .line 5
    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zzib;->zzj()I

    move-result p1

    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/zzif;->zza:Lcom/google/android/gms/internal/measurement/zzib;

    .line 6
    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/zzib;->zzc()I

    move-result v1

    add-int/2addr v1, p1

    :cond_0
    iget-object p1, p0, Lcom/google/android/gms/internal/measurement/zzif;->zza:Lcom/google/android/gms/internal/measurement/zzib;

    .line 7
    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zzib;->zzj()I

    move-result p1

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/measurement/zzja;->zzd(I)V

    iget-object p1, p0, Lcom/google/android/gms/internal/measurement/zzif;->zza:Lcom/google/android/gms/internal/measurement/zzib;

    .line 8
    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zzib;->zzc()I

    move-result p1

    if-lt p1, v1, :cond_0

    .line 9
    invoke-direct {p0, v1}, Lcom/google/android/gms/internal/measurement/zzif;->zza(I)V

    return-void

    .line 10
    :cond_1
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzji;->zza()Lcom/google/android/gms/internal/measurement/zzjh;

    move-result-object p1

    throw p1

    :cond_2
    iget-object p1, p0, Lcom/google/android/gms/internal/measurement/zzif;->zza:Lcom/google/android/gms/internal/measurement/zzib;

    .line 11
    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zzib;->zzj()I

    move-result p1

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/measurement/zzja;->zzd(I)V

    iget-object p1, p0, Lcom/google/android/gms/internal/measurement/zzif;->zza:Lcom/google/android/gms/internal/measurement/zzib;

    .line 12
    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zzib;->zzt()Z

    move-result p1

    if-eqz p1, :cond_3

    return-void

    :cond_3
    iget-object p1, p0, Lcom/google/android/gms/internal/measurement/zzif;->zza:Lcom/google/android/gms/internal/measurement/zzib;

    .line 13
    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zzib;->zzi()I

    move-result p1

    iget v1, p0, Lcom/google/android/gms/internal/measurement/zzif;->zzb:I

    if-eq p1, v1, :cond_2

    iput p1, p0, Lcom/google/android/gms/internal/measurement/zzif;->zzd:I

    return-void

    :cond_4
    iget v0, p0, Lcom/google/android/gms/internal/measurement/zzif;->zzb:I

    and-int/lit8 v0, v0, 0x7

    if-eqz v0, :cond_7

    if-ne v0, v1, :cond_6

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzif;->zza:Lcom/google/android/gms/internal/measurement/zzib;

    .line 14
    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzib;->zzj()I

    move-result v0

    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/zzif;->zza:Lcom/google/android/gms/internal/measurement/zzib;

    .line 15
    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/zzib;->zzc()I

    move-result v1

    add-int/2addr v1, v0

    :cond_5
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzif;->zza:Lcom/google/android/gms/internal/measurement/zzib;

    .line 16
    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzib;->zzj()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzif;->zza:Lcom/google/android/gms/internal/measurement/zzib;

    .line 17
    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzib;->zzc()I

    move-result v0

    if-lt v0, v1, :cond_5

    .line 18
    invoke-direct {p0, v1}, Lcom/google/android/gms/internal/measurement/zzif;->zza(I)V

    return-void

    .line 19
    :cond_6
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzji;->zza()Lcom/google/android/gms/internal/measurement/zzjh;

    move-result-object p1

    throw p1

    :cond_7
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzif;->zza:Lcom/google/android/gms/internal/measurement/zzib;

    .line 20
    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzib;->zzj()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzif;->zza:Lcom/google/android/gms/internal/measurement/zzib;

    .line 21
    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzib;->zzt()Z

    move-result v0

    if-eqz v0, :cond_8

    return-void

    :cond_8
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzif;->zza:Lcom/google/android/gms/internal/measurement/zzib;

    .line 22
    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzib;->zzi()I

    move-result v0

    iget v1, p0, Lcom/google/android/gms/internal/measurement/zzif;->zzb:I

    if-eq v0, v1, :cond_7

    iput v0, p0, Lcom/google/android/gms/internal/measurement/zzif;->zzd:I

    return-void
.end method

.method public final zzq()Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x2

    .line 1
    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/measurement/zzif;->zzb(I)V

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzif;->zza:Lcom/google/android/gms/internal/measurement/zzib;

    .line 2
    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzib;->zzr()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final zzq(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 3
    instance-of v0, p1, Lcom/google/android/gms/internal/measurement/zzjy;

    const/4 v1, 0x2

    if-eqz v0, :cond_4

    .line 4
    move-object v0, p1

    check-cast v0, Lcom/google/android/gms/internal/measurement/zzjy;

    iget p1, p0, Lcom/google/android/gms/internal/measurement/zzif;->zzb:I

    and-int/lit8 p1, p1, 0x7

    if-eqz p1, :cond_2

    if-ne p1, v1, :cond_1

    iget-object p1, p0, Lcom/google/android/gms/internal/measurement/zzif;->zza:Lcom/google/android/gms/internal/measurement/zzib;

    .line 5
    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zzib;->zzj()I

    move-result p1

    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/zzif;->zza:Lcom/google/android/gms/internal/measurement/zzib;

    .line 6
    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/zzib;->zzc()I

    move-result v1

    add-int/2addr v1, p1

    :cond_0
    iget-object p1, p0, Lcom/google/android/gms/internal/measurement/zzif;->zza:Lcom/google/android/gms/internal/measurement/zzib;

    .line 7
    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zzib;->zzp()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/google/android/gms/internal/measurement/zzjy;->zza(J)V

    iget-object p1, p0, Lcom/google/android/gms/internal/measurement/zzif;->zza:Lcom/google/android/gms/internal/measurement/zzib;

    .line 8
    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zzib;->zzc()I

    move-result p1

    if-lt p1, v1, :cond_0

    .line 9
    invoke-direct {p0, v1}, Lcom/google/android/gms/internal/measurement/zzif;->zza(I)V

    return-void

    .line 10
    :cond_1
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzji;->zza()Lcom/google/android/gms/internal/measurement/zzjh;

    move-result-object p1

    throw p1

    :cond_2
    iget-object p1, p0, Lcom/google/android/gms/internal/measurement/zzif;->zza:Lcom/google/android/gms/internal/measurement/zzib;

    .line 11
    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zzib;->zzp()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/measurement/zzjy;->zza(J)V

    iget-object p1, p0, Lcom/google/android/gms/internal/measurement/zzif;->zza:Lcom/google/android/gms/internal/measurement/zzib;

    .line 12
    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zzib;->zzt()Z

    move-result p1

    if-eqz p1, :cond_3

    return-void

    :cond_3
    iget-object p1, p0, Lcom/google/android/gms/internal/measurement/zzif;->zza:Lcom/google/android/gms/internal/measurement/zzib;

    .line 13
    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zzib;->zzi()I

    move-result p1

    iget v1, p0, Lcom/google/android/gms/internal/measurement/zzif;->zzb:I

    if-eq p1, v1, :cond_2

    iput p1, p0, Lcom/google/android/gms/internal/measurement/zzif;->zzd:I

    return-void

    :cond_4
    iget v0, p0, Lcom/google/android/gms/internal/measurement/zzif;->zzb:I

    and-int/lit8 v0, v0, 0x7

    if-eqz v0, :cond_7

    if-ne v0, v1, :cond_6

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzif;->zza:Lcom/google/android/gms/internal/measurement/zzib;

    .line 14
    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzib;->zzj()I

    move-result v0

    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/zzif;->zza:Lcom/google/android/gms/internal/measurement/zzib;

    .line 15
    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/zzib;->zzc()I

    move-result v1

    add-int/2addr v1, v0

    :cond_5
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzif;->zza:Lcom/google/android/gms/internal/measurement/zzib;

    .line 16
    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzib;->zzp()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzif;->zza:Lcom/google/android/gms/internal/measurement/zzib;

    .line 17
    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzib;->zzc()I

    move-result v0

    if-lt v0, v1, :cond_5

    .line 18
    invoke-direct {p0, v1}, Lcom/google/android/gms/internal/measurement/zzif;->zza(I)V

    return-void

    .line 19
    :cond_6
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzji;->zza()Lcom/google/android/gms/internal/measurement/zzjh;

    move-result-object p1

    throw p1

    :cond_7
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzif;->zza:Lcom/google/android/gms/internal/measurement/zzib;

    .line 20
    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzib;->zzp()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzif;->zza:Lcom/google/android/gms/internal/measurement/zzib;

    .line 21
    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzib;->zzt()Z

    move-result v0

    if-eqz v0, :cond_8

    return-void

    :cond_8
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzif;->zza:Lcom/google/android/gms/internal/measurement/zzib;

    .line 22
    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzib;->zzi()I

    move-result v0

    iget v1, p0, Lcom/google/android/gms/internal/measurement/zzif;->zzb:I

    if-eq v0, v1, :cond_7

    iput v0, p0, Lcom/google/android/gms/internal/measurement/zzif;->zzd:I

    return-void
.end method

.method public final zzr()Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    const/4 v0, 0x2

    .line 2
    .line 3
    .line 4
    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/measurement/zzif;->zzb(I)V

    .line 5
    .line 6
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzif;->zza:Lcom/google/android/gms/internal/measurement/zzib;

    .line 7
    .line 8
    .line 9
    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzib;->zzs()Ljava/lang/String;

    .line 10
    move-result-object v0

    .line 11
    return-object v0
.end method

.method public final zzs()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    const/4 v0, 0x0

    .line 2
    .line 3
    .line 4
    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/measurement/zzif;->zzb(I)V

    .line 5
    .line 6
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzif;->zza:Lcom/google/android/gms/internal/measurement/zzib;

    .line 7
    .line 8
    .line 9
    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzib;->zzu()Z

    .line 10
    move-result v0

    .line 11
    return v0
.end method

.method public final zzt()Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    .line 2
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzif;->zza:Lcom/google/android/gms/internal/measurement/zzib;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzib;->zzt()Z

    .line 6
    move-result v0

    .line 7
    .line 8
    if-nez v0, :cond_1

    .line 9
    .line 10
    iget v0, p0, Lcom/google/android/gms/internal/measurement/zzif;->zzb:I

    .line 11
    .line 12
    iget v1, p0, Lcom/google/android/gms/internal/measurement/zzif;->zzc:I

    .line 13
    .line 14
    if-ne v0, v1, :cond_0

    .line 15
    goto :goto_0

    .line 16
    .line 17
    :cond_0
    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/zzif;->zza:Lcom/google/android/gms/internal/measurement/zzib;

    .line 18
    .line 19
    .line 20
    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/measurement/zzib;->zzd(I)Z

    .line 21
    move-result v0

    .line 22
    return v0

    .line 23
    :cond_1
    :goto_0
    const/4 v0, 0x0

    .line 24
    return v0
.end method
