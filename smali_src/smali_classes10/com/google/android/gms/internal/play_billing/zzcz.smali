.class public final Lcom/google/android/gms/internal/play_billing/zzcz;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final zza:[Ljava/lang/String;

.field private static final zzb:Lcom/google/android/gms/internal/play_billing/zzdd;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 1
    .line 2
    const-string v0, "com.google.common.flogger.util.StackWalkerStackGetter"

    .line 3
    .line 4
    const-string v1, "com.google.common.flogger.util.JavaLangAccessStackGetter"

    .line 5
    .line 6
    .line 7
    filled-new-array {v0, v1}, [Ljava/lang/String;

    .line 8
    move-result-object v0

    .line 9
    .line 10
    sput-object v0, Lcom/google/android/gms/internal/play_billing/zzcz;->zza:[Ljava/lang/String;

    .line 11
    const/4 v0, 0x0

    .line 12
    move v1, v0

    .line 13
    :goto_0
    const/4 v2, 0x2

    .line 14
    .line 15
    if-ge v1, v2, :cond_1

    .line 16
    .line 17
    sget-object v2, Lcom/google/android/gms/internal/play_billing/zzcz;->zza:[Ljava/lang/String;

    .line 18
    .line 19
    aget-object v2, v2, v1

    .line 20
    .line 21
    .line 22
    :try_start_0
    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    .line 23
    move-result-object v2

    .line 24
    .line 25
    const-class v3, Lcom/google/android/gms/internal/play_billing/zzdd;

    .line 26
    .line 27
    .line 28
    invoke-virtual {v2, v3}, Ljava/lang/Class;->asSubclass(Ljava/lang/Class;)Ljava/lang/Class;

    .line 29
    move-result-object v2

    .line 30
    .line 31
    new-array v3, v0, [Ljava/lang/Class;

    .line 32
    .line 33
    .line 34
    invoke-virtual {v2, v3}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    .line 35
    move-result-object v2

    .line 36
    .line 37
    new-array v3, v0, [Ljava/lang/Object;

    .line 38
    .line 39
    .line 40
    invoke-virtual {v2, v3}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    .line 41
    move-result-object v2

    .line 42
    .line 43
    check-cast v2, Lcom/google/android/gms/internal/play_billing/zzdd;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 44
    goto :goto_1

    .line 45
    :catchall_0
    const/4 v2, 0x0

    .line 46
    .line 47
    :goto_1
    if-eqz v2, :cond_0

    .line 48
    goto :goto_2

    .line 49
    .line 50
    :cond_0
    add-int/lit8 v1, v1, 0x1

    .line 51
    goto :goto_0

    .line 52
    .line 53
    :cond_1
    new-instance v2, Lcom/google/android/gms/internal/play_billing/zzde;

    .line 54
    .line 55
    .line 56
    invoke-direct {v2}, Lcom/google/android/gms/internal/play_billing/zzde;-><init>()V

    .line 57
    .line 58
    :goto_2
    sput-object v2, Lcom/google/android/gms/internal/play_billing/zzcz;->zzb:Lcom/google/android/gms/internal/play_billing/zzdd;

    .line 59
    return-void
.end method

.method public static zza(Ljava/lang/Class;I)Ljava/lang/StackTraceElement;
    .locals 1
    .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/NullableDecl;
    .end annotation

    .line 1
    .line 2
    const-string p1, "target"

    .line 3
    .line 4
    .line 5
    invoke-static {p0, p1}, Lcom/google/android/gms/internal/play_billing/zzda;->zza(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 6
    .line 7
    sget-object p1, Lcom/google/android/gms/internal/play_billing/zzcz;->zzb:Lcom/google/android/gms/internal/play_billing/zzdd;

    .line 8
    const/4 v0, 0x2

    .line 9
    .line 10
    .line 11
    invoke-interface {p1, p0, v0}, Lcom/google/android/gms/internal/play_billing/zzdd;->zza(Ljava/lang/Class;I)Ljava/lang/StackTraceElement;

    .line 12
    move-result-object p0

    .line 13
    return-object p0
.end method
