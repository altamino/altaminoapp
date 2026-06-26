.class Lcom/narvii/flag/resolve/FlagResolveBar$12;
.super Lcom/narvii/util/http/ApiResponseListener;
.source "FlagResolveBar.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/flag/resolve/FlagResolveBar;->loadNextPageList()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/narvii/util/http/ApiResponseListener<",
        "Lcom/narvii/flag/model/FlagListResponse;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/flag/resolve/FlagResolveBar;

.field final synthetic val$dlg:Lcom/narvii/util/dialog/ProgressDialog;


# direct methods
.method constructor <init>(Lcom/narvii/flag/resolve/FlagResolveBar;Ljava/lang/Class;Lcom/narvii/util/dialog/ProgressDialog;)V
    .locals 0

    .line 501
    iput-object p1, p0, Lcom/narvii/flag/resolve/FlagResolveBar$12;->this$0:Lcom/narvii/flag/resolve/FlagResolveBar;

    iput-object p3, p0, Lcom/narvii/flag/resolve/FlagResolveBar$12;->val$dlg:Lcom/narvii/util/dialog/ProgressDialog;

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

    .line 517
    invoke-super/range {p0 .. p6}, Lcom/narvii/util/http/ApiResponseListener;->onFail(Lcom/narvii/util/http/ApiRequest;ILjava/util/List;Ljava/lang/String;Lcom/narvii/model/api/ApiResponse;Ljava/lang/Throwable;)V

    .line 518
    iget-object p1, p0, Lcom/narvii/flag/resolve/FlagResolveBar$12;->this$0:Lcom/narvii/flag/resolve/FlagResolveBar;

    invoke-virtual {p1}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object p1

    const/4 p2, 0x0

    invoke-static {p1, p4, p2}, Lcom/narvii/util/NVToast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Lcom/narvii/util/NVToast;

    move-result-object p1

    invoke-virtual {p1}, Lcom/narvii/util/NVToast;->show()V

    .line 519
    iget-object p1, p0, Lcom/narvii/flag/resolve/FlagResolveBar$12;->val$dlg:Lcom/narvii/util/dialog/ProgressDialog;

    invoke-virtual {p1}, Lcom/narvii/util/dialog/ProgressDialog;->dismiss()V

    return-void
.end method

.method public onFinish(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/flag/model/FlagListResponse;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 504
    invoke-super {p0, p1, p2}, Lcom/narvii/util/http/ApiResponseListener;->onFinish(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/model/api/ApiResponse;)V

    .line 505
    iget-object p1, p2, Lcom/narvii/flag/model/FlagListResponse;->flagList:Ljava/util/List;

    if-eqz p1, :cond_1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-nez p1, :cond_0

    goto :goto_0

    .line 508
    :cond_0
    iget-object p1, p0, Lcom/narvii/flag/resolve/FlagResolveBar$12;->this$0:Lcom/narvii/flag/resolve/FlagResolveBar;

    invoke-static {p1}, Lcom/narvii/flag/resolve/FlagResolveBar;->access$1200(Lcom/narvii/flag/resolve/FlagResolveBar;)Ljava/util/List;

    move-result-object p1

    iget-object v0, p2, Lcom/narvii/flag/model/FlagListResponse;->flagList:Ljava/util/List;

    invoke-interface {p1, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 509
    iget-object p1, p0, Lcom/narvii/flag/resolve/FlagResolveBar$12;->this$0:Lcom/narvii/flag/resolve/FlagResolveBar;

    invoke-static {p1}, Lcom/narvii/flag/resolve/FlagResolveBar;->access$1300(Lcom/narvii/flag/resolve/FlagResolveBar;)I

    move-result v0

    iget-object p2, p2, Lcom/narvii/flag/model/FlagListResponse;->flagList:Ljava/util/List;

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p2

    add-int/2addr v0, p2

    invoke-static {p1, v0}, Lcom/narvii/flag/resolve/FlagResolveBar;->access$1302(Lcom/narvii/flag/resolve/FlagResolveBar;I)I

    goto :goto_1

    .line 506
    :cond_1
    :goto_0
    iget-object p1, p0, Lcom/narvii/flag/resolve/FlagResolveBar$12;->this$0:Lcom/narvii/flag/resolve/FlagResolveBar;

    const/4 p2, 0x1

    invoke-static {p1, p2}, Lcom/narvii/flag/resolve/FlagResolveBar;->access$1102(Lcom/narvii/flag/resolve/FlagResolveBar;Z)Z

    .line 511
    :goto_1
    iget-object p1, p0, Lcom/narvii/flag/resolve/FlagResolveBar$12;->this$0:Lcom/narvii/flag/resolve/FlagResolveBar;

    invoke-virtual {p1}, Lcom/narvii/flag/resolve/FlagResolveBar;->loadNextFlag()V

    .line 512
    iget-object p1, p0, Lcom/narvii/flag/resolve/FlagResolveBar$12;->val$dlg:Lcom/narvii/util/dialog/ProgressDialog;

    invoke-virtual {p1}, Lcom/narvii/util/dialog/ProgressDialog;->dismiss()V

    return-void
.end method

.method public bridge synthetic onFinish(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/model/api/ApiResponse;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 501
    check-cast p2, Lcom/narvii/flag/model/FlagListResponse;

    invoke-virtual {p0, p1, p2}, Lcom/narvii/flag/resolve/FlagResolveBar$12;->onFinish(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/flag/model/FlagListResponse;)V

    return-void
.end method
