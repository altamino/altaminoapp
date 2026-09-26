.class final Lcom/google/android/exoplayer2/util/j0$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/exoplayer2/util/p$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplayer2/util/j0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "b"
.end annotation


# instance fields
.field private handler:Lcom/google/android/exoplayer2/util/j0;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private message:Landroid/os/Message;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/exoplayer2/util/j0$a;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Lcom/google/android/exoplayer2/util/j0$b;-><init>()V

    return-void
.end method

.method private b()V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    .line 3
    iput-object v0, p0, Lcom/google/android/exoplayer2/util/j0$b;->message:Landroid/os/Message;

    .line 4
    .line 5
    iput-object v0, p0, Lcom/google/android/exoplayer2/util/j0$b;->handler:Lcom/google/android/exoplayer2/util/j0;

    .line 6
    .line 7
    .line 8
    invoke-static {p0}, Lcom/google/android/exoplayer2/util/j0;->c(Lcom/google/android/exoplayer2/util/j0$b;)V

    .line 9
    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/google/android/exoplayer2/util/j0$b;->message:Landroid/os/Message;

    .line 3
    .line 4
    .line 5
    invoke-static {v0}, Lcom/google/android/exoplayer2/util/a;->e(Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    check-cast v0, Landroid/os/Message;

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 12
    .line 13
    .line 14
    invoke-direct {p0}, Lcom/google/android/exoplayer2/util/j0$b;->b()V

    .line 15
    return-void
.end method

.method public c(Landroid/os/Handler;)Z
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/google/android/exoplayer2/util/j0$b;->message:Landroid/os/Message;

    .line 3
    .line 4
    .line 5
    invoke-static {v0}, Lcom/google/android/exoplayer2/util/a;->e(Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    check-cast v0, Landroid/os/Message;

    .line 9
    .line 10
    .line 11
    invoke-virtual {p1, v0}, Landroid/os/Handler;->sendMessageAtFrontOfQueue(Landroid/os/Message;)Z

    .line 12
    move-result p1

    .line 13
    .line 14
    .line 15
    invoke-direct {p0}, Lcom/google/android/exoplayer2/util/j0$b;->b()V

    .line 16
    return p1
.end method

.method public d(Landroid/os/Message;Lcom/google/android/exoplayer2/util/j0;)Lcom/google/android/exoplayer2/util/j0$b;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/android/exoplayer2/util/j0$b;->message:Landroid/os/Message;

    iput-object p2, p0, Lcom/google/android/exoplayer2/util/j0$b;->handler:Lcom/google/android/exoplayer2/util/j0;

    return-object p0
.end method
