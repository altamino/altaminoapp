.class Lcom/narvii/util/ToolTipHelper$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/util/ToolTipHelper;->showToolTip(Lcom/narvii/util/Tooltip;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/util/ToolTipHelper;

.field final synthetic val$finalUp:Z


# direct methods
.method constructor <init>(Lcom/narvii/util/ToolTipHelper;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/util/ToolTipHelper$2;->this$0:Lcom/narvii/util/ToolTipHelper;

    .line 3
    .line 4
    iput-boolean p2, p0, Lcom/narvii/util/ToolTipHelper$2;->val$finalUp:Z

    .line 5
    .line 6
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 2

    .line 1
    .line 2
    iget-object p1, p0, Lcom/narvii/util/ToolTipHelper$2;->this$0:Lcom/narvii/util/ToolTipHelper;

    .line 3
    .line 4
    iget-object p1, p1, Lcom/narvii/util/ToolTipHelper;->bubble:Lcom/narvii/widget/PopupBubble;

    .line 5
    .line 6
    .line 7
    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    .line 8
    move-result p1

    .line 9
    .line 10
    if-eqz p1, :cond_0

    .line 11
    return-void

    .line 12
    .line 13
    :cond_0
    iget-object p1, p0, Lcom/narvii/util/ToolTipHelper$2;->this$0:Lcom/narvii/util/ToolTipHelper;

    .line 14
    .line 15
    iget-object v0, p1, Lcom/narvii/util/ToolTipHelper;->bubble:Lcom/narvii/widget/PopupBubble;

    .line 16
    .line 17
    .line 18
    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 19
    move-result-object v0

    .line 20
    .line 21
    iget-boolean v1, p0, Lcom/narvii/util/ToolTipHelper$2;->val$finalUp:Z

    .line 22
    .line 23
    .line 24
    invoke-static {v0, v1}, Lcom/narvii/util/ToolTipHelper;->getTranslateAnimation(Landroid/content/Context;Z)Landroid/view/animation/TranslateAnimation;

    .line 25
    move-result-object v0

    .line 26
    .line 27
    .line 28
    invoke-static {p1, v0}, Lcom/narvii/util/ToolTipHelper;->b(Lcom/narvii/util/ToolTipHelper;Landroid/view/animation/TranslateAnimation;)V

    .line 29
    .line 30
    iget-object p1, p0, Lcom/narvii/util/ToolTipHelper$2;->this$0:Lcom/narvii/util/ToolTipHelper;

    .line 31
    .line 32
    iget-object v0, p1, Lcom/narvii/util/ToolTipHelper;->bubble:Lcom/narvii/widget/PopupBubble;

    .line 33
    .line 34
    .line 35
    invoke-static {p1}, Lcom/narvii/util/ToolTipHelper;->a(Lcom/narvii/util/ToolTipHelper;)Landroid/view/animation/TranslateAnimation;

    .line 36
    move-result-object p1

    .line 37
    .line 38
    .line 39
    invoke-virtual {v0, p1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 40
    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0

    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 0

    return-void
.end method
