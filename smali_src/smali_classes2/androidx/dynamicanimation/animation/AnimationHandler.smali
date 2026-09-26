.class Landroidx/dynamicanimation/animation/AnimationHandler;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/dynamicanimation/animation/AnimationHandler$AnimationFrameCallbackProvider;,
        Landroidx/dynamicanimation/animation/AnimationHandler$FrameCallbackProvider14;,
        Landroidx/dynamicanimation/animation/AnimationHandler$FrameCallbackProvider16;,
        Landroidx/dynamicanimation/animation/AnimationHandler$AnimationCallbackDispatcher;,
        Landroidx/dynamicanimation/animation/AnimationHandler$AnimationFrameCallback;
    }
.end annotation


# static fields
.field private static final FRAME_DELAY_MS:J = 0xaL

.field public static final sAnimatorHandler:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal<",
            "Landroidx/dynamicanimation/animation/AnimationHandler;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field final mAnimationCallbacks:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroidx/dynamicanimation/animation/AnimationHandler$AnimationFrameCallback;",
            ">;"
        }
    .end annotation
.end field

.field private final mCallbackDispatcher:Landroidx/dynamicanimation/animation/AnimationHandler$AnimationCallbackDispatcher;

.field mCurrentFrameTime:J

.field private final mDelayedCallbackStartTime:Landroidx/collection/SimpleArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/collection/SimpleArrayMap<",
            "Landroidx/dynamicanimation/animation/AnimationHandler$AnimationFrameCallback;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private mListDirty:Z

.field private mProvider:Landroidx/dynamicanimation/animation/AnimationHandler$AnimationFrameCallbackProvider;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    .line 2
    new-instance v0, Ljava/lang/ThreadLocal;

    .line 3
    .line 4
    .line 5
    invoke-direct {v0}, Ljava/lang/ThreadLocal;-><init>()V

    .line 6
    .line 7
    sput-object v0, Landroidx/dynamicanimation/animation/AnimationHandler;->sAnimatorHandler:Ljava/lang/ThreadLocal;

    .line 8
    return-void
.end method

.method constructor <init>()V
    .locals 2

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    new-instance v0, Landroidx/collection/SimpleArrayMap;

    .line 6
    .line 7
    .line 8
    invoke-direct {v0}, Landroidx/collection/SimpleArrayMap;-><init>()V

    .line 9
    .line 10
    iput-object v0, p0, Landroidx/dynamicanimation/animation/AnimationHandler;->mDelayedCallbackStartTime:Landroidx/collection/SimpleArrayMap;

    .line 11
    .line 12
    new-instance v0, Ljava/util/ArrayList;

    .line 13
    .line 14
    .line 15
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 16
    .line 17
    iput-object v0, p0, Landroidx/dynamicanimation/animation/AnimationHandler;->mAnimationCallbacks:Ljava/util/ArrayList;

    .line 18
    .line 19
    new-instance v0, Landroidx/dynamicanimation/animation/AnimationHandler$AnimationCallbackDispatcher;

    .line 20
    .line 21
    .line 22
    invoke-direct {v0, p0}, Landroidx/dynamicanimation/animation/AnimationHandler$AnimationCallbackDispatcher;-><init>(Landroidx/dynamicanimation/animation/AnimationHandler;)V

    .line 23
    .line 24
    iput-object v0, p0, Landroidx/dynamicanimation/animation/AnimationHandler;->mCallbackDispatcher:Landroidx/dynamicanimation/animation/AnimationHandler$AnimationCallbackDispatcher;

    .line 25
    .line 26
    const-wide/16 v0, 0x0

    .line 27
    .line 28
    iput-wide v0, p0, Landroidx/dynamicanimation/animation/AnimationHandler;->mCurrentFrameTime:J

    .line 29
    const/4 v0, 0x0

    .line 30
    .line 31
    iput-boolean v0, p0, Landroidx/dynamicanimation/animation/AnimationHandler;->mListDirty:Z

    .line 32
    return-void
.end method

.method private a()V
    .locals 2

    .line 1
    .line 2
    iget-boolean v0, p0, Landroidx/dynamicanimation/animation/AnimationHandler;->mListDirty:Z

    .line 3
    .line 4
    if-eqz v0, :cond_2

    .line 5
    .line 6
    iget-object v0, p0, Landroidx/dynamicanimation/animation/AnimationHandler;->mAnimationCallbacks:Ljava/util/ArrayList;

    .line 7
    .line 8
    .line 9
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 10
    move-result v0

    .line 11
    .line 12
    add-int/lit8 v0, v0, -0x1

    .line 13
    .line 14
    :goto_0
    if-ltz v0, :cond_1

    .line 15
    .line 16
    iget-object v1, p0, Landroidx/dynamicanimation/animation/AnimationHandler;->mAnimationCallbacks:Ljava/util/ArrayList;

    .line 17
    .line 18
    .line 19
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 20
    move-result-object v1

    .line 21
    .line 22
    if-nez v1, :cond_0

    .line 23
    .line 24
    iget-object v1, p0, Landroidx/dynamicanimation/animation/AnimationHandler;->mAnimationCallbacks:Ljava/util/ArrayList;

    .line 25
    .line 26
    .line 27
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 28
    .line 29
    :cond_0
    add-int/lit8 v0, v0, -0x1

    .line 30
    goto :goto_0

    .line 31
    :cond_1
    const/4 v0, 0x0

    .line 32
    .line 33
    iput-boolean v0, p0, Landroidx/dynamicanimation/animation/AnimationHandler;->mListDirty:Z

    .line 34
    :cond_2
    return-void
.end method

.method public static c()Landroidx/dynamicanimation/animation/AnimationHandler;
    .locals 2

    .line 1
    .line 2
    sget-object v0, Landroidx/dynamicanimation/animation/AnimationHandler;->sAnimatorHandler:Ljava/lang/ThreadLocal;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    .line 6
    move-result-object v1

    .line 7
    .line 8
    if-nez v1, :cond_0

    .line 9
    .line 10
    new-instance v1, Landroidx/dynamicanimation/animation/AnimationHandler;

    .line 11
    .line 12
    .line 13
    invoke-direct {v1}, Landroidx/dynamicanimation/animation/AnimationHandler;-><init>()V

    .line 14
    .line 15
    .line 16
    invoke-virtual {v0, v1}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 17
    .line 18
    .line 19
    :cond_0
    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    .line 20
    move-result-object v0

    .line 21
    .line 22
    check-cast v0, Landroidx/dynamicanimation/animation/AnimationHandler;

    .line 23
    return-object v0
.end method

.method private e(Landroidx/dynamicanimation/animation/AnimationHandler$AnimationFrameCallback;J)Z
    .locals 4

    .line 1
    .line 2
    iget-object v0, p0, Landroidx/dynamicanimation/animation/AnimationHandler;->mDelayedCallbackStartTime:Landroidx/collection/SimpleArrayMap;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0, p1}, Landroidx/collection/SimpleArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    check-cast v0, Ljava/lang/Long;

    .line 9
    const/4 v1, 0x1

    .line 10
    .line 11
    if-nez v0, :cond_0

    .line 12
    return v1

    .line 13
    .line 14
    .line 15
    :cond_0
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    .line 16
    move-result-wide v2

    .line 17
    .line 18
    cmp-long p2, v2, p2

    .line 19
    .line 20
    if-gez p2, :cond_1

    .line 21
    .line 22
    iget-object p2, p0, Landroidx/dynamicanimation/animation/AnimationHandler;->mDelayedCallbackStartTime:Landroidx/collection/SimpleArrayMap;

    .line 23
    .line 24
    .line 25
    invoke-virtual {p2, p1}, Landroidx/collection/SimpleArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 26
    return v1

    .line 27
    :cond_1
    const/4 p1, 0x0

    .line 28
    return p1
.end method


# virtual methods
.method b(J)V
    .locals 5

    .line 1
    .line 2
    .line 3
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    .line 4
    move-result-wide v0

    .line 5
    const/4 v2, 0x0

    .line 6
    .line 7
    :goto_0
    iget-object v3, p0, Landroidx/dynamicanimation/animation/AnimationHandler;->mAnimationCallbacks:Ljava/util/ArrayList;

    .line 8
    .line 9
    .line 10
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    .line 11
    move-result v3

    .line 12
    .line 13
    if-ge v2, v3, :cond_2

    .line 14
    .line 15
    iget-object v3, p0, Landroidx/dynamicanimation/animation/AnimationHandler;->mAnimationCallbacks:Ljava/util/ArrayList;

    .line 16
    .line 17
    .line 18
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 19
    move-result-object v3

    .line 20
    .line 21
    check-cast v3, Landroidx/dynamicanimation/animation/AnimationHandler$AnimationFrameCallback;

    .line 22
    .line 23
    if-nez v3, :cond_0

    .line 24
    goto :goto_1

    .line 25
    .line 26
    .line 27
    :cond_0
    invoke-direct {p0, v3, v0, v1}, Landroidx/dynamicanimation/animation/AnimationHandler;->e(Landroidx/dynamicanimation/animation/AnimationHandler$AnimationFrameCallback;J)Z

    .line 28
    move-result v4

    .line 29
    .line 30
    if-eqz v4, :cond_1

    .line 31
    .line 32
    .line 33
    invoke-interface {v3, p1, p2}, Landroidx/dynamicanimation/animation/AnimationHandler$AnimationFrameCallback;->a(J)Z

    .line 34
    .line 35
    :cond_1
    :goto_1
    add-int/lit8 v2, v2, 0x1

    .line 36
    goto :goto_0

    .line 37
    .line 38
    .line 39
    :cond_2
    invoke-direct {p0}, Landroidx/dynamicanimation/animation/AnimationHandler;->a()V

    .line 40
    return-void
.end method

.method d()Landroidx/dynamicanimation/animation/AnimationHandler$AnimationFrameCallbackProvider;
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Landroidx/dynamicanimation/animation/AnimationHandler;->mProvider:Landroidx/dynamicanimation/animation/AnimationHandler$AnimationFrameCallbackProvider;

    .line 3
    .line 4
    if-nez v0, :cond_0

    .line 5
    .line 6
    new-instance v0, Landroidx/dynamicanimation/animation/AnimationHandler$FrameCallbackProvider16;

    .line 7
    .line 8
    iget-object v1, p0, Landroidx/dynamicanimation/animation/AnimationHandler;->mCallbackDispatcher:Landroidx/dynamicanimation/animation/AnimationHandler$AnimationCallbackDispatcher;

    .line 9
    .line 10
    .line 11
    invoke-direct {v0, v1}, Landroidx/dynamicanimation/animation/AnimationHandler$FrameCallbackProvider16;-><init>(Landroidx/dynamicanimation/animation/AnimationHandler$AnimationCallbackDispatcher;)V

    .line 12
    .line 13
    iput-object v0, p0, Landroidx/dynamicanimation/animation/AnimationHandler;->mProvider:Landroidx/dynamicanimation/animation/AnimationHandler$AnimationFrameCallbackProvider;

    .line 14
    .line 15
    :cond_0
    iget-object v0, p0, Landroidx/dynamicanimation/animation/AnimationHandler;->mProvider:Landroidx/dynamicanimation/animation/AnimationHandler$AnimationFrameCallbackProvider;

    .line 16
    return-object v0
.end method

.method public f(Landroidx/dynamicanimation/animation/AnimationHandler$AnimationFrameCallback;)V
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Landroidx/dynamicanimation/animation/AnimationHandler;->mDelayedCallbackStartTime:Landroidx/collection/SimpleArrayMap;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0, p1}, Landroidx/collection/SimpleArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    .line 7
    iget-object v0, p0, Landroidx/dynamicanimation/animation/AnimationHandler;->mAnimationCallbacks:Ljava/util/ArrayList;

    .line 8
    .line 9
    .line 10
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    .line 11
    move-result p1

    .line 12
    .line 13
    if-ltz p1, :cond_0

    .line 14
    .line 15
    iget-object v0, p0, Landroidx/dynamicanimation/animation/AnimationHandler;->mAnimationCallbacks:Ljava/util/ArrayList;

    .line 16
    const/4 v1, 0x0

    .line 17
    .line 18
    .line 19
    invoke-virtual {v0, p1, v1}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 20
    const/4 p1, 0x1

    .line 21
    .line 22
    iput-boolean p1, p0, Landroidx/dynamicanimation/animation/AnimationHandler;->mListDirty:Z

    .line 23
    :cond_0
    return-void
.end method
