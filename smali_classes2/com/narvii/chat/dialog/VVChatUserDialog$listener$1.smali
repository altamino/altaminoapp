.class final Lcom/narvii/chat/dialog/VVChatUserDialog$listener$1;
.super Ljava/lang/Object;
.source "VVChatUserDialog.kt"

# interfaces
.implements Lcom/narvii/onlinestatus/UserDialog$UserDialogClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/chat/dialog/VVChatUserDialog;-><init>(Lcom/narvii/app/NVContext;Lcom/narvii/model/User;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nVVChatUserDialog.kt\nKotlin\n*S Kotlin\n*F\n+ 1 VVChatUserDialog.kt\ncom/narvii/chat/dialog/VVChatUserDialog$listener$1\n*L\n1#1,459:1\n*E\n"
.end annotation


# instance fields
.field final synthetic $nvContext:Lcom/narvii/app/NVContext;

.field final synthetic $user:Lcom/narvii/model/User;

.field final synthetic this$0:Lcom/narvii/chat/dialog/VVChatUserDialog;


# direct methods
.method constructor <init>(Lcom/narvii/chat/dialog/VVChatUserDialog;Lcom/narvii/app/NVContext;Lcom/narvii/model/User;)V
    .locals 0

    iput-object p1, p0, Lcom/narvii/chat/dialog/VVChatUserDialog$listener$1;->this$0:Lcom/narvii/chat/dialog/VVChatUserDialog;

    iput-object p2, p0, Lcom/narvii/chat/dialog/VVChatUserDialog$listener$1;->$nvContext:Lcom/narvii/app/NVContext;

    iput-object p3, p0, Lcom/narvii/chat/dialog/VVChatUserDialog$listener$1;->$user:Lcom/narvii/model/User;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClicked(ILcom/narvii/model/NVObject;)V
    .locals 2

    .line 75
    iget-object p2, p0, Lcom/narvii/chat/dialog/VVChatUserDialog$listener$1;->$nvContext:Lcom/narvii/app/NVContext;

    instance-of v0, p2, Lcom/narvii/app/NVFragment;

    if-eqz v0, :cond_0

    .line 76
    check-cast p2, Lcom/narvii/app/NVFragment;

    invoke-virtual {p2}, Landroid/support/v4/app/Fragment;->isAdded()Z

    move-result p2

    if-nez p2, :cond_0

    return-void

    :cond_0
    const/4 p2, 0x1

    if-eq p1, p2, :cond_4

    const/4 p2, 0x2

    if-eq p1, p2, :cond_2

    const/4 p2, 0x3

    if-eq p1, p2, :cond_1

    goto :goto_0

    .line 90
    :cond_1
    iget-object p1, p0, Lcom/narvii/chat/dialog/VVChatUserDialog$listener$1;->this$0:Lcom/narvii/chat/dialog/VVChatUserDialog;

    iget-object p2, p0, Lcom/narvii/chat/dialog/VVChatUserDialog$listener$1;->$nvContext:Lcom/narvii/app/NVContext;

    invoke-virtual {p1, p2}, Lcom/narvii/chat/dialog/VVChatUserDialog;->onFlagClicked(Lcom/narvii/app/NVContext;)V

    goto :goto_0

    .line 82
    :cond_2
    iget-object p1, p0, Lcom/narvii/chat/dialog/VVChatUserDialog$listener$1;->$nvContext:Lcom/narvii/app/NVContext;

    iget-object p2, p0, Lcom/narvii/chat/dialog/VVChatUserDialog$listener$1;->$user:Lcom/narvii/model/User;

    invoke-static {p1, p2}, Lcom/narvii/user/profile/UserProfileFragment;->intent(Lcom/narvii/app/NVContext;Lcom/narvii/model/User;)Landroid/content/Intent;

    move-result-object p2

    if-eqz p2, :cond_3

    .line 83
    iget-object v0, p0, Lcom/narvii/chat/dialog/VVChatUserDialog$listener$1;->this$0:Lcom/narvii/chat/dialog/VVChatUserDialog;

    iget-object v0, v0, Lcom/narvii/onlinestatus/UserDialog;->source:Ljava/lang/String;

    const-string v1, "Source"

    invoke-virtual {p2, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 82
    :cond_3
    invoke-interface {p1, p2}, Lcom/narvii/app/NVContext;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 87
    :cond_4
    iget-object p1, p0, Lcom/narvii/chat/dialog/VVChatUserDialog$listener$1;->this$0:Lcom/narvii/chat/dialog/VVChatUserDialog;

    invoke-static {p1}, Lcom/narvii/chat/dialog/VVChatUserDialog;->access$getVvProfileClickListener$p(Lcom/narvii/chat/dialog/VVChatUserDialog;)Lcom/narvii/chat/dialog/VVChatUserDialog$VVProfileClickListener;

    move-result-object p1

    if-eqz p1, :cond_5

    iget-object p2, p0, Lcom/narvii/chat/dialog/VVChatUserDialog$listener$1;->this$0:Lcom/narvii/chat/dialog/VVChatUserDialog;

    invoke-static {p2}, Lcom/narvii/chat/dialog/VVChatUserDialog;->access$getUser$p(Lcom/narvii/chat/dialog/VVChatUserDialog;)Lcom/narvii/model/User;

    move-result-object p2

    const-string v0, "this.user"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p1, p2}, Lcom/narvii/chat/dialog/VVChatUserDialog$VVProfileClickListener;->onStartChat(Lcom/narvii/model/User;)V

    :cond_5
    :goto_0
    return-void
.end method
