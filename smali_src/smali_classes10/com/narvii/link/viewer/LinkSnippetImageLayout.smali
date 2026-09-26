.class public Lcom/narvii/link/viewer/LinkSnippetImageLayout;
.super Landroid/widget/FrameLayout;
.source "SourceFile"

# interfaces
.implements Lcom/narvii/widget/NVImageView$OnImageChangedListener;


# instance fields
.field chatBubbleView:Lcom/narvii/chat/ChatBubbleView;

.field image:Lcom/narvii/link/viewer/LinkSnippetImageView;

.field placeholder:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    .line 2
    .line 3
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 4
    return-void
.end method


# virtual methods
.method protected onFinishInflate()V
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-super {p0}, Landroid/widget/FrameLayout;->onFinishInflate()V

    .line 4
    .line 5
    .line 6
    const v0, 0x7f0a06eb

    .line 7
    .line 8
    .line 9
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 10
    move-result-object v0

    .line 11
    .line 12
    check-cast v0, Lcom/narvii/link/viewer/LinkSnippetImageView;

    .line 13
    .line 14
    iput-object v0, p0, Lcom/narvii/link/viewer/LinkSnippetImageLayout;->image:Lcom/narvii/link/viewer/LinkSnippetImageView;

    .line 15
    .line 16
    .line 17
    invoke-virtual {v0, p0}, Lcom/narvii/widget/NVImageView;->setOnImageChangedListener(Lcom/narvii/widget/NVImageView$OnImageChangedListener;)V

    .line 18
    .line 19
    .line 20
    const v0, 0x7f0a0af3

    .line 21
    .line 22
    .line 23
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 24
    move-result-object v0

    .line 25
    .line 26
    iput-object v0, p0, Lcom/narvii/link/viewer/LinkSnippetImageLayout;->placeholder:Landroid/view/View;

    .line 27
    return-void
.end method

.method public onImageChanged(Lcom/narvii/widget/NVImageView;ILcom/narvii/model/Media;)V
    .locals 0

    .line 1
    .line 2
    iget-object p1, p0, Lcom/narvii/link/viewer/LinkSnippetImageLayout;->image:Lcom/narvii/link/viewer/LinkSnippetImageView;

    .line 3
    .line 4
    .line 5
    invoke-virtual {p1}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    .line 6
    move-result-object p1

    .line 7
    .line 8
    if-nez p1, :cond_0

    .line 9
    .line 10
    iget-object p1, p0, Lcom/narvii/link/viewer/LinkSnippetImageLayout;->placeholder:Landroid/view/View;

    .line 11
    const/4 p2, 0x0

    .line 12
    .line 13
    .line 14
    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    .line 15
    return-void

    .line 16
    .line 17
    :cond_0
    iget-object p1, p0, Lcom/narvii/link/viewer/LinkSnippetImageLayout;->placeholder:Landroid/view/View;

    .line 18
    .line 19
    const/16 p2, 0x8

    .line 20
    .line 21
    .line 22
    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    .line 23
    return-void
.end method

.method public setChatBubbleView(Lcom/narvii/chat/ChatBubbleView;)V
    .locals 1

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/link/viewer/LinkSnippetImageLayout;->chatBubbleView:Lcom/narvii/chat/ChatBubbleView;

    .line 3
    .line 4
    iget-object v0, p0, Lcom/narvii/link/viewer/LinkSnippetImageLayout;->image:Lcom/narvii/link/viewer/LinkSnippetImageView;

    .line 5
    .line 6
    .line 7
    invoke-virtual {v0, p1}, Lcom/narvii/link/viewer/LinkSnippetImageView;->setChatBubbleView(Lcom/narvii/chat/ChatBubbleView;)V

    .line 8
    return-void
.end method

.method public setImageMedia(Lcom/narvii/model/Media;Lcom/narvii/model/ChatMessage;)V
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/link/viewer/LinkSnippetImageLayout;->image:Lcom/narvii/link/viewer/LinkSnippetImageView;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0, p1, p2}, Lcom/narvii/link/viewer/LinkSnippetImageView;->setImageMedia(Lcom/narvii/model/Media;Lcom/narvii/model/ChatMessage;)Z

    .line 6
    return-void
.end method
