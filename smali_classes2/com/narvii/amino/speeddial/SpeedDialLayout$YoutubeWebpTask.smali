.class Lcom/narvii/amino/speeddial/SpeedDialLayout$YoutubeWebpTask;
.super Landroid/os/AsyncTask;
.source "SpeedDialLayout.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/narvii/amino/speeddial/SpeedDialLayout;
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
.field final synthetic this$0:Lcom/narvii/amino/speeddial/SpeedDialLayout;

.field yVid:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/narvii/amino/speeddial/SpeedDialLayout;Ljava/lang/String;)V
    .locals 0

    .line 590
    iput-object p1, p0, Lcom/narvii/amino/speeddial/SpeedDialLayout$YoutubeWebpTask;->this$0:Lcom/narvii/amino/speeddial/SpeedDialLayout;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 591
    iput-object p2, p0, Lcom/narvii/amino/speeddial/SpeedDialLayout$YoutubeWebpTask;->yVid:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 586
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/narvii/amino/speeddial/SpeedDialLayout$YoutubeWebpTask;->doInBackground([Ljava/lang/Void;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/String;
    .locals 2

    .line 598
    :try_start_0
    iget-object p1, p0, Lcom/narvii/amino/speeddial/SpeedDialLayout$YoutubeWebpTask;->yVid:Ljava/lang/String;

    invoke-static {p1}, Lcom/narvii/util/YoutubeUtils;->extractAnimatedWebpUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 600
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "unable to extract webp "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/narvii/amino/speeddial/SpeedDialLayout$YoutubeWebpTask;->yVid:Ljava/lang/String;

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

    .line 586
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/narvii/amino/speeddial/SpeedDialLayout$YoutubeWebpTask;->onPostExecute(Ljava/lang/String;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/String;)V
    .locals 2

    .line 607
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    .line 608
    iget-object v0, p0, Lcom/narvii/amino/speeddial/SpeedDialLayout$YoutubeWebpTask;->this$0:Lcom/narvii/amino/speeddial/SpeedDialLayout;

    iget-object v0, v0, Lcom/narvii/amino/speeddial/SpeedDialLayout;->webpThumbUrl:Ljava/util/HashMap;

    iget-object v1, p0, Lcom/narvii/amino/speeddial/SpeedDialLayout$YoutubeWebpTask;->yVid:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 609
    iget-object v0, p0, Lcom/narvii/amino/speeddial/SpeedDialLayout$YoutubeWebpTask;->this$0:Lcom/narvii/amino/speeddial/SpeedDialLayout;

    iget-object v0, v0, Lcom/narvii/amino/speeddial/SpeedDialLayout;->webpTasks:Ljava/util/HashMap;

    iget-object v1, p0, Lcom/narvii/amino/speeddial/SpeedDialLayout$YoutubeWebpTask;->yVid:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 610
    iget-object v0, p0, Lcom/narvii/amino/speeddial/SpeedDialLayout$YoutubeWebpTask;->this$0:Lcom/narvii/amino/speeddial/SpeedDialLayout;

    iget-object v0, v0, Lcom/narvii/amino/speeddial/SpeedDialLayout;->webpThumbUrl:Ljava/util/HashMap;

    iget-object v1, p0, Lcom/narvii/amino/speeddial/SpeedDialLayout$YoutubeWebpTask;->yVid:Ljava/lang/String;

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 611
    iget-object p1, p0, Lcom/narvii/amino/speeddial/SpeedDialLayout$YoutubeWebpTask;->this$0:Lcom/narvii/amino/speeddial/SpeedDialLayout;

    invoke-static {p1}, Lcom/narvii/amino/speeddial/SpeedDialLayout;->access$100(Lcom/narvii/amino/speeddial/SpeedDialLayout;)Lcom/narvii/amino/speeddial/mode/SpeedDialResponse;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/narvii/amino/speeddial/SpeedDialLayout;->updateSpeedDial(Lcom/narvii/amino/speeddial/mode/SpeedDialResponse;)V

    :cond_0
    return-void
.end method
