.class public final Lcom/narvii/story/StoryPostServiceProvider;
.super Ljava/lang/Object;
.source "StoryPostServiceProvider.kt"

# interfaces
.implements Lcom/narvii/services/AutostartServiceProvider;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/narvii/story/StoryPostServiceProvider$Service;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/narvii/services/AutostartServiceProvider<",
        "Lcom/narvii/scene/StoryPostService;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public create(Lcom/narvii/app/NVContext;)Lcom/narvii/scene/StoryPostService;
    .locals 1

    const-string v0, "ctx"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 29
    new-instance v0, Lcom/narvii/story/StoryPostServiceProvider$Service;

    invoke-direct {v0, p1}, Lcom/narvii/story/StoryPostServiceProvider$Service;-><init>(Lcom/narvii/app/NVContext;)V

    return-object v0
.end method

.method public bridge synthetic create(Lcom/narvii/app/NVContext;)Ljava/lang/Object;
    .locals 0

    .line 26
    invoke-virtual {p0, p1}, Lcom/narvii/story/StoryPostServiceProvider;->create(Lcom/narvii/app/NVContext;)Lcom/narvii/scene/StoryPostService;

    move-result-object p1

    return-object p1
.end method

.method public destroy(Lcom/narvii/app/NVContext;Lcom/narvii/scene/StoryPostService;)V
    .locals 0

    return-void
.end method

.method public bridge synthetic destroy(Lcom/narvii/app/NVContext;Ljava/lang/Object;)V
    .locals 0

    .line 26
    check-cast p2, Lcom/narvii/scene/StoryPostService;

    invoke-virtual {p0, p1, p2}, Lcom/narvii/story/StoryPostServiceProvider;->destroy(Lcom/narvii/app/NVContext;Lcom/narvii/scene/StoryPostService;)V

    return-void
.end method

.method public pause(Lcom/narvii/app/NVContext;Lcom/narvii/scene/StoryPostService;)V
    .locals 0

    return-void
.end method

.method public bridge synthetic pause(Lcom/narvii/app/NVContext;Ljava/lang/Object;)V
    .locals 0

    .line 26
    check-cast p2, Lcom/narvii/scene/StoryPostService;

    invoke-virtual {p0, p1, p2}, Lcom/narvii/story/StoryPostServiceProvider;->pause(Lcom/narvii/app/NVContext;Lcom/narvii/scene/StoryPostService;)V

    return-void
.end method

.method public resume(Lcom/narvii/app/NVContext;Lcom/narvii/scene/StoryPostService;)V
    .locals 0

    return-void
.end method

.method public bridge synthetic resume(Lcom/narvii/app/NVContext;Ljava/lang/Object;)V
    .locals 0

    .line 26
    check-cast p2, Lcom/narvii/scene/StoryPostService;

    invoke-virtual {p0, p1, p2}, Lcom/narvii/story/StoryPostServiceProvider;->resume(Lcom/narvii/app/NVContext;Lcom/narvii/scene/StoryPostService;)V

    return-void
.end method

.method public start(Lcom/narvii/app/NVContext;Lcom/narvii/scene/StoryPostService;)V
    .locals 0

    return-void
.end method

.method public bridge synthetic start(Lcom/narvii/app/NVContext;Ljava/lang/Object;)V
    .locals 0

    .line 26
    check-cast p2, Lcom/narvii/scene/StoryPostService;

    invoke-virtual {p0, p1, p2}, Lcom/narvii/story/StoryPostServiceProvider;->start(Lcom/narvii/app/NVContext;Lcom/narvii/scene/StoryPostService;)V

    return-void
.end method

.method public stop(Lcom/narvii/app/NVContext;Lcom/narvii/scene/StoryPostService;)V
    .locals 0

    return-void
.end method

.method public bridge synthetic stop(Lcom/narvii/app/NVContext;Ljava/lang/Object;)V
    .locals 0

    .line 26
    check-cast p2, Lcom/narvii/scene/StoryPostService;

    invoke-virtual {p0, p1, p2}, Lcom/narvii/story/StoryPostServiceProvider;->stop(Lcom/narvii/app/NVContext;Lcom/narvii/scene/StoryPostService;)V

    return-void
.end method
