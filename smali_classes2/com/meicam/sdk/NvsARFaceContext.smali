.class public Lcom/meicam/sdk/NvsARFaceContext;
.super Ljava/lang/Object;
.source "NvsARFaceContext.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/meicam/sdk/NvsARFaceContext$NvsARFaceContextInternalCallback;,
        Lcom/meicam/sdk/NvsARFaceContext$NvsARFaceContextErrorCallback;,
        Lcom/meicam/sdk/NvsARFaceContext$NvsARFaceContextCallback;,
        Lcom/meicam/sdk/NvsARFaceContext$RunnableExt;
    }
.end annotation


# static fields
.field public static final OBJECT_TRACKING_TYPE_ANIMAL:I = 0x1

.field public static final OBJECT_TRACKING_TYPE_FACE:I


# instance fields
.field m_callback:Lcom/meicam/sdk/NvsARFaceContext$NvsARFaceContextCallback;

.field m_callbackinternal:Lcom/meicam/sdk/NvsARFaceContext$NvsARFaceContextInternalCallback;

.field private m_contextInterface:J

.field m_errorCallback:Lcom/meicam/sdk/NvsARFaceContext$NvsARFaceContextErrorCallback;

.field mainHandler:Landroid/os/Handler;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 44
    iput-object v0, p0, Lcom/meicam/sdk/NvsARFaceContext;->m_callbackinternal:Lcom/meicam/sdk/NvsARFaceContext$NvsARFaceContextInternalCallback;

    .line 45
    iput-object v0, p0, Lcom/meicam/sdk/NvsARFaceContext;->m_callback:Lcom/meicam/sdk/NvsARFaceContext$NvsARFaceContextCallback;

    .line 46
    iput-object v0, p0, Lcom/meicam/sdk/NvsARFaceContext;->m_errorCallback:Lcom/meicam/sdk/NvsARFaceContext$NvsARFaceContextErrorCallback;

    .line 48
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/meicam/sdk/NvsARFaceContext;->mainHandler:Landroid/os/Handler;

    return-void
.end method

.method private native nativeCleanup(J)V
.end method

.method private native nativeIsObjectTracking(JI)Z
.end method

.method private native nativeSetARFaceCallback(JLcom/meicam/sdk/NvsARFaceContext$NvsARFaceContextInternalCallback;)V
.end method

.method private native nativeSetDualBufferInputUsed(JZ)V
.end method


# virtual methods
.method protected finalize()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 166
    iget-wide v0, p0, Lcom/meicam/sdk/NvsARFaceContext;->m_contextInterface:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_0

    .line 167
    invoke-direct {p0, v0, v1}, Lcom/meicam/sdk/NvsARFaceContext;->nativeCleanup(J)V

    .line 168
    iput-wide v2, p0, Lcom/meicam/sdk/NvsARFaceContext;->m_contextInterface:J

    .line 171
    :cond_0
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    return-void
.end method

.method public isFaceTracking()Z
    .locals 3

    .line 52
    invoke-static {}, Lcom/meicam/sdk/NvsUtils;->checkFunctionInMainThread()Z

    .line 53
    iget-wide v0, p0, Lcom/meicam/sdk/NvsARFaceContext;->m_contextInterface:J

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, v2}, Lcom/meicam/sdk/NvsARFaceContext;->nativeIsObjectTracking(JI)Z

    move-result v0

    return v0
.end method

.method public isObjectTracking(I)Z
    .locals 2

    .line 58
    invoke-static {}, Lcom/meicam/sdk/NvsUtils;->checkFunctionInMainThread()Z

    .line 59
    iget-wide v0, p0, Lcom/meicam/sdk/NvsARFaceContext;->m_contextInterface:J

    invoke-direct {p0, v0, v1, p1}, Lcom/meicam/sdk/NvsARFaceContext;->nativeIsObjectTracking(JI)Z

    move-result p1

    return p1
.end method

.method public setContextCallback(Lcom/meicam/sdk/NvsARFaceContext$NvsARFaceContextCallback;)V
    .locals 2

    .line 83
    iput-object p1, p0, Lcom/meicam/sdk/NvsARFaceContext;->m_callback:Lcom/meicam/sdk/NvsARFaceContext$NvsARFaceContextCallback;

    .line 84
    iget-object p1, p0, Lcom/meicam/sdk/NvsARFaceContext;->m_callback:Lcom/meicam/sdk/NvsARFaceContext$NvsARFaceContextCallback;

    if-eqz p1, :cond_1

    .line 85
    iget-object p1, p0, Lcom/meicam/sdk/NvsARFaceContext;->m_callbackinternal:Lcom/meicam/sdk/NvsARFaceContext$NvsARFaceContextInternalCallback;

    if-eqz p1, :cond_0

    return-void

    .line 87
    :cond_0
    new-instance p1, Lcom/meicam/sdk/NvsARFaceContext$1;

    invoke-direct {p1, p0}, Lcom/meicam/sdk/NvsARFaceContext$1;-><init>(Lcom/meicam/sdk/NvsARFaceContext;)V

    iput-object p1, p0, Lcom/meicam/sdk/NvsARFaceContext;->m_callbackinternal:Lcom/meicam/sdk/NvsARFaceContext$NvsARFaceContextInternalCallback;

    .line 114
    :cond_1
    iget-wide v0, p0, Lcom/meicam/sdk/NvsARFaceContext;->m_contextInterface:J

    iget-object p1, p0, Lcom/meicam/sdk/NvsARFaceContext;->m_callbackinternal:Lcom/meicam/sdk/NvsARFaceContext$NvsARFaceContextInternalCallback;

    invoke-direct {p0, v0, v1, p1}, Lcom/meicam/sdk/NvsARFaceContext;->nativeSetARFaceCallback(JLcom/meicam/sdk/NvsARFaceContext$NvsARFaceContextInternalCallback;)V

    return-void
.end method

.method public setContextErrorCallback(Lcom/meicam/sdk/NvsARFaceContext$NvsARFaceContextErrorCallback;)V
    .locals 2

    .line 119
    iput-object p1, p0, Lcom/meicam/sdk/NvsARFaceContext;->m_errorCallback:Lcom/meicam/sdk/NvsARFaceContext$NvsARFaceContextErrorCallback;

    .line 120
    iget-object p1, p0, Lcom/meicam/sdk/NvsARFaceContext;->m_errorCallback:Lcom/meicam/sdk/NvsARFaceContext$NvsARFaceContextErrorCallback;

    if-eqz p1, :cond_1

    .line 121
    iget-object p1, p0, Lcom/meicam/sdk/NvsARFaceContext;->m_callbackinternal:Lcom/meicam/sdk/NvsARFaceContext$NvsARFaceContextInternalCallback;

    if-eqz p1, :cond_0

    return-void

    .line 123
    :cond_0
    new-instance p1, Lcom/meicam/sdk/NvsARFaceContext$2;

    invoke-direct {p1, p0}, Lcom/meicam/sdk/NvsARFaceContext$2;-><init>(Lcom/meicam/sdk/NvsARFaceContext;)V

    iput-object p1, p0, Lcom/meicam/sdk/NvsARFaceContext;->m_callbackinternal:Lcom/meicam/sdk/NvsARFaceContext$NvsARFaceContextInternalCallback;

    .line 151
    :cond_1
    iget-wide v0, p0, Lcom/meicam/sdk/NvsARFaceContext;->m_contextInterface:J

    iget-object p1, p0, Lcom/meicam/sdk/NvsARFaceContext;->m_callbackinternal:Lcom/meicam/sdk/NvsARFaceContext$NvsARFaceContextInternalCallback;

    invoke-direct {p0, v0, v1, p1}, Lcom/meicam/sdk/NvsARFaceContext;->nativeSetARFaceCallback(JLcom/meicam/sdk/NvsARFaceContext$NvsARFaceContextInternalCallback;)V

    return-void
.end method

.method protected setContextInterface(J)V
    .locals 0

    .line 161
    iput-wide p1, p0, Lcom/meicam/sdk/NvsARFaceContext;->m_contextInterface:J

    return-void
.end method

.method public setDualBufferInputUsed(Z)V
    .locals 2

    .line 156
    iget-wide v0, p0, Lcom/meicam/sdk/NvsARFaceContext;->m_contextInterface:J

    invoke-direct {p0, v0, v1, p1}, Lcom/meicam/sdk/NvsARFaceContext;->nativeSetDualBufferInputUsed(JZ)V

    return-void
.end method
