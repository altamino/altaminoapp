.class Lcom/narvii/poweruser/AdvancedOptionDialog$16;
.super Ljava/lang/Object;
.source "AdvancedOptionDialog.java"

# interfaces
.implements Lcom/narvii/util/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/poweruser/AdvancedOptionDialog;->sendDeleteCommentRequest(Lcom/narvii/model/Comment;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/narvii/util/Callback<",
        "Lcom/narvii/model/api/ApiResponse;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/poweruser/AdvancedOptionDialog;

.field final synthetic val$comment:Lcom/narvii/model/Comment;


# direct methods
.method constructor <init>(Lcom/narvii/poweruser/AdvancedOptionDialog;Lcom/narvii/model/Comment;)V
    .locals 0

    .line 867
    iput-object p1, p0, Lcom/narvii/poweruser/AdvancedOptionDialog$16;->this$0:Lcom/narvii/poweruser/AdvancedOptionDialog;

    iput-object p2, p0, Lcom/narvii/poweruser/AdvancedOptionDialog$16;->val$comment:Lcom/narvii/model/Comment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call(Lcom/narvii/model/api/ApiResponse;)V
    .locals 3

    .line 870
    iget-object p1, p0, Lcom/narvii/poweruser/AdvancedOptionDialog$16;->this$0:Lcom/narvii/poweruser/AdvancedOptionDialog;

    invoke-virtual {p1}, Landroid/app/Dialog;->isShowing()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 871
    iget-object p1, p0, Lcom/narvii/poweruser/AdvancedOptionDialog$16;->this$0:Lcom/narvii/poweruser/AdvancedOptionDialog;

    invoke-virtual {p1}, Lcom/narvii/app/NVDialog;->dismiss()V

    .line 873
    :cond_0
    new-instance p1, Lcom/narvii/comment/CommentHelper;

    iget-object v0, p0, Lcom/narvii/poweruser/AdvancedOptionDialog$16;->this$0:Lcom/narvii/poweruser/AdvancedOptionDialog;

    invoke-static {v0}, Lcom/narvii/poweruser/AdvancedOptionDialog;->access$200(Lcom/narvii/poweruser/AdvancedOptionDialog;)Lcom/narvii/app/NVContext;

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/narvii/comment/CommentHelper;-><init>(Lcom/narvii/app/NVContext;)V

    iget-object v0, p0, Lcom/narvii/poweruser/AdvancedOptionDialog$16;->val$comment:Lcom/narvii/model/Comment;

    const/4 v1, 0x0

    const-string v2, "delete"

    invoke-virtual {p1, v2, v0, v1}, Lcom/narvii/comment/CommentHelper;->sendCommentNotification(Ljava/lang/String;Lcom/narvii/model/Comment;Z)V

    .line 875
    iget-object p1, p0, Lcom/narvii/poweruser/AdvancedOptionDialog$16;->this$0:Lcom/narvii/poweruser/AdvancedOptionDialog;

    invoke-static {p1}, Lcom/narvii/poweruser/AdvancedOptionDialog;->access$200(Lcom/narvii/poweruser/AdvancedOptionDialog;)Lcom/narvii/app/NVContext;

    move-result-object p1

    const-string v0, "account"

    invoke-interface {p1, v0}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/narvii/account/AccountService;

    .line 876
    invoke-virtual {p1}, Lcom/narvii/account/AccountService;->getUserId()Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lcom/narvii/poweruser/AdvancedOptionDialog$16;->this$0:Lcom/narvii/poweruser/AdvancedOptionDialog;

    invoke-static {v0}, Lcom/narvii/poweruser/AdvancedOptionDialog;->access$100(Lcom/narvii/poweruser/AdvancedOptionDialog;)Lcom/narvii/model/NVObject;

    move-result-object v0

    invoke-virtual {v0}, Lcom/narvii/model/NVObject;->uid()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    .line 877
    iget-object p1, p0, Lcom/narvii/poweruser/AdvancedOptionDialog$16;->this$0:Lcom/narvii/poweruser/AdvancedOptionDialog;

    iget-object v0, p0, Lcom/narvii/poweruser/AdvancedOptionDialog$16;->val$comment:Lcom/narvii/model/Comment;

    invoke-virtual {v0}, Lcom/narvii/model/Comment;->objectType()I

    move-result v0

    invoke-static {p1, v0}, Lcom/narvii/poweruser/AdvancedOptionDialog;->access$2100(Lcom/narvii/poweruser/AdvancedOptionDialog;I)V

    :cond_1
    return-void
.end method

.method public bridge synthetic call(Ljava/lang/Object;)V
    .locals 0

    .line 867
    check-cast p1, Lcom/narvii/model/api/ApiResponse;

    invoke-virtual {p0, p1}, Lcom/narvii/poweruser/AdvancedOptionDialog$16;->call(Lcom/narvii/model/api/ApiResponse;)V

    return-void
.end method
