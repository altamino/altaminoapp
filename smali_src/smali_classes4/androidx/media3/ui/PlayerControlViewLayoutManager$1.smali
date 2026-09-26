.class Landroidx/media3/ui/PlayerControlViewLayoutManager$1;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/media3/ui/PlayerControlViewLayoutManager;-><init>(Landroidx/media3/ui/PlayerControlView;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroidx/media3/ui/PlayerControlViewLayoutManager;


# direct methods
.method constructor <init>(Landroidx/media3/ui/PlayerControlViewLayoutManager;)V
    .locals 0

    .line 1
    .line 2
    iput-object p1, p0, Landroidx/media3/ui/PlayerControlViewLayoutManager$1;->this$0:Landroidx/media3/ui/PlayerControlViewLayoutManager;

    .line 3
    .line 4
    .line 5
    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    .line 6
    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    .line 1
    .line 2
    iget-object p1, p0, Landroidx/media3/ui/PlayerControlViewLayoutManager$1;->this$0:Landroidx/media3/ui/PlayerControlViewLayoutManager;

    .line 3
    .line 4
    .line 5
    invoke-static {p1}, Landroidx/media3/ui/PlayerControlViewLayoutManager;->p(Landroidx/media3/ui/PlayerControlViewLayoutManager;)Landroid/view/View;

    .line 6
    move-result-object p1

    .line 7
    const/4 v0, 0x4

    .line 8
    .line 9
    if-eqz p1, :cond_0

    .line 10
    .line 11
    iget-object p1, p0, Landroidx/media3/ui/PlayerControlViewLayoutManager$1;->this$0:Landroidx/media3/ui/PlayerControlViewLayoutManager;

    .line 12
    .line 13
    .line 14
    invoke-static {p1}, Landroidx/media3/ui/PlayerControlViewLayoutManager;->p(Landroidx/media3/ui/PlayerControlViewLayoutManager;)Landroid/view/View;

    .line 15
    move-result-object p1

    .line 16
    .line 17
    .line 18
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 19
    .line 20
    :cond_0
    iget-object p1, p0, Landroidx/media3/ui/PlayerControlViewLayoutManager$1;->this$0:Landroidx/media3/ui/PlayerControlViewLayoutManager;

    .line 21
    .line 22
    .line 23
    invoke-static {p1}, Landroidx/media3/ui/PlayerControlViewLayoutManager;->q(Landroidx/media3/ui/PlayerControlViewLayoutManager;)Landroid/view/ViewGroup;

    .line 24
    move-result-object p1

    .line 25
    .line 26
    if-eqz p1, :cond_1

    .line 27
    .line 28
    iget-object p1, p0, Landroidx/media3/ui/PlayerControlViewLayoutManager$1;->this$0:Landroidx/media3/ui/PlayerControlViewLayoutManager;

    .line 29
    .line 30
    .line 31
    invoke-static {p1}, Landroidx/media3/ui/PlayerControlViewLayoutManager;->q(Landroidx/media3/ui/PlayerControlViewLayoutManager;)Landroid/view/ViewGroup;

    .line 32
    move-result-object p1

    .line 33
    .line 34
    .line 35
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 36
    .line 37
    :cond_1
    iget-object p1, p0, Landroidx/media3/ui/PlayerControlViewLayoutManager$1;->this$0:Landroidx/media3/ui/PlayerControlViewLayoutManager;

    .line 38
    .line 39
    .line 40
    invoke-static {p1}, Landroidx/media3/ui/PlayerControlViewLayoutManager;->r(Landroidx/media3/ui/PlayerControlViewLayoutManager;)Landroid/view/ViewGroup;

    .line 41
    move-result-object p1

    .line 42
    .line 43
    if-eqz p1, :cond_2

    .line 44
    .line 45
    iget-object p1, p0, Landroidx/media3/ui/PlayerControlViewLayoutManager$1;->this$0:Landroidx/media3/ui/PlayerControlViewLayoutManager;

    .line 46
    .line 47
    .line 48
    invoke-static {p1}, Landroidx/media3/ui/PlayerControlViewLayoutManager;->r(Landroidx/media3/ui/PlayerControlViewLayoutManager;)Landroid/view/ViewGroup;

    .line 49
    move-result-object p1

    .line 50
    .line 51
    .line 52
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 53
    :cond_2
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 2

    .line 1
    .line 2
    iget-object p1, p0, Landroidx/media3/ui/PlayerControlViewLayoutManager$1;->this$0:Landroidx/media3/ui/PlayerControlViewLayoutManager;

    .line 3
    .line 4
    .line 5
    invoke-static {p1}, Landroidx/media3/ui/PlayerControlViewLayoutManager;->n(Landroidx/media3/ui/PlayerControlViewLayoutManager;)Landroid/view/View;

    .line 6
    move-result-object p1

    .line 7
    .line 8
    instance-of p1, p1, Landroidx/media3/ui/DefaultTimeBar;

    .line 9
    .line 10
    if-eqz p1, :cond_0

    .line 11
    .line 12
    iget-object p1, p0, Landroidx/media3/ui/PlayerControlViewLayoutManager$1;->this$0:Landroidx/media3/ui/PlayerControlViewLayoutManager;

    .line 13
    .line 14
    .line 15
    invoke-static {p1}, Landroidx/media3/ui/PlayerControlViewLayoutManager;->o(Landroidx/media3/ui/PlayerControlViewLayoutManager;)Z

    .line 16
    move-result p1

    .line 17
    .line 18
    if-nez p1, :cond_0

    .line 19
    .line 20
    iget-object p1, p0, Landroidx/media3/ui/PlayerControlViewLayoutManager$1;->this$0:Landroidx/media3/ui/PlayerControlViewLayoutManager;

    .line 21
    .line 22
    .line 23
    invoke-static {p1}, Landroidx/media3/ui/PlayerControlViewLayoutManager;->n(Landroidx/media3/ui/PlayerControlViewLayoutManager;)Landroid/view/View;

    .line 24
    move-result-object p1

    .line 25
    .line 26
    check-cast p1, Landroidx/media3/ui/DefaultTimeBar;

    .line 27
    .line 28
    const-wide/16 v0, 0xfa

    .line 29
    .line 30
    .line 31
    invoke-virtual {p1, v0, v1}, Landroidx/media3/ui/DefaultTimeBar;->f(J)V

    .line 32
    :cond_0
    return-void
.end method
