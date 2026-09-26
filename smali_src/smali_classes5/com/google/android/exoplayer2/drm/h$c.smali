.class Lcom/google/android/exoplayer2/drm/h$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/exoplayer2/drm/f0$c;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplayer2/drm/h;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "c"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/exoplayer2/drm/h;


# direct methods
.method private constructor <init>(Lcom/google/android/exoplayer2/drm/h;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/exoplayer2/drm/h$c;->this$0:Lcom/google/android/exoplayer2/drm/h;

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/exoplayer2/drm/h;Lcom/google/android/exoplayer2/drm/h$a;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/drm/h$c;-><init>(Lcom/google/android/exoplayer2/drm/h;)V

    return-void
.end method


# virtual methods
.method public a(Lcom/google/android/exoplayer2/drm/f0;[BII[B)V
    .locals 0
    .param p2    # [B
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p5    # [B
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    .line 2
    iget-object p1, p0, Lcom/google/android/exoplayer2/drm/h$c;->this$0:Lcom/google/android/exoplayer2/drm/h;

    .line 3
    .line 4
    iget-object p1, p1, Lcom/google/android/exoplayer2/drm/h;->mediaDrmHandler:Lcom/google/android/exoplayer2/drm/h$d;

    .line 5
    .line 6
    .line 7
    invoke-static {p1}, Lcom/google/android/exoplayer2/util/a;->e(Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    move-result-object p1

    .line 9
    .line 10
    check-cast p1, Lcom/google/android/exoplayer2/drm/h$d;

    .line 11
    .line 12
    .line 13
    invoke-virtual {p1, p3, p2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    .line 14
    move-result-object p1

    .line 15
    .line 16
    .line 17
    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    .line 18
    return-void
.end method
