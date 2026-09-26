.class Lcom/narvii/widget/FlipLayout$1;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/widget/FlipLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/widget/FlipLayout;


# direct methods
.method constructor <init>(Lcom/narvii/widget/FlipLayout;)V
    .locals 0

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/widget/FlipLayout$1;->this$0:Lcom/narvii/widget/FlipLayout;

    .line 3
    .line 4
    .line 5
    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    .line 6
    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2

    .line 1
    .line 2
    iget-object p1, p0, Lcom/narvii/widget/FlipLayout$1;->this$0:Lcom/narvii/widget/FlipLayout;

    .line 3
    const/4 v0, 0x1

    .line 4
    .line 5
    .line 6
    invoke-virtual {p1, v0}, Landroid/view/View;->setClickable(Z)V

    .line 7
    .line 8
    iget-object p1, p0, Lcom/narvii/widget/FlipLayout$1;->this$0:Lcom/narvii/widget/FlipLayout;

    .line 9
    .line 10
    iget-object v0, p1, Lcom/narvii/widget/FlipLayout;->flipListener:Lcom/narvii/widget/FlipLayout$FlipListener;

    .line 11
    .line 12
    if-eqz v0, :cond_0

    .line 13
    .line 14
    :try_start_0
    iget-boolean v1, p1, Lcom/narvii/widget/FlipLayout;->isShowBack:Z

    .line 15
    .line 16
    .line 17
    invoke-interface {v0, p1, v1}, Lcom/narvii/widget/FlipLayout$FlipListener;->onFlipEnd(Lcom/narvii/widget/FlipLayout;Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 18
    goto :goto_0

    .line 19
    :catch_0
    move-exception p1

    .line 20
    .line 21
    const-string v0, "flip"

    .line 22
    .line 23
    .line 24
    invoke-static {v0, p1}, Lcom/narvii/util/Log;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 25
    :cond_0
    :goto_0
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 1

    .line 1
    .line 2
    iget-object p1, p0, Lcom/narvii/widget/FlipLayout$1;->this$0:Lcom/narvii/widget/FlipLayout;

    .line 3
    const/4 v0, 0x0

    .line 4
    .line 5
    .line 6
    invoke-virtual {p1, v0}, Landroid/view/View;->setClickable(Z)V

    .line 7
    return-void
.end method
