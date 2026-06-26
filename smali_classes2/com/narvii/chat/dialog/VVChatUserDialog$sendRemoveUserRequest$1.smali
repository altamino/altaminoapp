.class final Lcom/narvii/chat/dialog/VVChatUserDialog$sendRemoveUserRequest$1;
.super Ljava/lang/Object;
.source "VVChatUserDialog.kt"

# interfaces
.implements Lcom/narvii/util/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/chat/dialog/VVChatUserDialog;->sendRemoveUserRequest(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/narvii/util/Callback<",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/chat/dialog/VVChatUserDialog;


# direct methods
.method constructor <init>(Lcom/narvii/chat/dialog/VVChatUserDialog;)V
    .locals 0

    iput-object p1, p0, Lcom/narvii/chat/dialog/VVChatUserDialog$sendRemoveUserRequest$1;->this$0:Lcom/narvii/chat/dialog/VVChatUserDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final call(Ljava/lang/Object;)V
    .locals 2

    .line 340
    instance-of v0, p1, Ljava/lang/Boolean;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    move-object p1, v1

    :cond_0
    check-cast p1, Ljava/lang/Boolean;

    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 341
    iget-object p1, p0, Lcom/narvii/chat/dialog/VVChatUserDialog$sendRemoveUserRequest$1;->this$0:Lcom/narvii/chat/dialog/VVChatUserDialog;

    invoke-static {p1}, Lcom/narvii/chat/dialog/VVChatUserDialog;->access$getClickListener$p(Lcom/narvii/chat/dialog/VVChatUserDialog;)Lcom/narvii/onlinestatus/UserDialog$UserDialogClickListener;

    move-result-object p1

    if-eqz p1, :cond_1

    const/4 v0, 0x7

    invoke-interface {p1, v0, v1}, Lcom/narvii/onlinestatus/UserDialog$UserDialogClickListener;->onClicked(ILcom/narvii/model/NVObject;)V

    :cond_1
    return-void
.end method
