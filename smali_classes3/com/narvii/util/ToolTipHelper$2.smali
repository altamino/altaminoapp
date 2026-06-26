.class Lcom/narvii/util/ToolTipHelper$2;
.super Ljava/lang/Object;
.source "ToolTipHelper.java"

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

    .line 246
    iput-object p1, p0, Lcom/narvii/util/ToolTipHelper$2;->this$0:Lcom/narvii/util/ToolTipHelper;

    iput-boolean p2, p0, Lcom/narvii/util/ToolTipHelper$2;->val$finalUp:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 2

    .line 254
    iget-object p1, p0, Lcom/narvii/util/ToolTipHelper$2;->this$0:Lcom/narvii/util/ToolTipHelper;

    iget-object p1, p1, Lcom/narvii/util/ToolTipHelper;->bubble:Lcom/narvii/widget/PopupBubble;

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getVisibility()I

    move-result p1

    if-eqz p1, :cond_0

    return-void

    .line 257
    :cond_0
    iget-object p1, p0, Lcom/narvii/util/ToolTipHelper$2;->this$0:Lcom/narvii/util/ToolTipHelper;

    iget-object v0, p1, Lcom/narvii/util/ToolTipHelper;->bubble:Lcom/narvii/widget/PopupBubble;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-boolean v1, p0, Lcom/narvii/util/ToolTipHelper$2;->val$finalUp:Z

    invoke-static {v0, v1}, Lcom/narvii/util/ToolTipHelper;->getTranslateAnimation(Landroid/content/Context;Z)Landroid/view/animation/TranslateAnimation;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/narvii/util/ToolTipHelper;->access$002(Lcom/narvii/util/ToolTipHelper;Landroid/view/animation/TranslateAnimation;)Landroid/view/animation/TranslateAnimation;

    .line 258
    iget-object p1, p0, Lcom/narvii/util/ToolTipHelper$2;->this$0:Lcom/narvii/util/ToolTipHelper;

    iget-object v0, p1, Lcom/narvii/util/ToolTipHelper;->bubble:Lcom/narvii/widget/PopupBubble;

    invoke-static {p1}, Lcom/narvii/util/ToolTipHelper;->access$000(Lcom/narvii/util/ToolTipHelper;)Landroid/view/animation/TranslateAnimation;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/FrameLayout;->startAnimation(Landroid/view/animation/Animation;)V

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
