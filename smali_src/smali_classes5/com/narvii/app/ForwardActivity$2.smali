.class Lcom/narvii/app/ForwardActivity$2;
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

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/app/ForwardActivity$2;->this$0:Lcom/narvii/app/ForwardActivity;

    .line 3
    .line 4
    iput-object p3, p0, Lcom/narvii/app/ForwardActivity$2;->val$url:Ljava/lang/String;

    .line 5
    .line 6
    iput-boolean p4, p0, Lcom/narvii/app/ForwardActivity$2;->val$isInvite:Z

    .line 7
    .line 8
    .line 9
    invoke-direct {p0, p2}, Lcom/narvii/util/http/ApiResponseListener;-><init>(Ljava/lang/Class;)V

    .line 10
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
    const-string p2, "unable to identify link "

    .line 8
    .line 9
    .line 10
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    iget-object p2, p0, Lcom/narvii/app/ForwardActivity$2;->val$url:Ljava/lang/String;

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
    iget-object p2, p0, Lcom/narvii/app/ForwardActivity$2;->this$0:Lcom/narvii/app/ForwardActivity;

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
    iget-object p1, p0, Lcom/narvii/app/ForwardActivity$2;->this$0:Lcom/narvii/app/ForwardActivity;

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
    iget-object p2, p0, Lcom/narvii/app/ForwardActivity$2;->this$0:Lcom/narvii/app/ForwardActivity;

    .line 52
    .line 53
    .line 54
    invoke-virtual {p2, p1}, Lcom/narvii/app/ForwardActivity;->openWebView(I)V

    .line 55
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

    iget-object p1, p0, Lcom/narvii/app/ForwardActivity$2;->this$0:Lcom/narvii/app/ForwardActivity;

    iget-object v0, p0, Lcom/narvii/app/ForwardActivity$2;->val$url:Ljava/lang/String;

    iget-boolean v1, p0, Lcom/narvii/app/ForwardActivity$2;->val$isInvite:Z

    .line 2
    invoke-virtual {p1, v0, p2, v1}, Lcom/narvii/app/ForwardActivity;->openCommunityInvite(Ljava/lang/String;Lcom/narvii/master/invitation/CommunityInviteResponse;Z)V

    iget-object p1, p0, Lcom/narvii/app/ForwardActivity$2;->this$0:Lcom/narvii/app/ForwardActivity;

    const p2, 0x7f010037

    const v0, 0x7f010038

    .line 3
    invoke-virtual {p1, p2, v0}, Landroid/app/Activity;->overridePendingTransition(II)V

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
    check-cast p2, Lcom/narvii/master/invitation/CommunityInviteResponse;

    invoke-virtual {p0, p1, p2}, Lcom/narvii/app/ForwardActivity$2;->onFinish(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/master/invitation/CommunityInviteResponse;)V

    return-void
.end method
