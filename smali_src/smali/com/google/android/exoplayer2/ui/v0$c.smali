.class Lcom/google/android/exoplayer2/ui/v0$c;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/exoplayer2/ui/v0;-><init>(Lcom/google/android/exoplayer2/ui/c0;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/exoplayer2/ui/v0;

.field final synthetic val$playerControlView:Lcom/google/android/exoplayer2/ui/c0;


# direct methods
.method constructor <init>(Lcom/google/android/exoplayer2/ui/v0;Lcom/google/android/exoplayer2/ui/c0;)V
    .locals 0

    .line 1
    .line 2
    iput-object p1, p0, Lcom/google/android/exoplayer2/ui/v0$c;->this$0:Lcom/google/android/exoplayer2/ui/v0;

    .line 3
    .line 4
    iput-object p2, p0, Lcom/google/android/exoplayer2/ui/v0$c;->val$playerControlView:Lcom/google/android/exoplayer2/ui/c0;

    .line 5
    .line 6
    .line 7
    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    .line 8
    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    .line 1
    .line 2
    iget-object p1, p0, Lcom/google/android/exoplayer2/ui/v0$c;->this$0:Lcom/google/android/exoplayer2/ui/v0;

    .line 3
    const/4 v0, 0x1

    .line 4
    .line 5
    .line 6
    invoke-static {p1, v0}, Lcom/google/android/exoplayer2/ui/v0;->s(Lcom/google/android/exoplayer2/ui/v0;I)V

    .line 7
    .line 8
    iget-object p1, p0, Lcom/google/android/exoplayer2/ui/v0$c;->this$0:Lcom/google/android/exoplayer2/ui/v0;

    .line 9
    .line 10
    .line 11
    invoke-static {p1}, Lcom/google/android/exoplayer2/ui/v0;->t(Lcom/google/android/exoplayer2/ui/v0;)Z

    .line 12
    move-result p1

    .line 13
    .line 14
    if-eqz p1, :cond_0

    .line 15
    .line 16
    iget-object p1, p0, Lcom/google/android/exoplayer2/ui/v0$c;->val$playerControlView:Lcom/google/android/exoplayer2/ui/c0;

    .line 17
    .line 18
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/v0$c;->this$0:Lcom/google/android/exoplayer2/ui/v0;

    .line 19
    .line 20
    .line 21
    invoke-static {v0}, Lcom/google/android/exoplayer2/ui/v0;->v(Lcom/google/android/exoplayer2/ui/v0;)Ljava/lang/Runnable;

    .line 22
    move-result-object v0

    .line 23
    .line 24
    .line 25
    invoke-virtual {p1, v0}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 26
    .line 27
    iget-object p1, p0, Lcom/google/android/exoplayer2/ui/v0$c;->this$0:Lcom/google/android/exoplayer2/ui/v0;

    .line 28
    const/4 v0, 0x0

    .line 29
    .line 30
    .line 31
    invoke-static {p1, v0}, Lcom/google/android/exoplayer2/ui/v0;->u(Lcom/google/android/exoplayer2/ui/v0;Z)Z

    .line 32
    :cond_0
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 1

    .line 1
    .line 2
    iget-object p1, p0, Lcom/google/android/exoplayer2/ui/v0$c;->this$0:Lcom/google/android/exoplayer2/ui/v0;

    .line 3
    const/4 v0, 0x3

    .line 4
    .line 5
    .line 6
    invoke-static {p1, v0}, Lcom/google/android/exoplayer2/ui/v0;->s(Lcom/google/android/exoplayer2/ui/v0;I)V

    .line 7
    return-void
.end method
