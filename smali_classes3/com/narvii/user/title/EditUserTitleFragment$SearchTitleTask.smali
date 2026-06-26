.class public Lcom/narvii/user/title/EditUserTitleFragment$SearchTitleTask;
.super Landroid/os/AsyncTask;
.source "EditUserTitleFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/narvii/user/title/EditUserTitleFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "SearchTitleTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/util/List<",
        "Lcom/narvii/model/api/UserTitle;",
        ">;>;"
    }
.end annotation


# instance fields
.field allTagList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/narvii/model/api/UserTitle;",
            ">;"
        }
    .end annotation
.end field

.field keyword:Ljava/lang/String;

.field final synthetic this$0:Lcom/narvii/user/title/EditUserTitleFragment;


# direct methods
.method public constructor <init>(Lcom/narvii/user/title/EditUserTitleFragment;Ljava/util/List;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/narvii/model/api/UserTitle;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 579
    iput-object p1, p0, Lcom/narvii/user/title/EditUserTitleFragment$SearchTitleTask;->this$0:Lcom/narvii/user/title/EditUserTitleFragment;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 580
    iput-object p2, p0, Lcom/narvii/user/title/EditUserTitleFragment$SearchTitleTask;->allTagList:Ljava/util/List;

    .line 581
    iput-object p3, p0, Lcom/narvii/user/title/EditUserTitleFragment$SearchTitleTask;->keyword:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 574
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/narvii/user/title/EditUserTitleFragment$SearchTitleTask;->doInBackground([Ljava/lang/Void;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/Void;",
            ")",
            "Ljava/util/List<",
            "Lcom/narvii/model/api/UserTitle;",
            ">;"
        }
    .end annotation

    .line 586
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 587
    iget-object v0, p0, Lcom/narvii/user/title/EditUserTitleFragment$SearchTitleTask;->allTagList:Ljava/util/List;

    if-eqz v0, :cond_2

    .line 588
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 589
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/narvii/model/api/UserTitle;

    .line 590
    invoke-virtual {p0}, Landroid/os/AsyncTask;->isCancelled()Z

    move-result v2

    if-eqz v2, :cond_1

    const-string v0, "search community task is cancelled"

    .line 591
    invoke-static {v0}, Lcom/narvii/util/Log;->d(Ljava/lang/String;)V

    goto :goto_1

    :cond_1
    if-eqz v1, :cond_0

    .line 594
    iget-object v2, v1, Lcom/narvii/model/api/UserTitle;->title:Ljava/lang/String;

    if-eqz v2, :cond_0

    sget-object v3, Ljava/util/Locale;->US:Ljava/util/Locale;

    .line 595
    invoke-virtual {v2, v3}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/narvii/user/title/EditUserTitleFragment$SearchTitleTask;->keyword:Ljava/lang/String;

    sget-object v4, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v3, v4}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 596
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    :goto_1
    return-object p1
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .line 574
    check-cast p1, Ljava/util/List;

    invoke-virtual {p0, p1}, Lcom/narvii/user/title/EditUserTitleFragment$SearchTitleTask;->onPostExecute(Ljava/util/List;)V

    return-void
.end method

.method protected onPostExecute(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/narvii/model/api/UserTitle;",
            ">;)V"
        }
    .end annotation

    .line 605
    iget-object v0, p0, Lcom/narvii/user/title/EditUserTitleFragment$SearchTitleTask;->this$0:Lcom/narvii/user/title/EditUserTitleFragment;

    iget-object v0, v0, Lcom/narvii/user/title/EditUserTitleFragment;->searchKeyword:Ljava/lang/String;

    iget-object v1, p0, Lcom/narvii/user/title/EditUserTitleFragment$SearchTitleTask;->keyword:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/narvii/util/Utils;->isStringEquals(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 606
    iget-object v0, p0, Lcom/narvii/user/title/EditUserTitleFragment$SearchTitleTask;->this$0:Lcom/narvii/user/title/EditUserTitleFragment;

    invoke-static {v0, p1}, Lcom/narvii/user/title/EditUserTitleFragment;->access$400(Lcom/narvii/user/title/EditUserTitleFragment;Ljava/util/List;)V

    :cond_0
    return-void
.end method
