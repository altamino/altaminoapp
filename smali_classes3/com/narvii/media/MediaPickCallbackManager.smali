.class public Lcom/narvii/media/MediaPickCallbackManager;
.super Ljava/lang/Object;
.source "MediaPickCallbackManager.java"


# static fields
.field public static final GLOBAL_MEDIA_PICK:Ljava/lang/String; = "global_media_pick"

.field public static final SHARED_PHOTO_PICK:Ljava/lang/String; = "shared_photo_pick"

.field public static final SHARED_PHOTO_PICK_FROM_POST:Ljava/lang/String; = "shared_photo_pick_from_post"

.field public static final SHARED_SCENE_MEDIA_PICK:Ljava/lang/String; = "shared_scene_media_pick"


# instance fields
.field public callbackArrayMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/narvii/media/MediaPickCallback;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/narvii/media/MediaPickCallbackManager;->callbackArrayMap:Ljava/util/HashMap;

    return-void
.end method


# virtual methods
.method public getCallback(Ljava/lang/String;)Lcom/narvii/media/MediaPickCallback;
    .locals 2

    .line 27
    iget-object v0, p0, Lcom/narvii/media/MediaPickCallbackManager;->callbackArrayMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/narvii/media/MediaPickCallback;

    if-nez v0, :cond_0

    .line 29
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " callback is missing"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/narvii/util/Log;->e(Ljava/lang/String;)V

    :cond_0
    return-object v0
.end method

.method public registerCallback(Ljava/lang/String;Lcom/narvii/media/MediaPickCallback;)V
    .locals 1

    .line 22
    iget-object v0, p0, Lcom/narvii/media/MediaPickCallbackManager;->callbackArrayMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
