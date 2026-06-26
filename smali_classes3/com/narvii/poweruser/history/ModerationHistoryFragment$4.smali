.class Lcom/narvii/poweruser/history/ModerationHistoryFragment$4;
.super Ljava/lang/Object;
.source "ModerationHistoryFragment.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/poweruser/history/ModerationHistoryFragment;->hideTopContainer()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/poweruser/history/ModerationHistoryFragment;


# direct methods
.method constructor <init>(Lcom/narvii/poweruser/history/ModerationHistoryFragment;)V
    .locals 0

    .line 177
    iput-object p1, p0, Lcom/narvii/poweruser/history/ModerationHistoryFragment$4;->this$0:Lcom/narvii/poweruser/history/ModerationHistoryFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 2

    .line 184
    iget-object p1, p0, Lcom/narvii/poweruser/history/ModerationHistoryFragment$4;->this$0:Lcom/narvii/poweruser/history/ModerationHistoryFragment;

    iget-object p1, p1, Lcom/narvii/poweruser/history/ModerationHistoryFragment;->topContainer:Landroid/widget/FrameLayout;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/FrameLayout;->setAlpha(F)V

    .line 185
    iget-object p1, p0, Lcom/narvii/poweruser/history/ModerationHistoryFragment$4;->this$0:Lcom/narvii/poweruser/history/ModerationHistoryFragment;

    iget-object p1, p1, Lcom/narvii/poweruser/history/ModerationHistoryFragment;->topContainer:Landroid/widget/FrameLayout;

    const/16 v1, 0x8

    invoke-virtual {p1, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 186
    iget-object p1, p0, Lcom/narvii/poweruser/history/ModerationHistoryFragment$4;->this$0:Lcom/narvii/poweruser/history/ModerationHistoryFragment;

    iget-object p1, p1, Lcom/narvii/poweruser/history/ModerationHistoryFragment;->topContainerParent:Landroid/widget/FrameLayout;

    invoke-virtual {p1, v0}, Landroid/widget/FrameLayout;->setAlpha(F)V

    .line 187
    iget-object p1, p0, Lcom/narvii/poweruser/history/ModerationHistoryFragment$4;->this$0:Lcom/narvii/poweruser/history/ModerationHistoryFragment;

    iget-object p1, p1, Lcom/narvii/poweruser/history/ModerationHistoryFragment;->topContainerParent:Landroid/widget/FrameLayout;

    invoke-virtual {p1, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

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
