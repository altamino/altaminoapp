.class public Lcom/narvii/link/view/SharedPhotoSnippetView;
.super Lcom/narvii/link/view/NVLinkSnippetView;
.source "SourceFile"


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
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    .line 2
    .line 3
    invoke-direct {p0, p1}, Lcom/narvii/link/view/NVLinkSnippetView;-><init>(Landroid/content/Context;)V

    .line 4
    .line 5
    .line 6
    const v0, 0x7f0d0479

    .line 7
    .line 8
    .line 9
    invoke-static {p1, v0, p0}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 10
    .line 11
    .line 12
    const p1, 0x7f0a06eb

    .line 13
    .line 14
    .line 15
    invoke-virtual {p0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 16
    move-result-object p1

    .line 17
    .line 18
    check-cast p1, Lcom/narvii/widget/NVImageView;

    .line 19
    .line 20
    iput-object p1, p0, Lcom/narvii/link/view/SharedPhotoSnippetView;->imageView:Lcom/narvii/widget/NVImageView;

    .line 21
    .line 22
    .line 23
    const p1, 0x7f0a058f

    .line 24
    .line 25
    .line 26
    invoke-virtual {p0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 27
    move-result-object p1

    .line 28
    .line 29
    check-cast p1, Landroid/widget/TextView;

    .line 30
    .line 31
    iput-object p1, p0, Lcom/narvii/link/view/SharedPhotoSnippetView;->votesCount:Landroid/widget/TextView;

    .line 32
    .line 33
    .line 34
    const p1, 0x7f0a058a

    .line 35
    .line 36
    .line 37
    invoke-virtual {p0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 38
    move-result-object p1

    .line 39
    .line 40
    check-cast p1, Landroid/widget/TextView;

    .line 41
    .line 42
    iput-object p1, p0, Lcom/narvii/link/view/SharedPhotoSnippetView;->commentsCount:Landroid/widget/TextView;

    .line 43
    .line 44
    .line 45
    const p1, 0x7f0a0590

    .line 46
    .line 47
    .line 48
    invoke-virtual {p0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 49
    move-result-object p1

    .line 50
    .line 51
    check-cast p1, Lcom/narvii/widget/VoteIcon;

    .line 52
    .line 53
    iput-object p1, p0, Lcom/narvii/link/view/SharedPhotoSnippetView;->voteIcon:Lcom/narvii/widget/VoteIcon;

    .line 54
    return-void
.end method


# virtual methods
.method public bridge synthetic setObject(Lcom/narvii/model/NVObject;)V
    .locals 0

    .line 1
    check-cast p1, Lcom/narvii/model/SharedFile;

    invoke-virtual {p0, p1}, Lcom/narvii/link/view/SharedPhotoSnippetView;->setObject(Lcom/narvii/model/SharedFile;)V

    return-void
.end method

.method public setObject(Lcom/narvii/model/SharedFile;)V
    .locals 3

    iget-object v0, p0, Lcom/narvii/link/view/SharedPhotoSnippetView;->voteIcon:Lcom/narvii/widget/VoteIcon;

    const/4 v1, 0x0

    .line 2
    invoke-virtual {v0, v1}, Lcom/narvii/widget/VoteIcon;->setVotedValue(I)V

    iget-object v0, p0, Lcom/narvii/link/view/SharedPhotoSnippetView;->imageView:Lcom/narvii/widget/NVImageView;

    .line 3
    iget-object v2, p1, Lcom/narvii/model/SharedFile;->media:Lcom/narvii/model/Media;

    invoke-virtual {v0, v2}, Lcom/narvii/widget/NVImageView;->setImageMedia(Lcom/narvii/model/Media;)Z

    iget-object v0, p0, Lcom/narvii/link/view/SharedPhotoSnippetView;->imageView:Lcom/narvii/widget/NVImageView;

    .line 4
    iget-object v2, p1, Lcom/narvii/model/SharedFile;->media:Lcom/narvii/model/Media;

    if-eqz v2, :cond_0

    const/4 v1, 0x1

    :cond_0
    invoke-static {v0, v1}, Lcom/narvii/util/ViewUtils;->show(Landroid/view/View;Z)V

    iget-object v0, p0, Lcom/narvii/link/view/SharedPhotoSnippetView;->votesCount:Landroid/widget/TextView;

    .line 5
    iget v1, p1, Lcom/narvii/model/SharedFile;->votesCount:I

    if-nez v1, :cond_1

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f120b8c

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_1
    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    :goto_0
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/narvii/link/view/SharedPhotoSnippetView;->commentsCount:Landroid/widget/TextView;

    .line 6
    iget p1, p1, Lcom/narvii/model/SharedFile;->commentsCount:I

    if-nez p1, :cond_2

    const-string p1, ""

    goto :goto_1

    :cond_2
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    :goto_1
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p1, p0, Lcom/narvii/link/view/LoadTrackView;->imageLoadTracker:Lcom/narvii/image/ImageLoadTracker;

    iget-object v0, p0, Lcom/narvii/link/view/SharedPhotoSnippetView;->imageView:Lcom/narvii/widget/NVImageView;

    .line 7
    invoke-virtual {p1, v0}, Lcom/narvii/image/ImageLoadTracker;->addImageView(Lcom/narvii/widget/NVImageView;)V

    return-void
.end method
