.class Lcom/narvii/chat/video/overlay/ViewerHintView$2;
.super Ljava/lang/Object;
.source "ViewerHintView.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/narvii/chat/video/overlay/ViewerHintView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/chat/video/overlay/ViewerHintView;


# direct methods
.method constructor <init>(Lcom/narvii/chat/video/overlay/ViewerHintView;)V
    .locals 0

    .line 75
    iput-object p1, p0, Lcom/narvii/chat/video/overlay/ViewerHintView$2;->this$0:Lcom/narvii/chat/video/overlay/ViewerHintView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 1

    .line 84
    iget-object p1, p0, Lcom/narvii/chat/video/overlay/ViewerHintView$2;->this$0:Lcom/narvii/chat/video/overlay/ViewerHintView;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/narvii/chat/video/overlay/ViewerHintView;->access$202(Lcom/narvii/chat/video/overlay/ViewerHintView;Z)Z

    .line 85
    iget-object p1, p0, Lcom/narvii/chat/video/overlay/ViewerHintView$2;->this$0:Lcom/narvii/chat/video/overlay/ViewerHintView;

    invoke-static {p1}, Lcom/narvii/chat/video/overlay/ViewerHintView;->access$300(Lcom/narvii/chat/video/overlay/ViewerHintView;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-lez p1, :cond_0

    .line 86
    iget-object p1, p0, Lcom/narvii/chat/video/overlay/ViewerHintView$2;->this$0:Lcom/narvii/chat/video/overlay/ViewerHintView;

    invoke-static {p1}, Lcom/narvii/chat/video/overlay/ViewerHintView;->access$300(Lcom/narvii/chat/video/overlay/ViewerHintView;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/narvii/chat/signalling/ChannelUser;

    .line 87
    iget-object v0, p0, Lcom/narvii/chat/video/overlay/ViewerHintView$2;->this$0:Lcom/narvii/chat/video/overlay/ViewerHintView;

    invoke-static {v0, p1}, Lcom/narvii/chat/video/overlay/ViewerHintView;->access$400(Lcom/narvii/chat/video/overlay/ViewerHintView;Lcom/narvii/chat/signalling/ChannelUser;)V

    goto :goto_0

    .line 89
    :cond_0
    iget-object p1, p0, Lcom/narvii/chat/video/overlay/ViewerHintView$2;->this$0:Lcom/narvii/chat/video/overlay/ViewerHintView;

    const/4 v0, 0x4

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    :goto_0
    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0

    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 1

    .line 78
    iget-object p1, p0, Lcom/narvii/chat/video/overlay/ViewerHintView$2;->this$0:Lcom/narvii/chat/video/overlay/ViewerHintView;

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcom/narvii/chat/video/overlay/ViewerHintView;->access$202(Lcom/narvii/chat/video/overlay/ViewerHintView;Z)Z

    return-void
.end method
