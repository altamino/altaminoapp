.class Lcom/narvii/influencer/FanClubDetailFragment$2;
.super Ljava/lang/Object;
.source "FanClubDetailFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/influencer/FanClubDetailFragment;->deleteWhenClosed()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/influencer/FanClubDetailFragment;


# direct methods
.method constructor <init>(Lcom/narvii/influencer/FanClubDetailFragment;)V
    .locals 0

    .line 245
    iput-object p1, p0, Lcom/narvii/influencer/FanClubDetailFragment$2;->this$0:Lcom/narvii/influencer/FanClubDetailFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .line 248
    new-instance p1, Lcom/narvii/util/dialog/ProgressDialog;

    iget-object v0, p0, Lcom/narvii/influencer/FanClubDetailFragment$2;->this$0:Lcom/narvii/influencer/FanClubDetailFragment;

    invoke-virtual {v0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/narvii/util/dialog/ProgressDialog;-><init>(Landroid/content/Context;)V

    .line 249
    new-instance v0, Lcom/narvii/influencer/FanClubDetailFragment$2$1;

    invoke-direct {v0, p0}, Lcom/narvii/influencer/FanClubDetailFragment$2$1;-><init>(Lcom/narvii/influencer/FanClubDetailFragment$2;)V

    iput-object v0, p1, Lcom/narvii/util/dialog/ProgressDialog;->successListener:Lcom/narvii/util/Callback;

    .line 260
    invoke-virtual {p1}, Lcom/narvii/util/dialog/ProgressDialog;->show()V

    .line 261
    invoke-static {}, Lcom/narvii/util/http/ApiRequest;->builder()Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/narvii/util/http/ApiRequest$Builder;->delete()Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/narvii/influencer/FanClubDetailFragment$2;->this$0:Lcom/narvii/influencer/FanClubDetailFragment;

    iget-object v1, v1, Lcom/narvii/influencer/FanClubDetailFragment;->fanClub:Lcom/narvii/influencer/FanClub;

    iget v1, v1, Lcom/narvii/influencer/FanClub;->ndcId:I

    invoke-virtual {v0, v1}, Lcom/narvii/util/http/ApiRequest$Builder;->communityId(I)Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "/influencer/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/narvii/influencer/FanClubDetailFragment$2;->this$0:Lcom/narvii/influencer/FanClubDetailFragment;

    iget-object v2, v2, Lcom/narvii/influencer/FanClubDetailFragment;->fanClub:Lcom/narvii/influencer/FanClub;

    iget-object v2, v2, Lcom/narvii/influencer/FanClub;->targetUid:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "/subscribe"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/narvii/util/http/ApiRequest$Builder;->path(Ljava/lang/String;)Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/narvii/util/http/ApiRequest$Builder;->build()Lcom/narvii/util/http/ApiRequest;

    move-result-object v0

    .line 262
    iget-object v1, p0, Lcom/narvii/influencer/FanClubDetailFragment$2;->this$0:Lcom/narvii/influencer/FanClubDetailFragment;

    const-string v2, "api"

    invoke-virtual {v1, v2}, Lcom/narvii/app/NVFragment;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/narvii/util/http/ApiService;

    .line 263
    iget-object p1, p1, Lcom/narvii/util/dialog/ProgressDialog;->dismissListener:Lcom/narvii/util/http/ApiResponseListener;

    invoke-virtual {v1, v0, p1}, Lcom/narvii/util/http/ApiService;->exec(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/util/http/ApiResponseListener;)V

    return-void
.end method
