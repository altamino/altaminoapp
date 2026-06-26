.class Lcom/narvii/poweruser/history/ModerationHistoryFragment$1;
.super Ljava/lang/Object;
.source "ModerationHistoryFragment.java"

# interfaces
.implements Landroid/widget/AbsListView$OnScrollListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/poweruser/history/ModerationHistoryFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
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

    .line 55
    iput-object p1, p0, Lcom/narvii/poweruser/history/ModerationHistoryFragment$1;->this$0:Lcom/narvii/poweruser/history/ModerationHistoryFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onScroll(Landroid/widget/AbsListView;III)V
    .locals 0

    return-void
.end method

.method public onScrollStateChanged(Landroid/widget/AbsListView;I)V
    .locals 0

    if-eqz p2, :cond_0

    .line 59
    iget-object p1, p0, Lcom/narvii/poweruser/history/ModerationHistoryFragment$1;->this$0:Lcom/narvii/poweruser/history/ModerationHistoryFragment;

    iget-object p1, p1, Lcom/narvii/poweruser/history/ModerationHistoryFragment;->topContainer:Landroid/widget/FrameLayout;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getVisibility()I

    move-result p1

    if-nez p1, :cond_0

    .line 60
    iget-object p1, p0, Lcom/narvii/poweruser/history/ModerationHistoryFragment$1;->this$0:Lcom/narvii/poweruser/history/ModerationHistoryFragment;

    invoke-static {p1}, Lcom/narvii/poweruser/history/ModerationHistoryFragment;->access$000(Lcom/narvii/poweruser/history/ModerationHistoryFragment;)V

    :cond_0
    return-void
.end method
