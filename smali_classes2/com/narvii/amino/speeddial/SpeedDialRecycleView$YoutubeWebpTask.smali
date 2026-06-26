.class Lcom/narvii/amino/speeddial/SpeedDialRecycleView$YoutubeWebpTask;
.super Landroid/os/AsyncTask;
.source "SpeedDialRecycleView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/narvii/amino/speeddial/SpeedDialRecycleView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "YoutubeWebpTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/amino/speeddial/SpeedDialRecycleView;

.field yVid:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/narvii/amino/speeddial/SpeedDialRecycleView;Ljava/lang/String;)V
    .locals 0

    .line 323
    iput-object p1, p0, Lcom/narvii/amino/speeddial/SpeedDialRecycleView$YoutubeWebpTask;->this$0:Lcom/narvii/amino/speeddial/SpeedDialRecycleView;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 324
    iput-object p2, p0, Lcom/narvii/amino/speeddial/SpeedDialRecycleView$YoutubeWebpTask;->yVid:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 319
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/narvii/amino/speeddial/SpeedDialRecycleView$YoutubeWebpTask;->doInBackground([Ljava/lang/Void;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/String;
    .locals 2

    .line 331
    :try_start_0
    iget-object p1, p0, Lcom/narvii/amino/speeddial/SpeedDialRecycleView$YoutubeWebpTask;->yVid:Ljava/lang/String;

    invoke-static {p1}, Lcom/narvii/util/YoutubeUtils;->extractAnimatedWebpUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 333
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "unable to extract webp "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/narvii/amino/speeddial/SpeedDialRecycleView$YoutubeWebpTask;->yVid:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/narvii/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 p1, 0x0

    :goto_0
    return-object p1
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .line 319
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/narvii/amino/speeddial/SpeedDialRecycleView$YoutubeWebpTask;->onPostExecute(Ljava/lang/String;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/String;)V
    .locals 2

    .line 340
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    .line 341
    iget-object v0, p0, Lcom/narvii/amino/speeddial/SpeedDialRecycleView$YoutubeWebpTask;->this$0:Lcom/narvii/amino/speeddial/SpeedDialRecycleView;

    iget-object v0, v0, Lcom/narvii/amino/speeddial/SpeedDialRecycleView;->webpThumbUrl:Ljava/util/HashMap;

    iget-object v1, p0, Lcom/narvii/amino/speeddial/SpeedDialRecycleView$YoutubeWebpTask;->yVid:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 342
    iget-object v0, p0, Lcom/narvii/amino/speeddial/SpeedDialRecycleView$YoutubeWebpTask;->this$0:Lcom/narvii/amino/speeddial/SpeedDialRecycleView;

    iget-object v0, v0, Lcom/narvii/amino/speeddial/SpeedDialRecycleView;->webpTasks:Ljava/util/HashMap;

    iget-object v1, p0, Lcom/narvii/amino/speeddial/SpeedDialRecycleView$YoutubeWebpTask;->yVid:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 343
    iget-object v0, p0, Lcom/narvii/amino/speeddial/SpeedDialRecycleView$YoutubeWebpTask;->this$0:Lcom/narvii/amino/speeddial/SpeedDialRecycleView;

    iget-object v0, v0, Lcom/narvii/amino/speeddial/SpeedDialRecycleView;->webpThumbUrl:Ljava/util/HashMap;

    iget-object v1, p0, Lcom/narvii/amino/speeddial/SpeedDialRecycleView$YoutubeWebpTask;->yVid:Ljava/lang/String;

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 344
    iget-object p1, p0, Lcom/narvii/amino/speeddial/SpeedDialRecycleView$YoutubeWebpTask;->this$0:Lcom/narvii/amino/speeddial/SpeedDialRecycleView;

    invoke-static {p1}, Lcom/narvii/amino/speeddial/SpeedDialRecycleView;->access$200(Lcom/narvii/amino/speeddial/SpeedDialRecycleView;)Lcom/narvii/amino/speeddial/mode/SpeedDialResponse;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/narvii/amino/speeddial/SpeedDialRecycleView;->updateSpeedDial(Lcom/narvii/amino/speeddial/mode/SpeedDialResponse;)V

    :cond_0
    return-void
.end method
