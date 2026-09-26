.class Lcom/narvii/chat/video/fragments/VVChatMainFragment$19$1;
.super Ljava/lang/Object;
.source "SourceFile"

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
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/chat/video/fragments/VVChatMainFragment$19$1;->this$1:Lcom/narvii/chat/video/fragments/VVChatMainFragment$19;

    .line 3
    .line 4
    iput-object p2, p0, Lcom/narvii/chat/video/fragments/VVChatMainFragment$19$1;->val$obj:Landroid/content/Intent;

    .line 5
    .line 6
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    return-void
.end method

.method public static safedk_Fragment_startActivityForResult_6fd6bf7695baae8f1a141a4d4340bbe1(Landroidx/fragment/app/Fragment;Landroid/content/Intent;I)V
    .locals 1
    .param p0, "p0"    # Landroidx/fragment/app/Fragment;
    .param p1, "p1"    # Landroid/content/Intent;
    .param p2, "p2"    # I

    const-string v0, "SafeDK-Special|SafeDK: Call> Landroidx/fragment/app/Fragment;->startActivityForResult(Landroid/content/Intent;I)V"

    invoke-static {v0}, Lcom/safedk/android/utils/Logger;->d(Ljava/lang/String;)I

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0, p1, p2}, Landroidx/fragment/app/Fragment;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method


# virtual methods
.method public call(Ljava/lang/Boolean;)V
    .locals 2

    :try_start_0
    iget-object p1, p0, Lcom/narvii/chat/video/fragments/VVChatMainFragment$19$1;->this$1:Lcom/narvii/chat/video/fragments/VVChatMainFragment$19;

    .line 2
    iget-object p1, p1, Lcom/narvii/chat/video/fragments/VVChatMainFragment$19;->this$0:Lcom/narvii/chat/video/fragments/VVChatMainFragment;

    iget-object v0, p0, Lcom/narvii/chat/video/fragments/VVChatMainFragment$19$1;->val$obj:Landroid/content/Intent;

    const/16 v1, 0x66

    invoke-static {p1, v0, v1}, Lcom/narvii/chat/video/fragments/VVChatMainFragment$19$1;->safedk_Fragment_startActivityForResult_6fd6bf7695baae8f1a141a4d4340bbe1(Landroidx/fragment/app/Fragment;Landroid/content/Intent;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method public bridge synthetic call(Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p0, p1}, Lcom/narvii/chat/video/fragments/VVChatMainFragment$19$1;->call(Ljava/lang/Boolean;)V

    return-void
.end method
