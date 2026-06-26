.class final Lcom/narvii/scene/poll/ScenePollPlayView$updateOptions$2;
.super Ljava/lang/Object;
.source "ScenePollPlayView.kt"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/scene/poll/ScenePollPlayView;->updateOptions(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/scene/poll/ScenePollPlayView;


# direct methods
.method constructor <init>(Lcom/narvii/scene/poll/ScenePollPlayView;)V
    .locals 0

    iput-object p1, p0, Lcom/narvii/scene/poll/ScenePollPlayView$updateOptions$2;->this$0:Lcom/narvii/scene/poll/ScenePollPlayView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 0

    .line 315
    iget-object p1, p0, Lcom/narvii/scene/poll/ScenePollPlayView$updateOptions$2;->this$0:Lcom/narvii/scene/poll/ScenePollPlayView;

    invoke-static {p1}, Lcom/narvii/scene/poll/ScenePollPlayView;->access$isRequesting$p(Lcom/narvii/scene/poll/ScenePollPlayView;)Z

    move-result p1

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/narvii/scene/poll/ScenePollPlayView$updateOptions$2;->this$0:Lcom/narvii/scene/poll/ScenePollPlayView;

    invoke-static {p1}, Lcom/narvii/scene/poll/ScenePollPlayView;->access$startChangeVote(Lcom/narvii/scene/poll/ScenePollPlayView;)V

    :cond_0
    return-void
.end method
