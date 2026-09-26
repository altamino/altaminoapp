.class public Lcom/narvii/link/view/ChatThreadSnippetView;
.super Lcom/narvii/link/view/NVLinkSnippetView;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/narvii/link/view/NVLinkSnippetView<",
        "Lcom/narvii/model/ChatThread;",
        ">;"
    }
.end annotation


# instance fields
.field fansOnlyIndicator:Landroid/view/View;

.field imageView:Lcom/narvii/widget/NVImageView;

.field membersCount:Landroid/widget/TextView;

.field title:Landroid/widget/TextView;


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
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 7
    move-result-object p1

    .line 8
    .line 9
    .line 10
    const v0, 0x7f0d0472

    .line 11
    .line 12
    .line 13
    invoke-static {p1, v0, p0}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 14
    .line 15
    .line 16
    const p1, 0x7f0a06eb

    .line 17
    .line 18
    .line 19
    invoke-virtual {p0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 20
    move-result-object p1

    .line 21
    .line 22
    check-cast p1, Lcom/narvii/widget/NVImageView;

    .line 23
    .line 24
    iput-object p1, p0, Lcom/narvii/link/view/ChatThreadSnippetView;->imageView:Lcom/narvii/widget/NVImageView;

    .line 25
    .line 26
    .line 27
    const p1, 0x7f0a0e9e

    .line 28
    .line 29
    .line 30
    invoke-virtual {p0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 31
    move-result-object p1

    .line 32
    .line 33
    check-cast p1, Landroid/widget/TextView;

    .line 34
    .line 35
    iput-object p1, p0, Lcom/narvii/link/view/ChatThreadSnippetView;->title:Landroid/widget/TextView;

    .line 36
    .line 37
    .line 38
    const p1, 0x7f0a093e

    .line 39
    .line 40
    .line 41
    invoke-virtual {p0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 42
    move-result-object p1

    .line 43
    .line 44
    check-cast p1, Landroid/widget/TextView;

    .line 45
    .line 46
    iput-object p1, p0, Lcom/narvii/link/view/ChatThreadSnippetView;->membersCount:Landroid/widget/TextView;

    .line 47
    .line 48
    .line 49
    const p1, 0x7f0a055e

    .line 50
    .line 51
    .line 52
    invoke-virtual {p0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 53
    move-result-object p1

    .line 54
    .line 55
    iput-object p1, p0, Lcom/narvii/link/view/ChatThreadSnippetView;->fansOnlyIndicator:Landroid/view/View;

    .line 56
    return-void
.end method


# virtual methods
.method public setObject(Lcom/narvii/model/ChatThread;)V
    .locals 3

    iget-object v0, p0, Lcom/narvii/link/view/ChatThreadSnippetView;->imageView:Lcom/narvii/widget/NVImageView;

    .line 2
    iget-object v1, p1, Lcom/narvii/model/ChatThread;->icon:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/narvii/widget/NVImageView;->setImageUrl(Ljava/lang/String;)Z

    iget-object v0, p0, Lcom/narvii/link/view/ChatThreadSnippetView;->title:Landroid/widget/TextView;

    .line 3
    iget-object v1, p1, Lcom/narvii/model/ChatThread;->title:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/narvii/link/view/ChatThreadSnippetView;->membersCount:Landroid/widget/TextView;

    .line 4
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget v2, p1, Lcom/narvii/model/ChatThread;->membersCount:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/narvii/link/view/LoadTrackView;->imageLoadTracker:Lcom/narvii/image/ImageLoadTracker;

    iget-object v1, p0, Lcom/narvii/link/view/ChatThreadSnippetView;->imageView:Lcom/narvii/widget/NVImageView;

    .line 5
    invoke-virtual {v0, v1}, Lcom/narvii/image/ImageLoadTracker;->addImageView(Lcom/narvii/widget/NVImageView;)V

    iget-object v0, p0, Lcom/narvii/link/view/ChatThreadSnippetView;->fansOnlyIndicator:Landroid/view/View;

    if-eqz v0, :cond_1

    .line 6
    invoke-virtual {p1}, Lcom/narvii/model/ChatThread;->isFansOnly()Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    const/16 p1, 0x8

    :goto_0
    invoke-virtual {v0, p1}, Landroid/view/View;->setVisibility(I)V

    :cond_1
    return-void
.end method

.method public bridge synthetic setObject(Lcom/narvii/model/NVObject;)V
    .locals 0

    .line 1
    check-cast p1, Lcom/narvii/model/ChatThread;

    invoke-virtual {p0, p1}, Lcom/narvii/link/view/ChatThreadSnippetView;->setObject(Lcom/narvii/model/ChatThread;)V

    return-void
.end method
