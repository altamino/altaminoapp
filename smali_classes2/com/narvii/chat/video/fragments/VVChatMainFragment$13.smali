.class Lcom/narvii/chat/video/fragments/VVChatMainFragment$13;
.super Ljava/lang/Object;
.source "VVChatMainFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/chat/video/fragments/VVChatMainFragment;->onActivityResult(IILandroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/chat/video/fragments/VVChatMainFragment;


# direct methods
.method constructor <init>(Lcom/narvii/chat/video/fragments/VVChatMainFragment;)V
    .locals 0

    .line 1053
    iput-object p1, p0, Lcom/narvii/chat/video/fragments/VVChatMainFragment$13;->this$0:Lcom/narvii/chat/video/fragments/VVChatMainFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 1056
    iget-object v0, p0, Lcom/narvii/chat/video/fragments/VVChatMainFragment$13;->this$0:Lcom/narvii/chat/video/fragments/VVChatMainFragment;

    invoke-static {v0}, Lcom/narvii/chat/video/fragments/VVChatMainFragment;->access$1300(Lcom/narvii/chat/video/fragments/VVChatMainFragment;)Lcom/narvii/video/ui/floating/FloatingPermissionUtils;

    move-result-object v0

    invoke-virtual {v0}, Lcom/narvii/video/ui/floating/FloatingPermissionUtils;->canDrawOverlays()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1057
    iget-object v0, p0, Lcom/narvii/chat/video/fragments/VVChatMainFragment$13;->this$0:Lcom/narvii/chat/video/fragments/VVChatMainFragment;

    invoke-virtual {v0}, Lcom/narvii/app/NVFragment;->finish()V

    .line 1058
    iget-object v0, p0, Lcom/narvii/chat/video/fragments/VVChatMainFragment$13;->this$0:Lcom/narvii/chat/video/fragments/VVChatMainFragment;

    invoke-virtual {v0}, Lcom/narvii/chat/video/fragments/VVChatMainFragment;->showFloatingWindow()V

    :cond_0
    return-void
.end method
