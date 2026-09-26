.class public Lcom/narvii/sharedfolder/SharedAlbumTagView;
.super Landroid/widget/TextView;
.source "SourceFile"


# instance fields
.field sharedAlbum:Lcom/narvii/model/SharedAlbum;

.field sharedPhotoColorHelper:Lcom/narvii/sharedfolder/SharedPhotoColorHelper;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    .line 2
    .line 3
    invoke-direct {p0, p1, p2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 4
    const/4 p1, 0x1

    .line 5
    .line 6
    .line 7
    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setSingleLine(Z)V

    .line 8
    .line 9
    new-instance p1, Lcom/narvii/sharedfolder/SharedPhotoColorHelper;

    .line 10
    .line 11
    .line 12
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 13
    move-result-object p2

    .line 14
    .line 15
    .line 16
    invoke-direct {p1, p2}, Lcom/narvii/sharedfolder/SharedPhotoColorHelper;-><init>(Landroid/content/Context;)V

    .line 17
    .line 18
    iput-object p1, p0, Lcom/narvii/sharedfolder/SharedAlbumTagView;->sharedPhotoColorHelper:Lcom/narvii/sharedfolder/SharedPhotoColorHelper;

    .line 19
    .line 20
    new-instance p1, Lcom/narvii/sharedfolder/SharedAlbumTagView$1;

    .line 21
    .line 22
    .line 23
    invoke-direct {p1, p0}, Lcom/narvii/sharedfolder/SharedAlbumTagView$1;-><init>(Lcom/narvii/sharedfolder/SharedAlbumTagView;)V

    .line 24
    .line 25
    .line 26
    invoke-virtual {p0, p1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 27
    return-void
.end method


# virtual methods
.method public setAlbum(Lcom/narvii/model/SharedAlbum;)V
    .locals 2

    .line 1
    .line 2
    if-nez p1, :cond_0

    .line 3
    return-void

    .line 4
    .line 5
    :cond_0
    iput-object p1, p0, Lcom/narvii/sharedfolder/SharedAlbumTagView;->sharedAlbum:Lcom/narvii/model/SharedAlbum;

    .line 6
    .line 7
    .line 8
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 9
    move-result-object v0

    .line 10
    .line 11
    .line 12
    invoke-virtual {p1, v0}, Lcom/narvii/model/SharedAlbum;->getTitle(Landroid/content/Context;)Ljava/lang/String;

    .line 13
    move-result-object v0

    .line 14
    .line 15
    .line 16
    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 17
    .line 18
    iget-object v0, p0, Lcom/narvii/sharedfolder/SharedAlbumTagView;->sharedPhotoColorHelper:Lcom/narvii/sharedfolder/SharedPhotoColorHelper;

    .line 19
    .line 20
    .line 21
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 22
    move-result-object v1

    .line 23
    .line 24
    .line 25
    invoke-virtual {v0, v1, p1}, Lcom/narvii/sharedfolder/SharedPhotoColorHelper;->getTagBackground(Landroid/content/Context;Lcom/narvii/model/SharedAlbum;)Landroid/graphics/drawable/Drawable;

    .line 26
    move-result-object p1

    .line 27
    .line 28
    .line 29
    invoke-virtual {p0, p1}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 30
    return-void
.end method
