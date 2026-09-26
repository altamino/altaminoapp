.class Lcom/narvii/chat/screenroom/overlay/SROverlayMainFragment$4$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/chat/screenroom/overlay/SROverlayMainFragment$4;->onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/narvii/chat/screenroom/overlay/SROverlayMainFragment$4;


# direct methods
.method constructor <init>(Lcom/narvii/chat/screenroom/overlay/SROverlayMainFragment$4;)V
    .locals 0

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/chat/screenroom/overlay/SROverlayMainFragment$4$1;->this$1:Lcom/narvii/chat/screenroom/overlay/SROverlayMainFragment$4;

    .line 3
    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/chat/screenroom/overlay/SROverlayMainFragment$4$1;->this$1:Lcom/narvii/chat/screenroom/overlay/SROverlayMainFragment$4;

    .line 3
    .line 4
    iget-object v0, v0, Lcom/narvii/chat/screenroom/overlay/SROverlayMainFragment$4;->this$0:Lcom/narvii/chat/screenroom/overlay/SROverlayMainFragment;

    .line 5
    .line 6
    .line 7
    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->isAdded()Z

    .line 8
    move-result v0

    .line 9
    .line 10
    if-eqz v0, :cond_1

    .line 11
    .line 12
    iget-object v0, p0, Lcom/narvii/chat/screenroom/overlay/SROverlayMainFragment$4$1;->this$1:Lcom/narvii/chat/screenroom/overlay/SROverlayMainFragment$4;

    .line 13
    .line 14
    iget-object v0, v0, Lcom/narvii/chat/screenroom/overlay/SROverlayMainFragment$4;->this$0:Lcom/narvii/chat/screenroom/overlay/SROverlayMainFragment;

    .line 15
    .line 16
    .line 17
    invoke-virtual {v0}, Lcom/narvii/app/NVFragment;->isDestoryed()Z

    .line 18
    move-result v0

    .line 19
    .line 20
    if-eqz v0, :cond_0

    .line 21
    goto :goto_0

    .line 22
    .line 23
    :cond_0
    iget-object v0, p0, Lcom/narvii/chat/screenroom/overlay/SROverlayMainFragment$4$1;->this$1:Lcom/narvii/chat/screenroom/overlay/SROverlayMainFragment$4;

    .line 24
    .line 25
    iget-object v0, v0, Lcom/narvii/chat/screenroom/overlay/SROverlayMainFragment$4;->this$0:Lcom/narvii/chat/screenroom/overlay/SROverlayMainFragment;

    .line 26
    .line 27
    .line 28
    invoke-static {v0}, Lcom/narvii/chat/screenroom/overlay/SROverlayMainFragment;->n(Lcom/narvii/chat/screenroom/overlay/SROverlayMainFragment;)Lcom/narvii/chat/input/ChatInputFragment;

    .line 29
    move-result-object v0

    .line 30
    .line 31
    if-eqz v0, :cond_1

    .line 32
    .line 33
    iget-object v0, p0, Lcom/narvii/chat/screenroom/overlay/SROverlayMainFragment$4$1;->this$1:Lcom/narvii/chat/screenroom/overlay/SROverlayMainFragment$4;

    .line 34
    .line 35
    iget-object v0, v0, Lcom/narvii/chat/screenroom/overlay/SROverlayMainFragment$4;->this$0:Lcom/narvii/chat/screenroom/overlay/SROverlayMainFragment;

    .line 36
    .line 37
    .line 38
    invoke-static {v0}, Lcom/narvii/chat/screenroom/overlay/SROverlayMainFragment;->n(Lcom/narvii/chat/screenroom/overlay/SROverlayMainFragment;)Lcom/narvii/chat/input/ChatInputFragment;

    .line 39
    move-result-object v0

    .line 40
    .line 41
    .line 42
    invoke-virtual {v0}, Lcom/narvii/chat/input/ChatInputFragment;->hideAllPanels()V

    .line 43
    :cond_1
    :goto_0
    return-void
.end method
