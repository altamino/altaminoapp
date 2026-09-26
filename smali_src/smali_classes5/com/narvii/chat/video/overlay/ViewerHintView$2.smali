.class Lcom/narvii/chat/video/overlay/ViewerHintView$2;
.super Ljava/lang/Object;
.source "SourceFile"

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

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/chat/video/overlay/ViewerHintView$2;->this$0:Lcom/narvii/chat/video/overlay/ViewerHintView;

    .line 3
    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 1

    .line 1
    .line 2
    iget-object p1, p0, Lcom/narvii/chat/video/overlay/ViewerHintView$2;->this$0:Lcom/narvii/chat/video/overlay/ViewerHintView;

    .line 3
    const/4 v0, 0x0

    .line 4
    .line 5
    .line 6
    invoke-static {p1, v0}, Lcom/narvii/chat/video/overlay/ViewerHintView;->c(Lcom/narvii/chat/video/overlay/ViewerHintView;Z)V

    .line 7
    .line 8
    iget-object p1, p0, Lcom/narvii/chat/video/overlay/ViewerHintView$2;->this$0:Lcom/narvii/chat/video/overlay/ViewerHintView;

    .line 9
    .line 10
    .line 11
    invoke-static {p1}, Lcom/narvii/chat/video/overlay/ViewerHintView;->a(Lcom/narvii/chat/video/overlay/ViewerHintView;)Ljava/util/List;

    .line 12
    move-result-object p1

    .line 13
    .line 14
    .line 15
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 16
    move-result p1

    .line 17
    .line 18
    if-lez p1, :cond_0

    .line 19
    .line 20
    iget-object p1, p0, Lcom/narvii/chat/video/overlay/ViewerHintView$2;->this$0:Lcom/narvii/chat/video/overlay/ViewerHintView;

    .line 21
    .line 22
    .line 23
    invoke-static {p1}, Lcom/narvii/chat/video/overlay/ViewerHintView;->a(Lcom/narvii/chat/video/overlay/ViewerHintView;)Ljava/util/List;

    .line 24
    move-result-object p1

    .line 25
    .line 26
    .line 27
    invoke-interface {p1, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 28
    move-result-object p1

    .line 29
    .line 30
    check-cast p1, Lcom/narvii/chat/signalling/ChannelUser;

    .line 31
    .line 32
    iget-object v0, p0, Lcom/narvii/chat/video/overlay/ViewerHintView$2;->this$0:Lcom/narvii/chat/video/overlay/ViewerHintView;

    .line 33
    .line 34
    .line 35
    invoke-static {v0, p1}, Lcom/narvii/chat/video/overlay/ViewerHintView;->e(Lcom/narvii/chat/video/overlay/ViewerHintView;Lcom/narvii/chat/signalling/ChannelUser;)V

    .line 36
    goto :goto_0

    .line 37
    .line 38
    :cond_0
    iget-object p1, p0, Lcom/narvii/chat/video/overlay/ViewerHintView$2;->this$0:Lcom/narvii/chat/video/overlay/ViewerHintView;

    .line 39
    const/4 v0, 0x4

    .line 40
    .line 41
    .line 42
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 43
    :goto_0
    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0

    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 1

    .line 1
    .line 2
    iget-object p1, p0, Lcom/narvii/chat/video/overlay/ViewerHintView$2;->this$0:Lcom/narvii/chat/video/overlay/ViewerHintView;

    .line 3
    const/4 v0, 0x1

    .line 4
    .line 5
    .line 6
    invoke-static {p1, v0}, Lcom/narvii/chat/video/overlay/ViewerHintView;->c(Lcom/narvii/chat/video/overlay/ViewerHintView;Z)V

    .line 7
    return-void
.end method
