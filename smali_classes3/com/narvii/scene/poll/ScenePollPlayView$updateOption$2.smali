.class final Lcom/narvii/scene/poll/ScenePollPlayView$updateOption$2;
.super Ljava/lang/Object;
.source "ScenePollPlayView.kt"

# interfaces
.implements Lcom/narvii/widget/LongPushButton$DispatchSetPressedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/scene/poll/ScenePollPlayView;->updateOption(Landroid/view/View;Lcom/narvii/model/PollOption;ZZZI)V
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

    iput-object p1, p0, Lcom/narvii/scene/poll/ScenePollPlayView$updateOption$2;->this$0:Lcom/narvii/scene/poll/ScenePollPlayView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onPress(Z)V
    .locals 4

    .line 239
    iget-object v0, p0, Lcom/narvii/scene/poll/ScenePollPlayView$updateOption$2;->this$0:Lcom/narvii/scene/poll/ScenePollPlayView;

    invoke-static {v0, p1}, Lcom/narvii/scene/poll/ScenePollPlayView;->access$setOptionPressing$p(Lcom/narvii/scene/poll/ScenePollPlayView;Z)V

    if-nez p1, :cond_0

    .line 240
    iget-object p1, p0, Lcom/narvii/scene/poll/ScenePollPlayView$updateOption$2;->this$0:Lcom/narvii/scene/poll/ScenePollPlayView;

    invoke-static {p1}, Lcom/narvii/scene/poll/ScenePollPlayView;->access$isRequesting$p(Lcom/narvii/scene/poll/ScenePollPlayView;)Z

    move-result p1

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/narvii/scene/poll/ScenePollPlayView$updateOption$2;->this$0:Lcom/narvii/scene/poll/ScenePollPlayView;

    invoke-static {p1}, Lcom/narvii/scene/poll/ScenePollPlayView;->access$getCountDownTime$p(Lcom/narvii/scene/poll/ScenePollPlayView;)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long p1, v0, v2

    if-gtz p1, :cond_0

    .line 241
    iget-object p1, p0, Lcom/narvii/scene/poll/ScenePollPlayView$updateOption$2;->this$0:Lcom/narvii/scene/poll/ScenePollPlayView;

    invoke-static {p1}, Lcom/narvii/scene/poll/ScenePollPlayView;->access$onTimeOut(Lcom/narvii/scene/poll/ScenePollPlayView;)V

    :cond_0
    return-void
.end method
