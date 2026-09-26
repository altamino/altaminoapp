.class Lcom/narvii/influencer/FanClubDetailFragment$2;
.super Ljava/lang/Object;
.source "SourceFile"

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

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/influencer/FanClubDetailFragment$2;->this$0:Lcom/narvii/influencer/FanClubDetailFragment;

    .line 3
    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .line 1
    .line 2
    new-instance p1, Lcom/narvii/util/dialog/ProgressDialog;

    .line 3
    .line 4
    iget-object v0, p0, Lcom/narvii/influencer/FanClubDetailFragment$2;->this$0:Lcom/narvii/influencer/FanClubDetailFragment;

    .line 5
    .line 6
    .line 7
    invoke-virtual {v0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    .line 8
    move-result-object v0

    .line 9
    .line 10
    .line 11
    invoke-direct {p1, v0}, Lcom/narvii/util/dialog/ProgressDialog;-><init>(Landroid/content/Context;)V

    .line 12
    .line 13
    new-instance v0, Lcom/narvii/influencer/FanClubDetailFragment$2$1;

    .line 14
    .line 15
    .line 16
    invoke-direct {v0, p0}, Lcom/narvii/influencer/FanClubDetailFragment$2$1;-><init>(Lcom/narvii/influencer/FanClubDetailFragment$2;)V

    .line 17
    .line 18
    iput-object v0, p1, Lcom/narvii/util/dialog/ProgressDialog;->successListener:Lcom/narvii/util/Callback;

    .line 19
    .line 20
    .line 21
    invoke-virtual {p1}, Lcom/narvii/util/dialog/ProgressDialog;->show()V

    .line 22
    .line 23
    .line 24
    invoke-static {}, Lcom/narvii/util/http/ApiRequest;->builder()Lcom/narvii/util/http/ApiRequest$Builder;

    .line 25
    move-result-object v0

    .line 26
    .line 27
    .line 28
    invoke-virtual {v0}, Lcom/narvii/util/http/ApiRequest$Builder;->delete()Lcom/narvii/util/http/ApiRequest$Builder;

    .line 29
    move-result-object v0

    .line 30
    .line 31
    iget-object v1, p0, Lcom/narvii/influencer/FanClubDetailFragment$2;->this$0:Lcom/narvii/influencer/FanClubDetailFragment;

    .line 32
    .line 33
    iget-object v1, v1, Lcom/narvii/influencer/FanClubDetailFragment;->fanClub:Lcom/narvii/influencer/FanClub;

    .line 34
    .line 35
    iget v1, v1, Lcom/narvii/influencer/FanClub;->ndcId:I

    .line 36
    .line 37
    .line 38
    invoke-virtual {v0, v1}, Lcom/narvii/util/http/ApiRequest$Builder;->communityId(I)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 39
    move-result-object v0

    .line 40
    .line 41
    new-instance v1, Ljava/lang/StringBuilder;

    .line 42
    .line 43
    .line 44
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 45
    .line 46
    const-string v2, "/influencer/"

    .line 47
    .line 48
    .line 49
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 50
    .line 51
    iget-object v2, p0, Lcom/narvii/influencer/FanClubDetailFragment$2;->this$0:Lcom/narvii/influencer/FanClubDetailFragment;

    .line 52
    .line 53
    iget-object v2, v2, Lcom/narvii/influencer/FanClubDetailFragment;->fanClub:Lcom/narvii/influencer/FanClub;

    .line 54
    .line 55
    iget-object v2, v2, Lcom/narvii/influencer/FanClub;->targetUid:Ljava/lang/String;

    .line 56
    .line 57
    .line 58
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 59
    .line 60
    const-string v2, "/subscribe"

    .line 61
    .line 62
    .line 63
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 64
    .line 65
    .line 66
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 67
    move-result-object v1

    .line 68
    .line 69
    .line 70
    invoke-virtual {v0, v1}, Lcom/narvii/util/http/ApiRequest$Builder;->path(Ljava/lang/String;)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 71
    move-result-object v0

    .line 72
    .line 73
    .line 74
    invoke-virtual {v0}, Lcom/narvii/util/http/ApiRequest$Builder;->build()Lcom/narvii/util/http/ApiRequest;

    .line 75
    move-result-object v0

    .line 76
    .line 77
    iget-object v1, p0, Lcom/narvii/influencer/FanClubDetailFragment$2;->this$0:Lcom/narvii/influencer/FanClubDetailFragment;

    .line 78
    .line 79
    const-string v2, "api"

    .line 80
    .line 81
    .line 82
    invoke-virtual {v1, v2}, Lcom/narvii/app/NVFragment;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 83
    move-result-object v1

    .line 84
    .line 85
    check-cast v1, Lcom/narvii/util/http/ApiService;

    .line 86
    .line 87
    iget-object p1, p1, Lcom/narvii/util/dialog/ProgressDialog;->dismissListener:Lcom/narvii/util/http/ApiResponseListener;

    .line 88
    .line 89
    .line 90
    invoke-virtual {v1, v0, p1}, Lcom/narvii/util/http/ApiService;->exec(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/util/http/ApiResponseListener;)V

    .line 91
    return-void
.end method
