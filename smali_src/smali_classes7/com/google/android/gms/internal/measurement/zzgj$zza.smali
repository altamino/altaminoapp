.class public Lcom/google/android/gms/internal/measurement/zzgj$zza;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/measurement/zzgj;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "zza"
.end annotation


# static fields
.field private static volatile zza:Lcom/google/common/base/l;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/base/l<",
            "Lcom/google/android/gms/internal/measurement/zzgh;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static zza(Landroid/content/Context;)Lcom/google/common/base/l;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Lcom/google/common/base/l<",
            "Lcom/google/android/gms/internal/measurement/zzgh;",
            ">;"
        }
    .end annotation

    .line 1
    .line 2
    const-class v0, Lcom/google/android/gms/internal/measurement/zzgj$zza;

    .line 3
    monitor-enter v0

    .line 4
    .line 5
    :try_start_0
    sget-object v1, Lcom/google/android/gms/internal/measurement/zzgj$zza;->zza:Lcom/google/common/base/l;

    .line 6
    .line 7
    if-nez v1, :cond_5

    .line 8
    .line 9
    new-instance v1, Lcom/google/android/gms/internal/measurement/zzgj;

    .line 10
    .line 11
    .line 12
    invoke-direct {v1}, Lcom/google/android/gms/internal/measurement/zzgj;-><init>()V

    .line 13
    .line 14
    sget-object v1, Landroid/os/Build;->TYPE:Ljava/lang/String;

    .line 15
    .line 16
    sget-object v2, Landroid/os/Build;->TAGS:Ljava/lang/String;

    .line 17
    .line 18
    const-string v3, "eng"

    .line 19
    .line 20
    .line 21
    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 22
    move-result v3

    .line 23
    .line 24
    if-nez v3, :cond_0

    .line 25
    .line 26
    const-string v3, "userdebug"

    .line 27
    .line 28
    .line 29
    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 30
    move-result v1

    .line 31
    .line 32
    if-eqz v1, :cond_1

    .line 33
    goto :goto_0

    .line 34
    :catchall_0
    move-exception p0

    .line 35
    goto :goto_5

    .line 36
    .line 37
    :cond_0
    :goto_0
    const-string v1, "dev-keys"

    .line 38
    .line 39
    .line 40
    invoke-virtual {v2, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 41
    move-result v1

    .line 42
    .line 43
    if-nez v1, :cond_2

    .line 44
    .line 45
    const-string v1, "test-keys"

    .line 46
    .line 47
    .line 48
    invoke-virtual {v2, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 49
    move-result v1

    .line 50
    .line 51
    if-eqz v1, :cond_1

    .line 52
    goto :goto_2

    .line 53
    .line 54
    .line 55
    :cond_1
    invoke-static {}, Lcom/google/common/base/l;->a()Lcom/google/common/base/l;

    .line 56
    move-result-object p0

    .line 57
    :goto_1
    move-object v1, p0

    .line 58
    goto :goto_4

    .line 59
    .line 60
    .line 61
    :cond_2
    :goto_2
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzfw;->zza()Z

    .line 62
    move-result v1

    .line 63
    .line 64
    if-eqz v1, :cond_4

    .line 65
    .line 66
    .line 67
    invoke-static {p0}, Landroidx/work/impl/d;->a(Landroid/content/Context;)Z

    .line 68
    move-result v1

    .line 69
    .line 70
    if-eqz v1, :cond_3

    .line 71
    goto :goto_3

    .line 72
    .line 73
    .line 74
    :cond_3
    invoke-static {p0}, Landroidx/profileinstaller/a;->a(Landroid/content/Context;)Landroid/content/Context;

    .line 75
    move-result-object p0

    .line 76
    .line 77
    .line 78
    :cond_4
    :goto_3
    invoke-static {p0}, Lcom/google/android/gms/internal/measurement/zzgj;->zza(Landroid/content/Context;)Lcom/google/common/base/l;

    .line 79
    move-result-object p0

    .line 80
    goto :goto_1

    .line 81
    .line 82
    :goto_4
    sput-object v1, Lcom/google/android/gms/internal/measurement/zzgj$zza;->zza:Lcom/google/common/base/l;

    .line 83
    :cond_5
    monitor-exit v0

    .line 84
    return-object v1

    .line 85
    :goto_5
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 86
    throw p0
.end method
