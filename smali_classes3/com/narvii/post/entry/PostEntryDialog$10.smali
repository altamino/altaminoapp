.class Lcom/narvii/post/entry/PostEntryDialog$10;
.super Lcom/narvii/util/http/ApiResponseListener;
.source "PostEntryDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/post/entry/PostEntryDialog;->checkEligible()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/narvii/util/http/ApiResponseListener<",
        "Lcom/narvii/model/api/ApiResponse;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/post/entry/PostEntryDialog;


# direct methods
.method constructor <init>(Lcom/narvii/post/entry/PostEntryDialog;Ljava/lang/Class;)V
    .locals 0

    .line 701
    iput-object p1, p0, Lcom/narvii/post/entry/PostEntryDialog$10;->this$0:Lcom/narvii/post/entry/PostEntryDialog;

    invoke-direct {p0, p2}, Lcom/narvii/util/http/ApiResponseListener;-><init>(Ljava/lang/Class;)V

    return-void
.end method


# virtual methods
.method public onFail(Lcom/narvii/util/http/ApiRequest;ILjava/util/List;Ljava/lang/String;Lcom/narvii/model/api/ApiResponse;Ljava/lang/Throwable;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/narvii/util/http/ApiRequest;",
            "I",
            "Ljava/util/List<",
            "Lcom/narvii/util/http/NameValuePair;",
            ">;",
            "Ljava/lang/String;",
            "Lcom/narvii/model/api/ApiResponse;",
            "Ljava/lang/Throwable;",
            ")V"
        }
    .end annotation

    .line 708
    iget-object p1, p0, Lcom/narvii/post/entry/PostEntryDialog$10;->this$0:Lcom/narvii/post/entry/PostEntryDialog;

    invoke-virtual {p1}, Landroid/app/Dialog;->isShowing()Z

    move-result p1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    const/16 p1, 0xee

    if-ne p2, p1, :cond_1

    .line 709
    iget-object p1, p0, Lcom/narvii/post/entry/PostEntryDialog$10;->this$0:Lcom/narvii/post/entry/PostEntryDialog;

    invoke-static {p1}, Lcom/narvii/post/entry/PostEntryDialog;->access$400(Lcom/narvii/post/entry/PostEntryDialog;)Z

    move-result p1

    if-nez p1, :cond_1

    goto :goto_0

    .line 710
    :cond_1
    iget-object p1, p0, Lcom/narvii/post/entry/PostEntryDialog$10;->this$0:Lcom/narvii/post/entry/PostEntryDialog;

    invoke-static {p1}, Lcom/narvii/post/entry/PostEntryDialog;->access$300(Lcom/narvii/post/entry/PostEntryDialog;)Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/narvii/util/http/ApiService;->shouldShowErrMessage(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 711
    new-instance p1, Landroid/app/AlertDialog$Builder;

    iget-object p2, p0, Lcom/narvii/post/entry/PostEntryDialog$10;->this$0:Lcom/narvii/post/entry/PostEntryDialog;

    invoke-static {p2}, Lcom/narvii/post/entry/PostEntryDialog;->access$300(Lcom/narvii/post/entry/PostEntryDialog;)Landroid/content/Context;

    move-result-object p2

    invoke-direct {p1, p2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 712
    invoke-virtual {p1, p4}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    const p2, 0x7f0f0274

    .line 713
    sget-object p3, Lcom/narvii/util/Utils;->DIALOG_BUTTON_EMPTY_LISTENER:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {p1, p2, p3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 714
    new-instance p2, Lcom/narvii/post/entry/PostEntryDialog$10$1;

    invoke-direct {p2, p0}, Lcom/narvii/post/entry/PostEntryDialog$10$1;-><init>(Lcom/narvii/post/entry/PostEntryDialog$10;)V

    invoke-virtual {p1, p2}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    .line 720
    invoke-virtual {p1}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    :cond_2
    :goto_0
    return-void
.end method

.method public onFinish(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/model/api/ApiResponse;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    return-void
.end method
