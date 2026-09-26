.class public abstract Lcom/narvii/scene/view/BaseScenePreviewLayout;
.super Landroid/widget/FrameLayout;
.source "SourceFile"


# instance fields
.field private beforePlayListener:Lcom/narvii/scene/interfaces/IScenePlayer$BeforePlayingListener;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private onPlayListener:Lcom/narvii/scene/interfaces/IScenePlayer$OnPlayingListener;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 7
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x6

    const/4 v6, 0x0

    move-object v1, p0

    move-object v2, p1

    invoke-direct/range {v1 .. v6}, Lcom/narvii/scene/view/BaseScenePreviewLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;IILkotlin/jvm/internal/k;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 7
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 2
    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v4, 0x0

    const/4 v5, 0x4

    const/4 v6, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    invoke-direct/range {v1 .. v6}, Lcom/narvii/scene/view/BaseScenePreviewLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;IILkotlin/jvm/internal/k;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public synthetic constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;IILkotlin/jvm/internal/k;)V
    .locals 0

    and-int/lit8 p5, p4, 0x2

    if-eqz p5, :cond_0

    const/4 p2, 0x0

    :cond_0
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_1

    const/4 p3, 0x0

    .line 4
    :cond_1
    invoke-direct {p0, p1, p2, p3}, Lcom/narvii/scene/view/BaseScenePreviewLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method


# virtual methods
.method public getBeforePlayListener()Lcom/narvii/scene/interfaces/IScenePlayer$BeforePlayingListener;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/narvii/scene/view/BaseScenePreviewLayout;->beforePlayListener:Lcom/narvii/scene/interfaces/IScenePlayer$BeforePlayingListener;

    return-object v0
.end method

.method public getOnPlayListener()Lcom/narvii/scene/interfaces/IScenePlayer$OnPlayingListener;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/narvii/scene/view/BaseScenePreviewLayout;->onPlayListener:Lcom/narvii/scene/interfaces/IScenePlayer$OnPlayingListener;

    return-object v0
.end method

.method public abstract isPlaying()Z
.end method

.method public abstract pause()V
.end method

.method public abstract play()V
.end method

.method public abstract release()V
.end method

.method public abstract seekScene(Ljava/lang/String;)V
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
.end method

.method public setBeforePlayListener(Lcom/narvii/scene/interfaces/IScenePlayer$BeforePlayingListener;)V
    .locals 0
    .param p1    # Lcom/narvii/scene/interfaces/IScenePlayer$BeforePlayingListener;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/narvii/scene/view/BaseScenePreviewLayout;->beforePlayListener:Lcom/narvii/scene/interfaces/IScenePlayer$BeforePlayingListener;

    return-void
.end method

.method public setBeforePlayingListener(Lcom/narvii/scene/interfaces/IScenePlayer$BeforePlayingListener;)V
    .locals 1
    .param p1    # Lcom/narvii/scene/interfaces/IScenePlayer$BeforePlayingListener;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    .line 2
    const-string v0, "beforePlayingListener"

    .line 3
    .line 4
    .line 5
    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {p0}, Lcom/narvii/scene/view/BaseScenePreviewLayout;->getBeforePlayListener()Lcom/narvii/scene/interfaces/IScenePlayer$BeforePlayingListener;

    .line 9
    move-result-object p1

    .line 10
    .line 11
    .line 12
    invoke-virtual {p0, p1}, Lcom/narvii/scene/view/BaseScenePreviewLayout;->setBeforePlayListener(Lcom/narvii/scene/interfaces/IScenePlayer$BeforePlayingListener;)V

    .line 13
    return-void
.end method

.method public setOnPlayListener(Lcom/narvii/scene/interfaces/IScenePlayer$OnPlayingListener;)V
    .locals 0
    .param p1    # Lcom/narvii/scene/interfaces/IScenePlayer$OnPlayingListener;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/narvii/scene/view/BaseScenePreviewLayout;->onPlayListener:Lcom/narvii/scene/interfaces/IScenePlayer$OnPlayingListener;

    return-void
.end method

.method public setOnPlayingListener(Lcom/narvii/scene/interfaces/IScenePlayer$OnPlayingListener;)V
    .locals 1
    .param p1    # Lcom/narvii/scene/interfaces/IScenePlayer$OnPlayingListener;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    .line 2
    const-string v0, "onPlayingListener"

    .line 3
    .line 4
    .line 5
    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {p0, p1}, Lcom/narvii/scene/view/BaseScenePreviewLayout;->setOnPlayListener(Lcom/narvii/scene/interfaces/IScenePlayer$OnPlayingListener;)V

    .line 9
    return-void
.end method

.method public abstract toPause()V
.end method

.method public abstract toResume(Z)V
.end method
