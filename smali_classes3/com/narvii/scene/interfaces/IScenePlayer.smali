.class public interface abstract Lcom/narvii/scene/interfaces/IScenePlayer;
.super Ljava/lang/Object;
.source "IScenePlayer.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/narvii/scene/interfaces/IScenePlayer$OnPlayingListener;,
        Lcom/narvii/scene/interfaces/IScenePlayer$BeforePlayingListener;,
        Lcom/narvii/scene/interfaces/IScenePlayer$Companion;
    }
.end annotation


# static fields
.field public static final Companion:Lcom/narvii/scene/interfaces/IScenePlayer$Companion;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-object v0, Lcom/narvii/scene/interfaces/IScenePlayer$Companion;->$$INSTANCE:Lcom/narvii/scene/interfaces/IScenePlayer$Companion;

    sput-object v0, Lcom/narvii/scene/interfaces/IScenePlayer;->Companion:Lcom/narvii/scene/interfaces/IScenePlayer$Companion;

    return-void
.end method


# virtual methods
.method public abstract fadeBackgroundMusic(ZZ)V
.end method

.method public abstract getCurrentPosition()J
.end method

.method public abstract getCurrentSceneId()Ljava/lang/String;
.end method

.method public abstract getCurrentSceneIndex()I
.end method

.method public abstract getCurrentSceneIndexIgnoreEmpty()I
.end method

.method public abstract getPreviewView()Landroid/view/View;
.end method

.method public abstract getSceneCount()I
.end method

.method public abstract getSceneCountIgnoreEmpty()I
.end method

.method public abstract getTotalDuration()J
.end method

.method public abstract isPlaying()Z
.end method

.method public abstract mute()V
.end method

.method public abstract pause()V
.end method

.method public abstract play()V
.end method

.method public abstract playLastScene()Ljava/lang/String;
.end method

.method public abstract playNextScene()Ljava/lang/String;
.end method

.method public abstract release()V
.end method

.method public varargs abstract release([Ljava/lang/Object;)V
.end method

.method public abstract restoreStatus()V
.end method

.method public abstract seek(IJZ)V
.end method

.method public abstract seek(JZ)V
.end method

.method public abstract seekScene(Ljava/lang/String;Z)V
.end method

.method public abstract setBackgroundMusic(Landroid/content/Context;Lcom/narvii/video/model/AVClipInfoPack;)V
.end method

.method public abstract setLoop(Z)V
.end method

.method public abstract setOnPlayingListener(Lcom/narvii/scene/interfaces/IScenePlayer$OnPlayingListener;)V
.end method

.method public abstract setPreciseControl(Z)V
.end method

.method public abstract setScenes(Landroid/content/Context;Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Lcom/narvii/scene/model/SceneInfo;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract setStopLocation(I)V
.end method

.method public abstract setVolume(FF)V
.end method

.method public abstract setVolumePercent(F)V
.end method

.method public abstract unMute()V
.end method
