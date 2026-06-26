.class Lcom/narvii/chat/screenroom/overlay/SROverlayMainFragment$4$1;
.super Ljava/lang/Object;
.source "SROverlayMainFragment.java"

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

    .line 186
    iput-object p1, p0, Lcom/narvii/chat/screenroom/overlay/SROverlayMainFragment$4$1;->this$1:Lcom/narvii/chat/screenroom/overlay/SROverlayMainFragment$4;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 189
    iget-object v0, p0, Lcom/narvii/chat/screenroom/overlay/SROverlayMainFragment$4$1;->this$1:Lcom/narvii/chat/screenroom/overlay/SROverlayMainFragment$4;

    iget-object v0, v0, Lcom/narvii/chat/screenroom/overlay/SROverlayMainFragment$4;->this$0:Lcom/narvii/chat/screenroom/overlay/SROverlayMainFragment;

    invoke-virtual {v0}, Landroid/support/v4/app/Fragment;->isAdded()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/narvii/chat/screenroom/overlay/SROverlayMainFragment$4$1;->this$1:Lcom/narvii/chat/screenroom/overlay/SROverlayMainFragment$4;

    iget-object v0, v0, Lcom/narvii/chat/screenroom/overlay/SROverlayMainFragment$4;->this$0:Lcom/narvii/chat/screenroom/overlay/SROverlayMainFragment;

    invoke-virtual {v0}, Lcom/narvii/app/NVFragment;->isDestoryed()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 192
    :cond_0
    iget-object v0, p0, Lcom/narvii/chat/screenroom/overlay/SROverlayMainFragment$4$1;->this$1:Lcom/narvii/chat/screenroom/overlay/SROverlayMainFragment$4;

    iget-object v0, v0, Lcom/narvii/chat/screenroom/overlay/SROverlayMainFragment$4;->this$0:Lcom/narvii/chat/screenroom/overlay/SROverlayMainFragment;

    invoke-static {v0}, Lcom/narvii/chat/screenroom/overlay/SROverlayMainFragment;->access$300(Lcom/narvii/chat/screenroom/overlay/SROverlayMainFragment;)Lcom/narvii/chat/input/ChatInputFragment;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 193
    iget-object v0, p0, Lcom/narvii/chat/screenroom/overlay/SROverlayMainFragment$4$1;->this$1:Lcom/narvii/chat/screenroom/overlay/SROverlayMainFragment$4;

    iget-object v0, v0, Lcom/narvii/chat/screenroom/overlay/SROverlayMainFragment$4;->this$0:Lcom/narvii/chat/screenroom/overlay/SROverlayMainFragment;

    invoke-static {v0}, Lcom/narvii/chat/screenroom/overlay/SROverlayMainFragment;->access$300(Lcom/narvii/chat/screenroom/overlay/SROverlayMainFragment;)Lcom/narvii/chat/input/ChatInputFragment;

    move-result-object v0

    invoke-virtual {v0}, Lcom/narvii/chat/input/ChatInputFragment;->hideAllPanels()V

    :cond_1
    :goto_0
    return-void
.end method
