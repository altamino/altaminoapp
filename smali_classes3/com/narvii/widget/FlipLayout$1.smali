.class Lcom/narvii/widget/FlipLayout$1;
.super Landroid/animation/AnimatorListenerAdapter;
.source "FlipLayout.java"


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

    .line 42
    iput-object p1, p0, Lcom/narvii/widget/FlipLayout$1;->this$0:Lcom/narvii/widget/FlipLayout;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2

    .line 51
    iget-object p1, p0, Lcom/narvii/widget/FlipLayout$1;->this$0:Lcom/narvii/widget/FlipLayout;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/widget/FrameLayout;->setClickable(Z)V

    .line 52
    iget-object p1, p0, Lcom/narvii/widget/FlipLayout$1;->this$0:Lcom/narvii/widget/FlipLayout;

    iget-object v0, p1, Lcom/narvii/widget/FlipLayout;->flipListener:Lcom/narvii/widget/FlipLayout$FlipListener;

    if-eqz v0, :cond_0

    .line 54
    :try_start_0
    iget-boolean v1, p1, Lcom/narvii/widget/FlipLayout;->isShowBack:Z

    invoke-interface {v0, p1, v1}, Lcom/narvii/widget/FlipLayout$FlipListener;->onFlipEnd(Lcom/narvii/widget/FlipLayout;Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    const-string v0, "flip"

    .line 56
    invoke-static {v0, p1}, Lcom/narvii/util/Log;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_0
    :goto_0
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 1

    .line 46
    iget-object p1, p0, Lcom/narvii/widget/FlipLayout$1;->this$0:Lcom/narvii/widget/FlipLayout;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/FrameLayout;->setClickable(Z)V

    return-void
.end method
