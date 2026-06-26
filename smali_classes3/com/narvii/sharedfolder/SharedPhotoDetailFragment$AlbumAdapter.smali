.class Lcom/narvii/sharedfolder/SharedPhotoDetailFragment$AlbumAdapter;
.super Lcom/narvii/list/NVPagedAdapter;
.source "SharedPhotoDetailFragment.java"


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

    .line 830
    iput-object p1, p0, Lcom/narvii/sharedfolder/SharedPhotoDetailFragment$AlbumAdapter;->this$0:Lcom/narvii/sharedfolder/SharedPhotoDetailFragment;

    .line 831
    invoke-direct {p0, p2}, Lcom/narvii/list/NVPagedAdapter;-><init>(Lcom/narvii/app/NVContext;)V

    const/4 p1, 0x1

    .line 824
    iput-boolean p1, p0, Lcom/narvii/sharedfolder/SharedPhotoDetailFragment$AlbumAdapter;->showMore:Z

    .line 826
    new-instance p2, Lcom/narvii/util/Tag;

    const-string v0, "more"

    invoke-direct {p2, v0}, Lcom/narvii/util/Tag;-><init>(Ljava/lang/String;)V

    iput-object p2, p0, Lcom/narvii/sharedfolder/SharedPhotoDetailFragment$AlbumAdapter;->MORE:Lcom/narvii/util/Tag;

    const/4 p2, 0x0

    .line 827
    iput-boolean p2, p0, Lcom/narvii/sharedfolder/SharedPhotoDetailFragment$AlbumAdapter;->animated:Z

    .line 832
    invoke-virtual {p0, p1}, Lcom/narvii/list/NVAdapter;->setDarkTheme(Z)V

    return-void
.end method

.method static synthetic access$702(Lcom/narvii/sharedfolder/SharedPhotoDetailFragment$AlbumAdapter;Z)Z
    .locals 0

    .line 822
    iput-boolean p1, p0, Lcom/narvii/sharedfolder/SharedPhotoDetailFragment$AlbumAdapter;->showMore:Z

    return p1
.end method


# virtual methods
.method protected createRequest(Z)Lcom/narvii/util/http/ApiRequest;
    .locals 2

    .line 878
    invoke-static {}, Lcom/narvii/util/http/ApiRequest;->builder()Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "shared-folder/files/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/narvii/sharedfolder/SharedPhotoDetailFragment$AlbumAdapter;->this$0:Lcom/narvii/sharedfolder/SharedPhotoDetailFragment;

    .line 879
    invoke-virtual {v1}, Lcom/narvii/detail/DetailFragment;->id()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/joined-folders"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/narvii/util/http/ApiRequest$Builder;->path(Ljava/lang/String;)Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object p1

    .line 880
    invoke-virtual {p1}, Lcom/narvii/util/http/ApiRequest$Builder;->build()Lcom/narvii/util/http/ApiRequest;

    move-result-object p1

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

    .line 850
    const-class v0, Lcom/narvii/model/SharedAlbum;

    return-object v0
.end method

.method public getCount()I
    .locals 2

    .line 907
    iget-boolean v0, p0, Lcom/narvii/sharedfolder/SharedPhotoDetailFragment$AlbumAdapter;->showMore:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x5

    .line 908
    invoke-super {p0}, Lcom/narvii/list/NVPagedAdapter;->getCount()I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    return v0

    .line 910
    :cond_0
    invoke-super {p0}, Lcom/narvii/list/NVPagedAdapter;->getCount()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 2

    .line 899
    invoke-virtual {p0}, Lcom/narvii/list/NVPagedAdapter;->rawList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x4

    if-le v0, v1, :cond_0

    iget-boolean v0, p0, Lcom/narvii/sharedfolder/SharedPhotoDetailFragment$AlbumAdapter;->showMore:Z

    if-eqz v0, :cond_0

    if-ne p1, v1, :cond_0

    .line 900
    iget-object p1, p0, Lcom/narvii/sharedfolder/SharedPhotoDetailFragment$AlbumAdapter;->MORE:Lcom/narvii/util/Tag;

    return-object p1

    .line 902
    :cond_0
    invoke-super {p0, p1}, Lcom/narvii/list/NVPagedAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method protected getItemType(Ljava/lang/Object;)I
    .locals 0

    .line 890
    instance-of p1, p1, Lcom/narvii/model/SharedAlbum;

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    const/4 p1, 0x1

    return p1
.end method

.method protected getItemTypeCount()I
    .locals 1

    const/4 v0, 0x2

    return v0
.end method

.method protected getItemView(Ljava/lang/Object;Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 2

    .line 933
    instance-of v0, p1, Lcom/narvii/model/SharedAlbum;

    const v1, 0x7f090088

    if-eqz v0, :cond_0

    .line 934
    check-cast p1, Lcom/narvii/model/SharedAlbum;

    const v0, 0x7f0b0413

    .line 935
    invoke-virtual {p0, v0, p3, p2}, Lcom/narvii/list/NVAdapter;->createView(ILandroid/view/ViewGroup;Landroid/view/View;)Landroid/view/View;

    move-result-object p2

    .line 936
    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Lcom/narvii/sharedfolder/SharedAlbumTagView;

    .line 937
    invoke-virtual {p3, p1}, Lcom/narvii/sharedfolder/SharedAlbumTagView;->setAlbum(Lcom/narvii/model/SharedAlbum;)V

    .line 938
    invoke-virtual {p0}, Lcom/narvii/list/NVAdapter;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/narvii/model/SharedAlbum;->getTitle(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-object p2

    .line 940
    :cond_0
    iget-object v0, p0, Lcom/narvii/sharedfolder/SharedPhotoDetailFragment$AlbumAdapter;->MORE:Lcom/narvii/util/Tag;

    if-ne p1, v0, :cond_1

    const p1, 0x7f0b0414

    .line 941
    invoke-virtual {p0, p1, p3, p2}, Lcom/narvii/list/NVAdapter;->createView(ILandroid/view/ViewGroup;Landroid/view/View;)Landroid/view/View;

    move-result-object p1

    .line 942
    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    iget-object p3, p0, Lcom/narvii/sharedfolder/SharedPhotoDetailFragment$AlbumAdapter;->this$0:Lcom/narvii/sharedfolder/SharedPhotoDetailFragment;

    iget-object p3, p3, Lcom/narvii/sharedfolder/SharedPhotoDetailFragment;->sharedPhotoColorHelper:Lcom/narvii/sharedfolder/SharedPhotoColorHelper;

    invoke-virtual {p0}, Lcom/narvii/list/NVAdapter;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, -0x69000001

    invoke-virtual {p3, v0, v1}, Lcom/narvii/sharedfolder/SharedPhotoColorHelper;->getTagBackground(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p3

    invoke-virtual {p2, p3}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 943
    new-instance p2, Lcom/narvii/sharedfolder/SharedPhotoDetailFragment$AlbumAdapter$1;

    invoke-direct {p2, p0}, Lcom/narvii/sharedfolder/SharedPhotoDetailFragment$AlbumAdapter$1;-><init>(Lcom/narvii/sharedfolder/SharedPhotoDetailFragment$AlbumAdapter;)V

    invoke-virtual {p1, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-object p1

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 2

    .line 921
    invoke-virtual {p0, p1}, Lcom/narvii/sharedfolder/SharedPhotoDetailFragment$AlbumAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    .line 922
    instance-of v1, v0, Lcom/narvii/model/SharedAlbum;

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/narvii/sharedfolder/SharedPhotoDetailFragment$AlbumAdapter;->MORE:Lcom/narvii/util/Tag;

    if-ne v0, v1, :cond_0

    goto :goto_0

    .line 925
    :cond_0
    iget-boolean v1, p0, Lcom/narvii/sharedfolder/SharedPhotoDetailFragment$AlbumAdapter;->showMore:Z

    if-nez v1, :cond_1

    sget-object v1, Lcom/narvii/list/NVPagedAdapter;->LOADING:Lcom/narvii/util/Tag;

    if-ne v0, v1, :cond_1

    .line 926
    invoke-super {p0, p1, p2, p3}, Lcom/narvii/list/NVPagedAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    return-object p1

    .line 928
    :cond_1
    new-instance p1, Landroid/view/View;

    invoke-virtual {p0}, Lcom/narvii/list/NVAdapter;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-direct {p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    return-object p1

    .line 923
    :cond_2
    :goto_0
    invoke-super {p0, p1, p2, p3}, Lcom/narvii/list/NVPagedAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public notifyDataSetChanged()V
    .locals 2

    .line 860
    invoke-super {p0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    .line 861
    iget-boolean v0, p0, Lcom/narvii/sharedfolder/SharedPhotoDetailFragment$AlbumAdapter;->animated:Z

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/narvii/list/NVPagedAdapter;->rawList()Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Lcom/narvii/util/CollectionUtils;->isEmpty(Ljava/util/List;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 862
    iget-object v0, p0, Lcom/narvii/sharedfolder/SharedPhotoDetailFragment$AlbumAdapter;->this$0:Lcom/narvii/sharedfolder/SharedPhotoDetailFragment;

    iget-object v0, v0, Lcom/narvii/sharedfolder/SharedPhotoDetailFragment;->albumList:Lcom/narvii/widget/NVListView;

    if-eqz v0, :cond_0

    .line 864
    invoke-virtual {p0}, Lcom/narvii/list/NVAdapter;->getContext()Landroid/content/Context;

    move-result-object v0

    const/high16 v1, 0x10a0000

    .line 863
    invoke-static {v0, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    .line 865
    iget-object v1, p0, Lcom/narvii/sharedfolder/SharedPhotoDetailFragment$AlbumAdapter;->this$0:Lcom/narvii/sharedfolder/SharedPhotoDetailFragment;

    iget-object v1, v1, Lcom/narvii/sharedfolder/SharedPhotoDetailFragment;->albumList:Lcom/narvii/widget/NVListView;

    invoke-virtual {v1, v0}, Landroid/widget/ListView;->startAnimation(Landroid/view/animation/Animation;)V

    const/4 v0, 0x1

    .line 866
    iput-boolean v0, p0, Lcom/narvii/sharedfolder/SharedPhotoDetailFragment$AlbumAdapter;->animated:Z

    :cond_0
    return-void
.end method

.method public onRestoreInstanceState(Landroid/os/Bundle;)V
    .locals 2

    .line 844
    invoke-super {p0, p1}, Lcom/narvii/list/NVPagedAdapter;->onRestoreInstanceState(Landroid/os/Bundle;)V

    const-string v0, "animated"

    const/4 v1, 0x0

    .line 845
    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    iput-boolean p1, p0, Lcom/narvii/sharedfolder/SharedPhotoDetailFragment$AlbumAdapter;->animated:Z

    return-void
.end method

.method public onSaveInstanceState()Landroid/os/Bundle;
    .locals 3

    .line 837
    invoke-super {p0}, Lcom/narvii/list/NVPagedAdapter;->onSaveInstanceState()Landroid/os/Bundle;

    move-result-object v0

    .line 838
    iget-boolean v1, p0, Lcom/narvii/sharedfolder/SharedPhotoDetailFragment$AlbumAdapter;->animated:Z

    const-string v2, "animated"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

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

    .line 855
    const-class v0, Lcom/narvii/sharedfolder/SharedAlbumListResponse;

    return-object v0
.end method

.method protected saveInstanceState()Z
    .locals 1

    .line 873
    iget-object v0, p0, Lcom/narvii/sharedfolder/SharedPhotoDetailFragment$AlbumAdapter;->this$0:Lcom/narvii/sharedfolder/SharedPhotoDetailFragment;

    invoke-static {v0}, Lcom/narvii/sharedfolder/SharedPhotoDetailFragment;->access$400(Lcom/narvii/sharedfolder/SharedPhotoDetailFragment;)Z

    move-result v0

    return v0
.end method
