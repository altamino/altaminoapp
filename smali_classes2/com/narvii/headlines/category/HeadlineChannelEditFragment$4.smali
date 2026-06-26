.class Lcom/narvii/headlines/category/HeadlineChannelEditFragment$4;
.super Lcom/narvii/util/http/ApiResponseListener;
.source "HeadlineChannelEditFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/headlines/category/HeadlineChannelEditFragment;->saveChange()V
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
.field final synthetic this$0:Lcom/narvii/headlines/category/HeadlineChannelEditFragment;

.field final synthetic val$channels:Ljava/util/List;

.field final synthetic val$progressDialog:Lcom/narvii/util/dialog/ProgressDialog;


# direct methods
.method constructor <init>(Lcom/narvii/headlines/category/HeadlineChannelEditFragment;Ljava/lang/Class;Ljava/util/List;Lcom/narvii/util/dialog/ProgressDialog;)V
    .locals 0

    .line 567
    iput-object p1, p0, Lcom/narvii/headlines/category/HeadlineChannelEditFragment$4;->this$0:Lcom/narvii/headlines/category/HeadlineChannelEditFragment;

    iput-object p3, p0, Lcom/narvii/headlines/category/HeadlineChannelEditFragment$4;->val$channels:Ljava/util/List;

    iput-object p4, p0, Lcom/narvii/headlines/category/HeadlineChannelEditFragment$4;->val$progressDialog:Lcom/narvii/util/dialog/ProgressDialog;

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

    .line 580
    invoke-super/range {p0 .. p6}, Lcom/narvii/util/http/ApiResponseListener;->onFail(Lcom/narvii/util/http/ApiRequest;ILjava/util/List;Ljava/lang/String;Lcom/narvii/model/api/ApiResponse;Ljava/lang/Throwable;)V

    .line 581
    iget-object p1, p0, Lcom/narvii/headlines/category/HeadlineChannelEditFragment$4;->this$0:Lcom/narvii/headlines/category/HeadlineChannelEditFragment;

    invoke-virtual {p1}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    move-result-object p1

    const/4 p2, 0x1

    invoke-static {p1, p4, p2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    .line 582
    iget-object p1, p0, Lcom/narvii/headlines/category/HeadlineChannelEditFragment$4;->val$progressDialog:Lcom/narvii/util/dialog/ProgressDialog;

    invoke-virtual {p1}, Lcom/narvii/util/dialog/ProgressDialog;->dismiss()V

    return-void
.end method

.method public onFinish(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/model/api/ApiResponse;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 570
    invoke-super {p0, p1, p2}, Lcom/narvii/util/http/ApiResponseListener;->onFinish(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/model/api/ApiResponse;)V

    .line 571
    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1}, Landroid/content/Intent;-><init>()V

    .line 572
    iget-object p2, p0, Lcom/narvii/headlines/category/HeadlineChannelEditFragment$4;->val$channels:Ljava/util/List;

    invoke-static {p2}, Lcom/narvii/util/JacksonUtils;->writeAsString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    const-string v0, "activeChannels"

    invoke-virtual {p1, v0, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 573
    iget-object p2, p0, Lcom/narvii/headlines/category/HeadlineChannelEditFragment$4;->this$0:Lcom/narvii/headlines/category/HeadlineChannelEditFragment;

    const/4 v0, -0x1

    invoke-virtual {p2, v0, p1}, Lcom/narvii/app/NVFragment;->setResult(ILandroid/content/Intent;)V

    .line 574
    iget-object p1, p0, Lcom/narvii/headlines/category/HeadlineChannelEditFragment$4;->this$0:Lcom/narvii/headlines/category/HeadlineChannelEditFragment;

    invoke-virtual {p1}, Lcom/narvii/app/NVFragment;->finish()V

    .line 575
    iget-object p1, p0, Lcom/narvii/headlines/category/HeadlineChannelEditFragment$4;->val$progressDialog:Lcom/narvii/util/dialog/ProgressDialog;

    invoke-virtual {p1}, Lcom/narvii/util/dialog/ProgressDialog;->dismiss()V

    return-void
.end method
