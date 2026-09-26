.class Lcom/narvii/poweruser/history/ModerationHistoryFragment$4;
.super Ljava/lang/Object;
.source "SourceFile"

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

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/poweruser/history/ModerationHistoryFragment$4;->this$0:Lcom/narvii/poweruser/history/ModerationHistoryFragment;

    .line 3
    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 2

    .line 1
    .line 2
    iget-object p1, p0, Lcom/narvii/poweruser/history/ModerationHistoryFragment$4;->this$0:Lcom/narvii/poweruser/history/ModerationHistoryFragment;

    .line 3
    .line 4
    iget-object p1, p1, Lcom/narvii/poweruser/history/ModerationHistoryFragment;->topContainer:Landroid/widget/FrameLayout;

    .line 5
    const/4 v0, 0x0

    .line 6
    .line 7
    .line 8
    invoke-virtual {p1, v0}, Landroid/view/View;->setAlpha(F)V

    .line 9
    .line 10
    iget-object p1, p0, Lcom/narvii/poweruser/history/ModerationHistoryFragment$4;->this$0:Lcom/narvii/poweruser/history/ModerationHistoryFragment;

    .line 11
    .line 12
    iget-object p1, p1, Lcom/narvii/poweruser/history/ModerationHistoryFragment;->topContainer:Landroid/widget/FrameLayout;

    .line 13
    .line 14
    const/16 v1, 0x8

    .line 15
    .line 16
    .line 17
    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    .line 18
    .line 19
    iget-object p1, p0, Lcom/narvii/poweruser/history/ModerationHistoryFragment$4;->this$0:Lcom/narvii/poweruser/history/ModerationHistoryFragment;

    .line 20
    .line 21
    iget-object p1, p1, Lcom/narvii/poweruser/history/ModerationHistoryFragment;->topContainerParent:Landroid/widget/FrameLayout;

    .line 22
    .line 23
    .line 24
    invoke-virtual {p1, v0}, Landroid/view/View;->setAlpha(F)V

    .line 25
    .line 26
    iget-object p1, p0, Lcom/narvii/poweruser/history/ModerationHistoryFragment$4;->this$0:Lcom/narvii/poweruser/history/ModerationHistoryFragment;

    .line 27
    .line 28
    iget-object p1, p1, Lcom/narvii/poweruser/history/ModerationHistoryFragment;->topContainerParent:Landroid/widget/FrameLayout;

    .line 29
    .line 30
    .line 31
    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    .line 32
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
