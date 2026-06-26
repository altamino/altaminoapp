.class Lcom/narvii/chat/screenroom/widgets/SRVideoController$12;
.super Ljava/lang/Object;
.source "SRVideoController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/narvii/chat/screenroom/widgets/SRVideoController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/chat/screenroom/widgets/SRVideoController;


# direct methods
.method constructor <init>(Lcom/narvii/chat/screenroom/widgets/SRVideoController;)V
    .locals 0

    .line 638
    iput-object p1, p0, Lcom/narvii/chat/screenroom/widgets/SRVideoController$12;->this$0:Lcom/narvii/chat/screenroom/widgets/SRVideoController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 641
    iget-object v0, p0, Lcom/narvii/chat/screenroom/widgets/SRVideoController$12;->this$0:Lcom/narvii/chat/screenroom/widgets/SRVideoController;

    invoke-static {v0}, Lcom/narvii/chat/screenroom/widgets/SRVideoController;->access$500(Lcom/narvii/chat/screenroom/widgets/SRVideoController;)I

    move-result v0

    .line 642
    iget-object v1, p0, Lcom/narvii/chat/screenroom/widgets/SRVideoController$12;->this$0:Lcom/narvii/chat/screenroom/widgets/SRVideoController;

    invoke-static {v1}, Lcom/narvii/chat/screenroom/widgets/SRVideoController;->access$600(Lcom/narvii/chat/screenroom/widgets/SRVideoController;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/narvii/chat/screenroom/widgets/SRVideoController$12;->this$0:Lcom/narvii/chat/screenroom/widgets/SRVideoController;

    invoke-static {v1}, Lcom/narvii/chat/screenroom/widgets/SRVideoController;->access$100(Lcom/narvii/chat/screenroom/widgets/SRVideoController;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/narvii/chat/screenroom/widgets/SRVideoController$12;->this$0:Lcom/narvii/chat/screenroom/widgets/SRVideoController;

    invoke-static {v1}, Lcom/narvii/chat/screenroom/widgets/SRVideoController;->access$700(Lcom/narvii/chat/screenroom/widgets/SRVideoController;)Lcom/narvii/chat/screenroom/MediaPlayerControl;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/narvii/chat/screenroom/widgets/SRVideoController$12;->this$0:Lcom/narvii/chat/screenroom/widgets/SRVideoController;

    invoke-static {v1}, Lcom/narvii/chat/screenroom/widgets/SRVideoController;->access$700(Lcom/narvii/chat/screenroom/widgets/SRVideoController;)Lcom/narvii/chat/screenroom/MediaPlayerControl;

    move-result-object v1

    invoke-interface {v1}, Lcom/narvii/chat/screenroom/MediaPlayerControl;->isPlaying()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 643
    iget-object v1, p0, Lcom/narvii/chat/screenroom/widgets/SRVideoController$12;->this$0:Lcom/narvii/chat/screenroom/widgets/SRVideoController;

    invoke-static {v1}, Lcom/narvii/chat/screenroom/widgets/SRVideoController;->access$800(Lcom/narvii/chat/screenroom/widgets/SRVideoController;)Ljava/lang/Runnable;

    move-result-object v2

    rem-int/lit16 v0, v0, 0x3e8

    rsub-int v0, v0, 0x3e8

    int-to-long v3, v0

    invoke-virtual {v1, v2, v3, v4}, Landroid/widget/FrameLayout;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_0
    return-void
.end method
