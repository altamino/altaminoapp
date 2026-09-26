.class Lcom/narvii/achievements/AchievementsFragment$3;
.super Lcom/narvii/util/http/ApiResponseListener;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/achievements/AchievementsFragment;->fetchUserProfile(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/narvii/util/http/ApiResponseListener<",
        "Lcom/narvii/model/api/UserResponse;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/achievements/AchievementsFragment;


# direct methods
.method constructor <init>(Lcom/narvii/achievements/AchievementsFragment;Ljava/lang/Class;)V
    .locals 0

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/achievements/AchievementsFragment$3;->this$0:Lcom/narvii/achievements/AchievementsFragment;

    .line 3
    .line 4
    .line 5
    invoke-direct {p0, p2}, Lcom/narvii/util/http/ApiResponseListener;-><init>(Ljava/lang/Class;)V

    .line 6
    return-void
.end method


# virtual methods
.method public bridge synthetic onFinish(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/model/api/ApiResponse;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    check-cast p2, Lcom/narvii/model/api/UserResponse;

    invoke-virtual {p0, p1, p2}, Lcom/narvii/achievements/AchievementsFragment$3;->onFinish(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/model/api/UserResponse;)V

    return-void
.end method

.method public onFinish(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/model/api/UserResponse;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 2
    invoke-super {p0, p1, p2}, Lcom/narvii/util/http/ApiResponseListener;->onFinish(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/model/api/ApiResponse;)V

    .line 3
    iget-object p1, p2, Lcom/narvii/model/api/UserResponse;->user:Lcom/narvii/model/User;

    if-eqz p1, :cond_0

    iget-object p2, p0, Lcom/narvii/achievements/AchievementsFragment$3;->this$0:Lcom/narvii/achievements/AchievementsFragment;

    .line 4
    iput-object p1, p2, Lcom/narvii/achievements/AchievementsFragment;->user:Lcom/narvii/model/User;

    .line 5
    iget-object p1, p1, Lcom/narvii/model/User;->mediaList:Ljava/util/List;

    iput-object p1, p2, Lcom/narvii/achievements/AchievementsFragment;->mediaList:Ljava/util/List;

    .line 6
    invoke-static {p2}, Lcom/narvii/achievements/AchievementsFragment;->w(Lcom/narvii/achievements/AchievementsFragment;)V

    iget-object p1, p0, Lcom/narvii/achievements/AchievementsFragment$3;->this$0:Lcom/narvii/achievements/AchievementsFragment;

    .line 7
    invoke-static {p1}, Lcom/narvii/achievements/AchievementsFragment;->u(Lcom/narvii/achievements/AchievementsFragment;)Lcom/narvii/list/MergeAdapter;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/narvii/achievements/AchievementsFragment$3;->this$0:Lcom/narvii/achievements/AchievementsFragment;

    .line 8
    invoke-static {p1}, Lcom/narvii/achievements/AchievementsFragment;->u(Lcom/narvii/achievements/AchievementsFragment;)Lcom/narvii/list/MergeAdapter;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    :cond_0
    return-void
.end method
