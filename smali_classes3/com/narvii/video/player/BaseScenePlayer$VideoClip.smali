.class public final Lcom/narvii/video/player/BaseScenePlayer$VideoClip;
.super Ljava/lang/Object;
.source "BaseScenePlayer.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/narvii/video/player/BaseScenePlayer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "VideoClip"
.end annotation


# instance fields
.field private clip:Lcom/narvii/video/model/AVClipInfoPack;

.field private sceneId:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 200
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/narvii/video/model/AVClipInfoPack;)V
    .locals 1

    const-string v0, "sceneId"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "clip"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 202
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/narvii/video/player/BaseScenePlayer$VideoClip;->sceneId:Ljava/lang/String;

    .line 203
    iput-object p2, p0, Lcom/narvii/video/player/BaseScenePlayer$VideoClip;->clip:Lcom/narvii/video/model/AVClipInfoPack;

    return-void
.end method


# virtual methods
.method public final getClip()Lcom/narvii/video/model/AVClipInfoPack;
    .locals 1

    .line 198
    iget-object v0, p0, Lcom/narvii/video/player/BaseScenePlayer$VideoClip;->clip:Lcom/narvii/video/model/AVClipInfoPack;

    return-object v0
.end method

.method public final getSceneId()Ljava/lang/String;
    .locals 1

    .line 197
    iget-object v0, p0, Lcom/narvii/video/player/BaseScenePlayer$VideoClip;->sceneId:Ljava/lang/String;

    return-object v0
.end method

.method public final setClip(Lcom/narvii/video/model/AVClipInfoPack;)V
    .locals 0

    .line 198
    iput-object p1, p0, Lcom/narvii/video/player/BaseScenePlayer$VideoClip;->clip:Lcom/narvii/video/model/AVClipInfoPack;

    return-void
.end method

.method public final setSceneId(Ljava/lang/String;)V
    .locals 0

    .line 197
    iput-object p1, p0, Lcom/narvii/video/player/BaseScenePlayer$VideoClip;->sceneId:Ljava/lang/String;

    return-void
.end method
