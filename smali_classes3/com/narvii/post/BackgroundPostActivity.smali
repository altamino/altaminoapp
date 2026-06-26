.class public abstract Lcom/narvii/post/BackgroundPostActivity;
.super Lcom/narvii/post/DraftPostActivity;
.source "BackgroundPostActivity.java"


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

    .line 16
    invoke-direct {p0}, Lcom/narvii/post/DraftPostActivity;-><init>()V

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

    .line 23
    invoke-super {p0, p1, p2}, Lcom/narvii/post/BasePostActivity;->onPickColorResult(ILandroid/os/Bundle;)V

    .line 24
    iget-object p2, p0, Lcom/narvii/post/DraftPostActivity;->post:Lcom/narvii/post/PostObject;

    check-cast p2, Lcom/narvii/feed/BackgroundPost;

    invoke-virtual {p2, p1}, Lcom/narvii/feed/BackgroundPost;->setBackgroundColor(I)V

    .line 25
    iget-object p1, p0, Lcom/narvii/post/DraftPostActivity;->post:Lcom/narvii/post/PostObject;

    check-cast p1, Lcom/narvii/feed/BackgroundPost;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Lcom/narvii/feed/BackgroundPost;->setBackgroundMediaList(Ljava/util/List;)V

    .line 26
    iget-object p1, p0, Lcom/narvii/post/DraftPostActivity;->post:Lcom/narvii/post/PostObject;

    check-cast p1, Lcom/narvii/feed/BackgroundPost;

    invoke-virtual {p0, p1}, Lcom/narvii/post/BackgroundPostActivity;->updateView(Lcom/narvii/feed/BackgroundPost;)V

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

    .line 54
    invoke-super {p0, p1, p2}, Lcom/narvii/post/BasePostActivity;->onPickMediaResult(Ljava/util/List;Landroid/os/Bundle;)V

    .line 55
    invoke-virtual {p0}, Lcom/narvii/post/BasePostActivity;->savePost()Lcom/narvii/post/PostObject;

    move-result-object v0

    check-cast v0, Lcom/narvii/feed/BackgroundPost;

    if-nez p2, :cond_0

    return-void

    :cond_0
    const-string v1, "type"

    .line 59
    invoke-virtual {p2, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    const/16 v2, 0x2710

    if-eq v1, v2, :cond_1

    .line 66
    invoke-virtual {p0, p1, p2}, Lcom/narvii/post/BackgroundPostActivity;->onPickOtherMediaResult(Ljava/util/List;Landroid/os/Bundle;)V

    goto :goto_0

    .line 62
    :cond_1
    invoke-virtual {v0, p1}, Lcom/narvii/feed/BackgroundPost;->setBackgroundMediaList(Ljava/util/List;)V

    const/4 p1, 0x0

    .line 63
    invoke-virtual {v0, p1}, Lcom/narvii/feed/BackgroundPost;->setBackgroundColor(I)V

    .line 69
    :goto_0
    iput-object v0, p0, Lcom/narvii/post/DraftPostActivity;->post:Lcom/narvii/post/PostObject;

    .line 70
    iget-object p1, p0, Lcom/narvii/post/DraftPostActivity;->post:Lcom/narvii/post/PostObject;

    check-cast p1, Lcom/narvii/feed/BackgroundPost;

    invoke-virtual {p0, p1}, Lcom/narvii/post/BackgroundPostActivity;->updateView(Lcom/narvii/feed/BackgroundPost;)V

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

    const v0, 0x7f090109

    .line 31
    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/narvii/widget/BackgroundPickerView;

    iput-object v0, p0, Lcom/narvii/post/BackgroundPostActivity;->backgroundPickerView:Lcom/narvii/widget/BackgroundPickerView;

    .line 32
    invoke-super {p0, p1}, Lcom/narvii/post/DraftPostActivity;->onPostCreate(Landroid/os/Bundle;)V

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

    .line 40
    :cond_0
    invoke-super {p0, p1}, Lcom/narvii/post/DraftPostActivity;->updateView(Lcom/narvii/post/PostObject;)V

    .line 41
    iget-object v0, p0, Lcom/narvii/post/BackgroundPostActivity;->backgroundPickerView:Lcom/narvii/widget/BackgroundPickerView;

    if-eqz v0, :cond_2

    .line 42
    invoke-virtual {v0, p1}, Lcom/narvii/widget/BackgroundPickerView;->setBackgroundPost(Lcom/narvii/image/BackgroundSource;)V

    .line 43
    iget-object p1, p0, Lcom/narvii/post/BackgroundPostActivity;->backgroundPickerView:Lcom/narvii/widget/BackgroundPickerView;

    iget-object v0, p0, Lcom/narvii/post/BasePostActivity;->mediaPickerFragment:Lcom/narvii/media/MediaPickerFragment;

    iget-object v1, p0, Lcom/narvii/post/DraftPostActivity;->draftId:Ljava/lang/String;

    if-nez v1, :cond_1

    const/4 v1, 0x0

    goto :goto_0

    :cond_1
    iget-object v2, p0, Lcom/narvii/post/DraftPostActivity;->draftManager:Lcom/narvii/post/DraftManager;

    .line 44
    invoke-virtual {v2, v1}, Lcom/narvii/post/DraftManager;->getDir(Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    :goto_0
    invoke-virtual {p0}, Lcom/narvii/post/BackgroundPostActivity;->getBackgroundMediaPickerFlag()I

    move-result v2

    .line 43
    invoke-virtual {p1, v0, v1, v2}, Lcom/narvii/widget/BackgroundPickerView;->setMediaPicker(Lcom/narvii/media/MediaPickerFragment;Ljava/io/File;I)V

    :cond_2
    return-void
.end method

.method protected bridge synthetic updateView(Lcom/narvii/post/PostObject;)V
    .locals 0

    .line 16
    check-cast p1, Lcom/narvii/feed/BackgroundPost;

    invoke-virtual {p0, p1}, Lcom/narvii/post/BackgroundPostActivity;->updateView(Lcom/narvii/feed/BackgroundPost;)V

    return-void
.end method
