.class Lcom/narvii/chat/video/fragments/VVChatMainFragment$19$1;
.super Ljava/lang/Object;
.source "VVChatMainFragment.java"

# interfaces
.implements Lcom/narvii/util/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/chat/video/fragments/VVChatMainFragment$19;->call(Landroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/narvii/util/Callback<",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$1:Lcom/narvii/chat/video/fragments/VVChatMainFragment$19;

.field final synthetic val$obj:Landroid/content/Intent;


# direct methods
.method constructor <init>(Lcom/narvii/chat/video/fragments/VVChatMainFragment$19;Landroid/content/Intent;)V
    .locals 0

    .line 1371
    iput-object p1, p0, Lcom/narvii/chat/video/fragments/VVChatMainFragment$19$1;->this$1:Lcom/narvii/chat/video/fragments/VVChatMainFragment$19;

    iput-object p2, p0, Lcom/narvii/chat/video/fragments/VVChatMainFragment$19$1;->val$obj:Landroid/content/Intent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call(Ljava/lang/Boolean;)V
    .locals 2

    .line 1375
    :try_start_0
    iget-object p1, p0, Lcom/narvii/chat/video/fragments/VVChatMainFragment$19$1;->this$1:Lcom/narvii/chat/video/fragments/VVChatMainFragment$19;

    iget-object p1, p1, Lcom/narvii/chat/video/fragments/VVChatMainFragment$19;->this$0:Lcom/narvii/chat/video/fragments/VVChatMainFragment;

    iget-object v0, p0, Lcom/narvii/chat/video/fragments/VVChatMainFragment$19$1;->val$obj:Landroid/content/Intent;

    const/16 v1, 0x66

    invoke-virtual {p1, v0, v1}, Landroid/support/v4/app/Fragment;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method public bridge synthetic call(Ljava/lang/Object;)V
    .locals 0

    .line 1371
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p0, p1}, Lcom/narvii/chat/video/fragments/VVChatMainFragment$19$1;->call(Ljava/lang/Boolean;)V

    return-void
.end method
