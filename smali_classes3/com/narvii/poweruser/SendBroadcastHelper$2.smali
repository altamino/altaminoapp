.class Lcom/narvii/poweruser/SendBroadcastHelper$2;
.super Lcom/narvii/util/http/ApiResponseListener;
.source "SendBroadcastHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/poweruser/SendBroadcastHelper;->checkIfCanPush(Lcom/narvii/model/NVObject;)V
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
.field final synthetic this$0:Lcom/narvii/poweruser/SendBroadcastHelper;

.field final synthetic val$object:Lcom/narvii/model/NVObject;


# direct methods
.method constructor <init>(Lcom/narvii/poweruser/SendBroadcastHelper;Ljava/lang/Class;Lcom/narvii/model/NVObject;)V
    .locals 0

    .line 124
    iput-object p1, p0, Lcom/narvii/poweruser/SendBroadcastHelper$2;->this$0:Lcom/narvii/poweruser/SendBroadcastHelper;

    iput-object p3, p0, Lcom/narvii/poweruser/SendBroadcastHelper$2;->val$object:Lcom/narvii/model/NVObject;

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

    .line 127
    iget-object p1, p0, Lcom/narvii/poweruser/SendBroadcastHelper$2;->this$0:Lcom/narvii/poweruser/SendBroadcastHelper;

    iget-boolean p3, p1, Lcom/narvii/poweruser/SendBroadcastHelper;->loading:Z

    if-nez p3, :cond_0

    return-void

    .line 130
    :cond_0
    invoke-static {p1}, Lcom/narvii/poweruser/SendBroadcastHelper;->access$100(Lcom/narvii/poweruser/SendBroadcastHelper;)V

    .line 131
    iget-object p1, p0, Lcom/narvii/poweruser/SendBroadcastHelper$2;->this$0:Lcom/narvii/poweruser/SendBroadcastHelper;

    new-instance p3, Lcom/narvii/poweruser/SendBroadcastHelper$2$1;

    invoke-direct {p3, p0}, Lcom/narvii/poweruser/SendBroadcastHelper$2$1;-><init>(Lcom/narvii/poweruser/SendBroadcastHelper$2;)V

    invoke-virtual {p1, p2, p4, p3}, Lcom/narvii/poweruser/SendBroadcastHelper;->processError(ILjava/lang/String;Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public onFinish(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/model/api/ApiResponse;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 140
    invoke-super {p0, p1, p2}, Lcom/narvii/util/http/ApiResponseListener;->onFinish(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/model/api/ApiResponse;)V

    .line 141
    iget-object p1, p0, Lcom/narvii/poweruser/SendBroadcastHelper$2;->this$0:Lcom/narvii/poweruser/SendBroadcastHelper;

    iget-boolean p2, p1, Lcom/narvii/poweruser/SendBroadcastHelper;->loading:Z

    if-nez p2, :cond_0

    return-void

    .line 145
    :cond_0
    invoke-static {p1}, Lcom/narvii/poweruser/SendBroadcastHelper;->access$000(Lcom/narvii/poweruser/SendBroadcastHelper;)Lcom/narvii/app/NVContext;

    move-result-object p1

    const-string p2, "config"

    invoke-interface {p1, p2}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/narvii/config/ConfigService;

    .line 146
    invoke-virtual {p1}, Lcom/narvii/config/ConfigService;->getCommunityId()I

    move-result p1

    .line 147
    iget-object p2, p0, Lcom/narvii/poweruser/SendBroadcastHelper$2;->val$object:Lcom/narvii/model/NVObject;

    invoke-virtual {p2}, Lcom/narvii/model/NVObject;->objectType()I

    move-result p2

    invoke-static {p2}, Lcom/narvii/model/NVObject;->objectTypeName(I)Ljava/lang/String;

    move-result-object p2

    .line 148
    iget-object v0, p0, Lcom/narvii/poweruser/SendBroadcastHelper$2;->val$object:Lcom/narvii/model/NVObject;

    invoke-virtual {v0}, Lcom/narvii/model/NVObject;->id()Ljava/lang/String;

    move-result-object v0

    if-eqz p1, :cond_4

    if-eqz p2, :cond_4

    if-nez v0, :cond_1

    goto :goto_1

    .line 155
    :cond_1
    iget-object v1, p0, Lcom/narvii/poweruser/SendBroadcastHelper$2;->this$0:Lcom/narvii/poweruser/SendBroadcastHelper;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ndc://x"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "/"

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, v1, Lcom/narvii/poweruser/SendBroadcastHelper;->linkUrl:Ljava/lang/String;

    .line 156
    iget-object p1, p0, Lcom/narvii/poweruser/SendBroadcastHelper$2;->this$0:Lcom/narvii/poweruser/SendBroadcastHelper;

    invoke-static {p1}, Lcom/narvii/poweruser/SendBroadcastHelper;->access$100(Lcom/narvii/poweruser/SendBroadcastHelper;)V

    .line 158
    new-instance p1, Lcom/narvii/model/LinkSummary;

    invoke-direct {p1}, Lcom/narvii/model/LinkSummary;-><init>()V

    .line 162
    iget-object p2, p0, Lcom/narvii/poweruser/SendBroadcastHelper$2;->val$object:Lcom/narvii/model/NVObject;

    instance-of v0, p2, Lcom/narvii/model/Feed;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    .line 163
    check-cast p2, Lcom/narvii/model/Feed;

    invoke-virtual {p2}, Lcom/narvii/model/Feed;->title()Ljava/lang/String;

    move-result-object v1

    .line 164
    iget-object p2, p0, Lcom/narvii/poweruser/SendBroadcastHelper$2;->val$object:Lcom/narvii/model/NVObject;

    check-cast p2, Lcom/narvii/model/Feed;

    iget-object p2, p2, Lcom/narvii/model/Feed;->mediaList:Ljava/util/List;

    goto :goto_0

    .line 165
    :cond_2
    instance-of v0, p2, Lcom/narvii/model/ItemCategory;

    if-eqz v0, :cond_3

    .line 166
    move-object v0, p2

    check-cast v0, Lcom/narvii/model/ItemCategory;

    iget-object v1, v0, Lcom/narvii/model/ItemCategory;->label:Ljava/lang/String;

    .line 167
    check-cast p2, Lcom/narvii/model/ItemCategory;

    iget-object p2, p2, Lcom/narvii/model/ItemCategory;->mediaList:Ljava/util/List;

    goto :goto_0

    :cond_3
    move-object p2, v1

    .line 169
    :goto_0
    iput-object v1, p1, Lcom/narvii/model/LinkSummary;->title:Ljava/lang/String;

    .line 170
    iput-object p2, p1, Lcom/narvii/model/LinkSummary;->mediaList:Ljava/util/List;

    .line 171
    iget-object p2, p0, Lcom/narvii/poweruser/SendBroadcastHelper$2;->this$0:Lcom/narvii/poweruser/SendBroadcastHelper;

    iget-object v0, p2, Lcom/narvii/poweruser/SendBroadcastHelper;->linkUrl:Ljava/lang/String;

    invoke-static {p2, p1, v0}, Lcom/narvii/poweruser/SendBroadcastHelper;->access$200(Lcom/narvii/poweruser/SendBroadcastHelper;Lcom/narvii/model/LinkSummary;Ljava/lang/String;)V

    return-void

    .line 150
    :cond_4
    :goto_1
    iget-object p1, p0, Lcom/narvii/poweruser/SendBroadcastHelper$2;->this$0:Lcom/narvii/poweruser/SendBroadcastHelper;

    invoke-static {p1}, Lcom/narvii/poweruser/SendBroadcastHelper;->access$000(Lcom/narvii/poweruser/SendBroadcastHelper;)Lcom/narvii/app/NVContext;

    move-result-object p1

    invoke-interface {p1}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    move-result-object p1

    const p2, 0x7f0f0743

    const/4 v0, 0x0

    invoke-static {p1, p2, v0}, Lcom/narvii/util/NVToast;->makeText(Landroid/content/Context;II)Lcom/narvii/util/NVToast;

    move-result-object p1

    invoke-virtual {p1}, Lcom/narvii/util/NVToast;->show()V

    .line 151
    iget-object p1, p0, Lcom/narvii/poweruser/SendBroadcastHelper$2;->this$0:Lcom/narvii/poweruser/SendBroadcastHelper;

    invoke-static {p1}, Lcom/narvii/poweruser/SendBroadcastHelper;->access$100(Lcom/narvii/poweruser/SendBroadcastHelper;)V

    return-void
.end method
