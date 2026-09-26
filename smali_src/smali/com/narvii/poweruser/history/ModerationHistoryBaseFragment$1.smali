.class Lcom/narvii/poweruser/history/ModerationHistoryBaseFragment$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/AbsListView$OnScrollListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/poweruser/history/ModerationHistoryBaseFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/poweruser/history/ModerationHistoryBaseFragment;


# direct methods
.method constructor <init>(Lcom/narvii/poweruser/history/ModerationHistoryBaseFragment;)V
    .locals 0

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/poweruser/history/ModerationHistoryBaseFragment$1;->this$0:Lcom/narvii/poweruser/history/ModerationHistoryBaseFragment;

    .line 3
    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    return-void
.end method


# virtual methods
.method public onScroll(Landroid/widget/AbsListView;III)V
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/poweruser/history/ModerationHistoryBaseFragment$1;->this$0:Lcom/narvii/poweruser/history/ModerationHistoryBaseFragment;

    .line 3
    .line 4
    .line 5
    invoke-static {v0, p1, p2, p3, p4}, Lcom/narvii/poweruser/history/ModerationHistoryBaseFragment;->w(Lcom/narvii/poweruser/history/ModerationHistoryBaseFragment;Landroid/widget/AbsListView;III)V

    .line 6
    return-void
.end method

.method public onScrollStateChanged(Landroid/widget/AbsListView;I)V
    .locals 0

    return-void
.end method
