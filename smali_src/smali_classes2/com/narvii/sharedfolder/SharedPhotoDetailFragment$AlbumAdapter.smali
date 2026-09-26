.class Lcom/narvii/sharedfolder/SharedPhotoDetailFragment$AlbumAdapter;
.super Lcom/narvii/list/NVPagedAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/narvii/sharedfolder/SharedPhotoDetailFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "AlbumAdapter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/narvii/list/NVPagedAdapter<",
        "Lcom/narvii/model/SharedAlbum;",
        "Lcom/narvii/sharedfolder/SharedAlbumListResponse;",
        ">;"
    }
.end annotation


# static fields
.field public static final SHOW_MORE_COUNT:I = 0x4


# instance fields
.field public final MORE:Lcom/narvii/util/Tag;

.field animated:Z

.field private showMore:Z

.field final synthetic this$0:Lcom/narvii/sharedfolder/SharedPhotoDetailFragment;


# direct methods
.method public constructor <init>(Lcom/narvii/sharedfolder/SharedPhotoDetailFragment;Lcom/narvii/app/NVContext;)V
    .locals 1

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/sharedfolder/SharedPhotoDetailFragment$AlbumAdapter;->this$0:Lcom/narvii/sharedfolder/SharedPhotoDetailFragment;

    .line 3
    .line 4
    .line 5
    invoke-direct {p0, p2}, Lcom/narvii/list/NVPagedAdapter;-><init>(Lcom/narvii/app/NVContext;)V

    .line 6
    const/4 p1, 0x1

    .line 7
    .line 8
    iput-boolean p1, p0, Lcom/narvii/sharedfolder/SharedPhotoDetailFragment$AlbumAdapter;->showMore:Z

    .line 9
    .line 10
    new-instance p2, Lcom/narvii/util/Tag;

    .line 11
    .line 12
    const-string v0, "more"

    .line 13
    .line 14
    .line 15
    invoke-direct {p2, v0}, Lcom/narvii/util/Tag;-><init>(Ljava/lang/String;)V

    .line 16
    .line 17
    iput-object p2, p0, Lcom/narvii/sharedfolder/SharedPhotoDetailFragment$AlbumAdapter;->MORE:Lcom/narvii/util/Tag;

    .line 18
    const/4 p2, 0x0

    .line 19
    .line 20
    iput-boolean p2, p0, Lcom/narvii/sharedfolder/SharedPhotoDetailFragment$AlbumAdapter;->animated:Z

    .line 21
    .line 22
    .line 23
    invoke-virtual {p0, p1}, Lcom/narvii/list/NVAdapter;->setDarkTheme(Z)V

    .line 24
    return-void
.end method

.method static bridge synthetic m(Lcom/narvii/sharedfolder/SharedPhotoDetailFragment$AlbumAdapter;Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/narvii/sharedfolder/SharedPhotoDetailFragment$AlbumAdapter;->showMore:Z

    return-void
.end method


# virtual methods
.method protected createRequest(Z)Lcom/narvii/util/http/ApiRequest;
    .locals 2

    .line 1
    .line 2
    .line 3
    invoke-static {}, Lcom/narvii/util/http/ApiRequest;->builder()Lcom/narvii/util/http/ApiRequest$Builder;

    .line 4
    move-result-object p1

    .line 5
    .line 6
    new-instance v0, Ljava/lang/StringBuilder;

    .line 7
    .line 8
    .line 9
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 10
    .line 11
    const-string v1, "shared-folder/files/"

    .line 12
    .line 13
    .line 14
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 15
    .line 16
    iget-object v1, p0, Lcom/narvii/sharedfolder/SharedPhotoDetailFragment$AlbumAdapter;->this$0:Lcom/narvii/sharedfolder/SharedPhotoDetailFragment;

    .line 17
    .line 18
    .line 19
    invoke-virtual {v1}, Lcom/narvii/detail/DetailFragment;->id()Ljava/lang/String;

    .line 20
    move-result-object v1

    .line 21
    .line 22
    .line 23
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 24
    .line 25
    const-string v1, "/joined-folders"

    .line 26
    .line 27
    .line 28
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 29
    .line 30
    .line 31
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 32
    move-result-object v0

    .line 33
    .line 34
    .line 35
    invoke-virtual {p1, v0}, Lcom/narvii/util/http/ApiRequest$Builder;->path(Ljava/lang/String;)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 36
    move-result-object p1

    .line 37
    .line 38
    .line 39
    invoke-virtual {p1}, Lcom/narvii/util/http/ApiRequest$Builder;->build()Lcom/narvii/util/http/ApiRequest;

    .line 40
    move-result-object p1

    .line 41
    return-object p1
.end method

.method protected dataType()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "Lcom/narvii/model/SharedAlbum;",
            ">;"
        }
    .end annotation

    const-class v0, Lcom/narvii/model/SharedAlbum;

    return-object v0
.end method

.method public getCount()I
    .locals 2

    .line 1
    .line 2
    iget-boolean v0, p0, Lcom/narvii/sharedfolder/SharedPhotoDetailFragment$AlbumAdapter;->showMore:Z

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    const/4 v0, 0x5

    .line 6
    .line 7
    .line 8
    invoke-super {p0}, Lcom/narvii/list/NVPagedAdapter;->getCount()I

    .line 9
    move-result v1

    .line 10
    .line 11
    .line 12
    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    .line 13
    move-result v0

    .line 14
    return v0

    .line 15
    .line 16
    .line 17
    :cond_0
    invoke-super {p0}, Lcom/narvii/list/NVPagedAdapter;->getCount()I

    .line 18
    move-result v0

    .line 19
    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 2

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/narvii/list/NVPagedAdapter;->rawList()Ljava/util/List;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    .line 7
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 8
    move-result v0

    .line 9
    const/4 v1, 0x4

    .line 10
    .line 11
    if-le v0, v1, :cond_0

    .line 12
    .line 13
    iget-boolean v0, p0, Lcom/narvii/sharedfolder/SharedPhotoDetailFragment$AlbumAdapter;->showMore:Z

    .line 14
    .line 15
    if-eqz v0, :cond_0

    .line 16
    .line 17
    if-ne p1, v1, :cond_0

    .line 18
    .line 19
    iget-object p1, p0, Lcom/narvii/sharedfolder/SharedPhotoDetailFragment$AlbumAdapter;->MORE:Lcom/narvii/util/Tag;

    .line 20
    return-object p1

    .line 21
    .line 22
    .line 23
    :cond_0
    invoke-super {p0, p1}, Lcom/narvii/list/NVPagedAdapter;->getItem(I)Ljava/lang/Object;

    .line 24
    move-result-object p1

    .line 25
    return-object p1
.end method

.method protected getItemType(Ljava/lang/Object;)I
    .locals 0

    .line 1
    .line 2
    instance-of p1, p1, Lcom/narvii/model/SharedAlbum;

    .line 3
    .line 4
    if-eqz p1, :cond_0

    .line 5
    const/4 p1, 0x0

    .line 6
    return p1

    .line 7
    :cond_0
    const/4 p1, 0x1

    .line 8
    return p1
.end method

.method protected getItemTypeCount()I
    .locals 1

    const/4 v0, 0x2

    return v0
.end method

.method protected getItemView(Ljava/lang/Object;Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 2

    .line 1
    .line 2
    instance-of v0, p1, Lcom/narvii/model/SharedAlbum;

    .line 3
    .line 4
    .line 5
    const v1, 0x7f0a00ef

    .line 6
    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    check-cast p1, Lcom/narvii/model/SharedAlbum;

    .line 10
    .line 11
    .line 12
    const v0, 0x7f0d0449

    .line 13
    .line 14
    .line 15
    invoke-virtual {p0, v0, p3, p2}, Lcom/narvii/list/NVAdapter;->createView(ILandroid/view/ViewGroup;Landroid/view/View;)Landroid/view/View;

    .line 16
    move-result-object p2

    .line 17
    .line 18
    .line 19
    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 20
    move-result-object p3

    .line 21
    .line 22
    check-cast p3, Lcom/narvii/sharedfolder/SharedAlbumTagView;

    .line 23
    .line 24
    .line 25
    invoke-virtual {p3, p1}, Lcom/narvii/sharedfolder/SharedAlbumTagView;->setAlbum(Lcom/narvii/model/SharedAlbum;)V

    .line 26
    .line 27
    .line 28
    invoke-virtual {p0}, Lcom/narvii/list/NVAdapter;->getContext()Landroid/content/Context;

    .line 29
    move-result-object v0

    .line 30
    .line 31
    .line 32
    invoke-virtual {p1, v0}, Lcom/narvii/model/SharedAlbum;->getTitle(Landroid/content/Context;)Ljava/lang/String;

    .line 33
    move-result-object p1

    .line 34
    .line 35
    .line 36
    invoke-virtual {p3, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 37
    return-object p2

    .line 38
    .line 39
    :cond_0
    iget-object v0, p0, Lcom/narvii/sharedfolder/SharedPhotoDetailFragment$AlbumAdapter;->MORE:Lcom/narvii/util/Tag;

    .line 40
    .line 41
    if-ne p1, v0, :cond_1

    .line 42
    .line 43
    .line 44
    const p1, 0x7f0d044a

    .line 45
    .line 46
    .line 47
    invoke-virtual {p0, p1, p3, p2}, Lcom/narvii/list/NVAdapter;->createView(ILandroid/view/ViewGroup;Landroid/view/View;)Landroid/view/View;

    .line 48
    move-result-object p1

    .line 49
    .line 50
    .line 51
    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 52
    move-result-object p2

    .line 53
    .line 54
    iget-object p3, p0, Lcom/narvii/sharedfolder/SharedPhotoDetailFragment$AlbumAdapter;->this$0:Lcom/narvii/sharedfolder/SharedPhotoDetailFragment;

    .line 55
    .line 56
    iget-object p3, p3, Lcom/narvii/sharedfolder/SharedPhotoDetailFragment;->sharedPhotoColorHelper:Lcom/narvii/sharedfolder/SharedPhotoColorHelper;

    .line 57
    .line 58
    .line 59
    invoke-virtual {p0}, Lcom/narvii/list/NVAdapter;->getContext()Landroid/content/Context;

    .line 60
    move-result-object v0

    .line 61
    .line 62
    .line 63
    const v1, -0x69000001

    .line 64
    .line 65
    .line 66
    invoke-virtual {p3, v0, v1}, Lcom/narvii/sharedfolder/SharedPhotoColorHelper;->getTagBackground(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    .line 67
    move-result-object p3

    .line 68
    .line 69
    .line 70
    invoke-virtual {p2, p3}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 71
    .line 72
    new-instance p2, Lcom/narvii/sharedfolder/SharedPhotoDetailFragment$AlbumAdapter$1;

    .line 73
    .line 74
    .line 75
    invoke-direct {p2, p0}, Lcom/narvii/sharedfolder/SharedPhotoDetailFragment$AlbumAdapter$1;-><init>(Lcom/narvii/sharedfolder/SharedPhotoDetailFragment$AlbumAdapter;)V

    .line 76
    .line 77
    .line 78
    invoke-virtual {p1, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 79
    return-object p1

    .line 80
    :cond_1
    const/4 p1, 0x0

    .line 81
    return-object p1
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 2

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0, p1}, Lcom/narvii/sharedfolder/SharedPhotoDetailFragment$AlbumAdapter;->getItem(I)Ljava/lang/Object;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    instance-of v1, v0, Lcom/narvii/model/SharedAlbum;

    .line 7
    .line 8
    if-nez v1, :cond_2

    .line 9
    .line 10
    iget-object v1, p0, Lcom/narvii/sharedfolder/SharedPhotoDetailFragment$AlbumAdapter;->MORE:Lcom/narvii/util/Tag;

    .line 11
    .line 12
    if-ne v0, v1, :cond_0

    .line 13
    goto :goto_0

    .line 14
    .line 15
    :cond_0
    iget-boolean v1, p0, Lcom/narvii/sharedfolder/SharedPhotoDetailFragment$AlbumAdapter;->showMore:Z

    .line 16
    .line 17
    if-nez v1, :cond_1

    .line 18
    .line 19
    sget-object v1, Lcom/narvii/list/NVPagedAdapter;->LOADING:Lcom/narvii/util/Tag;

    .line 20
    .line 21
    if-ne v0, v1, :cond_1

    .line 22
    .line 23
    .line 24
    invoke-super {p0, p1, p2, p3}, Lcom/narvii/list/NVPagedAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    .line 25
    move-result-object p1

    .line 26
    return-object p1

    .line 27
    .line 28
    :cond_1
    new-instance p1, Landroid/view/View;

    .line 29
    .line 30
    .line 31
    invoke-virtual {p0}, Lcom/narvii/list/NVAdapter;->getContext()Landroid/content/Context;

    .line 32
    move-result-object p2

    .line 33
    .line 34
    .line 35
    invoke-direct {p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 36
    return-object p1

    .line 37
    .line 38
    .line 39
    :cond_2
    :goto_0
    invoke-super {p0, p1, p2, p3}, Lcom/narvii/list/NVPagedAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    .line 40
    move-result-object p1

    .line 41
    return-object p1
.end method

.method public notifyDataSetChanged()V
    .locals 2

    .line 1
    .line 2
    .line 3
    invoke-super {p0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    .line 4
    .line 5
    iget-boolean v0, p0, Lcom/narvii/sharedfolder/SharedPhotoDetailFragment$AlbumAdapter;->animated:Z

    .line 6
    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    .line 10
    invoke-virtual {p0}, Lcom/narvii/list/NVPagedAdapter;->rawList()Ljava/util/List;

    .line 11
    move-result-object v0

    .line 12
    .line 13
    .line 14
    invoke-static {v0}, Lcom/narvii/util/CollectionUtils;->isEmpty(Ljava/util/List;)Z

    .line 15
    move-result v0

    .line 16
    .line 17
    if-eqz v0, :cond_0

    .line 18
    .line 19
    iget-object v0, p0, Lcom/narvii/sharedfolder/SharedPhotoDetailFragment$AlbumAdapter;->this$0:Lcom/narvii/sharedfolder/SharedPhotoDetailFragment;

    .line 20
    .line 21
    iget-object v0, v0, Lcom/narvii/sharedfolder/SharedPhotoDetailFragment;->albumList:Lcom/narvii/widget/NVListView;

    .line 22
    .line 23
    if-eqz v0, :cond_0

    .line 24
    .line 25
    .line 26
    invoke-virtual {p0}, Lcom/narvii/list/NVAdapter;->getContext()Landroid/content/Context;

    .line 27
    move-result-object v0

    .line 28
    .line 29
    const/high16 v1, 0x10a0000

    .line 30
    .line 31
    .line 32
    invoke-static {v0, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    .line 33
    move-result-object v0

    .line 34
    .line 35
    iget-object v1, p0, Lcom/narvii/sharedfolder/SharedPhotoDetailFragment$AlbumAdapter;->this$0:Lcom/narvii/sharedfolder/SharedPhotoDetailFragment;

    .line 36
    .line 37
    iget-object v1, v1, Lcom/narvii/sharedfolder/SharedPhotoDetailFragment;->albumList:Lcom/narvii/widget/NVListView;

    .line 38
    .line 39
    .line 40
    invoke-virtual {v1, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 41
    const/4 v0, 0x1

    .line 42
    .line 43
    iput-boolean v0, p0, Lcom/narvii/sharedfolder/SharedPhotoDetailFragment$AlbumAdapter;->animated:Z

    .line 44
    :cond_0
    return-void
.end method

.method public onRestoreInstanceState(Landroid/os/Bundle;)V
    .locals 2

    .line 1
    .line 2
    .line 3
    invoke-super {p0, p1}, Lcom/narvii/list/NVPagedAdapter;->onRestoreInstanceState(Landroid/os/Bundle;)V

    .line 4
    .line 5
    const-string v0, "animated"

    .line 6
    const/4 v1, 0x0

    .line 7
    .line 8
    .line 9
    invoke-virtual {p1, v0, v1}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;Z)Z

    .line 10
    move-result p1

    .line 11
    .line 12
    iput-boolean p1, p0, Lcom/narvii/sharedfolder/SharedPhotoDetailFragment$AlbumAdapter;->animated:Z

    .line 13
    return-void
.end method

.method public onSaveInstanceState()Landroid/os/Bundle;
    .locals 3

    .line 1
    .line 2
    .line 3
    invoke-super {p0}, Lcom/narvii/list/NVPagedAdapter;->onSaveInstanceState()Landroid/os/Bundle;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    const-string v1, "animated"

    .line 7
    .line 8
    iget-boolean v2, p0, Lcom/narvii/sharedfolder/SharedPhotoDetailFragment$AlbumAdapter;->animated:Z

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0, v1, v2}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    .line 12
    return-object v0
.end method

.method protected pageSize()I
    .locals 1

    const/16 v0, 0x19

    return v0
.end method

.method protected responseType()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "+",
            "Lcom/narvii/sharedfolder/SharedAlbumListResponse;",
            ">;"
        }
    .end annotation

    const-class v0, Lcom/narvii/sharedfolder/SharedAlbumListResponse;

    return-object v0
.end method

.method protected saveInstanceState()Z
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/sharedfolder/SharedPhotoDetailFragment$AlbumAdapter;->this$0:Lcom/narvii/sharedfolder/SharedPhotoDetailFragment;

    .line 3
    .line 4
    .line 5
    invoke-static {v0}, Lcom/narvii/sharedfolder/SharedPhotoDetailFragment;->t(Lcom/narvii/sharedfolder/SharedPhotoDetailFragment;)Z

    .line 6
    move-result v0

    .line 7
    return v0
.end method
