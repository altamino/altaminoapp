.class public final Lcom/narvii/nvplayer/debug/VideoResolutionFragment;
.super Lcom/narvii/list/NVListFragment;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/narvii/nvplayer/debug/VideoResolutionFragment$MyAdapter;
    }
.end annotation


# instance fields
.field private currentCond:I

.field private prefs:Landroid/content/SharedPreferences;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Lcom/narvii/list/NVListFragment;-><init>()V

    .line 4
    return-void
.end method


# virtual methods
.method protected createAdapter(Landroid/os/Bundle;)Landroid/widget/ListAdapter;
    .locals 3
    .param p1    # Landroid/os/Bundle;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    .line 2
    new-instance p1, Lcom/narvii/nvplayer/debug/VideoResolutionFragment$MyAdapter;

    .line 3
    .line 4
    const-string v0, "720P"

    .line 5
    .line 6
    const-string v1, "360P"

    .line 7
    .line 8
    const-string v2, "default"

    .line 9
    .line 10
    .line 11
    filled-new-array {v2, v0, v1}, [Ljava/lang/String;

    .line 12
    move-result-object v0

    .line 13
    .line 14
    .line 15
    invoke-static {v0}, Lkotlin/collections/t;->p([Ljava/lang/Object;)Ljava/util/List;

    .line 16
    move-result-object v0

    .line 17
    .line 18
    .line 19
    invoke-direct {p1, p0, p0, v0}, Lcom/narvii/nvplayer/debug/VideoResolutionFragment$MyAdapter;-><init>(Lcom/narvii/nvplayer/debug/VideoResolutionFragment;Lcom/narvii/app/NVContext;Ljava/util/List;)V

    .line 20
    return-object p1
.end method

.method public final getCurrentCond()I
    .locals 1

    iget v0, p0, Lcom/narvii/nvplayer/debug/VideoResolutionFragment;->currentCond:I

    return v0
.end method

.method public onAttach(Landroid/content/Context;)V
    .locals 2
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    .line 2
    const-string v0, "context"

    .line 3
    .line 4
    .line 5
    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-super {p0, p1}, Lcom/narvii/app/NVFragment;->onAttach(Landroid/content/Context;)V

    .line 9
    .line 10
    const-string p1, "prefs"

    .line 11
    .line 12
    .line 13
    invoke-virtual {p0, p1}, Lcom/narvii/app/NVFragment;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 14
    move-result-object v0

    .line 15
    .line 16
    const-string v1, "getService(...)"

    .line 17
    .line 18
    .line 19
    invoke-static {v0, v1}, Lkotlin/jvm/internal/t;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 20
    .line 21
    check-cast v0, Landroid/content/SharedPreferences;

    .line 22
    .line 23
    iput-object v0, p0, Lcom/narvii/nvplayer/debug/VideoResolutionFragment;->prefs:Landroid/content/SharedPreferences;

    .line 24
    .line 25
    if-nez v0, :cond_0

    .line 26
    .line 27
    .line 28
    invoke-static {p1}, Lkotlin/jvm/internal/t;->B(Ljava/lang/String;)V

    .line 29
    const/4 v0, 0x0

    .line 30
    .line 31
    :cond_0
    const-string p1, "video_res_prefs_key"

    .line 32
    const/4 v1, 0x0

    .line 33
    .line 34
    .line 35
    invoke-interface {v0, p1, v1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    .line 36
    move-result p1

    .line 37
    .line 38
    iput p1, p0, Lcom/narvii/nvplayer/debug/VideoResolutionFragment;->currentCond:I

    .line 39
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 0
    .param p1    # Landroid/os/Bundle;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    .line 2
    .line 3
    invoke-super {p0, p1}, Lcom/narvii/list/NVListFragment;->onCreate(Landroid/os/Bundle;)V

    .line 4
    .line 5
    const-string p1, "VideoRes"

    .line 6
    .line 7
    .line 8
    invoke-virtual {p0, p1}, Lcom/narvii/app/NVFragment;->setTitle(Ljava/lang/CharSequence;)V

    .line 9
    return-void
.end method

.method public final setCurrentCond(I)V
    .locals 0

    iput p1, p0, Lcom/narvii/nvplayer/debug/VideoResolutionFragment;->currentCond:I

    return-void
.end method
