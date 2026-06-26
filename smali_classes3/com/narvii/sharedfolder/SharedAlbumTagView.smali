.class public Lcom/narvii/sharedfolder/SharedAlbumTagView;
.super Landroid/widget/TextView;
.source "SharedAlbumTagView.java"


# instance fields
.field sharedAlbum:Lcom/narvii/model/SharedAlbum;

.field sharedPhotoColorHelper:Lcom/narvii/sharedfolder/SharedPhotoColorHelper;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 25
    invoke-direct {p0, p1, p2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, 0x1

    .line 26
    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setSingleLine(Z)V

    .line 27
    new-instance p1, Lcom/narvii/sharedfolder/SharedPhotoColorHelper;

    invoke-virtual {p0}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-direct {p1, p2}, Lcom/narvii/sharedfolder/SharedPhotoColorHelper;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/narvii/sharedfolder/SharedAlbumTagView;->sharedPhotoColorHelper:Lcom/narvii/sharedfolder/SharedPhotoColorHelper;

    .line 28
    new-instance p1, Lcom/narvii/sharedfolder/SharedAlbumTagView$1;

    invoke-direct {p1, p0}, Lcom/narvii/sharedfolder/SharedAlbumTagView$1;-><init>(Lcom/narvii/sharedfolder/SharedAlbumTagView;)V

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method


# virtual methods
.method public setAlbum(Lcom/narvii/model/SharedAlbum;)V
    .locals 2

    if-nez p1, :cond_0

    return-void

    .line 44
    :cond_0
    iput-object p1, p0, Lcom/narvii/sharedfolder/SharedAlbumTagView;->sharedAlbum:Lcom/narvii/model/SharedAlbum;

    .line 45
    invoke-virtual {p0}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/narvii/model/SharedAlbum;->getTitle(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 46
    iget-object v0, p0, Lcom/narvii/sharedfolder/SharedAlbumTagView;->sharedPhotoColorHelper:Lcom/narvii/sharedfolder/SharedPhotoColorHelper;

    invoke-virtual {p0}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Lcom/narvii/sharedfolder/SharedPhotoColorHelper;->getTagBackground(Landroid/content/Context;Lcom/narvii/model/SharedAlbum;)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method
