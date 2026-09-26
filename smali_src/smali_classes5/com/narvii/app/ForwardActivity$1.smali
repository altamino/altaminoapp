.class Lcom/narvii/app/ForwardActivity$1;
.super Lcom/narvii/util/http/ApiResponseListener;
.source "SourceFile"


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

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/app/ForwardActivity$1;->this$0:Lcom/narvii/app/ForwardActivity;

    .line 3
    .line 4
    iput-boolean p3, p0, Lcom/narvii/app/ForwardActivity$1;->val$isFromWeb:Z

    .line 5
    .line 6
    iput-object p4, p0, Lcom/narvii/app/ForwardActivity$1;->val$shareId:Ljava/lang/String;

    .line 7
    .line 8
    iput-object p5, p0, Lcom/narvii/app/ForwardActivity$1;->val$ltQuery:Ljava/lang/String;

    .line 9
    .line 10
    .line 11
    invoke-direct {p0, p2}, Lcom/narvii/util/http/ApiResponseListener;-><init>(Ljava/lang/Class;)V

    .line 12
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

    .line 1
    .line 2
    new-instance p1, Ljava/lang/StringBuilder;

    .line 3
    .line 4
    .line 5
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 6
    .line 7
    const-string p2, "unable to translate link "

    .line 8
    .line 9
    .line 10
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    iget-object p2, p0, Lcom/narvii/app/ForwardActivity$1;->val$ltQuery:Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 19
    move-result-object p1

    .line 20
    .line 21
    .line 22
    invoke-static {p1}, Lcom/narvii/util/Log;->w(Ljava/lang/String;)V

    .line 23
    const/4 p1, 0x0

    .line 24
    .line 25
    if-nez p5, :cond_0

    .line 26
    .line 27
    iget-object p2, p0, Lcom/narvii/app/ForwardActivity$1;->this$0:Lcom/narvii/app/ForwardActivity;

    .line 28
    .line 29
    .line 30
    invoke-virtual {p2}, Lcom/narvii/app/NVActivity;->getContext()Landroid/content/Context;

    .line 31
    move-result-object p2

    .line 32
    .line 33
    .line 34
    invoke-static {p2, p4, p1}, Lcom/narvii/util/NVToast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Lcom/narvii/util/NVToast;

    .line 35
    move-result-object p1

    .line 36
    .line 37
    .line 38
    invoke-virtual {p1}, Lcom/narvii/util/NVToast;->show()V

    .line 39
    .line 40
    iget-object p1, p0, Lcom/narvii/app/ForwardActivity$1;->this$0:Lcom/narvii/app/ForwardActivity;

    .line 41
    .line 42
    .line 43
    const p2, 0x7f0d029e

    .line 44
    .line 45
    iput p2, p1, Lcom/narvii/app/ForwardActivity;->layoutId:I

    .line 46
    .line 47
    .line 48
    invoke-virtual {p1, p2}, Lcom/narvii/app/ForwardActivity;->setContentView(I)V

    .line 49
    goto :goto_0

    .line 50
    .line 51
    :cond_0
    iget-object p2, p0, Lcom/narvii/app/ForwardActivity$1;->this$0:Lcom/narvii/app/ForwardActivity;

    .line 52
    .line 53
    .line 54
    invoke-virtual {p2, p1}, Lcom/narvii/app/ForwardActivity;->openWebView(I)V

    .line 55
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

    .line 1
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

    .line 2
    iget-object p1, p2, Lcom/narvii/share/LinkV2TranslationResponse;->linkInfoV2:Lcom/narvii/share/LinkInfoV2;

    if-eqz p1, :cond_0

    .line 3
    invoke-virtual {p1}, Lcom/narvii/share/LinkInfoV2;->getInnerLinkInfo()Lcom/narvii/share/LinkInfo;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    if-eqz p1, :cond_1

    .line 4
    iget v0, p1, Lcom/narvii/share/LinkInfo;->targetCode:I

    const/16 v1, 0xa

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/narvii/app/ForwardActivity$1;->this$0:Lcom/narvii/app/ForwardActivity;

    iget-boolean v1, p0, Lcom/narvii/app/ForwardActivity$1;->val$isFromWeb:Z

    iget-object v2, p0, Lcom/narvii/app/ForwardActivity$1;->val$shareId:Ljava/lang/String;

    .line 5
    iget-object v3, p1, Lcom/narvii/share/LinkInfo;->objectId:Ljava/lang/String;

    iget p1, p1, Lcom/narvii/share/LinkInfo;->ndcId:I

    invoke-static {v0, v1, v2, v3, p1}, Lcom/narvii/app/ForwardActivity;->t(Lcom/narvii/app/ForwardActivity;ZLjava/lang/String;Ljava/lang/String;I)V

    :cond_1
    iget-object p1, p0, Lcom/narvii/app/ForwardActivity$1;->this$0:Lcom/narvii/app/ForwardActivity;

    .line 6
    iget-object p2, p2, Lcom/narvii/share/LinkV2TranslationResponse;->linkInfoV2:Lcom/narvii/share/LinkInfoV2;

    invoke-virtual {p1, p2}, Lcom/narvii/app/ForwardActivity;->openLinkTranslation(Lcom/narvii/share/LinkInfoV2;)V

    iget-object p1, p0, Lcom/narvii/app/ForwardActivity$1;->this$0:Lcom/narvii/app/ForwardActivity;

    const p2, 0x7f010037

    const v0, 0x7f010038

    .line 7
    invoke-virtual {p1, p2, v0}, Landroid/app/Activity;->overridePendingTransition(II)V

    return-void
.end method
