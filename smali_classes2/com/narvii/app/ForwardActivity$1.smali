.class Lcom/narvii/app/ForwardActivity$1;
.super Lcom/narvii/util/http/ApiResponseListener;
.source "ForwardActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/app/ForwardActivity;->handleForwardLink(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/narvii/util/http/ApiResponseListener<",
        "Lcom/narvii/share/LinkV2TranslationResponse;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/app/ForwardActivity;

.field final synthetic val$isFromWeb:Z

.field final synthetic val$ltQuery:Ljava/lang/String;

.field final synthetic val$shareId:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/narvii/app/ForwardActivity;Ljava/lang/Class;ZLjava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 193
    iput-object p1, p0, Lcom/narvii/app/ForwardActivity$1;->this$0:Lcom/narvii/app/ForwardActivity;

    iput-boolean p3, p0, Lcom/narvii/app/ForwardActivity$1;->val$isFromWeb:Z

    iput-object p4, p0, Lcom/narvii/app/ForwardActivity$1;->val$shareId:Ljava/lang/String;

    iput-object p5, p0, Lcom/narvii/app/ForwardActivity$1;->val$ltQuery:Ljava/lang/String;

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

    .line 213
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo p2, "unable to translate link "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lcom/narvii/app/ForwardActivity$1;->val$ltQuery:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/narvii/util/Log;->w(Ljava/lang/String;)V

    const/4 p1, 0x0

    if-nez p5, :cond_0

    .line 215
    iget-object p2, p0, Lcom/narvii/app/ForwardActivity$1;->this$0:Lcom/narvii/app/ForwardActivity;

    invoke-virtual {p2}, Lcom/narvii/app/NVActivity;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2, p4, p1}, Lcom/narvii/util/NVToast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Lcom/narvii/util/NVToast;

    move-result-object p1

    invoke-virtual {p1}, Lcom/narvii/util/NVToast;->show()V

    .line 216
    iget-object p1, p0, Lcom/narvii/app/ForwardActivity$1;->this$0:Lcom/narvii/app/ForwardActivity;

    const p2, 0x7f0b0274

    iput p2, p1, Lcom/narvii/app/ForwardActivity;->layoutId:I

    .line 217
    iget p2, p1, Lcom/narvii/app/ForwardActivity;->layoutId:I

    invoke-virtual {p1, p2}, Lcom/narvii/app/ForwardActivity;->setContentView(I)V

    goto :goto_0

    .line 220
    :cond_0
    iget-object p2, p0, Lcom/narvii/app/ForwardActivity$1;->this$0:Lcom/narvii/app/ForwardActivity;

    invoke-virtual {p2, p1}, Lcom/narvii/app/ForwardActivity;->openWebView(I)V

    :goto_0
    return-void
.end method

.method public bridge synthetic onFinish(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/model/api/ApiResponse;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 193
    check-cast p2, Lcom/narvii/share/LinkV2TranslationResponse;

    invoke-virtual {p0, p1, p2}, Lcom/narvii/app/ForwardActivity$1;->onFinish(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/share/LinkV2TranslationResponse;)V

    return-void
.end method

.method public onFinish(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/share/LinkV2TranslationResponse;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    if-eqz p2, :cond_0

    .line 198
    iget-object p1, p2, Lcom/narvii/share/LinkV2TranslationResponse;->linkInfoV2:Lcom/narvii/share/LinkInfoV2;

    if-eqz p1, :cond_0

    .line 199
    invoke-virtual {p1}, Lcom/narvii/share/LinkInfoV2;->getInnerLinkInfo()Lcom/narvii/share/LinkInfo;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    if-eqz p1, :cond_1

    .line 201
    iget v0, p1, Lcom/narvii/share/LinkInfo;->targetCode:I

    const/16 v1, 0xa

    if-ne v0, v1, :cond_1

    .line 202
    iget-object v0, p0, Lcom/narvii/app/ForwardActivity$1;->this$0:Lcom/narvii/app/ForwardActivity;

    iget-boolean v1, p0, Lcom/narvii/app/ForwardActivity$1;->val$isFromWeb:Z

    iget-object v2, p0, Lcom/narvii/app/ForwardActivity$1;->val$shareId:Ljava/lang/String;

    iget-object v3, p1, Lcom/narvii/share/LinkInfo;->objectId:Ljava/lang/String;

    iget p1, p1, Lcom/narvii/share/LinkInfo;->ndcId:I

    invoke-static {v0, v1, v2, v3, p1}, Lcom/narvii/app/ForwardActivity;->access$000(Lcom/narvii/app/ForwardActivity;ZLjava/lang/String;Ljava/lang/String;I)V

    .line 205
    :cond_1
    iget-object p1, p0, Lcom/narvii/app/ForwardActivity$1;->this$0:Lcom/narvii/app/ForwardActivity;

    iget-object p2, p2, Lcom/narvii/share/LinkV2TranslationResponse;->linkInfoV2:Lcom/narvii/share/LinkInfoV2;

    invoke-virtual {p1, p2}, Lcom/narvii/app/ForwardActivity;->openLinkTranslation(Lcom/narvii/share/LinkInfoV2;)V

    .line 206
    iget-object p1, p0, Lcom/narvii/app/ForwardActivity$1;->this$0:Lcom/narvii/app/ForwardActivity;

    const p2, 0x7f010029

    const v0, 0x7f01002a

    invoke-virtual {p1, p2, v0}, Landroid/app/Activity;->overridePendingTransition(II)V

    return-void
.end method
