.class Lcom/narvii/leaderboard/LeaderBoardShareHelper$1;
.super Ljava/lang/Object;
.source "SourceFile"

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
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/leaderboard/LeaderBoardShareHelper$1;->this$0:Lcom/narvii/leaderboard/LeaderBoardShareHelper;

    .line 3
    .line 4
    iput-object p2, p0, Lcom/narvii/leaderboard/LeaderBoardShareHelper$1;->val$finalBmp:Landroid/graphics/Bitmap;

    .line 5
    .line 6
    iput-object p3, p0, Lcom/narvii/leaderboard/LeaderBoardShareHelper$1;->val$community:Lcom/narvii/model/Community;

    .line 7
    .line 8
    iput-object p4, p0, Lcom/narvii/leaderboard/LeaderBoardShareHelper$1;->val$saveCallBack:Lcom/narvii/leaderboard/LeaderBoardShareHelper$SaveCallBack;

    .line 9
    .line 10
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    return-void
.end method


# virtual methods
.method public onErrorResponse(Lcom/android/volley/VolleyError;)V
    .locals 0

    .line 1
    .line 2
    iget-object p1, p0, Lcom/narvii/leaderboard/LeaderBoardShareHelper$1;->val$saveCallBack:Lcom/narvii/leaderboard/LeaderBoardShareHelper$SaveCallBack;

    .line 3
    .line 4
    if-eqz p1, :cond_0

    .line 5
    .line 6
    .line 7
    invoke-interface {p1}, Lcom/narvii/leaderboard/LeaderBoardShareHelper$SaveCallBack;->onSaved()V

    .line 8
    :cond_0
    return-void
.end method

.method public onResponse(Lcom/android/volley/toolbox/ImageLoader$ImageContainer;Z)V
    .locals 3

    .line 1
    .line 2
    .line 3
    invoke-virtual {p1}, Lcom/android/volley/toolbox/ImageLoader$ImageContainer;->getBitmap()Landroid/graphics/Bitmap;

    .line 4
    move-result-object p2

    .line 5
    .line 6
    if-nez p2, :cond_0

    .line 7
    return-void

    .line 8
    .line 9
    :cond_0
    iget-object p2, p0, Lcom/narvii/leaderboard/LeaderBoardShareHelper$1;->this$0:Lcom/narvii/leaderboard/LeaderBoardShareHelper;

    .line 10
    .line 11
    iget-object v0, p0, Lcom/narvii/leaderboard/LeaderBoardShareHelper$1;->val$finalBmp:Landroid/graphics/Bitmap;

    .line 12
    .line 13
    .line 14
    invoke-virtual {p1}, Lcom/android/volley/toolbox/ImageLoader$ImageContainer;->getBitmap()Landroid/graphics/Bitmap;

    .line 15
    move-result-object p1

    .line 16
    .line 17
    iget-object v1, p0, Lcom/narvii/leaderboard/LeaderBoardShareHelper$1;->val$community:Lcom/narvii/model/Community;

    .line 18
    .line 19
    .line 20
    invoke-static {p2, v0, p1, v1}, Lcom/narvii/leaderboard/LeaderBoardShareHelper;->a(Lcom/narvii/leaderboard/LeaderBoardShareHelper;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;Lcom/narvii/model/Community;)Landroid/graphics/Bitmap;

    .line 21
    move-result-object p1

    .line 22
    .line 23
    .line 24
    invoke-static {}, Lcom/narvii/leaderboard/LeaderBoardShareHelper;->b()Lcom/narvii/util/statistics/TmpValue;

    .line 25
    move-result-object p2

    .line 26
    .line 27
    new-instance v0, Landroid/graphics/drawable/BitmapDrawable;

    .line 28
    .line 29
    .line 30
    invoke-direct {v0, p1}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    .line 31
    .line 32
    const-wide/16 v1, 0x3e8

    .line 33
    .line 34
    .line 35
    invoke-virtual {p2, v0, v1, v2}, Lcom/narvii/util/statistics/TmpValue;->set(Ljava/lang/Object;J)V

    .line 36
    .line 37
    iget-object p1, p0, Lcom/narvii/leaderboard/LeaderBoardShareHelper$1;->val$saveCallBack:Lcom/narvii/leaderboard/LeaderBoardShareHelper$SaveCallBack;

    .line 38
    .line 39
    if-eqz p1, :cond_1

    .line 40
    .line 41
    .line 42
    invoke-interface {p1}, Lcom/narvii/leaderboard/LeaderBoardShareHelper$SaveCallBack;->onSaved()V

    .line 43
    :cond_1
    return-void
.end method
