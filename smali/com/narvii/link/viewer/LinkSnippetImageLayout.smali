.class public Lcom/narvii/link/viewer/LinkSnippetImageLayout;
.super Landroid/widget/FrameLayout;
.source "LinkSnippetImageLayout.java"

# interfaces
.implements Lcom/narvii/widget/NVImageView$OnImageChangedListener;


# instance fields
.field chatBubbleView:Lcom/narvii/chat/ChatBubbleView;

.field image:Lcom/narvii/link/viewer/LinkSnippetImageView;

.field placeholder:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 24
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method


# virtual methods
.method protected onFinishInflate()V
    .locals 1

    .line 29
    invoke-super {p0}, Landroid/widget/FrameLayout;->onFinishInflate()V

    const v0, 0x7f090571

    .line 30
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/narvii/link/viewer/LinkSnippetImageView;

    iput-object v0, p0, Lcom/narvii/link/viewer/LinkSnippetImageLayout;->image:Lcom/narvii/link/viewer/LinkSnippetImageView;

    .line 31
    iget-object v0, p0, Lcom/narvii/link/viewer/LinkSnippetImageLayout;->image:Lcom/narvii/link/viewer/LinkSnippetImageView;

    invoke-virtual {v0, p0}, Lcom/narvii/widget/NVImageView;->setOnImageChangedListener(Lcom/narvii/widget/NVImageView$OnImageChangedListener;)V

    const v0, 0x7f09083d

    .line 32
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/narvii/link/viewer/LinkSnippetImageLayout;->placeholder:Landroid/view/View;

    return-void
.end method

.method public onImageChanged(Lcom/narvii/widget/NVImageView;ILcom/narvii/model/Media;)V
    .locals 0

    .line 46
    iget-object p1, p0, Lcom/narvii/link/viewer/LinkSnippetImageLayout;->image:Lcom/narvii/link/viewer/LinkSnippetImageView;

    invoke-virtual {p1}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    if-nez p1, :cond_0

    .line 48
    iget-object p1, p0, Lcom/narvii/link/viewer/LinkSnippetImageLayout;->placeholder:Landroid/view/View;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    return-void

    .line 51
    :cond_0
    iget-object p1, p0, Lcom/narvii/link/viewer/LinkSnippetImageLayout;->placeholder:Landroid/view/View;

    const/16 p2, 0x8

    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method public setChatBubbleView(Lcom/narvii/chat/ChatBubbleView;)V
    .locals 1

    .line 36
    iput-object p1, p0, Lcom/narvii/link/viewer/LinkSnippetImageLayout;->chatBubbleView:Lcom/narvii/chat/ChatBubbleView;

    .line 37
    iget-object v0, p0, Lcom/narvii/link/viewer/LinkSnippetImageLayout;->image:Lcom/narvii/link/viewer/LinkSnippetImageView;

    invoke-virtual {v0, p1}, Lcom/narvii/link/viewer/LinkSnippetImageView;->setChatBubbleView(Lcom/narvii/chat/ChatBubbleView;)V

    return-void
.end method

.method public setImageMedia(Lcom/narvii/model/Media;Lcom/narvii/model/ChatMessage;)V
    .locals 1

    .line 41
    iget-object v0, p0, Lcom/narvii/link/viewer/LinkSnippetImageLayout;->image:Lcom/narvii/link/viewer/LinkSnippetImageView;

    invoke-virtual {v0, p1, p2}, Lcom/narvii/link/viewer/LinkSnippetImageView;->setImageMedia(Lcom/narvii/model/Media;Lcom/narvii/model/ChatMessage;)Z

    return-void
.end method
