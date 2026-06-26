.class Lcom/narvii/app/ForwardActivity$2;
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
        "Lcom/narvii/master/invitation/CommunityInviteResponse;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/app/ForwardActivity;

.field final synthetic val$isInvite:Z

.field final synthetic val$url:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/narvii/app/ForwardActivity;Ljava/lang/Class;Ljava/lang/String;Z)V
    .locals 0

    .line 229
    iput-object p1, p0, Lcom/narvii/app/ForwardActivity$2;->this$0:Lcom/narvii/app/ForwardActivity;

    iput-object p3, p0, Lcom/narvii/app/ForwardActivity$2;->val$url:Ljava/lang/String;

    iput-boolean p4, p0, Lcom/narvii/app/ForwardActivity$2;->val$isInvite:Z

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

    .line 244
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo p2, "unable to identify link "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lcom/narvii/app/ForwardActivity$2;->val$url:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/narvii/util/Log;->w(Ljava/lang/String;)V

    const/4 p1, 0x0

    if-nez p5, :cond_0

    .line 246
    iget-object p2, p0, Lcom/narvii/app/ForwardActivity$2;->this$0:Lcom/narvii/app/ForwardActivity;

    invoke-virtual {p2}, Lcom/narvii/app/NVActivity;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2, p4, p1}, Lcom/narvii/util/NVToast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Lcom/narvii/util/NVToast;

    move-result-object p1

    invoke-virtual {p1}, Lcom/narvii/util/NVToast;->show()V

    .line 247
    iget-object p1, p0, Lcom/narvii/app/ForwardActivity$2;->this$0:Lcom/narvii/app/ForwardActivity;

    const p2, 0x7f0b0274

    iput p2, p1, Lcom/narvii/app/ForwardActivity;->layoutId:I

    .line 248
    iget p2, p1, Lcom/narvii/app/ForwardActivity;->layoutId:I

    invoke-virtual {p1, p2}, Lcom/narvii/app/ForwardActivity;->setContentView(I)V

    goto :goto_0

    .line 251
    :cond_0
    iget-object p2, p0, Lcom/narvii/app/ForwardActivity$2;->this$0:Lcom/narvii/app/ForwardActivity;

    invoke-virtual {p2, p1}, Lcom/narvii/app/ForwardActivity;->openWebView(I)V

    :goto_0
    return-void
.end method

.method public onFinish(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/master/invitation/CommunityInviteResponse;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 232
    iget-object p1, p0, Lcom/narvii/app/ForwardActivity$2;->this$0:Lcom/narvii/app/ForwardActivity;

    iget-object v0, p0, Lcom/narvii/app/ForwardActivity$2;->val$url:Ljava/lang/String;

    iget-boolean v1, p0, Lcom/narvii/app/ForwardActivity$2;->val$isInvite:Z

    invoke-virtual {p1, v0, p2, v1}, Lcom/narvii/app/ForwardActivity;->openCommunityInvite(Ljava/lang/String;Lcom/narvii/master/invitation/CommunityInviteResponse;Z)V

    .line 233
    iget-object p1, p0, Lcom/narvii/app/ForwardActivity$2;->this$0:Lcom/narvii/app/ForwardActivity;

    const v0, 0x7f010029

    const v1, 0x7f01002a

    invoke-virtual {p1, v0, v1}, Landroid/app/Activity;->overridePendingTransition(II)V

    .line 234
    sget p1, Lcom/narvii/app/NVApplication;->CLIENT_TYPE:I

    const/16 v0, 0x65

    if-ne p1, v0, :cond_0

    .line 235
    new-instance p1, Lcom/narvii/master/invitation/PrivateCommunityCheckHelper;

    iget-object v0, p0, Lcom/narvii/app/ForwardActivity$2;->this$0:Lcom/narvii/app/ForwardActivity;

    invoke-direct {p1, v0}, Lcom/narvii/master/invitation/PrivateCommunityCheckHelper;-><init>(Lcom/narvii/app/NVContext;)V

    .line 236
    iget-boolean p2, p2, Lcom/narvii/master/invitation/CommunityInviteResponse;->isCurrentUserJoined:Z

    invoke-virtual {p1, p2}, Lcom/narvii/master/invitation/PrivateCommunityCheckHelper;->sendCommunityUserInfoChanged(Z)V

    :cond_0
    return-void
.end method

.method public bridge synthetic onFinish(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/model/api/ApiResponse;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 229
    check-cast p2, Lcom/narvii/master/invitation/CommunityInviteResponse;

    invoke-virtual {p0, p1, p2}, Lcom/narvii/app/ForwardActivity$2;->onFinish(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/master/invitation/CommunityInviteResponse;)V

    return-void
.end method
