.class public abstract Lcom/narvii/scene/view/BaseScenePreviewLayout;
.super Landroid/widget/FrameLayout;
.source "BaseScenePreviewLayout.kt"


# instance fields
.field private _$_findViewCache:Ljava/util/HashMap;

.field private beforePlayListener:Lcom/narvii/scene/interfaces/IScenePlayer$BeforePlayingListener;

.field private onPlayListener:Lcom/narvii/scene/interfaces/IScenePlayer$OnPlayingListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 6

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x6

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Lcom/narvii/scene/view/BaseScenePreviewLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;IILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 6

    const/4 v3, 0x0

    const/4 v4, 0x4

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    invoke-direct/range {v0 .. v5}, Lcom/narvii/scene/view/BaseScenePreviewLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;IILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 8
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public synthetic constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;IILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p5, p4, 0x2

    if-eqz p5, :cond_0

    const/4 p2, 0x0

    :cond_0
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_1

    const/4 p3, 0x0

    .line 8
    :cond_1
    invoke-direct {p0, p1, p2, p3}, Lcom/narvii/scene/view/BaseScenePreviewLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method


# virtual methods
.method public _$_clearFindViewByIdCache()V
    .locals 1

    iget-object v0, p0, Lcom/narvii/scene/view/BaseScenePreviewLayout;->_$_findViewCache:Ljava/util/HashMap;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    :cond_0
    return-void
.end method

.method public _$_findCachedViewById(I)Landroid/view/View;
    .locals 2

    iget-object v0, p0, Lcom/narvii/scene/view/BaseScenePreviewLayout;->_$_findViewCache:Ljava/util/HashMap;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/narvii/scene/view/BaseScenePreviewLayout;->_$_findViewCache:Ljava/util/HashMap;

    :cond_0
    iget-object v0, p0, Lcom/narvii/scene/view/BaseScenePreviewLayout;->_$_findViewCache:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    if-nez v0, :cond_1

    invoke-virtual {p0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/narvii/scene/view/BaseScenePreviewLayout;->_$_findViewCache:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    return-object v0
.end method

.method public getBeforePlayListener()Lcom/narvii/scene/interfaces/IScenePlayer$BeforePlayingListener;
    .locals 1

    .line 11
    iget-object v0, p0, Lcom/narvii/scene/view/BaseScenePreviewLayout;->beforePlayListener:Lcom/narvii/scene/interfaces/IScenePlayer$BeforePlayingListener;

    return-object v0
.end method

.method public getOnPlayListener()Lcom/narvii/scene/interfaces/IScenePlayer$OnPlayingListener;
    .locals 1

    .line 10
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
.end method

.method public setBeforePlayListener(Lcom/narvii/scene/interfaces/IScenePlayer$BeforePlayingListener;)V
    .locals 0

    .line 11
    iput-object p1, p0, Lcom/narvii/scene/view/BaseScenePreviewLayout;->beforePlayListener:Lcom/narvii/scene/interfaces/IScenePlayer$BeforePlayingListener;

    return-void
.end method

.method public setBeforePlayingListener(Lcom/narvii/scene/interfaces/IScenePlayer$BeforePlayingListener;)V
    .locals 1

    const-string v0, "beforePlayingListener"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 29
    invoke-virtual {p0}, Lcom/narvii/scene/view/BaseScenePreviewLayout;->getBeforePlayListener()Lcom/narvii/scene/interfaces/IScenePlayer$BeforePlayingListener;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/narvii/scene/view/BaseScenePreviewLayout;->setBeforePlayListener(Lcom/narvii/scene/interfaces/IScenePlayer$BeforePlayingListener;)V

    return-void
.end method

.method public setOnPlayListener(Lcom/narvii/scene/interfaces/IScenePlayer$OnPlayingListener;)V
    .locals 0

    .line 10
    iput-object p1, p0, Lcom/narvii/scene/view/BaseScenePreviewLayout;->onPlayListener:Lcom/narvii/scene/interfaces/IScenePlayer$OnPlayingListener;

    return-void
.end method

.method public setOnPlayingListener(Lcom/narvii/scene/interfaces/IScenePlayer$OnPlayingListener;)V
    .locals 1

    const-string v0, "onPlayingListener"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 25
    invoke-virtual {p0, p1}, Lcom/narvii/scene/view/BaseScenePreviewLayout;->setOnPlayListener(Lcom/narvii/scene/interfaces/IScenePlayer$OnPlayingListener;)V

    return-void
.end method

.method public abstract toPause()V
.end method

.method public abstract toResume(Z)V
.end method
