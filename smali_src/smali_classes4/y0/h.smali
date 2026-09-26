.class public final Ly0/h;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ly0/c;
.implements Lcom/bumptech/glide/request/target/d;
.implements Ly0/g;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ly0/h$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<R:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ly0/c;",
        "Lcom/bumptech/glide/request/target/d;",
        "Ly0/g;"
    }
.end annotation


# static fields
.field private static final GLIDE_TAG:Ljava/lang/String; = "Glide"

.field private static final IS_VERBOSE_LOGGABLE:Z

.field private static final TAG:Ljava/lang/String; = "Request"


# instance fields
.field private final animationFactory:Lcom/bumptech/glide/request/transition/c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/bumptech/glide/request/transition/c<",
            "-TR;>;"
        }
    .end annotation
.end field

.field private final callbackExecutor:Ljava/util/concurrent/Executor;

.field private final context:Landroid/content/Context;

.field private volatile engine:Lcom/bumptech/glide/load/engine/k;

.field private errorDrawable:Landroid/graphics/drawable/Drawable;
    .annotation build Landroidx/annotation/GuardedBy;
    .end annotation

    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private fallbackDrawable:Landroid/graphics/drawable/Drawable;
    .annotation build Landroidx/annotation/GuardedBy;
    .end annotation

    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private final glideContext:Lcom/bumptech/glide/d;

.field private height:I
    .annotation build Landroidx/annotation/GuardedBy;
    .end annotation
.end field

.field private isCallingCallbacks:Z
    .annotation build Landroidx/annotation/GuardedBy;
    .end annotation
.end field

.field private loadStatus:Lcom/bumptech/glide/load/engine/k$d;
    .annotation build Landroidx/annotation/GuardedBy;
    .end annotation
.end field

.field private final model:Ljava/lang/Object;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private final overrideHeight:I

.field private final overrideWidth:I

.field private placeholderDrawable:Landroid/graphics/drawable/Drawable;
    .annotation build Landroidx/annotation/GuardedBy;
    .end annotation

    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private final priority:Lcom/bumptech/glide/f;

.field private final requestCoordinator:Ly0/d;

.field private final requestListeners:Ljava/util/List;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ly0/e<",
            "TR;>;>;"
        }
    .end annotation
.end field

.field private final requestLock:Ljava/lang/Object;

.field private final requestOptions:Ly0/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ly0/a<",
            "*>;"
        }
    .end annotation
.end field

.field private requestOrigin:Ljava/lang/RuntimeException;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private resource:Lcom/bumptech/glide/load/engine/v;
    .annotation build Landroidx/annotation/GuardedBy;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/bumptech/glide/load/engine/v<",
            "TR;>;"
        }
    .end annotation
.end field

.field private startTime:J
    .annotation build Landroidx/annotation/GuardedBy;
    .end annotation
.end field

.field private final stateVerifier:La1/c;

.field private status:Ly0/h$a;
    .annotation build Landroidx/annotation/GuardedBy;
    .end annotation
.end field

.field private final tag:Ljava/lang/String;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private final target:Lcom/bumptech/glide/request/target/e;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/bumptech/glide/request/target/e<",
            "TR;>;"
        }
    .end annotation
.end field

.field private final targetListener:Ly0/e;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ly0/e<",
            "TR;>;"
        }
    .end annotation
.end field

.field private final transcodeClass:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "TR;>;"
        }
    .end annotation
.end field

.field private width:I
    .annotation build Landroidx/annotation/GuardedBy;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    .line 2
    const-string v0, "Request"

    .line 3
    const/4 v1, 0x2

    .line 4
    .line 5
    .line 6
    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    .line 7
    move-result v0

    .line 8
    .line 9
    sput-boolean v0, Ly0/h;->IS_VERBOSE_LOGGABLE:Z

    .line 10
    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Lcom/bumptech/glide/d;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Class;Ly0/a;IILcom/bumptech/glide/f;Lcom/bumptech/glide/request/target/e;Ly0/e;Ljava/util/List;Ly0/d;Lcom/bumptech/glide/load/engine/k;Lcom/bumptech/glide/request/transition/c;Ljava/util/concurrent/Executor;)V
    .locals 3
    .param p3    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p4    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p11    # Ly0/e;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p12    # Ljava/util/List;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/bumptech/glide/d;",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            "Ljava/lang/Class<",
            "TR;>;",
            "Ly0/a<",
            "*>;II",
            "Lcom/bumptech/glide/f;",
            "Lcom/bumptech/glide/request/target/e<",
            "TR;>;",
            "Ly0/e<",
            "TR;>;",
            "Ljava/util/List<",
            "Ly0/e<",
            "TR;>;>;",
            "Ly0/d;",
            "Lcom/bumptech/glide/load/engine/k;",
            "Lcom/bumptech/glide/request/transition/c<",
            "-TR;>;",
            "Ljava/util/concurrent/Executor;",
            ")V"
        }
    .end annotation

    move-object v0, p0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-boolean v1, Ly0/h;->IS_VERBOSE_LOGGABLE:Z

    if-eqz v1, :cond_0

    .line 2
    invoke-super {p0}, Ljava/lang/Object;->hashCode()I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    iput-object v1, v0, Ly0/h;->tag:Ljava/lang/String;

    .line 3
    invoke-static {}, La1/c;->a()La1/c;

    move-result-object v1

    iput-object v1, v0, Ly0/h;->stateVerifier:La1/c;

    move-object v1, p3

    iput-object v1, v0, Ly0/h;->requestLock:Ljava/lang/Object;

    move-object v1, p1

    iput-object v1, v0, Ly0/h;->context:Landroid/content/Context;

    move-object v1, p2

    iput-object v1, v0, Ly0/h;->glideContext:Lcom/bumptech/glide/d;

    move-object v2, p4

    iput-object v2, v0, Ly0/h;->model:Ljava/lang/Object;

    move-object v2, p5

    iput-object v2, v0, Ly0/h;->transcodeClass:Ljava/lang/Class;

    move-object v2, p6

    iput-object v2, v0, Ly0/h;->requestOptions:Ly0/a;

    move v2, p7

    iput v2, v0, Ly0/h;->overrideWidth:I

    move v2, p8

    iput v2, v0, Ly0/h;->overrideHeight:I

    move-object v2, p9

    iput-object v2, v0, Ly0/h;->priority:Lcom/bumptech/glide/f;

    move-object v2, p10

    iput-object v2, v0, Ly0/h;->target:Lcom/bumptech/glide/request/target/e;

    move-object v2, p11

    iput-object v2, v0, Ly0/h;->targetListener:Ly0/e;

    move-object v2, p12

    iput-object v2, v0, Ly0/h;->requestListeners:Ljava/util/List;

    move-object/from16 v2, p13

    iput-object v2, v0, Ly0/h;->requestCoordinator:Ly0/d;

    move-object/from16 v2, p14

    iput-object v2, v0, Ly0/h;->engine:Lcom/bumptech/glide/load/engine/k;

    move-object/from16 v2, p15

    iput-object v2, v0, Ly0/h;->animationFactory:Lcom/bumptech/glide/request/transition/c;

    move-object/from16 v2, p16

    iput-object v2, v0, Ly0/h;->callbackExecutor:Ljava/util/concurrent/Executor;

    .line 4
    sget-object v2, Ly0/h$a;->PENDING:Ly0/h$a;

    iput-object v2, v0, Ly0/h;->status:Ly0/h$a;

    iget-object v2, v0, Ly0/h;->requestOrigin:Ljava/lang/RuntimeException;

    if-nez v2, :cond_1

    .line 5
    invoke-virtual {p2}, Lcom/bumptech/glide/d;->h()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 6
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Glide request origin trace"

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    iput-object v1, v0, Ly0/h;->requestOrigin:Ljava/lang/RuntimeException;

    :cond_1
    return-void
.end method

.method private A()V
    .locals 2
    .annotation build Landroidx/annotation/GuardedBy;
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Ly0/h;->l()Z

    .line 4
    move-result v0

    .line 5
    .line 6
    if-nez v0, :cond_0

    .line 7
    return-void

    .line 8
    .line 9
    :cond_0
    iget-object v0, p0, Ly0/h;->model:Ljava/lang/Object;

    .line 10
    .line 11
    if-nez v0, :cond_1

    .line 12
    .line 13
    .line 14
    invoke-direct {p0}, Ly0/h;->p()Landroid/graphics/drawable/Drawable;

    .line 15
    move-result-object v0

    .line 16
    goto :goto_0

    .line 17
    :cond_1
    const/4 v0, 0x0

    .line 18
    .line 19
    :goto_0
    if-nez v0, :cond_2

    .line 20
    .line 21
    .line 22
    invoke-direct {p0}, Ly0/h;->o()Landroid/graphics/drawable/Drawable;

    .line 23
    move-result-object v0

    .line 24
    .line 25
    :cond_2
    if-nez v0, :cond_3

    .line 26
    .line 27
    .line 28
    invoke-direct {p0}, Ly0/h;->q()Landroid/graphics/drawable/Drawable;

    .line 29
    move-result-object v0

    .line 30
    .line 31
    :cond_3
    iget-object v1, p0, Ly0/h;->target:Lcom/bumptech/glide/request/target/e;

    .line 32
    .line 33
    .line 34
    invoke-interface {v1, v0}, Lcom/bumptech/glide/request/target/e;->g(Landroid/graphics/drawable/Drawable;)V

    .line 35
    return-void
.end method

.method private i()V
    .locals 2
    .annotation build Landroidx/annotation/GuardedBy;
    .end annotation

    .line 1
    .line 2
    iget-boolean v0, p0, Ly0/h;->isCallingCallbacks:Z

    .line 3
    .line 4
    if-nez v0, :cond_0

    .line 5
    return-void

    .line 6
    .line 7
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 8
    .line 9
    const-string v1, "You can\'t start or clear loads in RequestListener or Target callbacks. If you\'re trying to start a fallback request when a load fails, use RequestBuilder#error(RequestBuilder). Otherwise consider posting your into() or clear() calls to the main thread using a Handler instead."

    .line 10
    .line 11
    .line 12
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 13
    throw v0
.end method

.method private k()Z
    .locals 1
    .annotation build Landroidx/annotation/GuardedBy;
    .end annotation

    .line 1
    .line 2
    iget-object v0, p0, Ly0/h;->requestCoordinator:Ly0/d;

    .line 3
    .line 4
    if-eqz v0, :cond_1

    .line 5
    .line 6
    .line 7
    invoke-interface {v0, p0}, Ly0/d;->d(Ly0/c;)Z

    .line 8
    move-result v0

    .line 9
    .line 10
    if-eqz v0, :cond_0

    .line 11
    goto :goto_0

    .line 12
    :cond_0
    const/4 v0, 0x0

    .line 13
    goto :goto_1

    .line 14
    :cond_1
    :goto_0
    const/4 v0, 0x1

    .line 15
    :goto_1
    return v0
.end method

.method private l()Z
    .locals 1
    .annotation build Landroidx/annotation/GuardedBy;
    .end annotation

    .line 1
    .line 2
    iget-object v0, p0, Ly0/h;->requestCoordinator:Ly0/d;

    .line 3
    .line 4
    if-eqz v0, :cond_1

    .line 5
    .line 6
    .line 7
    invoke-interface {v0, p0}, Ly0/d;->i(Ly0/c;)Z

    .line 8
    move-result v0

    .line 9
    .line 10
    if-eqz v0, :cond_0

    .line 11
    goto :goto_0

    .line 12
    :cond_0
    const/4 v0, 0x0

    .line 13
    goto :goto_1

    .line 14
    :cond_1
    :goto_0
    const/4 v0, 0x1

    .line 15
    :goto_1
    return v0
.end method

.method private m()Z
    .locals 1
    .annotation build Landroidx/annotation/GuardedBy;
    .end annotation

    .line 1
    .line 2
    iget-object v0, p0, Ly0/h;->requestCoordinator:Ly0/d;

    .line 3
    .line 4
    if-eqz v0, :cond_1

    .line 5
    .line 6
    .line 7
    invoke-interface {v0, p0}, Ly0/d;->c(Ly0/c;)Z

    .line 8
    move-result v0

    .line 9
    .line 10
    if-eqz v0, :cond_0

    .line 11
    goto :goto_0

    .line 12
    :cond_0
    const/4 v0, 0x0

    .line 13
    goto :goto_1

    .line 14
    :cond_1
    :goto_0
    const/4 v0, 0x1

    .line 15
    :goto_1
    return v0
.end method

.method private n()V
    .locals 1
    .annotation build Landroidx/annotation/GuardedBy;
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Ly0/h;->i()V

    .line 4
    .line 5
    iget-object v0, p0, Ly0/h;->stateVerifier:La1/c;

    .line 6
    .line 7
    .line 8
    invoke-virtual {v0}, La1/c;->c()V

    .line 9
    .line 10
    iget-object v0, p0, Ly0/h;->target:Lcom/bumptech/glide/request/target/e;

    .line 11
    .line 12
    .line 13
    invoke-interface {v0, p0}, Lcom/bumptech/glide/request/target/e;->b(Lcom/bumptech/glide/request/target/d;)V

    .line 14
    .line 15
    iget-object v0, p0, Ly0/h;->loadStatus:Lcom/bumptech/glide/load/engine/k$d;

    .line 16
    .line 17
    if-eqz v0, :cond_0

    .line 18
    .line 19
    .line 20
    invoke-virtual {v0}, Lcom/bumptech/glide/load/engine/k$d;->a()V

    .line 21
    const/4 v0, 0x0

    .line 22
    .line 23
    iput-object v0, p0, Ly0/h;->loadStatus:Lcom/bumptech/glide/load/engine/k$d;

    .line 24
    :cond_0
    return-void
.end method

.method private o()Landroid/graphics/drawable/Drawable;
    .locals 1
    .annotation build Landroidx/annotation/GuardedBy;
    .end annotation

    .line 1
    .line 2
    iget-object v0, p0, Ly0/h;->errorDrawable:Landroid/graphics/drawable/Drawable;

    .line 3
    .line 4
    if-nez v0, :cond_0

    .line 5
    .line 6
    iget-object v0, p0, Ly0/h;->requestOptions:Ly0/a;

    .line 7
    .line 8
    .line 9
    invoke-virtual {v0}, Ly0/a;->l()Landroid/graphics/drawable/Drawable;

    .line 10
    move-result-object v0

    .line 11
    .line 12
    iput-object v0, p0, Ly0/h;->errorDrawable:Landroid/graphics/drawable/Drawable;

    .line 13
    .line 14
    if-nez v0, :cond_0

    .line 15
    .line 16
    iget-object v0, p0, Ly0/h;->requestOptions:Ly0/a;

    .line 17
    .line 18
    .line 19
    invoke-virtual {v0}, Ly0/a;->k()I

    .line 20
    move-result v0

    .line 21
    .line 22
    if-lez v0, :cond_0

    .line 23
    .line 24
    iget-object v0, p0, Ly0/h;->requestOptions:Ly0/a;

    .line 25
    .line 26
    .line 27
    invoke-virtual {v0}, Ly0/a;->k()I

    .line 28
    move-result v0

    .line 29
    .line 30
    .line 31
    invoke-direct {p0, v0}, Ly0/h;->s(I)Landroid/graphics/drawable/Drawable;

    .line 32
    move-result-object v0

    .line 33
    .line 34
    iput-object v0, p0, Ly0/h;->errorDrawable:Landroid/graphics/drawable/Drawable;

    .line 35
    .line 36
    :cond_0
    iget-object v0, p0, Ly0/h;->errorDrawable:Landroid/graphics/drawable/Drawable;

    .line 37
    return-object v0
.end method

.method private p()Landroid/graphics/drawable/Drawable;
    .locals 1
    .annotation build Landroidx/annotation/GuardedBy;
    .end annotation

    .line 1
    .line 2
    iget-object v0, p0, Ly0/h;->fallbackDrawable:Landroid/graphics/drawable/Drawable;

    .line 3
    .line 4
    if-nez v0, :cond_0

    .line 5
    .line 6
    iget-object v0, p0, Ly0/h;->requestOptions:Ly0/a;

    .line 7
    .line 8
    .line 9
    invoke-virtual {v0}, Ly0/a;->m()Landroid/graphics/drawable/Drawable;

    .line 10
    move-result-object v0

    .line 11
    .line 12
    iput-object v0, p0, Ly0/h;->fallbackDrawable:Landroid/graphics/drawable/Drawable;

    .line 13
    .line 14
    if-nez v0, :cond_0

    .line 15
    .line 16
    iget-object v0, p0, Ly0/h;->requestOptions:Ly0/a;

    .line 17
    .line 18
    .line 19
    invoke-virtual {v0}, Ly0/a;->n()I

    .line 20
    move-result v0

    .line 21
    .line 22
    if-lez v0, :cond_0

    .line 23
    .line 24
    iget-object v0, p0, Ly0/h;->requestOptions:Ly0/a;

    .line 25
    .line 26
    .line 27
    invoke-virtual {v0}, Ly0/a;->n()I

    .line 28
    move-result v0

    .line 29
    .line 30
    .line 31
    invoke-direct {p0, v0}, Ly0/h;->s(I)Landroid/graphics/drawable/Drawable;

    .line 32
    move-result-object v0

    .line 33
    .line 34
    iput-object v0, p0, Ly0/h;->fallbackDrawable:Landroid/graphics/drawable/Drawable;

    .line 35
    .line 36
    :cond_0
    iget-object v0, p0, Ly0/h;->fallbackDrawable:Landroid/graphics/drawable/Drawable;

    .line 37
    return-object v0
.end method

.method private q()Landroid/graphics/drawable/Drawable;
    .locals 1
    .annotation build Landroidx/annotation/GuardedBy;
    .end annotation

    .line 1
    .line 2
    iget-object v0, p0, Ly0/h;->placeholderDrawable:Landroid/graphics/drawable/Drawable;

    .line 3
    .line 4
    if-nez v0, :cond_0

    .line 5
    .line 6
    iget-object v0, p0, Ly0/h;->requestOptions:Ly0/a;

    .line 7
    .line 8
    .line 9
    invoke-virtual {v0}, Ly0/a;->s()Landroid/graphics/drawable/Drawable;

    .line 10
    move-result-object v0

    .line 11
    .line 12
    iput-object v0, p0, Ly0/h;->placeholderDrawable:Landroid/graphics/drawable/Drawable;

    .line 13
    .line 14
    if-nez v0, :cond_0

    .line 15
    .line 16
    iget-object v0, p0, Ly0/h;->requestOptions:Ly0/a;

    .line 17
    .line 18
    .line 19
    invoke-virtual {v0}, Ly0/a;->t()I

    .line 20
    move-result v0

    .line 21
    .line 22
    if-lez v0, :cond_0

    .line 23
    .line 24
    iget-object v0, p0, Ly0/h;->requestOptions:Ly0/a;

    .line 25
    .line 26
    .line 27
    invoke-virtual {v0}, Ly0/a;->t()I

    .line 28
    move-result v0

    .line 29
    .line 30
    .line 31
    invoke-direct {p0, v0}, Ly0/h;->s(I)Landroid/graphics/drawable/Drawable;

    .line 32
    move-result-object v0

    .line 33
    .line 34
    iput-object v0, p0, Ly0/h;->placeholderDrawable:Landroid/graphics/drawable/Drawable;

    .line 35
    .line 36
    :cond_0
    iget-object v0, p0, Ly0/h;->placeholderDrawable:Landroid/graphics/drawable/Drawable;

    .line 37
    return-object v0
.end method

.method private r()Z
    .locals 1
    .annotation build Landroidx/annotation/GuardedBy;
    .end annotation

    .line 1
    .line 2
    iget-object v0, p0, Ly0/h;->requestCoordinator:Ly0/d;

    .line 3
    .line 4
    if-eqz v0, :cond_1

    .line 5
    .line 6
    .line 7
    invoke-interface {v0}, Ly0/d;->getRoot()Ly0/d;

    .line 8
    move-result-object v0

    .line 9
    .line 10
    .line 11
    invoke-interface {v0}, Ly0/d;->a()Z

    .line 12
    move-result v0

    .line 13
    .line 14
    if-nez v0, :cond_0

    .line 15
    goto :goto_0

    .line 16
    :cond_0
    const/4 v0, 0x0

    .line 17
    goto :goto_1

    .line 18
    :cond_1
    :goto_0
    const/4 v0, 0x1

    .line 19
    :goto_1
    return v0
.end method

.method private s(I)Landroid/graphics/drawable/Drawable;
    .locals 2
    .param p1    # I
        .annotation build Landroidx/annotation/DrawableRes;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/GuardedBy;
    .end annotation

    .line 1
    .line 2
    iget-object v0, p0, Ly0/h;->requestOptions:Ly0/a;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0}, Ly0/a;->y()Landroid/content/res/Resources$Theme;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    iget-object v0, p0, Ly0/h;->requestOptions:Ly0/a;

    .line 11
    .line 12
    .line 13
    invoke-virtual {v0}, Ly0/a;->y()Landroid/content/res/Resources$Theme;

    .line 14
    move-result-object v0

    .line 15
    goto :goto_0

    .line 16
    .line 17
    :cond_0
    iget-object v0, p0, Ly0/h;->context:Landroid/content/Context;

    .line 18
    .line 19
    .line 20
    invoke-virtual {v0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    .line 21
    move-result-object v0

    .line 22
    .line 23
    :goto_0
    iget-object v1, p0, Ly0/h;->glideContext:Lcom/bumptech/glide/d;

    .line 24
    .line 25
    .line 26
    invoke-static {v1, p1, v0}, Lcom/bumptech/glide/load/resource/drawable/a;->a(Landroid/content/Context;ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    .line 27
    move-result-object p1

    .line 28
    return-object p1
.end method

.method private t(Ljava/lang/String;)V
    .locals 1

    .line 1
    .line 2
    new-instance v0, Ljava/lang/StringBuilder;

    .line 3
    .line 4
    .line 5
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 6
    .line 7
    .line 8
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9
    .line 10
    const-string p1, " this: "

    .line 11
    .line 12
    .line 13
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 14
    .line 15
    iget-object p1, p0, Ly0/h;->tag:Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 19
    .line 20
    .line 21
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 22
    move-result-object p1

    .line 23
    .line 24
    const-string v0, "Request"

    .line 25
    .line 26
    .line 27
    invoke-static {v0, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 28
    return-void
.end method

.method private static u(IF)I
    .locals 1

    .line 1
    .line 2
    const/high16 v0, -0x80000000

    .line 3
    .line 4
    if-ne p0, v0, :cond_0

    .line 5
    goto :goto_0

    .line 6
    :cond_0
    int-to-float p0, p0

    .line 7
    mul-float/2addr p1, p0

    .line 8
    .line 9
    .line 10
    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    .line 11
    move-result p0

    .line 12
    :goto_0
    return p0
.end method

.method private v()V
    .locals 1
    .annotation build Landroidx/annotation/GuardedBy;
    .end annotation

    .line 1
    .line 2
    iget-object v0, p0, Ly0/h;->requestCoordinator:Ly0/d;

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    .line 7
    invoke-interface {v0, p0}, Ly0/d;->b(Ly0/c;)V

    .line 8
    :cond_0
    return-void
.end method

.method private w()V
    .locals 1
    .annotation build Landroidx/annotation/GuardedBy;
    .end annotation

    .line 1
    .line 2
    iget-object v0, p0, Ly0/h;->requestCoordinator:Ly0/d;

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    .line 7
    invoke-interface {v0, p0}, Ly0/d;->g(Ly0/c;)V

    .line 8
    :cond_0
    return-void
.end method

.method public static x(Landroid/content/Context;Lcom/bumptech/glide/d;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Class;Ly0/a;IILcom/bumptech/glide/f;Lcom/bumptech/glide/request/target/e;Ly0/e;Ljava/util/List;Ly0/d;Lcom/bumptech/glide/load/engine/k;Lcom/bumptech/glide/request/transition/c;Ljava/util/concurrent/Executor;)Ly0/h;
    .locals 18
    .param p11    # Ljava/util/List;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "Landroid/content/Context;",
            "Lcom/bumptech/glide/d;",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            "Ljava/lang/Class<",
            "TR;>;",
            "Ly0/a<",
            "*>;II",
            "Lcom/bumptech/glide/f;",
            "Lcom/bumptech/glide/request/target/e<",
            "TR;>;",
            "Ly0/e<",
            "TR;>;",
            "Ljava/util/List<",
            "Ly0/e<",
            "TR;>;>;",
            "Ly0/d;",
            "Lcom/bumptech/glide/load/engine/k;",
            "Lcom/bumptech/glide/request/transition/c<",
            "-TR;>;",
            "Ljava/util/concurrent/Executor;",
            ")",
            "Ly0/h<",
            "TR;>;"
        }
    .end annotation

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    move/from16 v7, p6

    move/from16 v8, p7

    move-object/from16 v9, p8

    move-object/from16 v10, p9

    move-object/from16 v11, p10

    move-object/from16 v12, p11

    move-object/from16 v13, p12

    move-object/from16 v14, p13

    move-object/from16 v15, p14

    move-object/from16 v16, p15

    .line 1
    new-instance v17, Ly0/h;

    move-object/from16 v0, v17

    invoke-direct/range {v0 .. v16}, Ly0/h;-><init>(Landroid/content/Context;Lcom/bumptech/glide/d;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Class;Ly0/a;IILcom/bumptech/glide/f;Lcom/bumptech/glide/request/target/e;Ly0/e;Ljava/util/List;Ly0/d;Lcom/bumptech/glide/load/engine/k;Lcom/bumptech/glide/request/transition/c;Ljava/util/concurrent/Executor;)V

    return-object v17
.end method

.method private y(Lcom/bumptech/glide/load/engine/q;I)V
    .locals 8

    .line 1
    .line 2
    iget-object v0, p0, Ly0/h;->stateVerifier:La1/c;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0}, La1/c;->c()V

    .line 6
    .line 7
    iget-object v0, p0, Ly0/h;->requestLock:Ljava/lang/Object;

    .line 8
    monitor-enter v0

    .line 9
    .line 10
    :try_start_0
    iget-object v1, p0, Ly0/h;->requestOrigin:Ljava/lang/RuntimeException;

    .line 11
    .line 12
    .line 13
    invoke-virtual {p1, v1}, Lcom/bumptech/glide/load/engine/q;->k(Ljava/lang/Exception;)V

    .line 14
    .line 15
    iget-object v1, p0, Ly0/h;->glideContext:Lcom/bumptech/glide/d;

    .line 16
    .line 17
    .line 18
    invoke-virtual {v1}, Lcom/bumptech/glide/d;->f()I

    .line 19
    move-result v1

    .line 20
    .line 21
    if-gt v1, p2, :cond_0

    .line 22
    .line 23
    const-string p2, "Glide"

    .line 24
    .line 25
    new-instance v2, Ljava/lang/StringBuilder;

    .line 26
    .line 27
    .line 28
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 29
    .line 30
    const-string v3, "Load failed for "

    .line 31
    .line 32
    .line 33
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 34
    .line 35
    iget-object v3, p0, Ly0/h;->model:Ljava/lang/Object;

    .line 36
    .line 37
    .line 38
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 39
    .line 40
    const-string v3, " with size ["

    .line 41
    .line 42
    .line 43
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 44
    .line 45
    iget v3, p0, Ly0/h;->width:I

    .line 46
    .line 47
    .line 48
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 49
    .line 50
    .line 51
    const-string/jumbo v3, "x"

    .line 52
    .line 53
    .line 54
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 55
    .line 56
    iget v3, p0, Ly0/h;->height:I

    .line 57
    .line 58
    .line 59
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 60
    .line 61
    const-string v3, "]"

    .line 62
    .line 63
    .line 64
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 65
    .line 66
    .line 67
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 68
    move-result-object v2

    .line 69
    .line 70
    .line 71
    invoke-static {p2, v2, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 72
    const/4 p2, 0x4

    .line 73
    .line 74
    if-gt v1, p2, :cond_0

    .line 75
    .line 76
    const-string p2, "Glide"

    .line 77
    .line 78
    .line 79
    invoke-virtual {p1, p2}, Lcom/bumptech/glide/load/engine/q;->g(Ljava/lang/String;)V

    .line 80
    goto :goto_0

    .line 81
    :catchall_0
    move-exception p1

    .line 82
    goto :goto_4

    .line 83
    :cond_0
    :goto_0
    const/4 p2, 0x0

    .line 84
    .line 85
    iput-object p2, p0, Ly0/h;->loadStatus:Lcom/bumptech/glide/load/engine/k$d;

    .line 86
    .line 87
    sget-object p2, Ly0/h$a;->FAILED:Ly0/h$a;

    .line 88
    .line 89
    iput-object p2, p0, Ly0/h;->status:Ly0/h$a;

    .line 90
    const/4 p2, 0x1

    .line 91
    .line 92
    iput-boolean p2, p0, Ly0/h;->isCallingCallbacks:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 93
    const/4 v1, 0x0

    .line 94
    .line 95
    :try_start_1
    iget-object v2, p0, Ly0/h;->requestListeners:Ljava/util/List;

    .line 96
    .line 97
    if-eqz v2, :cond_1

    .line 98
    .line 99
    .line 100
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 101
    move-result-object v2

    .line 102
    move v3, v1

    .line 103
    .line 104
    .line 105
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 106
    move-result v4

    .line 107
    .line 108
    if-eqz v4, :cond_2

    .line 109
    .line 110
    .line 111
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 112
    move-result-object v4

    .line 113
    .line 114
    check-cast v4, Ly0/e;

    .line 115
    .line 116
    iget-object v5, p0, Ly0/h;->model:Ljava/lang/Object;

    .line 117
    .line 118
    iget-object v6, p0, Ly0/h;->target:Lcom/bumptech/glide/request/target/e;

    .line 119
    .line 120
    .line 121
    invoke-direct {p0}, Ly0/h;->r()Z

    .line 122
    move-result v7

    .line 123
    .line 124
    .line 125
    invoke-interface {v4, p1, v5, v6, v7}, Ly0/e;->a(Lcom/bumptech/glide/load/engine/q;Ljava/lang/Object;Lcom/bumptech/glide/request/target/e;Z)Z

    .line 126
    move-result v4

    .line 127
    or-int/2addr v3, v4

    .line 128
    goto :goto_1

    .line 129
    :catchall_1
    move-exception p1

    .line 130
    goto :goto_3

    .line 131
    :cond_1
    move v3, v1

    .line 132
    .line 133
    :cond_2
    iget-object v2, p0, Ly0/h;->targetListener:Ly0/e;

    .line 134
    .line 135
    if-eqz v2, :cond_3

    .line 136
    .line 137
    iget-object v4, p0, Ly0/h;->model:Ljava/lang/Object;

    .line 138
    .line 139
    iget-object v5, p0, Ly0/h;->target:Lcom/bumptech/glide/request/target/e;

    .line 140
    .line 141
    .line 142
    invoke-direct {p0}, Ly0/h;->r()Z

    .line 143
    move-result v6

    .line 144
    .line 145
    .line 146
    invoke-interface {v2, p1, v4, v5, v6}, Ly0/e;->a(Lcom/bumptech/glide/load/engine/q;Ljava/lang/Object;Lcom/bumptech/glide/request/target/e;Z)Z

    .line 147
    move-result p1

    .line 148
    .line 149
    if-eqz p1, :cond_3

    .line 150
    goto :goto_2

    .line 151
    :cond_3
    move p2, v1

    .line 152
    .line 153
    :goto_2
    or-int p1, v3, p2

    .line 154
    .line 155
    if-nez p1, :cond_4

    .line 156
    .line 157
    .line 158
    invoke-direct {p0}, Ly0/h;->A()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 159
    .line 160
    :cond_4
    :try_start_2
    iput-boolean v1, p0, Ly0/h;->isCallingCallbacks:Z

    .line 161
    .line 162
    .line 163
    invoke-direct {p0}, Ly0/h;->v()V

    .line 164
    monitor-exit v0

    .line 165
    return-void

    .line 166
    .line 167
    :goto_3
    iput-boolean v1, p0, Ly0/h;->isCallingCallbacks:Z

    .line 168
    throw p1

    .line 169
    :goto_4
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 170
    throw p1
.end method

.method private z(Lcom/bumptech/glide/load/engine/v;Ljava/lang/Object;Lcom/bumptech/glide/load/a;)V
    .locals 10
    .annotation build Landroidx/annotation/GuardedBy;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/load/engine/v<",
            "TR;>;TR;",
            "Lcom/bumptech/glide/load/a;",
            ")V"
        }
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Ly0/h;->r()Z

    .line 4
    move-result v6

    .line 5
    .line 6
    sget-object v0, Ly0/h$a;->COMPLETE:Ly0/h$a;

    .line 7
    .line 8
    iput-object v0, p0, Ly0/h;->status:Ly0/h$a;

    .line 9
    .line 10
    iput-object p1, p0, Ly0/h;->resource:Lcom/bumptech/glide/load/engine/v;

    .line 11
    .line 12
    iget-object p1, p0, Ly0/h;->glideContext:Lcom/bumptech/glide/d;

    .line 13
    .line 14
    .line 15
    invoke-virtual {p1}, Lcom/bumptech/glide/d;->f()I

    .line 16
    move-result p1

    .line 17
    const/4 v0, 0x3

    .line 18
    .line 19
    if-gt p1, v0, :cond_0

    .line 20
    .line 21
    new-instance p1, Ljava/lang/StringBuilder;

    .line 22
    .line 23
    .line 24
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 25
    .line 26
    const-string v0, "Finished loading "

    .line 27
    .line 28
    .line 29
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 30
    .line 31
    .line 32
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 33
    move-result-object v0

    .line 34
    .line 35
    .line 36
    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    .line 37
    move-result-object v0

    .line 38
    .line 39
    .line 40
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 41
    .line 42
    const-string v0, " from "

    .line 43
    .line 44
    .line 45
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 46
    .line 47
    .line 48
    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 49
    .line 50
    const-string v0, " for "

    .line 51
    .line 52
    .line 53
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 54
    .line 55
    iget-object v0, p0, Ly0/h;->model:Ljava/lang/Object;

    .line 56
    .line 57
    .line 58
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 59
    .line 60
    const-string v0, " with size ["

    .line 61
    .line 62
    .line 63
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 64
    .line 65
    iget v0, p0, Ly0/h;->width:I

    .line 66
    .line 67
    .line 68
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 69
    .line 70
    .line 71
    const-string/jumbo v0, "x"

    .line 72
    .line 73
    .line 74
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 75
    .line 76
    iget v0, p0, Ly0/h;->height:I

    .line 77
    .line 78
    .line 79
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 80
    .line 81
    const-string v0, "] in "

    .line 82
    .line 83
    .line 84
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 85
    .line 86
    iget-wide v0, p0, Ly0/h;->startTime:J

    .line 87
    .line 88
    .line 89
    invoke-static {v0, v1}, Lcom/bumptech/glide/util/f;->a(J)D

    .line 90
    move-result-wide v0

    .line 91
    .line 92
    .line 93
    invoke-virtual {p1, v0, v1}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    .line 94
    .line 95
    const-string v0, " ms"

    .line 96
    .line 97
    .line 98
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 99
    .line 100
    .line 101
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 102
    move-result-object p1

    .line 103
    .line 104
    const-string v0, "Glide"

    .line 105
    .line 106
    .line 107
    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 108
    :cond_0
    const/4 p1, 0x1

    .line 109
    .line 110
    iput-boolean p1, p0, Ly0/h;->isCallingCallbacks:Z

    .line 111
    const/4 v7, 0x0

    .line 112
    .line 113
    :try_start_0
    iget-object v0, p0, Ly0/h;->requestListeners:Ljava/util/List;

    .line 114
    .line 115
    if-eqz v0, :cond_1

    .line 116
    .line 117
    .line 118
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 119
    move-result-object v8

    .line 120
    move v9, v7

    .line 121
    .line 122
    .line 123
    :goto_0
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    .line 124
    move-result v0

    .line 125
    .line 126
    if-eqz v0, :cond_2

    .line 127
    .line 128
    .line 129
    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 130
    move-result-object v0

    .line 131
    .line 132
    check-cast v0, Ly0/e;

    .line 133
    .line 134
    iget-object v2, p0, Ly0/h;->model:Ljava/lang/Object;

    .line 135
    .line 136
    iget-object v3, p0, Ly0/h;->target:Lcom/bumptech/glide/request/target/e;

    .line 137
    move-object v1, p2

    .line 138
    move-object v4, p3

    .line 139
    move v5, v6

    .line 140
    .line 141
    .line 142
    invoke-interface/range {v0 .. v5}, Ly0/e;->b(Ljava/lang/Object;Ljava/lang/Object;Lcom/bumptech/glide/request/target/e;Lcom/bumptech/glide/load/a;Z)Z

    .line 143
    move-result v0

    .line 144
    or-int/2addr v9, v0

    .line 145
    goto :goto_0

    .line 146
    :catchall_0
    move-exception p1

    .line 147
    goto :goto_2

    .line 148
    :cond_1
    move v9, v7

    .line 149
    .line 150
    :cond_2
    iget-object v0, p0, Ly0/h;->targetListener:Ly0/e;

    .line 151
    .line 152
    if-eqz v0, :cond_3

    .line 153
    .line 154
    iget-object v2, p0, Ly0/h;->model:Ljava/lang/Object;

    .line 155
    .line 156
    iget-object v3, p0, Ly0/h;->target:Lcom/bumptech/glide/request/target/e;

    .line 157
    move-object v1, p2

    .line 158
    move-object v4, p3

    .line 159
    move v5, v6

    .line 160
    .line 161
    .line 162
    invoke-interface/range {v0 .. v5}, Ly0/e;->b(Ljava/lang/Object;Ljava/lang/Object;Lcom/bumptech/glide/request/target/e;Lcom/bumptech/glide/load/a;Z)Z

    .line 163
    move-result v0

    .line 164
    .line 165
    if-eqz v0, :cond_3

    .line 166
    goto :goto_1

    .line 167
    :cond_3
    move p1, v7

    .line 168
    :goto_1
    or-int/2addr p1, v9

    .line 169
    .line 170
    if-nez p1, :cond_4

    .line 171
    .line 172
    iget-object p1, p0, Ly0/h;->animationFactory:Lcom/bumptech/glide/request/transition/c;

    .line 173
    .line 174
    .line 175
    invoke-interface {p1, p3, v6}, Lcom/bumptech/glide/request/transition/c;->a(Lcom/bumptech/glide/load/a;Z)Lcom/bumptech/glide/request/transition/b;

    .line 176
    move-result-object p1

    .line 177
    .line 178
    iget-object p3, p0, Ly0/h;->target:Lcom/bumptech/glide/request/target/e;

    .line 179
    .line 180
    .line 181
    invoke-interface {p3, p2, p1}, Lcom/bumptech/glide/request/target/e;->e(Ljava/lang/Object;Lcom/bumptech/glide/request/transition/b;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 182
    .line 183
    :cond_4
    iput-boolean v7, p0, Ly0/h;->isCallingCallbacks:Z

    .line 184
    .line 185
    .line 186
    invoke-direct {p0}, Ly0/h;->w()V

    .line 187
    return-void

    .line 188
    .line 189
    :goto_2
    iput-boolean v7, p0, Ly0/h;->isCallingCallbacks:Z

    .line 190
    throw p1
.end method


# virtual methods
.method public a()Z
    .locals 3

    .line 1
    .line 2
    iget-object v0, p0, Ly0/h;->requestLock:Ljava/lang/Object;

    .line 3
    monitor-enter v0

    .line 4
    .line 5
    :try_start_0
    iget-object v1, p0, Ly0/h;->status:Ly0/h$a;

    .line 6
    .line 7
    sget-object v2, Ly0/h$a;->COMPLETE:Ly0/h$a;

    .line 8
    .line 9
    if-ne v1, v2, :cond_0

    .line 10
    const/4 v1, 0x1

    .line 11
    goto :goto_0

    .line 12
    :cond_0
    const/4 v1, 0x0

    .line 13
    :goto_0
    monitor-exit v0

    .line 14
    return v1

    .line 15
    :catchall_0
    move-exception v1

    .line 16
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 17
    throw v1
.end method

.method public b(Lcom/bumptech/glide/load/engine/q;)V
    .locals 1

    .line 1
    const/4 v0, 0x5

    .line 2
    .line 3
    .line 4
    invoke-direct {p0, p1, v0}, Ly0/h;->y(Lcom/bumptech/glide/load/engine/q;I)V

    .line 5
    return-void
.end method

.method public c(Lcom/bumptech/glide/load/engine/v;Lcom/bumptech/glide/load/a;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/load/engine/v<",
            "*>;",
            "Lcom/bumptech/glide/load/a;",
            ")V"
        }
    .end annotation

    .line 1
    .line 2
    iget-object v0, p0, Ly0/h;->stateVerifier:La1/c;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0}, La1/c;->c()V

    .line 6
    const/4 v0, 0x0

    .line 7
    .line 8
    :try_start_0
    iget-object v1, p0, Ly0/h;->requestLock:Ljava/lang/Object;

    .line 9
    monitor-enter v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 10
    .line 11
    :try_start_1
    iput-object v0, p0, Ly0/h;->loadStatus:Lcom/bumptech/glide/load/engine/k$d;

    .line 12
    .line 13
    if-nez p1, :cond_0

    .line 14
    .line 15
    new-instance p1, Lcom/bumptech/glide/load/engine/q;

    .line 16
    .line 17
    new-instance p2, Ljava/lang/StringBuilder;

    .line 18
    .line 19
    .line 20
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 21
    .line 22
    const-string v2, "Expected to receive a Resource<R> with an object of "

    .line 23
    .line 24
    .line 25
    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 26
    .line 27
    iget-object v2, p0, Ly0/h;->transcodeClass:Ljava/lang/Class;

    .line 28
    .line 29
    .line 30
    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 31
    .line 32
    const-string v2, " inside, but instead got null."

    .line 33
    .line 34
    .line 35
    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 36
    .line 37
    .line 38
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 39
    move-result-object p2

    .line 40
    .line 41
    .line 42
    invoke-direct {p1, p2}, Lcom/bumptech/glide/load/engine/q;-><init>(Ljava/lang/String;)V

    .line 43
    .line 44
    .line 45
    invoke-virtual {p0, p1}, Ly0/h;->b(Lcom/bumptech/glide/load/engine/q;)V

    .line 46
    monitor-exit v1

    .line 47
    return-void

    .line 48
    :catchall_0
    move-exception p1

    .line 49
    .line 50
    goto/16 :goto_3

    .line 51
    .line 52
    .line 53
    :cond_0
    invoke-interface {p1}, Lcom/bumptech/glide/load/engine/v;->get()Ljava/lang/Object;

    .line 54
    move-result-object v2

    .line 55
    .line 56
    if-eqz v2, :cond_3

    .line 57
    .line 58
    iget-object v3, p0, Ly0/h;->transcodeClass:Ljava/lang/Class;

    .line 59
    .line 60
    .line 61
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 62
    move-result-object v4

    .line 63
    .line 64
    .line 65
    invoke-virtual {v3, v4}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    .line 66
    move-result v3

    .line 67
    .line 68
    if-nez v3, :cond_1

    .line 69
    goto :goto_0

    .line 70
    .line 71
    .line 72
    :cond_1
    invoke-direct {p0}, Ly0/h;->m()Z

    .line 73
    move-result v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 74
    .line 75
    if-nez v3, :cond_2

    .line 76
    .line 77
    :try_start_2
    iput-object v0, p0, Ly0/h;->resource:Lcom/bumptech/glide/load/engine/v;

    .line 78
    .line 79
    sget-object p2, Ly0/h$a;->COMPLETE:Ly0/h$a;

    .line 80
    .line 81
    iput-object p2, p0, Ly0/h;->status:Ly0/h$a;

    .line 82
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 83
    .line 84
    iget-object p2, p0, Ly0/h;->engine:Lcom/bumptech/glide/load/engine/k;

    .line 85
    .line 86
    .line 87
    invoke-virtual {p2, p1}, Lcom/bumptech/glide/load/engine/k;->k(Lcom/bumptech/glide/load/engine/v;)V

    .line 88
    return-void

    .line 89
    :catchall_1
    move-exception p2

    .line 90
    move-object v0, p1

    .line 91
    move-object p1, p2

    .line 92
    goto :goto_3

    .line 93
    .line 94
    .line 95
    :cond_2
    :try_start_3
    invoke-direct {p0, p1, v2, p2}, Ly0/h;->z(Lcom/bumptech/glide/load/engine/v;Ljava/lang/Object;Lcom/bumptech/glide/load/a;)V

    .line 96
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 97
    return-void

    .line 98
    .line 99
    :cond_3
    :goto_0
    :try_start_4
    iput-object v0, p0, Ly0/h;->resource:Lcom/bumptech/glide/load/engine/v;

    .line 100
    .line 101
    new-instance p2, Lcom/bumptech/glide/load/engine/q;

    .line 102
    .line 103
    new-instance v0, Ljava/lang/StringBuilder;

    .line 104
    .line 105
    .line 106
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 107
    .line 108
    const-string v3, "Expected to receive an object of "

    .line 109
    .line 110
    .line 111
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 112
    .line 113
    iget-object v3, p0, Ly0/h;->transcodeClass:Ljava/lang/Class;

    .line 114
    .line 115
    .line 116
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 117
    .line 118
    const-string v3, " but instead got "

    .line 119
    .line 120
    .line 121
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 122
    .line 123
    if-eqz v2, :cond_4

    .line 124
    .line 125
    .line 126
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 127
    move-result-object v3

    .line 128
    goto :goto_1

    .line 129
    .line 130
    :cond_4
    const-string v3, ""

    .line 131
    .line 132
    .line 133
    :goto_1
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 134
    .line 135
    .line 136
    const-string/jumbo v3, "{"

    .line 137
    .line 138
    .line 139
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 140
    .line 141
    .line 142
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 143
    .line 144
    .line 145
    const-string/jumbo v3, "} inside Resource{"

    .line 146
    .line 147
    .line 148
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 149
    .line 150
    .line 151
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 152
    .line 153
    .line 154
    const-string/jumbo v3, "}."

    .line 155
    .line 156
    .line 157
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 158
    .line 159
    if-eqz v2, :cond_5

    .line 160
    .line 161
    const-string v2, ""

    .line 162
    goto :goto_2

    .line 163
    .line 164
    :cond_5
    const-string v2, " To indicate failure return a null Resource object, rather than a Resource object containing null data."

    .line 165
    .line 166
    .line 167
    :goto_2
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 168
    .line 169
    .line 170
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 171
    move-result-object v0

    .line 172
    .line 173
    .line 174
    invoke-direct {p2, v0}, Lcom/bumptech/glide/load/engine/q;-><init>(Ljava/lang/String;)V

    .line 175
    .line 176
    .line 177
    invoke-virtual {p0, p2}, Ly0/h;->b(Lcom/bumptech/glide/load/engine/q;)V

    .line 178
    monitor-exit v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 179
    .line 180
    iget-object p2, p0, Ly0/h;->engine:Lcom/bumptech/glide/load/engine/k;

    .line 181
    .line 182
    .line 183
    invoke-virtual {p2, p1}, Lcom/bumptech/glide/load/engine/k;->k(Lcom/bumptech/glide/load/engine/v;)V

    .line 184
    return-void

    .line 185
    :goto_3
    :try_start_5
    monitor-exit v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 186
    :try_start_6
    throw p1
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    .line 187
    :catchall_2
    move-exception p1

    .line 188
    .line 189
    if-eqz v0, :cond_6

    .line 190
    .line 191
    iget-object p2, p0, Ly0/h;->engine:Lcom/bumptech/glide/load/engine/k;

    .line 192
    .line 193
    .line 194
    invoke-virtual {p2, v0}, Lcom/bumptech/glide/load/engine/k;->k(Lcom/bumptech/glide/load/engine/v;)V

    .line 195
    :cond_6
    throw p1
.end method

.method public clear()V
    .locals 5

    .line 1
    .line 2
    iget-object v0, p0, Ly0/h;->requestLock:Ljava/lang/Object;

    .line 3
    monitor-enter v0

    .line 4
    .line 5
    .line 6
    :try_start_0
    invoke-direct {p0}, Ly0/h;->i()V

    .line 7
    .line 8
    iget-object v1, p0, Ly0/h;->stateVerifier:La1/c;

    .line 9
    .line 10
    .line 11
    invoke-virtual {v1}, La1/c;->c()V

    .line 12
    .line 13
    iget-object v1, p0, Ly0/h;->status:Ly0/h$a;

    .line 14
    .line 15
    sget-object v2, Ly0/h$a;->CLEARED:Ly0/h$a;

    .line 16
    .line 17
    if-ne v1, v2, :cond_0

    .line 18
    monitor-exit v0

    .line 19
    return-void

    .line 20
    :catchall_0
    move-exception v1

    .line 21
    goto :goto_1

    .line 22
    .line 23
    .line 24
    :cond_0
    invoke-direct {p0}, Ly0/h;->n()V

    .line 25
    .line 26
    iget-object v1, p0, Ly0/h;->resource:Lcom/bumptech/glide/load/engine/v;

    .line 27
    const/4 v3, 0x0

    .line 28
    .line 29
    if-eqz v1, :cond_1

    .line 30
    .line 31
    iput-object v3, p0, Ly0/h;->resource:Lcom/bumptech/glide/load/engine/v;

    .line 32
    goto :goto_0

    .line 33
    :cond_1
    move-object v1, v3

    .line 34
    .line 35
    .line 36
    :goto_0
    invoke-direct {p0}, Ly0/h;->k()Z

    .line 37
    move-result v3

    .line 38
    .line 39
    if-eqz v3, :cond_2

    .line 40
    .line 41
    iget-object v3, p0, Ly0/h;->target:Lcom/bumptech/glide/request/target/e;

    .line 42
    .line 43
    .line 44
    invoke-direct {p0}, Ly0/h;->q()Landroid/graphics/drawable/Drawable;

    .line 45
    move-result-object v4

    .line 46
    .line 47
    .line 48
    invoke-interface {v3, v4}, Lcom/bumptech/glide/request/target/e;->d(Landroid/graphics/drawable/Drawable;)V

    .line 49
    .line 50
    :cond_2
    iput-object v2, p0, Ly0/h;->status:Ly0/h$a;

    .line 51
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 52
    .line 53
    if-eqz v1, :cond_3

    .line 54
    .line 55
    iget-object v0, p0, Ly0/h;->engine:Lcom/bumptech/glide/load/engine/k;

    .line 56
    .line 57
    .line 58
    invoke-virtual {v0, v1}, Lcom/bumptech/glide/load/engine/k;->k(Lcom/bumptech/glide/load/engine/v;)V

    .line 59
    :cond_3
    return-void

    .line 60
    :goto_1
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 61
    throw v1
.end method

.method public d(II)V
    .locals 24

    .line 1
    .line 2
    move-object/from16 v15, p0

    .line 3
    .line 4
    iget-object v0, v15, Ly0/h;->stateVerifier:La1/c;

    .line 5
    .line 6
    .line 7
    invoke-virtual {v0}, La1/c;->c()V

    .line 8
    .line 9
    iget-object v14, v15, Ly0/h;->requestLock:Ljava/lang/Object;

    .line 10
    monitor-enter v14

    .line 11
    .line 12
    :try_start_0
    sget-boolean v0, Ly0/h;->IS_VERBOSE_LOGGABLE:Z

    .line 13
    .line 14
    if-eqz v0, :cond_0

    .line 15
    .line 16
    new-instance v1, Ljava/lang/StringBuilder;

    .line 17
    .line 18
    .line 19
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 20
    .line 21
    const-string v2, "Got onSizeReady in "

    .line 22
    .line 23
    .line 24
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 25
    .line 26
    iget-wide v2, v15, Ly0/h;->startTime:J

    .line 27
    .line 28
    .line 29
    invoke-static {v2, v3}, Lcom/bumptech/glide/util/f;->a(J)D

    .line 30
    move-result-wide v2

    .line 31
    .line 32
    .line 33
    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    .line 34
    .line 35
    .line 36
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 37
    move-result-object v1

    .line 38
    .line 39
    .line 40
    invoke-direct {v15, v1}, Ly0/h;->t(Ljava/lang/String;)V

    .line 41
    goto :goto_0

    .line 42
    :catchall_0
    move-exception v0

    .line 43
    .line 44
    move-object/from16 v23, v14

    .line 45
    move-object v1, v15

    .line 46
    .line 47
    goto/16 :goto_2

    .line 48
    .line 49
    :cond_0
    :goto_0
    iget-object v1, v15, Ly0/h;->status:Ly0/h$a;

    .line 50
    .line 51
    sget-object v2, Ly0/h$a;->WAITING_FOR_SIZE:Ly0/h$a;

    .line 52
    .line 53
    if-eq v1, v2, :cond_1

    .line 54
    monitor-exit v14

    .line 55
    return-void

    .line 56
    .line 57
    :cond_1
    sget-object v13, Ly0/h$a;->RUNNING:Ly0/h$a;

    .line 58
    .line 59
    iput-object v13, v15, Ly0/h;->status:Ly0/h$a;

    .line 60
    .line 61
    iget-object v1, v15, Ly0/h;->requestOptions:Ly0/a;

    .line 62
    .line 63
    .line 64
    invoke-virtual {v1}, Ly0/a;->x()F

    .line 65
    move-result v1

    .line 66
    .line 67
    move/from16 v2, p1

    .line 68
    .line 69
    .line 70
    invoke-static {v2, v1}, Ly0/h;->u(IF)I

    .line 71
    move-result v2

    .line 72
    .line 73
    iput v2, v15, Ly0/h;->width:I

    .line 74
    .line 75
    move/from16 v2, p2

    .line 76
    .line 77
    .line 78
    invoke-static {v2, v1}, Ly0/h;->u(IF)I

    .line 79
    move-result v1

    .line 80
    .line 81
    iput v1, v15, Ly0/h;->height:I

    .line 82
    .line 83
    if-eqz v0, :cond_2

    .line 84
    .line 85
    new-instance v1, Ljava/lang/StringBuilder;

    .line 86
    .line 87
    .line 88
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 89
    .line 90
    const-string v2, "finished setup for calling load in "

    .line 91
    .line 92
    .line 93
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 94
    .line 95
    iget-wide v2, v15, Ly0/h;->startTime:J

    .line 96
    .line 97
    .line 98
    invoke-static {v2, v3}, Lcom/bumptech/glide/util/f;->a(J)D

    .line 99
    move-result-wide v2

    .line 100
    .line 101
    .line 102
    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    .line 103
    .line 104
    .line 105
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 106
    move-result-object v1

    .line 107
    .line 108
    .line 109
    invoke-direct {v15, v1}, Ly0/h;->t(Ljava/lang/String;)V

    .line 110
    .line 111
    :cond_2
    iget-object v1, v15, Ly0/h;->engine:Lcom/bumptech/glide/load/engine/k;

    .line 112
    .line 113
    iget-object v2, v15, Ly0/h;->glideContext:Lcom/bumptech/glide/d;

    .line 114
    .line 115
    iget-object v3, v15, Ly0/h;->model:Ljava/lang/Object;

    .line 116
    .line 117
    iget-object v4, v15, Ly0/h;->requestOptions:Ly0/a;

    .line 118
    .line 119
    .line 120
    invoke-virtual {v4}, Ly0/a;->w()Lcom/bumptech/glide/load/g;

    .line 121
    move-result-object v4

    .line 122
    .line 123
    iget v5, v15, Ly0/h;->width:I

    .line 124
    .line 125
    iget v6, v15, Ly0/h;->height:I

    .line 126
    .line 127
    iget-object v7, v15, Ly0/h;->requestOptions:Ly0/a;

    .line 128
    .line 129
    .line 130
    invoke-virtual {v7}, Ly0/a;->v()Ljava/lang/Class;

    .line 131
    move-result-object v7

    .line 132
    .line 133
    iget-object v8, v15, Ly0/h;->transcodeClass:Ljava/lang/Class;

    .line 134
    .line 135
    iget-object v9, v15, Ly0/h;->priority:Lcom/bumptech/glide/f;

    .line 136
    .line 137
    iget-object v10, v15, Ly0/h;->requestOptions:Ly0/a;

    .line 138
    .line 139
    .line 140
    invoke-virtual {v10}, Ly0/a;->j()Lcom/bumptech/glide/load/engine/j;

    .line 141
    move-result-object v10

    .line 142
    .line 143
    iget-object v11, v15, Ly0/h;->requestOptions:Ly0/a;

    .line 144
    .line 145
    .line 146
    invoke-virtual {v11}, Ly0/a;->z()Ljava/util/Map;

    .line 147
    move-result-object v11

    .line 148
    .line 149
    iget-object v12, v15, Ly0/h;->requestOptions:Ly0/a;

    .line 150
    .line 151
    .line 152
    invoke-virtual {v12}, Ly0/a;->H()Z

    .line 153
    move-result v12

    .line 154
    .line 155
    move-object/from16 v16, v13

    .line 156
    .line 157
    iget-object v13, v15, Ly0/h;->requestOptions:Ly0/a;

    .line 158
    .line 159
    .line 160
    invoke-virtual {v13}, Ly0/a;->E()Z

    .line 161
    move-result v13

    .line 162
    .line 163
    move/from16 v21, v0

    .line 164
    .line 165
    iget-object v0, v15, Ly0/h;->requestOptions:Ly0/a;

    .line 166
    .line 167
    .line 168
    invoke-virtual {v0}, Ly0/a;->p()Lcom/bumptech/glide/load/i;

    .line 169
    move-result-object v0

    .line 170
    .line 171
    move-object/from16 p1, v0

    .line 172
    .line 173
    iget-object v0, v15, Ly0/h;->requestOptions:Ly0/a;

    .line 174
    .line 175
    .line 176
    invoke-virtual {v0}, Ly0/a;->C()Z

    .line 177
    move-result v0

    .line 178
    .line 179
    move/from16 p2, v0

    .line 180
    .line 181
    iget-object v0, v15, Ly0/h;->requestOptions:Ly0/a;

    .line 182
    .line 183
    .line 184
    invoke-virtual {v0}, Ly0/a;->B()Z

    .line 185
    move-result v0

    .line 186
    .line 187
    move/from16 v17, v0

    .line 188
    .line 189
    iget-object v0, v15, Ly0/h;->requestOptions:Ly0/a;

    .line 190
    .line 191
    .line 192
    invoke-virtual {v0}, Ly0/a;->A()Z

    .line 193
    move-result v0

    .line 194
    .line 195
    move/from16 v18, v0

    .line 196
    .line 197
    iget-object v0, v15, Ly0/h;->requestOptions:Ly0/a;

    .line 198
    .line 199
    .line 200
    invoke-virtual {v0}, Ly0/a;->o()Z

    .line 201
    move-result v0

    .line 202
    .line 203
    move/from16 v19, v0

    .line 204
    .line 205
    iget-object v0, v15, Ly0/h;->callbackExecutor:Ljava/util/concurrent/Executor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 206
    .line 207
    move-object/from16 v22, v16

    .line 208
    .line 209
    move-object/from16 v23, v14

    .line 210
    .line 211
    move-object/from16 v14, p1

    .line 212
    .line 213
    move/from16 v15, p2

    .line 214
    .line 215
    move/from16 v16, v17

    .line 216
    .line 217
    move/from16 v17, v18

    .line 218
    .line 219
    move/from16 v18, v19

    .line 220
    .line 221
    move-object/from16 v19, p0

    .line 222
    .line 223
    move-object/from16 v20, v0

    .line 224
    .line 225
    .line 226
    :try_start_1
    invoke-virtual/range {v1 .. v20}, Lcom/bumptech/glide/load/engine/k;->f(Lcom/bumptech/glide/d;Ljava/lang/Object;Lcom/bumptech/glide/load/g;IILjava/lang/Class;Ljava/lang/Class;Lcom/bumptech/glide/f;Lcom/bumptech/glide/load/engine/j;Ljava/util/Map;ZZLcom/bumptech/glide/load/i;ZZZZLy0/g;Ljava/util/concurrent/Executor;)Lcom/bumptech/glide/load/engine/k$d;

    .line 227
    move-result-object v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 228
    .line 229
    move-object/from16 v1, p0

    .line 230
    .line 231
    :try_start_2
    iput-object v0, v1, Ly0/h;->loadStatus:Lcom/bumptech/glide/load/engine/k$d;

    .line 232
    .line 233
    iget-object v0, v1, Ly0/h;->status:Ly0/h$a;

    .line 234
    .line 235
    move-object/from16 v2, v22

    .line 236
    .line 237
    if-eq v0, v2, :cond_3

    .line 238
    const/4 v0, 0x0

    .line 239
    .line 240
    iput-object v0, v1, Ly0/h;->loadStatus:Lcom/bumptech/glide/load/engine/k$d;

    .line 241
    goto :goto_1

    .line 242
    :catchall_1
    move-exception v0

    .line 243
    goto :goto_2

    .line 244
    .line 245
    :cond_3
    :goto_1
    if-eqz v21, :cond_4

    .line 246
    .line 247
    new-instance v0, Ljava/lang/StringBuilder;

    .line 248
    .line 249
    .line 250
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 251
    .line 252
    const-string v2, "finished onSizeReady in "

    .line 253
    .line 254
    .line 255
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 256
    .line 257
    iget-wide v2, v1, Ly0/h;->startTime:J

    .line 258
    .line 259
    .line 260
    invoke-static {v2, v3}, Lcom/bumptech/glide/util/f;->a(J)D

    .line 261
    move-result-wide v2

    .line 262
    .line 263
    .line 264
    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    .line 265
    .line 266
    .line 267
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 268
    move-result-object v0

    .line 269
    .line 270
    .line 271
    invoke-direct {v1, v0}, Ly0/h;->t(Ljava/lang/String;)V

    .line 272
    :cond_4
    monitor-exit v23

    .line 273
    return-void

    .line 274
    :catchall_2
    move-exception v0

    .line 275
    .line 276
    move-object/from16 v1, p0

    .line 277
    :goto_2
    monitor-exit v23
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 278
    throw v0
.end method

.method public e()Z
    .locals 3

    .line 1
    .line 2
    iget-object v0, p0, Ly0/h;->requestLock:Ljava/lang/Object;

    .line 3
    monitor-enter v0

    .line 4
    .line 5
    :try_start_0
    iget-object v1, p0, Ly0/h;->status:Ly0/h$a;

    .line 6
    .line 7
    sget-object v2, Ly0/h$a;->CLEARED:Ly0/h$a;

    .line 8
    .line 9
    if-ne v1, v2, :cond_0

    .line 10
    const/4 v1, 0x1

    .line 11
    goto :goto_0

    .line 12
    :cond_0
    const/4 v1, 0x0

    .line 13
    :goto_0
    monitor-exit v0

    .line 14
    return v1

    .line 15
    :catchall_0
    move-exception v1

    .line 16
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 17
    throw v1
.end method

.method public f()Z
    .locals 3

    .line 1
    .line 2
    iget-object v0, p0, Ly0/h;->requestLock:Ljava/lang/Object;

    .line 3
    monitor-enter v0

    .line 4
    .line 5
    :try_start_0
    iget-object v1, p0, Ly0/h;->status:Ly0/h$a;

    .line 6
    .line 7
    sget-object v2, Ly0/h$a;->COMPLETE:Ly0/h$a;

    .line 8
    .line 9
    if-ne v1, v2, :cond_0

    .line 10
    const/4 v1, 0x1

    .line 11
    goto :goto_0

    .line 12
    :cond_0
    const/4 v1, 0x0

    .line 13
    :goto_0
    monitor-exit v0

    .line 14
    return v1

    .line 15
    :catchall_0
    move-exception v1

    .line 16
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 17
    throw v1
.end method

.method public g()Ljava/lang/Object;
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Ly0/h;->stateVerifier:La1/c;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0}, La1/c;->c()V

    .line 6
    .line 7
    iget-object v0, p0, Ly0/h;->requestLock:Ljava/lang/Object;

    .line 8
    return-object v0
.end method

.method public h(Ly0/c;)Z
    .locals 16

    .line 1
    .line 2
    move-object/from16 v1, p0

    .line 3
    .line 4
    move-object/from16 v0, p1

    .line 5
    .line 6
    instance-of v2, v0, Ly0/h;

    .line 7
    const/4 v3, 0x0

    .line 8
    .line 9
    if-nez v2, :cond_0

    .line 10
    return v3

    .line 11
    .line 12
    :cond_0
    iget-object v2, v1, Ly0/h;->requestLock:Ljava/lang/Object;

    .line 13
    monitor-enter v2

    .line 14
    .line 15
    :try_start_0
    iget v4, v1, Ly0/h;->overrideWidth:I

    .line 16
    .line 17
    iget v5, v1, Ly0/h;->overrideHeight:I

    .line 18
    .line 19
    iget-object v6, v1, Ly0/h;->model:Ljava/lang/Object;

    .line 20
    .line 21
    iget-object v7, v1, Ly0/h;->transcodeClass:Ljava/lang/Class;

    .line 22
    .line 23
    iget-object v8, v1, Ly0/h;->requestOptions:Ly0/a;

    .line 24
    .line 25
    iget-object v9, v1, Ly0/h;->priority:Lcom/bumptech/glide/f;

    .line 26
    .line 27
    iget-object v10, v1, Ly0/h;->requestListeners:Ljava/util/List;

    .line 28
    .line 29
    if-eqz v10, :cond_1

    .line 30
    .line 31
    .line 32
    invoke-interface {v10}, Ljava/util/List;->size()I

    .line 33
    move-result v10

    .line 34
    goto :goto_0

    .line 35
    :catchall_0
    move-exception v0

    .line 36
    goto :goto_4

    .line 37
    :cond_1
    move v10, v3

    .line 38
    :goto_0
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 39
    .line 40
    check-cast v0, Ly0/h;

    .line 41
    .line 42
    iget-object v11, v0, Ly0/h;->requestLock:Ljava/lang/Object;

    .line 43
    monitor-enter v11

    .line 44
    .line 45
    :try_start_1
    iget v2, v0, Ly0/h;->overrideWidth:I

    .line 46
    .line 47
    iget v12, v0, Ly0/h;->overrideHeight:I

    .line 48
    .line 49
    iget-object v13, v0, Ly0/h;->model:Ljava/lang/Object;

    .line 50
    .line 51
    iget-object v14, v0, Ly0/h;->transcodeClass:Ljava/lang/Class;

    .line 52
    .line 53
    iget-object v15, v0, Ly0/h;->requestOptions:Ly0/a;

    .line 54
    .line 55
    iget-object v3, v0, Ly0/h;->priority:Lcom/bumptech/glide/f;

    .line 56
    .line 57
    iget-object v0, v0, Ly0/h;->requestListeners:Ljava/util/List;

    .line 58
    .line 59
    if-eqz v0, :cond_2

    .line 60
    .line 61
    .line 62
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 63
    move-result v0

    .line 64
    goto :goto_1

    .line 65
    :catchall_1
    move-exception v0

    .line 66
    goto :goto_3

    .line 67
    :cond_2
    const/4 v0, 0x0

    .line 68
    :goto_1
    monitor-exit v11
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 69
    .line 70
    if-ne v4, v2, :cond_3

    .line 71
    .line 72
    if-ne v5, v12, :cond_3

    .line 73
    .line 74
    .line 75
    invoke-static {v6, v13}, Lcom/bumptech/glide/util/k;->b(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 76
    move-result v2

    .line 77
    .line 78
    if-eqz v2, :cond_3

    .line 79
    .line 80
    .line 81
    invoke-virtual {v7, v14}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 82
    move-result v2

    .line 83
    .line 84
    if-eqz v2, :cond_3

    .line 85
    .line 86
    .line 87
    invoke-virtual {v8, v15}, Ly0/a;->equals(Ljava/lang/Object;)Z

    .line 88
    move-result v2

    .line 89
    .line 90
    if-eqz v2, :cond_3

    .line 91
    .line 92
    if-ne v9, v3, :cond_3

    .line 93
    .line 94
    if-ne v10, v0, :cond_3

    .line 95
    const/4 v3, 0x1

    .line 96
    goto :goto_2

    .line 97
    :cond_3
    const/4 v3, 0x0

    .line 98
    :goto_2
    return v3

    .line 99
    :goto_3
    :try_start_2
    monitor-exit v11
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 100
    throw v0

    .line 101
    :goto_4
    :try_start_3
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 102
    throw v0
.end method

.method public isRunning()Z
    .locals 3

    .line 1
    .line 2
    iget-object v0, p0, Ly0/h;->requestLock:Ljava/lang/Object;

    .line 3
    monitor-enter v0

    .line 4
    .line 5
    :try_start_0
    iget-object v1, p0, Ly0/h;->status:Ly0/h$a;

    .line 6
    .line 7
    sget-object v2, Ly0/h$a;->RUNNING:Ly0/h$a;

    .line 8
    .line 9
    if-eq v1, v2, :cond_1

    .line 10
    .line 11
    sget-object v2, Ly0/h$a;->WAITING_FOR_SIZE:Ly0/h$a;

    .line 12
    .line 13
    if-ne v1, v2, :cond_0

    .line 14
    goto :goto_0

    .line 15
    :cond_0
    const/4 v1, 0x0

    .line 16
    goto :goto_1

    .line 17
    :catchall_0
    move-exception v1

    .line 18
    goto :goto_2

    .line 19
    :cond_1
    :goto_0
    const/4 v1, 0x1

    .line 20
    :goto_1
    monitor-exit v0

    .line 21
    return v1

    .line 22
    :goto_2
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 23
    throw v1
.end method

.method public j()V
    .locals 5

    .line 1
    .line 2
    iget-object v0, p0, Ly0/h;->requestLock:Ljava/lang/Object;

    .line 3
    monitor-enter v0

    .line 4
    .line 5
    .line 6
    :try_start_0
    invoke-direct {p0}, Ly0/h;->i()V

    .line 7
    .line 8
    iget-object v1, p0, Ly0/h;->stateVerifier:La1/c;

    .line 9
    .line 10
    .line 11
    invoke-virtual {v1}, La1/c;->c()V

    .line 12
    .line 13
    .line 14
    invoke-static {}, Lcom/bumptech/glide/util/f;->b()J

    .line 15
    move-result-wide v1

    .line 16
    .line 17
    iput-wide v1, p0, Ly0/h;->startTime:J

    .line 18
    .line 19
    iget-object v1, p0, Ly0/h;->model:Ljava/lang/Object;

    .line 20
    .line 21
    if-nez v1, :cond_2

    .line 22
    .line 23
    iget v1, p0, Ly0/h;->overrideWidth:I

    .line 24
    .line 25
    iget v2, p0, Ly0/h;->overrideHeight:I

    .line 26
    .line 27
    .line 28
    invoke-static {v1, v2}, Lcom/bumptech/glide/util/k;->r(II)Z

    .line 29
    move-result v1

    .line 30
    .line 31
    if-eqz v1, :cond_0

    .line 32
    .line 33
    iget v1, p0, Ly0/h;->overrideWidth:I

    .line 34
    .line 35
    iput v1, p0, Ly0/h;->width:I

    .line 36
    .line 37
    iget v1, p0, Ly0/h;->overrideHeight:I

    .line 38
    .line 39
    iput v1, p0, Ly0/h;->height:I

    .line 40
    goto :goto_0

    .line 41
    :catchall_0
    move-exception v1

    .line 42
    .line 43
    goto/16 :goto_3

    .line 44
    .line 45
    .line 46
    :cond_0
    :goto_0
    invoke-direct {p0}, Ly0/h;->p()Landroid/graphics/drawable/Drawable;

    .line 47
    move-result-object v1

    .line 48
    .line 49
    if-nez v1, :cond_1

    .line 50
    const/4 v1, 0x5

    .line 51
    goto :goto_1

    .line 52
    :cond_1
    const/4 v1, 0x3

    .line 53
    .line 54
    :goto_1
    new-instance v2, Lcom/bumptech/glide/load/engine/q;

    .line 55
    .line 56
    const-string v3, "Received null model"

    .line 57
    .line 58
    .line 59
    invoke-direct {v2, v3}, Lcom/bumptech/glide/load/engine/q;-><init>(Ljava/lang/String;)V

    .line 60
    .line 61
    .line 62
    invoke-direct {p0, v2, v1}, Ly0/h;->y(Lcom/bumptech/glide/load/engine/q;I)V

    .line 63
    monitor-exit v0

    .line 64
    return-void

    .line 65
    .line 66
    :cond_2
    iget-object v1, p0, Ly0/h;->status:Ly0/h$a;

    .line 67
    .line 68
    sget-object v2, Ly0/h$a;->RUNNING:Ly0/h$a;

    .line 69
    .line 70
    if-eq v1, v2, :cond_8

    .line 71
    .line 72
    sget-object v3, Ly0/h$a;->COMPLETE:Ly0/h$a;

    .line 73
    .line 74
    if-ne v1, v3, :cond_3

    .line 75
    .line 76
    iget-object v1, p0, Ly0/h;->resource:Lcom/bumptech/glide/load/engine/v;

    .line 77
    .line 78
    sget-object v2, Lcom/bumptech/glide/load/a;->MEMORY_CACHE:Lcom/bumptech/glide/load/a;

    .line 79
    .line 80
    .line 81
    invoke-virtual {p0, v1, v2}, Ly0/h;->c(Lcom/bumptech/glide/load/engine/v;Lcom/bumptech/glide/load/a;)V

    .line 82
    monitor-exit v0

    .line 83
    return-void

    .line 84
    .line 85
    :cond_3
    sget-object v1, Ly0/h$a;->WAITING_FOR_SIZE:Ly0/h$a;

    .line 86
    .line 87
    iput-object v1, p0, Ly0/h;->status:Ly0/h$a;

    .line 88
    .line 89
    iget v3, p0, Ly0/h;->overrideWidth:I

    .line 90
    .line 91
    iget v4, p0, Ly0/h;->overrideHeight:I

    .line 92
    .line 93
    .line 94
    invoke-static {v3, v4}, Lcom/bumptech/glide/util/k;->r(II)Z

    .line 95
    move-result v3

    .line 96
    .line 97
    if-eqz v3, :cond_4

    .line 98
    .line 99
    iget v3, p0, Ly0/h;->overrideWidth:I

    .line 100
    .line 101
    iget v4, p0, Ly0/h;->overrideHeight:I

    .line 102
    .line 103
    .line 104
    invoke-virtual {p0, v3, v4}, Ly0/h;->d(II)V

    .line 105
    goto :goto_2

    .line 106
    .line 107
    :cond_4
    iget-object v3, p0, Ly0/h;->target:Lcom/bumptech/glide/request/target/e;

    .line 108
    .line 109
    .line 110
    invoke-interface {v3, p0}, Lcom/bumptech/glide/request/target/e;->h(Lcom/bumptech/glide/request/target/d;)V

    .line 111
    .line 112
    :goto_2
    iget-object v3, p0, Ly0/h;->status:Ly0/h$a;

    .line 113
    .line 114
    if-eq v3, v2, :cond_5

    .line 115
    .line 116
    if-ne v3, v1, :cond_6

    .line 117
    .line 118
    .line 119
    :cond_5
    invoke-direct {p0}, Ly0/h;->l()Z

    .line 120
    move-result v1

    .line 121
    .line 122
    if-eqz v1, :cond_6

    .line 123
    .line 124
    iget-object v1, p0, Ly0/h;->target:Lcom/bumptech/glide/request/target/e;

    .line 125
    .line 126
    .line 127
    invoke-direct {p0}, Ly0/h;->q()Landroid/graphics/drawable/Drawable;

    .line 128
    move-result-object v2

    .line 129
    .line 130
    .line 131
    invoke-interface {v1, v2}, Lcom/bumptech/glide/request/target/e;->f(Landroid/graphics/drawable/Drawable;)V

    .line 132
    .line 133
    :cond_6
    sget-boolean v1, Ly0/h;->IS_VERBOSE_LOGGABLE:Z

    .line 134
    .line 135
    if-eqz v1, :cond_7

    .line 136
    .line 137
    new-instance v1, Ljava/lang/StringBuilder;

    .line 138
    .line 139
    .line 140
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 141
    .line 142
    const-string v2, "finished run method in "

    .line 143
    .line 144
    .line 145
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 146
    .line 147
    iget-wide v2, p0, Ly0/h;->startTime:J

    .line 148
    .line 149
    .line 150
    invoke-static {v2, v3}, Lcom/bumptech/glide/util/f;->a(J)D

    .line 151
    move-result-wide v2

    .line 152
    .line 153
    .line 154
    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    .line 155
    .line 156
    .line 157
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 158
    move-result-object v1

    .line 159
    .line 160
    .line 161
    invoke-direct {p0, v1}, Ly0/h;->t(Ljava/lang/String;)V

    .line 162
    :cond_7
    monitor-exit v0

    .line 163
    return-void

    .line 164
    .line 165
    :cond_8
    new-instance v1, Ljava/lang/IllegalArgumentException;

    .line 166
    .line 167
    const-string v2, "Cannot restart a running request"

    .line 168
    .line 169
    .line 170
    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 171
    throw v1

    .line 172
    :goto_3
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 173
    throw v1
.end method

.method public pause()V
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Ly0/h;->requestLock:Ljava/lang/Object;

    .line 3
    monitor-enter v0

    .line 4
    .line 5
    .line 6
    :try_start_0
    invoke-virtual {p0}, Ly0/h;->isRunning()Z

    .line 7
    move-result v1

    .line 8
    .line 9
    if-eqz v1, :cond_0

    .line 10
    .line 11
    .line 12
    invoke-virtual {p0}, Ly0/h;->clear()V

    .line 13
    goto :goto_0

    .line 14
    :catchall_0
    move-exception v1

    .line 15
    goto :goto_1

    .line 16
    :cond_0
    :goto_0
    monitor-exit v0

    .line 17
    return-void

    .line 18
    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 19
    throw v1
.end method
