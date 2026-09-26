.class public final Lcom/google/android/gms/measurement/internal/zziq;
.super Lcom/google/android/gms/measurement/internal/zze;
.source "SourceFile"


# instance fields
.field protected zza:Lcom/google/android/gms/measurement/internal/zzjx;
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation
.end field

.field final zzb:Lcom/google/android/gms/measurement/internal/zzu;

.field private zzc:Lcom/google/android/gms/measurement/internal/zzim;

.field private final zzd:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/google/android/gms/measurement/internal/zzil;",
            ">;"
        }
    .end annotation
.end field

.field private zze:Z

.field private final zzf:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final zzg:Ljava/lang/Object;

.field private zzh:Z

.field private zzi:Ljava/util/PriorityQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/PriorityQueue<",
            "Lcom/google/android/gms/measurement/internal/zzmh;",
            ">;"
        }
    .end annotation
.end field

.field private zzj:Lcom/google/android/gms/measurement/internal/zzih;
    .annotation build Landroidx/annotation/GuardedBy;
    .end annotation
.end field

.field private final zzk:Ljava/util/concurrent/atomic/AtomicLong;

.field private zzl:J

.field private zzm:Z
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation
.end field

.field private zzn:Lcom/google/android/gms/measurement/internal/zzaw;

.field private final zzo:Lcom/google/android/gms/measurement/internal/zznf;


# direct methods
.method protected constructor <init>(Lcom/google/android/gms/measurement/internal/zzhf;)V
    .locals 3

    .line 1
    .line 2
    .line 3
    invoke-direct {p0, p1}, Lcom/google/android/gms/measurement/internal/zze;-><init>(Lcom/google/android/gms/measurement/internal/zzhf;)V

    .line 4
    .line 5
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArraySet;

    .line 6
    .line 7
    .line 8
    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;-><init>()V

    .line 9
    .line 10
    iput-object v0, p0, Lcom/google/android/gms/measurement/internal/zziq;->zzd:Ljava/util/Set;

    .line 11
    .line 12
    new-instance v0, Ljava/lang/Object;

    .line 13
    .line 14
    .line 15
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 16
    .line 17
    iput-object v0, p0, Lcom/google/android/gms/measurement/internal/zziq;->zzg:Ljava/lang/Object;

    .line 18
    const/4 v0, 0x0

    .line 19
    .line 20
    iput-boolean v0, p0, Lcom/google/android/gms/measurement/internal/zziq;->zzh:Z

    .line 21
    const/4 v0, 0x1

    .line 22
    .line 23
    iput-boolean v0, p0, Lcom/google/android/gms/measurement/internal/zziq;->zzm:Z

    .line 24
    .line 25
    new-instance v0, Lcom/google/android/gms/measurement/internal/zzjp;

    .line 26
    .line 27
    .line 28
    invoke-direct {v0, p0}, Lcom/google/android/gms/measurement/internal/zzjp;-><init>(Lcom/google/android/gms/measurement/internal/zziq;)V

    .line 29
    .line 30
    iput-object v0, p0, Lcom/google/android/gms/measurement/internal/zziq;->zzo:Lcom/google/android/gms/measurement/internal/zznf;

    .line 31
    .line 32
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    .line 33
    .line 34
    .line 35
    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    .line 36
    .line 37
    iput-object v0, p0, Lcom/google/android/gms/measurement/internal/zziq;->zzf:Ljava/util/concurrent/atomic/AtomicReference;

    .line 38
    .line 39
    sget-object v0, Lcom/google/android/gms/measurement/internal/zzih;->zza:Lcom/google/android/gms/measurement/internal/zzih;

    .line 40
    .line 41
    iput-object v0, p0, Lcom/google/android/gms/measurement/internal/zziq;->zzj:Lcom/google/android/gms/measurement/internal/zzih;

    .line 42
    .line 43
    const-wide/16 v0, -0x1

    .line 44
    .line 45
    iput-wide v0, p0, Lcom/google/android/gms/measurement/internal/zziq;->zzl:J

    .line 46
    .line 47
    new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;

    .line 48
    .line 49
    const-wide/16 v1, 0x0

    .line 50
    .line 51
    .line 52
    invoke-direct {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicLong;-><init>(J)V

    .line 53
    .line 54
    iput-object v0, p0, Lcom/google/android/gms/measurement/internal/zziq;->zzk:Ljava/util/concurrent/atomic/AtomicLong;

    .line 55
    .line 56
    new-instance v0, Lcom/google/android/gms/measurement/internal/zzu;

    .line 57
    .line 58
    .line 59
    invoke-direct {v0, p1}, Lcom/google/android/gms/measurement/internal/zzu;-><init>(Lcom/google/android/gms/measurement/internal/zzhf;)V

    .line 60
    .line 61
    iput-object v0, p0, Lcom/google/android/gms/measurement/internal/zziq;->zzb:Lcom/google/android/gms/measurement/internal/zzu;

    .line 62
    return-void
.end method

.method static bridge synthetic zza(Lcom/google/android/gms/measurement/internal/zziq;)Lcom/google/android/gms/measurement/internal/zzaw;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/google/android/gms/measurement/internal/zziq;->zzn:Lcom/google/android/gms/measurement/internal/zzaw;

    return-object p0
.end method

.method static synthetic zza(Lcom/google/android/gms/measurement/internal/zziq;Lcom/google/android/gms/measurement/internal/zzih;JZZ)V
    .locals 3

    .line 61
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzid;->zzt()V

    .line 62
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zze;->zzu()V

    .line 63
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzid;->zzk()Lcom/google/android/gms/measurement/internal/zzgd;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzgd;->zzm()Lcom/google/android/gms/measurement/internal/zzih;

    move-result-object v0

    .line 64
    iget-wide v1, p0, Lcom/google/android/gms/measurement/internal/zziq;->zzl:J

    cmp-long v1, p2, v1

    if-gtz v1, :cond_0

    .line 65
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzih;->zza()I

    move-result v0

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzih;->zza()I

    move-result v1

    .line 66
    invoke-static {v0, v1}, Lcom/google/android/gms/measurement/internal/zzih;->zza(II)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 67
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzid;->zzj()Lcom/google/android/gms/measurement/internal/zzfr;

    move-result-object p0

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzfr;->zzn()Lcom/google/android/gms/measurement/internal/zzft;

    move-result-object p0

    const-string p2, "Dropped out-of-date consent setting, proposed settings"

    invoke-virtual {p0, p2, p1}, Lcom/google/android/gms/measurement/internal/zzft;->zza(Ljava/lang/String;Ljava/lang/Object;)V

    return-void

    .line 68
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzid;->zzk()Lcom/google/android/gms/measurement/internal/zzgd;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/android/gms/measurement/internal/zzgd;->zza(Lcom/google/android/gms/measurement/internal/zzih;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 69
    iput-wide p2, p0, Lcom/google/android/gms/measurement/internal/zziq;->zzl:J

    .line 70
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzf;->zzo()Lcom/google/android/gms/measurement/internal/zzkp;

    move-result-object p1

    invoke-virtual {p1, p4}, Lcom/google/android/gms/measurement/internal/zzkp;->zza(Z)V

    if-eqz p5, :cond_2

    .line 71
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzf;->zzo()Lcom/google/android/gms/measurement/internal/zzkp;

    move-result-object p0

    new-instance p1, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {p1}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    invoke-virtual {p0, p1}, Lcom/google/android/gms/measurement/internal/zzkp;->zza(Ljava/util/concurrent/atomic/AtomicReference;)V

    return-void

    .line 72
    :cond_1
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzid;->zzj()Lcom/google/android/gms/measurement/internal/zzfr;

    move-result-object p0

    .line 73
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzfr;->zzn()Lcom/google/android/gms/measurement/internal/zzft;

    move-result-object p0

    .line 74
    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzih;->zza()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string p2, "Lower precedence consent source ignored, proposed source"

    .line 75
    invoke-virtual {p0, p2, p1}, Lcom/google/android/gms/measurement/internal/zzft;->zza(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_2
    return-void
.end method

.method static synthetic zza(Lcom/google/android/gms/measurement/internal/zziq;Lcom/google/android/gms/measurement/internal/zzih;Lcom/google/android/gms/measurement/internal/zzih;)V
    .locals 6

    const/4 v0, 0x2

    new-array v1, v0, [Lcom/google/android/gms/measurement/internal/zzih$zza;

    .line 57
    sget-object v2, Lcom/google/android/gms/measurement/internal/zzih$zza;->zzb:Lcom/google/android/gms/measurement/internal/zzih$zza;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    sget-object v4, Lcom/google/android/gms/measurement/internal/zzih$zza;->zza:Lcom/google/android/gms/measurement/internal/zzih$zza;

    const/4 v5, 0x1

    aput-object v4, v1, v5

    .line 58
    invoke-virtual {p1, p2, v1}, Lcom/google/android/gms/measurement/internal/zzih;->zza(Lcom/google/android/gms/measurement/internal/zzih;[Lcom/google/android/gms/measurement/internal/zzih$zza;)Z

    move-result v1

    new-array v0, v0, [Lcom/google/android/gms/measurement/internal/zzih$zza;

    aput-object v2, v0, v3

    aput-object v4, v0, v5

    .line 59
    invoke-virtual {p1, p2, v0}, Lcom/google/android/gms/measurement/internal/zzih;->zzb(Lcom/google/android/gms/measurement/internal/zzih;[Lcom/google/android/gms/measurement/internal/zzih$zza;)Z

    move-result p1

    if-nez v1, :cond_0

    if-eqz p1, :cond_1

    .line 60
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzf;->zzg()Lcom/google/android/gms/measurement/internal/zzfl;

    move-result-object p0

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzfl;->zzag()V

    :cond_1
    return-void
.end method

.method static bridge synthetic zza(Lcom/google/android/gms/measurement/internal/zziq;Ljava/lang/Boolean;Z)V
    .locals 0

    .line 2
    const/4 p2, 0x1

    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/measurement/internal/zziq;->zza(Ljava/lang/Boolean;Z)V

    return-void
.end method

.method static bridge synthetic zza(Lcom/google/android/gms/measurement/internal/zziq;Z)V
    .locals 0

    .line 3
    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/google/android/gms/measurement/internal/zziq;->zzh:Z

    return-void
.end method

.method private final zza(Ljava/lang/Boolean;Z)V
    .locals 2
    .annotation build Landroidx/annotation/WorkerThread;
    .end annotation

    .line 418
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzid;->zzt()V

    .line 419
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zze;->zzu()V

    .line 420
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzid;->zzj()Lcom/google/android/gms/measurement/internal/zzfr;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzfr;->zzc()Lcom/google/android/gms/measurement/internal/zzft;

    move-result-object v0

    const-string v1, "Setting app measurement enabled (FE)"

    invoke-virtual {v0, v1, p1}, Lcom/google/android/gms/measurement/internal/zzft;->zza(Ljava/lang/String;Ljava/lang/Object;)V

    .line 421
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzid;->zzk()Lcom/google/android/gms/measurement/internal/zzgd;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/android/gms/measurement/internal/zzgd;->zza(Ljava/lang/Boolean;)V

    if-eqz p2, :cond_0

    .line 422
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzid;->zzk()Lcom/google/android/gms/measurement/internal/zzgd;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/google/android/gms/measurement/internal/zzgd;->zzb(Ljava/lang/Boolean;)V

    :cond_0
    iget-object p2, p0, Lcom/google/android/gms/measurement/internal/zzid;->zzu:Lcom/google/android/gms/measurement/internal/zzhf;

    .line 423
    invoke-virtual {p2}, Lcom/google/android/gms/measurement/internal/zzhf;->zzad()Z

    move-result p2

    if-nez p2, :cond_1

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-nez p1, :cond_2

    .line 424
    :cond_1
    invoke-direct {p0}, Lcom/google/android/gms/measurement/internal/zziq;->zzap()V

    :cond_2
    return-void
.end method

.method private final zza(Ljava/lang/String;Ljava/lang/String;JLjava/lang/Object;)V
    .locals 9

    .line 298
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzid;->zzl()Lcom/google/android/gms/measurement/internal/zzgy;

    move-result-object v0

    new-instance v8, Lcom/google/android/gms/measurement/internal/zzjf;

    move-object v1, v8

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p5

    move-wide v6, p3

    invoke-direct/range {v1 .. v7}, Lcom/google/android/gms/measurement/internal/zzjf;-><init>(Lcom/google/android/gms/measurement/internal/zziq;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;J)V

    .line 299
    invoke-virtual {v0, v8}, Lcom/google/android/gms/measurement/internal/zzgy;->zzb(Ljava/lang/Runnable;)V

    return-void
.end method

.method private final zzao()Ljava/util/PriorityQueue;
    .locals 2
    .annotation build Landroid/annotation/TargetApi;
        value = 0x1e
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/PriorityQueue<",
            "Lcom/google/android/gms/measurement/internal/zzmh;",
            ">;"
        }
    .end annotation

    .line 1
    .line 2
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zziq;->zzi:Ljava/util/PriorityQueue;

    .line 3
    .line 4
    if-nez v0, :cond_0

    .line 5
    .line 6
    .line 7
    invoke-static {}, Lcom/google/android/gms/measurement/internal/c;->a()V

    .line 8
    .line 9
    sget-object v0, Lcom/google/android/gms/measurement/internal/zzip;->zza:Lcom/google/android/gms/measurement/internal/zzip;

    .line 10
    .line 11
    sget-object v1, Lcom/google/android/gms/measurement/internal/zzis;->zza:Lcom/google/android/gms/measurement/internal/zzis;

    .line 12
    .line 13
    .line 14
    invoke-static {v0, v1}, Lcom/google/android/gms/measurement/internal/zzix;->zza(Ljava/util/function/Function;Ljava/util/Comparator;)Ljava/util/Comparator;

    .line 15
    move-result-object v0

    .line 16
    .line 17
    .line 18
    invoke-static {v0}, Lcom/google/android/gms/measurement/internal/b;->a(Ljava/util/Comparator;)Ljava/util/PriorityQueue;

    .line 19
    move-result-object v0

    .line 20
    .line 21
    iput-object v0, p0, Lcom/google/android/gms/measurement/internal/zziq;->zzi:Ljava/util/PriorityQueue;

    .line 22
    .line 23
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zziq;->zzi:Ljava/util/PriorityQueue;

    .line 24
    return-object v0
.end method

.method private final zzap()V
    .locals 14
    .annotation build Landroidx/annotation/WorkerThread;
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzid;->zzt()V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzid;->zzk()Lcom/google/android/gms/measurement/internal/zzgd;

    .line 7
    move-result-object v0

    .line 8
    .line 9
    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/zzgd;->zzh:Lcom/google/android/gms/measurement/internal/zzgj;

    .line 10
    .line 11
    .line 12
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzgj;->zza()Ljava/lang/String;

    .line 13
    move-result-object v0

    .line 14
    .line 15
    if-eqz v0, :cond_2

    .line 16
    .line 17
    const-string v1, "unset"

    .line 18
    .line 19
    .line 20
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 21
    move-result v1

    .line 22
    .line 23
    if-eqz v1, :cond_0

    .line 24
    .line 25
    const-string v3, "app"

    .line 26
    .line 27
    const-string v4, "_npa"

    .line 28
    const/4 v5, 0x0

    .line 29
    .line 30
    .line 31
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzid;->zzb()Lcom/google/android/gms/common/util/Clock;

    .line 32
    move-result-object v0

    .line 33
    .line 34
    .line 35
    invoke-interface {v0}, Lcom/google/android/gms/common/util/Clock;->currentTimeMillis()J

    .line 36
    move-result-wide v6

    .line 37
    move-object v2, p0

    .line 38
    .line 39
    .line 40
    invoke-virtual/range {v2 .. v7}, Lcom/google/android/gms/measurement/internal/zziq;->zza(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;J)V

    .line 41
    goto :goto_1

    .line 42
    .line 43
    :cond_0
    const-string v9, "app"

    .line 44
    .line 45
    const-string v10, "_npa"

    .line 46
    .line 47
    const-string v1, "true"

    .line 48
    .line 49
    .line 50
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 51
    move-result v0

    .line 52
    .line 53
    if-eqz v0, :cond_1

    .line 54
    .line 55
    const-wide/16 v0, 0x1

    .line 56
    goto :goto_0

    .line 57
    .line 58
    :cond_1
    const-wide/16 v0, 0x0

    .line 59
    .line 60
    .line 61
    :goto_0
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 62
    move-result-object v11

    .line 63
    .line 64
    .line 65
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzid;->zzb()Lcom/google/android/gms/common/util/Clock;

    .line 66
    move-result-object v0

    .line 67
    .line 68
    .line 69
    invoke-interface {v0}, Lcom/google/android/gms/common/util/Clock;->currentTimeMillis()J

    .line 70
    move-result-wide v12

    .line 71
    move-object v8, p0

    .line 72
    .line 73
    .line 74
    invoke-virtual/range {v8 .. v13}, Lcom/google/android/gms/measurement/internal/zziq;->zza(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;J)V

    .line 75
    .line 76
    :cond_2
    :goto_1
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzid;->zzu:Lcom/google/android/gms/measurement/internal/zzhf;

    .line 77
    .line 78
    .line 79
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzhf;->zzac()Z

    .line 80
    move-result v0

    .line 81
    .line 82
    if-eqz v0, :cond_4

    .line 83
    .line 84
    iget-boolean v0, p0, Lcom/google/android/gms/measurement/internal/zziq;->zzm:Z

    .line 85
    .line 86
    if-eqz v0, :cond_4

    .line 87
    .line 88
    .line 89
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzid;->zzj()Lcom/google/android/gms/measurement/internal/zzfr;

    .line 90
    move-result-object v0

    .line 91
    .line 92
    .line 93
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzfr;->zzc()Lcom/google/android/gms/measurement/internal/zzft;

    .line 94
    move-result-object v0

    .line 95
    .line 96
    const-string v1, "Recording app launch after enabling measurement for the first time (FE)"

    .line 97
    .line 98
    .line 99
    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/internal/zzft;->zza(Ljava/lang/String;)V

    .line 100
    .line 101
    .line 102
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zziq;->zzaj()V

    .line 103
    .line 104
    .line 105
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzoh;->zza()Z

    .line 106
    move-result v0

    .line 107
    .line 108
    if-eqz v0, :cond_3

    .line 109
    .line 110
    .line 111
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzid;->zze()Lcom/google/android/gms/measurement/internal/zzaf;

    .line 112
    move-result-object v0

    .line 113
    .line 114
    sget-object v1, Lcom/google/android/gms/measurement/internal/zzbi;->zzbn:Lcom/google/android/gms/measurement/internal/zzfi;

    .line 115
    .line 116
    .line 117
    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/internal/zzaf;->zza(Lcom/google/android/gms/measurement/internal/zzfi;)Z

    .line 118
    move-result v0

    .line 119
    .line 120
    if-eqz v0, :cond_3

    .line 121
    .line 122
    .line 123
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzf;->zzp()Lcom/google/android/gms/measurement/internal/zzlx;

    .line 124
    move-result-object v0

    .line 125
    .line 126
    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/zzlx;->zza:Lcom/google/android/gms/measurement/internal/zzmf;

    .line 127
    .line 128
    .line 129
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzmf;->zza()V

    .line 130
    .line 131
    .line 132
    :cond_3
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzid;->zzl()Lcom/google/android/gms/measurement/internal/zzgy;

    .line 133
    move-result-object v0

    .line 134
    .line 135
    new-instance v1, Lcom/google/android/gms/measurement/internal/zzje;

    .line 136
    .line 137
    .line 138
    invoke-direct {v1, p0}, Lcom/google/android/gms/measurement/internal/zzje;-><init>(Lcom/google/android/gms/measurement/internal/zziq;)V

    .line 139
    .line 140
    .line 141
    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/internal/zzgy;->zzb(Ljava/lang/Runnable;)V

    .line 142
    return-void

    .line 143
    .line 144
    .line 145
    :cond_4
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzid;->zzj()Lcom/google/android/gms/measurement/internal/zzfr;

    .line 146
    move-result-object v0

    .line 147
    .line 148
    .line 149
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzfr;->zzc()Lcom/google/android/gms/measurement/internal/zzft;

    .line 150
    move-result-object v0

    .line 151
    .line 152
    const-string v1, "Updating Scion state (FE)"

    .line 153
    .line 154
    .line 155
    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/internal/zzft;->zza(Ljava/lang/String;)V

    .line 156
    .line 157
    .line 158
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzf;->zzo()Lcom/google/android/gms/measurement/internal/zzkp;

    .line 159
    move-result-object v0

    .line 160
    .line 161
    .line 162
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzkp;->zzag()V

    .line 163
    return-void
.end method

.method static synthetic zzb(Lcom/google/android/gms/measurement/internal/zziq;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/measurement/internal/zziq;->zzap()V

    return-void
.end method

.method private final zzb(Ljava/lang/String;Ljava/lang/String;JLandroid/os/Bundle;ZZZLjava/lang/String;)V
    .locals 13

    .line 4
    invoke-static/range {p5 .. p5}, Lcom/google/android/gms/measurement/internal/zznd;->zza(Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v6

    .line 5
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzid;->zzl()Lcom/google/android/gms/measurement/internal/zzgy;

    move-result-object v11

    new-instance v12, Lcom/google/android/gms/measurement/internal/zzjg;

    move-object v0, v12

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-wide/from16 v4, p3

    move/from16 v7, p6

    move/from16 v8, p7

    move/from16 v9, p8

    move-object/from16 v10, p9

    invoke-direct/range {v0 .. v10}, Lcom/google/android/gms/measurement/internal/zzjg;-><init>(Lcom/google/android/gms/measurement/internal/zziq;Ljava/lang/String;Ljava/lang/String;JLandroid/os/Bundle;ZZZLjava/lang/String;)V

    .line 6
    invoke-virtual {v11, v12}, Lcom/google/android/gms/measurement/internal/zzgy;->zzb(Ljava/lang/Runnable;)V

    return-void
.end method


# virtual methods
.method public final bridge synthetic zza()Landroid/content/Context;
    .locals 1

    .line 4
    invoke-super {p0}, Lcom/google/android/gms/measurement/internal/zzid;->zza()Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method

.method public final zza(Ljava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList<",
            "Landroid/os/Bundle;",
            ">;"
        }
    .end annotation

    .line 5
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzid;->zzl()Lcom/google/android/gms/measurement/internal/zzgy;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzgy;->zzg()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 6
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzid;->zzj()Lcom/google/android/gms/measurement/internal/zzfr;

    move-result-object p1

    .line 7
    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzfr;->zzg()Lcom/google/android/gms/measurement/internal/zzft;

    move-result-object p1

    const-string p2, "Cannot get conditional user properties from analytics worker thread"

    .line 8
    invoke-virtual {p1, p2}, Lcom/google/android/gms/measurement/internal/zzft;->zza(Ljava/lang/String;)V

    .line 9
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1, v1}, Ljava/util/ArrayList;-><init>(I)V

    return-object p1

    .line 10
    :cond_0
    invoke-static {}, Lcom/google/android/gms/measurement/internal/zzae;->zza()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 11
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzid;->zzj()Lcom/google/android/gms/measurement/internal/zzfr;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzfr;->zzg()Lcom/google/android/gms/measurement/internal/zzft;

    move-result-object p1

    const-string p2, "Cannot get conditional user properties from main thread"

    invoke-virtual {p1, p2}, Lcom/google/android/gms/measurement/internal/zzft;->zza(Ljava/lang/String;)V

    .line 12
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1, v1}, Ljava/util/ArrayList;-><init>(I)V

    return-object p1

    .line 13
    :cond_1
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/zzid;->zzu:Lcom/google/android/gms/measurement/internal/zzhf;

    .line 14
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzhf;->zzl()Lcom/google/android/gms/measurement/internal/zzgy;

    move-result-object v1

    const-wide/16 v8, 0x1388

    const-string v10, "get conditional user properties"

    new-instance v11, Lcom/google/android/gms/measurement/internal/zzjo;

    const/4 v5, 0x0

    move-object v2, v11

    move-object v3, p0

    move-object v4, v0

    move-object v6, p1

    move-object v7, p2

    invoke-direct/range {v2 .. v7}, Lcom/google/android/gms/measurement/internal/zzjo;-><init>(Lcom/google/android/gms/measurement/internal/zziq;Ljava/util/concurrent/atomic/AtomicReference;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move-object v2, v1

    move-object v3, v0

    move-wide v4, v8

    move-object v6, v10

    move-object v7, v11

    .line 15
    invoke-virtual/range {v2 .. v7}, Lcom/google/android/gms/measurement/internal/zzgy;->zza(Ljava/util/concurrent/atomic/AtomicReference;JLjava/lang/String;Ljava/lang/Runnable;)Ljava/lang/Object;

    .line 16
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    if-nez p1, :cond_2

    .line 17
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzid;->zzj()Lcom/google/android/gms/measurement/internal/zzfr;

    move-result-object p1

    .line 18
    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzfr;->zzg()Lcom/google/android/gms/measurement/internal/zzft;

    move-result-object p1

    const-string p2, "Timed out waiting for get conditional user properties"

    const/4 v0, 0x0

    .line 19
    invoke-virtual {p1, p2, v0}, Lcom/google/android/gms/measurement/internal/zzft;->zza(Ljava/lang/String;Ljava/lang/Object;)V

    .line 20
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    return-object p1

    .line 21
    :cond_2
    invoke-static {p1}, Lcom/google/android/gms/measurement/internal/zznd;->zzb(Ljava/util/List;)Ljava/util/ArrayList;

    move-result-object p1

    return-object p1
.end method

.method public final zza(Z)Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Ljava/util/List<",
            "Lcom/google/android/gms/measurement/internal/zznc;",
            ">;"
        }
    .end annotation

    .line 22
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zze;->zzu()V

    .line 23
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzid;->zzj()Lcom/google/android/gms/measurement/internal/zzfr;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzfr;->zzp()Lcom/google/android/gms/measurement/internal/zzft;

    move-result-object v0

    const-string v1, "Getting user properties (FE)"

    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/internal/zzft;->zza(Ljava/lang/String;)V

    .line 24
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzid;->zzl()Lcom/google/android/gms/measurement/internal/zzgy;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzgy;->zzg()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 25
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzid;->zzj()Lcom/google/android/gms/measurement/internal/zzfr;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzfr;->zzg()Lcom/google/android/gms/measurement/internal/zzft;

    move-result-object p1

    const-string v0, "Cannot get all user properties from analytics worker thread"

    invoke-virtual {p1, v0}, Lcom/google/android/gms/measurement/internal/zzft;->zza(Ljava/lang/String;)V

    .line 26
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p1

    return-object p1

    .line 27
    :cond_0
    invoke-static {}, Lcom/google/android/gms/measurement/internal/zzae;->zza()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 28
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzid;->zzj()Lcom/google/android/gms/measurement/internal/zzfr;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzfr;->zzg()Lcom/google/android/gms/measurement/internal/zzft;

    move-result-object p1

    const-string v0, "Cannot get all user properties from main thread"

    invoke-virtual {p1, v0}, Lcom/google/android/gms/measurement/internal/zzft;->zza(Ljava/lang/String;)V

    .line 29
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p1

    return-object p1

    .line 30
    :cond_1
    new-instance v6, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v6}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzid;->zzu:Lcom/google/android/gms/measurement/internal/zzhf;

    .line 31
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzhf;->zzl()Lcom/google/android/gms/measurement/internal/zzgy;

    move-result-object v0

    const-wide/16 v2, 0x1388

    const-string v4, "get user properties"

    new-instance v5, Lcom/google/android/gms/measurement/internal/zzji;

    invoke-direct {v5, p0, v6, p1}, Lcom/google/android/gms/measurement/internal/zzji;-><init>(Lcom/google/android/gms/measurement/internal/zziq;Ljava/util/concurrent/atomic/AtomicReference;Z)V

    move-object v1, v6

    .line 32
    invoke-virtual/range {v0 .. v5}, Lcom/google/android/gms/measurement/internal/zzgy;->zza(Ljava/util/concurrent/atomic/AtomicReference;JLjava/lang/String;Ljava/lang/Runnable;)Ljava/lang/Object;

    .line 33
    invoke-virtual {v6}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    if-nez v0, :cond_2

    .line 34
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzid;->zzj()Lcom/google/android/gms/measurement/internal/zzfr;

    move-result-object v0

    .line 35
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzfr;->zzg()Lcom/google/android/gms/measurement/internal/zzft;

    move-result-object v0

    const-string v1, "Timed out waiting for get user properties, includeInternal"

    .line 36
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Lcom/google/android/gms/measurement/internal/zzft;->zza(Ljava/lang/String;Ljava/lang/Object;)V

    .line 37
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p1

    return-object p1

    :cond_2
    return-object v0
.end method

.method public final zza(Ljava/lang/String;Ljava/lang/String;Z)Ljava/util/Map;
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Z)",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 38
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzid;->zzl()Lcom/google/android/gms/measurement/internal/zzgy;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzgy;->zzg()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 39
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzid;->zzj()Lcom/google/android/gms/measurement/internal/zzfr;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzfr;->zzg()Lcom/google/android/gms/measurement/internal/zzft;

    move-result-object v0

    const-string v1, "Cannot get user properties from analytics worker thread"

    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/internal/zzft;->zza(Ljava/lang/String;)V

    .line 40
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v0

    return-object v0

    .line 41
    :cond_0
    invoke-static {}, Lcom/google/android/gms/measurement/internal/zzae;->zza()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 42
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzid;->zzj()Lcom/google/android/gms/measurement/internal/zzfr;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzfr;->zzg()Lcom/google/android/gms/measurement/internal/zzft;

    move-result-object v0

    const-string v1, "Cannot get user properties from main thread"

    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/internal/zzft;->zza(Ljava/lang/String;)V

    .line 43
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v0

    return-object v0

    .line 44
    :cond_1
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    move-object v8, p0

    iget-object v1, v8, Lcom/google/android/gms/measurement/internal/zzid;->zzu:Lcom/google/android/gms/measurement/internal/zzhf;

    .line 45
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzhf;->zzl()Lcom/google/android/gms/measurement/internal/zzgy;

    move-result-object v9

    const-wide/16 v10, 0x1388

    const-string v12, "get user properties"

    new-instance v13, Lcom/google/android/gms/measurement/internal/zzjn;

    const/4 v4, 0x0

    move-object v1, v13

    move-object v2, p0

    move-object v3, v0

    move-object v5, p1

    move-object/from16 v6, p2

    move/from16 v7, p3

    invoke-direct/range {v1 .. v7}, Lcom/google/android/gms/measurement/internal/zzjn;-><init>(Lcom/google/android/gms/measurement/internal/zziq;Ljava/util/concurrent/atomic/AtomicReference;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    move-object v1, v9

    move-object v2, v0

    move-wide v3, v10

    move-object v5, v12

    move-object v6, v13

    .line 46
    invoke-virtual/range {v1 .. v6}, Lcom/google/android/gms/measurement/internal/zzgy;->zza(Ljava/util/concurrent/atomic/AtomicReference;JLjava/lang/String;Ljava/lang/Runnable;)Ljava/lang/Object;

    .line 47
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    if-nez v0, :cond_2

    .line 48
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzid;->zzj()Lcom/google/android/gms/measurement/internal/zzfr;

    move-result-object v0

    .line 49
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzfr;->zzg()Lcom/google/android/gms/measurement/internal/zzft;

    move-result-object v0

    const-string v1, "Timed out waiting for handle get user properties, includeInternal"

    .line 50
    invoke-static/range {p3 .. p3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    .line 51
    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/measurement/internal/zzft;->zza(Ljava/lang/String;Ljava/lang/Object;)V

    .line 52
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v0

    return-object v0

    .line 53
    :cond_2
    new-instance v1, Landroidx/collection/ArrayMap;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    invoke-direct {v1, v2}, Landroidx/collection/ArrayMap;-><init>(I)V

    .line 54
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_3
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/measurement/internal/zznc;

    .line 55
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zznc;->zza()Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_3

    .line 56
    iget-object v2, v2, Lcom/google/android/gms/measurement/internal/zznc;->zza:Ljava/lang/String;

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_4
    return-object v1
.end method

.method final zza(JZ)V
    .locals 5

    .line 273
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzid;->zzt()V

    .line 274
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zze;->zzu()V

    .line 275
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzid;->zzj()Lcom/google/android/gms/measurement/internal/zzfr;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzfr;->zzc()Lcom/google/android/gms/measurement/internal/zzft;

    move-result-object v0

    const-string v1, "Resetting analytics data (FE)"

    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/internal/zzft;->zza(Ljava/lang/String;)V

    .line 276
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzf;->zzp()Lcom/google/android/gms/measurement/internal/zzlx;

    move-result-object v0

    .line 277
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzid;->zzt()V

    .line 278
    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/zzlx;->zzb:Lcom/google/android/gms/measurement/internal/zzmd;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzmd;->zza()V

    .line 279
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzps;->zza()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 280
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzid;->zze()Lcom/google/android/gms/measurement/internal/zzaf;

    move-result-object v0

    sget-object v1, Lcom/google/android/gms/measurement/internal/zzbi;->zzbs:Lcom/google/android/gms/measurement/internal/zzfi;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/internal/zzaf;->zza(Lcom/google/android/gms/measurement/internal/zzfi;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 281
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzf;->zzg()Lcom/google/android/gms/measurement/internal/zzfl;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzfl;->zzag()V

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzid;->zzu:Lcom/google/android/gms/measurement/internal/zzhf;

    .line 282
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzhf;->zzac()Z

    move-result v0

    .line 283
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzid;->zzk()Lcom/google/android/gms/measurement/internal/zzgd;

    move-result-object v1

    .line 284
    iget-object v2, v1, Lcom/google/android/gms/measurement/internal/zzgd;->zzc:Lcom/google/android/gms/measurement/internal/zzgi;

    invoke-virtual {v2, p1, p2}, Lcom/google/android/gms/measurement/internal/zzgi;->zza(J)V

    .line 285
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzid;->zzk()Lcom/google/android/gms/measurement/internal/zzgd;

    move-result-object p1

    iget-object p1, p1, Lcom/google/android/gms/measurement/internal/zzgd;->zzq:Lcom/google/android/gms/measurement/internal/zzgj;

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzgj;->zza()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    const/4 p2, 0x0

    if-nez p1, :cond_1

    .line 286
    iget-object p1, v1, Lcom/google/android/gms/measurement/internal/zzgd;->zzq:Lcom/google/android/gms/measurement/internal/zzgj;

    invoke-virtual {p1, p2}, Lcom/google/android/gms/measurement/internal/zzgj;->zza(Ljava/lang/String;)V

    .line 287
    :cond_1
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzoh;->zza()Z

    move-result p1

    const-wide/16 v2, 0x0

    if-eqz p1, :cond_2

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzid;->zze()Lcom/google/android/gms/measurement/internal/zzaf;

    move-result-object p1

    sget-object v4, Lcom/google/android/gms/measurement/internal/zzbi;->zzbn:Lcom/google/android/gms/measurement/internal/zzfi;

    invoke-virtual {p1, v4}, Lcom/google/android/gms/measurement/internal/zzaf;->zza(Lcom/google/android/gms/measurement/internal/zzfi;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 288
    iget-object p1, v1, Lcom/google/android/gms/measurement/internal/zzgd;->zzk:Lcom/google/android/gms/measurement/internal/zzgi;

    invoke-virtual {p1, v2, v3}, Lcom/google/android/gms/measurement/internal/zzgi;->zza(J)V

    .line 289
    :cond_2
    iget-object p1, v1, Lcom/google/android/gms/measurement/internal/zzgd;->zzl:Lcom/google/android/gms/measurement/internal/zzgi;

    invoke-virtual {p1, v2, v3}, Lcom/google/android/gms/measurement/internal/zzgi;->zza(J)V

    .line 290
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzid;->zze()Lcom/google/android/gms/measurement/internal/zzaf;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzaf;->zzv()Z

    move-result p1

    if-nez p1, :cond_3

    xor-int/lit8 p1, v0, 0x1

    .line 291
    invoke-virtual {v1, p1}, Lcom/google/android/gms/measurement/internal/zzgd;->zzb(Z)V

    .line 292
    :cond_3
    iget-object p1, v1, Lcom/google/android/gms/measurement/internal/zzgd;->zzr:Lcom/google/android/gms/measurement/internal/zzgj;

    invoke-virtual {p1, p2}, Lcom/google/android/gms/measurement/internal/zzgj;->zza(Ljava/lang/String;)V

    .line 293
    iget-object p1, v1, Lcom/google/android/gms/measurement/internal/zzgd;->zzs:Lcom/google/android/gms/measurement/internal/zzgi;

    invoke-virtual {p1, v2, v3}, Lcom/google/android/gms/measurement/internal/zzgi;->zza(J)V

    .line 294
    iget-object p1, v1, Lcom/google/android/gms/measurement/internal/zzgd;->zzt:Lcom/google/android/gms/measurement/internal/zzgf;

    invoke-virtual {p1, p2}, Lcom/google/android/gms/measurement/internal/zzgf;->zza(Landroid/os/Bundle;)V

    if-eqz p3, :cond_4

    .line 295
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzf;->zzo()Lcom/google/android/gms/measurement/internal/zzkp;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzkp;->zzaf()V

    .line 296
    :cond_4
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzoh;->zza()Z

    move-result p1

    if-eqz p1, :cond_5

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzid;->zze()Lcom/google/android/gms/measurement/internal/zzaf;

    move-result-object p1

    sget-object p2, Lcom/google/android/gms/measurement/internal/zzbi;->zzbn:Lcom/google/android/gms/measurement/internal/zzfi;

    invoke-virtual {p1, p2}, Lcom/google/android/gms/measurement/internal/zzaf;->zza(Lcom/google/android/gms/measurement/internal/zzfi;)Z

    move-result p1

    if-eqz p1, :cond_5

    .line 297
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzf;->zzp()Lcom/google/android/gms/measurement/internal/zzlx;

    move-result-object p1

    iget-object p1, p1, Lcom/google/android/gms/measurement/internal/zzlx;->zza:Lcom/google/android/gms/measurement/internal/zzmf;

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzmf;->zza()V

    :cond_5
    xor-int/lit8 p1, v0, 0x1

    iput-boolean p1, p0, Lcom/google/android/gms/measurement/internal/zziq;->zzm:Z

    return-void
.end method

.method final synthetic zza(Landroid/os/Bundle;)V
    .locals 8

    if-nez p1, :cond_0

    .line 92
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzid;->zzk()Lcom/google/android/gms/measurement/internal/zzgd;

    move-result-object p1

    iget-object p1, p1, Lcom/google/android/gms/measurement/internal/zzgd;->zzt:Lcom/google/android/gms/measurement/internal/zzgf;

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    invoke-virtual {p1, v0}, Lcom/google/android/gms/measurement/internal/zzgf;->zza(Landroid/os/Bundle;)V

    return-void

    .line 93
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzid;->zzk()Lcom/google/android/gms/measurement/internal/zzgd;

    move-result-object v0

    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/zzgd;->zzt:Lcom/google/android/gms/measurement/internal/zzgf;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzgf;->zza()Landroid/os/Bundle;

    move-result-object v0

    .line 94
    invoke-virtual {p1}, Landroid/os/BaseBundle;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    if-eqz v2, :cond_6

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 95
    invoke-virtual {p1, v2}, Landroid/os/BaseBundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    if-eqz v5, :cond_3

    .line 96
    instance-of v6, v5, Ljava/lang/String;

    if-nez v6, :cond_3

    instance-of v6, v5, Ljava/lang/Long;

    if-nez v6, :cond_3

    instance-of v6, v5, Ljava/lang/Double;

    if-nez v6, :cond_3

    .line 97
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzid;->zzq()Lcom/google/android/gms/measurement/internal/zznd;

    invoke-static {v5}, Lcom/google/android/gms/measurement/internal/zznd;->zza(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 98
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzid;->zzq()Lcom/google/android/gms/measurement/internal/zznd;

    iget-object v6, p0, Lcom/google/android/gms/measurement/internal/zziq;->zzo:Lcom/google/android/gms/measurement/internal/zznf;

    const/16 v7, 0x1b

    .line 99
    invoke-static {v6, v7, v4, v4, v3}, Lcom/google/android/gms/measurement/internal/zznd;->zza(Lcom/google/android/gms/measurement/internal/zznf;ILjava/lang/String;Ljava/lang/String;I)V

    .line 100
    :cond_2
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzid;->zzj()Lcom/google/android/gms/measurement/internal/zzfr;

    move-result-object v3

    .line 101
    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/zzfr;->zzv()Lcom/google/android/gms/measurement/internal/zzft;

    move-result-object v3

    const-string v4, "Invalid default event parameter type. Name, value"

    .line 102
    invoke-virtual {v3, v4, v2, v5}, Lcom/google/android/gms/measurement/internal/zzft;->zza(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_0

    .line 103
    :cond_3
    invoke-static {v2}, Lcom/google/android/gms/measurement/internal/zznd;->zzg(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 104
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzid;->zzj()Lcom/google/android/gms/measurement/internal/zzfr;

    move-result-object v3

    .line 105
    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/zzfr;->zzv()Lcom/google/android/gms/measurement/internal/zzft;

    move-result-object v3

    const-string v4, "Invalid default event parameter name. Name"

    .line 106
    invoke-virtual {v3, v4, v2}, Lcom/google/android/gms/measurement/internal/zzft;->zza(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0

    :cond_4
    if-nez v5, :cond_5

    .line 107
    invoke-virtual {v0, v2}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    goto :goto_0

    .line 108
    :cond_5
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzid;->zzq()Lcom/google/android/gms/measurement/internal/zznd;

    move-result-object v3

    .line 109
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzid;->zze()Lcom/google/android/gms/measurement/internal/zzaf;

    move-result-object v4

    iget-object v6, p0, Lcom/google/android/gms/measurement/internal/zzid;->zzu:Lcom/google/android/gms/measurement/internal/zzhf;

    invoke-virtual {v6}, Lcom/google/android/gms/measurement/internal/zzhf;->zzh()Lcom/google/android/gms/measurement/internal/zzfl;

    move-result-object v6

    invoke-virtual {v6}, Lcom/google/android/gms/measurement/internal/zzfl;->zzad()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Lcom/google/android/gms/measurement/internal/zzaf;->zzb(Ljava/lang/String;)I

    move-result v4

    const-string v6, "param"

    .line 110
    invoke-virtual {v3, v6, v2, v4, v5}, Lcom/google/android/gms/measurement/internal/zznd;->zza(Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 111
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzid;->zzq()Lcom/google/android/gms/measurement/internal/zznd;

    move-result-object v3

    invoke-virtual {v3, v0, v2, v5}, Lcom/google/android/gms/measurement/internal/zznd;->zza(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 112
    :cond_6
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzid;->zzq()Lcom/google/android/gms/measurement/internal/zznd;

    .line 113
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzid;->zze()Lcom/google/android/gms/measurement/internal/zzaf;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzaf;->zzg()I

    move-result p1

    .line 114
    invoke-static {v0, p1}, Lcom/google/android/gms/measurement/internal/zznd;->zza(Landroid/os/Bundle;I)Z

    move-result p1

    if-eqz p1, :cond_7

    .line 115
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzid;->zzq()Lcom/google/android/gms/measurement/internal/zznd;

    iget-object p1, p0, Lcom/google/android/gms/measurement/internal/zziq;->zzo:Lcom/google/android/gms/measurement/internal/zznf;

    const/16 v1, 0x1a

    .line 116
    invoke-static {p1, v1, v4, v4, v3}, Lcom/google/android/gms/measurement/internal/zznd;->zza(Lcom/google/android/gms/measurement/internal/zznf;ILjava/lang/String;Ljava/lang/String;I)V

    .line 117
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzid;->zzj()Lcom/google/android/gms/measurement/internal/zzfr;

    move-result-object p1

    .line 118
    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzfr;->zzv()Lcom/google/android/gms/measurement/internal/zzft;

    move-result-object p1

    const-string v1, "Too many default event parameters set. Discarding beyond event parameter limit"

    .line 119
    invoke-virtual {p1, v1}, Lcom/google/android/gms/measurement/internal/zzft;->zza(Ljava/lang/String;)V

    .line 120
    :cond_7
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzid;->zzk()Lcom/google/android/gms/measurement/internal/zzgd;

    move-result-object p1

    iget-object p1, p1, Lcom/google/android/gms/measurement/internal/zzgd;->zzt:Lcom/google/android/gms/measurement/internal/zzgf;

    invoke-virtual {p1, v0}, Lcom/google/android/gms/measurement/internal/zzgf;->zza(Landroid/os/Bundle;)V

    .line 121
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzf;->zzo()Lcom/google/android/gms/measurement/internal/zzkp;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/google/android/gms/measurement/internal/zzkp;->zza(Landroid/os/Bundle;)V

    return-void
.end method

.method final zza(Landroid/os/Bundle;IJ)V
    .locals 3
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .line 386
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zze;->zzu()V

    .line 387
    invoke-static {p1}, Lcom/google/android/gms/measurement/internal/zzih;->zza(Landroid/os/Bundle;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 388
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzid;->zzj()Lcom/google/android/gms/measurement/internal/zzfr;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzfr;->zzv()Lcom/google/android/gms/measurement/internal/zzft;

    move-result-object v1

    const-string v2, "Ignoring invalid consent setting"

    invoke-virtual {v1, v2, v0}, Lcom/google/android/gms/measurement/internal/zzft;->zza(Ljava/lang/String;Ljava/lang/Object;)V

    .line 389
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzid;->zzj()Lcom/google/android/gms/measurement/internal/zzfr;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzfr;->zzv()Lcom/google/android/gms/measurement/internal/zzft;

    move-result-object v0

    const-string v1, "Valid consent values are \'granted\', \'denied\'"

    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/internal/zzft;->zza(Ljava/lang/String;)V

    .line 390
    :cond_0
    invoke-static {p1, p2}, Lcom/google/android/gms/measurement/internal/zzih;->zza(Landroid/os/Bundle;I)Lcom/google/android/gms/measurement/internal/zzih;

    move-result-object v0

    .line 391
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zznp;->zza()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzid;->zze()Lcom/google/android/gms/measurement/internal/zzaf;

    move-result-object v1

    sget-object v2, Lcom/google/android/gms/measurement/internal/zzbi;->zzcl:Lcom/google/android/gms/measurement/internal/zzfi;

    invoke-virtual {v1, v2}, Lcom/google/android/gms/measurement/internal/zzaf;->zza(Lcom/google/android/gms/measurement/internal/zzfi;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 392
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzih;->zzi()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 393
    invoke-virtual {p0, v0, p3, p4}, Lcom/google/android/gms/measurement/internal/zziq;->zza(Lcom/google/android/gms/measurement/internal/zzih;J)V

    .line 394
    :cond_1
    invoke-static {p1, p2}, Lcom/google/android/gms/measurement/internal/zzay;->zza(Landroid/os/Bundle;I)Lcom/google/android/gms/measurement/internal/zzay;

    move-result-object p2

    .line 395
    invoke-virtual {p2}, Lcom/google/android/gms/measurement/internal/zzay;->zzg()Z

    move-result p3

    if-eqz p3, :cond_2

    .line 396
    invoke-virtual {p0, p2}, Lcom/google/android/gms/measurement/internal/zziq;->zza(Lcom/google/android/gms/measurement/internal/zzay;)V

    .line 397
    :cond_2
    invoke-static {p1}, Lcom/google/android/gms/measurement/internal/zzay;->zza(Landroid/os/Bundle;)Ljava/lang/Boolean;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 398
    invoke-virtual {p1}, Ljava/lang/Boolean;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x0

    const-string p3, "app"

    const-string p4, "allow_personalized_ads"

    .line 399
    invoke-virtual {p0, p3, p4, p1, p2}, Lcom/google/android/gms/measurement/internal/zziq;->zza(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Z)V

    :cond_3
    return-void

    .line 400
    :cond_4
    invoke-virtual {p0, v0, p3, p4}, Lcom/google/android/gms/measurement/internal/zziq;->zza(Lcom/google/android/gms/measurement/internal/zzih;J)V

    return-void
.end method

.method public final zza(Landroid/os/Bundle;J)V
    .locals 12

    .line 301
    invoke-static {p1}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 302
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0, p1}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    const-string p1, "app_id"

    .line 303
    invoke-virtual {v0, p1}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 304
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzid;->zzj()Lcom/google/android/gms/measurement/internal/zzfr;

    move-result-object v1

    .line 305
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzfr;->zzu()Lcom/google/android/gms/measurement/internal/zzft;

    move-result-object v1

    const-string v2, "Package name should be null when calling setConditionalUserProperty"

    .line 306
    invoke-virtual {v1, v2}, Lcom/google/android/gms/measurement/internal/zzft;->zza(Ljava/lang/String;)V

    .line 307
    :cond_0
    invoke-virtual {v0, p1}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    .line 308
    invoke-static {v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    const-class v1, Ljava/lang/String;

    const/4 v2, 0x0

    .line 309
    invoke-static {v0, p1, v1, v2}, Lcom/google/android/gms/measurement/internal/zzie;->zza(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "origin"

    .line 310
    invoke-static {v0, p1, v1, v2}, Lcom/google/android/gms/measurement/internal/zzie;->zza(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v3, "name"

    .line 311
    invoke-static {v0, v3, v1, v2}, Lcom/google/android/gms/measurement/internal/zzie;->zza(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;

    const-class v4, Ljava/lang/Object;

    const-string v5, "value"

    .line 312
    invoke-static {v0, v5, v4, v2}, Lcom/google/android/gms/measurement/internal/zzie;->zza(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v4, "trigger_event_name"

    .line 313
    invoke-static {v0, v4, v1, v2}, Lcom/google/android/gms/measurement/internal/zzie;->zza(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;

    const-wide/16 v6, 0x0

    .line 314
    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    const-string v9, "trigger_timeout"

    const-class v10, Ljava/lang/Long;

    .line 315
    invoke-static {v0, v9, v10, v8}, Lcom/google/android/gms/measurement/internal/zzie;->zza(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v8, "timed_out_event_name"

    .line 316
    invoke-static {v0, v8, v1, v2}, Lcom/google/android/gms/measurement/internal/zzie;->zza(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v8, "timed_out_event_params"

    const-class v11, Landroid/os/Bundle;

    .line 317
    invoke-static {v0, v8, v11, v2}, Lcom/google/android/gms/measurement/internal/zzie;->zza(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v8, "triggered_event_name"

    .line 318
    invoke-static {v0, v8, v1, v2}, Lcom/google/android/gms/measurement/internal/zzie;->zza(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v8, "triggered_event_params"

    .line 319
    invoke-static {v0, v8, v11, v2}, Lcom/google/android/gms/measurement/internal/zzie;->zza(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;

    .line 320
    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    const-string v7, "time_to_live"

    .line 321
    invoke-static {v0, v7, v10, v6}, Lcom/google/android/gms/measurement/internal/zzie;->zza(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v6, "expired_event_name"

    .line 322
    invoke-static {v0, v6, v1, v2}, Lcom/google/android/gms/measurement/internal/zzie;->zza(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "expired_event_params"

    .line 323
    invoke-static {v0, v1, v11, v2}, Lcom/google/android/gms/measurement/internal/zzie;->zza(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;

    .line 324
    invoke-virtual {v0, v3}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotEmpty(Ljava/lang/String;)Ljava/lang/String;

    .line 325
    invoke-virtual {v0, p1}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotEmpty(Ljava/lang/String;)Ljava/lang/String;

    .line 326
    invoke-virtual {v0, v5}, Landroid/os/BaseBundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "creation_timestamp"

    .line 327
    invoke-virtual {v0, p1, p2, p3}, Landroid/os/BaseBundle;->putLong(Ljava/lang/String;J)V

    .line 328
    invoke-virtual {v0, v3}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 329
    invoke-virtual {v0, v5}, Landroid/os/BaseBundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    .line 330
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzid;->zzq()Lcom/google/android/gms/measurement/internal/zznd;

    move-result-object p3

    invoke-virtual {p3, p1}, Lcom/google/android/gms/measurement/internal/zznd;->zzb(Ljava/lang/String;)I

    move-result p3

    if-eqz p3, :cond_1

    .line 331
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzid;->zzj()Lcom/google/android/gms/measurement/internal/zzfr;

    move-result-object p2

    .line 332
    invoke-virtual {p2}, Lcom/google/android/gms/measurement/internal/zzfr;->zzg()Lcom/google/android/gms/measurement/internal/zzft;

    move-result-object p2

    .line 333
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzid;->zzi()Lcom/google/android/gms/measurement/internal/zzfq;

    move-result-object p3

    invoke-virtual {p3, p1}, Lcom/google/android/gms/measurement/internal/zzfq;->zzc(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string p3, "Invalid conditional user property name"

    .line 334
    invoke-virtual {p2, p3, p1}, Lcom/google/android/gms/measurement/internal/zzft;->zza(Ljava/lang/String;Ljava/lang/Object;)V

    return-void

    .line 335
    :cond_1
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzid;->zzq()Lcom/google/android/gms/measurement/internal/zznd;

    move-result-object p3

    invoke-virtual {p3, p1, p2}, Lcom/google/android/gms/measurement/internal/zznd;->zza(Ljava/lang/String;Ljava/lang/Object;)I

    move-result p3

    if-eqz p3, :cond_2

    .line 336
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzid;->zzj()Lcom/google/android/gms/measurement/internal/zzfr;

    move-result-object p3

    .line 337
    invoke-virtual {p3}, Lcom/google/android/gms/measurement/internal/zzfr;->zzg()Lcom/google/android/gms/measurement/internal/zzft;

    move-result-object p3

    .line 338
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzid;->zzi()Lcom/google/android/gms/measurement/internal/zzfq;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/android/gms/measurement/internal/zzfq;->zzc(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "Invalid conditional user property value"

    .line 339
    invoke-virtual {p3, v0, p1, p2}, Lcom/google/android/gms/measurement/internal/zzft;->zza(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    return-void

    .line 340
    :cond_2
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzid;->zzq()Lcom/google/android/gms/measurement/internal/zznd;

    move-result-object p3

    invoke-virtual {p3, p1, p2}, Lcom/google/android/gms/measurement/internal/zznd;->zzc(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    if-nez p3, :cond_3

    .line 341
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzid;->zzj()Lcom/google/android/gms/measurement/internal/zzfr;

    move-result-object p3

    .line 342
    invoke-virtual {p3}, Lcom/google/android/gms/measurement/internal/zzfr;->zzg()Lcom/google/android/gms/measurement/internal/zzft;

    move-result-object p3

    .line 343
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzid;->zzi()Lcom/google/android/gms/measurement/internal/zzfq;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/android/gms/measurement/internal/zzfq;->zzc(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "Unable to normalize conditional user property value"

    .line 344
    invoke-virtual {p3, v0, p1, p2}, Lcom/google/android/gms/measurement/internal/zzft;->zza(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    return-void

    .line 345
    :cond_3
    invoke-static {v0, p3}, Lcom/google/android/gms/measurement/internal/zzie;->zza(Landroid/os/Bundle;Ljava/lang/Object;)V

    .line 346
    invoke-virtual {v0, v9}, Landroid/os/BaseBundle;->getLong(Ljava/lang/String;)J

    move-result-wide p2

    .line 347
    invoke-virtual {v0, v4}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 348
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const-wide/16 v2, 0x1

    const-wide v4, 0x39ef8b000L

    if-nez v1, :cond_5

    cmp-long v1, p2, v4

    if-gtz v1, :cond_4

    cmp-long v1, p2, v2

    if-gez v1, :cond_5

    .line 349
    :cond_4
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzid;->zzj()Lcom/google/android/gms/measurement/internal/zzfr;

    move-result-object v0

    .line 350
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzfr;->zzg()Lcom/google/android/gms/measurement/internal/zzft;

    move-result-object v0

    .line 351
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzid;->zzi()Lcom/google/android/gms/measurement/internal/zzfq;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/google/android/gms/measurement/internal/zzfq;->zzc(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 352
    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    const-string p3, "Invalid conditional user property timeout"

    .line 353
    invoke-virtual {v0, p3, p1, p2}, Lcom/google/android/gms/measurement/internal/zzft;->zza(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    return-void

    .line 354
    :cond_5
    invoke-virtual {v0, v7}, Landroid/os/BaseBundle;->getLong(Ljava/lang/String;)J

    move-result-wide p2

    cmp-long v1, p2, v4

    if-gtz v1, :cond_7

    cmp-long v1, p2, v2

    if-gez v1, :cond_6

    goto :goto_0

    .line 355
    :cond_6
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzid;->zzl()Lcom/google/android/gms/measurement/internal/zzgy;

    move-result-object p1

    new-instance p2, Lcom/google/android/gms/measurement/internal/zzjm;

    invoke-direct {p2, p0, v0}, Lcom/google/android/gms/measurement/internal/zzjm;-><init>(Lcom/google/android/gms/measurement/internal/zziq;Landroid/os/Bundle;)V

    .line 356
    invoke-virtual {p1, p2}, Lcom/google/android/gms/measurement/internal/zzgy;->zzb(Ljava/lang/Runnable;)V

    return-void

    .line 357
    :cond_7
    :goto_0
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzid;->zzj()Lcom/google/android/gms/measurement/internal/zzfr;

    move-result-object v0

    .line 358
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzfr;->zzg()Lcom/google/android/gms/measurement/internal/zzft;

    move-result-object v0

    .line 359
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzid;->zzi()Lcom/google/android/gms/measurement/internal/zzfq;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/google/android/gms/measurement/internal/zzfq;->zzc(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 360
    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    const-string p3, "Invalid conditional user property time to live"

    .line 361
    invoke-virtual {v0, p3, p1, p2}, Lcom/google/android/gms/measurement/internal/zzft;->zza(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method

.method final zza(Lcom/google/android/gms/measurement/internal/zzay;)V
    .locals 2

    .line 401
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzid;->zzl()Lcom/google/android/gms/measurement/internal/zzgy;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/measurement/internal/zzjw;

    invoke-direct {v1, p0, p1}, Lcom/google/android/gms/measurement/internal/zzjw;-><init>(Lcom/google/android/gms/measurement/internal/zziq;Lcom/google/android/gms/measurement/internal/zzay;)V

    .line 402
    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/internal/zzgy;->zzb(Ljava/lang/Runnable;)V

    return-void
.end method

.method final zza(Lcom/google/android/gms/measurement/internal/zzih;)V
    .locals 2
    .annotation build Landroidx/annotation/WorkerThread;
    .end annotation

    .line 409
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzid;->zzt()V

    .line 410
    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzih;->zzh()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzih;->zzg()Z

    move-result p1

    if-nez p1, :cond_1

    .line 411
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzf;->zzo()Lcom/google/android/gms/measurement/internal/zzkp;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzkp;->zzaj()Z

    move-result p1

    if-eqz p1, :cond_2

    :cond_1
    const/4 p1, 0x1

    goto :goto_0

    :cond_2
    move p1, v1

    :goto_0
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzid;->zzu:Lcom/google/android/gms/measurement/internal/zzhf;

    .line 412
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzhf;->zzad()Z

    move-result v0

    if-eq p1, v0, :cond_4

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzid;->zzu:Lcom/google/android/gms/measurement/internal/zzhf;

    .line 413
    invoke-virtual {v0, p1}, Lcom/google/android/gms/measurement/internal/zzhf;->zzb(Z)V

    .line 414
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzid;->zzk()Lcom/google/android/gms/measurement/internal/zzgd;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzgd;->zzp()Ljava/lang/Boolean;

    move-result-object v0

    if-eqz p1, :cond_3

    if-eqz v0, :cond_3

    .line 415
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 416
    :cond_3
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    .line 417
    invoke-direct {p0, p1, v1}, Lcom/google/android/gms/measurement/internal/zziq;->zza(Ljava/lang/Boolean;Z)V

    :cond_4
    return-void
.end method

.method public final zza(Lcom/google/android/gms/measurement/internal/zzih;J)V
    .locals 12

    .line 362
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zze;->zzu()V

    .line 363
    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzih;->zza()I

    move-result v0

    const/16 v1, -0xa

    if-eq v0, v1, :cond_0

    .line 364
    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzih;->zzc()Ljava/lang/Boolean;

    move-result-object v2

    if-nez v2, :cond_0

    .line 365
    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzih;->zzd()Ljava/lang/Boolean;

    move-result-object v2

    if-nez v2, :cond_0

    .line 366
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzid;->zzj()Lcom/google/android/gms/measurement/internal/zzfr;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzfr;->zzv()Lcom/google/android/gms/measurement/internal/zzft;

    move-result-object p1

    const-string p2, "Discarding empty consent settings"

    invoke-virtual {p1, p2}, Lcom/google/android/gms/measurement/internal/zzft;->zza(Ljava/lang/String;)V

    return-void

    :cond_0
    iget-object v2, p0, Lcom/google/android/gms/measurement/internal/zziq;->zzg:Ljava/lang/Object;

    .line 367
    monitor-enter v2

    :try_start_0
    iget-object v11, p0, Lcom/google/android/gms/measurement/internal/zziq;->zzj:Lcom/google/android/gms/measurement/internal/zzih;

    .line 368
    invoke-virtual {v11}, Lcom/google/android/gms/measurement/internal/zzih;->zza()I

    move-result v3

    .line 369
    invoke-static {v0, v3}, Lcom/google/android/gms/measurement/internal/zzih;->zza(II)Z

    move-result v3

    const/4 v4, 0x0

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/google/android/gms/measurement/internal/zziq;->zzj:Lcom/google/android/gms/measurement/internal/zzih;

    .line 370
    invoke-virtual {p1, v3}, Lcom/google/android/gms/measurement/internal/zzih;->zzc(Lcom/google/android/gms/measurement/internal/zzih;)Z

    move-result v3

    .line 371
    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzih;->zzh()Z

    move-result v5

    const/4 v6, 0x1

    if-eqz v5, :cond_1

    iget-object v5, p0, Lcom/google/android/gms/measurement/internal/zziq;->zzj:Lcom/google/android/gms/measurement/internal/zzih;

    .line 372
    invoke-virtual {v5}, Lcom/google/android/gms/measurement/internal/zzih;->zzh()Z

    move-result v5

    if-nez v5, :cond_1

    move v4, v6

    goto :goto_0

    :catchall_0
    move-exception p1

    goto/16 :goto_3

    :cond_1
    :goto_0
    iget-object v5, p0, Lcom/google/android/gms/measurement/internal/zziq;->zzj:Lcom/google/android/gms/measurement/internal/zzih;

    .line 373
    invoke-virtual {p1, v5}, Lcom/google/android/gms/measurement/internal/zzih;->zzb(Lcom/google/android/gms/measurement/internal/zzih;)Lcom/google/android/gms/measurement/internal/zzih;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/zziq;->zzj:Lcom/google/android/gms/measurement/internal/zzih;

    move-object v5, p1

    move p1, v4

    move v4, v6

    goto :goto_1

    :cond_2
    move-object v5, p1

    move p1, v4

    move v3, p1

    .line 374
    :goto_1
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v4, :cond_3

    .line 375
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzid;->zzj()Lcom/google/android/gms/measurement/internal/zzfr;

    move-result-object p1

    .line 376
    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzfr;->zzn()Lcom/google/android/gms/measurement/internal/zzft;

    move-result-object p1

    const-string p2, "Ignoring lower-priority consent settings, proposed settings"

    .line 377
    invoke-virtual {p1, p2, v5}, Lcom/google/android/gms/measurement/internal/zzft;->zza(Ljava/lang/String;Ljava/lang/Object;)V

    return-void

    :cond_3
    iget-object v2, p0, Lcom/google/android/gms/measurement/internal/zziq;->zzk:Ljava/util/concurrent/atomic/AtomicLong;

    .line 378
    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicLong;->getAndIncrement()J

    move-result-wide v8

    if-eqz v3, :cond_4

    const/4 v0, 0x0

    .line 379
    invoke-virtual {p0, v0}, Lcom/google/android/gms/measurement/internal/zziq;->zza(Ljava/lang/String;)V

    .line 380
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzid;->zzl()Lcom/google/android/gms/measurement/internal/zzgy;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/measurement/internal/zzjv;

    move-object v3, v1

    move-object v4, p0

    move-wide v6, p2

    move v10, p1

    invoke-direct/range {v3 .. v11}, Lcom/google/android/gms/measurement/internal/zzjv;-><init>(Lcom/google/android/gms/measurement/internal/zziq;Lcom/google/android/gms/measurement/internal/zzih;JJZLcom/google/android/gms/measurement/internal/zzih;)V

    .line 381
    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/internal/zzgy;->zzc(Ljava/lang/Runnable;)V

    return-void

    .line 382
    :cond_4
    new-instance p2, Lcom/google/android/gms/measurement/internal/zzjy;

    move-object v3, p2

    move-object v4, p0

    move-wide v6, v8

    move v8, p1

    move-object v9, v11

    invoke-direct/range {v3 .. v9}, Lcom/google/android/gms/measurement/internal/zzjy;-><init>(Lcom/google/android/gms/measurement/internal/zziq;Lcom/google/android/gms/measurement/internal/zzih;JZLcom/google/android/gms/measurement/internal/zzih;)V

    const/16 p1, 0x1e

    if-eq v0, p1, :cond_6

    if-ne v0, v1, :cond_5

    goto :goto_2

    .line 383
    :cond_5
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzid;->zzl()Lcom/google/android/gms/measurement/internal/zzgy;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/google/android/gms/measurement/internal/zzgy;->zzb(Ljava/lang/Runnable;)V

    return-void

    .line 384
    :cond_6
    :goto_2
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzid;->zzl()Lcom/google/android/gms/measurement/internal/zzgy;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/google/android/gms/measurement/internal/zzgy;->zzc(Ljava/lang/Runnable;)V

    return-void

    .line 385
    :goto_3
    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public final zza(Lcom/google/android/gms/measurement/internal/zzil;)V
    .locals 1

    .line 269
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zze;->zzu()V

    .line 270
    invoke-static {p1}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zziq;->zzd:Ljava/util/Set;

    .line 271
    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 272
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzid;->zzj()Lcom/google/android/gms/measurement/internal/zzfr;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzfr;->zzu()Lcom/google/android/gms/measurement/internal/zzft;

    move-result-object p1

    const-string v0, "OnEventListener already registered"

    invoke-virtual {p1, v0}, Lcom/google/android/gms/measurement/internal/zzft;->zza(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public final zza(Lcom/google/android/gms/measurement/internal/zzim;)V
    .locals 2
    .annotation build Landroidx/annotation/WorkerThread;
    .end annotation

    .line 403
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzid;->zzt()V

    .line 404
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zze;->zzu()V

    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zziq;->zzc:Lcom/google/android/gms/measurement/internal/zzim;

    if-eq p1, v0, :cond_1

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const-string v1, "EventInterceptor already set."

    .line 405
    invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/Preconditions;->checkState(ZLjava/lang/Object;)V

    :cond_1
    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/zziq;->zzc:Lcom/google/android/gms/measurement/internal/zzim;

    return-void
.end method

.method public final zza(Ljava/lang/Boolean;)V
    .locals 2

    .line 406
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zze;->zzu()V

    .line 407
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzid;->zzl()Lcom/google/android/gms/measurement/internal/zzgy;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/measurement/internal/zzjt;

    invoke-direct {v1, p0, p1}, Lcom/google/android/gms/measurement/internal/zzjt;-><init>(Lcom/google/android/gms/measurement/internal/zziq;Ljava/lang/Boolean;)V

    .line 408
    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/internal/zzgy;->zzb(Ljava/lang/Runnable;)V

    return-void
.end method

.method final zza(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zziq;->zzf:Ljava/util/concurrent/atomic/AtomicReference;

    .line 300
    invoke-virtual {v0, p1}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    return-void
.end method

.method final zza(Ljava/lang/String;Ljava/lang/String;JLandroid/os/Bundle;)V
    .locals 11
    .annotation build Landroidx/annotation/WorkerThread;
    .end annotation

    .line 130
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzid;->zzt()V

    move-object v10, p0

    iget-object v0, v10, Lcom/google/android/gms/measurement/internal/zziq;->zzc:Lcom/google/android/gms/measurement/internal/zzim;

    if-eqz v0, :cond_1

    .line 131
    invoke-static {p2}, Lcom/google/android/gms/measurement/internal/zznd;->zzg(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    move v7, v0

    goto :goto_2

    :cond_1
    :goto_1
    const/4 v0, 0x1

    goto :goto_0

    :goto_2
    const/4 v6, 0x1

    const/4 v8, 0x1

    const/4 v9, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-wide v3, p3

    move-object/from16 v5, p5

    .line 132
    invoke-virtual/range {v0 .. v9}, Lcom/google/android/gms/measurement/internal/zziq;->zza(Ljava/lang/String;Ljava/lang/String;JLandroid/os/Bundle;ZZZLjava/lang/String;)V

    return-void
.end method

.method protected final zza(Ljava/lang/String;Ljava/lang/String;JLandroid/os/Bundle;ZZZLjava/lang/String;)V
    .locals 19
    .annotation build Landroidx/annotation/WorkerThread;
    .end annotation

    move-object/from16 v7, p0

    move-object/from16 v8, p1

    move-object/from16 v9, p2

    move-wide/from16 v10, p3

    move-object/from16 v12, p5

    .line 133
    invoke-static/range {p1 .. p1}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotEmpty(Ljava/lang/String;)Ljava/lang/String;

    .line 134
    invoke-static/range {p5 .. p5}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 135
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzid;->zzt()V

    .line 136
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zze;->zzu()V

    iget-object v0, v7, Lcom/google/android/gms/measurement/internal/zzid;->zzu:Lcom/google/android/gms/measurement/internal/zzhf;

    .line 137
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzhf;->zzac()Z

    move-result v0

    if-nez v0, :cond_0

    .line 138
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzid;->zzj()Lcom/google/android/gms/measurement/internal/zzfr;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzfr;->zzc()Lcom/google/android/gms/measurement/internal/zzft;

    move-result-object v0

    const-string v1, "Event not sent since app measurement is disabled"

    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/internal/zzft;->zza(Ljava/lang/String;)V

    return-void

    .line 139
    :cond_0
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzf;->zzg()Lcom/google/android/gms/measurement/internal/zzfl;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzfl;->zzaf()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 140
    invoke-interface {v0, v9}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 141
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzid;->zzj()Lcom/google/android/gms/measurement/internal/zzfr;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzfr;->zzc()Lcom/google/android/gms/measurement/internal/zzft;

    move-result-object v0

    const-string v1, "Dropping non-safelisted event. event name, origin"

    invoke-virtual {v0, v1, v9, v8}, Lcom/google/android/gms/measurement/internal/zzft;->zza(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    return-void

    :cond_1
    iget-boolean v0, v7, Lcom/google/android/gms/measurement/internal/zziq;->zze:Z

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x1

    if-nez v0, :cond_3

    iput-boolean v15, v7, Lcom/google/android/gms/measurement/internal/zziq;->zze:Z

    :try_start_0
    iget-object v0, v7, Lcom/google/android/gms/measurement/internal/zzid;->zzu:Lcom/google/android/gms/measurement/internal/zzhf;

    .line 142
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzhf;->zzag()Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_1

    const-string v1, "com.google.android.gms.tagmanager.TagManagerService"

    if-nez v0, :cond_2

    .line 143
    :try_start_1
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzid;->zza()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-static {v1, v15, v0}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v0

    goto :goto_0

    .line 144
    :cond_2
    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0
    :try_end_1
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    :goto_0
    :try_start_2
    const-string v1, "initialize"

    new-array v2, v15, [Ljava/lang/Class;

    const-class v3, Landroid/content/Context;

    aput-object v3, v2, v14

    .line 145
    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    new-array v1, v15, [Ljava/lang/Object;

    .line 146
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzid;->zza()Landroid/content/Context;

    move-result-object v2

    aput-object v2, v1, v14

    invoke-virtual {v0, v13, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    .line 147
    :try_start_3
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzid;->zzj()Lcom/google/android/gms/measurement/internal/zzfr;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzfr;->zzu()Lcom/google/android/gms/measurement/internal/zzft;

    move-result-object v1

    const-string v2, "Failed to invoke Tag Manager\'s initialize() method"

    invoke-virtual {v1, v2, v0}, Lcom/google/android/gms/measurement/internal/zzft;->zza(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_3
    .catch Ljava/lang/ClassNotFoundException; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_1

    .line 148
    :catch_1
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzid;->zzj()Lcom/google/android/gms/measurement/internal/zzfr;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzfr;->zzn()Lcom/google/android/gms/measurement/internal/zzft;

    move-result-object v0

    const-string v1, "Tag Manager is not found and thus will not be used"

    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/internal/zzft;->zza(Ljava/lang/String;)V

    :cond_3
    :goto_1
    const-string v0, "_cmp"

    .line 149
    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    const-string v0, "gclid"

    .line 150
    invoke-virtual {v12, v0}, Landroid/os/BaseBundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    const-string v2, "auto"

    const-string v3, "_lgclid"

    .line 151
    invoke-virtual {v12, v0}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 152
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzid;->zzb()Lcom/google/android/gms/common/util/Clock;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/common/util/Clock;->currentTimeMillis()J

    move-result-wide v5

    move-object/from16 v1, p0

    .line 153
    invoke-virtual/range {v1 .. v6}, Lcom/google/android/gms/measurement/internal/zziq;->zza(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;J)V

    .line 154
    :cond_4
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzoi;->zza()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 155
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzid;->zze()Lcom/google/android/gms/measurement/internal/zzaf;

    move-result-object v0

    sget-object v1, Lcom/google/android/gms/measurement/internal/zzbi;->zzcs:Lcom/google/android/gms/measurement/internal/zzfi;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/internal/zzaf;->zza(Lcom/google/android/gms/measurement/internal/zzfi;)Z

    move-result v0

    if-eqz v0, :cond_5

    const-string v0, "gbraid"

    .line 156
    invoke-virtual {v12, v0}, Landroid/os/BaseBundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5

    const-string v2, "auto"

    const-string v3, "_gbraid"

    .line 157
    invoke-virtual {v12, v0}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 158
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzid;->zzb()Lcom/google/android/gms/common/util/Clock;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/common/util/Clock;->currentTimeMillis()J

    move-result-wide v5

    move-object/from16 v1, p0

    .line 159
    invoke-virtual/range {v1 .. v6}, Lcom/google/android/gms/measurement/internal/zziq;->zza(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;J)V

    :cond_5
    if-eqz p6, :cond_6

    .line 160
    invoke-static/range {p2 .. p2}, Lcom/google/android/gms/measurement/internal/zznd;->zzj(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 161
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzid;->zzq()Lcom/google/android/gms/measurement/internal/zznd;

    move-result-object v0

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzid;->zzk()Lcom/google/android/gms/measurement/internal/zzgd;

    move-result-object v1

    iget-object v1, v1, Lcom/google/android/gms/measurement/internal/zzgd;->zzt:Lcom/google/android/gms/measurement/internal/zzgf;

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzgf;->zza()Landroid/os/Bundle;

    move-result-object v1

    invoke-virtual {v0, v12, v1}, Lcom/google/android/gms/measurement/internal/zznd;->zza(Landroid/os/Bundle;Landroid/os/Bundle;)V

    :cond_6
    const/16 v0, 0x28

    if-nez p8, :cond_b

    const-string v1, "_iap"

    .line 162
    invoke-virtual {v1, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_b

    iget-object v1, v7, Lcom/google/android/gms/measurement/internal/zzid;->zzu:Lcom/google/android/gms/measurement/internal/zzhf;

    .line 163
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzhf;->zzt()Lcom/google/android/gms/measurement/internal/zznd;

    move-result-object v1

    const-string v2, "event"

    .line 164
    invoke-virtual {v1, v2, v9}, Lcom/google/android/gms/measurement/internal/zznd;->zzc(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    const/4 v4, 0x2

    if-nez v3, :cond_7

    goto :goto_2

    .line 165
    :cond_7
    sget-object v3, Lcom/google/android/gms/measurement/internal/zzii;->zza:[Ljava/lang/String;

    sget-object v5, Lcom/google/android/gms/measurement/internal/zzii;->zzb:[Ljava/lang/String;

    invoke-virtual {v1, v2, v3, v5, v9}, Lcom/google/android/gms/measurement/internal/zznd;->zza(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_8

    const/16 v4, 0xd

    goto :goto_2

    .line 166
    :cond_8
    invoke-virtual {v1, v2, v0, v9}, Lcom/google/android/gms/measurement/internal/zznd;->zza(Ljava/lang/String;ILjava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_9

    goto :goto_2

    :cond_9
    move v4, v14

    :goto_2
    if-eqz v4, :cond_b

    .line 167
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzid;->zzj()Lcom/google/android/gms/measurement/internal/zzfr;

    move-result-object v1

    .line 168
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzfr;->zzh()Lcom/google/android/gms/measurement/internal/zzft;

    move-result-object v1

    .line 169
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzid;->zzi()Lcom/google/android/gms/measurement/internal/zzfq;

    move-result-object v2

    invoke-virtual {v2, v9}, Lcom/google/android/gms/measurement/internal/zzfq;->zza(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "Invalid public event name. Event will not be logged (FE)"

    .line 170
    invoke-virtual {v1, v3, v2}, Lcom/google/android/gms/measurement/internal/zzft;->zza(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v1, v7, Lcom/google/android/gms/measurement/internal/zzid;->zzu:Lcom/google/android/gms/measurement/internal/zzhf;

    .line 171
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzhf;->zzt()Lcom/google/android/gms/measurement/internal/zznd;

    .line 172
    invoke-static {v9, v0, v15}, Lcom/google/android/gms/measurement/internal/zznd;->zza(Ljava/lang/String;IZ)Ljava/lang/String;

    move-result-object v0

    if-eqz v9, :cond_a

    .line 173
    invoke-virtual/range {p2 .. p2}, Ljava/lang/String;->length()I

    move-result v14

    :cond_a
    iget-object v1, v7, Lcom/google/android/gms/measurement/internal/zzid;->zzu:Lcom/google/android/gms/measurement/internal/zzhf;

    .line 174
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzhf;->zzt()Lcom/google/android/gms/measurement/internal/zznd;

    iget-object v1, v7, Lcom/google/android/gms/measurement/internal/zziq;->zzo:Lcom/google/android/gms/measurement/internal/zznf;

    const-string v2, "_ev"

    .line 175
    invoke-static {v1, v4, v2, v0, v14}, Lcom/google/android/gms/measurement/internal/zznd;->zza(Lcom/google/android/gms/measurement/internal/zznf;ILjava/lang/String;Ljava/lang/String;I)V

    return-void

    .line 176
    :cond_b
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzf;->zzn()Lcom/google/android/gms/measurement/internal/zzkh;

    move-result-object v1

    .line 177
    invoke-virtual {v1, v14}, Lcom/google/android/gms/measurement/internal/zzkh;->zza(Z)Lcom/google/android/gms/measurement/internal/zzki;

    move-result-object v1

    const-string v2, "_sc"

    if-eqz v1, :cond_c

    .line 178
    invoke-virtual {v12, v2}, Landroid/os/BaseBundle;->containsKey(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_c

    .line 179
    iput-boolean v15, v1, Lcom/google/android/gms/measurement/internal/zzki;->zzd:Z

    :cond_c
    if-eqz p6, :cond_d

    if-nez p8, :cond_d

    move v3, v15

    goto :goto_3

    :cond_d
    move v3, v14

    .line 180
    :goto_3
    invoke-static {v1, v12, v3}, Lcom/google/android/gms/measurement/internal/zznd;->zza(Lcom/google/android/gms/measurement/internal/zzki;Landroid/os/Bundle;Z)V

    const-string v1, "am"

    .line 181
    invoke-virtual {v1, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    .line 182
    invoke-static/range {p2 .. p2}, Lcom/google/android/gms/measurement/internal/zznd;->zzg(Ljava/lang/String;)Z

    move-result v1

    if-eqz p6, :cond_e

    iget-object v3, v7, Lcom/google/android/gms/measurement/internal/zziq;->zzc:Lcom/google/android/gms/measurement/internal/zzim;

    if-eqz v3, :cond_e

    if-nez v1, :cond_e

    if-nez v16, :cond_e

    .line 183
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzid;->zzj()Lcom/google/android/gms/measurement/internal/zzfr;

    move-result-object v0

    .line 184
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzfr;->zzc()Lcom/google/android/gms/measurement/internal/zzft;

    move-result-object v0

    .line 185
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzid;->zzi()Lcom/google/android/gms/measurement/internal/zzfq;

    move-result-object v1

    invoke-virtual {v1, v9}, Lcom/google/android/gms/measurement/internal/zzfq;->zza(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 186
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzid;->zzi()Lcom/google/android/gms/measurement/internal/zzfq;

    move-result-object v2

    invoke-virtual {v2, v12}, Lcom/google/android/gms/measurement/internal/zzfq;->zza(Landroid/os/Bundle;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "Passing event to registered event handler (FE)"

    .line 187
    invoke-virtual {v0, v3, v1, v2}, Lcom/google/android/gms/measurement/internal/zzft;->zza(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    iget-object v0, v7, Lcom/google/android/gms/measurement/internal/zziq;->zzc:Lcom/google/android/gms/measurement/internal/zzim;

    .line 188
    invoke-static {v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, v7, Lcom/google/android/gms/measurement/internal/zziq;->zzc:Lcom/google/android/gms/measurement/internal/zzim;

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p5

    move-wide/from16 v5, p3

    .line 189
    invoke-interface/range {v1 .. v6}, Lcom/google/android/gms/measurement/internal/zzim;->interceptEvent(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;J)V

    return-void

    :cond_e
    iget-object v1, v7, Lcom/google/android/gms/measurement/internal/zzid;->zzu:Lcom/google/android/gms/measurement/internal/zzhf;

    .line 190
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzhf;->zzaf()Z

    move-result v1

    if-nez v1, :cond_f

    return-void

    .line 191
    :cond_f
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzid;->zzq()Lcom/google/android/gms/measurement/internal/zznd;

    move-result-object v1

    invoke-virtual {v1, v9}, Lcom/google/android/gms/measurement/internal/zznd;->zza(Ljava/lang/String;)I

    move-result v1

    if-eqz v1, :cond_11

    .line 192
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzid;->zzj()Lcom/google/android/gms/measurement/internal/zzfr;

    move-result-object v2

    .line 193
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzfr;->zzh()Lcom/google/android/gms/measurement/internal/zzft;

    move-result-object v2

    .line 194
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzid;->zzi()Lcom/google/android/gms/measurement/internal/zzfq;

    move-result-object v3

    invoke-virtual {v3, v9}, Lcom/google/android/gms/measurement/internal/zzfq;->zza(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "Invalid event name. Event will not be logged (FE)"

    .line 195
    invoke-virtual {v2, v4, v3}, Lcom/google/android/gms/measurement/internal/zzft;->zza(Ljava/lang/String;Ljava/lang/Object;)V

    .line 196
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzid;->zzq()Lcom/google/android/gms/measurement/internal/zznd;

    invoke-static {v9, v0, v15}, Lcom/google/android/gms/measurement/internal/zznd;->zza(Ljava/lang/String;IZ)Ljava/lang/String;

    move-result-object v0

    if-eqz v9, :cond_10

    .line 197
    invoke-virtual/range {p2 .. p2}, Ljava/lang/String;->length()I

    move-result v14

    :cond_10
    iget-object v2, v7, Lcom/google/android/gms/measurement/internal/zzid;->zzu:Lcom/google/android/gms/measurement/internal/zzhf;

    .line 198
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzhf;->zzt()Lcom/google/android/gms/measurement/internal/zznd;

    iget-object v2, v7, Lcom/google/android/gms/measurement/internal/zziq;->zzo:Lcom/google/android/gms/measurement/internal/zznf;

    const-string v3, "_ev"

    move-object/from16 p1, v2

    move-object/from16 p2, p9

    move/from16 p3, v1

    move-object/from16 p4, v3

    move-object/from16 p5, v0

    move/from16 p6, v14

    .line 199
    invoke-static/range {p1 .. p6}, Lcom/google/android/gms/measurement/internal/zznd;->zza(Lcom/google/android/gms/measurement/internal/zznf;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;I)V

    return-void

    :cond_11
    const-string v0, "_sn"

    const-string v1, "_si"

    const-string v6, "_o"

    filled-new-array {v6, v0, v2, v1}, [Ljava/lang/String;

    move-result-object v0

    .line 200
    invoke-static {v0}, Lcom/google/android/gms/common/util/CollectionUtils;->listOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v5

    .line 201
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzid;->zzq()Lcom/google/android/gms/measurement/internal/zznd;

    move-result-object v1

    move-object/from16 v2, p9

    move-object/from16 v3, p2

    move-object/from16 v4, p5

    move-object v0, v6

    move/from16 v6, p8

    invoke-virtual/range {v1 .. v6}, Lcom/google/android/gms/measurement/internal/zznd;->zza(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;Ljava/util/List;Z)Landroid/os/Bundle;

    move-result-object v12

    .line 202
    invoke-static {v12}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 203
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzf;->zzn()Lcom/google/android/gms/measurement/internal/zzkh;

    move-result-object v1

    .line 204
    invoke-virtual {v1, v14}, Lcom/google/android/gms/measurement/internal/zzkh;->zza(Z)Lcom/google/android/gms/measurement/internal/zzki;

    move-result-object v1

    const-string v5, "_ae"

    const-wide/16 v3, 0x0

    if-eqz v1, :cond_12

    .line 205
    invoke-virtual {v5, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_12

    .line 206
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzf;->zzp()Lcom/google/android/gms/measurement/internal/zzlx;

    move-result-object v1

    .line 207
    iget-object v1, v1, Lcom/google/android/gms/measurement/internal/zzlx;->zzb:Lcom/google/android/gms/measurement/internal/zzmd;

    .line 208
    iget-object v2, v1, Lcom/google/android/gms/measurement/internal/zzmd;->zzb:Lcom/google/android/gms/measurement/internal/zzlx;

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzid;->zzb()Lcom/google/android/gms/common/util/Clock;

    move-result-object v2

    invoke-interface {v2}, Lcom/google/android/gms/common/util/Clock;->elapsedRealtime()J

    move-result-wide v13

    .line 209
    iget-wide v6, v1, Lcom/google/android/gms/measurement/internal/zzmd;->zza:J

    sub-long v6, v13, v6

    .line 210
    iput-wide v13, v1, Lcom/google/android/gms/measurement/internal/zzmd;->zza:J

    cmp-long v1, v6, v3

    if-lez v1, :cond_12

    .line 211
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzid;->zzq()Lcom/google/android/gms/measurement/internal/zznd;

    move-result-object v1

    invoke-virtual {v1, v12, v6, v7}, Lcom/google/android/gms/measurement/internal/zznd;->zza(Landroid/os/Bundle;J)V

    .line 212
    :cond_12
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zznv;->zza()Z

    move-result v1

    if-eqz v1, :cond_17

    .line 213
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzid;->zze()Lcom/google/android/gms/measurement/internal/zzaf;

    move-result-object v1

    sget-object v2, Lcom/google/android/gms/measurement/internal/zzbi;->zzbm:Lcom/google/android/gms/measurement/internal/zzfi;

    invoke-virtual {v1, v2}, Lcom/google/android/gms/measurement/internal/zzaf;->zza(Lcom/google/android/gms/measurement/internal/zzfi;)Z

    move-result v1

    if-eqz v1, :cond_17

    const-string v1, "auto"

    .line 214
    invoke-virtual {v1, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const-string v2, "_ffr"

    if-nez v1, :cond_16

    const-string v1, "_ssr"

    .line 215
    invoke-virtual {v1, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_16

    .line 216
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzid;->zzq()Lcom/google/android/gms/measurement/internal/zznd;

    move-result-object v1

    .line 217
    invoke-virtual {v12, v2}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 218
    invoke-static {v2}, Lcom/google/android/gms/common/util/Strings;->isEmptyOrWhitespace(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_13

    const/4 v13, 0x0

    goto :goto_4

    :cond_13
    if-eqz v2, :cond_14

    .line 219
    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v13

    goto :goto_4

    :cond_14
    move-object v13, v2

    .line 220
    :goto_4
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzid;->zzk()Lcom/google/android/gms/measurement/internal/zzgd;

    move-result-object v2

    iget-object v2, v2, Lcom/google/android/gms/measurement/internal/zzgd;->zzq:Lcom/google/android/gms/measurement/internal/zzgj;

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzgj;->zza()Ljava/lang/String;

    move-result-object v2

    invoke-static {v13, v2}, Lcom/google/android/gms/measurement/internal/zzng;->zza(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_15

    .line 221
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzid;->zzj()Lcom/google/android/gms/measurement/internal/zzfr;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzfr;->zzc()Lcom/google/android/gms/measurement/internal/zzft;

    move-result-object v0

    const-string v1, "Not logging duplicate session_start_with_rollout event"

    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/internal/zzft;->zza(Ljava/lang/String;)V

    return-void

    .line 222
    :cond_15
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzid;->zzk()Lcom/google/android/gms/measurement/internal/zzgd;

    move-result-object v1

    iget-object v1, v1, Lcom/google/android/gms/measurement/internal/zzgd;->zzq:Lcom/google/android/gms/measurement/internal/zzgj;

    invoke-virtual {v1, v13}, Lcom/google/android/gms/measurement/internal/zzgj;->zza(Ljava/lang/String;)V

    goto :goto_5

    .line 223
    :cond_16
    invoke-virtual {v5, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_17

    .line 224
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzid;->zzq()Lcom/google/android/gms/measurement/internal/zznd;

    move-result-object v1

    .line 225
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzid;->zzk()Lcom/google/android/gms/measurement/internal/zzgd;

    move-result-object v1

    iget-object v1, v1, Lcom/google/android/gms/measurement/internal/zzgd;->zzq:Lcom/google/android/gms/measurement/internal/zzgj;

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzgj;->zza()Ljava/lang/String;

    move-result-object v1

    .line 226
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_17

    .line 227
    invoke-virtual {v12, v2, v1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 228
    :cond_17
    :goto_5
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 229
    invoke-interface {v7, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 230
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzid;->zze()Lcom/google/android/gms/measurement/internal/zzaf;

    move-result-object v1

    sget-object v2, Lcom/google/android/gms/measurement/internal/zzbi;->zzcj:Lcom/google/android/gms/measurement/internal/zzfi;

    invoke-virtual {v1, v2}, Lcom/google/android/gms/measurement/internal/zzaf;->zza(Lcom/google/android/gms/measurement/internal/zzfi;)Z

    move-result v1

    if-eqz v1, :cond_18

    .line 231
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzf;->zzp()Lcom/google/android/gms/measurement/internal/zzlx;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzlx;->zzaa()Z

    move-result v1

    goto :goto_6

    .line 232
    :cond_18
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzid;->zzk()Lcom/google/android/gms/measurement/internal/zzgd;

    move-result-object v1

    iget-object v1, v1, Lcom/google/android/gms/measurement/internal/zzgd;->zzn:Lcom/google/android/gms/measurement/internal/zzgg;

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzgg;->zza()Z

    move-result v1

    .line 233
    :goto_6
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzid;->zzk()Lcom/google/android/gms/measurement/internal/zzgd;

    move-result-object v2

    iget-object v2, v2, Lcom/google/android/gms/measurement/internal/zzgd;->zzk:Lcom/google/android/gms/measurement/internal/zzgi;

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzgi;->zza()J

    move-result-wide v13

    cmp-long v2, v13, v3

    if-lez v2, :cond_19

    .line 234
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzid;->zzk()Lcom/google/android/gms/measurement/internal/zzgd;

    move-result-object v2

    invoke-virtual {v2, v10, v11}, Lcom/google/android/gms/measurement/internal/zzgd;->zza(J)Z

    move-result v2

    if-eqz v2, :cond_19

    if-eqz v1, :cond_19

    .line 235
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzid;->zzj()Lcom/google/android/gms/measurement/internal/zzfr;

    move-result-object v1

    .line 236
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzfr;->zzp()Lcom/google/android/gms/measurement/internal/zzft;

    move-result-object v1

    const-string v2, "Current session is expired, remove the session number, ID, and engagement time"

    .line 237
    invoke-virtual {v1, v2}, Lcom/google/android/gms/measurement/internal/zzft;->zza(Ljava/lang/String;)V

    const-string v2, "auto"

    const-string v6, "_sid"

    const/4 v13, 0x0

    .line 238
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzid;->zzb()Lcom/google/android/gms/common/util/Clock;

    move-result-object v1

    invoke-interface {v1}, Lcom/google/android/gms/common/util/Clock;->currentTimeMillis()J

    move-result-wide v17

    move-object/from16 v1, p0

    move-wide v8, v3

    move-object v3, v6

    move-object v4, v13

    move-object v13, v5

    move-wide/from16 v5, v17

    .line 239
    invoke-virtual/range {v1 .. v6}, Lcom/google/android/gms/measurement/internal/zziq;->zza(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;J)V

    const-string v2, "auto"

    const-string v3, "_sno"

    const/4 v4, 0x0

    .line 240
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzid;->zzb()Lcom/google/android/gms/common/util/Clock;

    move-result-object v1

    invoke-interface {v1}, Lcom/google/android/gms/common/util/Clock;->currentTimeMillis()J

    move-result-wide v5

    move-object/from16 v1, p0

    .line 241
    invoke-virtual/range {v1 .. v6}, Lcom/google/android/gms/measurement/internal/zziq;->zza(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;J)V

    const-string v2, "auto"

    const-string v3, "_se"

    .line 242
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzid;->zzb()Lcom/google/android/gms/common/util/Clock;

    move-result-object v1

    invoke-interface {v1}, Lcom/google/android/gms/common/util/Clock;->currentTimeMillis()J

    move-result-wide v5

    move-object/from16 v1, p0

    .line 243
    invoke-virtual/range {v1 .. v6}, Lcom/google/android/gms/measurement/internal/zziq;->zza(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;J)V

    .line 244
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzid;->zzk()Lcom/google/android/gms/measurement/internal/zzgd;

    move-result-object v1

    iget-object v1, v1, Lcom/google/android/gms/measurement/internal/zzgd;->zzl:Lcom/google/android/gms/measurement/internal/zzgi;

    invoke-virtual {v1, v8, v9}, Lcom/google/android/gms/measurement/internal/zzgi;->zza(J)V

    goto :goto_7

    :cond_19
    move-wide v8, v3

    move-object v13, v5

    :goto_7
    const-string v1, "extend_session"

    .line 245
    invoke-virtual {v12, v1, v8, v9}, Landroid/os/BaseBundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v1

    const-wide/16 v3, 0x1

    cmp-long v1, v1, v3

    if-nez v1, :cond_1a

    .line 246
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzid;->zzj()Lcom/google/android/gms/measurement/internal/zzfr;

    move-result-object v1

    .line 247
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzfr;->zzp()Lcom/google/android/gms/measurement/internal/zzft;

    move-result-object v1

    const-string v2, "EXTEND_SESSION param attached: initiate a new session or extend the current active session"

    .line 248
    invoke-virtual {v1, v2}, Lcom/google/android/gms/measurement/internal/zzft;->zza(Ljava/lang/String;)V

    move-object/from16 v8, p0

    iget-object v1, v8, Lcom/google/android/gms/measurement/internal/zzid;->zzu:Lcom/google/android/gms/measurement/internal/zzhf;

    .line 249
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzhf;->zzs()Lcom/google/android/gms/measurement/internal/zzlx;

    move-result-object v1

    .line 250
    iget-object v1, v1, Lcom/google/android/gms/measurement/internal/zzlx;->zza:Lcom/google/android/gms/measurement/internal/zzmf;

    invoke-virtual {v1, v10, v11, v15}, Lcom/google/android/gms/measurement/internal/zzmf;->zza(JZ)V

    goto :goto_8

    :cond_1a
    move-object/from16 v8, p0

    .line 251
    :goto_8
    new-instance v1, Ljava/util/ArrayList;

    invoke-virtual {v12}, Landroid/os/BaseBundle;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 252
    invoke-static {v1}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 253
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v3, 0x0

    :cond_1b
    :goto_9
    if-ge v3, v2, :cond_1c

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    add-int/lit8 v3, v3, 0x1

    check-cast v4, Ljava/lang/String;

    if-eqz v4, :cond_1b

    .line 254
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzid;->zzq()Lcom/google/android/gms/measurement/internal/zznd;

    invoke-virtual {v12, v4}, Landroid/os/BaseBundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    invoke-static {v5}, Lcom/google/android/gms/measurement/internal/zznd;->zzb(Ljava/lang/Object;)[Landroid/os/Bundle;

    move-result-object v5

    if-eqz v5, :cond_1b

    .line 255
    invoke-virtual {v12, v4, v5}, Landroid/os/Bundle;->putParcelableArray(Ljava/lang/String;[Landroid/os/Parcelable;)V

    goto :goto_9

    :cond_1c
    const/4 v9, 0x0

    .line 256
    :goto_a
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v1

    if-ge v9, v1, :cond_20

    .line 257
    invoke-interface {v7, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/Bundle;

    if-eqz v9, :cond_1d

    const-string v2, "_ep"

    move-object/from16 v12, p1

    goto :goto_b

    :cond_1d
    move-object/from16 v12, p1

    move-object/from16 v2, p2

    .line 258
    :goto_b
    invoke-virtual {v1, v0, v12}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p7, :cond_1e

    .line 259
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzid;->zzq()Lcom/google/android/gms/measurement/internal/zznd;

    move-result-object v3

    invoke-virtual {v3, v1}, Lcom/google/android/gms/measurement/internal/zznd;->zzb(Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v1

    :cond_1e
    move-object v14, v1

    .line 260
    new-instance v5, Lcom/google/android/gms/measurement/internal/zzbg;

    new-instance v3, Lcom/google/android/gms/measurement/internal/zzbb;

    invoke-direct {v3, v14}, Lcom/google/android/gms/measurement/internal/zzbb;-><init>(Landroid/os/Bundle;)V

    move-object v1, v5

    move-object/from16 v4, p1

    move-object v15, v5

    move-wide/from16 v5, p3

    invoke-direct/range {v1 .. v6}, Lcom/google/android/gms/measurement/internal/zzbg;-><init>(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/zzbb;Ljava/lang/String;J)V

    .line 261
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzf;->zzo()Lcom/google/android/gms/measurement/internal/zzkp;

    move-result-object v1

    move-object/from16 v5, p9

    invoke-virtual {v1, v15, v5}, Lcom/google/android/gms/measurement/internal/zzkp;->zza(Lcom/google/android/gms/measurement/internal/zzbg;Ljava/lang/String;)V

    if-nez v16, :cond_1f

    iget-object v1, v8, Lcom/google/android/gms/measurement/internal/zziq;->zzd:Ljava/util/Set;

    .line 262
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v15

    :goto_c
    invoke-interface {v15}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1f

    invoke-interface {v15}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/measurement/internal/zzil;

    .line 263
    new-instance v4, Landroid/os/Bundle;

    invoke-direct {v4, v14}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-wide/from16 v5, p3

    .line 264
    invoke-interface/range {v1 .. v6}, Lcom/google/android/gms/measurement/internal/zzil;->onEvent(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;J)V

    move-object/from16 v5, p9

    goto :goto_c

    :cond_1f
    add-int/lit8 v9, v9, 0x1

    const/4 v15, 0x1

    goto :goto_a

    .line 265
    :cond_20
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzf;->zzn()Lcom/google/android/gms/measurement/internal/zzkh;

    move-result-object v0

    const/4 v1, 0x0

    .line 266
    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/internal/zzkh;->zza(Z)Lcom/google/android/gms/measurement/internal/zzki;

    move-result-object v0

    if-eqz v0, :cond_21

    move-object/from16 v1, p2

    .line 267
    invoke-virtual {v13, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_21

    .line 268
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzf;->zzp()Lcom/google/android/gms/measurement/internal/zzlx;

    move-result-object v0

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzid;->zzb()Lcom/google/android/gms/common/util/Clock;

    move-result-object v1

    invoke-interface {v1}, Lcom/google/android/gms/common/util/Clock;->elapsedRealtime()J

    move-result-wide v1

    const/4 v3, 0x1

    invoke-virtual {v0, v3, v3, v1, v2}, Lcom/google/android/gms/measurement/internal/zzlx;->zza(ZZJ)Z

    :cond_21
    return-void
.end method

.method public final zza(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 4

    .line 76
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzid;->zzb()Lcom/google/android/gms/common/util/Clock;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/common/util/Clock;->currentTimeMillis()J

    move-result-wide v0

    .line 77
    invoke-static {p1}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotEmpty(Ljava/lang/String;)Ljava/lang/String;

    .line 78
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    const-string v3, "name"

    .line 79
    invoke-virtual {v2, v3, p1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "creation_timestamp"

    .line 80
    invoke-virtual {v2, p1, v0, v1}, Landroid/os/BaseBundle;->putLong(Ljava/lang/String;J)V

    if-eqz p2, :cond_0

    const-string p1, "expired_event_name"

    .line 81
    invoke-virtual {v2, p1, p2}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "expired_event_params"

    .line 82
    invoke-virtual {v2, p1, p3}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 83
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzid;->zzl()Lcom/google/android/gms/measurement/internal/zzgy;

    move-result-object p1

    new-instance p2, Lcom/google/android/gms/measurement/internal/zzjl;

    invoke-direct {p2, p0, v2}, Lcom/google/android/gms/measurement/internal/zzjl;-><init>(Lcom/google/android/gms/measurement/internal/zziq;Landroid/os/Bundle;)V

    .line 84
    invoke-virtual {p1, p2}, Lcom/google/android/gms/measurement/internal/zzgy;->zzb(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final zza(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;Ljava/lang/String;)V
    .locals 11

    .line 127
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzid;->zzs()V

    .line 128
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzid;->zzb()Lcom/google/android/gms/common/util/Clock;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/common/util/Clock;->currentTimeMillis()J

    move-result-wide v4

    const/4 v7, 0x0

    const/4 v8, 0x1

    const/4 v9, 0x1

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v6, p3

    move-object v10, p4

    .line 129
    invoke-direct/range {v1 .. v10}, Lcom/google/android/gms/measurement/internal/zziq;->zzb(Ljava/lang/String;Ljava/lang/String;JLandroid/os/Bundle;ZZZLjava/lang/String;)V

    return-void
.end method

.method public final zza(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;ZZJ)V
    .locals 11

    move-object v2, p2

    if-nez p1, :cond_0

    const-string v0, "app"

    move-object v1, v0

    goto :goto_0

    :cond_0
    move-object v1, p1

    :goto_0
    if-nez p3, :cond_1

    .line 122
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    move-object v5, v0

    goto :goto_1

    :cond_1
    move-object v5, p3

    :goto_1
    const-string v0, "screen_view"

    if-eq v2, v0, :cond_2

    if-eqz v2, :cond_3

    .line 123
    invoke-virtual {p2, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_2
    move-object v10, p0

    goto :goto_5

    :cond_3
    move-object v10, p0

    if-eqz p5, :cond_5

    iget-object v0, v10, Lcom/google/android/gms/measurement/internal/zziq;->zzc:Lcom/google/android/gms/measurement/internal/zzim;

    if-eqz v0, :cond_5

    .line 124
    invoke-static {p2}, Lcom/google/android/gms/measurement/internal/zznd;->zzg(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    goto :goto_3

    :cond_4
    const/4 v0, 0x0

    :goto_2
    move v7, v0

    goto :goto_4

    :cond_5
    :goto_3
    const/4 v0, 0x1

    goto :goto_2

    :goto_4
    const/4 v9, 0x0

    move-object v0, p0

    move-object v2, p2

    move-wide/from16 v3, p6

    move/from16 v6, p5

    move v8, p4

    .line 125
    invoke-direct/range {v0 .. v9}, Lcom/google/android/gms/measurement/internal/zziq;->zzb(Ljava/lang/String;Ljava/lang/String;JLandroid/os/Bundle;ZZZLjava/lang/String;)V

    return-void

    .line 126
    :goto_5
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzf;->zzn()Lcom/google/android/gms/measurement/internal/zzkh;

    move-result-object v0

    move-wide/from16 v1, p6

    invoke-virtual {v0, v5, v1, v2}, Lcom/google/android/gms/measurement/internal/zzkh;->zza(Landroid/os/Bundle;J)V

    return-void
.end method

.method final zza(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;J)V
    .locals 8
    .annotation build Landroidx/annotation/WorkerThread;
    .end annotation

    .line 445
    invoke-static {p1}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotEmpty(Ljava/lang/String;)Ljava/lang/String;

    .line 446
    invoke-static {p2}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotEmpty(Ljava/lang/String;)Ljava/lang/String;

    .line 447
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzid;->zzt()V

    .line 448
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zze;->zzu()V

    const-string v0, "allow_personalized_ads"

    .line 449
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 450
    instance-of v0, p3, Ljava/lang/String;

    const-string v1, "_npa"

    if-eqz v0, :cond_2

    move-object v0, p3

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 451
    sget-object p2, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v0, p2}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p2

    const-string p3, "false"

    invoke-virtual {p3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    const-wide/16 v2, 0x1

    if-eqz p2, :cond_0

    move-wide v4, v2

    goto :goto_0

    :cond_0
    const-wide/16 v4, 0x0

    :goto_0
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    .line 452
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzid;->zzk()Lcom/google/android/gms/measurement/internal/zzgd;

    move-result-object v0

    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/zzgd;->zzh:Lcom/google/android/gms/measurement/internal/zzgj;

    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    cmp-long v2, v4, v2

    if-nez v2, :cond_1

    const-string p3, "true"

    :cond_1
    invoke-virtual {v0, p3}, Lcom/google/android/gms/measurement/internal/zzgj;->zza(Ljava/lang/String;)V

    move-object v6, p2

    :goto_1
    move-object v3, v1

    goto :goto_2

    :cond_2
    if-nez p3, :cond_3

    .line 453
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzid;->zzk()Lcom/google/android/gms/measurement/internal/zzgd;

    move-result-object p2

    iget-object p2, p2, Lcom/google/android/gms/measurement/internal/zzgd;->zzh:Lcom/google/android/gms/measurement/internal/zzgj;

    const-string v0, "unset"

    invoke-virtual {p2, v0}, Lcom/google/android/gms/measurement/internal/zzgj;->zza(Ljava/lang/String;)V

    move-object v6, p3

    goto :goto_1

    :cond_3
    move-object v3, p2

    move-object v6, p3

    :goto_2
    iget-object p2, p0, Lcom/google/android/gms/measurement/internal/zzid;->zzu:Lcom/google/android/gms/measurement/internal/zzhf;

    .line 454
    invoke-virtual {p2}, Lcom/google/android/gms/measurement/internal/zzhf;->zzac()Z

    move-result p2

    if-nez p2, :cond_4

    .line 455
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzid;->zzj()Lcom/google/android/gms/measurement/internal/zzfr;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzfr;->zzp()Lcom/google/android/gms/measurement/internal/zzft;

    move-result-object p1

    const-string p2, "User property not set since app measurement is disabled"

    invoke-virtual {p1, p2}, Lcom/google/android/gms/measurement/internal/zzft;->zza(Ljava/lang/String;)V

    return-void

    :cond_4
    iget-object p2, p0, Lcom/google/android/gms/measurement/internal/zzid;->zzu:Lcom/google/android/gms/measurement/internal/zzhf;

    .line 456
    invoke-virtual {p2}, Lcom/google/android/gms/measurement/internal/zzhf;->zzaf()Z

    move-result p2

    if-nez p2, :cond_5

    return-void

    .line 457
    :cond_5
    new-instance p2, Lcom/google/android/gms/measurement/internal/zznc;

    move-object v2, p2

    move-wide v4, p4

    move-object v7, p1

    invoke-direct/range {v2 .. v7}, Lcom/google/android/gms/measurement/internal/zznc;-><init>(Ljava/lang/String;JLjava/lang/Object;Ljava/lang/String;)V

    .line 458
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzf;->zzo()Lcom/google/android/gms/measurement/internal/zzkp;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/google/android/gms/measurement/internal/zzkp;->zza(Lcom/google/android/gms/measurement/internal/zznc;)V

    return-void
.end method

.method public final zza(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Z)V
    .locals 8

    .line 425
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzid;->zzb()Lcom/google/android/gms/common/util/Clock;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/common/util/Clock;->currentTimeMillis()J

    move-result-wide v6

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move v5, p4

    invoke-virtual/range {v1 .. v7}, Lcom/google/android/gms/measurement/internal/zziq;->zza(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;ZJ)V

    return-void
.end method

.method public final zza(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;ZJ)V
    .locals 6

    if-nez p1, :cond_0

    const-string p1, "app"

    :cond_0
    move-object v1, p1

    const/4 p1, 0x0

    const/16 v0, 0x18

    if-eqz p4, :cond_1

    .line 426
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzid;->zzq()Lcom/google/android/gms/measurement/internal/zznd;

    move-result-object p4

    invoke-virtual {p4, p2}, Lcom/google/android/gms/measurement/internal/zznd;->zzb(Ljava/lang/String;)I

    move-result p4

    goto :goto_1

    .line 427
    :cond_1
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzid;->zzq()Lcom/google/android/gms/measurement/internal/zznd;

    move-result-object p4

    const-string v2, "user property"

    .line 428
    invoke-virtual {p4, v2, p2}, Lcom/google/android/gms/measurement/internal/zznd;->zzc(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    const/4 v4, 0x6

    if-nez v3, :cond_2

    :goto_0
    move p4, v4

    goto :goto_1

    .line 429
    :cond_2
    sget-object v3, Lcom/google/android/gms/measurement/internal/zzij;->zza:[Ljava/lang/String;

    invoke-virtual {p4, v2, v3, p2}, Lcom/google/android/gms/measurement/internal/zznd;->zza(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_3

    const/16 p4, 0xf

    goto :goto_1

    .line 430
    :cond_3
    invoke-virtual {p4, v2, v0, p2}, Lcom/google/android/gms/measurement/internal/zznd;->zza(Ljava/lang/String;ILjava/lang/String;)Z

    move-result p4

    if-nez p4, :cond_4

    goto :goto_0

    :cond_4
    move p4, p1

    :goto_1
    const-string v2, "_ev"

    const/4 v3, 0x1

    if-eqz p4, :cond_6

    .line 431
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzid;->zzq()Lcom/google/android/gms/measurement/internal/zznd;

    invoke-static {p2, v0, v3}, Lcom/google/android/gms/measurement/internal/zznd;->zza(Ljava/lang/String;IZ)Ljava/lang/String;

    move-result-object p3

    if-eqz p2, :cond_5

    .line 432
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result p1

    :cond_5
    iget-object p2, p0, Lcom/google/android/gms/measurement/internal/zzid;->zzu:Lcom/google/android/gms/measurement/internal/zzhf;

    .line 433
    invoke-virtual {p2}, Lcom/google/android/gms/measurement/internal/zzhf;->zzt()Lcom/google/android/gms/measurement/internal/zznd;

    iget-object p2, p0, Lcom/google/android/gms/measurement/internal/zziq;->zzo:Lcom/google/android/gms/measurement/internal/zznf;

    .line 434
    invoke-static {p2, p4, v2, p3, p1}, Lcom/google/android/gms/measurement/internal/zznd;->zza(Lcom/google/android/gms/measurement/internal/zznf;ILjava/lang/String;Ljava/lang/String;I)V

    return-void

    :cond_6
    if-eqz p3, :cond_b

    .line 435
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzid;->zzq()Lcom/google/android/gms/measurement/internal/zznd;

    move-result-object p4

    invoke-virtual {p4, p2, p3}, Lcom/google/android/gms/measurement/internal/zznd;->zza(Ljava/lang/String;Ljava/lang/Object;)I

    move-result p4

    if-eqz p4, :cond_9

    .line 436
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzid;->zzq()Lcom/google/android/gms/measurement/internal/zznd;

    invoke-static {p2, v0, v3}, Lcom/google/android/gms/measurement/internal/zznd;->zza(Ljava/lang/String;IZ)Ljava/lang/String;

    move-result-object p2

    .line 437
    instance-of p5, p3, Ljava/lang/String;

    if-nez p5, :cond_7

    instance-of p5, p3, Ljava/lang/CharSequence;

    if-eqz p5, :cond_8

    .line 438
    :cond_7
    invoke-static {p3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 439
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    :cond_8
    iget-object p3, p0, Lcom/google/android/gms/measurement/internal/zzid;->zzu:Lcom/google/android/gms/measurement/internal/zzhf;

    .line 440
    invoke-virtual {p3}, Lcom/google/android/gms/measurement/internal/zzhf;->zzt()Lcom/google/android/gms/measurement/internal/zznd;

    iget-object p3, p0, Lcom/google/android/gms/measurement/internal/zziq;->zzo:Lcom/google/android/gms/measurement/internal/zznf;

    .line 441
    invoke-static {p3, p4, v2, p2, p1}, Lcom/google/android/gms/measurement/internal/zznd;->zza(Lcom/google/android/gms/measurement/internal/zznf;ILjava/lang/String;Ljava/lang/String;I)V

    return-void

    .line 442
    :cond_9
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzid;->zzq()Lcom/google/android/gms/measurement/internal/zznd;

    move-result-object p1

    invoke-virtual {p1, p2, p3}, Lcom/google/android/gms/measurement/internal/zznd;->zzc(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    if-eqz v5, :cond_a

    move-object v0, p0

    move-object v2, p2

    move-wide v3, p5

    .line 443
    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/measurement/internal/zziq;->zza(Ljava/lang/String;Ljava/lang/String;JLjava/lang/Object;)V

    :cond_a
    return-void

    :cond_b
    const/4 v5, 0x0

    move-object v0, p0

    move-object v2, p2

    move-wide v3, p5

    .line 444
    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/measurement/internal/zziq;->zza(Ljava/lang/String;Ljava/lang/String;JLjava/lang/Object;)V

    return-void
.end method

.method final synthetic zza(Ljava/util/List;)V
    .locals 6

    .line 85
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzid;->zzt()V

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1e

    if-lt v0, v1, :cond_3

    .line 86
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzid;->zzk()Lcom/google/android/gms/measurement/internal/zzgd;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzgd;->zzg()Landroid/util/SparseArray;

    move-result-object v0

    .line 87
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/measurement/internal/zzmh;

    .line 88
    iget v2, v1, Lcom/google/android/gms/measurement/internal/zzmh;->zzc:I

    invoke-static {v0, v2}, Lcom/google/android/gms/measurement/internal/a;->a(Landroid/util/SparseArray;I)Z

    move-result v2

    if-eqz v2, :cond_1

    iget v2, v1, Lcom/google/android/gms/measurement/internal/zzmh;->zzc:I

    .line 89
    invoke-virtual {v0, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    iget-wide v4, v1, Lcom/google/android/gms/measurement/internal/zzmh;->zzb:J

    cmp-long v2, v2, v4

    if-gez v2, :cond_0

    .line 90
    :cond_1
    invoke-direct {p0}, Lcom/google/android/gms/measurement/internal/zziq;->zzao()Ljava/util/PriorityQueue;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/util/PriorityQueue;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 91
    :cond_2
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zziq;->zzan()V

    :cond_3
    return-void
.end method

.method public final zzaa()Ljava/lang/Boolean;
    .locals 6

    .line 1
    .line 2
    new-instance v1, Ljava/util/concurrent/atomic/AtomicReference;

    .line 3
    .line 4
    .line 5
    invoke-direct {v1}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    .line 6
    .line 7
    .line 8
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzid;->zzl()Lcom/google/android/gms/measurement/internal/zzgy;

    .line 9
    move-result-object v0

    .line 10
    .line 11
    const-wide/16 v2, 0x3a98

    .line 12
    .line 13
    const-string v4, "boolean test flag value"

    .line 14
    .line 15
    new-instance v5, Lcom/google/android/gms/measurement/internal/zzja;

    .line 16
    .line 17
    .line 18
    invoke-direct {v5, p0, v1}, Lcom/google/android/gms/measurement/internal/zzja;-><init>(Lcom/google/android/gms/measurement/internal/zziq;Ljava/util/concurrent/atomic/AtomicReference;)V

    .line 19
    .line 20
    .line 21
    invoke-virtual/range {v0 .. v5}, Lcom/google/android/gms/measurement/internal/zzgy;->zza(Ljava/util/concurrent/atomic/AtomicReference;JLjava/lang/String;Ljava/lang/Runnable;)Ljava/lang/Object;

    .line 22
    move-result-object v0

    .line 23
    .line 24
    check-cast v0, Ljava/lang/Boolean;

    .line 25
    return-object v0
.end method

.method public final zzab()Ljava/lang/Double;
    .locals 6

    .line 1
    .line 2
    new-instance v1, Ljava/util/concurrent/atomic/AtomicReference;

    .line 3
    .line 4
    .line 5
    invoke-direct {v1}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    .line 6
    .line 7
    .line 8
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzid;->zzl()Lcom/google/android/gms/measurement/internal/zzgy;

    .line 9
    move-result-object v0

    .line 10
    .line 11
    const-wide/16 v2, 0x3a98

    .line 12
    .line 13
    const-string v4, "double test flag value"

    .line 14
    .line 15
    new-instance v5, Lcom/google/android/gms/measurement/internal/zzju;

    .line 16
    .line 17
    .line 18
    invoke-direct {v5, p0, v1}, Lcom/google/android/gms/measurement/internal/zzju;-><init>(Lcom/google/android/gms/measurement/internal/zziq;Ljava/util/concurrent/atomic/AtomicReference;)V

    .line 19
    .line 20
    .line 21
    invoke-virtual/range {v0 .. v5}, Lcom/google/android/gms/measurement/internal/zzgy;->zza(Ljava/util/concurrent/atomic/AtomicReference;JLjava/lang/String;Ljava/lang/Runnable;)Ljava/lang/Object;

    .line 22
    move-result-object v0

    .line 23
    .line 24
    check-cast v0, Ljava/lang/Double;

    .line 25
    return-object v0
.end method

.method public final zzac()Ljava/lang/Integer;
    .locals 6

    .line 1
    .line 2
    new-instance v1, Ljava/util/concurrent/atomic/AtomicReference;

    .line 3
    .line 4
    .line 5
    invoke-direct {v1}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    .line 6
    .line 7
    .line 8
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzid;->zzl()Lcom/google/android/gms/measurement/internal/zzgy;

    .line 9
    move-result-object v0

    .line 10
    .line 11
    const-wide/16 v2, 0x3a98

    .line 12
    .line 13
    const-string v4, "int test flag value"

    .line 14
    .line 15
    new-instance v5, Lcom/google/android/gms/measurement/internal/zzjr;

    .line 16
    .line 17
    .line 18
    invoke-direct {v5, p0, v1}, Lcom/google/android/gms/measurement/internal/zzjr;-><init>(Lcom/google/android/gms/measurement/internal/zziq;Ljava/util/concurrent/atomic/AtomicReference;)V

    .line 19
    .line 20
    .line 21
    invoke-virtual/range {v0 .. v5}, Lcom/google/android/gms/measurement/internal/zzgy;->zza(Ljava/util/concurrent/atomic/AtomicReference;JLjava/lang/String;Ljava/lang/Runnable;)Ljava/lang/Object;

    .line 22
    move-result-object v0

    .line 23
    .line 24
    check-cast v0, Ljava/lang/Integer;

    .line 25
    return-object v0
.end method

.method public final zzad()Ljava/lang/Long;
    .locals 6

    .line 1
    .line 2
    new-instance v1, Ljava/util/concurrent/atomic/AtomicReference;

    .line 3
    .line 4
    .line 5
    invoke-direct {v1}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    .line 6
    .line 7
    .line 8
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzid;->zzl()Lcom/google/android/gms/measurement/internal/zzgy;

    .line 9
    move-result-object v0

    .line 10
    .line 11
    const-wide/16 v2, 0x3a98

    .line 12
    .line 13
    const-string v4, "long test flag value"

    .line 14
    .line 15
    new-instance v5, Lcom/google/android/gms/measurement/internal/zzjs;

    .line 16
    .line 17
    .line 18
    invoke-direct {v5, p0, v1}, Lcom/google/android/gms/measurement/internal/zzjs;-><init>(Lcom/google/android/gms/measurement/internal/zziq;Ljava/util/concurrent/atomic/AtomicReference;)V

    .line 19
    .line 20
    .line 21
    invoke-virtual/range {v0 .. v5}, Lcom/google/android/gms/measurement/internal/zzgy;->zza(Ljava/util/concurrent/atomic/AtomicReference;JLjava/lang/String;Ljava/lang/Runnable;)Ljava/lang/Object;

    .line 22
    move-result-object v0

    .line 23
    .line 24
    check-cast v0, Ljava/lang/Long;

    .line 25
    return-object v0
.end method

.method public final zzae()Ljava/lang/String;
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zziq;->zzf:Ljava/util/concurrent/atomic/AtomicReference;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    check-cast v0, Ljava/lang/String;

    .line 9
    return-object v0
.end method

.method public final zzaf()Ljava/lang/String;
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzid;->zzu:Lcom/google/android/gms/measurement/internal/zzhf;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzhf;->zzq()Lcom/google/android/gms/measurement/internal/zzkh;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    .line 9
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzkh;->zzaa()Lcom/google/android/gms/measurement/internal/zzki;

    .line 10
    move-result-object v0

    .line 11
    .line 12
    if-eqz v0, :cond_0

    .line 13
    .line 14
    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/zzki;->zzb:Ljava/lang/String;

    .line 15
    return-object v0

    .line 16
    :cond_0
    const/4 v0, 0x0

    .line 17
    return-object v0
.end method

.method public final zzag()Ljava/lang/String;
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzid;->zzu:Lcom/google/android/gms/measurement/internal/zzhf;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzhf;->zzq()Lcom/google/android/gms/measurement/internal/zzkh;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    .line 9
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzkh;->zzaa()Lcom/google/android/gms/measurement/internal/zzki;

    .line 10
    move-result-object v0

    .line 11
    .line 12
    if-eqz v0, :cond_0

    .line 13
    .line 14
    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/zzki;->zza:Ljava/lang/String;

    .line 15
    return-object v0

    .line 16
    :cond_0
    const/4 v0, 0x0

    .line 17
    return-object v0
.end method

.method public final zzah()Ljava/lang/String;
    .locals 4

    .line 1
    .line 2
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzid;->zzu:Lcom/google/android/gms/measurement/internal/zzhf;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzhf;->zzu()Ljava/lang/String;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzid;->zzu:Lcom/google/android/gms/measurement/internal/zzhf;

    .line 11
    .line 12
    .line 13
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzhf;->zzu()Ljava/lang/String;

    .line 14
    move-result-object v0

    .line 15
    return-object v0

    .line 16
    .line 17
    .line 18
    :cond_0
    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzid;->zza()Landroid/content/Context;

    .line 19
    move-result-object v0

    .line 20
    .line 21
    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/zzid;->zzu:Lcom/google/android/gms/measurement/internal/zzhf;

    .line 22
    .line 23
    .line 24
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzhf;->zzx()Ljava/lang/String;

    .line 25
    move-result-object v1

    .line 26
    .line 27
    const-string v2, "google_app_id"

    .line 28
    .line 29
    new-instance v3, Lcom/google/android/gms/measurement/internal/zzgz;

    .line 30
    .line 31
    .line 32
    invoke-direct {v3, v0, v1}, Lcom/google/android/gms/measurement/internal/zzgz;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 33
    .line 34
    .line 35
    invoke-virtual {v3, v2}, Lcom/google/android/gms/measurement/internal/zzgz;->zza(Ljava/lang/String;)Ljava/lang/String;

    .line 36
    move-result-object v0
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 37
    return-object v0

    .line 38
    :catch_0
    move-exception v0

    .line 39
    .line 40
    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/zzid;->zzu:Lcom/google/android/gms/measurement/internal/zzhf;

    .line 41
    .line 42
    .line 43
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzhf;->zzj()Lcom/google/android/gms/measurement/internal/zzfr;

    .line 44
    move-result-object v1

    .line 45
    .line 46
    .line 47
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzfr;->zzg()Lcom/google/android/gms/measurement/internal/zzft;

    .line 48
    move-result-object v1

    .line 49
    .line 50
    const-string v2, "getGoogleAppId failed with exception"

    .line 51
    .line 52
    .line 53
    invoke-virtual {v1, v2, v0}, Lcom/google/android/gms/measurement/internal/zzft;->zza(Ljava/lang/String;Ljava/lang/Object;)V

    .line 54
    const/4 v0, 0x0

    .line 55
    return-object v0
.end method

.method public final zzai()Ljava/lang/String;
    .locals 6

    .line 1
    .line 2
    new-instance v1, Ljava/util/concurrent/atomic/AtomicReference;

    .line 3
    .line 4
    .line 5
    invoke-direct {v1}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    .line 6
    .line 7
    .line 8
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzid;->zzl()Lcom/google/android/gms/measurement/internal/zzgy;

    .line 9
    move-result-object v0

    .line 10
    .line 11
    const-wide/16 v2, 0x3a98

    .line 12
    .line 13
    const-string v4, "String test flag value"

    .line 14
    .line 15
    new-instance v5, Lcom/google/android/gms/measurement/internal/zzjj;

    .line 16
    .line 17
    .line 18
    invoke-direct {v5, p0, v1}, Lcom/google/android/gms/measurement/internal/zzjj;-><init>(Lcom/google/android/gms/measurement/internal/zziq;Ljava/util/concurrent/atomic/AtomicReference;)V

    .line 19
    .line 20
    .line 21
    invoke-virtual/range {v0 .. v5}, Lcom/google/android/gms/measurement/internal/zzgy;->zza(Ljava/util/concurrent/atomic/AtomicReference;JLjava/lang/String;Ljava/lang/Runnable;)Ljava/lang/Object;

    .line 22
    move-result-object v0

    .line 23
    .line 24
    check-cast v0, Ljava/lang/String;

    .line 25
    return-object v0
.end method

.method public final zzaj()V
    .locals 3
    .annotation build Landroidx/annotation/WorkerThread;
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzid;->zzt()V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zze;->zzu()V

    .line 7
    .line 8
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzid;->zzu:Lcom/google/android/gms/measurement/internal/zzhf;

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzhf;->zzaf()Z

    .line 12
    move-result v0

    .line 13
    .line 14
    if-nez v0, :cond_0

    .line 15
    return-void

    .line 16
    .line 17
    .line 18
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzid;->zze()Lcom/google/android/gms/measurement/internal/zzaf;

    .line 19
    move-result-object v0

    .line 20
    .line 21
    sget-object v1, Lcom/google/android/gms/measurement/internal/zzbi;->zzbh:Lcom/google/android/gms/measurement/internal/zzfi;

    .line 22
    .line 23
    .line 24
    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/internal/zzaf;->zza(Lcom/google/android/gms/measurement/internal/zzfi;)Z

    .line 25
    move-result v0

    .line 26
    .line 27
    if-eqz v0, :cond_1

    .line 28
    .line 29
    .line 30
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzid;->zze()Lcom/google/android/gms/measurement/internal/zzaf;

    .line 31
    move-result-object v0

    .line 32
    .line 33
    const-string v1, "google_analytics_deferred_deep_link_enabled"

    .line 34
    .line 35
    .line 36
    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/internal/zzaf;->zzg(Ljava/lang/String;)Ljava/lang/Boolean;

    .line 37
    move-result-object v0

    .line 38
    .line 39
    if-eqz v0, :cond_1

    .line 40
    .line 41
    .line 42
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 43
    move-result v0

    .line 44
    .line 45
    if-eqz v0, :cond_1

    .line 46
    .line 47
    .line 48
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzid;->zzj()Lcom/google/android/gms/measurement/internal/zzfr;

    .line 49
    move-result-object v0

    .line 50
    .line 51
    .line 52
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzfr;->zzc()Lcom/google/android/gms/measurement/internal/zzft;

    .line 53
    move-result-object v0

    .line 54
    .line 55
    const-string v1, "Deferred Deep Link feature enabled."

    .line 56
    .line 57
    .line 58
    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/internal/zzft;->zza(Ljava/lang/String;)V

    .line 59
    .line 60
    .line 61
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzid;->zzl()Lcom/google/android/gms/measurement/internal/zzgy;

    .line 62
    move-result-object v0

    .line 63
    .line 64
    new-instance v1, Lcom/google/android/gms/measurement/internal/zziv;

    .line 65
    .line 66
    .line 67
    invoke-direct {v1, p0}, Lcom/google/android/gms/measurement/internal/zziv;-><init>(Lcom/google/android/gms/measurement/internal/zziq;)V

    .line 68
    .line 69
    .line 70
    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/internal/zzgy;->zzb(Ljava/lang/Runnable;)V

    .line 71
    .line 72
    .line 73
    :cond_1
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzf;->zzo()Lcom/google/android/gms/measurement/internal/zzkp;

    .line 74
    move-result-object v0

    .line 75
    .line 76
    .line 77
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzkp;->zzac()V

    .line 78
    const/4 v0, 0x0

    .line 79
    .line 80
    iput-boolean v0, p0, Lcom/google/android/gms/measurement/internal/zziq;->zzm:Z

    .line 81
    .line 82
    .line 83
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzid;->zzk()Lcom/google/android/gms/measurement/internal/zzgd;

    .line 84
    move-result-object v0

    .line 85
    .line 86
    .line 87
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzgd;->zzv()Ljava/lang/String;

    .line 88
    move-result-object v0

    .line 89
    .line 90
    .line 91
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 92
    move-result v1

    .line 93
    .line 94
    if-nez v1, :cond_2

    .line 95
    .line 96
    .line 97
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzid;->zzf()Lcom/google/android/gms/measurement/internal/zzba;

    .line 98
    move-result-object v1

    .line 99
    .line 100
    .line 101
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzic;->zzab()V

    .line 102
    .line 103
    sget-object v1, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    .line 104
    .line 105
    .line 106
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 107
    move-result v1

    .line 108
    .line 109
    if-nez v1, :cond_2

    .line 110
    .line 111
    new-instance v1, Landroid/os/Bundle;

    .line 112
    .line 113
    .line 114
    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 115
    .line 116
    const-string v2, "_po"

    .line 117
    .line 118
    .line 119
    invoke-virtual {v1, v2, v0}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 120
    .line 121
    const-string v0, "auto"

    .line 122
    .line 123
    const-string v2, "_ou"

    .line 124
    .line 125
    .line 126
    invoke-virtual {p0, v0, v2, v1}, Lcom/google/android/gms/measurement/internal/zziq;->zzc(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V

    .line 127
    :cond_2
    return-void
.end method

.method public final zzak()V
    .locals 2

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzid;->zza()Landroid/content/Context;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    .line 7
    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 8
    move-result-object v0

    .line 9
    .line 10
    instance-of v0, v0, Landroid/app/Application;

    .line 11
    .line 12
    if-eqz v0, :cond_0

    .line 13
    .line 14
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zziq;->zza:Lcom/google/android/gms/measurement/internal/zzjx;

    .line 15
    .line 16
    if-eqz v0, :cond_0

    .line 17
    .line 18
    .line 19
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzid;->zza()Landroid/content/Context;

    .line 20
    move-result-object v0

    .line 21
    .line 22
    .line 23
    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 24
    move-result-object v0

    .line 25
    .line 26
    check-cast v0, Landroid/app/Application;

    .line 27
    .line 28
    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/zziq;->zza:Lcom/google/android/gms/measurement/internal/zzjx;

    .line 29
    .line 30
    .line 31
    invoke-virtual {v0, v1}, Landroid/app/Application;->unregisterActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V

    .line 32
    :cond_0
    return-void
.end method

.method final zzal()V
    .locals 8

    .line 1
    .line 2
    .line 3
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzpg;->zza()Z

    .line 4
    move-result v0

    .line 5
    .line 6
    if-eqz v0, :cond_4

    .line 7
    .line 8
    .line 9
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzid;->zze()Lcom/google/android/gms/measurement/internal/zzaf;

    .line 10
    move-result-object v0

    .line 11
    .line 12
    sget-object v1, Lcom/google/android/gms/measurement/internal/zzbi;->zzcg:Lcom/google/android/gms/measurement/internal/zzfi;

    .line 13
    .line 14
    .line 15
    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/internal/zzaf;->zza(Lcom/google/android/gms/measurement/internal/zzfi;)Z

    .line 16
    move-result v0

    .line 17
    .line 18
    if-nez v0, :cond_0

    .line 19
    goto :goto_0

    .line 20
    .line 21
    .line 22
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzid;->zzl()Lcom/google/android/gms/measurement/internal/zzgy;

    .line 23
    move-result-object v0

    .line 24
    .line 25
    .line 26
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzgy;->zzg()Z

    .line 27
    move-result v0

    .line 28
    .line 29
    if-eqz v0, :cond_1

    .line 30
    .line 31
    .line 32
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzid;->zzj()Lcom/google/android/gms/measurement/internal/zzfr;

    .line 33
    move-result-object v0

    .line 34
    .line 35
    .line 36
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzfr;->zzg()Lcom/google/android/gms/measurement/internal/zzft;

    .line 37
    move-result-object v0

    .line 38
    .line 39
    const-string v1, "Cannot get trigger URIs from analytics worker thread"

    .line 40
    .line 41
    .line 42
    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/internal/zzft;->zza(Ljava/lang/String;)V

    .line 43
    return-void

    .line 44
    .line 45
    .line 46
    :cond_1
    invoke-static {}, Lcom/google/android/gms/measurement/internal/zzae;->zza()Z

    .line 47
    move-result v0

    .line 48
    .line 49
    if-eqz v0, :cond_2

    .line 50
    .line 51
    .line 52
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzid;->zzj()Lcom/google/android/gms/measurement/internal/zzfr;

    .line 53
    move-result-object v0

    .line 54
    .line 55
    .line 56
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzfr;->zzg()Lcom/google/android/gms/measurement/internal/zzft;

    .line 57
    move-result-object v0

    .line 58
    .line 59
    const-string v1, "Cannot get trigger URIs from main thread"

    .line 60
    .line 61
    .line 62
    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/internal/zzft;->zza(Ljava/lang/String;)V

    .line 63
    return-void

    .line 64
    .line 65
    .line 66
    :cond_2
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zze;->zzu()V

    .line 67
    .line 68
    .line 69
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzid;->zzj()Lcom/google/android/gms/measurement/internal/zzfr;

    .line 70
    move-result-object v0

    .line 71
    .line 72
    .line 73
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzfr;->zzp()Lcom/google/android/gms/measurement/internal/zzft;

    .line 74
    move-result-object v0

    .line 75
    .line 76
    const-string v1, "Getting trigger URIs (FE)"

    .line 77
    .line 78
    .line 79
    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/internal/zzft;->zza(Ljava/lang/String;)V

    .line 80
    .line 81
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    .line 82
    .line 83
    .line 84
    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    .line 85
    .line 86
    .line 87
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzid;->zzl()Lcom/google/android/gms/measurement/internal/zzgy;

    .line 88
    move-result-object v2

    .line 89
    .line 90
    const-wide/16 v4, 0x1388

    .line 91
    .line 92
    const-string v6, "get trigger URIs"

    .line 93
    .line 94
    new-instance v7, Lcom/google/android/gms/measurement/internal/zzir;

    .line 95
    .line 96
    .line 97
    invoke-direct {v7, p0, v0}, Lcom/google/android/gms/measurement/internal/zzir;-><init>(Lcom/google/android/gms/measurement/internal/zziq;Ljava/util/concurrent/atomic/AtomicReference;)V

    .line 98
    move-object v3, v0

    .line 99
    .line 100
    .line 101
    invoke-virtual/range {v2 .. v7}, Lcom/google/android/gms/measurement/internal/zzgy;->zza(Ljava/util/concurrent/atomic/AtomicReference;JLjava/lang/String;Ljava/lang/Runnable;)Ljava/lang/Object;

    .line 102
    .line 103
    .line 104
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    .line 105
    move-result-object v0

    .line 106
    .line 107
    check-cast v0, Ljava/util/List;

    .line 108
    .line 109
    if-nez v0, :cond_3

    .line 110
    .line 111
    .line 112
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzid;->zzj()Lcom/google/android/gms/measurement/internal/zzfr;

    .line 113
    move-result-object v0

    .line 114
    .line 115
    .line 116
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzfr;->zzg()Lcom/google/android/gms/measurement/internal/zzft;

    .line 117
    move-result-object v0

    .line 118
    .line 119
    const-string v1, "Timed out waiting for get trigger URIs"

    .line 120
    .line 121
    .line 122
    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/internal/zzft;->zza(Ljava/lang/String;)V

    .line 123
    return-void

    .line 124
    .line 125
    .line 126
    :cond_3
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzid;->zzl()Lcom/google/android/gms/measurement/internal/zzgy;

    .line 127
    move-result-object v1

    .line 128
    .line 129
    new-instance v2, Lcom/google/android/gms/measurement/internal/zziu;

    .line 130
    .line 131
    .line 132
    invoke-direct {v2, p0, v0}, Lcom/google/android/gms/measurement/internal/zziu;-><init>(Lcom/google/android/gms/measurement/internal/zziq;Ljava/util/List;)V

    .line 133
    .line 134
    .line 135
    invoke-virtual {v1, v2}, Lcom/google/android/gms/measurement/internal/zzgy;->zzb(Ljava/lang/Runnable;)V

    .line 136
    :cond_4
    :goto_0
    return-void
.end method

.method public final zzam()V
    .locals 5
    .annotation build Landroidx/annotation/WorkerThread;
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzid;->zzt()V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzid;->zzk()Lcom/google/android/gms/measurement/internal/zzgd;

    .line 7
    move-result-object v0

    .line 8
    .line 9
    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/zzgd;->zzo:Lcom/google/android/gms/measurement/internal/zzgg;

    .line 10
    .line 11
    .line 12
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzgg;->zza()Z

    .line 13
    move-result v0

    .line 14
    .line 15
    if-eqz v0, :cond_0

    .line 16
    .line 17
    .line 18
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzid;->zzj()Lcom/google/android/gms/measurement/internal/zzfr;

    .line 19
    move-result-object v0

    .line 20
    .line 21
    .line 22
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzfr;->zzc()Lcom/google/android/gms/measurement/internal/zzft;

    .line 23
    move-result-object v0

    .line 24
    .line 25
    const-string v1, "Deferred Deep Link already retrieved. Not fetching again."

    .line 26
    .line 27
    .line 28
    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/internal/zzft;->zza(Ljava/lang/String;)V

    .line 29
    return-void

    .line 30
    .line 31
    .line 32
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzid;->zzk()Lcom/google/android/gms/measurement/internal/zzgd;

    .line 33
    move-result-object v0

    .line 34
    .line 35
    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/zzgd;->zzp:Lcom/google/android/gms/measurement/internal/zzgi;

    .line 36
    .line 37
    .line 38
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzgi;->zza()J

    .line 39
    move-result-wide v0

    .line 40
    .line 41
    .line 42
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzid;->zzk()Lcom/google/android/gms/measurement/internal/zzgd;

    .line 43
    move-result-object v2

    .line 44
    .line 45
    iget-object v2, v2, Lcom/google/android/gms/measurement/internal/zzgd;->zzp:Lcom/google/android/gms/measurement/internal/zzgi;

    .line 46
    .line 47
    const-wide/16 v3, 0x1

    .line 48
    add-long/2addr v3, v0

    .line 49
    .line 50
    .line 51
    invoke-virtual {v2, v3, v4}, Lcom/google/android/gms/measurement/internal/zzgi;->zza(J)V

    .line 52
    .line 53
    const-wide/16 v2, 0x5

    .line 54
    .line 55
    cmp-long v0, v0, v2

    .line 56
    .line 57
    if-ltz v0, :cond_1

    .line 58
    .line 59
    .line 60
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzid;->zzj()Lcom/google/android/gms/measurement/internal/zzfr;

    .line 61
    move-result-object v0

    .line 62
    .line 63
    .line 64
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzfr;->zzu()Lcom/google/android/gms/measurement/internal/zzft;

    .line 65
    move-result-object v0

    .line 66
    .line 67
    const-string v1, "Permanently failed to retrieve Deferred Deep Link. Reached maximum retries."

    .line 68
    .line 69
    .line 70
    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/internal/zzft;->zza(Ljava/lang/String;)V

    .line 71
    .line 72
    .line 73
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzid;->zzk()Lcom/google/android/gms/measurement/internal/zzgd;

    .line 74
    move-result-object v0

    .line 75
    .line 76
    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/zzgd;->zzo:Lcom/google/android/gms/measurement/internal/zzgg;

    .line 77
    const/4 v1, 0x1

    .line 78
    .line 79
    .line 80
    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/internal/zzgg;->zza(Z)V

    .line 81
    return-void

    .line 82
    .line 83
    .line 84
    :cond_1
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zznp;->zza()Z

    .line 85
    move-result v0

    .line 86
    .line 87
    if-eqz v0, :cond_3

    .line 88
    .line 89
    .line 90
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzid;->zze()Lcom/google/android/gms/measurement/internal/zzaf;

    .line 91
    move-result-object v0

    .line 92
    .line 93
    sget-object v1, Lcom/google/android/gms/measurement/internal/zzbi;->zzcn:Lcom/google/android/gms/measurement/internal/zzfi;

    .line 94
    .line 95
    .line 96
    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/internal/zzaf;->zza(Lcom/google/android/gms/measurement/internal/zzfi;)Z

    .line 97
    move-result v0

    .line 98
    .line 99
    if-eqz v0, :cond_3

    .line 100
    .line 101
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zziq;->zzn:Lcom/google/android/gms/measurement/internal/zzaw;

    .line 102
    .line 103
    if-nez v0, :cond_2

    .line 104
    .line 105
    new-instance v0, Lcom/google/android/gms/measurement/internal/zzjh;

    .line 106
    .line 107
    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/zzid;->zzu:Lcom/google/android/gms/measurement/internal/zzhf;

    .line 108
    .line 109
    .line 110
    invoke-direct {v0, p0, v1}, Lcom/google/android/gms/measurement/internal/zzjh;-><init>(Lcom/google/android/gms/measurement/internal/zziq;Lcom/google/android/gms/measurement/internal/zzif;)V

    .line 111
    .line 112
    iput-object v0, p0, Lcom/google/android/gms/measurement/internal/zziq;->zzn:Lcom/google/android/gms/measurement/internal/zzaw;

    .line 113
    .line 114
    :cond_2
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zziq;->zzn:Lcom/google/android/gms/measurement/internal/zzaw;

    .line 115
    .line 116
    const-wide/16 v1, 0x0

    .line 117
    .line 118
    .line 119
    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/measurement/internal/zzaw;->zza(J)V

    .line 120
    return-void

    .line 121
    .line 122
    :cond_3
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzid;->zzu:Lcom/google/android/gms/measurement/internal/zzhf;

    .line 123
    .line 124
    .line 125
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzhf;->zzah()Z

    .line 126
    return-void
.end method

.method final zzan()V
    .locals 9
    .annotation build Landroid/annotation/TargetApi;
        value = 0x1e
    .end annotation

    .annotation build Landroidx/annotation/WorkerThread;
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzid;->zzt()V

    .line 4
    .line 5
    .line 6
    invoke-direct {p0}, Lcom/google/android/gms/measurement/internal/zziq;->zzao()Ljava/util/PriorityQueue;

    .line 7
    move-result-object v0

    .line 8
    .line 9
    .line 10
    invoke-virtual {v0}, Ljava/util/AbstractCollection;->isEmpty()Z

    .line 11
    move-result v0

    .line 12
    .line 13
    if-nez v0, :cond_5

    .line 14
    .line 15
    iget-boolean v0, p0, Lcom/google/android/gms/measurement/internal/zziq;->zzh:Z

    .line 16
    .line 17
    if-eqz v0, :cond_0

    .line 18
    .line 19
    goto/16 :goto_1

    .line 20
    .line 21
    .line 22
    :cond_0
    invoke-direct {p0}, Lcom/google/android/gms/measurement/internal/zziq;->zzao()Ljava/util/PriorityQueue;

    .line 23
    move-result-object v0

    .line 24
    .line 25
    .line 26
    invoke-virtual {v0}, Ljava/util/PriorityQueue;->poll()Ljava/lang/Object;

    .line 27
    move-result-object v0

    .line 28
    .line 29
    check-cast v0, Lcom/google/android/gms/measurement/internal/zzmh;

    .line 30
    .line 31
    if-nez v0, :cond_1

    .line 32
    return-void

    .line 33
    .line 34
    .line 35
    :cond_1
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzid;->zzq()Lcom/google/android/gms/measurement/internal/zznd;

    .line 36
    move-result-object v1

    .line 37
    .line 38
    .line 39
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zznd;->zzn()Landroidx/privacysandbox/ads/adservices/java/measurement/MeasurementManagerFutures;

    .line 40
    move-result-object v1

    .line 41
    .line 42
    if-nez v1, :cond_2

    .line 43
    return-void

    .line 44
    :cond_2
    const/4 v2, 0x1

    .line 45
    .line 46
    iput-boolean v2, p0, Lcom/google/android/gms/measurement/internal/zziq;->zzh:Z

    .line 47
    .line 48
    .line 49
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzid;->zzj()Lcom/google/android/gms/measurement/internal/zzfr;

    .line 50
    move-result-object v2

    .line 51
    .line 52
    .line 53
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzfr;->zzp()Lcom/google/android/gms/measurement/internal/zzft;

    .line 54
    move-result-object v2

    .line 55
    .line 56
    const-string v3, "Registering trigger URI"

    .line 57
    .line 58
    iget-object v4, v0, Lcom/google/android/gms/measurement/internal/zzmh;->zza:Ljava/lang/String;

    .line 59
    .line 60
    .line 61
    invoke-virtual {v2, v3, v4}, Lcom/google/android/gms/measurement/internal/zzft;->zza(Ljava/lang/String;Ljava/lang/Object;)V

    .line 62
    .line 63
    iget-object v2, v0, Lcom/google/android/gms/measurement/internal/zzmh;->zza:Ljava/lang/String;

    .line 64
    .line 65
    .line 66
    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    .line 67
    move-result-object v2

    .line 68
    .line 69
    .line 70
    invoke-virtual {v1, v2}, Landroidx/privacysandbox/ads/adservices/java/measurement/MeasurementManagerFutures;->d(Landroid/net/Uri;)Lcom/google/common/util/concurrent/k;

    .line 71
    move-result-object v1

    .line 72
    const/4 v2, 0x0

    .line 73
    .line 74
    if-nez v1, :cond_3

    .line 75
    .line 76
    iput-boolean v2, p0, Lcom/google/android/gms/measurement/internal/zziq;->zzh:Z

    .line 77
    .line 78
    .line 79
    invoke-direct {p0}, Lcom/google/android/gms/measurement/internal/zziq;->zzao()Ljava/util/PriorityQueue;

    .line 80
    move-result-object v1

    .line 81
    .line 82
    .line 83
    invoke-virtual {v1, v0}, Ljava/util/PriorityQueue;->add(Ljava/lang/Object;)Z

    .line 84
    return-void

    .line 85
    .line 86
    .line 87
    :cond_3
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzid;->zzk()Lcom/google/android/gms/measurement/internal/zzgd;

    .line 88
    move-result-object v3

    .line 89
    .line 90
    .line 91
    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/zzgd;->zzg()Landroid/util/SparseArray;

    .line 92
    move-result-object v3

    .line 93
    .line 94
    iget v4, v0, Lcom/google/android/gms/measurement/internal/zzmh;->zzc:I

    .line 95
    .line 96
    iget-wide v5, v0, Lcom/google/android/gms/measurement/internal/zzmh;->zzb:J

    .line 97
    .line 98
    .line 99
    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 100
    move-result-object v5

    .line 101
    .line 102
    .line 103
    invoke-virtual {v3, v4, v5}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 104
    .line 105
    .line 106
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzid;->zzk()Lcom/google/android/gms/measurement/internal/zzgd;

    .line 107
    move-result-object v4

    .line 108
    .line 109
    .line 110
    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    .line 111
    move-result v5

    .line 112
    .line 113
    new-array v5, v5, [I

    .line 114
    .line 115
    .line 116
    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    .line 117
    move-result v6

    .line 118
    .line 119
    new-array v6, v6, [J

    .line 120
    .line 121
    .line 122
    :goto_0
    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    .line 123
    move-result v7

    .line 124
    .line 125
    if-ge v2, v7, :cond_4

    .line 126
    .line 127
    .line 128
    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->keyAt(I)I

    .line 129
    move-result v7

    .line 130
    .line 131
    aput v7, v5, v2

    .line 132
    .line 133
    .line 134
    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    .line 135
    move-result-object v7

    .line 136
    .line 137
    check-cast v7, Ljava/lang/Long;

    .line 138
    .line 139
    .line 140
    invoke-virtual {v7}, Ljava/lang/Long;->longValue()J

    .line 141
    move-result-wide v7

    .line 142
    .line 143
    aput-wide v7, v6, v2

    .line 144
    .line 145
    add-int/lit8 v2, v2, 0x1

    .line 146
    goto :goto_0

    .line 147
    .line 148
    :cond_4
    new-instance v2, Landroid/os/Bundle;

    .line 149
    .line 150
    .line 151
    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 152
    .line 153
    const-string v3, "uriSources"

    .line 154
    .line 155
    .line 156
    invoke-virtual {v2, v3, v5}, Landroid/os/BaseBundle;->putIntArray(Ljava/lang/String;[I)V

    .line 157
    .line 158
    const-string v3, "uriTimestamps"

    .line 159
    .line 160
    .line 161
    invoke-virtual {v2, v3, v6}, Landroid/os/BaseBundle;->putLongArray(Ljava/lang/String;[J)V

    .line 162
    .line 163
    iget-object v3, v4, Lcom/google/android/gms/measurement/internal/zzgd;->zzi:Lcom/google/android/gms/measurement/internal/zzgf;

    .line 164
    .line 165
    .line 166
    invoke-virtual {v3, v2}, Lcom/google/android/gms/measurement/internal/zzgf;->zza(Landroid/os/Bundle;)V

    .line 167
    .line 168
    new-instance v2, Lcom/google/android/gms/measurement/internal/zziz;

    .line 169
    .line 170
    .line 171
    invoke-direct {v2, p0}, Lcom/google/android/gms/measurement/internal/zziz;-><init>(Lcom/google/android/gms/measurement/internal/zziq;)V

    .line 172
    .line 173
    new-instance v3, Lcom/google/android/gms/measurement/internal/zzjc;

    .line 174
    .line 175
    .line 176
    invoke-direct {v3, p0, v0}, Lcom/google/android/gms/measurement/internal/zzjc;-><init>(Lcom/google/android/gms/measurement/internal/zziq;Lcom/google/android/gms/measurement/internal/zzmh;)V

    .line 177
    .line 178
    .line 179
    invoke-static {v1, v3, v2}, Lcom/google/common/util/concurrent/g;->a(Lcom/google/common/util/concurrent/k;Lcom/google/common/util/concurrent/f;Ljava/util/concurrent/Executor;)V

    .line 180
    :cond_5
    :goto_1
    return-void
.end method

.method public final bridge synthetic zzb()Lcom/google/android/gms/common/util/Clock;
    .locals 1

    .line 2
    invoke-super {p0}, Lcom/google/android/gms/measurement/internal/zzid;->zzb()Lcom/google/android/gms/common/util/Clock;

    move-result-object v0

    return-object v0
.end method

.method public final zzb(Landroid/os/Bundle;)V
    .locals 2

    .line 7
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzid;->zzb()Lcom/google/android/gms/common/util/Clock;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/common/util/Clock;->currentTimeMillis()J

    move-result-wide v0

    invoke-virtual {p0, p1, v0, v1}, Lcom/google/android/gms/measurement/internal/zziq;->zza(Landroid/os/Bundle;J)V

    return-void
.end method

.method public final zzb(Lcom/google/android/gms/measurement/internal/zzil;)V
    .locals 1

    .line 8
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zze;->zzu()V

    .line 9
    invoke-static {p1}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zziq;->zzd:Ljava/util/Set;

    .line 10
    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 11
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzid;->zzj()Lcom/google/android/gms/measurement/internal/zzfr;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzfr;->zzu()Lcom/google/android/gms/measurement/internal/zzft;

    move-result-object p1

    const-string v0, "OnEventListener had not been registered"

    invoke-virtual {p1, v0}, Lcom/google/android/gms/measurement/internal/zzft;->zza(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public final zzb(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 8

    const/4 v4, 0x1

    const/4 v5, 0x1

    .line 3
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzid;->zzb()Lcom/google/android/gms/common/util/Clock;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/common/util/Clock;->currentTimeMillis()J

    move-result-wide v6

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    invoke-virtual/range {v0 .. v7}, Lcom/google/android/gms/measurement/internal/zziq;->zza(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;ZZJ)V

    return-void
.end method

.method public final bridge synthetic zzc()Lcom/google/android/gms/measurement/internal/zzb;
    .locals 1

    .line 1
    invoke-super {p0}, Lcom/google/android/gms/measurement/internal/zzf;->zzc()Lcom/google/android/gms/measurement/internal/zzb;

    move-result-object v0

    return-object v0
.end method

.method final zzc(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 7
    .annotation build Landroidx/annotation/WorkerThread;
    .end annotation

    .line 2
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzid;->zzt()V

    .line 3
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzid;->zzb()Lcom/google/android/gms/common/util/Clock;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/common/util/Clock;->currentTimeMillis()J

    move-result-wide v4

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v6, p3

    invoke-virtual/range {v1 .. v6}, Lcom/google/android/gms/measurement/internal/zziq;->zza(Ljava/lang/String;Ljava/lang/String;JLandroid/os/Bundle;)V

    return-void
.end method

.method public final bridge synthetic zzd()Lcom/google/android/gms/measurement/internal/zzae;
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-super {p0}, Lcom/google/android/gms/measurement/internal/zzid;->zzd()Lcom/google/android/gms/measurement/internal/zzae;

    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public final bridge synthetic zze()Lcom/google/android/gms/measurement/internal/zzaf;
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-super {p0}, Lcom/google/android/gms/measurement/internal/zzid;->zze()Lcom/google/android/gms/measurement/internal/zzaf;

    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public final bridge synthetic zzf()Lcom/google/android/gms/measurement/internal/zzba;
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-super {p0}, Lcom/google/android/gms/measurement/internal/zzid;->zzf()Lcom/google/android/gms/measurement/internal/zzba;

    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public final bridge synthetic zzg()Lcom/google/android/gms/measurement/internal/zzfl;
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-super {p0}, Lcom/google/android/gms/measurement/internal/zzf;->zzg()Lcom/google/android/gms/measurement/internal/zzfl;

    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public final bridge synthetic zzh()Lcom/google/android/gms/measurement/internal/zzfo;
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-super {p0}, Lcom/google/android/gms/measurement/internal/zzf;->zzh()Lcom/google/android/gms/measurement/internal/zzfo;

    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public final bridge synthetic zzi()Lcom/google/android/gms/measurement/internal/zzfq;
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-super {p0}, Lcom/google/android/gms/measurement/internal/zzid;->zzi()Lcom/google/android/gms/measurement/internal/zzfq;

    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public final bridge synthetic zzj()Lcom/google/android/gms/measurement/internal/zzfr;
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-super {p0}, Lcom/google/android/gms/measurement/internal/zzid;->zzj()Lcom/google/android/gms/measurement/internal/zzfr;

    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public final bridge synthetic zzk()Lcom/google/android/gms/measurement/internal/zzgd;
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-super {p0}, Lcom/google/android/gms/measurement/internal/zzid;->zzk()Lcom/google/android/gms/measurement/internal/zzgd;

    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public final bridge synthetic zzl()Lcom/google/android/gms/measurement/internal/zzgy;
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-super {p0}, Lcom/google/android/gms/measurement/internal/zzid;->zzl()Lcom/google/android/gms/measurement/internal/zzgy;

    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public final bridge synthetic zzm()Lcom/google/android/gms/measurement/internal/zziq;
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-super {p0}, Lcom/google/android/gms/measurement/internal/zzf;->zzm()Lcom/google/android/gms/measurement/internal/zziq;

    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public final bridge synthetic zzn()Lcom/google/android/gms/measurement/internal/zzkh;
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-super {p0}, Lcom/google/android/gms/measurement/internal/zzf;->zzn()Lcom/google/android/gms/measurement/internal/zzkh;

    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public final bridge synthetic zzo()Lcom/google/android/gms/measurement/internal/zzkp;
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-super {p0}, Lcom/google/android/gms/measurement/internal/zzf;->zzo()Lcom/google/android/gms/measurement/internal/zzkp;

    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public final bridge synthetic zzp()Lcom/google/android/gms/measurement/internal/zzlx;
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-super {p0}, Lcom/google/android/gms/measurement/internal/zzf;->zzp()Lcom/google/android/gms/measurement/internal/zzlx;

    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public final bridge synthetic zzq()Lcom/google/android/gms/measurement/internal/zznd;
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-super {p0}, Lcom/google/android/gms/measurement/internal/zzid;->zzq()Lcom/google/android/gms/measurement/internal/zznd;

    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public final bridge synthetic zzr()V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-super {p0}, Lcom/google/android/gms/measurement/internal/zzf;->zzr()V

    .line 4
    return-void
.end method

.method public final bridge synthetic zzs()V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-super {p0}, Lcom/google/android/gms/measurement/internal/zzf;->zzs()V

    .line 4
    return-void
.end method

.method public final bridge synthetic zzt()V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-super {p0}, Lcom/google/android/gms/measurement/internal/zzf;->zzt()V

    .line 4
    return-void
.end method

.method protected final zzz()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method
