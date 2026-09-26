.class public abstract Lcom/narvii/post/BackgroundPostActivity;
.super Lcom/narvii/post/DraftPostActivity;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lcom/narvii/feed/BackgroundPost;",
        ">",
        "Lcom/narvii/post/DraftPostActivity<",
        "TT;>;"
    }
.end annotation


# instance fields
.field protected backgroundPickerView:Lcom/narvii/widget/BackgroundPickerView;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Lcom/narvii/post/DraftPostActivity;-><init>()V

    .line 4
    return-void
.end method


# virtual methods
.method protected getBackgroundMediaPickerFlag()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public onPickColorResult(ILandroid/os/Bundle;)V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-super {p0, p1, p2}, Lcom/narvii/post/BasePostActivity;->onPickColorResult(ILandroid/os/Bundle;)V

    .line 4
    .line 5
    iget-object p2, p0, Lcom/narvii/post/DraftPostActivity;->post:Lcom/narvii/post/PostObject;

    .line 6
    .line 7
    check-cast p2, Lcom/narvii/feed/BackgroundPost;

    .line 8
    .line 9
    .line 10
    invoke-virtual {p2, p1}, Lcom/narvii/feed/BackgroundPost;->setBackgroundColor(I)V

    .line 11
    .line 12
    iget-object p1, p0, Lcom/narvii/post/DraftPostActivity;->post:Lcom/narvii/post/PostObject;

    .line 13
    .line 14
    check-cast p1, Lcom/narvii/feed/BackgroundPost;

    .line 15
    const/4 p2, 0x0

    .line 16
    .line 17
    .line 18
    invoke-virtual {p1, p2}, Lcom/narvii/feed/BackgroundPost;->setBackgroundMediaList(Ljava/util/List;)V

    .line 19
    .line 20
    iget-object p1, p0, Lcom/narvii/post/DraftPostActivity;->post:Lcom/narvii/post/PostObject;

    .line 21
    .line 22
    check-cast p1, Lcom/narvii/feed/BackgroundPost;

    .line 23
    .line 24
    .line 25
    invoke-virtual {p0, p1}, Lcom/narvii/post/BackgroundPostActivity;->updateView(Lcom/narvii/feed/BackgroundPost;)V

    .line 26
    return-void
.end method

.method public onPickMediaResult(Ljava/util/List;Landroid/os/Bundle;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/narvii/model/Media;",
            ">;",
            "Landroid/os/Bundle;",
            ")V"
        }
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-super {p0, p1, p2}, Lcom/narvii/post/BasePostActivity;->onPickMediaResult(Ljava/util/List;Landroid/os/Bundle;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Lcom/narvii/post/BasePostActivity;->savePost()Lcom/narvii/post/PostObject;

    .line 7
    move-result-object v0

    .line 8
    .line 9
    check-cast v0, Lcom/narvii/feed/BackgroundPost;

    .line 10
    .line 11
    if-nez p2, :cond_0

    .line 12
    return-void

    .line 13
    .line 14
    :cond_0
    const-string v1, "type"

    .line 15
    .line 16
    .line 17
    invoke-virtual {p2, v1}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    .line 18
    move-result v1

    .line 19
    .line 20
    const/16 v2, 0x2710

    .line 21
    .line 22
    if-eq v1, v2, :cond_1

    .line 23
    .line 24
    .line 25
    invoke-virtual {p0, p1, p2}, Lcom/narvii/post/BackgroundPostActivity;->onPickOtherMediaResult(Ljava/util/List;Landroid/os/Bundle;)V

    .line 26
    goto :goto_0

    .line 27
    .line 28
    .line 29
    :cond_1
    invoke-virtual {v0, p1}, Lcom/narvii/feed/BackgroundPost;->setBackgroundMediaList(Ljava/util/List;)V

    .line 30
    const/4 p1, 0x0

    .line 31
    .line 32
    .line 33
    invoke-virtual {v0, p1}, Lcom/narvii/feed/BackgroundPost;->setBackgroundColor(I)V

    .line 34
    .line 35
    :goto_0
    iput-object v0, p0, Lcom/narvii/post/DraftPostActivity;->post:Lcom/narvii/post/PostObject;

    .line 36
    .line 37
    .line 38
    invoke-virtual {p0, v0}, Lcom/narvii/post/BackgroundPostActivity;->updateView(Lcom/narvii/feed/BackgroundPost;)V

    .line 39
    return-void
.end method

.method protected abstract onPickOtherMediaResult(Ljava/util/List;Landroid/os/Bundle;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/narvii/model/Media;",
            ">;",
            "Landroid/os/Bundle;",
            ")V"
        }
    .end annotation
.end method

.method protected onPostCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 1
    .line 2
    .line 3
    const v0, 0x7f0a019b

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    .line 7
    move-result-object v0

    .line 8
    .line 9
    check-cast v0, Lcom/narvii/widget/BackgroundPickerView;

    .line 10
    .line 11
    iput-object v0, p0, Lcom/narvii/post/BackgroundPostActivity;->backgroundPickerView:Lcom/narvii/widget/BackgroundPickerView;

    .line 12
    .line 13
    .line 14
    invoke-super {p0, p1}, Lcom/narvii/post/DraftPostActivity;->onPostCreate(Landroid/os/Bundle;)V

    .line 15
    return-void
.end method

.method protected updateView(Lcom/narvii/feed/BackgroundPost;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    if-nez p1, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-super {p0, p1}, Lcom/narvii/post/DraftPostActivity;->updateView(Lcom/narvii/post/PostObject;)V

    iget-object v0, p0, Lcom/narvii/post/BackgroundPostActivity;->backgroundPickerView:Lcom/narvii/widget/BackgroundPickerView;

    if-eqz v0, :cond_2

    .line 3
    invoke-virtual {v0, p1}, Lcom/narvii/widget/BackgroundPickerView;->setBackgroundPost(Lcom/narvii/image/BackgroundSource;)V

    iget-object p1, p0, Lcom/narvii/post/BackgroundPostActivity;->backgroundPickerView:Lcom/narvii/widget/BackgroundPickerView;

    iget-object v0, p0, Lcom/narvii/post/BasePostActivity;->mediaPickerFragment:Lcom/narvii/media/MediaPickerFragment;

    iget-object v1, p0, Lcom/narvii/post/DraftPostActivity;->draftId:Ljava/lang/String;

    if-nez v1, :cond_1

    const/4 v1, 0x0

    goto :goto_0

    :cond_1
    iget-object v2, p0, Lcom/narvii/post/DraftPostActivity;->draftManager:Lcom/narvii/post/DraftManager;

    .line 4
    invoke-virtual {v2, v1}, Lcom/narvii/post/DraftManager;->getDir(Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    :goto_0
    invoke-virtual {p0}, Lcom/narvii/post/BackgroundPostActivity;->getBackgroundMediaPickerFlag()I

    move-result v2

    .line 5
    invoke-virtual {p1, v0, v1, v2}, Lcom/narvii/widget/BackgroundPickerView;->setMediaPicker(Lcom/narvii/media/MediaPickerFragment;Ljava/io/File;I)V

    :cond_2
    return-void
.end method

.method protected bridge synthetic updateView(Lcom/narvii/post/PostObject;)V
    .locals 0

    .line 1
    check-cast p1, Lcom/narvii/feed/BackgroundPost;

    invoke-virtual {p0, p1}, Lcom/narvii/post/BackgroundPostActivity;->updateView(Lcom/narvii/feed/BackgroundPost;)V

    return-void
.end method
