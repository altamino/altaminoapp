.class public final Lcom/narvii/scene/TemplateListFragment$sendRequest$1;
.super Lcom/narvii/util/http/ApiResponseListener;
.source "TemplateListFragment.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/scene/TemplateListFragment;->sendRequest()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/narvii/util/http/ApiResponseListener<",
        "Lcom/narvii/scene/template/response/TemplateResponse;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nTemplateListFragment.kt\nKotlin\n*S Kotlin\n*F\n+ 1 TemplateListFragment.kt\ncom/narvii/scene/TemplateListFragment$sendRequest$1\n*L\n1#1,475:1\n*E\n"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/scene/TemplateListFragment;


# direct methods
.method constructor <init>(Lcom/narvii/scene/TemplateListFragment;Ljava/lang/Class;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class;",
            ")V"
        }
    .end annotation

    .line 176
    iput-object p1, p0, Lcom/narvii/scene/TemplateListFragment$sendRequest$1;->this$0:Lcom/narvii/scene/TemplateListFragment;

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

    .line 192
    invoke-super/range {p0 .. p6}, Lcom/narvii/util/http/ApiResponseListener;->onFail(Lcom/narvii/util/http/ApiRequest;ILjava/util/List;Ljava/lang/String;Lcom/narvii/model/api/ApiResponse;Ljava/lang/Throwable;)V

    .line 193
    iget-object p1, p0, Lcom/narvii/scene/TemplateListFragment$sendRequest$1;->this$0:Lcom/narvii/scene/TemplateListFragment;

    invoke-virtual {p1}, Lcom/narvii/scene/TemplateListFragment;->getPageLoadState()Lcom/narvii/paging/state/PageLoadState;

    move-result-object p1

    const/4 p2, 0x2

    iput p2, p1, Lcom/narvii/paging/state/PageLoadState;->status:I

    .line 194
    iget-object p1, p0, Lcom/narvii/scene/TemplateListFragment$sendRequest$1;->this$0:Lcom/narvii/scene/TemplateListFragment;

    invoke-virtual {p1}, Lcom/narvii/scene/TemplateListFragment;->updateViews()V

    return-void
.end method

.method public bridge synthetic onFinish(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/model/api/ApiResponse;)V
    .locals 0

    .line 176
    check-cast p2, Lcom/narvii/scene/template/response/TemplateResponse;

    invoke-virtual {p0, p1, p2}, Lcom/narvii/scene/TemplateListFragment$sendRequest$1;->onFinish(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/scene/template/response/TemplateResponse;)V

    return-void
.end method

.method public onFinish(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/scene/template/response/TemplateResponse;)V
    .locals 0

    .line 179
    invoke-super {p0, p1, p2}, Lcom/narvii/util/http/ApiResponseListener;->onFinish(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/model/api/ApiResponse;)V

    .line 180
    iget-object p1, p0, Lcom/narvii/scene/TemplateListFragment$sendRequest$1;->this$0:Lcom/narvii/scene/TemplateListFragment;

    invoke-virtual {p1}, Lcom/narvii/scene/TemplateListFragment;->getTemplateList()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->clear()V

    if-eqz p2, :cond_0

    .line 181
    iget-object p1, p2, Lcom/narvii/scene/template/response/TemplateResponse;->storyTemplateList:Ljava/util/List;

    if-eqz p1, :cond_0

    .line 182
    iget-object p2, p0, Lcom/narvii/scene/TemplateListFragment$sendRequest$1;->this$0:Lcom/narvii/scene/TemplateListFragment;

    invoke-virtual {p2}, Lcom/narvii/scene/TemplateListFragment;->getTemplateList()Ljava/util/List;

    move-result-object p2

    invoke-interface {p2, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 184
    :cond_0
    iget-object p1, p0, Lcom/narvii/scene/TemplateListFragment$sendRequest$1;->this$0:Lcom/narvii/scene/TemplateListFragment;

    invoke-virtual {p1}, Lcom/narvii/scene/TemplateListFragment;->getPageLoadState()Lcom/narvii/paging/state/PageLoadState;

    move-result-object p1

    const/4 p2, 0x1

    iput p2, p1, Lcom/narvii/paging/state/PageLoadState;->status:I

    .line 185
    iget-object p1, p0, Lcom/narvii/scene/TemplateListFragment$sendRequest$1;->this$0:Lcom/narvii/scene/TemplateListFragment;

    invoke-virtual {p1}, Lcom/narvii/scene/TemplateListFragment;->getTemplateList()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-lez p1, :cond_1

    .line 186
    iget-object p1, p0, Lcom/narvii/scene/TemplateListFragment$sendRequest$1;->this$0:Lcom/narvii/scene/TemplateListFragment;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Lcom/narvii/scene/TemplateListFragment;->setSelectedPosition(I)V

    .line 188
    :cond_1
    iget-object p1, p0, Lcom/narvii/scene/TemplateListFragment$sendRequest$1;->this$0:Lcom/narvii/scene/TemplateListFragment;

    invoke-virtual {p1}, Lcom/narvii/scene/TemplateListFragment;->updateViews()V

    return-void
.end method
