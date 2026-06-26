.class public Lcom/narvii/link/view/SharedPhotoSnippetView;
.super Lcom/narvii/link/view/NVLinkSnippetView;
.source "SharedPhotoSnippetView.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/narvii/link/view/NVLinkSnippetView<",
        "Lcom/narvii/model/SharedFile;",
        ">;"
    }
.end annotation


# instance fields
.field commentsCount:Landroid/widget/TextView;

.field imageView:Lcom/narvii/widget/NVImageView;

.field voteIcon:Lcom/narvii/widget/VoteIcon;

.field votesCount:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 22
    invoke-direct {p0, p1}, Lcom/narvii/link/view/NVLinkSnippetView;-><init>(Landroid/content/Context;)V

    const v0, 0x7f0b0444

    .line 23
    invoke-static {p1, v0, p0}, Landroid/widget/FrameLayout;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    const p1, 0x7f090571

    .line 24
    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/narvii/widget/NVImageView;

    iput-object p1, p0, Lcom/narvii/link/view/SharedPhotoSnippetView;->imageView:Lcom/narvii/widget/NVImageView;

    const p1, 0x7f090458

    .line 25
    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/narvii/link/view/SharedPhotoSnippetView;->votesCount:Landroid/widget/TextView;

    const p1, 0x7f090453

    .line 26
    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/narvii/link/view/SharedPhotoSnippetView;->commentsCount:Landroid/widget/TextView;

    const p1, 0x7f090459

    .line 27
    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/narvii/widget/VoteIcon;

    iput-object p1, p0, Lcom/narvii/link/view/SharedPhotoSnippetView;->voteIcon:Lcom/narvii/widget/VoteIcon;

    return-void
.end method


# virtual methods
.method public bridge synthetic setObject(Lcom/narvii/model/NVObject;)V
    .locals 0

    .line 13
    check-cast p1, Lcom/narvii/model/SharedFile;

    invoke-virtual {p0, p1}, Lcom/narvii/link/view/SharedPhotoSnippetView;->setObject(Lcom/narvii/model/SharedFile;)V

    return-void
.end method

.method public setObject(Lcom/narvii/model/SharedFile;)V
    .locals 3

    .line 32
    iget-object v0, p0, Lcom/narvii/link/view/SharedPhotoSnippetView;->voteIcon:Lcom/narvii/widget/VoteIcon;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/narvii/widget/VoteIcon;->setVotedValue(I)V

    .line 33
    iget-object v0, p0, Lcom/narvii/link/view/SharedPhotoSnippetView;->imageView:Lcom/narvii/widget/NVImageView;

    iget-object v2, p1, Lcom/narvii/model/SharedFile;->media:Lcom/narvii/model/Media;

    invoke-virtual {v0, v2}, Lcom/narvii/widget/NVImageView;->setImageMedia(Lcom/narvii/model/Media;)Z

    .line 34
    iget-object v0, p0, Lcom/narvii/link/view/SharedPhotoSnippetView;->imageView:Lcom/narvii/widget/NVImageView;

    iget-object v2, p1, Lcom/narvii/model/SharedFile;->media:Lcom/narvii/model/Media;

    if-eqz v2, :cond_0

    const/4 v1, 0x1

    :cond_0
    invoke-static {v0, v1}, Lcom/narvii/util/ViewUtils;->show(Landroid/view/View;Z)V

    .line 35
    iget-object v0, p0, Lcom/narvii/link/view/SharedPhotoSnippetView;->votesCount:Landroid/widget/TextView;

    iget v1, p1, Lcom/narvii/model/SharedFile;->votesCount:I

    if-nez v1, :cond_1

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f0f0ae0

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_1
    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    :goto_0
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 36
    iget-object v0, p0, Lcom/narvii/link/view/SharedPhotoSnippetView;->commentsCount:Landroid/widget/TextView;

    iget p1, p1, Lcom/narvii/model/SharedFile;->commentsCount:I

    if-nez p1, :cond_2

    const-string p1, ""

    goto :goto_1

    :cond_2
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    :goto_1
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 38
    iget-object p1, p0, Lcom/narvii/link/view/LoadTrackView;->imageLoadTracker:Lcom/narvii/image/ImageLoadTracker;

    iget-object v0, p0, Lcom/narvii/link/view/SharedPhotoSnippetView;->imageView:Lcom/narvii/widget/NVImageView;

    invoke-virtual {p1, v0}, Lcom/narvii/image/ImageLoadTracker;->addImageView(Lcom/narvii/widget/NVImageView;)V

    return-void
.end method
