.class Lcom/narvii/util/dialog/ProgressDialog$ResultListener$2;
.super Ljava/lang/Object;
.source "ProgressDialog.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/util/dialog/ProgressDialog$ResultListener;->onFail(Lcom/narvii/util/http/ApiRequest;ILjava/util/List;Ljava/lang/String;Lcom/narvii/model/api/ApiResponse;Ljava/lang/Throwable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/narvii/util/dialog/ProgressDialog$ResultListener;

.field final synthetic val$message:Ljava/lang/String;

.field final synthetic val$msg:Ljava/lang/String;

.field final synthetic val$resp:Lcom/narvii/model/api/ApiResponse;


# direct methods
.method constructor <init>(Lcom/narvii/util/dialog/ProgressDialog$ResultListener;Ljava/lang/String;Lcom/narvii/model/api/ApiResponse;Ljava/lang/String;)V
    .locals 0

    .line 145
    iput-object p1, p0, Lcom/narvii/util/dialog/ProgressDialog$ResultListener$2;->this$1:Lcom/narvii/util/dialog/ProgressDialog$ResultListener;

    iput-object p2, p0, Lcom/narvii/util/dialog/ProgressDialog$ResultListener$2;->val$message:Ljava/lang/String;

    iput-object p3, p0, Lcom/narvii/util/dialog/ProgressDialog$ResultListener$2;->val$resp:Lcom/narvii/model/api/ApiResponse;

    iput-object p4, p0, Lcom/narvii/util/dialog/ProgressDialog$ResultListener$2;->val$msg:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 148
    iget-object v0, p0, Lcom/narvii/util/dialog/ProgressDialog$ResultListener$2;->this$1:Lcom/narvii/util/dialog/ProgressDialog$ResultListener;

    iget-object v0, v0, Lcom/narvii/util/dialog/ProgressDialog$ResultListener;->this$0:Lcom/narvii/util/dialog/ProgressDialog;

    invoke-virtual {v0}, Lcom/narvii/util/dialog/ProgressDialog;->dismiss()V

    .line 149
    iget-object v0, p0, Lcom/narvii/util/dialog/ProgressDialog$ResultListener$2;->this$1:Lcom/narvii/util/dialog/ProgressDialog$ResultListener;

    iget-object v0, v0, Lcom/narvii/util/dialog/ProgressDialog$ResultListener;->this$0:Lcom/narvii/util/dialog/ProgressDialog;

    invoke-static {v0}, Lcom/narvii/util/dialog/ProgressDialog;->access$100(Lcom/narvii/util/dialog/ProgressDialog;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 150
    iget-object v0, p0, Lcom/narvii/util/dialog/ProgressDialog$ResultListener$2;->val$message:Ljava/lang/String;

    iget-object v1, p0, Lcom/narvii/util/dialog/ProgressDialog$ResultListener$2;->val$resp:Lcom/narvii/model/api/ApiResponse;

    iget-object v2, p0, Lcom/narvii/util/dialog/ProgressDialog$ResultListener$2;->this$1:Lcom/narvii/util/dialog/ProgressDialog$ResultListener;

    iget-object v2, v2, Lcom/narvii/util/dialog/ProgressDialog$ResultListener;->this$0:Lcom/narvii/util/dialog/ProgressDialog;

    invoke-virtual {v2}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/narvii/util/Utils;->showNetworkError(Ljava/lang/String;Lcom/narvii/model/api/ApiResponse;Landroid/content/Context;)V

    goto :goto_0

    .line 151
    :cond_0
    iget-object v0, p0, Lcom/narvii/util/dialog/ProgressDialog$ResultListener$2;->this$1:Lcom/narvii/util/dialog/ProgressDialog$ResultListener;

    iget-object v0, v0, Lcom/narvii/util/dialog/ProgressDialog$ResultListener;->this$0:Lcom/narvii/util/dialog/ProgressDialog;

    iget v1, v0, Lcom/narvii/util/dialog/ProgressDialog;->errorMode:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    invoke-virtual {v0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/narvii/util/http/ApiService;->shouldShowErrMessage(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 152
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/narvii/util/dialog/ProgressDialog$ResultListener$2;->this$1:Lcom/narvii/util/dialog/ProgressDialog$ResultListener;

    iget-object v1, v1, Lcom/narvii/util/dialog/ProgressDialog$ResultListener;->this$0:Lcom/narvii/util/dialog/ProgressDialog;

    .line 153
    invoke-virtual {v1}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x1080027

    .line 154
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    .line 155
    iget-object v1, p0, Lcom/narvii/util/dialog/ProgressDialog$ResultListener$2;->val$msg:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    const v1, 0x104000a

    .line 156
    sget-object v2, Lcom/narvii/util/Utils;->DIALOG_BUTTON_EMPTY_LISTENER:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 158
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    goto :goto_0

    .line 160
    :cond_1
    iget-object v0, p0, Lcom/narvii/util/dialog/ProgressDialog$ResultListener$2;->this$1:Lcom/narvii/util/dialog/ProgressDialog$ResultListener;

    iget-object v0, v0, Lcom/narvii/util/dialog/ProgressDialog$ResultListener;->this$0:Lcom/narvii/util/dialog/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/narvii/util/dialog/ProgressDialog$ResultListener$2;->val$msg:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/narvii/util/NVToast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Lcom/narvii/util/NVToast;

    move-result-object v0

    invoke-virtual {v0}, Lcom/narvii/util/NVToast;->show()V

    .line 163
    :goto_0
    iget-object v0, p0, Lcom/narvii/util/dialog/ProgressDialog$ResultListener$2;->this$1:Lcom/narvii/util/dialog/ProgressDialog$ResultListener;

    iget-object v0, v0, Lcom/narvii/util/dialog/ProgressDialog$ResultListener;->this$0:Lcom/narvii/util/dialog/ProgressDialog;

    iget-object v0, v0, Lcom/narvii/util/dialog/ProgressDialog;->failureListener:Lcom/narvii/util/Callback;

    if-eqz v0, :cond_2

    .line 164
    iget-object v1, p0, Lcom/narvii/util/dialog/ProgressDialog$ResultListener$2;->val$msg:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/narvii/util/Callback;->call(Ljava/lang/Object;)V

    :cond_2
    return-void
.end method
