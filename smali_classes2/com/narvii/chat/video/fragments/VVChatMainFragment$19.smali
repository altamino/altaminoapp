.class Lcom/narvii/chat/video/fragments/VVChatMainFragment$19;
.super Ljava/lang/Object;
.source "VVChatMainFragment.java"

# interfaces
.implements Lcom/narvii/video/ui/floating/FloatingPermissionUtils$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/chat/video/fragments/VVChatMainFragment;->tryToShowMinWindow(Ljava/lang/String;)V
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

    .line 1364
    iput-object p1, p0, Lcom/narvii/chat/video/fragments/VVChatMainFragment$19;->this$0:Lcom/narvii/chat/video/fragments/VVChatMainFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call(Landroid/content/Intent;)V
    .locals 3

    if-nez p1, :cond_0

    .line 1368
    iget-object p1, p0, Lcom/narvii/chat/video/fragments/VVChatMainFragment$19;->this$0:Lcom/narvii/chat/video/fragments/VVChatMainFragment;

    invoke-virtual {p1}, Lcom/narvii/app/NVFragment;->finish()V

    .line 1369
    iget-object p1, p0, Lcom/narvii/chat/video/fragments/VVChatMainFragment$19;->this$0:Lcom/narvii/chat/video/fragments/VVChatMainFragment;

    invoke-virtual {p1}, Lcom/narvii/chat/video/fragments/VVChatMainFragment;->showFloatingWindow()V

    goto :goto_0

    .line 1371
    :cond_0
    iget-object v0, p0, Lcom/narvii/chat/video/fragments/VVChatMainFragment$19;->this$0:Lcom/narvii/chat/video/fragments/VVChatMainFragment;

    invoke-static {v0}, Lcom/narvii/chat/video/fragments/VVChatMainFragment;->access$1700(Lcom/narvii/chat/video/fragments/VVChatMainFragment;)Lcom/narvii/chat/video/utils/VVChatHelper;

    move-result-object v0

    iget-object v1, p0, Lcom/narvii/chat/video/fragments/VVChatMainFragment$19;->this$0:Lcom/narvii/chat/video/fragments/VVChatMainFragment;

    invoke-static {v1}, Lcom/narvii/chat/video/fragments/VVChatMainFragment;->access$500(Lcom/narvii/chat/video/fragments/VVChatMainFragment;)I

    move-result v1

    new-instance v2, Lcom/narvii/chat/video/fragments/VVChatMainFragment$19$1;

    invoke-direct {v2, p0, p1}, Lcom/narvii/chat/video/fragments/VVChatMainFragment$19$1;-><init>(Lcom/narvii/chat/video/fragments/VVChatMainFragment$19;Landroid/content/Intent;)V

    invoke-virtual {v0, v1, v2}, Lcom/narvii/chat/video/utils/VVChatHelper;->showPermissionRequestDialog(ILcom/narvii/util/Callback;)V

    :goto_0
    return-void
.end method
