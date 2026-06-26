.class public Lcom/narvii/services/MediaPickCallbackServiceProvider;
.super Ljava/lang/Object;
.source "MediaPickCallbackServiceProvider.java"

# interfaces
.implements Lcom/narvii/services/ServiceProvider;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/narvii/services/ServiceProvider<",
        "Lcom/narvii/media/MediaPickCallbackManager;",
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
.method public create(Lcom/narvii/app/NVContext;)Lcom/narvii/media/MediaPickCallbackManager;
    .locals 2

    .line 17
    new-instance p1, Lcom/narvii/media/MediaPickCallbackManager;

    invoke-direct {p1}, Lcom/narvii/media/MediaPickCallbackManager;-><init>()V

    .line 18
    new-instance v0, Lcom/narvii/sharedfolder/SharedPhotoPickCallback;

    invoke-direct {v0}, Lcom/narvii/sharedfolder/SharedPhotoPickCallback;-><init>()V

    const-string/jumbo v1, "shared_photo_pick"

    invoke-virtual {p1, v1, v0}, Lcom/narvii/media/MediaPickCallbackManager;->registerCallback(Ljava/lang/String;Lcom/narvii/media/MediaPickCallback;)V

    .line 19
    new-instance v0, Lcom/narvii/sharedfolder/SharedPhotoFromPostCallback;

    invoke-direct {v0}, Lcom/narvii/sharedfolder/SharedPhotoFromPostCallback;-><init>()V

    const-string/jumbo v1, "shared_photo_pick_from_post"

    invoke-virtual {p1, v1, v0}, Lcom/narvii/media/MediaPickCallbackManager;->registerCallback(Ljava/lang/String;Lcom/narvii/media/MediaPickCallback;)V

    .line 20
    new-instance v0, Lcom/narvii/scene/callback/SceneMediaPickerCallback;

    invoke-direct {v0}, Lcom/narvii/scene/callback/SceneMediaPickerCallback;-><init>()V

    const-string/jumbo v1, "shared_scene_media_pick"

    invoke-virtual {p1, v1, v0}, Lcom/narvii/media/MediaPickCallbackManager;->registerCallback(Ljava/lang/String;Lcom/narvii/media/MediaPickCallback;)V

    .line 21
    new-instance v0, Lcom/narvii/master/home/profile/GlobalProfileMediaPickCallback;

    invoke-direct {v0}, Lcom/narvii/master/home/profile/GlobalProfileMediaPickCallback;-><init>()V

    const-string v1, "global_media_pick"

    invoke-virtual {p1, v1, v0}, Lcom/narvii/media/MediaPickCallbackManager;->registerCallback(Ljava/lang/String;Lcom/narvii/media/MediaPickCallback;)V

    return-object p1
.end method

.method public bridge synthetic create(Lcom/narvii/app/NVContext;)Ljava/lang/Object;
    .locals 0

    .line 14
    invoke-virtual {p0, p1}, Lcom/narvii/services/MediaPickCallbackServiceProvider;->create(Lcom/narvii/app/NVContext;)Lcom/narvii/media/MediaPickCallbackManager;

    move-result-object p1

    return-object p1
.end method

.method public destroy(Lcom/narvii/app/NVContext;Lcom/narvii/media/MediaPickCallbackManager;)V
    .locals 0

    return-void
.end method

.method public bridge synthetic destroy(Lcom/narvii/app/NVContext;Ljava/lang/Object;)V
    .locals 0

    .line 14
    check-cast p2, Lcom/narvii/media/MediaPickCallbackManager;

    invoke-virtual {p0, p1, p2}, Lcom/narvii/services/MediaPickCallbackServiceProvider;->destroy(Lcom/narvii/app/NVContext;Lcom/narvii/media/MediaPickCallbackManager;)V

    return-void
.end method

.method public pause(Lcom/narvii/app/NVContext;Lcom/narvii/media/MediaPickCallbackManager;)V
    .locals 0

    return-void
.end method

.method public bridge synthetic pause(Lcom/narvii/app/NVContext;Ljava/lang/Object;)V
    .locals 0

    .line 14
    check-cast p2, Lcom/narvii/media/MediaPickCallbackManager;

    invoke-virtual {p0, p1, p2}, Lcom/narvii/services/MediaPickCallbackServiceProvider;->pause(Lcom/narvii/app/NVContext;Lcom/narvii/media/MediaPickCallbackManager;)V

    return-void
.end method

.method public resume(Lcom/narvii/app/NVContext;Lcom/narvii/media/MediaPickCallbackManager;)V
    .locals 0

    return-void
.end method

.method public bridge synthetic resume(Lcom/narvii/app/NVContext;Ljava/lang/Object;)V
    .locals 0

    .line 14
    check-cast p2, Lcom/narvii/media/MediaPickCallbackManager;

    invoke-virtual {p0, p1, p2}, Lcom/narvii/services/MediaPickCallbackServiceProvider;->resume(Lcom/narvii/app/NVContext;Lcom/narvii/media/MediaPickCallbackManager;)V

    return-void
.end method

.method public start(Lcom/narvii/app/NVContext;Lcom/narvii/media/MediaPickCallbackManager;)V
    .locals 0

    return-void
.end method

.method public bridge synthetic start(Lcom/narvii/app/NVContext;Ljava/lang/Object;)V
    .locals 0

    .line 14
    check-cast p2, Lcom/narvii/media/MediaPickCallbackManager;

    invoke-virtual {p0, p1, p2}, Lcom/narvii/services/MediaPickCallbackServiceProvider;->start(Lcom/narvii/app/NVContext;Lcom/narvii/media/MediaPickCallbackManager;)V

    return-void
.end method

.method public stop(Lcom/narvii/app/NVContext;Lcom/narvii/media/MediaPickCallbackManager;)V
    .locals 0

    return-void
.end method

.method public bridge synthetic stop(Lcom/narvii/app/NVContext;Ljava/lang/Object;)V
    .locals 0

    .line 14
    check-cast p2, Lcom/narvii/media/MediaPickCallbackManager;

    invoke-virtual {p0, p1, p2}, Lcom/narvii/services/MediaPickCallbackServiceProvider;->stop(Lcom/narvii/app/NVContext;Lcom/narvii/media/MediaPickCallbackManager;)V

    return-void
.end method
