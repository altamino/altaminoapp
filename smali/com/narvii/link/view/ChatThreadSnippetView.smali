.class public Lcom/narvii/link/view/ChatThreadSnippetView;
.super Lcom/narvii/link/view/NVLinkSnippetView;
.source "ChatThreadSnippetView.java"


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

    .line 19
    invoke-direct {p0, p1}, Lcom/narvii/link/view/NVLinkSnippetView;-><init>(Landroid/content/Context;)V

    .line 20
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object p1

    const v0, 0x7f0b043d

    invoke-static {p1, v0, p0}, Landroid/widget/FrameLayout;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    const p1, 0x7f090571

    .line 21
    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/narvii/widget/NVImageView;

    iput-object p1, p0, Lcom/narvii/link/view/ChatThreadSnippetView;->imageView:Lcom/narvii/widget/NVImageView;

    const p1, 0x7f090b9a

    .line 22
    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/narvii/link/view/ChatThreadSnippetView;->title:Landroid/widget/TextView;

    const p1, 0x7f0906dd

    .line 23
    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/narvii/link/view/ChatThreadSnippetView;->membersCount:Landroid/widget/TextView;

    const p1, 0x7f090425

    .line 24
    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/narvii/link/view/ChatThreadSnippetView;->fansOnlyIndicator:Landroid/view/View;

    return-void
.end method


# virtual methods
.method public setObject(Lcom/narvii/model/ChatThread;)V
    .locals 3

    .line 29
    iget-object v0, p0, Lcom/narvii/link/view/ChatThreadSnippetView;->imageView:Lcom/narvii/widget/NVImageView;

    iget-object v1, p1, Lcom/narvii/model/ChatThread;->icon:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/narvii/widget/NVImageView;->setImageUrl(Ljava/lang/String;)Z

    .line 30
    iget-object v0, p0, Lcom/narvii/link/view/ChatThreadSnippetView;->title:Landroid/widget/TextView;

    iget-object v1, p1, Lcom/narvii/model/ChatThread;->title:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 31
    iget-object v0, p0, Lcom/narvii/link/view/ChatThreadSnippetView;->membersCount:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget v2, p1, Lcom/narvii/model/ChatThread;->membersCount:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 32
    iget-object v0, p0, Lcom/narvii/link/view/LoadTrackView;->imageLoadTracker:Lcom/narvii/image/ImageLoadTracker;

    iget-object v1, p0, Lcom/narvii/link/view/ChatThreadSnippetView;->imageView:Lcom/narvii/widget/NVImageView;

    invoke-virtual {v0, v1}, Lcom/narvii/image/ImageLoadTracker;->addImageView(Lcom/narvii/widget/NVImageView;)V

    .line 33
    iget-object v0, p0, Lcom/narvii/link/view/ChatThreadSnippetView;->fansOnlyIndicator:Landroid/view/View;

    if-eqz v0, :cond_1

    .line 34
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

    .line 12
    check-cast p1, Lcom/narvii/model/ChatThread;

    invoke-virtual {p0, p1}, Lcom/narvii/link/view/ChatThreadSnippetView;->setObject(Lcom/narvii/model/ChatThread;)V

    return-void
.end method
