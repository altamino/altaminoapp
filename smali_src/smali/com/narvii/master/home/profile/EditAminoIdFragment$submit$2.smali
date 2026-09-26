.class public final Lcom/narvii/master/home/profile/EditAminoIdFragment$submit$2;
.super Lcom/narvii/util/http/ApiResponseListener;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/master/home/profile/EditAminoIdFragment;->submit()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/narvii/util/http/ApiResponseListener<",
        "Lcom/narvii/model/api/EditAminoIdResponse;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/master/home/profile/EditAminoIdFragment;


# direct methods
.method constructor <init>(Lcom/narvii/master/home/profile/EditAminoIdFragment;Ljava/lang/Class;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/narvii/master/home/profile/EditAminoIdFragment;",
            "Ljava/lang/Class<",
            "Lcom/narvii/model/api/EditAminoIdResponse;",
            ">;)V"
        }
    .end annotation

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/master/home/profile/EditAminoIdFragment$submit$2;->this$0:Lcom/narvii/master/home/profile/EditAminoIdFragment;

    .line 3
    .line 4
    .line 5
    invoke-direct {p0, p2}, Lcom/narvii/util/http/ApiResponseListener;-><init>(Ljava/lang/Class;)V

    .line 6
    return-void
.end method


# virtual methods
.method public onFail(Lcom/narvii/util/http/ApiRequest;ILjava/util/List;Ljava/lang/String;Lcom/narvii/model/api/ApiResponse;Ljava/lang/Throwable;)V
    .locals 0
    .param p1    # Lcom/narvii/util/http/ApiRequest;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p3    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p4    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p5    # Lcom/narvii/model/api/ApiResponse;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p6    # Ljava/lang/Throwable;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
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

    .line 1
    .line 2
    .line 3
    invoke-super/range {p0 .. p6}, Lcom/narvii/util/http/ApiResponseListener;->onFail(Lcom/narvii/util/http/ApiRequest;ILjava/util/List;Ljava/lang/String;Lcom/narvii/model/api/ApiResponse;Ljava/lang/Throwable;)V

    .line 4
    .line 5
    iget-object p1, p0, Lcom/narvii/master/home/profile/EditAminoIdFragment$submit$2;->this$0:Lcom/narvii/master/home/profile/EditAminoIdFragment;

    .line 6
    .line 7
    .line 8
    invoke-static {p1}, Lcom/narvii/master/home/profile/EditAminoIdFragment;->access$getProgressDialog$p(Lcom/narvii/master/home/profile/EditAminoIdFragment;)Lcom/narvii/util/dialog/ProgressDialog;

    .line 9
    move-result-object p1

    .line 10
    .line 11
    if-eqz p1, :cond_0

    .line 12
    .line 13
    .line 14
    invoke-virtual {p1}, Lcom/narvii/util/dialog/ProgressDialog;->dismiss()V

    .line 15
    .line 16
    :cond_0
    iget-object p1, p0, Lcom/narvii/master/home/profile/EditAminoIdFragment$submit$2;->this$0:Lcom/narvii/master/home/profile/EditAminoIdFragment;

    .line 17
    .line 18
    .line 19
    invoke-static {p1}, Lcom/narvii/master/home/profile/EditAminoIdFragment;->access$getErrorDialog$p(Lcom/narvii/master/home/profile/EditAminoIdFragment;)Lcom/narvii/widget/ACMAlertDialog;

    .line 20
    move-result-object p1

    .line 21
    .line 22
    if-eqz p1, :cond_1

    .line 23
    .line 24
    .line 25
    invoke-virtual {p1}, Landroid/app/Dialog;->isShowing()Z

    .line 26
    move-result p1

    .line 27
    const/4 p2, 0x1

    .line 28
    .line 29
    if-ne p1, p2, :cond_1

    .line 30
    goto :goto_0

    .line 31
    .line 32
    :cond_1
    iget-object p1, p0, Lcom/narvii/master/home/profile/EditAminoIdFragment$submit$2;->this$0:Lcom/narvii/master/home/profile/EditAminoIdFragment;

    .line 33
    .line 34
    new-instance p2, Lcom/narvii/widget/ACMAlertDialog;

    .line 35
    .line 36
    iget-object p3, p0, Lcom/narvii/master/home/profile/EditAminoIdFragment$submit$2;->this$0:Lcom/narvii/master/home/profile/EditAminoIdFragment;

    .line 37
    .line 38
    .line 39
    invoke-virtual {p3}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    .line 40
    move-result-object p3

    .line 41
    .line 42
    .line 43
    invoke-direct {p2, p3}, Lcom/narvii/widget/ACMAlertDialog;-><init>(Landroid/content/Context;)V

    .line 44
    .line 45
    .line 46
    invoke-static {p1, p2}, Lcom/narvii/master/home/profile/EditAminoIdFragment;->access$setErrorDialog$p(Lcom/narvii/master/home/profile/EditAminoIdFragment;Lcom/narvii/widget/ACMAlertDialog;)V

    .line 47
    .line 48
    iget-object p1, p0, Lcom/narvii/master/home/profile/EditAminoIdFragment$submit$2;->this$0:Lcom/narvii/master/home/profile/EditAminoIdFragment;

    .line 49
    .line 50
    .line 51
    invoke-static {p1}, Lcom/narvii/master/home/profile/EditAminoIdFragment;->access$getErrorDialog$p(Lcom/narvii/master/home/profile/EditAminoIdFragment;)Lcom/narvii/widget/ACMAlertDialog;

    .line 52
    move-result-object p1

    .line 53
    .line 54
    if-eqz p1, :cond_2

    .line 55
    .line 56
    .line 57
    invoke-virtual {p1, p4}, Lcom/narvii/widget/ACMAlertDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 58
    .line 59
    :cond_2
    iget-object p1, p0, Lcom/narvii/master/home/profile/EditAminoIdFragment$submit$2;->this$0:Lcom/narvii/master/home/profile/EditAminoIdFragment;

    .line 60
    .line 61
    .line 62
    invoke-static {p1}, Lcom/narvii/master/home/profile/EditAminoIdFragment;->access$getErrorDialog$p(Lcom/narvii/master/home/profile/EditAminoIdFragment;)Lcom/narvii/widget/ACMAlertDialog;

    .line 63
    move-result-object p1

    .line 64
    .line 65
    if-eqz p1, :cond_3

    .line 66
    .line 67
    .line 68
    const p2, 0x7f1207e7

    .line 69
    const/4 p3, 0x0

    .line 70
    .line 71
    .line 72
    invoke-virtual {p1, p2, p3}, Lcom/narvii/widget/ACMAlertDialog;->addButton(ILandroid/view/View$OnClickListener;)Landroid/view/View;

    .line 73
    .line 74
    :cond_3
    iget-object p1, p0, Lcom/narvii/master/home/profile/EditAminoIdFragment$submit$2;->this$0:Lcom/narvii/master/home/profile/EditAminoIdFragment;

    .line 75
    .line 76
    .line 77
    invoke-static {p1}, Lcom/narvii/master/home/profile/EditAminoIdFragment;->access$getErrorDialog$p(Lcom/narvii/master/home/profile/EditAminoIdFragment;)Lcom/narvii/widget/ACMAlertDialog;

    .line 78
    move-result-object p1

    .line 79
    .line 80
    if-eqz p1, :cond_4

    .line 81
    .line 82
    .line 83
    invoke-virtual {p1}, Lcom/narvii/app/NVDialog;->show()V

    .line 84
    :cond_4
    :goto_0
    return-void
.end method

.method public bridge synthetic onFinish(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/model/api/ApiResponse;)V
    .locals 0

    .line 1
    check-cast p2, Lcom/narvii/model/api/EditAminoIdResponse;

    invoke-virtual {p0, p1, p2}, Lcom/narvii/master/home/profile/EditAminoIdFragment$submit$2;->onFinish(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/model/api/EditAminoIdResponse;)V

    return-void
.end method

.method public onFinish(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/model/api/EditAminoIdResponse;)V
    .locals 2
    .param p1    # Lcom/narvii/util/http/ApiRequest;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2    # Lcom/narvii/model/api/EditAminoIdResponse;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 2
    invoke-super {p0, p1, p2}, Lcom/narvii/util/http/ApiResponseListener;->onFinish(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/model/api/ApiResponse;)V

    iget-object p1, p0, Lcom/narvii/master/home/profile/EditAminoIdFragment$submit$2;->this$0:Lcom/narvii/master/home/profile/EditAminoIdFragment;

    .line 3
    invoke-static {p1}, Lcom/narvii/master/home/profile/EditAminoIdFragment;->access$getProgressDialog$p(Lcom/narvii/master/home/profile/EditAminoIdFragment;)Lcom/narvii/util/dialog/ProgressDialog;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/narvii/util/dialog/ProgressDialog;->dismiss()V

    :cond_0
    iget-object p1, p0, Lcom/narvii/master/home/profile/EditAminoIdFragment$submit$2;->this$0:Lcom/narvii/master/home/profile/EditAminoIdFragment;

    .line 4
    invoke-static {p1}, Lcom/narvii/master/home/profile/EditAminoIdFragment;->access$getAccount(Lcom/narvii/master/home/profile/EditAminoIdFragment;)Lcom/narvii/account/AccountService;

    move-result-object p1

    const/4 v0, 0x0

    if-eqz p2, :cond_1

    iget-object v1, p2, Lcom/narvii/model/api/EditAminoIdResponse;->aminoId:Ljava/lang/String;

    goto :goto_0

    :cond_1
    move-object v1, v0

    :goto_0
    if-eqz p2, :cond_2

    iget-object v0, p2, Lcom/narvii/model/api/ApiResponse;->timestamp:Ljava/lang/String;

    :cond_2
    if-eqz p2, :cond_3

    iget-boolean p2, p2, Lcom/narvii/model/api/EditAminoIdResponse;->aminoIdEditable:Z

    goto :goto_1

    :cond_3
    const/4 p2, 0x0

    :goto_1
    invoke-virtual {p1, v1, v0, p2}, Lcom/narvii/account/AccountService;->updateAminoId(Ljava/lang/String;Ljava/lang/String;Z)V

    iget-object p1, p0, Lcom/narvii/master/home/profile/EditAminoIdFragment$submit$2;->this$0:Lcom/narvii/master/home/profile/EditAminoIdFragment;

    .line 5
    invoke-virtual {p1}, Lcom/narvii/app/NVFragment;->finish()V

    return-void
.end method
