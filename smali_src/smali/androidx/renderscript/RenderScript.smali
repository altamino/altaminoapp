.class public Landroidx/renderscript/RenderScript;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/renderscript/RenderScript$MessageThread;,
        Landroidx/renderscript/RenderScript$Priority;,
        Landroidx/renderscript/RenderScript$RSErrorHandler;,
        Landroidx/renderscript/RenderScript$RSMessageHandler;,
        Landroidx/renderscript/RenderScript$ContextType;
    }
.end annotation


# static fields
.field private static final CACHE_PATH:Ljava/lang/String; = "com.android.renderscript.cache"

.field public static final CREATE_FLAG_NONE:I = 0x0

.field static final DEBUG:Z = false

.field static final LOG_ENABLED:Z = false

.field static final LOG_TAG:Ljava/lang/String; = "RenderScript_jni"

.field static final SUPPORT_LIB_API:I = 0x17

.field static final SUPPORT_LIB_VERSION:I = 0x8fd

.field static lock:Ljava/lang/Object;

.field private static mBlackList:Ljava/lang/String;

.field static mCachePath:Ljava/lang/String;

.field private static mProcessContextList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroidx/renderscript/RenderScript;",
            ">;"
        }
    .end annotation
.end field

.field static registerNativeAllocation:Ljava/lang/reflect/Method;

.field static registerNativeFree:Ljava/lang/reflect/Method;

.field static sInitialized:Z

.field private static sNative:I

.field static sPointerSize:I

.field static sRuntime:Ljava/lang/Object;

.field private static sSdkVersion:I

.field static sUseGCHooks:Z

.field private static useIOlib:Z

.field private static useNative:Z


# instance fields
.field private mApplicationContext:Landroid/content/Context;

.field mContext:J

.field private mContextFlags:I

.field private mContextSdkVersion:I

.field mContextType:Landroidx/renderscript/RenderScript$ContextType;

.field private mDestroyed:Z

.field private mDispatchAPILevel:I

.field mElement_ALLOCATION:Landroidx/renderscript/Element;

.field mElement_A_8:Landroidx/renderscript/Element;

.field mElement_BOOLEAN:Landroidx/renderscript/Element;

.field mElement_CHAR_2:Landroidx/renderscript/Element;

.field mElement_CHAR_3:Landroidx/renderscript/Element;

.field mElement_CHAR_4:Landroidx/renderscript/Element;

.field mElement_DOUBLE_2:Landroidx/renderscript/Element;

.field mElement_DOUBLE_3:Landroidx/renderscript/Element;

.field mElement_DOUBLE_4:Landroidx/renderscript/Element;

.field mElement_ELEMENT:Landroidx/renderscript/Element;

.field mElement_F32:Landroidx/renderscript/Element;

.field mElement_F64:Landroidx/renderscript/Element;

.field mElement_FLOAT_2:Landroidx/renderscript/Element;

.field mElement_FLOAT_3:Landroidx/renderscript/Element;

.field mElement_FLOAT_4:Landroidx/renderscript/Element;

.field mElement_I16:Landroidx/renderscript/Element;

.field mElement_I32:Landroidx/renderscript/Element;

.field mElement_I64:Landroidx/renderscript/Element;

.field mElement_I8:Landroidx/renderscript/Element;

.field mElement_INT_2:Landroidx/renderscript/Element;

.field mElement_INT_3:Landroidx/renderscript/Element;

.field mElement_INT_4:Landroidx/renderscript/Element;

.field mElement_LONG_2:Landroidx/renderscript/Element;

.field mElement_LONG_3:Landroidx/renderscript/Element;

.field mElement_LONG_4:Landroidx/renderscript/Element;

.field mElement_MATRIX_2X2:Landroidx/renderscript/Element;

.field mElement_MATRIX_3X3:Landroidx/renderscript/Element;

.field mElement_MATRIX_4X4:Landroidx/renderscript/Element;

.field mElement_RGBA_4444:Landroidx/renderscript/Element;

.field mElement_RGBA_5551:Landroidx/renderscript/Element;

.field mElement_RGBA_8888:Landroidx/renderscript/Element;

.field mElement_RGB_565:Landroidx/renderscript/Element;

.field mElement_RGB_888:Landroidx/renderscript/Element;

.field mElement_SAMPLER:Landroidx/renderscript/Element;

.field mElement_SCRIPT:Landroidx/renderscript/Element;

.field mElement_SHORT_2:Landroidx/renderscript/Element;

.field mElement_SHORT_3:Landroidx/renderscript/Element;

.field mElement_SHORT_4:Landroidx/renderscript/Element;

.field mElement_TYPE:Landroidx/renderscript/Element;

.field mElement_U16:Landroidx/renderscript/Element;

.field mElement_U32:Landroidx/renderscript/Element;

.field mElement_U64:Landroidx/renderscript/Element;

.field mElement_U8:Landroidx/renderscript/Element;

.field mElement_UCHAR_2:Landroidx/renderscript/Element;

.field mElement_UCHAR_3:Landroidx/renderscript/Element;

.field mElement_UCHAR_4:Landroidx/renderscript/Element;

.field mElement_UINT_2:Landroidx/renderscript/Element;

.field mElement_UINT_3:Landroidx/renderscript/Element;

.field mElement_UINT_4:Landroidx/renderscript/Element;

.field mElement_ULONG_2:Landroidx/renderscript/Element;

.field mElement_ULONG_3:Landroidx/renderscript/Element;

.field mElement_ULONG_4:Landroidx/renderscript/Element;

.field mElement_USHORT_2:Landroidx/renderscript/Element;

.field mElement_USHORT_3:Landroidx/renderscript/Element;

.field mElement_USHORT_4:Landroidx/renderscript/Element;

.field private mEnableMultiInput:Z

.field mErrorCallback:Landroidx/renderscript/RenderScript$RSErrorHandler;

.field mIncCon:J

.field mIncLoaded:Z

.field private mIsProcessContext:Z

.field mMessageCallback:Landroidx/renderscript/RenderScript$RSMessageHandler;

.field mMessageThread:Landroidx/renderscript/RenderScript$MessageThread;

.field private mNativeLibDir:Ljava/lang/String;

.field mRWLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

.field mSampler_CLAMP_LINEAR:Landroidx/renderscript/Sampler;

.field mSampler_CLAMP_LINEAR_MIP_LINEAR:Landroidx/renderscript/Sampler;

.field mSampler_CLAMP_NEAREST:Landroidx/renderscript/Sampler;

.field mSampler_MIRRORED_REPEAT_LINEAR:Landroidx/renderscript/Sampler;

.field mSampler_MIRRORED_REPEAT_LINEAR_MIP_LINEAR:Landroidx/renderscript/Sampler;

.field mSampler_MIRRORED_REPEAT_NEAREST:Landroidx/renderscript/Sampler;

.field mSampler_WRAP_LINEAR:Landroidx/renderscript/Sampler;

.field mSampler_WRAP_LINEAR_MIP_LINEAR:Landroidx/renderscript/Sampler;

.field mSampler_WRAP_NEAREST:Landroidx/renderscript/Sampler;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    .line 2
    new-instance v0, Ljava/util/ArrayList;

    .line 3
    .line 4
    .line 5
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 6
    .line 7
    sput-object v0, Landroidx/renderscript/RenderScript;->mProcessContextList:Ljava/util/ArrayList;

    .line 8
    .line 9
    const-string v0, ""

    .line 10
    .line 11
    sput-object v0, Landroidx/renderscript/RenderScript;->mBlackList:Ljava/lang/String;

    .line 12
    .line 13
    new-instance v0, Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 17
    .line 18
    sput-object v0, Landroidx/renderscript/RenderScript;->lock:Ljava/lang/Object;

    .line 19
    const/4 v0, -0x1

    .line 20
    .line 21
    sput v0, Landroidx/renderscript/RenderScript;->sNative:I

    .line 22
    .line 23
    sput v0, Landroidx/renderscript/RenderScript;->sSdkVersion:I

    .line 24
    const/4 v0, 0x0

    .line 25
    .line 26
    sput-boolean v0, Landroidx/renderscript/RenderScript;->useIOlib:Z

    .line 27
    return-void
.end method

.method constructor <init>(Landroid/content/Context;)V
    .locals 3

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    const/4 v0, 0x0

    .line 5
    .line 6
    iput-boolean v0, p0, Landroidx/renderscript/RenderScript;->mIsProcessContext:Z

    .line 7
    .line 8
    iput-boolean v0, p0, Landroidx/renderscript/RenderScript;->mEnableMultiInput:Z

    .line 9
    .line 10
    iput v0, p0, Landroidx/renderscript/RenderScript;->mDispatchAPILevel:I

    .line 11
    .line 12
    iput v0, p0, Landroidx/renderscript/RenderScript;->mContextFlags:I

    .line 13
    .line 14
    iput v0, p0, Landroidx/renderscript/RenderScript;->mContextSdkVersion:I

    .line 15
    .line 16
    iput-boolean v0, p0, Landroidx/renderscript/RenderScript;->mDestroyed:Z

    .line 17
    const/4 v1, 0x0

    .line 18
    .line 19
    iput-object v1, p0, Landroidx/renderscript/RenderScript;->mMessageCallback:Landroidx/renderscript/RenderScript$RSMessageHandler;

    .line 20
    .line 21
    iput-object v1, p0, Landroidx/renderscript/RenderScript;->mErrorCallback:Landroidx/renderscript/RenderScript$RSErrorHandler;

    .line 22
    .line 23
    sget-object v1, Landroidx/renderscript/RenderScript$ContextType;->NORMAL:Landroidx/renderscript/RenderScript$ContextType;

    .line 24
    .line 25
    iput-object v1, p0, Landroidx/renderscript/RenderScript;->mContextType:Landroidx/renderscript/RenderScript$ContextType;

    .line 26
    .line 27
    if-eqz p1, :cond_0

    .line 28
    .line 29
    .line 30
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 31
    move-result-object p1

    .line 32
    .line 33
    iput-object p1, p0, Landroidx/renderscript/RenderScript;->mApplicationContext:Landroid/content/Context;

    .line 34
    .line 35
    .line 36
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    .line 37
    move-result-object p1

    .line 38
    .line 39
    iget-object p1, p1, Landroid/content/pm/ApplicationInfo;->nativeLibraryDir:Ljava/lang/String;

    .line 40
    .line 41
    iput-object p1, p0, Landroidx/renderscript/RenderScript;->mNativeLibDir:Ljava/lang/String;

    .line 42
    .line 43
    :cond_0
    const-wide/16 v1, 0x0

    .line 44
    .line 45
    iput-wide v1, p0, Landroidx/renderscript/RenderScript;->mIncCon:J

    .line 46
    .line 47
    iput-boolean v0, p0, Landroidx/renderscript/RenderScript;->mIncLoaded:Z

    .line 48
    .line 49
    new-instance p1, Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    .line 50
    .line 51
    .line 52
    invoke-direct {p1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;-><init>()V

    .line 53
    .line 54
    iput-object p1, p0, Landroidx/renderscript/RenderScript;->mRWLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    .line 55
    return-void
.end method

.method public static create(Landroid/content/Context;)Landroidx/renderscript/RenderScript;
    .locals 1

    .line 1
    sget-object v0, Landroidx/renderscript/RenderScript$ContextType;->NORMAL:Landroidx/renderscript/RenderScript$ContextType;

    invoke-static {p0, v0}, Landroidx/renderscript/RenderScript;->create(Landroid/content/Context;Landroidx/renderscript/RenderScript$ContextType;)Landroidx/renderscript/RenderScript;

    move-result-object p0

    return-object p0
.end method

.method public static create(Landroid/content/Context;I)Landroidx/renderscript/RenderScript;
    .locals 2

    .line 5
    sget-object v0, Landroidx/renderscript/RenderScript$ContextType;->NORMAL:Landroidx/renderscript/RenderScript$ContextType;

    const/4 v1, 0x0

    invoke-static {p0, p1, v0, v1}, Landroidx/renderscript/RenderScript;->create(Landroid/content/Context;ILandroidx/renderscript/RenderScript$ContextType;I)Landroidx/renderscript/RenderScript;

    move-result-object p0

    return-object p0
.end method

.method public static create(Landroid/content/Context;ILandroidx/renderscript/RenderScript$ContextType;)Landroidx/renderscript/RenderScript;
    .locals 1

    const/4 v0, 0x0

    .line 6
    invoke-static {p0, p1, p2, v0}, Landroidx/renderscript/RenderScript;->create(Landroid/content/Context;ILandroidx/renderscript/RenderScript$ContextType;I)Landroidx/renderscript/RenderScript;

    move-result-object p0

    return-object p0
.end method

.method public static create(Landroid/content/Context;ILandroidx/renderscript/RenderScript$ContextType;I)Landroidx/renderscript/RenderScript;
    .locals 4

    sget-object v0, Landroidx/renderscript/RenderScript;->mProcessContextList:Ljava/util/ArrayList;

    .line 7
    monitor-enter v0

    :try_start_0
    sget-object v1, Landroidx/renderscript/RenderScript;->mProcessContextList:Ljava/util/ArrayList;

    .line 8
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/renderscript/RenderScript;

    .line 9
    iget-object v3, v2, Landroidx/renderscript/RenderScript;->mContextType:Landroidx/renderscript/RenderScript$ContextType;

    if-ne v3, p2, :cond_0

    iget v3, v2, Landroidx/renderscript/RenderScript;->mContextFlags:I

    if-ne v3, p3, :cond_0

    iget v3, v2, Landroidx/renderscript/RenderScript;->mContextSdkVersion:I

    if-ne v3, p1, :cond_0

    .line 10
    monitor-exit v0

    return-object v2

    :catchall_0
    move-exception p0

    goto :goto_0

    .line 11
    :cond_1
    invoke-static {p0, p1, p2, p3}, Landroidx/renderscript/RenderScript;->internalCreate(Landroid/content/Context;ILandroidx/renderscript/RenderScript$ContextType;I)Landroidx/renderscript/RenderScript;

    move-result-object p0

    const/4 p1, 0x1

    .line 12
    iput-boolean p1, p0, Landroidx/renderscript/RenderScript;->mIsProcessContext:Z

    sget-object p1, Landroidx/renderscript/RenderScript;->mProcessContextList:Ljava/util/ArrayList;

    .line 13
    invoke-virtual {p1, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 14
    monitor-exit v0

    return-object p0

    .line 15
    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public static create(Landroid/content/Context;Landroidx/renderscript/RenderScript$ContextType;)Landroidx/renderscript/RenderScript;
    .locals 1

    const/4 v0, 0x0

    .line 2
    invoke-static {p0, p1, v0}, Landroidx/renderscript/RenderScript;->create(Landroid/content/Context;Landroidx/renderscript/RenderScript$ContextType;I)Landroidx/renderscript/RenderScript;

    move-result-object p0

    return-object p0
.end method

.method public static create(Landroid/content/Context;Landroidx/renderscript/RenderScript$ContextType;I)Landroidx/renderscript/RenderScript;
    .locals 1

    .line 3
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    .line 4
    invoke-static {p0, v0, p1, p2}, Landroidx/renderscript/RenderScript;->create(Landroid/content/Context;ILandroidx/renderscript/RenderScript$ContextType;I)Landroidx/renderscript/RenderScript;

    move-result-object p0

    return-object p0
.end method

.method public static createMultiContext(Landroid/content/Context;Landroidx/renderscript/RenderScript$ContextType;II)Landroidx/renderscript/RenderScript;
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-static {p0, p3, p1, p2}, Landroidx/renderscript/RenderScript;->internalCreate(Landroid/content/Context;ILandroidx/renderscript/RenderScript$ContextType;I)Landroidx/renderscript/RenderScript;

    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static forceCompat()V
    .locals 1

    const/4 v0, 0x0

    sput v0, Landroidx/renderscript/RenderScript;->sNative:I

    return-void
.end method

.method public static getPointerSize()I
    .locals 3

    .line 1
    .line 2
    sget-object v0, Landroidx/renderscript/RenderScript;->lock:Ljava/lang/Object;

    .line 3
    monitor-enter v0

    .line 4
    .line 5
    :try_start_0
    sget-boolean v1, Landroidx/renderscript/RenderScript;->sInitialized:Z

    .line 6
    .line 7
    if-eqz v1, :cond_0

    .line 8
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 9
    .line 10
    sget v0, Landroidx/renderscript/RenderScript;->sPointerSize:I

    .line 11
    return v0

    .line 12
    :catchall_0
    move-exception v1

    .line 13
    goto :goto_0

    .line 14
    .line 15
    :cond_0
    :try_start_1
    new-instance v1, Landroidx/renderscript/RSInvalidStateException;

    .line 16
    .line 17
    const-string v2, "Calling getPointerSize() before any RenderScript instantiated"

    .line 18
    .line 19
    .line 20
    invoke-direct {v1, v2}, Landroidx/renderscript/RSInvalidStateException;-><init>(Ljava/lang/String;)V

    .line 21
    throw v1

    .line 22
    :goto_0
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 23
    throw v1
.end method

.method private helpDestroy()V
    .locals 7

    .line 1
    monitor-enter p0

    .line 2
    .line 3
    :try_start_0
    iget-boolean v0, p0, Landroidx/renderscript/RenderScript;->mDestroyed:Z

    .line 4
    const/4 v1, 0x1

    .line 5
    const/4 v2, 0x0

    .line 6
    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    iput-boolean v1, p0, Landroidx/renderscript/RenderScript;->mDestroyed:Z

    .line 10
    move v0, v1

    .line 11
    goto :goto_0

    .line 12
    :catchall_0
    move-exception v0

    .line 13
    goto :goto_2

    .line 14
    :cond_0
    move v0, v2

    .line 15
    :goto_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 16
    .line 17
    if-eqz v0, :cond_4

    .line 18
    .line 19
    .line 20
    invoke-virtual {p0}, Landroidx/renderscript/RenderScript;->nContextFinish()V

    .line 21
    .line 22
    iget-wide v3, p0, Landroidx/renderscript/RenderScript;->mIncCon:J

    .line 23
    .line 24
    const-wide/16 v5, 0x0

    .line 25
    .line 26
    cmp-long v0, v3, v5

    .line 27
    .line 28
    if-eqz v0, :cond_1

    .line 29
    .line 30
    .line 31
    invoke-virtual {p0}, Landroidx/renderscript/RenderScript;->nIncContextFinish()V

    .line 32
    .line 33
    .line 34
    invoke-virtual {p0}, Landroidx/renderscript/RenderScript;->nIncContextDestroy()V

    .line 35
    .line 36
    iput-wide v5, p0, Landroidx/renderscript/RenderScript;->mIncCon:J

    .line 37
    .line 38
    :cond_1
    iget-wide v3, p0, Landroidx/renderscript/RenderScript;->mContext:J

    .line 39
    .line 40
    .line 41
    invoke-virtual {p0, v3, v4}, Landroidx/renderscript/RenderScript;->nContextDeinitToClient(J)V

    .line 42
    .line 43
    iget-object v0, p0, Landroidx/renderscript/RenderScript;->mMessageThread:Landroidx/renderscript/RenderScript$MessageThread;

    .line 44
    .line 45
    iput-boolean v2, v0, Landroidx/renderscript/RenderScript$MessageThread;->mRun:Z

    .line 46
    .line 47
    .line 48
    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    .line 49
    move v0, v2

    .line 50
    .line 51
    :goto_1
    if-nez v2, :cond_2

    .line 52
    .line 53
    :try_start_1
    iget-object v3, p0, Landroidx/renderscript/RenderScript;->mMessageThread:Landroidx/renderscript/RenderScript$MessageThread;

    .line 54
    .line 55
    .line 56
    invoke-virtual {v3}, Ljava/lang/Thread;->join()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    .line 57
    move v2, v1

    .line 58
    goto :goto_1

    .line 59
    :catch_0
    move v0, v1

    .line 60
    goto :goto_1

    .line 61
    .line 62
    :cond_2
    if-eqz v0, :cond_3

    .line 63
    .line 64
    const-string v0, "RenderScript_jni"

    .line 65
    .line 66
    const-string v1, "Interrupted during wait for MessageThread to join"

    .line 67
    .line 68
    .line 69
    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 70
    .line 71
    .line 72
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    .line 73
    move-result-object v0

    .line 74
    .line 75
    .line 76
    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    .line 77
    .line 78
    .line 79
    :cond_3
    invoke-virtual {p0}, Landroidx/renderscript/RenderScript;->nContextDestroy()V

    .line 80
    :cond_4
    return-void

    .line 81
    :goto_2
    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 82
    throw v0
.end method

.method private static internalCreate(Landroid/content/Context;ILandroidx/renderscript/RenderScript$ContextType;I)Landroidx/renderscript/RenderScript;
    .locals 9

    .line 1
    .line 2
    new-instance v7, Landroidx/renderscript/RenderScript;

    .line 3
    .line 4
    .line 5
    invoke-direct {v7, p0}, Landroidx/renderscript/RenderScript;-><init>(Landroid/content/Context;)V

    .line 6
    .line 7
    sget v0, Landroidx/renderscript/RenderScript;->sSdkVersion:I

    .line 8
    const/4 v1, -0x1

    .line 9
    .line 10
    if-ne v0, v1, :cond_0

    .line 11
    .line 12
    sput p1, Landroidx/renderscript/RenderScript;->sSdkVersion:I

    .line 13
    goto :goto_0

    .line 14
    .line 15
    :cond_0
    if-ne v0, p1, :cond_b

    .line 16
    .line 17
    :goto_0
    sget v0, Landroidx/renderscript/RenderScript;->sSdkVersion:I

    .line 18
    .line 19
    .line 20
    invoke-static {v0, p0}, Landroidx/renderscript/RenderScript;->setupNative(ILandroid/content/Context;)Z

    .line 21
    move-result p0

    .line 22
    .line 23
    sput-boolean p0, Landroidx/renderscript/RenderScript;->useNative:Z

    .line 24
    .line 25
    sget-object p0, Landroidx/renderscript/RenderScript;->lock:Ljava/lang/Object;

    .line 26
    monitor-enter p0

    .line 27
    .line 28
    :try_start_0
    sget-boolean v0, Landroidx/renderscript/RenderScript;->sInitialized:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 29
    const/4 v1, 0x0

    .line 30
    .line 31
    const/16 v2, 0x8fd

    .line 32
    const/4 v3, 0x1

    .line 33
    const/4 v4, 0x0

    .line 34
    .line 35
    if-nez v0, :cond_1

    .line 36
    .line 37
    :try_start_1
    const-string v0, "dalvik.system.VMRuntime"

    .line 38
    .line 39
    .line 40
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    .line 41
    move-result-object v0

    .line 42
    .line 43
    const-string v5, "getRuntime"

    .line 44
    .line 45
    new-array v6, v4, [Ljava/lang/Class;

    .line 46
    .line 47
    .line 48
    invoke-virtual {v0, v5, v6}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 49
    move-result-object v5

    .line 50
    .line 51
    new-array v6, v4, [Ljava/lang/Object;

    .line 52
    .line 53
    .line 54
    invoke-virtual {v5, v1, v6}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 55
    move-result-object v5

    .line 56
    .line 57
    sput-object v5, Landroidx/renderscript/RenderScript;->sRuntime:Ljava/lang/Object;

    .line 58
    .line 59
    .line 60
    const-string/jumbo v5, "registerNativeAllocation"

    .line 61
    .line 62
    new-array v6, v3, [Ljava/lang/Class;

    .line 63
    .line 64
    sget-object v8, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    .line 65
    .line 66
    aput-object v8, v6, v4

    .line 67
    .line 68
    .line 69
    invoke-virtual {v0, v5, v6}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 70
    move-result-object v5

    .line 71
    .line 72
    sput-object v5, Landroidx/renderscript/RenderScript;->registerNativeAllocation:Ljava/lang/reflect/Method;

    .line 73
    .line 74
    .line 75
    const-string/jumbo v5, "registerNativeFree"

    .line 76
    .line 77
    new-array v6, v3, [Ljava/lang/Class;

    .line 78
    .line 79
    aput-object v8, v6, v4

    .line 80
    .line 81
    .line 82
    invoke-virtual {v0, v5, v6}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 83
    move-result-object v0

    .line 84
    .line 85
    sput-object v0, Landroidx/renderscript/RenderScript;->registerNativeFree:Ljava/lang/reflect/Method;

    .line 86
    .line 87
    sput-boolean v3, Landroidx/renderscript/RenderScript;->sUseGCHooks:Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 88
    goto :goto_1

    .line 89
    :catchall_0
    move-exception p1

    .line 90
    .line 91
    goto/16 :goto_8

    .line 92
    .line 93
    :catch_0
    :try_start_2
    const-string v0, "RenderScript_jni"

    .line 94
    .line 95
    const-string v5, "No GC methods"

    .line 96
    .line 97
    .line 98
    invoke-static {v0, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 99
    .line 100
    sput-boolean v4, Landroidx/renderscript/RenderScript;->sUseGCHooks:Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 101
    .line 102
    .line 103
    :goto_1
    :try_start_3
    const-string/jumbo v0, "rsjni_androidx"

    .line 104
    .line 105
    .line 106
    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 107
    .line 108
    sput-boolean v3, Landroidx/renderscript/RenderScript;->sInitialized:Z

    .line 109
    .line 110
    .line 111
    invoke-static {}, Landroidx/renderscript/RenderScript;->rsnSystemGetPointerSize()I

    .line 112
    move-result v0

    .line 113
    .line 114
    sput v0, Landroidx/renderscript/RenderScript;->sPointerSize:I
    :try_end_3
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 115
    goto :goto_2

    .line 116
    :catch_1
    move-exception p1

    .line 117
    .line 118
    :try_start_4
    const-string p2, "RenderScript_jni"

    .line 119
    .line 120
    new-instance p3, Ljava/lang/StringBuilder;

    .line 121
    .line 122
    .line 123
    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    .line 124
    .line 125
    const-string v0, "Error loading RS jni library: "

    .line 126
    .line 127
    .line 128
    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 129
    .line 130
    .line 131
    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 132
    .line 133
    .line 134
    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 135
    move-result-object p3

    .line 136
    .line 137
    .line 138
    invoke-static {p2, p3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 139
    .line 140
    new-instance p2, Landroidx/renderscript/RSRuntimeException;

    .line 141
    .line 142
    new-instance p3, Ljava/lang/StringBuilder;

    .line 143
    .line 144
    .line 145
    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    .line 146
    .line 147
    const-string v0, "Error loading RS jni library: "

    .line 148
    .line 149
    .line 150
    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 151
    .line 152
    .line 153
    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 154
    .line 155
    const-string p1, " Support lib API: "

    .line 156
    .line 157
    .line 158
    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 159
    .line 160
    .line 161
    invoke-virtual {p3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 162
    .line 163
    .line 164
    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 165
    move-result-object p1

    .line 166
    .line 167
    .line 168
    invoke-direct {p2, p1}, Landroidx/renderscript/RSRuntimeException;-><init>(Ljava/lang/String;)V

    .line 169
    throw p2

    .line 170
    :cond_1
    :goto_2
    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 171
    .line 172
    sget-boolean p0, Landroidx/renderscript/RenderScript;->useNative:Z

    .line 173
    .line 174
    if-eqz p0, :cond_2

    .line 175
    .line 176
    const-string p0, "RenderScript_jni"

    .line 177
    .line 178
    const-string v0, "RS native mode"

    .line 179
    .line 180
    .line 181
    invoke-static {p0, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 182
    goto :goto_3

    .line 183
    .line 184
    :cond_2
    const-string p0, "RenderScript_jni"

    .line 185
    .line 186
    const-string v0, "RS compat mode"

    .line 187
    .line 188
    .line 189
    invoke-static {p0, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 190
    .line 191
    :goto_3
    sget p0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 192
    .line 193
    sput-boolean v3, Landroidx/renderscript/RenderScript;->useIOlib:Z

    .line 194
    .line 195
    if-ge p1, p0, :cond_3

    .line 196
    goto :goto_4

    .line 197
    :cond_3
    move p0, p1

    .line 198
    .line 199
    :goto_4
    sget-boolean v0, Landroidx/renderscript/RenderScript;->useNative:Z

    .line 200
    .line 201
    .line 202
    invoke-virtual {v7, v0, p0, v1}, Landroidx/renderscript/RenderScript;->nLoadSO(ZILjava/lang/String;)Z

    .line 203
    move-result v0

    .line 204
    .line 205
    if-nez v0, :cond_6

    .line 206
    .line 207
    sget-boolean v0, Landroidx/renderscript/RenderScript;->useNative:Z

    .line 208
    .line 209
    if-eqz v0, :cond_4

    .line 210
    .line 211
    const-string v0, "RenderScript_jni"

    .line 212
    .line 213
    const-string v5, "Unable to load libRS.so, falling back to compat mode"

    .line 214
    .line 215
    .line 216
    invoke-static {v0, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 217
    .line 218
    sput-boolean v4, Landroidx/renderscript/RenderScript;->useNative:Z

    .line 219
    .line 220
    :cond_4
    :try_start_5
    const-string v0, "RSSupport"

    .line 221
    .line 222
    .line 223
    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V
    :try_end_5
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_5 .. :try_end_5} :catch_2

    .line 224
    .line 225
    .line 226
    invoke-virtual {v7, v4, p0, v1}, Landroidx/renderscript/RenderScript;->nLoadSO(ZILjava/lang/String;)Z

    .line 227
    move-result v0

    .line 228
    .line 229
    if-eqz v0, :cond_5

    .line 230
    goto :goto_5

    .line 231
    .line 232
    :cond_5
    const-string p0, "RenderScript_jni"

    .line 233
    .line 234
    const-string p1, "Error loading RS Compat library: nLoadSO() failed; Support lib version: 2301"

    .line 235
    .line 236
    .line 237
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 238
    .line 239
    new-instance p0, Landroidx/renderscript/RSRuntimeException;

    .line 240
    .line 241
    const-string p1, "Error loading libRSSupport library, Support lib version: 2301"

    .line 242
    .line 243
    .line 244
    invoke-direct {p0, p1}, Landroidx/renderscript/RSRuntimeException;-><init>(Ljava/lang/String;)V

    .line 245
    throw p0

    .line 246
    :catch_2
    move-exception p0

    .line 247
    .line 248
    const-string p1, "RenderScript_jni"

    .line 249
    .line 250
    new-instance p2, Ljava/lang/StringBuilder;

    .line 251
    .line 252
    .line 253
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 254
    .line 255
    const-string p3, "Error loading RS Compat library: "

    .line 256
    .line 257
    .line 258
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 259
    .line 260
    .line 261
    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 262
    .line 263
    const-string p3, " Support lib version: "

    .line 264
    .line 265
    .line 266
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 267
    .line 268
    .line 269
    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 270
    .line 271
    .line 272
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 273
    move-result-object p2

    .line 274
    .line 275
    .line 276
    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 277
    .line 278
    new-instance p1, Landroidx/renderscript/RSRuntimeException;

    .line 279
    .line 280
    new-instance p2, Ljava/lang/StringBuilder;

    .line 281
    .line 282
    .line 283
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 284
    .line 285
    const-string p3, "Error loading RS Compat library: "

    .line 286
    .line 287
    .line 288
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 289
    .line 290
    .line 291
    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 292
    .line 293
    const-string p0, " Support lib version: "

    .line 294
    .line 295
    .line 296
    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 297
    .line 298
    .line 299
    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 300
    .line 301
    .line 302
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 303
    move-result-object p0

    .line 304
    .line 305
    .line 306
    invoke-direct {p1, p0}, Landroidx/renderscript/RSRuntimeException;-><init>(Ljava/lang/String;)V

    .line 307
    throw p1

    .line 308
    .line 309
    :cond_6
    :goto_5
    sget-boolean v0, Landroidx/renderscript/RenderScript;->useIOlib:Z

    .line 310
    .line 311
    if-eqz v0, :cond_8

    .line 312
    .line 313
    :try_start_6
    const-string v0, "RSSupportIO"

    .line 314
    .line 315
    .line 316
    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V
    :try_end_6
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_6 .. :try_end_6} :catch_3

    .line 317
    goto :goto_6

    .line 318
    .line 319
    :catch_3
    sput-boolean v4, Landroidx/renderscript/RenderScript;->useIOlib:Z

    .line 320
    .line 321
    :goto_6
    sget-boolean v0, Landroidx/renderscript/RenderScript;->useIOlib:Z

    .line 322
    .line 323
    if-eqz v0, :cond_7

    .line 324
    .line 325
    .line 326
    invoke-virtual {v7}, Landroidx/renderscript/RenderScript;->nLoadIOSO()Z

    .line 327
    move-result v0

    .line 328
    .line 329
    if-nez v0, :cond_8

    .line 330
    .line 331
    :cond_7
    const-string v0, "RenderScript_jni"

    .line 332
    .line 333
    const-string v1, "Unable to load libRSSupportIO.so, USAGE_IO not supported"

    .line 334
    .line 335
    .line 336
    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 337
    .line 338
    sput-boolean v4, Landroidx/renderscript/RenderScript;->useIOlib:Z

    .line 339
    .line 340
    :cond_8
    const/16 v0, 0x17

    .line 341
    .line 342
    if-lt p0, v0, :cond_9

    .line 343
    .line 344
    iput-boolean v3, v7, Landroidx/renderscript/RenderScript;->mEnableMultiInput:Z

    .line 345
    .line 346
    :try_start_7
    const-string v0, "blasV8"

    .line 347
    .line 348
    .line 349
    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V
    :try_end_7
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_7 .. :try_end_7} :catch_4

    .line 350
    goto :goto_7

    .line 351
    :catch_4
    move-exception v0

    .line 352
    .line 353
    const-string v1, "RenderScript_jni"

    .line 354
    .line 355
    new-instance v2, Ljava/lang/StringBuilder;

    .line 356
    .line 357
    .line 358
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 359
    .line 360
    const-string v3, "Unable to load BLAS lib, ONLY BNNM will be supported: "

    .line 361
    .line 362
    .line 363
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 364
    .line 365
    .line 366
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 367
    .line 368
    .line 369
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 370
    move-result-object v0

    .line 371
    .line 372
    .line 373
    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 374
    .line 375
    .line 376
    :cond_9
    :goto_7
    invoke-virtual {v7}, Landroidx/renderscript/RenderScript;->nDeviceCreate()J

    .line 377
    move-result-wide v1

    .line 378
    const/4 v3, 0x0

    .line 379
    .line 380
    iget v5, p2, Landroidx/renderscript/RenderScript$ContextType;->mID:I

    .line 381
    .line 382
    iget-object v6, v7, Landroidx/renderscript/RenderScript;->mNativeLibDir:Ljava/lang/String;

    .line 383
    move-object v0, v7

    .line 384
    move v4, p1

    .line 385
    .line 386
    .line 387
    invoke-virtual/range {v0 .. v6}, Landroidx/renderscript/RenderScript;->nContextCreate(JIIILjava/lang/String;)J

    .line 388
    move-result-wide v0

    .line 389
    .line 390
    iput-wide v0, v7, Landroidx/renderscript/RenderScript;->mContext:J

    .line 391
    .line 392
    iput-object p2, v7, Landroidx/renderscript/RenderScript;->mContextType:Landroidx/renderscript/RenderScript$ContextType;

    .line 393
    .line 394
    iput p3, v7, Landroidx/renderscript/RenderScript;->mContextFlags:I

    .line 395
    .line 396
    iput p1, v7, Landroidx/renderscript/RenderScript;->mContextSdkVersion:I

    .line 397
    .line 398
    iput p0, v7, Landroidx/renderscript/RenderScript;->mDispatchAPILevel:I

    .line 399
    .line 400
    const-wide/16 p0, 0x0

    .line 401
    .line 402
    cmp-long p0, v0, p0

    .line 403
    .line 404
    if-eqz p0, :cond_a

    .line 405
    .line 406
    new-instance p0, Landroidx/renderscript/RenderScript$MessageThread;

    .line 407
    .line 408
    .line 409
    invoke-direct {p0, v7}, Landroidx/renderscript/RenderScript$MessageThread;-><init>(Landroidx/renderscript/RenderScript;)V

    .line 410
    .line 411
    iput-object p0, v7, Landroidx/renderscript/RenderScript;->mMessageThread:Landroidx/renderscript/RenderScript$MessageThread;

    .line 412
    .line 413
    .line 414
    invoke-virtual {p0}, Ljava/lang/Thread;->start()V

    .line 415
    return-object v7

    .line 416
    .line 417
    :cond_a
    new-instance p0, Landroidx/renderscript/RSDriverException;

    .line 418
    .line 419
    const-string p1, "Failed to create RS context."

    .line 420
    .line 421
    .line 422
    invoke-direct {p0, p1}, Landroidx/renderscript/RSDriverException;-><init>(Ljava/lang/String;)V

    .line 423
    throw p0

    .line 424
    :goto_8
    :try_start_8
    monitor-exit p0
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 425
    throw p1

    .line 426
    .line 427
    :cond_b
    new-instance p0, Landroidx/renderscript/RSRuntimeException;

    .line 428
    .line 429
    const-string p1, "Can\'t have two contexts with different SDK versions in support lib"

    .line 430
    .line 431
    .line 432
    invoke-direct {p0, p1}, Landroidx/renderscript/RSRuntimeException;-><init>(Ljava/lang/String;)V

    .line 433
    throw p0
.end method

.method public static releaseAllContexts()V
    .locals 4

    .line 1
    .line 2
    sget-object v0, Landroidx/renderscript/RenderScript;->mProcessContextList:Ljava/util/ArrayList;

    .line 3
    monitor-enter v0

    .line 4
    .line 5
    :try_start_0
    sget-object v1, Landroidx/renderscript/RenderScript;->mProcessContextList:Ljava/util/ArrayList;

    .line 6
    .line 7
    new-instance v2, Ljava/util/ArrayList;

    .line 8
    .line 9
    .line 10
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 11
    .line 12
    sput-object v2, Landroidx/renderscript/RenderScript;->mProcessContextList:Ljava/util/ArrayList;

    .line 13
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 14
    .line 15
    .line 16
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 17
    move-result-object v0

    .line 18
    .line 19
    .line 20
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 21
    move-result v2

    .line 22
    .line 23
    if-eqz v2, :cond_0

    .line 24
    .line 25
    .line 26
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 27
    move-result-object v2

    .line 28
    .line 29
    check-cast v2, Landroidx/renderscript/RenderScript;

    .line 30
    const/4 v3, 0x0

    .line 31
    .line 32
    iput-boolean v3, v2, Landroidx/renderscript/RenderScript;->mIsProcessContext:Z

    .line 33
    .line 34
    .line 35
    invoke-virtual {v2}, Landroidx/renderscript/RenderScript;->destroy()V

    .line 36
    goto :goto_0

    .line 37
    .line 38
    .line 39
    :cond_0
    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 40
    return-void

    .line 41
    :catchall_0
    move-exception v1

    .line 42
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 43
    throw v1
.end method

.method static native rsnSystemGetPointerSize()I
.end method

.method public static setBlackList(Ljava/lang/String;)V
    .locals 0

    if-eqz p0, :cond_0

    sput-object p0, Landroidx/renderscript/RenderScript;->mBlackList:Ljava/lang/String;

    :cond_0
    return-void
.end method

.method public static setupDiskCache(Ljava/io/File;)V
    .locals 2

    .line 1
    .line 2
    new-instance v0, Ljava/io/File;

    .line 3
    .line 4
    const-string v1, "com.android.renderscript.cache"

    .line 5
    .line 6
    .line 7
    invoke-direct {v0, p0, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 11
    move-result-object p0

    .line 12
    .line 13
    sput-object p0, Landroidx/renderscript/RenderScript;->mCachePath:Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 17
    return-void
.end method

.method private static setupNative(ILandroid/content/Context;)Z
    .locals 7

    .line 1
    .line 2
    sget p0, Landroidx/renderscript/RenderScript;->sNative:I

    .line 3
    const/4 v0, -0x1

    .line 4
    const/4 v1, 0x1

    .line 5
    const/4 v2, 0x0

    .line 6
    .line 7
    if-ne p0, v0, :cond_2

    .line 8
    const/4 p0, 0x0

    .line 9
    .line 10
    :try_start_0
    const-string v0, "android.os.SystemProperties"

    .line 11
    .line 12
    .line 13
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    .line 14
    move-result-object v0

    .line 15
    const/4 v3, 0x2

    .line 16
    .line 17
    new-array v4, v3, [Ljava/lang/Class;

    .line 18
    .line 19
    const-class v5, Ljava/lang/String;

    .line 20
    .line 21
    aput-object v5, v4, v2

    .line 22
    .line 23
    sget-object v5, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    .line 24
    .line 25
    aput-object v5, v4, v1

    .line 26
    .line 27
    const-string v5, "getInt"

    .line 28
    .line 29
    .line 30
    invoke-virtual {v0, v5, v4}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 31
    move-result-object v0

    .line 32
    .line 33
    new-array v3, v3, [Ljava/lang/Object;

    .line 34
    .line 35
    const-string v4, "debug.rs.forcecompat"

    .line 36
    .line 37
    aput-object v4, v3, v2

    .line 38
    .line 39
    new-instance v4, Ljava/lang/Integer;

    .line 40
    .line 41
    .line 42
    invoke-direct {v4, v2}, Ljava/lang/Integer;-><init>(I)V

    .line 43
    .line 44
    aput-object v4, v3, v1

    .line 45
    .line 46
    .line 47
    invoke-virtual {v0, p0, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 48
    move-result-object v0

    .line 49
    .line 50
    check-cast v0, Ljava/lang/Integer;

    .line 51
    .line 52
    .line 53
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 54
    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 55
    goto :goto_0

    .line 56
    :catch_0
    move v0, v2

    .line 57
    .line 58
    :goto_0
    if-nez v0, :cond_0

    .line 59
    .line 60
    sput v1, Landroidx/renderscript/RenderScript;->sNative:I

    .line 61
    goto :goto_1

    .line 62
    .line 63
    :cond_0
    sput v2, Landroidx/renderscript/RenderScript;->sNative:I

    .line 64
    .line 65
    :goto_1
    sget v0, Landroidx/renderscript/RenderScript;->sNative:I

    .line 66
    .line 67
    if-ne v0, v1, :cond_2

    .line 68
    .line 69
    .line 70
    :try_start_1
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 71
    move-result-object v0

    .line 72
    .line 73
    .line 74
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 75
    move-result-object p1

    .line 76
    .line 77
    const/16 v3, 0x80

    .line 78
    .line 79
    .line 80
    invoke-virtual {v0, p1, v3}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    .line 81
    move-result-object p1
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_2

    .line 82
    .line 83
    const-wide/16 v3, 0x0

    .line 84
    .line 85
    :try_start_2
    const-string v0, "android.renderscript.RenderScript"

    .line 86
    .line 87
    .line 88
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    .line 89
    move-result-object v0

    .line 90
    .line 91
    const-string v5, "getMinorID"

    .line 92
    .line 93
    new-array v6, v2, [Ljava/lang/Class;

    .line 94
    .line 95
    .line 96
    invoke-virtual {v0, v5, v6}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 97
    move-result-object v0

    .line 98
    .line 99
    new-array v5, v2, [Ljava/lang/Object;

    .line 100
    .line 101
    .line 102
    invoke-virtual {v0, p0, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 103
    move-result-object p0

    .line 104
    .line 105
    check-cast p0, Ljava/lang/Long;

    .line 106
    .line 107
    .line 108
    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    .line 109
    move-result-wide v5
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 110
    goto :goto_2

    .line 111
    :catch_1
    move-wide v5, v3

    .line 112
    .line 113
    :goto_2
    iget-object p0, p1, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    .line 114
    .line 115
    if-eqz p0, :cond_2

    .line 116
    .line 117
    const-string v0, "androidx.renderscript.EnableAsyncTeardown"

    .line 118
    .line 119
    .line 120
    invoke-virtual {p0, v0}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;)Z

    .line 121
    move-result p0

    .line 122
    .line 123
    if-ne p0, v1, :cond_1

    .line 124
    .line 125
    cmp-long p0, v5, v3

    .line 126
    .line 127
    if-nez p0, :cond_1

    .line 128
    .line 129
    sput v2, Landroidx/renderscript/RenderScript;->sNative:I

    .line 130
    .line 131
    :cond_1
    iget-object p0, p1, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    .line 132
    .line 133
    const-string p1, "androidx.renderscript.EnableBlurWorkaround"

    .line 134
    .line 135
    .line 136
    invoke-virtual {p0, p1}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;)Z

    .line 137
    goto :goto_3

    .line 138
    :catch_2
    return v1

    .line 139
    .line 140
    :cond_2
    :goto_3
    sget p0, Landroidx/renderscript/RenderScript;->sNative:I

    .line 141
    .line 142
    if-ne p0, v1, :cond_4

    .line 143
    .line 144
    sget-object p0, Landroidx/renderscript/RenderScript;->mBlackList:Ljava/lang/String;

    .line 145
    .line 146
    .line 147
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    .line 148
    move-result p0

    .line 149
    .line 150
    if-lez p0, :cond_3

    .line 151
    .line 152
    new-instance p0, Ljava/lang/StringBuilder;

    .line 153
    .line 154
    .line 155
    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    .line 156
    .line 157
    const/16 p1, 0x28

    .line 158
    .line 159
    .line 160
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 161
    .line 162
    sget-object p1, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    .line 163
    .line 164
    .line 165
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 166
    .line 167
    const/16 p1, 0x3a

    .line 168
    .line 169
    .line 170
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 171
    .line 172
    sget-object v0, Landroid/os/Build;->PRODUCT:Ljava/lang/String;

    .line 173
    .line 174
    .line 175
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 176
    .line 177
    .line 178
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 179
    .line 180
    sget-object p1, Landroid/os/Build;->MODEL:Ljava/lang/String;

    .line 181
    .line 182
    .line 183
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 184
    .line 185
    const/16 p1, 0x29

    .line 186
    .line 187
    .line 188
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 189
    .line 190
    .line 191
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 192
    move-result-object p0

    .line 193
    .line 194
    sget-object p1, Landroidx/renderscript/RenderScript;->mBlackList:Ljava/lang/String;

    .line 195
    .line 196
    .line 197
    invoke-virtual {p1, p0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 198
    move-result p0

    .line 199
    .line 200
    if-eqz p0, :cond_3

    .line 201
    .line 202
    sput v2, Landroidx/renderscript/RenderScript;->sNative:I

    .line 203
    return v2

    .line 204
    :cond_3
    return v1

    .line 205
    :cond_4
    return v2
.end method


# virtual methods
.method public contextDump()V
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Landroidx/renderscript/RenderScript;->validate()V

    .line 4
    const/4 v0, 0x0

    .line 5
    .line 6
    .line 7
    invoke-virtual {p0, v0}, Landroidx/renderscript/RenderScript;->nContextDump(I)V

    .line 8
    return-void
.end method

.method public destroy()V
    .locals 1

    .line 1
    .line 2
    iget-boolean v0, p0, Landroidx/renderscript/RenderScript;->mIsProcessContext:Z

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    return-void

    .line 6
    .line 7
    .line 8
    :cond_0
    invoke-virtual {p0}, Landroidx/renderscript/RenderScript;->validate()V

    .line 9
    .line 10
    .line 11
    invoke-direct {p0}, Landroidx/renderscript/RenderScript;->helpDestroy()V

    .line 12
    return-void
.end method

.method protected finalize()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Landroidx/renderscript/RenderScript;->helpDestroy()V

    .line 4
    .line 5
    .line 6
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 7
    return-void
.end method

.method public finish()V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Landroidx/renderscript/RenderScript;->nContextFinish()V

    .line 4
    return-void
.end method

.method public final getApplicationContext()Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Landroidx/renderscript/RenderScript;->mApplicationContext:Landroid/content/Context;

    return-object v0
.end method

.method getDispatchAPILevel()I
    .locals 1

    iget v0, p0, Landroidx/renderscript/RenderScript;->mDispatchAPILevel:I

    return v0
.end method

.method public getErrorHandler()Landroidx/renderscript/RenderScript$RSErrorHandler;
    .locals 1

    iget-object v0, p0, Landroidx/renderscript/RenderScript;->mErrorCallback:Landroidx/renderscript/RenderScript$RSErrorHandler;

    return-object v0
.end method

.method public getMessageHandler()Landroidx/renderscript/RenderScript$RSMessageHandler;
    .locals 1

    iget-object v0, p0, Landroidx/renderscript/RenderScript;->mMessageCallback:Landroidx/renderscript/RenderScript$RSMessageHandler;

    return-object v0
.end method

.method isAlive()Z
    .locals 4

    iget-wide v0, p0, Landroidx/renderscript/RenderScript;->mContext:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method isUseNative()Z
    .locals 1

    sget-boolean v0, Landroidx/renderscript/RenderScript;->useNative:Z

    return v0
.end method

.method declared-synchronized nAllocationCopyFromBitmap(JLandroid/graphics/Bitmap;)V
    .locals 6

    .line 1
    monitor-enter p0

    .line 2
    .line 3
    .line 4
    :try_start_0
    invoke-virtual {p0}, Landroidx/renderscript/RenderScript;->validate()V

    .line 5
    .line 6
    iget-wide v1, p0, Landroidx/renderscript/RenderScript;->mContext:J

    .line 7
    move-object v0, p0

    .line 8
    move-wide v3, p1

    .line 9
    move-object v5, p3

    .line 10
    .line 11
    .line 12
    invoke-virtual/range {v0 .. v5}, Landroidx/renderscript/RenderScript;->rsnAllocationCopyFromBitmap(JJLandroid/graphics/Bitmap;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 13
    monitor-exit p0

    .line 14
    return-void

    .line 15
    :catchall_0
    move-exception p1

    .line 16
    monitor-exit p0

    .line 17
    throw p1
.end method

.method declared-synchronized nAllocationCopyToBitmap(JLandroid/graphics/Bitmap;)V
    .locals 6

    .line 1
    monitor-enter p0

    .line 2
    .line 3
    .line 4
    :try_start_0
    invoke-virtual {p0}, Landroidx/renderscript/RenderScript;->validate()V

    .line 5
    .line 6
    iget-wide v1, p0, Landroidx/renderscript/RenderScript;->mContext:J

    .line 7
    move-object v0, p0

    .line 8
    move-wide v3, p1

    .line 9
    move-object v5, p3

    .line 10
    .line 11
    .line 12
    invoke-virtual/range {v0 .. v5}, Landroidx/renderscript/RenderScript;->rsnAllocationCopyToBitmap(JJLandroid/graphics/Bitmap;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 13
    monitor-exit p0

    .line 14
    return-void

    .line 15
    :catchall_0
    move-exception p1

    .line 16
    monitor-exit p0

    .line 17
    throw p1
.end method

.method declared-synchronized nAllocationCreateBitmapBackedAllocation(JILandroid/graphics/Bitmap;I)J
    .locals 8

    .line 1
    monitor-enter p0

    .line 2
    .line 3
    .line 4
    :try_start_0
    invoke-virtual {p0}, Landroidx/renderscript/RenderScript;->validate()V

    .line 5
    .line 6
    iget-wide v1, p0, Landroidx/renderscript/RenderScript;->mContext:J

    .line 7
    move-object v0, p0

    .line 8
    move-wide v3, p1

    .line 9
    move v5, p3

    .line 10
    move-object v6, p4

    .line 11
    move v7, p5

    .line 12
    .line 13
    .line 14
    invoke-virtual/range {v0 .. v7}, Landroidx/renderscript/RenderScript;->rsnAllocationCreateBitmapBackedAllocation(JJILandroid/graphics/Bitmap;I)J

    .line 15
    move-result-wide p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 16
    monitor-exit p0

    .line 17
    return-wide p1

    .line 18
    :catchall_0
    move-exception p1

    .line 19
    monitor-exit p0

    .line 20
    throw p1
.end method

.method declared-synchronized nAllocationCreateBitmapRef(JLandroid/graphics/Bitmap;)J
    .locals 6

    .line 1
    monitor-enter p0

    .line 2
    .line 3
    .line 4
    :try_start_0
    invoke-virtual {p0}, Landroidx/renderscript/RenderScript;->validate()V

    .line 5
    .line 6
    iget-wide v1, p0, Landroidx/renderscript/RenderScript;->mContext:J

    .line 7
    move-object v0, p0

    .line 8
    move-wide v3, p1

    .line 9
    move-object v5, p3

    .line 10
    .line 11
    .line 12
    invoke-virtual/range {v0 .. v5}, Landroidx/renderscript/RenderScript;->rsnAllocationCreateBitmapRef(JJLandroid/graphics/Bitmap;)J

    .line 13
    move-result-wide p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 14
    monitor-exit p0

    .line 15
    return-wide p1

    .line 16
    :catchall_0
    move-exception p1

    .line 17
    monitor-exit p0

    .line 18
    throw p1
.end method

.method declared-synchronized nAllocationCreateFromAssetStream(III)J
    .locals 6

    .line 1
    monitor-enter p0

    .line 2
    .line 3
    .line 4
    :try_start_0
    invoke-virtual {p0}, Landroidx/renderscript/RenderScript;->validate()V

    .line 5
    .line 6
    iget-wide v1, p0, Landroidx/renderscript/RenderScript;->mContext:J

    .line 7
    move-object v0, p0

    .line 8
    move v3, p1

    .line 9
    move v4, p2

    .line 10
    move v5, p3

    .line 11
    .line 12
    .line 13
    invoke-virtual/range {v0 .. v5}, Landroidx/renderscript/RenderScript;->rsnAllocationCreateFromAssetStream(JIII)J

    .line 14
    move-result-wide p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 15
    monitor-exit p0

    .line 16
    return-wide p1

    .line 17
    :catchall_0
    move-exception p1

    .line 18
    monitor-exit p0

    .line 19
    throw p1
.end method

.method declared-synchronized nAllocationCreateFromBitmap(JILandroid/graphics/Bitmap;I)J
    .locals 8

    .line 1
    monitor-enter p0

    .line 2
    .line 3
    .line 4
    :try_start_0
    invoke-virtual {p0}, Landroidx/renderscript/RenderScript;->validate()V

    .line 5
    .line 6
    iget-wide v1, p0, Landroidx/renderscript/RenderScript;->mContext:J

    .line 7
    move-object v0, p0

    .line 8
    move-wide v3, p1

    .line 9
    move v5, p3

    .line 10
    move-object v6, p4

    .line 11
    move v7, p5

    .line 12
    .line 13
    .line 14
    invoke-virtual/range {v0 .. v7}, Landroidx/renderscript/RenderScript;->rsnAllocationCreateFromBitmap(JJILandroid/graphics/Bitmap;I)J

    .line 15
    move-result-wide p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 16
    monitor-exit p0

    .line 17
    return-wide p1

    .line 18
    :catchall_0
    move-exception p1

    .line 19
    monitor-exit p0

    .line 20
    throw p1
.end method

.method declared-synchronized nAllocationCreateTyped(JIIJ)J
    .locals 9

    .line 1
    monitor-enter p0

    .line 2
    .line 3
    .line 4
    :try_start_0
    invoke-virtual {p0}, Landroidx/renderscript/RenderScript;->validate()V

    .line 5
    .line 6
    iget-wide v1, p0, Landroidx/renderscript/RenderScript;->mContext:J

    .line 7
    move-object v0, p0

    .line 8
    move-wide v3, p1

    .line 9
    move v5, p3

    .line 10
    move v6, p4

    .line 11
    move-wide v7, p5

    .line 12
    .line 13
    .line 14
    invoke-virtual/range {v0 .. v8}, Landroidx/renderscript/RenderScript;->rsnAllocationCreateTyped(JJIIJ)J

    .line 15
    move-result-wide p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 16
    monitor-exit p0

    .line 17
    return-wide p1

    .line 18
    :catchall_0
    move-exception p1

    .line 19
    monitor-exit p0

    .line 20
    throw p1
.end method

.method declared-synchronized nAllocationCubeCreateFromBitmap(JILandroid/graphics/Bitmap;I)J
    .locals 8

    .line 1
    monitor-enter p0

    .line 2
    .line 3
    .line 4
    :try_start_0
    invoke-virtual {p0}, Landroidx/renderscript/RenderScript;->validate()V

    .line 5
    .line 6
    iget-wide v1, p0, Landroidx/renderscript/RenderScript;->mContext:J

    .line 7
    move-object v0, p0

    .line 8
    move-wide v3, p1

    .line 9
    move v5, p3

    .line 10
    move-object v6, p4

    .line 11
    move v7, p5

    .line 12
    .line 13
    .line 14
    invoke-virtual/range {v0 .. v7}, Landroidx/renderscript/RenderScript;->rsnAllocationCubeCreateFromBitmap(JJILandroid/graphics/Bitmap;I)J

    .line 15
    move-result-wide p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 16
    monitor-exit p0

    .line 17
    return-wide p1

    .line 18
    :catchall_0
    move-exception p1

    .line 19
    monitor-exit p0

    .line 20
    throw p1
.end method

.method declared-synchronized nAllocationData1D(JIIILjava/lang/Object;ILandroidx/renderscript/Element$DataType;IZ)V
    .locals 15

    .line 1
    move-object v14, p0

    .line 2
    monitor-enter p0

    .line 3
    .line 4
    .line 5
    :try_start_0
    invoke-virtual {p0}, Landroidx/renderscript/RenderScript;->validate()V

    .line 6
    .line 7
    iget-wide v2, v14, Landroidx/renderscript/RenderScript;->mContext:J

    .line 8
    .line 9
    move-object/from16 v0, p8

    .line 10
    .line 11
    iget v11, v0, Landroidx/renderscript/Element$DataType;->mID:I

    .line 12
    move-object v1, p0

    .line 13
    .line 14
    move-wide/from16 v4, p1

    .line 15
    .line 16
    move/from16 v6, p3

    .line 17
    .line 18
    move/from16 v7, p4

    .line 19
    .line 20
    move/from16 v8, p5

    .line 21
    .line 22
    move-object/from16 v9, p6

    .line 23
    .line 24
    move/from16 v10, p7

    .line 25
    .line 26
    move/from16 v12, p9

    .line 27
    .line 28
    move/from16 v13, p10

    .line 29
    .line 30
    .line 31
    invoke-virtual/range {v1 .. v13}, Landroidx/renderscript/RenderScript;->rsnAllocationData1D(JJIIILjava/lang/Object;IIIZ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 32
    monitor-exit p0

    .line 33
    return-void

    .line 34
    :catchall_0
    move-exception v0

    .line 35
    monitor-exit p0

    .line 36
    throw v0
.end method

.method declared-synchronized nAllocationData2D(JIIIIIIJIIII)V
    .locals 18

    move-object/from16 v15, p0

    monitor-enter p0

    .line 1
    :try_start_0
    invoke-virtual/range {p0 .. p0}, Landroidx/renderscript/RenderScript;->validate()V

    iget-wide v2, v15, Landroidx/renderscript/RenderScript;->mContext:J

    move-object/from16 v1, p0

    move-wide/from16 v4, p1

    move/from16 v6, p3

    move/from16 v7, p4

    move/from16 v8, p5

    move/from16 v9, p6

    move/from16 v10, p7

    move/from16 v11, p8

    move-wide/from16 v12, p9

    move/from16 v14, p11

    move/from16 v15, p12

    move/from16 v16, p13

    move/from16 v17, p14

    .line 2
    invoke-virtual/range {v1 .. v17}, Landroidx/renderscript/RenderScript;->rsnAllocationData2D(JJIIIIIIJIIII)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized nAllocationData2D(JIIIIIILjava/lang/Object;ILandroidx/renderscript/Element$DataType;IZ)V
    .locals 17

    move-object/from16 v15, p0

    monitor-enter p0

    .line 4
    :try_start_0
    invoke-virtual/range {p0 .. p0}, Landroidx/renderscript/RenderScript;->validate()V

    iget-wide v2, v15, Landroidx/renderscript/RenderScript;->mContext:J

    move-object/from16 v0, p11

    .line 5
    iget v14, v0, Landroidx/renderscript/Element$DataType;->mID:I

    move-object/from16 v1, p0

    move-wide/from16 v4, p1

    move/from16 v6, p3

    move/from16 v7, p4

    move/from16 v8, p5

    move/from16 v9, p6

    move/from16 v10, p7

    move/from16 v11, p8

    move-object/from16 v12, p9

    move/from16 v13, p10

    move/from16 v15, p12

    move/from16 v16, p13

    invoke-virtual/range {v1 .. v16}, Landroidx/renderscript/RenderScript;->rsnAllocationData2D(JJIIIIIILjava/lang/Object;IIIZ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 6
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized nAllocationData2D(JIIIILandroid/graphics/Bitmap;)V
    .locals 12

    move-object v11, p0

    monitor-enter p0

    .line 7
    :try_start_0
    invoke-virtual {p0}, Landroidx/renderscript/RenderScript;->validate()V

    iget-wide v2, v11, Landroidx/renderscript/RenderScript;->mContext:J

    move-object v1, p0

    move-wide v4, p1

    move v6, p3

    move/from16 v7, p4

    move/from16 v8, p5

    move/from16 v9, p6

    move-object/from16 v10, p7

    .line 8
    invoke-virtual/range {v1 .. v10}, Landroidx/renderscript/RenderScript;->rsnAllocationData2D(JJIIIILandroid/graphics/Bitmap;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 9
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized nAllocationData3D(JIIIIIIIJIIII)V
    .locals 19

    move-object/from16 v15, p0

    monitor-enter p0

    .line 1
    :try_start_0
    invoke-virtual/range {p0 .. p0}, Landroidx/renderscript/RenderScript;->validate()V

    iget-wide v2, v15, Landroidx/renderscript/RenderScript;->mContext:J

    move-object/from16 v1, p0

    move-wide/from16 v4, p1

    move/from16 v6, p3

    move/from16 v7, p4

    move/from16 v8, p5

    move/from16 v9, p6

    move/from16 v10, p7

    move/from16 v11, p8

    move/from16 v12, p9

    move-wide/from16 v13, p10

    move/from16 v15, p12

    move/from16 v16, p13

    move/from16 v17, p14

    move/from16 v18, p15

    .line 2
    invoke-virtual/range {v1 .. v18}, Landroidx/renderscript/RenderScript;->rsnAllocationData3D(JJIIIIIIIJIIII)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized nAllocationData3D(JIIIIIIILjava/lang/Object;ILandroidx/renderscript/Element$DataType;IZ)V
    .locals 18

    move-object/from16 v15, p0

    monitor-enter p0

    .line 4
    :try_start_0
    invoke-virtual/range {p0 .. p0}, Landroidx/renderscript/RenderScript;->validate()V

    iget-wide v2, v15, Landroidx/renderscript/RenderScript;->mContext:J

    move-object/from16 v0, p12

    .line 5
    iget v0, v0, Landroidx/renderscript/Element$DataType;->mID:I

    move-object/from16 v1, p0

    move-wide/from16 v4, p1

    move/from16 v6, p3

    move/from16 v7, p4

    move/from16 v8, p5

    move/from16 v9, p6

    move/from16 v10, p7

    move/from16 v11, p8

    move/from16 v12, p9

    move-object/from16 v13, p10

    move/from16 v14, p11

    move v15, v0

    move/from16 v16, p13

    move/from16 v17, p14

    invoke-virtual/range {v1 .. v17}, Landroidx/renderscript/RenderScript;->rsnAllocationData3D(JJIIIIIIILjava/lang/Object;IIIZ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 6
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized nAllocationElementData1D(JIII[BI)V
    .locals 12

    .line 1
    move-object v11, p0

    .line 2
    monitor-enter p0

    .line 3
    .line 4
    .line 5
    :try_start_0
    invoke-virtual {p0}, Landroidx/renderscript/RenderScript;->validate()V

    .line 6
    .line 7
    iget-wide v2, v11, Landroidx/renderscript/RenderScript;->mContext:J

    .line 8
    move-object v1, p0

    .line 9
    move-wide v4, p1

    .line 10
    move v6, p3

    .line 11
    .line 12
    move/from16 v7, p4

    .line 13
    .line 14
    move/from16 v8, p5

    .line 15
    .line 16
    move-object/from16 v9, p6

    .line 17
    .line 18
    move/from16 v10, p7

    .line 19
    .line 20
    .line 21
    invoke-virtual/range {v1 .. v10}, Landroidx/renderscript/RenderScript;->rsnAllocationElementData1D(JJIII[BI)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 22
    monitor-exit p0

    .line 23
    return-void

    .line 24
    :catchall_0
    move-exception v0

    .line 25
    monitor-exit p0

    .line 26
    throw v0
.end method

.method declared-synchronized nAllocationGenerateMipmaps(J)V
    .locals 2

    .line 1
    monitor-enter p0

    .line 2
    .line 3
    .line 4
    :try_start_0
    invoke-virtual {p0}, Landroidx/renderscript/RenderScript;->validate()V

    .line 5
    .line 6
    iget-wide v0, p0, Landroidx/renderscript/RenderScript;->mContext:J

    .line 7
    .line 8
    .line 9
    invoke-virtual {p0, v0, v1, p1, p2}, Landroidx/renderscript/RenderScript;->rsnAllocationGenerateMipmaps(JJ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 10
    monitor-exit p0

    .line 11
    return-void

    .line 12
    :catchall_0
    move-exception p1

    .line 13
    monitor-exit p0

    .line 14
    throw p1
.end method

.method declared-synchronized nAllocationGetByteBuffer(JIII)Ljava/nio/ByteBuffer;
    .locals 8

    .line 1
    monitor-enter p0

    .line 2
    .line 3
    .line 4
    :try_start_0
    invoke-virtual {p0}, Landroidx/renderscript/RenderScript;->validate()V

    .line 5
    .line 6
    iget-wide v1, p0, Landroidx/renderscript/RenderScript;->mContext:J

    .line 7
    move-object v0, p0

    .line 8
    move-wide v3, p1

    .line 9
    move v5, p3

    .line 10
    move v6, p4

    .line 11
    move v7, p5

    .line 12
    .line 13
    .line 14
    invoke-virtual/range {v0 .. v7}, Landroidx/renderscript/RenderScript;->rsnAllocationGetByteBuffer(JJIII)Ljava/nio/ByteBuffer;

    .line 15
    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 16
    monitor-exit p0

    .line 17
    return-object p1

    .line 18
    :catchall_0
    move-exception p1

    .line 19
    monitor-exit p0

    .line 20
    throw p1
.end method

.method declared-synchronized nAllocationGetStride(J)J
    .locals 2

    .line 1
    monitor-enter p0

    .line 2
    .line 3
    .line 4
    :try_start_0
    invoke-virtual {p0}, Landroidx/renderscript/RenderScript;->validate()V

    .line 5
    .line 6
    iget-wide v0, p0, Landroidx/renderscript/RenderScript;->mContext:J

    .line 7
    .line 8
    .line 9
    invoke-virtual {p0, v0, v1, p1, p2}, Landroidx/renderscript/RenderScript;->rsnAllocationGetStride(JJ)J

    .line 10
    move-result-wide p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 11
    monitor-exit p0

    .line 12
    return-wide p1

    .line 13
    :catchall_0
    move-exception p1

    .line 14
    monitor-exit p0

    .line 15
    throw p1
.end method

.method declared-synchronized nAllocationGetType(J)J
    .locals 2

    .line 1
    monitor-enter p0

    .line 2
    .line 3
    .line 4
    :try_start_0
    invoke-virtual {p0}, Landroidx/renderscript/RenderScript;->validate()V

    .line 5
    .line 6
    iget-wide v0, p0, Landroidx/renderscript/RenderScript;->mContext:J

    .line 7
    .line 8
    .line 9
    invoke-virtual {p0, v0, v1, p1, p2}, Landroidx/renderscript/RenderScript;->rsnAllocationGetType(JJ)J

    .line 10
    move-result-wide p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 11
    monitor-exit p0

    .line 12
    return-wide p1

    .line 13
    :catchall_0
    move-exception p1

    .line 14
    monitor-exit p0

    .line 15
    throw p1
.end method

.method declared-synchronized nAllocationIoReceive(J)V
    .locals 2

    .line 1
    monitor-enter p0

    .line 2
    .line 3
    .line 4
    :try_start_0
    invoke-virtual {p0}, Landroidx/renderscript/RenderScript;->validate()V

    .line 5
    .line 6
    iget-wide v0, p0, Landroidx/renderscript/RenderScript;->mContext:J

    .line 7
    .line 8
    .line 9
    invoke-virtual {p0, v0, v1, p1, p2}, Landroidx/renderscript/RenderScript;->rsnAllocationIoReceive(JJ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 10
    monitor-exit p0

    .line 11
    return-void

    .line 12
    :catchall_0
    move-exception p1

    .line 13
    monitor-exit p0

    .line 14
    throw p1
.end method

.method declared-synchronized nAllocationIoSend(J)V
    .locals 2

    .line 1
    monitor-enter p0

    .line 2
    .line 3
    .line 4
    :try_start_0
    invoke-virtual {p0}, Landroidx/renderscript/RenderScript;->validate()V

    .line 5
    .line 6
    iget-wide v0, p0, Landroidx/renderscript/RenderScript;->mContext:J

    .line 7
    .line 8
    .line 9
    invoke-virtual {p0, v0, v1, p1, p2}, Landroidx/renderscript/RenderScript;->rsnAllocationIoSend(JJ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 10
    monitor-exit p0

    .line 11
    return-void

    .line 12
    :catchall_0
    move-exception p1

    .line 13
    monitor-exit p0

    .line 14
    throw p1
.end method

.method declared-synchronized nAllocationRead(JLjava/lang/Object;Landroidx/renderscript/Element$DataType;IZ)V
    .locals 9

    .line 1
    monitor-enter p0

    .line 2
    .line 3
    .line 4
    :try_start_0
    invoke-virtual {p0}, Landroidx/renderscript/RenderScript;->validate()V

    .line 5
    .line 6
    iget-wide v1, p0, Landroidx/renderscript/RenderScript;->mContext:J

    .line 7
    .line 8
    iget v6, p4, Landroidx/renderscript/Element$DataType;->mID:I

    .line 9
    move-object v0, p0

    .line 10
    move-wide v3, p1

    .line 11
    move-object v5, p3

    .line 12
    move v7, p5

    .line 13
    move v8, p6

    .line 14
    .line 15
    .line 16
    invoke-virtual/range {v0 .. v8}, Landroidx/renderscript/RenderScript;->rsnAllocationRead(JJLjava/lang/Object;IIZ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 17
    monitor-exit p0

    .line 18
    return-void

    .line 19
    :catchall_0
    move-exception p1

    .line 20
    monitor-exit p0

    .line 21
    throw p1
.end method

.method declared-synchronized nAllocationRead1D(JIIILjava/lang/Object;ILandroidx/renderscript/Element$DataType;IZ)V
    .locals 15

    .line 1
    move-object v14, p0

    .line 2
    monitor-enter p0

    .line 3
    .line 4
    .line 5
    :try_start_0
    invoke-virtual {p0}, Landroidx/renderscript/RenderScript;->validate()V

    .line 6
    .line 7
    iget-wide v2, v14, Landroidx/renderscript/RenderScript;->mContext:J

    .line 8
    .line 9
    move-object/from16 v0, p8

    .line 10
    .line 11
    iget v11, v0, Landroidx/renderscript/Element$DataType;->mID:I

    .line 12
    move-object v1, p0

    .line 13
    .line 14
    move-wide/from16 v4, p1

    .line 15
    .line 16
    move/from16 v6, p3

    .line 17
    .line 18
    move/from16 v7, p4

    .line 19
    .line 20
    move/from16 v8, p5

    .line 21
    .line 22
    move-object/from16 v9, p6

    .line 23
    .line 24
    move/from16 v10, p7

    .line 25
    .line 26
    move/from16 v12, p9

    .line 27
    .line 28
    move/from16 v13, p10

    .line 29
    .line 30
    .line 31
    invoke-virtual/range {v1 .. v13}, Landroidx/renderscript/RenderScript;->rsnAllocationRead1D(JJIIILjava/lang/Object;IIIZ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 32
    monitor-exit p0

    .line 33
    return-void

    .line 34
    :catchall_0
    move-exception v0

    .line 35
    monitor-exit p0

    .line 36
    throw v0
.end method

.method declared-synchronized nAllocationRead2D(JIIIIIILjava/lang/Object;ILandroidx/renderscript/Element$DataType;IZ)V
    .locals 17

    .line 1
    .line 2
    move-object/from16 v15, p0

    .line 3
    monitor-enter p0

    .line 4
    .line 5
    .line 6
    :try_start_0
    invoke-virtual/range {p0 .. p0}, Landroidx/renderscript/RenderScript;->validate()V

    .line 7
    .line 8
    iget-wide v2, v15, Landroidx/renderscript/RenderScript;->mContext:J

    .line 9
    .line 10
    move-object/from16 v0, p11

    .line 11
    .line 12
    iget v14, v0, Landroidx/renderscript/Element$DataType;->mID:I

    .line 13
    .line 14
    move-object/from16 v1, p0

    .line 15
    .line 16
    move-wide/from16 v4, p1

    .line 17
    .line 18
    move/from16 v6, p3

    .line 19
    .line 20
    move/from16 v7, p4

    .line 21
    .line 22
    move/from16 v8, p5

    .line 23
    .line 24
    move/from16 v9, p6

    .line 25
    .line 26
    move/from16 v10, p7

    .line 27
    .line 28
    move/from16 v11, p8

    .line 29
    .line 30
    move-object/from16 v12, p9

    .line 31
    .line 32
    move/from16 v13, p10

    .line 33
    .line 34
    move/from16 v15, p12

    .line 35
    .line 36
    move/from16 v16, p13

    .line 37
    .line 38
    .line 39
    invoke-virtual/range {v1 .. v16}, Landroidx/renderscript/RenderScript;->rsnAllocationRead2D(JJIIIIIILjava/lang/Object;IIIZ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 40
    monitor-exit p0

    .line 41
    return-void

    .line 42
    :catchall_0
    move-exception v0

    .line 43
    monitor-exit p0

    .line 44
    throw v0
.end method

.method declared-synchronized nAllocationResize1D(JI)V
    .locals 6

    .line 1
    monitor-enter p0

    .line 2
    .line 3
    .line 4
    :try_start_0
    invoke-virtual {p0}, Landroidx/renderscript/RenderScript;->validate()V

    .line 5
    .line 6
    iget-wide v1, p0, Landroidx/renderscript/RenderScript;->mContext:J

    .line 7
    move-object v0, p0

    .line 8
    move-wide v3, p1

    .line 9
    move v5, p3

    .line 10
    .line 11
    .line 12
    invoke-virtual/range {v0 .. v5}, Landroidx/renderscript/RenderScript;->rsnAllocationResize1D(JJI)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 13
    monitor-exit p0

    .line 14
    return-void

    .line 15
    :catchall_0
    move-exception p1

    .line 16
    monitor-exit p0

    .line 17
    throw p1
.end method

.method declared-synchronized nAllocationResize2D(JII)V
    .locals 7

    .line 1
    monitor-enter p0

    .line 2
    .line 3
    .line 4
    :try_start_0
    invoke-virtual {p0}, Landroidx/renderscript/RenderScript;->validate()V

    .line 5
    .line 6
    iget-wide v1, p0, Landroidx/renderscript/RenderScript;->mContext:J

    .line 7
    move-object v0, p0

    .line 8
    move-wide v3, p1

    .line 9
    move v5, p3

    .line 10
    move v6, p4

    .line 11
    .line 12
    .line 13
    invoke-virtual/range {v0 .. v6}, Landroidx/renderscript/RenderScript;->rsnAllocationResize2D(JJII)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 14
    monitor-exit p0

    .line 15
    return-void

    .line 16
    :catchall_0
    move-exception p1

    .line 17
    monitor-exit p0

    .line 18
    throw p1
.end method

.method declared-synchronized nAllocationSetSurface(JLandroid/view/Surface;)V
    .locals 6

    .line 1
    monitor-enter p0

    .line 2
    .line 3
    .line 4
    :try_start_0
    invoke-virtual {p0}, Landroidx/renderscript/RenderScript;->validate()V

    .line 5
    .line 6
    iget-wide v1, p0, Landroidx/renderscript/RenderScript;->mContext:J

    .line 7
    move-object v0, p0

    .line 8
    move-wide v3, p1

    .line 9
    move-object v5, p3

    .line 10
    .line 11
    .line 12
    invoke-virtual/range {v0 .. v5}, Landroidx/renderscript/RenderScript;->rsnAllocationSetSurface(JJLandroid/view/Surface;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 13
    monitor-exit p0

    .line 14
    return-void

    .line 15
    :catchall_0
    move-exception p1

    .line 16
    monitor-exit p0

    .line 17
    throw p1
.end method

.method declared-synchronized nAllocationSyncAll(JI)V
    .locals 6

    .line 1
    monitor-enter p0

    .line 2
    .line 3
    .line 4
    :try_start_0
    invoke-virtual {p0}, Landroidx/renderscript/RenderScript;->validate()V

    .line 5
    .line 6
    iget-wide v1, p0, Landroidx/renderscript/RenderScript;->mContext:J

    .line 7
    move-object v0, p0

    .line 8
    move-wide v3, p1

    .line 9
    move v5, p3

    .line 10
    .line 11
    .line 12
    invoke-virtual/range {v0 .. v5}, Landroidx/renderscript/RenderScript;->rsnAllocationSyncAll(JJI)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 13
    monitor-exit p0

    .line 14
    return-void

    .line 15
    :catchall_0
    move-exception p1

    .line 16
    monitor-exit p0

    .line 17
    throw p1
.end method

.method declared-synchronized nClosureCreate(JJ[J[J[I[J[J)J
    .locals 14

    .line 1
    move-object v13, p0

    .line 2
    monitor-enter p0

    .line 3
    .line 4
    .line 5
    :try_start_0
    invoke-virtual {p0}, Landroidx/renderscript/RenderScript;->validate()V

    .line 6
    .line 7
    iget-wide v2, v13, Landroidx/renderscript/RenderScript;->mContext:J

    .line 8
    move-object v1, p0

    .line 9
    move-wide v4, p1

    .line 10
    .line 11
    move-wide/from16 v6, p3

    .line 12
    .line 13
    move-object/from16 v8, p5

    .line 14
    .line 15
    move-object/from16 v9, p6

    .line 16
    .line 17
    move-object/from16 v10, p7

    .line 18
    .line 19
    move-object/from16 v11, p8

    .line 20
    .line 21
    move-object/from16 v12, p9

    .line 22
    .line 23
    .line 24
    invoke-virtual/range {v1 .. v12}, Landroidx/renderscript/RenderScript;->rsnClosureCreate(JJJ[J[J[I[J[J)J

    .line 25
    move-result-wide v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 26
    .line 27
    const-wide/16 v2, 0x0

    .line 28
    .line 29
    cmp-long v2, v0, v2

    .line 30
    .line 31
    if-eqz v2, :cond_0

    .line 32
    monitor-exit p0

    .line 33
    return-wide v0

    .line 34
    .line 35
    :cond_0
    :try_start_1
    new-instance v0, Landroidx/renderscript/RSRuntimeException;

    .line 36
    .line 37
    const-string v1, "Failed creating closure."

    .line 38
    .line 39
    .line 40
    invoke-direct {v0, v1}, Landroidx/renderscript/RSRuntimeException;-><init>(Ljava/lang/String;)V

    .line 41
    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 42
    :catchall_0
    move-exception v0

    .line 43
    monitor-exit p0

    .line 44
    throw v0
.end method

.method declared-synchronized nClosureSetArg(JIJI)V
    .locals 9

    .line 1
    monitor-enter p0

    .line 2
    .line 3
    .line 4
    :try_start_0
    invoke-virtual {p0}, Landroidx/renderscript/RenderScript;->validate()V

    .line 5
    .line 6
    iget-wide v1, p0, Landroidx/renderscript/RenderScript;->mContext:J

    .line 7
    move-object v0, p0

    .line 8
    move-wide v3, p1

    .line 9
    move v5, p3

    .line 10
    move-wide v6, p4

    .line 11
    move v8, p6

    .line 12
    .line 13
    .line 14
    invoke-virtual/range {v0 .. v8}, Landroidx/renderscript/RenderScript;->rsnClosureSetArg(JJIJI)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 15
    monitor-exit p0

    .line 16
    return-void

    .line 17
    :catchall_0
    move-exception p1

    .line 18
    monitor-exit p0

    .line 19
    throw p1
.end method

.method declared-synchronized nClosureSetGlobal(JJJI)V
    .locals 12

    .line 1
    move-object v11, p0

    .line 2
    monitor-enter p0

    .line 3
    .line 4
    .line 5
    :try_start_0
    invoke-virtual {p0}, Landroidx/renderscript/RenderScript;->validate()V

    .line 6
    .line 7
    iget-wide v2, v11, Landroidx/renderscript/RenderScript;->mContext:J

    .line 8
    move-object v1, p0

    .line 9
    move-wide v4, p1

    .line 10
    move-wide v6, p3

    .line 11
    .line 12
    move-wide/from16 v8, p5

    .line 13
    .line 14
    move/from16 v10, p7

    .line 15
    .line 16
    .line 17
    invoke-virtual/range {v1 .. v10}, Landroidx/renderscript/RenderScript;->rsnClosureSetGlobal(JJJJI)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 18
    monitor-exit p0

    .line 19
    return-void

    .line 20
    :catchall_0
    move-exception v0

    .line 21
    monitor-exit p0

    .line 22
    throw v0
.end method

.method declared-synchronized nContextCreate(JIIILjava/lang/String;)J
    .locals 0

    .line 1
    monitor-enter p0

    .line 2
    .line 3
    .line 4
    :try_start_0
    invoke-virtual/range {p0 .. p6}, Landroidx/renderscript/RenderScript;->rsnContextCreate(JIIILjava/lang/String;)J

    .line 5
    move-result-wide p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 6
    monitor-exit p0

    .line 7
    return-wide p1

    .line 8
    :catchall_0
    move-exception p1

    .line 9
    monitor-exit p0

    .line 10
    throw p1
.end method

.method native nContextDeinitToClient(J)V
.end method

.method declared-synchronized nContextDestroy()V
    .locals 5

    .line 1
    monitor-enter p0

    .line 2
    .line 3
    .line 4
    :try_start_0
    invoke-virtual {p0}, Landroidx/renderscript/RenderScript;->validate()V

    .line 5
    .line 6
    iget-object v0, p0, Landroidx/renderscript/RenderScript;->mRWLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    .line 7
    .line 8
    .line 9
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    .line 10
    move-result-object v0

    .line 11
    .line 12
    .line 13
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->lock()V

    .line 14
    .line 15
    iget-wide v1, p0, Landroidx/renderscript/RenderScript;->mContext:J

    .line 16
    .line 17
    const-wide/16 v3, 0x0

    .line 18
    .line 19
    iput-wide v3, p0, Landroidx/renderscript/RenderScript;->mContext:J

    .line 20
    .line 21
    .line 22
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    .line 23
    .line 24
    .line 25
    invoke-virtual {p0, v1, v2}, Landroidx/renderscript/RenderScript;->rsnContextDestroy(J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 26
    monitor-exit p0

    .line 27
    return-void

    .line 28
    :catchall_0
    move-exception v0

    .line 29
    monitor-exit p0

    .line 30
    throw v0
.end method

.method declared-synchronized nContextDump(I)V
    .locals 2

    .line 1
    monitor-enter p0

    .line 2
    .line 3
    .line 4
    :try_start_0
    invoke-virtual {p0}, Landroidx/renderscript/RenderScript;->validate()V

    .line 5
    .line 6
    iget-wide v0, p0, Landroidx/renderscript/RenderScript;->mContext:J

    .line 7
    .line 8
    .line 9
    invoke-virtual {p0, v0, v1, p1}, Landroidx/renderscript/RenderScript;->rsnContextDump(JI)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 10
    monitor-exit p0

    .line 11
    return-void

    .line 12
    :catchall_0
    move-exception p1

    .line 13
    monitor-exit p0

    .line 14
    throw p1
.end method

.method declared-synchronized nContextFinish()V
    .locals 2

    .line 1
    monitor-enter p0

    .line 2
    .line 3
    .line 4
    :try_start_0
    invoke-virtual {p0}, Landroidx/renderscript/RenderScript;->validate()V

    .line 5
    .line 6
    iget-wide v0, p0, Landroidx/renderscript/RenderScript;->mContext:J

    .line 7
    .line 8
    .line 9
    invoke-virtual {p0, v0, v1}, Landroidx/renderscript/RenderScript;->rsnContextFinish(J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 10
    monitor-exit p0

    .line 11
    return-void

    .line 12
    :catchall_0
    move-exception v0

    .line 13
    monitor-exit p0

    .line 14
    throw v0
.end method

.method native nContextGetErrorMessage(J)Ljava/lang/String;
.end method

.method native nContextGetUserMessage(J[I)I
.end method

.method native nContextInitToClient(J)V
.end method

.method native nContextPeekMessage(J[I)I
.end method

.method declared-synchronized nContextSendMessage(I[I)V
    .locals 2

    .line 1
    monitor-enter p0

    .line 2
    .line 3
    .line 4
    :try_start_0
    invoke-virtual {p0}, Landroidx/renderscript/RenderScript;->validate()V

    .line 5
    .line 6
    iget-wide v0, p0, Landroidx/renderscript/RenderScript;->mContext:J

    .line 7
    .line 8
    .line 9
    invoke-virtual {p0, v0, v1, p1, p2}, Landroidx/renderscript/RenderScript;->rsnContextSendMessage(JI[I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 10
    monitor-exit p0

    .line 11
    return-void

    .line 12
    :catchall_0
    move-exception p1

    .line 13
    monitor-exit p0

    .line 14
    throw p1
.end method

.method declared-synchronized nContextSetPriority(I)V
    .locals 2

    .line 1
    monitor-enter p0

    .line 2
    .line 3
    .line 4
    :try_start_0
    invoke-virtual {p0}, Landroidx/renderscript/RenderScript;->validate()V

    .line 5
    .line 6
    iget-wide v0, p0, Landroidx/renderscript/RenderScript;->mContext:J

    .line 7
    .line 8
    .line 9
    invoke-virtual {p0, v0, v1, p1}, Landroidx/renderscript/RenderScript;->rsnContextSetPriority(JI)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 10
    monitor-exit p0

    .line 11
    return-void

    .line 12
    :catchall_0
    move-exception p1

    .line 13
    monitor-exit p0

    .line 14
    throw p1
.end method

.method native nDeviceCreate()J
.end method

.method native nDeviceDestroy(J)V
.end method

.method native nDeviceSetConfig(JII)V
.end method

.method declared-synchronized nElementCreate(JIZI)J
    .locals 8

    .line 1
    monitor-enter p0

    .line 2
    .line 3
    .line 4
    :try_start_0
    invoke-virtual {p0}, Landroidx/renderscript/RenderScript;->validate()V

    .line 5
    .line 6
    iget-wide v1, p0, Landroidx/renderscript/RenderScript;->mContext:J

    .line 7
    move-object v0, p0

    .line 8
    move-wide v3, p1

    .line 9
    move v5, p3

    .line 10
    move v6, p4

    .line 11
    move v7, p5

    .line 12
    .line 13
    .line 14
    invoke-virtual/range {v0 .. v7}, Landroidx/renderscript/RenderScript;->rsnElementCreate(JJIZI)J

    .line 15
    move-result-wide p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 16
    monitor-exit p0

    .line 17
    return-wide p1

    .line 18
    :catchall_0
    move-exception p1

    .line 19
    monitor-exit p0

    .line 20
    throw p1
.end method

.method declared-synchronized nElementCreate2([J[Ljava/lang/String;[I)J
    .locals 6

    .line 1
    monitor-enter p0

    .line 2
    .line 3
    .line 4
    :try_start_0
    invoke-virtual {p0}, Landroidx/renderscript/RenderScript;->validate()V

    .line 5
    .line 6
    iget-wide v1, p0, Landroidx/renderscript/RenderScript;->mContext:J

    .line 7
    move-object v0, p0

    .line 8
    move-object v3, p1

    .line 9
    move-object v4, p2

    .line 10
    move-object v5, p3

    .line 11
    .line 12
    .line 13
    invoke-virtual/range {v0 .. v5}, Landroidx/renderscript/RenderScript;->rsnElementCreate2(J[J[Ljava/lang/String;[I)J

    .line 14
    move-result-wide p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 15
    monitor-exit p0

    .line 16
    return-wide p1

    .line 17
    :catchall_0
    move-exception p1

    .line 18
    monitor-exit p0

    .line 19
    throw p1
.end method

.method declared-synchronized nElementGetNativeData(J[I)V
    .locals 6

    .line 1
    monitor-enter p0

    .line 2
    .line 3
    .line 4
    :try_start_0
    invoke-virtual {p0}, Landroidx/renderscript/RenderScript;->validate()V

    .line 5
    .line 6
    iget-wide v1, p0, Landroidx/renderscript/RenderScript;->mContext:J

    .line 7
    move-object v0, p0

    .line 8
    move-wide v3, p1

    .line 9
    move-object v5, p3

    .line 10
    .line 11
    .line 12
    invoke-virtual/range {v0 .. v5}, Landroidx/renderscript/RenderScript;->rsnElementGetNativeData(JJ[I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 13
    monitor-exit p0

    .line 14
    return-void

    .line 15
    :catchall_0
    move-exception p1

    .line 16
    monitor-exit p0

    .line 17
    throw p1
.end method

.method declared-synchronized nElementGetSubElements(J[J[Ljava/lang/String;[I)V
    .locals 8

    .line 1
    monitor-enter p0

    .line 2
    .line 3
    .line 4
    :try_start_0
    invoke-virtual {p0}, Landroidx/renderscript/RenderScript;->validate()V

    .line 5
    .line 6
    iget-wide v1, p0, Landroidx/renderscript/RenderScript;->mContext:J

    .line 7
    move-object v0, p0

    .line 8
    move-wide v3, p1

    .line 9
    move-object v5, p3

    .line 10
    move-object v6, p4

    .line 11
    move-object v7, p5

    .line 12
    .line 13
    .line 14
    invoke-virtual/range {v0 .. v7}, Landroidx/renderscript/RenderScript;->rsnElementGetSubElements(JJ[J[Ljava/lang/String;[I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 15
    monitor-exit p0

    .line 16
    return-void

    .line 17
    :catchall_0
    move-exception p1

    .line 18
    monitor-exit p0

    .line 19
    throw p1
.end method

.method declared-synchronized nIncAllocationCreateTyped(JJI)J
    .locals 10

    .line 1
    monitor-enter p0

    .line 2
    .line 3
    .line 4
    :try_start_0
    invoke-virtual {p0}, Landroidx/renderscript/RenderScript;->validate()V

    .line 5
    .line 6
    iget-wide v1, p0, Landroidx/renderscript/RenderScript;->mContext:J

    .line 7
    .line 8
    iget-wide v3, p0, Landroidx/renderscript/RenderScript;->mIncCon:J

    .line 9
    move-object v0, p0

    .line 10
    move-wide v5, p1

    .line 11
    move-wide v7, p3

    .line 12
    move v9, p5

    .line 13
    .line 14
    .line 15
    invoke-virtual/range {v0 .. v9}, Landroidx/renderscript/RenderScript;->rsnIncAllocationCreateTyped(JJJJI)J

    .line 16
    move-result-wide p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 17
    monitor-exit p0

    .line 18
    return-wide p1

    .line 19
    :catchall_0
    move-exception p1

    .line 20
    monitor-exit p0

    .line 21
    throw p1
.end method

.method declared-synchronized nIncContextCreate(JIII)J
    .locals 0

    .line 1
    monitor-enter p0

    .line 2
    .line 3
    .line 4
    :try_start_0
    invoke-virtual/range {p0 .. p5}, Landroidx/renderscript/RenderScript;->rsnIncContextCreate(JIII)J

    .line 5
    move-result-wide p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 6
    monitor-exit p0

    .line 7
    return-wide p1

    .line 8
    :catchall_0
    move-exception p1

    .line 9
    monitor-exit p0

    .line 10
    throw p1
.end method

.method declared-synchronized nIncContextDestroy()V
    .locals 5

    .line 1
    monitor-enter p0

    .line 2
    .line 3
    .line 4
    :try_start_0
    invoke-virtual {p0}, Landroidx/renderscript/RenderScript;->validate()V

    .line 5
    .line 6
    iget-object v0, p0, Landroidx/renderscript/RenderScript;->mRWLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    .line 7
    .line 8
    .line 9
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    .line 10
    move-result-object v0

    .line 11
    .line 12
    .line 13
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->lock()V

    .line 14
    .line 15
    iget-wide v1, p0, Landroidx/renderscript/RenderScript;->mIncCon:J

    .line 16
    .line 17
    const-wide/16 v3, 0x0

    .line 18
    .line 19
    iput-wide v3, p0, Landroidx/renderscript/RenderScript;->mIncCon:J

    .line 20
    .line 21
    .line 22
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    .line 23
    .line 24
    .line 25
    invoke-virtual {p0, v1, v2}, Landroidx/renderscript/RenderScript;->rsnIncContextDestroy(J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 26
    monitor-exit p0

    .line 27
    return-void

    .line 28
    :catchall_0
    move-exception v0

    .line 29
    monitor-exit p0

    .line 30
    throw v0
.end method

.method declared-synchronized nIncContextFinish()V
    .locals 2

    .line 1
    monitor-enter p0

    .line 2
    .line 3
    .line 4
    :try_start_0
    invoke-virtual {p0}, Landroidx/renderscript/RenderScript;->validate()V

    .line 5
    .line 6
    iget-wide v0, p0, Landroidx/renderscript/RenderScript;->mIncCon:J

    .line 7
    .line 8
    .line 9
    invoke-virtual {p0, v0, v1}, Landroidx/renderscript/RenderScript;->rsnIncContextFinish(J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 10
    monitor-exit p0

    .line 11
    return-void

    .line 12
    :catchall_0
    move-exception v0

    .line 13
    monitor-exit p0

    .line 14
    throw v0
.end method

.method native nIncDeviceCreate()J
.end method

.method native nIncDeviceDestroy(J)V
.end method

.method declared-synchronized nIncElementCreate(JIZI)J
    .locals 8

    .line 1
    monitor-enter p0

    .line 2
    .line 3
    .line 4
    :try_start_0
    invoke-virtual {p0}, Landroidx/renderscript/RenderScript;->validate()V

    .line 5
    .line 6
    iget-wide v1, p0, Landroidx/renderscript/RenderScript;->mIncCon:J

    .line 7
    move-object v0, p0

    .line 8
    move-wide v3, p1

    .line 9
    move v5, p3

    .line 10
    move v6, p4

    .line 11
    move v7, p5

    .line 12
    .line 13
    .line 14
    invoke-virtual/range {v0 .. v7}, Landroidx/renderscript/RenderScript;->rsnIncElementCreate(JJIZI)J

    .line 15
    move-result-wide p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 16
    monitor-exit p0

    .line 17
    return-wide p1

    .line 18
    :catchall_0
    move-exception p1

    .line 19
    monitor-exit p0

    .line 20
    throw p1
.end method

.method native nIncLoadSO(ILjava/lang/String;)Z
.end method

.method nIncObjDestroy(J)V
    .locals 4

    .line 1
    .line 2
    iget-wide v0, p0, Landroidx/renderscript/RenderScript;->mIncCon:J

    .line 3
    .line 4
    const-wide/16 v2, 0x0

    .line 5
    .line 6
    cmp-long v2, v0, v2

    .line 7
    .line 8
    if-eqz v2, :cond_0

    .line 9
    .line 10
    .line 11
    invoke-virtual {p0, v0, v1, p1, p2}, Landroidx/renderscript/RenderScript;->rsnIncObjDestroy(JJ)V

    .line 12
    :cond_0
    return-void
.end method

.method declared-synchronized nIncTypeCreate(JIIIZZI)J
    .locals 13

    .line 1
    move-object v12, p0

    .line 2
    monitor-enter p0

    .line 3
    .line 4
    .line 5
    :try_start_0
    invoke-virtual {p0}, Landroidx/renderscript/RenderScript;->validate()V

    .line 6
    .line 7
    iget-wide v2, v12, Landroidx/renderscript/RenderScript;->mIncCon:J

    .line 8
    move-object v1, p0

    .line 9
    move-wide v4, p1

    .line 10
    .line 11
    move/from16 v6, p3

    .line 12
    .line 13
    move/from16 v7, p4

    .line 14
    .line 15
    move/from16 v8, p5

    .line 16
    .line 17
    move/from16 v9, p6

    .line 18
    .line 19
    move/from16 v10, p7

    .line 20
    .line 21
    move/from16 v11, p8

    .line 22
    .line 23
    .line 24
    invoke-virtual/range {v1 .. v11}, Landroidx/renderscript/RenderScript;->rsnIncTypeCreate(JJIIIZZI)J

    .line 25
    move-result-wide v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 26
    monitor-exit p0

    .line 27
    return-wide v0

    .line 28
    :catchall_0
    move-exception v0

    .line 29
    monitor-exit p0

    .line 30
    throw v0
.end method

.method declared-synchronized nInvokeClosureCreate(J[B[J[J[I)J
    .locals 9

    .line 1
    monitor-enter p0

    .line 2
    .line 3
    .line 4
    :try_start_0
    invoke-virtual {p0}, Landroidx/renderscript/RenderScript;->validate()V

    .line 5
    .line 6
    iget-wide v1, p0, Landroidx/renderscript/RenderScript;->mContext:J

    .line 7
    move-object v0, p0

    .line 8
    move-wide v3, p1

    .line 9
    move-object v5, p3

    .line 10
    move-object v6, p4

    .line 11
    move-object v7, p5

    .line 12
    move-object v8, p6

    .line 13
    .line 14
    .line 15
    invoke-virtual/range {v0 .. v8}, Landroidx/renderscript/RenderScript;->rsnInvokeClosureCreate(JJ[B[J[J[I)J

    .line 16
    move-result-wide p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 17
    .line 18
    const-wide/16 p3, 0x0

    .line 19
    .line 20
    cmp-long p3, p1, p3

    .line 21
    .line 22
    if-eqz p3, :cond_0

    .line 23
    monitor-exit p0

    .line 24
    return-wide p1

    .line 25
    .line 26
    :cond_0
    :try_start_1
    new-instance p1, Landroidx/renderscript/RSRuntimeException;

    .line 27
    .line 28
    const-string p2, "Failed creating closure."

    .line 29
    .line 30
    .line 31
    invoke-direct {p1, p2}, Landroidx/renderscript/RSRuntimeException;-><init>(Ljava/lang/String;)V

    .line 32
    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 33
    :catchall_0
    move-exception p1

    .line 34
    monitor-exit p0

    .line 35
    throw p1
.end method

.method native nLoadIOSO()Z
.end method

.method native nLoadSO(ZILjava/lang/String;)Z
.end method

.method nObjDestroy(J)V
    .locals 4

    .line 1
    .line 2
    iget-wide v0, p0, Landroidx/renderscript/RenderScript;->mContext:J

    .line 3
    .line 4
    const-wide/16 v2, 0x0

    .line 5
    .line 6
    cmp-long v2, v0, v2

    .line 7
    .line 8
    if-eqz v2, :cond_0

    .line 9
    .line 10
    .line 11
    invoke-virtual {p0, v0, v1, p1, p2}, Landroidx/renderscript/RenderScript;->rsnObjDestroy(JJ)V

    .line 12
    :cond_0
    return-void
.end method

.method declared-synchronized nSamplerCreate(IIIIIF)J
    .locals 9

    .line 1
    monitor-enter p0

    .line 2
    .line 3
    .line 4
    :try_start_0
    invoke-virtual {p0}, Landroidx/renderscript/RenderScript;->validate()V

    .line 5
    .line 6
    iget-wide v1, p0, Landroidx/renderscript/RenderScript;->mContext:J

    .line 7
    move-object v0, p0

    .line 8
    move v3, p1

    .line 9
    move v4, p2

    .line 10
    move v5, p3

    .line 11
    move v6, p4

    .line 12
    move v7, p5

    .line 13
    move v8, p6

    .line 14
    .line 15
    .line 16
    invoke-virtual/range {v0 .. v8}, Landroidx/renderscript/RenderScript;->rsnSamplerCreate(JIIIIIF)J

    .line 17
    move-result-wide p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 18
    monitor-exit p0

    .line 19
    return-wide p1

    .line 20
    :catchall_0
    move-exception p1

    .line 21
    monitor-exit p0

    .line 22
    throw p1
.end method

.method declared-synchronized nScriptBindAllocation(JJIZ)V
    .locals 9

    .line 1
    monitor-enter p0

    .line 2
    .line 3
    .line 4
    :try_start_0
    invoke-virtual {p0}, Landroidx/renderscript/RenderScript;->validate()V

    .line 5
    .line 6
    iget-wide v0, p0, Landroidx/renderscript/RenderScript;->mContext:J

    .line 7
    .line 8
    if-eqz p6, :cond_0

    .line 9
    .line 10
    iget-wide v0, p0, Landroidx/renderscript/RenderScript;->mIncCon:J

    .line 11
    :cond_0
    move-wide v1, v0

    .line 12
    goto :goto_0

    .line 13
    :catchall_0
    move-exception p1

    .line 14
    goto :goto_1

    .line 15
    :goto_0
    move-object v0, p0

    .line 16
    move-wide v3, p1

    .line 17
    move-wide v5, p3

    .line 18
    move v7, p5

    .line 19
    move v8, p6

    .line 20
    .line 21
    .line 22
    invoke-virtual/range {v0 .. v8}, Landroidx/renderscript/RenderScript;->rsnScriptBindAllocation(JJJIZ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 23
    monitor-exit p0

    .line 24
    return-void

    .line 25
    :goto_1
    monitor-exit p0

    .line 26
    throw p1
.end method

.method declared-synchronized nScriptCCreate(Ljava/lang/String;Ljava/lang/String;[BI)J
    .locals 7

    .line 1
    monitor-enter p0

    .line 2
    .line 3
    .line 4
    :try_start_0
    invoke-virtual {p0}, Landroidx/renderscript/RenderScript;->validate()V

    .line 5
    .line 6
    iget-wide v1, p0, Landroidx/renderscript/RenderScript;->mContext:J

    .line 7
    move-object v0, p0

    .line 8
    move-object v3, p1

    .line 9
    move-object v4, p2

    .line 10
    move-object v5, p3

    .line 11
    move v6, p4

    .line 12
    .line 13
    .line 14
    invoke-virtual/range {v0 .. v6}, Landroidx/renderscript/RenderScript;->rsnScriptCCreate(JLjava/lang/String;Ljava/lang/String;[BI)J

    .line 15
    move-result-wide p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 16
    monitor-exit p0

    .line 17
    return-wide p1

    .line 18
    :catchall_0
    move-exception p1

    .line 19
    monitor-exit p0

    .line 20
    throw p1
.end method

.method declared-synchronized nScriptFieldIDCreate(JIZ)J
    .locals 7

    .line 1
    monitor-enter p0

    .line 2
    .line 3
    .line 4
    :try_start_0
    invoke-virtual {p0}, Landroidx/renderscript/RenderScript;->validate()V

    .line 5
    .line 6
    iget-wide v0, p0, Landroidx/renderscript/RenderScript;->mContext:J

    .line 7
    .line 8
    if-eqz p4, :cond_0

    .line 9
    .line 10
    iget-wide v0, p0, Landroidx/renderscript/RenderScript;->mIncCon:J

    .line 11
    :cond_0
    move-wide v1, v0

    .line 12
    goto :goto_0

    .line 13
    :catchall_0
    move-exception p1

    .line 14
    goto :goto_1

    .line 15
    :goto_0
    move-object v0, p0

    .line 16
    move-wide v3, p1

    .line 17
    move v5, p3

    .line 18
    move v6, p4

    .line 19
    .line 20
    .line 21
    invoke-virtual/range {v0 .. v6}, Landroidx/renderscript/RenderScript;->rsnScriptFieldIDCreate(JJIZ)J

    .line 22
    move-result-wide p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 23
    monitor-exit p0

    .line 24
    return-wide p1

    .line 25
    :goto_1
    monitor-exit p0

    .line 26
    throw p1
.end method

.method declared-synchronized nScriptForEach(JIJJ[BZ)V
    .locals 16

    move-object/from16 v15, p0

    monitor-enter p0

    .line 1
    :try_start_0
    invoke-virtual/range {p0 .. p0}, Landroidx/renderscript/RenderScript;->validate()V

    if-nez p8, :cond_0

    iget-wide v2, v15, Landroidx/renderscript/RenderScript;->mContext:J

    iget-wide v4, v15, Landroidx/renderscript/RenderScript;->mIncCon:J

    move-object/from16 v1, p0

    move-wide/from16 v6, p1

    move/from16 v8, p3

    move-wide/from16 v9, p4

    move-wide/from16 v11, p6

    move/from16 v13, p9

    .line 2
    invoke-virtual/range {v1 .. v13}, Landroidx/renderscript/RenderScript;->rsnScriptForEach(JJJIJJZ)V

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :cond_0
    iget-wide v2, v15, Landroidx/renderscript/RenderScript;->mContext:J

    iget-wide v4, v15, Landroidx/renderscript/RenderScript;->mIncCon:J

    move-object/from16 v1, p0

    move-wide/from16 v6, p1

    move/from16 v8, p3

    move-wide/from16 v9, p4

    move-wide/from16 v11, p6

    move-object/from16 v13, p8

    move/from16 v14, p9

    .line 3
    invoke-virtual/range {v1 .. v14}, Landroidx/renderscript/RenderScript;->rsnScriptForEach(JJJIJJ[BZ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4
    :goto_0
    monitor-exit p0

    return-void

    :goto_1
    monitor-exit p0

    throw v0
.end method

.method declared-synchronized nScriptForEach(JI[JJ[B[I)V
    .locals 13

    move-object v12, p0

    monitor-enter p0

    :try_start_0
    iget-boolean v0, v12, Landroidx/renderscript/RenderScript;->mEnableMultiInput:Z

    if-eqz v0, :cond_0

    .line 5
    invoke-virtual {p0}, Landroidx/renderscript/RenderScript;->validate()V

    iget-wide v2, v12, Landroidx/renderscript/RenderScript;->mContext:J

    move-object v1, p0

    move-wide v4, p1

    move/from16 v6, p3

    move-object/from16 v7, p4

    move-wide/from16 v8, p5

    move-object/from16 v10, p7

    move-object/from16 v11, p8

    .line 6
    invoke-virtual/range {v1 .. v11}, Landroidx/renderscript/RenderScript;->rsnScriptForEach(JJI[JJ[B[I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 7
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    goto :goto_0

    :cond_0
    :try_start_1
    const-string v0, "RenderScript_jni"

    const-string v1, "Multi-input kernels are not supported, please change targetSdkVersion to >= 23"

    .line 8
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 9
    new-instance v0, Landroidx/renderscript/RSRuntimeException;

    const-string v1, "Multi-input kernels are not supported before API 23)"

    invoke-direct {v0, v1}, Landroidx/renderscript/RSRuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 10
    :goto_0
    monitor-exit p0

    throw v0
.end method

.method declared-synchronized nScriptForEachClipped(JIJJ[BIIIIIIZ)V
    .locals 21

    .line 1
    .line 2
    move-object/from16 v15, p0

    .line 3
    monitor-enter p0

    .line 4
    .line 5
    .line 6
    :try_start_0
    invoke-virtual/range {p0 .. p0}, Landroidx/renderscript/RenderScript;->validate()V

    .line 7
    .line 8
    if-nez p8, :cond_0

    .line 9
    .line 10
    iget-wide v2, v15, Landroidx/renderscript/RenderScript;->mContext:J

    .line 11
    .line 12
    iget-wide v4, v15, Landroidx/renderscript/RenderScript;->mIncCon:J

    .line 13
    .line 14
    move-object/from16 v1, p0

    .line 15
    .line 16
    move-wide/from16 v6, p1

    .line 17
    .line 18
    move/from16 v8, p3

    .line 19
    .line 20
    move-wide/from16 v9, p4

    .line 21
    .line 22
    move-wide/from16 v11, p6

    .line 23
    .line 24
    move/from16 v13, p9

    .line 25
    .line 26
    move/from16 v14, p10

    .line 27
    .line 28
    move/from16 v15, p11

    .line 29
    .line 30
    move/from16 v16, p12

    .line 31
    .line 32
    move/from16 v17, p13

    .line 33
    .line 34
    move/from16 v18, p14

    .line 35
    .line 36
    move/from16 v19, p15

    .line 37
    .line 38
    .line 39
    invoke-virtual/range {v1 .. v19}, Landroidx/renderscript/RenderScript;->rsnScriptForEachClipped(JJJIJJIIIIIIZ)V

    .line 40
    goto :goto_0

    .line 41
    :catchall_0
    move-exception v0

    .line 42
    goto :goto_1

    .line 43
    .line 44
    :cond_0
    iget-wide v2, v15, Landroidx/renderscript/RenderScript;->mContext:J

    .line 45
    .line 46
    iget-wide v4, v15, Landroidx/renderscript/RenderScript;->mIncCon:J

    .line 47
    .line 48
    move-object/from16 v1, p0

    .line 49
    .line 50
    move-wide/from16 v6, p1

    .line 51
    .line 52
    move/from16 v8, p3

    .line 53
    .line 54
    move-wide/from16 v9, p4

    .line 55
    .line 56
    move-wide/from16 v11, p6

    .line 57
    .line 58
    move-object/from16 v13, p8

    .line 59
    .line 60
    move/from16 v14, p9

    .line 61
    .line 62
    move/from16 v15, p10

    .line 63
    .line 64
    move/from16 v16, p11

    .line 65
    .line 66
    move/from16 v17, p12

    .line 67
    .line 68
    move/from16 v18, p13

    .line 69
    .line 70
    move/from16 v19, p14

    .line 71
    .line 72
    move/from16 v20, p15

    .line 73
    .line 74
    .line 75
    invoke-virtual/range {v1 .. v20}, Landroidx/renderscript/RenderScript;->rsnScriptForEachClipped(JJJIJJ[BIIIIIIZ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 76
    :goto_0
    monitor-exit p0

    .line 77
    return-void

    .line 78
    :goto_1
    monitor-exit p0

    .line 79
    throw v0
.end method

.method declared-synchronized nScriptGroup2Create(Ljava/lang/String;Ljava/lang/String;[J)J
    .locals 6

    .line 1
    monitor-enter p0

    .line 2
    .line 3
    .line 4
    :try_start_0
    invoke-virtual {p0}, Landroidx/renderscript/RenderScript;->validate()V

    .line 5
    .line 6
    iget-wide v1, p0, Landroidx/renderscript/RenderScript;->mContext:J

    .line 7
    move-object v0, p0

    .line 8
    move-object v3, p1

    .line 9
    move-object v4, p2

    .line 10
    move-object v5, p3

    .line 11
    .line 12
    .line 13
    invoke-virtual/range {v0 .. v5}, Landroidx/renderscript/RenderScript;->rsnScriptGroup2Create(JLjava/lang/String;Ljava/lang/String;[J)J

    .line 14
    move-result-wide p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 15
    monitor-exit p0

    .line 16
    return-wide p1

    .line 17
    :catchall_0
    move-exception p1

    .line 18
    monitor-exit p0

    .line 19
    throw p1
.end method

.method declared-synchronized nScriptGroup2Execute(J)V
    .locals 2

    .line 1
    monitor-enter p0

    .line 2
    .line 3
    .line 4
    :try_start_0
    invoke-virtual {p0}, Landroidx/renderscript/RenderScript;->validate()V

    .line 5
    .line 6
    iget-wide v0, p0, Landroidx/renderscript/RenderScript;->mContext:J

    .line 7
    .line 8
    .line 9
    invoke-virtual {p0, v0, v1, p1, p2}, Landroidx/renderscript/RenderScript;->rsnScriptGroup2Execute(JJ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 10
    monitor-exit p0

    .line 11
    return-void

    .line 12
    :catchall_0
    move-exception p1

    .line 13
    monitor-exit p0

    .line 14
    throw p1
.end method

.method declared-synchronized nScriptGroupCreate([J[J[J[J[J)J
    .locals 8

    .line 1
    monitor-enter p0

    .line 2
    .line 3
    .line 4
    :try_start_0
    invoke-virtual {p0}, Landroidx/renderscript/RenderScript;->validate()V

    .line 5
    .line 6
    iget-wide v1, p0, Landroidx/renderscript/RenderScript;->mContext:J

    .line 7
    move-object v0, p0

    .line 8
    move-object v3, p1

    .line 9
    move-object v4, p2

    .line 10
    move-object v5, p3

    .line 11
    move-object v6, p4

    .line 12
    move-object v7, p5

    .line 13
    .line 14
    .line 15
    invoke-virtual/range {v0 .. v7}, Landroidx/renderscript/RenderScript;->rsnScriptGroupCreate(J[J[J[J[J[J)J

    .line 16
    move-result-wide p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 17
    monitor-exit p0

    .line 18
    return-wide p1

    .line 19
    :catchall_0
    move-exception p1

    .line 20
    monitor-exit p0

    .line 21
    throw p1
.end method

.method declared-synchronized nScriptGroupExecute(J)V
    .locals 2

    .line 1
    monitor-enter p0

    .line 2
    .line 3
    .line 4
    :try_start_0
    invoke-virtual {p0}, Landroidx/renderscript/RenderScript;->validate()V

    .line 5
    .line 6
    iget-wide v0, p0, Landroidx/renderscript/RenderScript;->mContext:J

    .line 7
    .line 8
    .line 9
    invoke-virtual {p0, v0, v1, p1, p2}, Landroidx/renderscript/RenderScript;->rsnScriptGroupExecute(JJ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 10
    monitor-exit p0

    .line 11
    return-void

    .line 12
    :catchall_0
    move-exception p1

    .line 13
    monitor-exit p0

    .line 14
    throw p1
.end method

.method declared-synchronized nScriptGroupSetInput(JJJ)V
    .locals 9

    .line 1
    monitor-enter p0

    .line 2
    .line 3
    .line 4
    :try_start_0
    invoke-virtual {p0}, Landroidx/renderscript/RenderScript;->validate()V

    .line 5
    .line 6
    iget-wide v1, p0, Landroidx/renderscript/RenderScript;->mContext:J

    .line 7
    move-object v0, p0

    .line 8
    move-wide v3, p1

    .line 9
    move-wide v5, p3

    .line 10
    move-wide v7, p5

    .line 11
    .line 12
    .line 13
    invoke-virtual/range {v0 .. v8}, Landroidx/renderscript/RenderScript;->rsnScriptGroupSetInput(JJJJ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 14
    monitor-exit p0

    .line 15
    return-void

    .line 16
    :catchall_0
    move-exception p1

    .line 17
    monitor-exit p0

    .line 18
    throw p1
.end method

.method declared-synchronized nScriptGroupSetOutput(JJJ)V
    .locals 9

    .line 1
    monitor-enter p0

    .line 2
    .line 3
    .line 4
    :try_start_0
    invoke-virtual {p0}, Landroidx/renderscript/RenderScript;->validate()V

    .line 5
    .line 6
    iget-wide v1, p0, Landroidx/renderscript/RenderScript;->mContext:J

    .line 7
    move-object v0, p0

    .line 8
    move-wide v3, p1

    .line 9
    move-wide v5, p3

    .line 10
    move-wide v7, p5

    .line 11
    .line 12
    .line 13
    invoke-virtual/range {v0 .. v8}, Landroidx/renderscript/RenderScript;->rsnScriptGroupSetOutput(JJJJ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 14
    monitor-exit p0

    .line 15
    return-void

    .line 16
    :catchall_0
    move-exception p1

    .line 17
    monitor-exit p0

    .line 18
    throw p1
.end method

.method declared-synchronized nScriptIntrinsicBLAS_BNNM(JIIIJIJIJIIZ)V
    .locals 22

    .line 1
    .line 2
    move-object/from16 v14, p0

    .line 3
    monitor-enter p0

    .line 4
    .line 5
    .line 6
    :try_start_0
    invoke-virtual/range {p0 .. p0}, Landroidx/renderscript/RenderScript;->validate()V

    .line 7
    .line 8
    iget-wide v2, v14, Landroidx/renderscript/RenderScript;->mContext:J

    .line 9
    .line 10
    iget-wide v4, v14, Landroidx/renderscript/RenderScript;->mIncCon:J

    .line 11
    .line 12
    move-object/from16 v1, p0

    .line 13
    .line 14
    move-wide/from16 v6, p1

    .line 15
    .line 16
    move/from16 v8, p3

    .line 17
    .line 18
    move/from16 v9, p4

    .line 19
    .line 20
    move/from16 v10, p5

    .line 21
    .line 22
    move-wide/from16 v11, p6

    .line 23
    .line 24
    move/from16 v13, p8

    .line 25
    .line 26
    move-wide/from16 v14, p9

    .line 27
    .line 28
    move/from16 v16, p11

    .line 29
    .line 30
    move-wide/from16 v17, p12

    .line 31
    .line 32
    move/from16 v19, p14

    .line 33
    .line 34
    move/from16 v20, p15

    .line 35
    .line 36
    move/from16 v21, p16

    .line 37
    .line 38
    .line 39
    invoke-virtual/range {v1 .. v21}, Landroidx/renderscript/RenderScript;->rsnScriptIntrinsicBLAS_BNNM(JJJIIIJIJIJIIZ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 40
    monitor-exit p0

    .line 41
    return-void

    .line 42
    :catchall_0
    move-exception v0

    .line 43
    monitor-exit p0

    .line 44
    throw v0
.end method

.method declared-synchronized nScriptIntrinsicBLAS_Complex(JIIIIIIIIIFFJJFFJIIIIZ)V
    .locals 32

    move-object/from16 v15, p0

    monitor-enter p0

    .line 1
    :try_start_0
    invoke-virtual/range {p0 .. p0}, Landroidx/renderscript/RenderScript;->validate()V

    iget-wide v2, v15, Landroidx/renderscript/RenderScript;->mContext:J

    iget-wide v4, v15, Landroidx/renderscript/RenderScript;->mIncCon:J

    move-object/from16 v1, p0

    move-wide/from16 v6, p1

    move/from16 v8, p3

    move/from16 v9, p4

    move/from16 v10, p5

    move/from16 v11, p6

    move/from16 v12, p7

    move/from16 v13, p8

    move/from16 v14, p9

    move/from16 v15, p10

    move/from16 v16, p11

    move/from16 v17, p12

    move/from16 v18, p13

    move-wide/from16 v19, p14

    move-wide/from16 v21, p16

    move/from16 v23, p18

    move/from16 v24, p19

    move-wide/from16 v25, p20

    move/from16 v27, p22

    move/from16 v28, p23

    move/from16 v29, p24

    move/from16 v30, p25

    move/from16 v31, p26

    .line 2
    invoke-virtual/range {v1 .. v31}, Landroidx/renderscript/RenderScript;->rsnScriptIntrinsicBLAS_Complex(JJJIIIIIIIIIFFJJFFJIIIIZ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized nScriptIntrinsicBLAS_Double(JIIIIIIIIIDJJDJIIIIZ)V
    .locals 32

    move-object/from16 v15, p0

    monitor-enter p0

    .line 1
    :try_start_0
    invoke-virtual/range {p0 .. p0}, Landroidx/renderscript/RenderScript;->validate()V

    iget-wide v2, v15, Landroidx/renderscript/RenderScript;->mContext:J

    iget-wide v4, v15, Landroidx/renderscript/RenderScript;->mIncCon:J

    move-object/from16 v1, p0

    move-wide/from16 v6, p1

    move/from16 v8, p3

    move/from16 v9, p4

    move/from16 v10, p5

    move/from16 v11, p6

    move/from16 v12, p7

    move/from16 v13, p8

    move/from16 v14, p9

    move/from16 v15, p10

    move/from16 v16, p11

    move-wide/from16 v17, p12

    move-wide/from16 v19, p14

    move-wide/from16 v21, p16

    move-wide/from16 v23, p18

    move-wide/from16 v25, p20

    move/from16 v27, p22

    move/from16 v28, p23

    move/from16 v29, p24

    move/from16 v30, p25

    move/from16 v31, p26

    .line 2
    invoke-virtual/range {v1 .. v31}, Landroidx/renderscript/RenderScript;->rsnScriptIntrinsicBLAS_Double(JJJIIIIIIIIIDJJDJIIIIZ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized nScriptIntrinsicBLAS_Single(JIIIIIIIIIFJJFJIIIIZ)V
    .locals 30

    move-object/from16 v15, p0

    monitor-enter p0

    .line 1
    :try_start_0
    invoke-virtual/range {p0 .. p0}, Landroidx/renderscript/RenderScript;->validate()V

    iget-wide v2, v15, Landroidx/renderscript/RenderScript;->mContext:J

    iget-wide v4, v15, Landroidx/renderscript/RenderScript;->mIncCon:J

    move-object/from16 v1, p0

    move-wide/from16 v6, p1

    move/from16 v8, p3

    move/from16 v9, p4

    move/from16 v10, p5

    move/from16 v11, p6

    move/from16 v12, p7

    move/from16 v13, p8

    move/from16 v14, p9

    move/from16 v15, p10

    move/from16 v16, p11

    move/from16 v17, p12

    move-wide/from16 v18, p13

    move-wide/from16 v20, p15

    move/from16 v22, p17

    move-wide/from16 v23, p18

    move/from16 v25, p20

    move/from16 v26, p21

    move/from16 v27, p22

    move/from16 v28, p23

    move/from16 v29, p24

    .line 2
    invoke-virtual/range {v1 .. v29}, Landroidx/renderscript/RenderScript;->rsnScriptIntrinsicBLAS_Single(JJJIIIIIIIIIFJJFJIIIIZ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized nScriptIntrinsicBLAS_Z(JIIIIIIIIIDDJJDDJIIIIZ)V
    .locals 36

    move-object/from16 v15, p0

    monitor-enter p0

    .line 1
    :try_start_0
    invoke-virtual/range {p0 .. p0}, Landroidx/renderscript/RenderScript;->validate()V

    iget-wide v2, v15, Landroidx/renderscript/RenderScript;->mContext:J

    iget-wide v4, v15, Landroidx/renderscript/RenderScript;->mIncCon:J

    move-object/from16 v1, p0

    move-wide/from16 v6, p1

    move/from16 v8, p3

    move/from16 v9, p4

    move/from16 v10, p5

    move/from16 v11, p6

    move/from16 v12, p7

    move/from16 v13, p8

    move/from16 v14, p9

    move/from16 v15, p10

    move/from16 v16, p11

    move-wide/from16 v17, p12

    move-wide/from16 v19, p14

    move-wide/from16 v21, p16

    move-wide/from16 v23, p18

    move-wide/from16 v25, p20

    move-wide/from16 v27, p22

    move-wide/from16 v29, p24

    move/from16 v31, p26

    move/from16 v32, p27

    move/from16 v33, p28

    move/from16 v34, p29

    move/from16 v35, p30

    .line 2
    invoke-virtual/range {v1 .. v35}, Landroidx/renderscript/RenderScript;->rsnScriptIntrinsicBLAS_Z(JJJIIIIIIIIIDDJJDDJIIIIZ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized nScriptIntrinsicCreate(IJZ)J
    .locals 7

    .line 1
    monitor-enter p0

    .line 2
    .line 3
    .line 4
    :try_start_0
    invoke-virtual {p0}, Landroidx/renderscript/RenderScript;->validate()V

    .line 5
    .line 6
    if-eqz p4, :cond_3

    .line 7
    .line 8
    iget-boolean v0, p0, Landroidx/renderscript/RenderScript;->mIncLoaded:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 9
    .line 10
    if-nez v0, :cond_1

    .line 11
    .line 12
    :try_start_1
    const-string v0, "RSSupport"

    .line 13
    .line 14
    .line 15
    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 16
    .line 17
    :try_start_2
    new-instance v0, Ljava/lang/StringBuilder;

    .line 18
    .line 19
    .line 20
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 21
    .line 22
    iget-object v1, p0, Landroidx/renderscript/RenderScript;->mNativeLibDir:Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 26
    .line 27
    const-string v1, "/libRSSupport.so"

    .line 28
    .line 29
    .line 30
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 31
    .line 32
    .line 33
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 34
    move-result-object v0

    .line 35
    .line 36
    const/16 v1, 0x17

    .line 37
    .line 38
    .line 39
    invoke-virtual {p0, v1, v0}, Landroidx/renderscript/RenderScript;->nIncLoadSO(ILjava/lang/String;)Z

    .line 40
    move-result v0

    .line 41
    .line 42
    if-eqz v0, :cond_0

    .line 43
    const/4 v0, 0x1

    .line 44
    .line 45
    iput-boolean v0, p0, Landroidx/renderscript/RenderScript;->mIncLoaded:Z

    .line 46
    goto :goto_0

    .line 47
    :catchall_0
    move-exception p1

    .line 48
    goto :goto_1

    .line 49
    .line 50
    :cond_0
    new-instance p1, Landroidx/renderscript/RSRuntimeException;

    .line 51
    .line 52
    const-string p2, "Error loading libRSSupport library for Incremental Intrinsic Support"

    .line 53
    .line 54
    .line 55
    invoke-direct {p1, p2}, Landroidx/renderscript/RSRuntimeException;-><init>(Ljava/lang/String;)V

    .line 56
    throw p1

    .line 57
    :catch_0
    move-exception p1

    .line 58
    .line 59
    const-string p2, "RenderScript_jni"

    .line 60
    .line 61
    new-instance p3, Ljava/lang/StringBuilder;

    .line 62
    .line 63
    .line 64
    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    .line 65
    .line 66
    const-string p4, "Error loading RS Compat library for Incremental Intrinsic Support: "

    .line 67
    .line 68
    .line 69
    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 70
    .line 71
    .line 72
    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 73
    .line 74
    .line 75
    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 76
    move-result-object p3

    .line 77
    .line 78
    .line 79
    invoke-static {p2, p3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 80
    .line 81
    new-instance p2, Landroidx/renderscript/RSRuntimeException;

    .line 82
    .line 83
    new-instance p3, Ljava/lang/StringBuilder;

    .line 84
    .line 85
    .line 86
    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    .line 87
    .line 88
    const-string p4, "Error loading RS Compat library for Incremental Intrinsic Support: "

    .line 89
    .line 90
    .line 91
    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 92
    .line 93
    .line 94
    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 95
    .line 96
    .line 97
    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 98
    move-result-object p1

    .line 99
    .line 100
    .line 101
    invoke-direct {p2, p1}, Landroidx/renderscript/RSRuntimeException;-><init>(Ljava/lang/String;)V

    .line 102
    throw p2

    .line 103
    .line 104
    :cond_1
    :goto_0
    iget-wide v0, p0, Landroidx/renderscript/RenderScript;->mIncCon:J

    .line 105
    .line 106
    const-wide/16 v2, 0x0

    .line 107
    .line 108
    cmp-long v0, v0, v2

    .line 109
    .line 110
    if-nez v0, :cond_2

    .line 111
    .line 112
    .line 113
    invoke-virtual {p0}, Landroidx/renderscript/RenderScript;->nIncDeviceCreate()J

    .line 114
    move-result-wide v2

    .line 115
    const/4 v4, 0x0

    .line 116
    const/4 v5, 0x0

    .line 117
    const/4 v6, 0x0

    .line 118
    move-object v1, p0

    .line 119
    .line 120
    .line 121
    invoke-virtual/range {v1 .. v6}, Landroidx/renderscript/RenderScript;->nIncContextCreate(JIII)J

    .line 122
    move-result-wide v0

    .line 123
    .line 124
    iput-wide v0, p0, Landroidx/renderscript/RenderScript;->mIncCon:J

    .line 125
    .line 126
    :cond_2
    iget-wide v1, p0, Landroidx/renderscript/RenderScript;->mIncCon:J

    .line 127
    move-object v0, p0

    .line 128
    move v3, p1

    .line 129
    move-wide v4, p2

    .line 130
    move v6, p4

    .line 131
    .line 132
    .line 133
    invoke-virtual/range {v0 .. v6}, Landroidx/renderscript/RenderScript;->rsnScriptIntrinsicCreate(JIJZ)J

    .line 134
    move-result-wide p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 135
    monitor-exit p0

    .line 136
    return-wide p1

    .line 137
    .line 138
    :cond_3
    :try_start_3
    iget-wide v1, p0, Landroidx/renderscript/RenderScript;->mContext:J

    .line 139
    move-object v0, p0

    .line 140
    move v3, p1

    .line 141
    move-wide v4, p2

    .line 142
    move v6, p4

    .line 143
    .line 144
    .line 145
    invoke-virtual/range {v0 .. v6}, Landroidx/renderscript/RenderScript;->rsnScriptIntrinsicCreate(JIJZ)J

    .line 146
    move-result-wide p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 147
    monitor-exit p0

    .line 148
    return-wide p1

    .line 149
    :goto_1
    monitor-exit p0

    .line 150
    throw p1
.end method

.method declared-synchronized nScriptInvoke(JIZ)V
    .locals 7

    .line 1
    monitor-enter p0

    .line 2
    .line 3
    .line 4
    :try_start_0
    invoke-virtual {p0}, Landroidx/renderscript/RenderScript;->validate()V

    .line 5
    .line 6
    iget-wide v0, p0, Landroidx/renderscript/RenderScript;->mContext:J

    .line 7
    .line 8
    if-eqz p4, :cond_0

    .line 9
    .line 10
    iget-wide v0, p0, Landroidx/renderscript/RenderScript;->mIncCon:J

    .line 11
    :cond_0
    move-wide v1, v0

    .line 12
    goto :goto_0

    .line 13
    :catchall_0
    move-exception p1

    .line 14
    goto :goto_1

    .line 15
    :goto_0
    move-object v0, p0

    .line 16
    move-wide v3, p1

    .line 17
    move v5, p3

    .line 18
    move v6, p4

    .line 19
    .line 20
    .line 21
    invoke-virtual/range {v0 .. v6}, Landroidx/renderscript/RenderScript;->rsnScriptInvoke(JJIZ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 22
    monitor-exit p0

    .line 23
    return-void

    .line 24
    :goto_1
    monitor-exit p0

    .line 25
    throw p1
.end method

.method declared-synchronized nScriptInvokeIDCreate(JI)J
    .locals 6

    .line 1
    monitor-enter p0

    .line 2
    .line 3
    .line 4
    :try_start_0
    invoke-virtual {p0}, Landroidx/renderscript/RenderScript;->validate()V

    .line 5
    .line 6
    iget-wide v1, p0, Landroidx/renderscript/RenderScript;->mContext:J

    .line 7
    move-object v0, p0

    .line 8
    move-wide v3, p1

    .line 9
    move v5, p3

    .line 10
    .line 11
    .line 12
    invoke-virtual/range {v0 .. v5}, Landroidx/renderscript/RenderScript;->rsnScriptInvokeIDCreate(JJI)J

    .line 13
    move-result-wide p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 14
    monitor-exit p0

    .line 15
    return-wide p1

    .line 16
    :catchall_0
    move-exception p1

    .line 17
    monitor-exit p0

    .line 18
    throw p1
.end method

.method declared-synchronized nScriptInvokeV(JI[BZ)V
    .locals 8

    .line 1
    monitor-enter p0

    .line 2
    .line 3
    .line 4
    :try_start_0
    invoke-virtual {p0}, Landroidx/renderscript/RenderScript;->validate()V

    .line 5
    .line 6
    iget-wide v0, p0, Landroidx/renderscript/RenderScript;->mContext:J

    .line 7
    .line 8
    if-eqz p5, :cond_0

    .line 9
    .line 10
    iget-wide v0, p0, Landroidx/renderscript/RenderScript;->mIncCon:J

    .line 11
    :cond_0
    move-wide v1, v0

    .line 12
    goto :goto_0

    .line 13
    :catchall_0
    move-exception p1

    .line 14
    goto :goto_1

    .line 15
    :goto_0
    move-object v0, p0

    .line 16
    move-wide v3, p1

    .line 17
    move v5, p3

    .line 18
    move-object v6, p4

    .line 19
    move v7, p5

    .line 20
    .line 21
    .line 22
    invoke-virtual/range {v0 .. v7}, Landroidx/renderscript/RenderScript;->rsnScriptInvokeV(JJI[BZ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 23
    monitor-exit p0

    .line 24
    return-void

    .line 25
    :goto_1
    monitor-exit p0

    .line 26
    throw p1
.end method

.method declared-synchronized nScriptKernelIDCreate(JIIZ)J
    .locals 8

    .line 1
    monitor-enter p0

    .line 2
    .line 3
    .line 4
    :try_start_0
    invoke-virtual {p0}, Landroidx/renderscript/RenderScript;->validate()V

    .line 5
    .line 6
    iget-wide v0, p0, Landroidx/renderscript/RenderScript;->mContext:J

    .line 7
    .line 8
    if-eqz p5, :cond_0

    .line 9
    .line 10
    iget-wide v0, p0, Landroidx/renderscript/RenderScript;->mIncCon:J

    .line 11
    :cond_0
    move-wide v1, v0

    .line 12
    goto :goto_0

    .line 13
    :catchall_0
    move-exception p1

    .line 14
    goto :goto_1

    .line 15
    :goto_0
    move-object v0, p0

    .line 16
    move-wide v3, p1

    .line 17
    move v5, p3

    .line 18
    move v6, p4

    .line 19
    move v7, p5

    .line 20
    .line 21
    .line 22
    invoke-virtual/range {v0 .. v7}, Landroidx/renderscript/RenderScript;->rsnScriptKernelIDCreate(JJIIZ)J

    .line 23
    move-result-wide p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 24
    monitor-exit p0

    .line 25
    return-wide p1

    .line 26
    :goto_1
    monitor-exit p0

    .line 27
    throw p1
.end method

.method declared-synchronized nScriptReduce(JI[JJ[I)V
    .locals 12

    .line 1
    move-object v11, p0

    .line 2
    monitor-enter p0

    .line 3
    .line 4
    .line 5
    :try_start_0
    invoke-virtual {p0}, Landroidx/renderscript/RenderScript;->validate()V

    .line 6
    .line 7
    iget-wide v2, v11, Landroidx/renderscript/RenderScript;->mContext:J

    .line 8
    move-object v1, p0

    .line 9
    move-wide v4, p1

    .line 10
    move v6, p3

    .line 11
    .line 12
    move-object/from16 v7, p4

    .line 13
    .line 14
    move-wide/from16 v8, p5

    .line 15
    .line 16
    move-object/from16 v10, p7

    .line 17
    .line 18
    .line 19
    invoke-virtual/range {v1 .. v10}, Landroidx/renderscript/RenderScript;->rsnScriptReduce(JJI[JJ[I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 20
    monitor-exit p0

    .line 21
    return-void

    .line 22
    :catchall_0
    move-exception v0

    .line 23
    monitor-exit p0

    .line 24
    throw v0
.end method

.method declared-synchronized nScriptSetTimeZone(J[BZ)V
    .locals 7

    .line 1
    monitor-enter p0

    .line 2
    .line 3
    .line 4
    :try_start_0
    invoke-virtual {p0}, Landroidx/renderscript/RenderScript;->validate()V

    .line 5
    .line 6
    iget-wide v0, p0, Landroidx/renderscript/RenderScript;->mContext:J

    .line 7
    .line 8
    if-eqz p4, :cond_0

    .line 9
    .line 10
    iget-wide v0, p0, Landroidx/renderscript/RenderScript;->mIncCon:J

    .line 11
    :cond_0
    move-wide v1, v0

    .line 12
    goto :goto_0

    .line 13
    :catchall_0
    move-exception p1

    .line 14
    goto :goto_1

    .line 15
    :goto_0
    move-object v0, p0

    .line 16
    move-wide v3, p1

    .line 17
    move-object v5, p3

    .line 18
    move v6, p4

    .line 19
    .line 20
    .line 21
    invoke-virtual/range {v0 .. v6}, Landroidx/renderscript/RenderScript;->rsnScriptSetTimeZone(JJ[BZ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 22
    monitor-exit p0

    .line 23
    return-void

    .line 24
    :goto_1
    monitor-exit p0

    .line 25
    throw p1
.end method

.method declared-synchronized nScriptSetVarD(JIDZ)V
    .locals 9

    .line 1
    monitor-enter p0

    .line 2
    .line 3
    .line 4
    :try_start_0
    invoke-virtual {p0}, Landroidx/renderscript/RenderScript;->validate()V

    .line 5
    .line 6
    iget-wide v0, p0, Landroidx/renderscript/RenderScript;->mContext:J

    .line 7
    .line 8
    if-eqz p6, :cond_0

    .line 9
    .line 10
    iget-wide v0, p0, Landroidx/renderscript/RenderScript;->mIncCon:J

    .line 11
    :cond_0
    move-wide v1, v0

    .line 12
    goto :goto_0

    .line 13
    :catchall_0
    move-exception p1

    .line 14
    goto :goto_1

    .line 15
    :goto_0
    move-object v0, p0

    .line 16
    move-wide v3, p1

    .line 17
    move v5, p3

    .line 18
    move-wide v6, p4

    .line 19
    move v8, p6

    .line 20
    .line 21
    .line 22
    invoke-virtual/range {v0 .. v8}, Landroidx/renderscript/RenderScript;->rsnScriptSetVarD(JJIDZ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 23
    monitor-exit p0

    .line 24
    return-void

    .line 25
    :goto_1
    monitor-exit p0

    .line 26
    throw p1
.end method

.method declared-synchronized nScriptSetVarF(JIFZ)V
    .locals 8

    .line 1
    monitor-enter p0

    .line 2
    .line 3
    .line 4
    :try_start_0
    invoke-virtual {p0}, Landroidx/renderscript/RenderScript;->validate()V

    .line 5
    .line 6
    iget-wide v0, p0, Landroidx/renderscript/RenderScript;->mContext:J

    .line 7
    .line 8
    if-eqz p5, :cond_0

    .line 9
    .line 10
    iget-wide v0, p0, Landroidx/renderscript/RenderScript;->mIncCon:J

    .line 11
    :cond_0
    move-wide v1, v0

    .line 12
    goto :goto_0

    .line 13
    :catchall_0
    move-exception p1

    .line 14
    goto :goto_1

    .line 15
    :goto_0
    move-object v0, p0

    .line 16
    move-wide v3, p1

    .line 17
    move v5, p3

    .line 18
    move v6, p4

    .line 19
    move v7, p5

    .line 20
    .line 21
    .line 22
    invoke-virtual/range {v0 .. v7}, Landroidx/renderscript/RenderScript;->rsnScriptSetVarF(JJIFZ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 23
    monitor-exit p0

    .line 24
    return-void

    .line 25
    :goto_1
    monitor-exit p0

    .line 26
    throw p1
.end method

.method declared-synchronized nScriptSetVarI(JIIZ)V
    .locals 8

    .line 1
    monitor-enter p0

    .line 2
    .line 3
    .line 4
    :try_start_0
    invoke-virtual {p0}, Landroidx/renderscript/RenderScript;->validate()V

    .line 5
    .line 6
    iget-wide v0, p0, Landroidx/renderscript/RenderScript;->mContext:J

    .line 7
    .line 8
    if-eqz p5, :cond_0

    .line 9
    .line 10
    iget-wide v0, p0, Landroidx/renderscript/RenderScript;->mIncCon:J

    .line 11
    :cond_0
    move-wide v1, v0

    .line 12
    goto :goto_0

    .line 13
    :catchall_0
    move-exception p1

    .line 14
    goto :goto_1

    .line 15
    :goto_0
    move-object v0, p0

    .line 16
    move-wide v3, p1

    .line 17
    move v5, p3

    .line 18
    move v6, p4

    .line 19
    move v7, p5

    .line 20
    .line 21
    .line 22
    invoke-virtual/range {v0 .. v7}, Landroidx/renderscript/RenderScript;->rsnScriptSetVarI(JJIIZ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 23
    monitor-exit p0

    .line 24
    return-void

    .line 25
    :goto_1
    monitor-exit p0

    .line 26
    throw p1
.end method

.method declared-synchronized nScriptSetVarJ(JIJZ)V
    .locals 9

    .line 1
    monitor-enter p0

    .line 2
    .line 3
    .line 4
    :try_start_0
    invoke-virtual {p0}, Landroidx/renderscript/RenderScript;->validate()V

    .line 5
    .line 6
    iget-wide v0, p0, Landroidx/renderscript/RenderScript;->mContext:J

    .line 7
    .line 8
    if-eqz p6, :cond_0

    .line 9
    .line 10
    iget-wide v0, p0, Landroidx/renderscript/RenderScript;->mIncCon:J

    .line 11
    :cond_0
    move-wide v1, v0

    .line 12
    goto :goto_0

    .line 13
    :catchall_0
    move-exception p1

    .line 14
    goto :goto_1

    .line 15
    :goto_0
    move-object v0, p0

    .line 16
    move-wide v3, p1

    .line 17
    move v5, p3

    .line 18
    move-wide v6, p4

    .line 19
    move v8, p6

    .line 20
    .line 21
    .line 22
    invoke-virtual/range {v0 .. v8}, Landroidx/renderscript/RenderScript;->rsnScriptSetVarJ(JJIJZ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 23
    monitor-exit p0

    .line 24
    return-void

    .line 25
    :goto_1
    monitor-exit p0

    .line 26
    throw p1
.end method

.method declared-synchronized nScriptSetVarObj(JIJZ)V
    .locals 9

    .line 1
    monitor-enter p0

    .line 2
    .line 3
    .line 4
    :try_start_0
    invoke-virtual {p0}, Landroidx/renderscript/RenderScript;->validate()V

    .line 5
    .line 6
    iget-wide v0, p0, Landroidx/renderscript/RenderScript;->mContext:J

    .line 7
    .line 8
    if-eqz p6, :cond_0

    .line 9
    .line 10
    iget-wide v0, p0, Landroidx/renderscript/RenderScript;->mIncCon:J

    .line 11
    :cond_0
    move-wide v1, v0

    .line 12
    goto :goto_0

    .line 13
    :catchall_0
    move-exception p1

    .line 14
    goto :goto_1

    .line 15
    :goto_0
    move-object v0, p0

    .line 16
    move-wide v3, p1

    .line 17
    move v5, p3

    .line 18
    move-wide v6, p4

    .line 19
    move v8, p6

    .line 20
    .line 21
    .line 22
    invoke-virtual/range {v0 .. v8}, Landroidx/renderscript/RenderScript;->rsnScriptSetVarObj(JJIJZ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 23
    monitor-exit p0

    .line 24
    return-void

    .line 25
    :goto_1
    monitor-exit p0

    .line 26
    throw p1
.end method

.method declared-synchronized nScriptSetVarV(JI[BZ)V
    .locals 8

    .line 1
    monitor-enter p0

    .line 2
    .line 3
    .line 4
    :try_start_0
    invoke-virtual {p0}, Landroidx/renderscript/RenderScript;->validate()V

    .line 5
    .line 6
    iget-wide v0, p0, Landroidx/renderscript/RenderScript;->mContext:J

    .line 7
    .line 8
    if-eqz p5, :cond_0

    .line 9
    .line 10
    iget-wide v0, p0, Landroidx/renderscript/RenderScript;->mIncCon:J

    .line 11
    :cond_0
    move-wide v1, v0

    .line 12
    goto :goto_0

    .line 13
    :catchall_0
    move-exception p1

    .line 14
    goto :goto_1

    .line 15
    :goto_0
    move-object v0, p0

    .line 16
    move-wide v3, p1

    .line 17
    move v5, p3

    .line 18
    move-object v6, p4

    .line 19
    move v7, p5

    .line 20
    .line 21
    .line 22
    invoke-virtual/range {v0 .. v7}, Landroidx/renderscript/RenderScript;->rsnScriptSetVarV(JJI[BZ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 23
    monitor-exit p0

    .line 24
    return-void

    .line 25
    :goto_1
    monitor-exit p0

    .line 26
    throw p1
.end method

.method declared-synchronized nScriptSetVarVE(JI[BJ[IZ)V
    .locals 13

    .line 1
    move-object v12, p0

    .line 2
    monitor-enter p0

    .line 3
    .line 4
    .line 5
    :try_start_0
    invoke-virtual {p0}, Landroidx/renderscript/RenderScript;->validate()V

    .line 6
    .line 7
    iget-wide v0, v12, Landroidx/renderscript/RenderScript;->mContext:J

    .line 8
    .line 9
    if-eqz p8, :cond_0

    .line 10
    .line 11
    iget-wide v0, v12, Landroidx/renderscript/RenderScript;->mIncCon:J

    .line 12
    :cond_0
    move-wide v2, v0

    .line 13
    goto :goto_0

    .line 14
    :catchall_0
    move-exception v0

    .line 15
    goto :goto_1

    .line 16
    :goto_0
    move-object v1, p0

    .line 17
    move-wide v4, p1

    .line 18
    .line 19
    move/from16 v6, p3

    .line 20
    .line 21
    move-object/from16 v7, p4

    .line 22
    .line 23
    move-wide/from16 v8, p5

    .line 24
    .line 25
    move-object/from16 v10, p7

    .line 26
    .line 27
    move/from16 v11, p8

    .line 28
    .line 29
    .line 30
    invoke-virtual/range {v1 .. v11}, Landroidx/renderscript/RenderScript;->rsnScriptSetVarVE(JJI[BJ[IZ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 31
    monitor-exit p0

    .line 32
    return-void

    .line 33
    :goto_1
    monitor-exit p0

    .line 34
    throw v0
.end method

.method declared-synchronized nTypeCreate(JIIIZZI)J
    .locals 13

    .line 1
    move-object v12, p0

    .line 2
    monitor-enter p0

    .line 3
    .line 4
    .line 5
    :try_start_0
    invoke-virtual {p0}, Landroidx/renderscript/RenderScript;->validate()V

    .line 6
    .line 7
    iget-wide v2, v12, Landroidx/renderscript/RenderScript;->mContext:J

    .line 8
    move-object v1, p0

    .line 9
    move-wide v4, p1

    .line 10
    .line 11
    move/from16 v6, p3

    .line 12
    .line 13
    move/from16 v7, p4

    .line 14
    .line 15
    move/from16 v8, p5

    .line 16
    .line 17
    move/from16 v9, p6

    .line 18
    .line 19
    move/from16 v10, p7

    .line 20
    .line 21
    move/from16 v11, p8

    .line 22
    .line 23
    .line 24
    invoke-virtual/range {v1 .. v11}, Landroidx/renderscript/RenderScript;->rsnTypeCreate(JJIIIZZI)J

    .line 25
    move-result-wide v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 26
    monitor-exit p0

    .line 27
    return-wide v0

    .line 28
    :catchall_0
    move-exception v0

    .line 29
    monitor-exit p0

    .line 30
    throw v0
.end method

.method declared-synchronized nTypeGetNativeData(J[J)V
    .locals 6

    .line 1
    monitor-enter p0

    .line 2
    .line 3
    .line 4
    :try_start_0
    invoke-virtual {p0}, Landroidx/renderscript/RenderScript;->validate()V

    .line 5
    .line 6
    iget-wide v1, p0, Landroidx/renderscript/RenderScript;->mContext:J

    .line 7
    move-object v0, p0

    .line 8
    move-wide v3, p1

    .line 9
    move-object v5, p3

    .line 10
    .line 11
    .line 12
    invoke-virtual/range {v0 .. v5}, Landroidx/renderscript/RenderScript;->rsnTypeGetNativeData(JJ[J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 13
    monitor-exit p0

    .line 14
    return-void

    .line 15
    :catchall_0
    move-exception p1

    .line 16
    monitor-exit p0

    .line 17
    throw p1
.end method

.method native rsnAllocationCopyFromBitmap(JJLandroid/graphics/Bitmap;)V
.end method

.method native rsnAllocationCopyToBitmap(JJLandroid/graphics/Bitmap;)V
.end method

.method native rsnAllocationCreateBitmapBackedAllocation(JJILandroid/graphics/Bitmap;I)J
.end method

.method native rsnAllocationCreateBitmapRef(JJLandroid/graphics/Bitmap;)J
.end method

.method native rsnAllocationCreateFromAssetStream(JIII)J
.end method

.method native rsnAllocationCreateFromBitmap(JJILandroid/graphics/Bitmap;I)J
.end method

.method native rsnAllocationCreateTyped(JJIIJ)J
.end method

.method native rsnAllocationCubeCreateFromBitmap(JJILandroid/graphics/Bitmap;I)J
.end method

.method native rsnAllocationData1D(JJIIILjava/lang/Object;IIIZ)V
.end method

.method native rsnAllocationData2D(JJIIIIIIJIIII)V
.end method

.method native rsnAllocationData2D(JJIIIIIILjava/lang/Object;IIIZ)V
.end method

.method native rsnAllocationData2D(JJIIIILandroid/graphics/Bitmap;)V
.end method

.method native rsnAllocationData3D(JJIIIIIIIJIIII)V
.end method

.method native rsnAllocationData3D(JJIIIIIIILjava/lang/Object;IIIZ)V
.end method

.method native rsnAllocationElementData1D(JJIII[BI)V
.end method

.method native rsnAllocationGenerateMipmaps(JJ)V
.end method

.method native rsnAllocationGetByteBuffer(JJIII)Ljava/nio/ByteBuffer;
.end method

.method native rsnAllocationGetStride(JJ)J
.end method

.method native rsnAllocationGetType(JJ)J
.end method

.method native rsnAllocationIoReceive(JJ)V
.end method

.method native rsnAllocationIoSend(JJ)V
.end method

.method native rsnAllocationRead(JJLjava/lang/Object;IIZ)V
.end method

.method native rsnAllocationRead1D(JJIIILjava/lang/Object;IIIZ)V
.end method

.method native rsnAllocationRead2D(JJIIIIIILjava/lang/Object;IIIZ)V
.end method

.method native rsnAllocationResize1D(JJI)V
.end method

.method native rsnAllocationResize2D(JJII)V
.end method

.method native rsnAllocationSetSurface(JJLandroid/view/Surface;)V
.end method

.method native rsnAllocationSyncAll(JJI)V
.end method

.method native rsnClosureCreate(JJJ[J[J[I[J[J)J
.end method

.method native rsnClosureSetArg(JJIJI)V
.end method

.method native rsnClosureSetGlobal(JJJJI)V
.end method

.method native rsnContextCreate(JIIILjava/lang/String;)J
.end method

.method native rsnContextDestroy(J)V
.end method

.method native rsnContextDump(JI)V
.end method

.method native rsnContextFinish(J)V
.end method

.method native rsnContextSendMessage(JI[I)V
.end method

.method native rsnContextSetPriority(JI)V
.end method

.method native rsnElementCreate(JJIZI)J
.end method

.method native rsnElementCreate2(J[J[Ljava/lang/String;[I)J
.end method

.method native rsnElementGetNativeData(JJ[I)V
.end method

.method native rsnElementGetSubElements(JJ[J[Ljava/lang/String;[I)V
.end method

.method native rsnIncAllocationCreateTyped(JJJJI)J
.end method

.method native rsnIncContextCreate(JIII)J
.end method

.method native rsnIncContextDestroy(J)V
.end method

.method native rsnIncContextFinish(J)V
.end method

.method native rsnIncElementCreate(JJIZI)J
.end method

.method native rsnIncObjDestroy(JJ)V
.end method

.method native rsnIncTypeCreate(JJIIIZZI)J
.end method

.method native rsnInvokeClosureCreate(JJ[B[J[J[I)J
.end method

.method native rsnObjDestroy(JJ)V
.end method

.method native rsnSamplerCreate(JIIIIIF)J
.end method

.method native rsnScriptBindAllocation(JJJIZ)V
.end method

.method native rsnScriptCCreate(JLjava/lang/String;Ljava/lang/String;[BI)J
.end method

.method native rsnScriptFieldIDCreate(JJIZ)J
.end method

.method native rsnScriptForEach(JJI[JJ[B[I)V
.end method

.method native rsnScriptForEach(JJJIJJZ)V
.end method

.method native rsnScriptForEach(JJJIJJ[BZ)V
.end method

.method native rsnScriptForEachClipped(JJJIJJIIIIIIZ)V
.end method

.method native rsnScriptForEachClipped(JJJIJJ[BIIIIIIZ)V
.end method

.method native rsnScriptGroup2Create(JLjava/lang/String;Ljava/lang/String;[J)J
.end method

.method native rsnScriptGroup2Execute(JJ)V
.end method

.method native rsnScriptGroupCreate(J[J[J[J[J[J)J
.end method

.method native rsnScriptGroupExecute(JJ)V
.end method

.method native rsnScriptGroupSetInput(JJJJ)V
.end method

.method native rsnScriptGroupSetOutput(JJJJ)V
.end method

.method native rsnScriptIntrinsicBLAS_BNNM(JJJIIIJIJIJIIZ)V
.end method

.method native rsnScriptIntrinsicBLAS_Complex(JJJIIIIIIIIIFFJJFFJIIIIZ)V
.end method

.method native rsnScriptIntrinsicBLAS_Double(JJJIIIIIIIIIDJJDJIIIIZ)V
.end method

.method native rsnScriptIntrinsicBLAS_Single(JJJIIIIIIIIIFJJFJIIIIZ)V
.end method

.method native rsnScriptIntrinsicBLAS_Z(JJJIIIIIIIIIDDJJDDJIIIIZ)V
.end method

.method native rsnScriptIntrinsicCreate(JIJZ)J
.end method

.method native rsnScriptInvoke(JJIZ)V
.end method

.method native rsnScriptInvokeIDCreate(JJI)J
.end method

.method native rsnScriptInvokeV(JJI[BZ)V
.end method

.method native rsnScriptKernelIDCreate(JJIIZ)J
.end method

.method native rsnScriptReduce(JJI[JJ[I)V
.end method

.method native rsnScriptSetTimeZone(JJ[BZ)V
.end method

.method native rsnScriptSetVarD(JJIDZ)V
.end method

.method native rsnScriptSetVarF(JJIFZ)V
.end method

.method native rsnScriptSetVarI(JJIIZ)V
.end method

.method native rsnScriptSetVarJ(JJIJZ)V
.end method

.method native rsnScriptSetVarObj(JJIJZ)V
.end method

.method native rsnScriptSetVarV(JJI[BZ)V
.end method

.method native rsnScriptSetVarVE(JJI[BJ[IZ)V
.end method

.method native rsnTypeCreate(JJIIIZZI)J
.end method

.method native rsnTypeGetNativeData(JJ[J)V
.end method

.method safeID(Landroidx/renderscript/BaseObj;)J
    .locals 2

    .line 1
    .line 2
    if-eqz p1, :cond_0

    .line 3
    .line 4
    .line 5
    invoke-virtual {p1, p0}, Landroidx/renderscript/BaseObj;->getID(Landroidx/renderscript/RenderScript;)J

    .line 6
    move-result-wide v0

    .line 7
    return-wide v0

    .line 8
    .line 9
    :cond_0
    const-wide/16 v0, 0x0

    .line 10
    return-wide v0
.end method

.method public sendMessage(I[I)V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0, p1, p2}, Landroidx/renderscript/RenderScript;->nContextSendMessage(I[I)V

    .line 4
    return-void
.end method

.method public setErrorHandler(Landroidx/renderscript/RenderScript$RSErrorHandler;)V
    .locals 0

    iput-object p1, p0, Landroidx/renderscript/RenderScript;->mErrorCallback:Landroidx/renderscript/RenderScript$RSErrorHandler;

    return-void
.end method

.method public setMessageHandler(Landroidx/renderscript/RenderScript$RSMessageHandler;)V
    .locals 0

    iput-object p1, p0, Landroidx/renderscript/RenderScript;->mMessageCallback:Landroidx/renderscript/RenderScript$RSMessageHandler;

    return-void
.end method

.method public setPriority(Landroidx/renderscript/RenderScript$Priority;)V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Landroidx/renderscript/RenderScript;->validate()V

    .line 4
    .line 5
    iget p1, p1, Landroidx/renderscript/RenderScript$Priority;->mID:I

    .line 6
    .line 7
    .line 8
    invoke-virtual {p0, p1}, Landroidx/renderscript/RenderScript;->nContextSetPriority(I)V

    .line 9
    return-void
.end method

.method usingIO()Z
    .locals 1

    sget-boolean v0, Landroidx/renderscript/RenderScript;->useIOlib:Z

    return v0
.end method

.method validate()V
    .locals 4

    .line 1
    .line 2
    iget-wide v0, p0, Landroidx/renderscript/RenderScript;->mContext:J

    .line 3
    .line 4
    const-wide/16 v2, 0x0

    .line 5
    .line 6
    cmp-long v0, v0, v2

    .line 7
    .line 8
    if-eqz v0, :cond_0

    .line 9
    return-void

    .line 10
    .line 11
    :cond_0
    new-instance v0, Landroidx/renderscript/RSInvalidStateException;

    .line 12
    .line 13
    const-string v1, "Calling RS with no Context active."

    .line 14
    .line 15
    .line 16
    invoke-direct {v0, v1}, Landroidx/renderscript/RSInvalidStateException;-><init>(Ljava/lang/String;)V

    .line 17
    throw v0
.end method

.method validateObject(Landroidx/renderscript/BaseObj;)V
    .locals 1

    .line 1
    .line 2
    if-eqz p1, :cond_1

    .line 3
    .line 4
    iget-object p1, p1, Landroidx/renderscript/BaseObj;->mRS:Landroidx/renderscript/RenderScript;

    .line 5
    .line 6
    if-ne p1, p0, :cond_0

    .line 7
    goto :goto_0

    .line 8
    .line 9
    :cond_0
    new-instance p1, Landroidx/renderscript/RSIllegalArgumentException;

    .line 10
    .line 11
    const-string v0, "Attempting to use an object across contexts."

    .line 12
    .line 13
    .line 14
    invoke-direct {p1, v0}, Landroidx/renderscript/RSIllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 15
    throw p1

    .line 16
    :cond_1
    :goto_0
    return-void
.end method
