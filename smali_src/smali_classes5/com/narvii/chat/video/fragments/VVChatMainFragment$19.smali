.class Lcom/narvii/chat/video/fragments/VVChatMainFragment$19;
.super Ljava/lang/Object;
.source "SourceFile"

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

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/chat/video/fragments/VVChatMainFragment$19;->this$0:Lcom/narvii/chat/video/fragments/VVChatMainFragment;

    .line 3
    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    return-void
.end method


# virtual methods
.method public call(Landroid/content/Intent;)V
    .locals 3

    .line 1
    .line 2
    if-nez p1, :cond_0

    .line 3
    .line 4
    iget-object p1, p0, Lcom/narvii/chat/video/fragments/VVChatMainFragment$19;->this$0:Lcom/narvii/chat/video/fragments/VVChatMainFragment;

    .line 5
    .line 6
    .line 7
    invoke-virtual {p1}, Lcom/narvii/app/NVFragment;->finish()V

    .line 8
    .line 9
    iget-object p1, p0, Lcom/narvii/chat/video/fragments/VVChatMainFragment$19;->this$0:Lcom/narvii/chat/video/fragments/VVChatMainFragment;

    .line 10
    .line 11
    .line 12
    invoke-virtual {p1}, Lcom/narvii/chat/video/fragments/VVChatMainFragment;->showFloatingWindow()V

    .line 13
    goto :goto_0

    .line 14
    .line 15
    :cond_0
    iget-object v0, p0, Lcom/narvii/chat/video/fragments/VVChatMainFragment$19;->this$0:Lcom/narvii/chat/video/fragments/VVChatMainFragment;

    .line 16
    .line 17
    .line 18
    invoke-static {v0}, Lcom/narvii/chat/video/fragments/VVChatMainFragment;->x(Lcom/narvii/chat/video/fragments/VVChatMainFragment;)Lcom/narvii/chat/video/utils/VVChatHelper;

    .line 19
    move-result-object v0

    .line 20
    .line 21
    iget-object v1, p0, Lcom/narvii/chat/video/fragments/VVChatMainFragment$19;->this$0:Lcom/narvii/chat/video/fragments/VVChatMainFragment;

    .line 22
    .line 23
    .line 24
    invoke-static {v1}, Lcom/narvii/chat/video/fragments/VVChatMainFragment;->q(Lcom/narvii/chat/video/fragments/VVChatMainFragment;)I

    .line 25
    move-result v1

    .line 26
    .line 27
    new-instance v2, Lcom/narvii/chat/video/fragments/VVChatMainFragment$19$1;

    .line 28
    .line 29
    .line 30
    invoke-direct {v2, p0, p1}, Lcom/narvii/chat/video/fragments/VVChatMainFragment$19$1;-><init>(Lcom/narvii/chat/video/fragments/VVChatMainFragment$19;Landroid/content/Intent;)V

    .line 31
    .line 32
    .line 33
    invoke-virtual {v0, v1, v2}, Lcom/narvii/chat/video/utils/VVChatHelper;->showPermissionRequestDialog(ILcom/narvii/util/Callback;)V

    .line 34
    :goto_0
    return-void
.end method
