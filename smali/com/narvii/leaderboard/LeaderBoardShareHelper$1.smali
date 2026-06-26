.class Lcom/narvii/leaderboard/LeaderBoardShareHelper$1;
.super Ljava/lang/Object;
.source "LeaderBoardShareHelper.java"

# interfaces
.implements Lcom/android/volley/toolbox/ImageLoader$ImageListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/leaderboard/LeaderBoardShareHelper;->saveLeaderBoardBackGround(Landroid/app/Activity;ILcom/narvii/model/Community;Lcom/narvii/leaderboard/LeaderBoardShareHelper$SaveCallBack;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/leaderboard/LeaderBoardShareHelper;

.field final synthetic val$community:Lcom/narvii/model/Community;

.field final synthetic val$finalBmp:Landroid/graphics/Bitmap;

.field final synthetic val$saveCallBack:Lcom/narvii/leaderboard/LeaderBoardShareHelper$SaveCallBack;


# direct methods
.method constructor <init>(Lcom/narvii/leaderboard/LeaderBoardShareHelper;Landroid/graphics/Bitmap;Lcom/narvii/model/Community;Lcom/narvii/leaderboard/LeaderBoardShareHelper$SaveCallBack;)V
    .locals 0

    .line 68
    iput-object p1, p0, Lcom/narvii/leaderboard/LeaderBoardShareHelper$1;->this$0:Lcom/narvii/leaderboard/LeaderBoardShareHelper;

    iput-object p2, p0, Lcom/narvii/leaderboard/LeaderBoardShareHelper$1;->val$finalBmp:Landroid/graphics/Bitmap;

    iput-object p3, p0, Lcom/narvii/leaderboard/LeaderBoardShareHelper$1;->val$community:Lcom/narvii/model/Community;

    iput-object p4, p0, Lcom/narvii/leaderboard/LeaderBoardShareHelper$1;->val$saveCallBack:Lcom/narvii/leaderboard/LeaderBoardShareHelper$SaveCallBack;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onErrorResponse(Lcom/android/volley/VolleyError;)V
    .locals 0

    .line 85
    iget-object p1, p0, Lcom/narvii/leaderboard/LeaderBoardShareHelper$1;->val$saveCallBack:Lcom/narvii/leaderboard/LeaderBoardShareHelper$SaveCallBack;

    if-eqz p1, :cond_0

    .line 86
    invoke-interface {p1}, Lcom/narvii/leaderboard/LeaderBoardShareHelper$SaveCallBack;->onSaved()V

    :cond_0
    return-void
.end method

.method public onResponse(Lcom/android/volley/toolbox/ImageLoader$ImageContainer;Z)V
    .locals 3

    .line 71
    invoke-virtual {p1}, Lcom/android/volley/toolbox/ImageLoader$ImageContainer;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object p2

    if-nez p2, :cond_0

    return-void

    .line 75
    :cond_0
    iget-object p2, p0, Lcom/narvii/leaderboard/LeaderBoardShareHelper$1;->this$0:Lcom/narvii/leaderboard/LeaderBoardShareHelper;

    iget-object v0, p0, Lcom/narvii/leaderboard/LeaderBoardShareHelper$1;->val$finalBmp:Landroid/graphics/Bitmap;

    invoke-virtual {p1}, Lcom/android/volley/toolbox/ImageLoader$ImageContainer;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object p1

    iget-object v1, p0, Lcom/narvii/leaderboard/LeaderBoardShareHelper$1;->val$community:Lcom/narvii/model/Community;

    invoke-static {p2, v0, p1, v1}, Lcom/narvii/leaderboard/LeaderBoardShareHelper;->access$000(Lcom/narvii/leaderboard/LeaderBoardShareHelper;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;Lcom/narvii/model/Community;)Landroid/graphics/Bitmap;

    move-result-object p1

    .line 76
    invoke-static {}, Lcom/narvii/leaderboard/LeaderBoardShareHelper;->access$100()Lcom/narvii/util/statistics/TmpValue;

    move-result-object p2

    new-instance v0, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v0, p1}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    const-wide/16 v1, 0x3e8

    invoke-virtual {p2, v0, v1, v2}, Lcom/narvii/util/statistics/TmpValue;->set(Ljava/lang/Object;J)V

    .line 78
    iget-object p1, p0, Lcom/narvii/leaderboard/LeaderBoardShareHelper$1;->val$saveCallBack:Lcom/narvii/leaderboard/LeaderBoardShareHelper$SaveCallBack;

    if-eqz p1, :cond_1

    .line 79
    invoke-interface {p1}, Lcom/narvii/leaderboard/LeaderBoardShareHelper$SaveCallBack;->onSaved()V

    :cond_1
    return-void
.end method
