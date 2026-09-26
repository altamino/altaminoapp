.class public Lcom/narvii/media/MediaPickCallbackManager;
.super Ljava/lang/Object;
.source "SourceFile"


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

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    new-instance v0, Ljava/util/HashMap;

    .line 6
    .line 7
    .line 8
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 9
    .line 10
    iput-object v0, p0, Lcom/narvii/media/MediaPickCallbackManager;->callbackArrayMap:Ljava/util/HashMap;

    .line 11
    return-void
.end method


# virtual methods
.method public getCallback(Ljava/lang/String;)Lcom/narvii/media/MediaPickCallback;
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/media/MediaPickCallbackManager;->callbackArrayMap:Ljava/util/HashMap;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    check-cast v0, Lcom/narvii/media/MediaPickCallback;

    .line 9
    .line 10
    if-nez v0, :cond_0

    .line 11
    .line 12
    new-instance v1, Ljava/lang/StringBuilder;

    .line 13
    .line 14
    .line 15
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 16
    .line 17
    .line 18
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 19
    .line 20
    const-string p1, " callback is missing"

    .line 21
    .line 22
    .line 23
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 24
    .line 25
    .line 26
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 27
    move-result-object p1

    .line 28
    .line 29
    .line 30
    invoke-static {p1}, Lcom/narvii/util/Log;->e(Ljava/lang/String;)V

    .line 31
    :cond_0
    return-object v0
.end method

.method public registerCallback(Ljava/lang/String;Lcom/narvii/media/MediaPickCallback;)V
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/media/MediaPickCallbackManager;->callbackArrayMap:Ljava/util/HashMap;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    return-void
.end method
