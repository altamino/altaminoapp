.class public Lcom/narvii/services/incubator/IncubatorDraftManagerProvider;
.super Ljava/lang/Object;
.source "IncubatorDraftManagerProvider.java"

# interfaces
.implements Lcom/narvii/services/ServiceProvider;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/narvii/services/ServiceProvider<",
        "Lcom/narvii/post/DraftManager;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public create(Lcom/narvii/app/NVContext;)Lcom/narvii/post/DraftManager;
    .locals 6

    .line 17
    instance-of v0, p1, Lcom/narvii/services/incubator/CommunityContext;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Lcom/narvii/services/incubator/CommunityContext;

    iget v0, v0, Lcom/narvii/services/incubator/CommunityContext;->cid:I

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 18
    :goto_0
    new-instance v2, Lcom/narvii/post/DraftManager;

    invoke-direct {v2, p1, v0}, Lcom/narvii/post/DraftManager;-><init>(Lcom/narvii/app/NVContext;I)V

    if-eqz v0, :cond_1

    .line 20
    invoke-interface {p1}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    move-result-object p1

    .line 21
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "post_"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, "_blog"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v3

    const-string v5, "blog"

    invoke-static {v3, v5, v2}, Lcom/narvii/services/DraftManagerProvider;->convertOldDrafts(Landroid/content/SharedPreferences;Ljava/lang/String;Lcom/narvii/post/DraftManager;)V

    .line 22
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, "_item"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v3

    const-string v5, "item"

    invoke-static {v3, v5, v2}, Lcom/narvii/services/DraftManagerProvider;->convertOldDrafts(Landroid/content/SharedPreferences;Ljava/lang/String;Lcom/narvii/post/DraftManager;)V

    .line 23
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "_topic"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p1

    const-string/jumbo v0, "topic"

    invoke-static {p1, v0, v2}, Lcom/narvii/services/DraftManagerProvider;->convertOldDrafts(Landroid/content/SharedPreferences;Ljava/lang/String;Lcom/narvii/post/DraftManager;)V

    :cond_1
    return-object v2
.end method

.method public bridge synthetic create(Lcom/narvii/app/NVContext;)Ljava/lang/Object;
    .locals 0

    .line 14
    invoke-virtual {p0, p1}, Lcom/narvii/services/incubator/IncubatorDraftManagerProvider;->create(Lcom/narvii/app/NVContext;)Lcom/narvii/post/DraftManager;

    move-result-object p1

    return-object p1
.end method

.method public destroy(Lcom/narvii/app/NVContext;Lcom/narvii/post/DraftManager;)V
    .locals 0

    return-void
.end method

.method public bridge synthetic destroy(Lcom/narvii/app/NVContext;Ljava/lang/Object;)V
    .locals 0

    .line 14
    check-cast p2, Lcom/narvii/post/DraftManager;

    invoke-virtual {p0, p1, p2}, Lcom/narvii/services/incubator/IncubatorDraftManagerProvider;->destroy(Lcom/narvii/app/NVContext;Lcom/narvii/post/DraftManager;)V

    return-void
.end method

.method public pause(Lcom/narvii/app/NVContext;Lcom/narvii/post/DraftManager;)V
    .locals 0

    return-void
.end method

.method public bridge synthetic pause(Lcom/narvii/app/NVContext;Ljava/lang/Object;)V
    .locals 0

    .line 14
    check-cast p2, Lcom/narvii/post/DraftManager;

    invoke-virtual {p0, p1, p2}, Lcom/narvii/services/incubator/IncubatorDraftManagerProvider;->pause(Lcom/narvii/app/NVContext;Lcom/narvii/post/DraftManager;)V

    return-void
.end method

.method public resume(Lcom/narvii/app/NVContext;Lcom/narvii/post/DraftManager;)V
    .locals 0

    return-void
.end method

.method public bridge synthetic resume(Lcom/narvii/app/NVContext;Ljava/lang/Object;)V
    .locals 0

    .line 14
    check-cast p2, Lcom/narvii/post/DraftManager;

    invoke-virtual {p0, p1, p2}, Lcom/narvii/services/incubator/IncubatorDraftManagerProvider;->resume(Lcom/narvii/app/NVContext;Lcom/narvii/post/DraftManager;)V

    return-void
.end method

.method public start(Lcom/narvii/app/NVContext;Lcom/narvii/post/DraftManager;)V
    .locals 0

    return-void
.end method

.method public bridge synthetic start(Lcom/narvii/app/NVContext;Ljava/lang/Object;)V
    .locals 0

    .line 14
    check-cast p2, Lcom/narvii/post/DraftManager;

    invoke-virtual {p0, p1, p2}, Lcom/narvii/services/incubator/IncubatorDraftManagerProvider;->start(Lcom/narvii/app/NVContext;Lcom/narvii/post/DraftManager;)V

    return-void
.end method

.method public stop(Lcom/narvii/app/NVContext;Lcom/narvii/post/DraftManager;)V
    .locals 0

    return-void
.end method

.method public bridge synthetic stop(Lcom/narvii/app/NVContext;Ljava/lang/Object;)V
    .locals 0

    .line 14
    check-cast p2, Lcom/narvii/post/DraftManager;

    invoke-virtual {p0, p1, p2}, Lcom/narvii/services/incubator/IncubatorDraftManagerProvider;->stop(Lcom/narvii/app/NVContext;Lcom/narvii/post/DraftManager;)V

    return-void
.end method
