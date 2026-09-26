.class public Lcom/google/android/gms/internal/measurement/zzfr;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/internal/measurement/zzfr$zzb;,
        Lcom/google/android/gms/internal/measurement/zzfr$zza;
    }
.end annotation


# static fields
.field public static final zza:Landroid/net/Uri;

.field public static final zzb:Ljava/util/regex/Pattern;

.field public static final zzc:Ljava/util/regex/Pattern;

.field private static final zzd:Landroid/net/Uri;

.field private static final zze:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private static zzf:Landroid/content/ContentResolver;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private static zzg:Lcom/google/android/gms/internal/measurement/zzfr$zzb;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private static zzh:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final zzi:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private static final zzj:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static final zzk:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private static final zzl:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field private static zzm:Ljava/lang/Object;

.field private static zzn:Z

.field private static zzo:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1
    .line 2
    const-string v0, "content://com.google.android.gsf.gservices"

    .line 3
    .line 4
    .line 5
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    sput-object v0, Lcom/google/android/gms/internal/measurement/zzfr;->zza:Landroid/net/Uri;

    .line 9
    .line 10
    const-string v0, "content://com.google.android.gsf.gservices/prefix"

    .line 11
    .line 12
    .line 13
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    .line 14
    move-result-object v0

    .line 15
    .line 16
    sput-object v0, Lcom/google/android/gms/internal/measurement/zzfr;->zzd:Landroid/net/Uri;

    .line 17
    .line 18
    const-string v0, "^(1|true|t|on|yes|y)$"

    .line 19
    const/4 v1, 0x2

    .line 20
    .line 21
    .line 22
    invoke-static {v0, v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    .line 23
    move-result-object v0

    .line 24
    .line 25
    sput-object v0, Lcom/google/android/gms/internal/measurement/zzfr;->zzb:Ljava/util/regex/Pattern;

    .line 26
    .line 27
    const-string v0, "^(0|false|f|off|no|n)$"

    .line 28
    .line 29
    .line 30
    invoke-static {v0, v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    .line 31
    move-result-object v0

    .line 32
    .line 33
    sput-object v0, Lcom/google/android/gms/internal/measurement/zzfr;->zzc:Ljava/util/regex/Pattern;

    .line 34
    .line 35
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 36
    .line 37
    .line 38
    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    .line 39
    .line 40
    sput-object v0, Lcom/google/android/gms/internal/measurement/zzfr;->zze:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 41
    const/4 v0, 0x0

    .line 42
    .line 43
    sput-object v0, Lcom/google/android/gms/internal/measurement/zzfr;->zzf:Landroid/content/ContentResolver;

    .line 44
    .line 45
    sput-object v0, Lcom/google/android/gms/internal/measurement/zzfr;->zzg:Lcom/google/android/gms/internal/measurement/zzfr$zzb;

    .line 46
    .line 47
    new-instance v0, Ljava/util/HashMap;

    .line 48
    .line 49
    const/16 v1, 0x10

    .line 50
    .line 51
    const/high16 v2, 0x3f800000    # 1.0f

    .line 52
    .line 53
    .line 54
    invoke-direct {v0, v1, v2}, Ljava/util/HashMap;-><init>(IF)V

    .line 55
    .line 56
    sput-object v0, Lcom/google/android/gms/internal/measurement/zzfr;->zzi:Ljava/util/HashMap;

    .line 57
    .line 58
    new-instance v0, Ljava/util/HashMap;

    .line 59
    .line 60
    .line 61
    invoke-direct {v0, v1, v2}, Ljava/util/HashMap;-><init>(IF)V

    .line 62
    .line 63
    sput-object v0, Lcom/google/android/gms/internal/measurement/zzfr;->zzj:Ljava/util/HashMap;

    .line 64
    .line 65
    new-instance v0, Ljava/util/HashMap;

    .line 66
    .line 67
    .line 68
    invoke-direct {v0, v1, v2}, Ljava/util/HashMap;-><init>(IF)V

    .line 69
    .line 70
    sput-object v0, Lcom/google/android/gms/internal/measurement/zzfr;->zzk:Ljava/util/HashMap;

    .line 71
    .line 72
    new-instance v0, Ljava/util/HashMap;

    .line 73
    .line 74
    .line 75
    invoke-direct {v0, v1, v2}, Ljava/util/HashMap;-><init>(IF)V

    .line 76
    .line 77
    sput-object v0, Lcom/google/android/gms/internal/measurement/zzfr;->zzl:Ljava/util/HashMap;

    .line 78
    const/4 v0, 0x0

    .line 79
    .line 80
    new-array v0, v0, [Ljava/lang/String;

    .line 81
    .line 82
    sput-object v0, Lcom/google/android/gms/internal/measurement/zzfr;->zzo:[Ljava/lang/String;

    .line 83
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static zza(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 10

    const-class p2, Lcom/google/android/gms/internal/measurement/zzfr;

    .line 2
    monitor-enter p2

    :try_start_0
    sget-object v0, Lcom/google/android/gms/internal/measurement/zzfr;->zzh:Ljava/util/HashMap;

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x0

    if-nez v0, :cond_0

    sget-object v0, Lcom/google/android/gms/internal/measurement/zzfr;->zze:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 3
    invoke-virtual {v0, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 4
    new-instance v0, Ljava/util/HashMap;

    const/16 v4, 0x10

    const/high16 v5, 0x3f800000    # 1.0f

    invoke-direct {v0, v4, v5}, Ljava/util/HashMap;-><init>(IF)V

    sput-object v0, Lcom/google/android/gms/internal/measurement/zzfr;->zzh:Ljava/util/HashMap;

    .line 5
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/measurement/zzfr;->zzm:Ljava/lang/Object;

    sput-boolean v2, Lcom/google/android/gms/internal/measurement/zzfr;->zzn:Z

    sget-object v0, Lcom/google/android/gms/internal/measurement/zzfr;->zza:Landroid/net/Uri;

    .line 6
    new-instance v4, Lcom/google/android/gms/internal/measurement/zzfu;

    invoke-direct {v4, v3}, Lcom/google/android/gms/internal/measurement/zzfu;-><init>(Landroid/os/Handler;)V

    invoke-virtual {p0, v0, v1, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    goto :goto_0

    :catchall_0
    move-exception p0

    goto/16 :goto_4

    :cond_0
    sget-object v0, Lcom/google/android/gms/internal/measurement/zzfr;->zze:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 7
    invoke-virtual {v0, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Lcom/google/android/gms/internal/measurement/zzfr;->zzh:Ljava/util/HashMap;

    .line 8
    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    sget-object v0, Lcom/google/android/gms/internal/measurement/zzfr;->zzi:Ljava/util/HashMap;

    .line 9
    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    sget-object v0, Lcom/google/android/gms/internal/measurement/zzfr;->zzj:Ljava/util/HashMap;

    .line 10
    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    sget-object v0, Lcom/google/android/gms/internal/measurement/zzfr;->zzk:Ljava/util/HashMap;

    .line 11
    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    sget-object v0, Lcom/google/android/gms/internal/measurement/zzfr;->zzl:Ljava/util/HashMap;

    .line 12
    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 13
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/measurement/zzfr;->zzm:Ljava/lang/Object;

    sput-boolean v2, Lcom/google/android/gms/internal/measurement/zzfr;->zzn:Z

    :cond_1
    :goto_0
    sget-object v0, Lcom/google/android/gms/internal/measurement/zzfr;->zzm:Ljava/lang/Object;

    sget-object v4, Lcom/google/android/gms/internal/measurement/zzfr;->zzh:Ljava/util/HashMap;

    .line 14
    invoke-virtual {v4, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    sget-object p0, Lcom/google/android/gms/internal/measurement/zzfr;->zzh:Ljava/util/HashMap;

    .line 15
    invoke-virtual {p0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    if-eqz p0, :cond_2

    move-object v3, p0

    .line 16
    :cond_2
    monitor-exit p2

    return-object v3

    :cond_3
    sget-object v4, Lcom/google/android/gms/internal/measurement/zzfr;->zzo:[Ljava/lang/String;

    .line 17
    array-length v5, v4

    :goto_1
    if-ge v2, v5, :cond_b

    aget-object v6, v4, v2

    .line 18
    invoke-virtual {p1, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_a

    sget-boolean v0, Lcom/google/android/gms/internal/measurement/zzfr;->zzn:Z

    if-nez v0, :cond_9

    sget-object v0, Lcom/google/android/gms/internal/measurement/zzfr;->zzo:[Ljava/lang/String;

    .line 19
    new-instance v2, Lcom/google/android/gms/internal/measurement/zzft;

    invoke-direct {v2}, Lcom/google/android/gms/internal/measurement/zzft;-><init>()V

    .line 20
    invoke-static {p0, v0, v2}, Lcom/google/android/gms/internal/measurement/zzfr;->zza(Landroid/content/ContentResolver;[Ljava/lang/String;Lcom/google/android/gms/internal/measurement/zzfr$zza;)Ljava/util/Map;

    move-result-object p0

    check-cast p0, Ljava/util/HashMap;

    if-eqz p0, :cond_7

    .line 21
    invoke-virtual {p0}, Ljava/util/HashMap;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_4

    .line 22
    invoke-virtual {p0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    sget-object v2, Lcom/google/android/gms/internal/measurement/zzfr;->zzi:Ljava/util/HashMap;

    .line 23
    invoke-virtual {v2}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Set;->removeAll(Ljava/util/Collection;)Z

    sget-object v2, Lcom/google/android/gms/internal/measurement/zzfr;->zzj:Ljava/util/HashMap;

    .line 24
    invoke-virtual {v2}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Set;->removeAll(Ljava/util/Collection;)Z

    sget-object v2, Lcom/google/android/gms/internal/measurement/zzfr;->zzk:Ljava/util/HashMap;

    .line 25
    invoke-virtual {v2}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Set;->removeAll(Ljava/util/Collection;)Z

    sget-object v2, Lcom/google/android/gms/internal/measurement/zzfr;->zzl:Ljava/util/HashMap;

    .line 26
    invoke-virtual {v2}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Set;->removeAll(Ljava/util/Collection;)Z

    .line 27
    :cond_4
    invoke-virtual {p0}, Ljava/util/HashMap;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_6

    sget-object v0, Lcom/google/android/gms/internal/measurement/zzfr;->zzh:Ljava/util/HashMap;

    .line 28
    invoke-virtual {v0}, Ljava/util/HashMap;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_5

    sput-object p0, Lcom/google/android/gms/internal/measurement/zzfr;->zzh:Ljava/util/HashMap;

    goto :goto_2

    :cond_5
    sget-object v0, Lcom/google/android/gms/internal/measurement/zzfr;->zzh:Ljava/util/HashMap;

    .line 29
    invoke-virtual {v0, p0}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    :cond_6
    :goto_2
    sput-boolean v1, Lcom/google/android/gms/internal/measurement/zzfr;->zzn:Z

    :cond_7
    sget-object p0, Lcom/google/android/gms/internal/measurement/zzfr;->zzh:Ljava/util/HashMap;

    .line 30
    invoke-virtual {p0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_9

    sget-object p0, Lcom/google/android/gms/internal/measurement/zzfr;->zzh:Ljava/util/HashMap;

    .line 31
    invoke-virtual {p0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    if-eqz p0, :cond_8

    move-object v3, p0

    .line 32
    :cond_8
    monitor-exit p2

    return-object v3

    .line 33
    :cond_9
    monitor-exit p2

    return-object v3

    :cond_a
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 34
    :cond_b
    monitor-exit p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    sget-object v5, Lcom/google/android/gms/internal/measurement/zzfr;->zza:Landroid/net/Uri;

    const/4 v6, 0x0

    const/4 v7, 0x0

    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x0

    move-object v4, p0

    .line 35
    invoke-virtual/range {v4 .. v9}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p0

    if-nez p0, :cond_d

    if-eqz p0, :cond_c

    .line 36
    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    :cond_c
    return-object v3

    .line 37
    :cond_d
    :try_start_1
    invoke-interface {p0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result p2

    if-nez p2, :cond_e

    .line 38
    invoke-static {v0, p1, v3}, Lcom/google/android/gms/internal/measurement/zzfr;->zza(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 39
    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    return-object v3

    :catchall_1
    move-exception p1

    goto :goto_3

    .line 40
    :cond_e
    :try_start_2
    invoke-interface {p0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 41
    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    if-eqz p2, :cond_f

    .line 42
    invoke-virtual {p2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_f

    move-object p2, v3

    .line 43
    :cond_f
    invoke-static {v0, p1, p2}, Lcom/google/android/gms/internal/measurement/zzfr;->zza(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p2, :cond_10

    return-object p2

    :cond_10
    return-object v3

    .line 44
    :goto_3
    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    .line 45
    throw p1

    .line 46
    :goto_4
    :try_start_3
    monitor-exit p2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw p0
.end method

.method private static zza(Landroid/content/ContentResolver;[Ljava/lang/String;Lcom/google/android/gms/internal/measurement/zzfr$zza;)Ljava/util/Map;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>(",
            "Landroid/content/ContentResolver;",
            "[",
            "Ljava/lang/String;",
            "Lcom/google/android/gms/internal/measurement/zzfr$zza<",
            "TT;>;)TT;"
        }
    .end annotation

    sget-object v1, Lcom/google/android/gms/internal/measurement/zzfr;->zzd:Landroid/net/Uri;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v4, p1

    .line 47
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 48
    :cond_0
    invoke-interface {p0}, Landroid/database/Cursor;->getCount()I

    move-result p1

    invoke-interface {p2, p1}, Lcom/google/android/gms/internal/measurement/zzfr$zza;->zza(I)Ljava/util/Map;

    move-result-object p1

    .line 49
    :goto_0
    :try_start_0
    invoke-interface {p0}, Landroid/database/Cursor;->moveToNext()Z

    move-result p2

    if-eqz p2, :cond_1

    const/4 p2, 0x0

    .line 50
    invoke-interface {p0, p2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p2

    const/4 v0, 0x1

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, p2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    .line 51
    :cond_1
    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    return-object p1

    .line 52
    :goto_1
    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    .line 53
    throw p1
.end method

.method static bridge synthetic zza()Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 1

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/measurement/zzfr;->zze:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object v0
.end method

.method private static zza(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    const-class v0, Lcom/google/android/gms/internal/measurement/zzfr;

    .line 54
    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/google/android/gms/internal/measurement/zzfr;->zzm:Ljava/lang/Object;

    if-ne p0, v1, :cond_0

    sget-object p0, Lcom/google/android/gms/internal/measurement/zzfr;->zzh:Ljava/util/HashMap;

    .line 55
    invoke-virtual {p0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    .line 56
    :cond_0
    :goto_0
    monitor-exit v0

    return-void

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method
