.class public Lcom/narvii/util/blur/NativeBlurProcess;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/narvii/util/blur/NativeBlurProcess$NativeTask;
    }
.end annotation


# static fields
.field static final EXECUTOR:Ljava/util/concurrent/ExecutorService;

.field static final EXECUTOR_THREADS:I

.field public static final MAX_BLUR_RADIUS:I = 0xfe

.field private static nativeLoaded:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    .line 2
    :try_start_0
    const-string v0, "blur"

    .line 3
    .line 4
    .line 5
    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-static {}, Lcom/narvii/util/blur/NativeBlurProcess;->a()Z

    .line 9
    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 10
    goto :goto_0

    .line 11
    :catchall_0
    move-exception v0

    .line 12
    .line 13
    const-string v1, "native blur processor fail to load"

    .line 14
    .line 15
    .line 16
    invoke-static {v1, v0}, Lcom/narvii/util/Log;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 17
    const/4 v0, 0x0

    .line 18
    .line 19
    :goto_0
    sput-boolean v0, Lcom/narvii/util/blur/NativeBlurProcess;->nativeLoaded:Z

    .line 20
    .line 21
    .line 22
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    .line 23
    move-result-object v0

    .line 24
    .line 25
    .line 26
    invoke-virtual {v0}, Ljava/lang/Runtime;->availableProcessors()I

    .line 27
    move-result v0

    .line 28
    .line 29
    sput v0, Lcom/narvii/util/blur/NativeBlurProcess;->EXECUTOR_THREADS:I

    .line 30
    .line 31
    .line 32
    invoke-static {v0}, Ljava/util/concurrent/Executors;->newFixedThreadPool(I)Ljava/util/concurrent/ExecutorService;

    .line 33
    move-result-object v0

    .line 34
    .line 35
    sput-object v0, Lcom/narvii/util/blur/NativeBlurProcess;->EXECUTOR:Ljava/util/concurrent/ExecutorService;

    .line 36
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    return-void
.end method

.method static bridge synthetic a(Landroid/graphics/Bitmap;IIII)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2, p3, p4}, Lcom/narvii/util/blur/NativeBlurProcess;->functionToBlur(Landroid/graphics/Bitmap;IIII)V

    return-void
.end method

.method private static native a()Z
.end method

.method private static native functionToBlur(Landroid/graphics/Bitmap;IIII)V
.end method


# virtual methods
.method public blur(Landroid/graphics/Bitmap;F)Landroid/graphics/Bitmap;
    .locals 16

    .line 1
    .line 2
    move-object/from16 v0, p1

    .line 3
    .line 4
    const/high16 v1, 0x437e0000    # 254.0f

    .line 5
    .line 6
    move/from16 v2, p2

    .line 7
    .line 8
    .line 9
    invoke-static {v2, v1}, Ljava/lang/Math;->min(FF)F

    .line 10
    move-result v1

    .line 11
    .line 12
    sget-boolean v2, Lcom/narvii/util/blur/NativeBlurProcess;->nativeLoaded:Z

    .line 13
    .line 14
    if-nez v2, :cond_0

    .line 15
    .line 16
    const-string v1, "native blur processor not loaded, use original bitmap"

    .line 17
    .line 18
    .line 19
    invoke-static {v1}, Lcom/narvii/util/Log;->w(Ljava/lang/String;)V

    .line 20
    return-object v0

    .line 21
    .line 22
    .line 23
    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 24
    move-result-wide v2

    .line 25
    .line 26
    sget-object v4, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    .line 27
    const/4 v5, 0x1

    .line 28
    .line 29
    .line 30
    invoke-virtual {v0, v4, v5}, Landroid/graphics/Bitmap;->copy(Landroid/graphics/Bitmap$Config;Z)Landroid/graphics/Bitmap;

    .line 31
    move-result-object v0

    .line 32
    .line 33
    sget v4, Lcom/narvii/util/blur/NativeBlurProcess;->EXECUTOR_THREADS:I

    .line 34
    .line 35
    new-instance v5, Ljava/util/ArrayList;

    .line 36
    .line 37
    .line 38
    invoke-direct {v5, v4}, Ljava/util/ArrayList;-><init>(I)V

    .line 39
    .line 40
    new-instance v12, Ljava/util/ArrayList;

    .line 41
    .line 42
    .line 43
    invoke-direct {v12, v4}, Ljava/util/ArrayList;-><init>(I)V

    .line 44
    const/4 v6, 0x0

    .line 45
    move v13, v6

    .line 46
    .line 47
    :goto_0
    if-ge v13, v4, :cond_1

    .line 48
    .line 49
    new-instance v14, Lcom/narvii/util/blur/NativeBlurProcess$NativeTask;

    .line 50
    float-to-int v15, v1

    .line 51
    const/4 v11, 0x1

    .line 52
    move-object v6, v14

    .line 53
    move-object v7, v0

    .line 54
    move v8, v15

    .line 55
    move v9, v4

    .line 56
    move v10, v13

    .line 57
    .line 58
    .line 59
    invoke-direct/range {v6 .. v11}, Lcom/narvii/util/blur/NativeBlurProcess$NativeTask;-><init>(Landroid/graphics/Bitmap;IIII)V

    .line 60
    .line 61
    .line 62
    invoke-virtual {v5, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 63
    .line 64
    new-instance v14, Lcom/narvii/util/blur/NativeBlurProcess$NativeTask;

    .line 65
    const/4 v11, 0x2

    .line 66
    move-object v6, v14

    .line 67
    .line 68
    .line 69
    invoke-direct/range {v6 .. v11}, Lcom/narvii/util/blur/NativeBlurProcess$NativeTask;-><init>(Landroid/graphics/Bitmap;IIII)V

    .line 70
    .line 71
    .line 72
    invoke-virtual {v12, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 73
    .line 74
    add-int/lit8 v13, v13, 0x1

    .line 75
    goto :goto_0

    .line 76
    .line 77
    :cond_1
    :try_start_0
    sget-object v1, Lcom/narvii/util/blur/NativeBlurProcess;->EXECUTOR:Ljava/util/concurrent/ExecutorService;

    .line 78
    .line 79
    .line 80
    invoke-interface {v1, v5}, Ljava/util/concurrent/ExecutorService;->invokeAll(Ljava/util/Collection;)Ljava/util/List;

    .line 81
    .line 82
    .line 83
    invoke-interface {v1, v12}, Ljava/util/concurrent/ExecutorService;->invokeAll(Ljava/util/Collection;)Ljava/util/List;
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 84
    .line 85
    .line 86
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 87
    move-result-wide v4

    .line 88
    .line 89
    new-instance v1, Ljava/lang/StringBuilder;

    .line 90
    .line 91
    .line 92
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 93
    .line 94
    const-string v6, "native blur process in "

    .line 95
    .line 96
    .line 97
    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 98
    sub-long/2addr v4, v2

    .line 99
    .line 100
    .line 101
    invoke-virtual {v1, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 102
    .line 103
    const-string v2, "ms"

    .line 104
    .line 105
    .line 106
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 107
    .line 108
    .line 109
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 110
    move-result-object v1

    .line 111
    .line 112
    .line 113
    invoke-static {v1}, Lcom/narvii/util/Log;->d(Ljava/lang/String;)V

    .line 114
    :catch_0
    return-object v0
.end method
