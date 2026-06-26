.class public Lcom/narvii/sharedfolder/SharedPhotoDetailFragment;
.super Lcom/narvii/detail/DetailFragment;
.source "SharedPhotoDetailFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcom/narvii/notification/NotificationListener;
.implements Lcom/narvii/sharedfolder/HideDetailStatusManager$OnHideStatusChangedListener;
.implements Lcom/narvii/util/FixedFragmentStatePagerAdapter$FragmentSaveInstanceInPagerListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/narvii/sharedfolder/SharedPhotoDetailFragment$CommentAdapter;,
        Lcom/narvii/sharedfolder/SharedPhotoDetailFragment$AlbumAdapter;,
        Lcom/narvii/sharedfolder/SharedPhotoDetailFragment$PhotoDetailAdapter;
    }
.end annotation


# instance fields
.field public albumAdapter:Lcom/narvii/sharedfolder/SharedPhotoDetailFragment$AlbumAdapter;

.field albumList:Lcom/narvii/widget/NVListView;

.field public commentAdapter:Lcom/narvii/sharedfolder/SharedPhotoDetailFragment$CommentAdapter;

.field commentList:Lcom/narvii/widget/NVListView;

.field public detailLayout:Landroid/view/View;

.field public hideDetailStatusManager:Lcom/narvii/sharedfolder/HideDetailStatusManager;

.field private longClickVote:Landroid/view/View$OnLongClickListener;

.field public onFinishListener:Lcom/narvii/util/Callback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/narvii/util/Callback<",
            "Lcom/narvii/model/SharedFile;",
            ">;"
        }
    .end annotation
.end field

.field public onPhotoDeleteCallback:Lcom/narvii/util/Callback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/narvii/util/Callback<",
            "Lcom/narvii/model/SharedFile;",
            ">;"
        }
    .end annotation
.end field

.field public overlayPlaceholder:Landroid/view/View;

.field public photoDetailAdapter:Lcom/narvii/sharedfolder/SharedPhotoDetailFragment$PhotoDetailAdapter;

.field savedInstanceState:Landroid/os/Bundle;

.field sharedFolderHelper:Lcom/narvii/sharedfolder/SharedFolderHelper;

.field sharedPhotoColorHelper:Lcom/narvii/sharedfolder/SharedPhotoColorHelper;

.field public subListSetted:Z

.field public voteIconView:Landroid/view/View;

.field private voting:Z

.field private willSaveInstanceInPager:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 136
    invoke-direct {p0}, Lcom/narvii/detail/DetailFragment;-><init>()V

    .line 345
    new-instance v0, Lcom/narvii/sharedfolder/SharedPhotoDetailFragment$2;

    invoke-direct {v0, p0}, Lcom/narvii/sharedfolder/SharedPhotoDetailFragment$2;-><init>(Lcom/narvii/sharedfolder/SharedPhotoDetailFragment;)V

    iput-object v0, p0, Lcom/narvii/sharedfolder/SharedPhotoDetailFragment;->longClickVote:Landroid/view/View$OnLongClickListener;

    .line 137
    new-instance v0, Lcom/narvii/sharedfolder/HideDetailStatusManager;

    invoke-direct {v0}, Lcom/narvii/sharedfolder/HideDetailStatusManager;-><init>()V

    iput-object v0, p0, Lcom/narvii/sharedfolder/SharedPhotoDetailFragment;->hideDetailStatusManager:Lcom/narvii/sharedfolder/HideDetailStatusManager;

    return-void
.end method

.method static synthetic access$000(Lcom/narvii/sharedfolder/SharedPhotoDetailFragment;)Lcom/narvii/model/SharedFile;
    .locals 0

    .line 104
    invoke-direct {p0}, Lcom/narvii/sharedfolder/SharedPhotoDetailFragment;->getSharedPhoto()Lcom/narvii/model/SharedFile;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$100(Lcom/narvii/sharedfolder/SharedPhotoDetailFragment;Ljava/lang/Integer;Lcom/narvii/util/http/ApiService;)V
    .locals 0

    .line 104
    invoke-direct {p0, p1, p2}, Lcom/narvii/sharedfolder/SharedPhotoDetailFragment;->vote(Ljava/lang/Integer;Lcom/narvii/util/http/ApiService;)V

    return-void
.end method

.method static synthetic access$202(Lcom/narvii/sharedfolder/SharedPhotoDetailFragment;Z)Z
    .locals 0

    .line 104
    iput-boolean p1, p0, Lcom/narvii/sharedfolder/SharedPhotoDetailFragment;->voting:Z

    return p1
.end method

.method static synthetic access$300(Lcom/narvii/sharedfolder/SharedPhotoDetailFragment;)V
    .locals 0

    .line 104
    invoke-direct {p0}, Lcom/narvii/sharedfolder/SharedPhotoDetailFragment;->updateVoteViews()V

    return-void
.end method

.method static synthetic access$400(Lcom/narvii/sharedfolder/SharedPhotoDetailFragment;)Z
    .locals 0

    .line 104
    iget-boolean p0, p0, Lcom/narvii/sharedfolder/SharedPhotoDetailFragment;->willSaveInstanceInPager:Z

    return p0
.end method

.method static synthetic access$500(Lcom/narvii/sharedfolder/SharedPhotoDetailFragment;)V
    .locals 0

    .line 104
    invoke-direct {p0}, Lcom/narvii/sharedfolder/SharedPhotoDetailFragment;->updateCommentCountView()V

    return-void
.end method

.method static synthetic access$600(Lcom/narvii/sharedfolder/SharedPhotoDetailFragment;)V
    .locals 0

    .line 104
    invoke-direct {p0}, Lcom/narvii/sharedfolder/SharedPhotoDetailFragment;->updateDetailView()V

    return-void
.end method

.method static synthetic access$800(Lcom/narvii/sharedfolder/SharedPhotoDetailFragment;)V
    .locals 0

    .line 104
    invoke-direct {p0}, Lcom/narvii/sharedfolder/SharedPhotoDetailFragment;->goAllCommentsPage()V

    return-void
.end method

.method private getSharedPhoto()Lcom/narvii/model/SharedFile;
    .locals 1

    .line 624
    iget-object v0, p0, Lcom/narvii/sharedfolder/SharedPhotoDetailFragment;->photoDetailAdapter:Lcom/narvii/sharedfolder/SharedPhotoDetailFragment$PhotoDetailAdapter;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lcom/narvii/detail/DetailAdapter;->getObject()Lcom/narvii/model/NVObject;

    move-result-object v0

    check-cast v0, Lcom/narvii/model/SharedFile;

    :goto_0
    return-object v0
.end method

.method private goAllCommentsPage()V
    .locals 3

    .line 966
    invoke-direct {p0}, Lcom/narvii/sharedfolder/SharedPhotoDetailFragment;->getSharedPhoto()Lcom/narvii/model/SharedFile;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 968
    new-instance v1, Lcom/narvii/comment/list/CommentListFragment$IntentBuilder;

    invoke-direct {v1}, Lcom/narvii/comment/list/CommentListFragment$IntentBuilder;-><init>()V

    .line 969
    invoke-virtual {v0}, Lcom/narvii/model/SharedFile;->objectType()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/narvii/comment/list/CommentListFragment$IntentBuilder;->parentType(I)Lcom/narvii/comment/list/CommentListFragment$IntentBuilder;

    move-result-object v1

    .line 970
    invoke-virtual {v0}, Lcom/narvii/model/SharedFile;->id()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/narvii/comment/list/CommentListFragment$IntentBuilder;->parentId(Ljava/lang/String;)Lcom/narvii/comment/list/CommentListFragment$IntentBuilder;

    move-result-object v1

    iget-object v0, v0, Lcom/narvii/model/SharedFile;->media:Lcom/narvii/model/Media;

    .line 971
    invoke-virtual {v1, v0}, Lcom/narvii/comment/list/CommentListFragment$IntentBuilder;->background(Lcom/narvii/model/Media;)Lcom/narvii/comment/list/CommentListFragment$IntentBuilder;

    move-result-object v0

    const-string v1, "shared-folder-image"

    .line 972
    invoke-virtual {v0, v1}, Lcom/narvii/comment/list/CommentListFragment$IntentBuilder;->backgroundType(Ljava/lang/String;)Lcom/narvii/comment/list/CommentListFragment$IntentBuilder;

    move-result-object v0

    .line 973
    invoke-virtual {v0}, Lcom/narvii/comment/list/CommentListFragment$IntentBuilder;->build()Landroid/content/Intent;

    move-result-object v0

    .line 974
    invoke-virtual {p0, v0}, Landroid/support/v4/app/Fragment;->startActivity(Landroid/content/Intent;)V

    :cond_0
    return-void
.end method

.method public static intent(Lcom/narvii/model/SharedFile;)Landroid/content/Intent;
    .locals 3

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 130
    :cond_0
    const-class v0, Lcom/narvii/sharedfolder/SharedPhotoDetailFragment;

    invoke-static {v0}, Lcom/narvii/app/FragmentWrapperActivity;->intent(Ljava/lang/Class;)Landroid/content/Intent;

    move-result-object v0

    .line 131
    invoke-virtual {p0}, Lcom/narvii/model/SharedFile;->id()Ljava/lang/String;

    move-result-object v1

    const-string v2, "id"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 132
    invoke-static {p0}, Lcom/narvii/util/JacksonUtils;->writeAsString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    const-string v1, "prefetch"

    invoke-virtual {v0, v1, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    return-object v0
.end method

.method private isMine(Lcom/narvii/model/SharedFile;Lcom/narvii/model/User;)Z
    .locals 2

    const/4 v0, 0x0

    if-eqz p1, :cond_2

    .line 530
    iget-object v1, p1, Lcom/narvii/model/SharedFile;->author:Lcom/narvii/model/User;

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    if-nez p2, :cond_1

    return v0

    .line 536
    :cond_1
    invoke-virtual {p2}, Lcom/narvii/model/User;->id()Ljava/lang/String;

    move-result-object p2

    iget-object p1, p1, Lcom/narvii/model/SharedFile;->author:Lcom/narvii/model/User;

    invoke-virtual {p1}, Lcom/narvii/model/User;->uid()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Lcom/narvii/util/Utils;->isEqualsNotNull(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_2
    :goto_0
    return v0
.end method

.method private setUpAlbumList(Landroid/os/Bundle;)V
    .locals 4

    .line 221
    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getView()Landroid/view/View;

    move-result-object v0

    const v1, 0x7f09008b

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/narvii/widget/NVListView;

    iput-object v0, p0, Lcom/narvii/sharedfolder/SharedPhotoDetailFragment;->albumList:Lcom/narvii/widget/NVListView;

    .line 222
    iget-object v0, p0, Lcom/narvii/sharedfolder/SharedPhotoDetailFragment;->albumList:Lcom/narvii/widget/NVListView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setDivider(Landroid/graphics/drawable/Drawable;)V

    .line 223
    iget-object v0, p0, Lcom/narvii/sharedfolder/SharedPhotoDetailFragment;->albumList:Lcom/narvii/widget/NVListView;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/widget/ListView;->setDividerHeight(I)V

    .line 224
    iget-object v0, p0, Lcom/narvii/sharedfolder/SharedPhotoDetailFragment;->albumList:Lcom/narvii/widget/NVListView;

    new-instance v3, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v3, v2}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v0, v3}, Landroid/widget/ListView;->setSelector(Landroid/graphics/drawable/Drawable;)V

    .line 225
    iget-object v0, p0, Lcom/narvii/sharedfolder/SharedPhotoDetailFragment;->albumList:Lcom/narvii/widget/NVListView;

    const/4 v2, 0x2

    invoke-virtual {v0, v2}, Landroid/widget/ListView;->setOverScrollMode(I)V

    .line 226
    new-instance v0, Lcom/narvii/sharedfolder/SharedPhotoDetailFragment$AlbumAdapter;

    invoke-direct {v0, p0, p0}, Lcom/narvii/sharedfolder/SharedPhotoDetailFragment$AlbumAdapter;-><init>(Lcom/narvii/sharedfolder/SharedPhotoDetailFragment;Lcom/narvii/app/NVContext;)V

    iput-object v0, p0, Lcom/narvii/sharedfolder/SharedPhotoDetailFragment;->albumAdapter:Lcom/narvii/sharedfolder/SharedPhotoDetailFragment$AlbumAdapter;

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, "albumAdapter"

    .line 228
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v1

    :goto_0
    if-eqz v1, :cond_1

    .line 230
    iget-object p1, p0, Lcom/narvii/sharedfolder/SharedPhotoDetailFragment;->albumAdapter:Lcom/narvii/sharedfolder/SharedPhotoDetailFragment$AlbumAdapter;

    invoke-virtual {p1, v1}, Lcom/narvii/sharedfolder/SharedPhotoDetailFragment$AlbumAdapter;->onRestoreInstanceState(Landroid/os/Bundle;)V

    .line 232
    :cond_1
    iget-object p1, p0, Lcom/narvii/sharedfolder/SharedPhotoDetailFragment;->albumAdapter:Lcom/narvii/sharedfolder/SharedPhotoDetailFragment$AlbumAdapter;

    invoke-virtual {p1}, Lcom/narvii/list/NVPagedAdapter;->onAttach()V

    .line 233
    iget-object p1, p0, Lcom/narvii/sharedfolder/SharedPhotoDetailFragment;->albumList:Lcom/narvii/widget/NVListView;

    iget-object v0, p0, Lcom/narvii/sharedfolder/SharedPhotoDetailFragment;->albumAdapter:Lcom/narvii/sharedfolder/SharedPhotoDetailFragment$AlbumAdapter;

    invoke-virtual {p1, v0}, Lcom/narvii/widget/NVListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 234
    iget-object p1, p0, Lcom/narvii/sharedfolder/SharedPhotoDetailFragment;->albumList:Lcom/narvii/widget/NVListView;

    iget-object v0, p0, Lcom/narvii/sharedfolder/SharedPhotoDetailFragment;->albumAdapter:Lcom/narvii/sharedfolder/SharedPhotoDetailFragment$AlbumAdapter;

    invoke-virtual {p1, v0}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    return-void
.end method

.method private setUpCommentList(Landroid/os/Bundle;)V
    .locals 4

    .line 204
    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getView()Landroid/view/View;

    move-result-object v0

    const v1, 0x7f090296

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/narvii/widget/NVListView;

    iput-object v0, p0, Lcom/narvii/sharedfolder/SharedPhotoDetailFragment;->commentList:Lcom/narvii/widget/NVListView;

    .line 205
    iget-object v0, p0, Lcom/narvii/sharedfolder/SharedPhotoDetailFragment;->commentList:Lcom/narvii/widget/NVListView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setDivider(Landroid/graphics/drawable/Drawable;)V

    .line 206
    iget-object v0, p0, Lcom/narvii/sharedfolder/SharedPhotoDetailFragment;->commentList:Lcom/narvii/widget/NVListView;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/widget/ListView;->setDividerHeight(I)V

    .line 207
    iget-object v0, p0, Lcom/narvii/sharedfolder/SharedPhotoDetailFragment;->commentList:Lcom/narvii/widget/NVListView;

    new-instance v3, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v3, v2}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v0, v3}, Landroid/widget/ListView;->setSelector(Landroid/graphics/drawable/Drawable;)V

    .line 208
    iget-object v0, p0, Lcom/narvii/sharedfolder/SharedPhotoDetailFragment;->commentList:Lcom/narvii/widget/NVListView;

    const/4 v2, 0x2

    invoke-virtual {v0, v2}, Landroid/widget/ListView;->setOverScrollMode(I)V

    .line 209
    new-instance v0, Lcom/narvii/sharedfolder/SharedPhotoDetailFragment$CommentAdapter;

    invoke-direct {v0, p0, p0}, Lcom/narvii/sharedfolder/SharedPhotoDetailFragment$CommentAdapter;-><init>(Lcom/narvii/sharedfolder/SharedPhotoDetailFragment;Lcom/narvii/app/NVContext;)V

    iput-object v0, p0, Lcom/narvii/sharedfolder/SharedPhotoDetailFragment;->commentAdapter:Lcom/narvii/sharedfolder/SharedPhotoDetailFragment$CommentAdapter;

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, "commentAdapter"

    .line 211
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v1

    :goto_0
    if-eqz v1, :cond_1

    .line 213
    iget-object p1, p0, Lcom/narvii/sharedfolder/SharedPhotoDetailFragment;->commentAdapter:Lcom/narvii/sharedfolder/SharedPhotoDetailFragment$CommentAdapter;

    invoke-virtual {p1, v1}, Lcom/narvii/sharedfolder/SharedPhotoDetailFragment$CommentAdapter;->onRestoreInstanceState(Landroid/os/Bundle;)V

    .line 215
    :cond_1
    iget-object p1, p0, Lcom/narvii/sharedfolder/SharedPhotoDetailFragment;->commentAdapter:Lcom/narvii/sharedfolder/SharedPhotoDetailFragment$CommentAdapter;

    invoke-virtual {p1}, Lcom/narvii/list/NVPagedAdapter;->onAttach()V

    .line 216
    iget-object p1, p0, Lcom/narvii/sharedfolder/SharedPhotoDetailFragment;->commentList:Lcom/narvii/widget/NVListView;

    iget-object v0, p0, Lcom/narvii/sharedfolder/SharedPhotoDetailFragment;->commentAdapter:Lcom/narvii/sharedfolder/SharedPhotoDetailFragment$CommentAdapter;

    invoke-virtual {p1, v0}, Lcom/narvii/widget/NVListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 217
    iget-object p1, p0, Lcom/narvii/sharedfolder/SharedPhotoDetailFragment;->commentList:Lcom/narvii/widget/NVListView;

    iget-object v0, p0, Lcom/narvii/sharedfolder/SharedPhotoDetailFragment;->commentAdapter:Lcom/narvii/sharedfolder/SharedPhotoDetailFragment$CommentAdapter;

    invoke-virtual {p1, v0}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    return-void
.end method

.method private setUpSubList()V
    .locals 1

    .line 198
    iget-object v0, p0, Lcom/narvii/sharedfolder/SharedPhotoDetailFragment;->savedInstanceState:Landroid/os/Bundle;

    invoke-direct {p0, v0}, Lcom/narvii/sharedfolder/SharedPhotoDetailFragment;->setUpCommentList(Landroid/os/Bundle;)V

    .line 199
    iget-object v0, p0, Lcom/narvii/sharedfolder/SharedPhotoDetailFragment;->savedInstanceState:Landroid/os/Bundle;

    invoke-direct {p0, v0}, Lcom/narvii/sharedfolder/SharedPhotoDetailFragment;->setUpAlbumList(Landroid/os/Bundle;)V

    const/4 v0, 0x1

    .line 200
    iput-boolean v0, p0, Lcom/narvii/sharedfolder/SharedPhotoDetailFragment;->subListSetted:Z

    return-void
.end method

.method private updateCommentCountView()V
    .locals 1

    .line 817
    iget-object v0, p0, Lcom/narvii/sharedfolder/SharedPhotoDetailFragment;->commentAdapter:Lcom/narvii/sharedfolder/SharedPhotoDetailFragment$CommentAdapter;

    if-eqz v0, :cond_0

    .line 818
    invoke-virtual {v0}, Lcom/narvii/sharedfolder/SharedPhotoDetailFragment$CommentAdapter;->notifyDataSetChanged()V

    :cond_0
    return-void
.end method

.method private updateDetailView()V
    .locals 8

    .line 256
    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getView()Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 260
    :cond_0
    invoke-direct {p0}, Lcom/narvii/sharedfolder/SharedPhotoDetailFragment;->getSharedPhoto()Lcom/narvii/model/SharedFile;

    move-result-object v1

    const/16 v2, 0x8

    if-nez v1, :cond_1

    .line 263
    iget-object v0, p0, Lcom/narvii/sharedfolder/SharedPhotoDetailFragment;->detailLayout:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    return-void

    .line 267
    :cond_1
    iget-object v3, p0, Lcom/narvii/sharedfolder/SharedPhotoDetailFragment;->detailLayout:Landroid/view/View;

    iget-object v4, p0, Lcom/narvii/sharedfolder/SharedPhotoDetailFragment;->hideDetailStatusManager:Lcom/narvii/sharedfolder/HideDetailStatusManager;

    invoke-virtual {v4}, Lcom/narvii/sharedfolder/HideDetailStatusManager;->isHideDetail()Z

    move-result v4

    const/4 v5, 0x0

    if-eqz v4, :cond_2

    goto :goto_0

    :cond_2
    const/4 v2, 0x0

    :goto_0
    invoke-virtual {v3, v2}, Landroid/view/View;->setVisibility(I)V

    const v2, 0x7f090571

    .line 270
    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/narvii/widget/TouchImageView;

    .line 271
    iget-object v3, v1, Lcom/narvii/model/SharedFile;->media:Lcom/narvii/model/Media;

    const/4 v4, 0x1

    if-eqz v3, :cond_3

    iget v3, v3, Lcom/narvii/model/Media;->type:I

    const/16 v6, 0x64

    if-ne v3, v6, :cond_3

    const/4 v3, 0x1

    goto :goto_1

    :cond_3
    const/4 v3, 0x0

    :goto_1
    invoke-virtual {v2, v3}, Lcom/narvii/widget/TouchImageView;->setZoomEnabled(Z)V

    const v3, 0x7f09057d

    .line 272
    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ProgressBar;

    .line 273
    iget-object v6, v1, Lcom/narvii/model/SharedFile;->media:Lcom/narvii/model/Media;

    invoke-virtual {v2, v6}, Lcom/narvii/widget/NVImageView;->setImageMedia(Lcom/narvii/model/Media;)Z

    .line 274
    iget-object v6, v1, Lcom/narvii/model/SharedFile;->media:Lcom/narvii/model/Media;

    if-eqz v6, :cond_5

    iget-object v6, v6, Lcom/narvii/model/Media;->url:Ljava/lang/String;

    if-eqz v6, :cond_5

    invoke-virtual {v2}, Lcom/narvii/widget/NVImageView;->getStatus()I

    move-result v6

    if-ne v6, v4, :cond_5

    .line 275
    invoke-virtual {v2}, Lcom/narvii/widget/NVImageView;->getStatus()I

    move-result v6

    if-ne v6, v4, :cond_4

    const/4 v6, 0x1

    goto :goto_2

    :cond_4
    const/4 v6, 0x0

    :goto_2
    invoke-static {v3, v6}, Lcom/narvii/util/ViewUtils;->show(Landroid/view/View;Z)V

    .line 276
    new-instance v6, Lcom/narvii/sharedfolder/SharedPhotoDetailFragment$1;

    invoke-direct {v6, p0, v3, v2}, Lcom/narvii/sharedfolder/SharedPhotoDetailFragment$1;-><init>(Lcom/narvii/sharedfolder/SharedPhotoDetailFragment;Landroid/widget/ProgressBar;Lcom/narvii/widget/TouchImageView;)V

    invoke-virtual {v2, v6}, Lcom/narvii/widget/NVImageView;->setOnImageChangedListener(Lcom/narvii/widget/NVImageView$OnImageChangedListener;)V

    .line 284
    :cond_5
    iget-object v3, v1, Lcom/narvii/model/SharedFile;->media:Lcom/narvii/model/Media;

    if-eqz v3, :cond_6

    invoke-virtual {v3}, Lcom/narvii/model/Media;->isVideo()Z

    move-result v3

    if-eqz v3, :cond_6

    .line 285
    invoke-virtual {v2}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    .line 286
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v6

    iget v6, v6, Landroid/util/DisplayMetrics;->widthPixels:I

    mul-int/lit8 v6, v6, 0x3

    .line 287
    div-int/lit8 v6, v6, 0x4

    iput v6, v3, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 288
    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_6
    const v2, 0x7f090c10

    .line 291
    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/narvii/widget/UserAvatarLayout;

    .line 292
    iget-object v3, v1, Lcom/narvii/model/SharedFile;->author:Lcom/narvii/model/User;

    invoke-virtual {v2, v3}, Lcom/narvii/widget/UserAvatarLayout;->setUser(Lcom/narvii/model/User;)V

    .line 293
    invoke-virtual {p0}, Lcom/narvii/sharedfolder/SharedPhotoDetailFragment;->isDarkTheme()Z

    move-result v3

    const/high16 v6, -0x1000000

    invoke-virtual {v2, v3, v6}, Lcom/narvii/widget/UserAvatarLayout;->setDarkTheme(ZI)V

    const v2, 0x7f090764

    .line 295
    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/narvii/widget/NicknameView;

    .line 296
    iget-object v3, v1, Lcom/narvii/model/SharedFile;->author:Lcom/narvii/model/User;

    invoke-virtual {v2, v3}, Lcom/narvii/widget/NicknameView;->setUser(Lcom/narvii/model/User;)V

    .line 297
    invoke-virtual {v2}, Lcom/narvii/widget/NicknameView;->getNameView()Landroid/widget/TextView;

    move-result-object v3

    if-eqz v3, :cond_7

    .line 298
    invoke-virtual {v2}, Lcom/narvii/widget/NicknameView;->getNameView()Landroid/widget/TextView;

    move-result-object v2

    const/4 v3, 0x0

    const/high16 v6, 0x33000000

    const/high16 v7, 0x3f800000    # 1.0f

    invoke-virtual {v2, v7, v3, v7, v6}, Landroid/widget/TextView;->setShadowLayer(FFFI)V

    :cond_7
    const v2, 0x7f090c27

    .line 301
    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v2, 0x7f090b9a

    .line 302
    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 303
    iget-object v3, v1, Lcom/narvii/model/SharedFile;->title:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v2, 0x7f09032e

    .line 305
    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    const v3, 0x7f0f1115

    new-array v4, v4, [Ljava/lang/Object;

    .line 306
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-static {v6}, Lcom/narvii/util/DateTimeFormatter;->getInstance(Landroid/content/Context;)Lcom/narvii/util/DateTimeFormatter;

    move-result-object v6

    iget-object v1, v1, Lcom/narvii/model/SharedFile;->createdTime:Ljava/util/Date;

    invoke-virtual {v6, v1}, Lcom/narvii/util/DateTimeFormatter;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v4, v5

    invoke-virtual {p0, v3, v4}, Landroid/support/v4/app/Fragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v1, 0x7f090cd5

    .line 308
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v1, 0x7f09028d

    .line 309
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 311
    invoke-direct {p0}, Lcom/narvii/sharedfolder/SharedPhotoDetailFragment;->updateVoteViews()V

    return-void
.end method

.method private updateVoteViews()V
    .locals 5

    .line 316
    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getView()Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 319
    :cond_0
    invoke-direct {p0}, Lcom/narvii/sharedfolder/SharedPhotoDetailFragment;->getSharedPhoto()Lcom/narvii/model/SharedFile;

    move-result-object v0

    if-nez v0, :cond_1

    return-void

    .line 324
    :cond_1
    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getView()Landroid/view/View;

    move-result-object v1

    const v2, 0x7f090cd5

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 325
    invoke-virtual {v1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 326
    iget-object v2, p0, Lcom/narvii/sharedfolder/SharedPhotoDetailFragment;->longClickVote:Landroid/view/View$OnLongClickListener;

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 328
    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getView()Landroid/view/View;

    move-result-object v1

    const v2, 0x7f090cdc

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/narvii/widget/VoteIcon;

    .line 329
    iget v2, v0, Lcom/narvii/model/SharedFile;->votedValue:I

    invoke-virtual {v1, v2}, Lcom/narvii/widget/VoteIcon;->setVotedValue(I)V

    const/4 v2, -0x1

    .line 330
    invoke-virtual {v1, v2}, Lcom/narvii/widget/VoteIcon;->setNoneColor(I)V

    .line 331
    iget-boolean v2, p0, Lcom/narvii/sharedfolder/SharedPhotoDetailFragment;->voting:Z

    const/16 v3, 0x8

    const/4 v4, 0x0

    if-eqz v2, :cond_2

    const/16 v2, 0x8

    goto :goto_0

    :cond_2
    const/4 v2, 0x0

    :goto_0
    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 333
    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getView()Landroid/view/View;

    move-result-object v1

    const v2, 0x7f090ce0

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/narvii/widget/SpinningView;

    if-eqz v1, :cond_4

    .line 335
    iget-boolean v2, p0, Lcom/narvii/sharedfolder/SharedPhotoDetailFragment;->voting:Z

    if-eqz v2, :cond_3

    const/4 v3, 0x0

    :cond_3
    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 339
    :cond_4
    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getView()Landroid/view/View;

    move-result-object v1

    const v2, 0x7f090cd7

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iget v0, v0, Lcom/narvii/model/SharedFile;->votesCount:I

    if-nez v0, :cond_5

    const v0, 0x7f0f0ae0

    .line 340
    invoke-virtual {p0, v0}, Landroid/support/v4/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 341
    :cond_5
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    .line 340
    :goto_1
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private vote(Ljava/lang/Integer;Lcom/narvii/util/http/ApiService;)V
    .locals 5

    .line 628
    iget-object v0, p0, Lcom/narvii/sharedfolder/SharedPhotoDetailFragment;->photoDetailAdapter:Lcom/narvii/sharedfolder/SharedPhotoDetailFragment$PhotoDetailAdapter;

    invoke-virtual {v0}, Lcom/narvii/detail/DetailAdapter;->getObject()Lcom/narvii/model/NVObject;

    move-result-object v0

    check-cast v0, Lcom/narvii/model/SharedFile;

    if-nez v0, :cond_0

    return-void

    .line 632
    :cond_0
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->isGlobalInteractionScope()Z

    move-result v1

    invoke-static {p1, v0, v1}, Lcom/narvii/story/detail/VoteHelper;->getTargetVotedValue(Ljava/lang/Integer;Lcom/narvii/model/SharedFile;Z)I

    move-result v1

    const/4 v2, 0x1

    if-nez p1, :cond_1

    if-nez v1, :cond_1

    .line 636
    new-instance p1, Lcom/narvii/util/dialog/ActionSheetDialog;

    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/narvii/util/dialog/ActionSheetDialog;-><init>(Landroid/content/Context;)V

    const v0, 0x7f0f1105

    .line 637
    invoke-virtual {p1, v0, v2}, Lcom/narvii/util/dialog/ActionSheetDialog;->addItem(IZ)V

    .line 638
    new-instance v0, Lcom/narvii/sharedfolder/SharedPhotoDetailFragment$6;

    invoke-direct {v0, p0, p2}, Lcom/narvii/sharedfolder/SharedPhotoDetailFragment$6;-><init>(Lcom/narvii/sharedfolder/SharedPhotoDetailFragment;Lcom/narvii/util/http/ApiService;)V

    invoke-virtual {p1, v0}, Lcom/narvii/util/dialog/ActionSheetDialog;->setOnClickListener(Landroid/content/DialogInterface$OnClickListener;)V

    .line 644
    invoke-virtual {p1}, Lcom/narvii/util/dialog/ActionSheetDialog;->show()V

    return-void

    .line 654
    :cond_1
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getParentContext()Lcom/narvii/app/NVContext;

    move-result-object p1

    invoke-static {p1, v0, v1}, Lcom/narvii/util/LiveLayerUtils;->reportVoting(Lcom/narvii/app/NVContext;Lcom/narvii/model/NVObject;I)V

    .line 657
    new-instance p1, Lcom/narvii/story/detail/VoteHelper;

    invoke-direct {p1, p0}, Lcom/narvii/story/detail/VoteHelper;-><init>(Lcom/narvii/app/NVContext;)V

    .line 658
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    new-instance v4, Lcom/narvii/sharedfolder/SharedPhotoDetailFragment$7;

    invoke-direct {v4, p0, v1}, Lcom/narvii/sharedfolder/SharedPhotoDetailFragment$7;-><init>(Lcom/narvii/sharedfolder/SharedPhotoDetailFragment;I)V

    invoke-virtual {p1, v0, v3, p2, v4}, Lcom/narvii/story/detail/VoteHelper;->vote(Lcom/narvii/model/SharedFile;Ljava/lang/Integer;Lcom/narvii/util/http/ApiService;Lcom/narvii/story/detail/VoteHelper$OnVoteListener;)V

    .line 670
    iput-boolean v2, p0, Lcom/narvii/sharedfolder/SharedPhotoDetailFragment;->voting:Z

    .line 671
    invoke-direct {p0}, Lcom/narvii/sharedfolder/SharedPhotoDetailFragment;->updateVoteViews()V

    return-void
.end method


# virtual methods
.method protected changeActionBarBackground()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method protected createAdapter(Landroid/os/Bundle;)Landroid/widget/ListAdapter;
    .locals 0

    .line 371
    new-instance p1, Lcom/narvii/sharedfolder/SharedPhotoDetailFragment$PhotoDetailAdapter;

    invoke-direct {p1, p0, p0}, Lcom/narvii/sharedfolder/SharedPhotoDetailFragment$PhotoDetailAdapter;-><init>(Lcom/narvii/sharedfolder/SharedPhotoDetailFragment;Lcom/narvii/app/NVContext;)V

    iput-object p1, p0, Lcom/narvii/sharedfolder/SharedPhotoDetailFragment;->photoDetailAdapter:Lcom/narvii/sharedfolder/SharedPhotoDetailFragment$PhotoDetailAdapter;

    .line 372
    iget-object p1, p0, Lcom/narvii/sharedfolder/SharedPhotoDetailFragment;->photoDetailAdapter:Lcom/narvii/sharedfolder/SharedPhotoDetailFragment$PhotoDetailAdapter;

    return-object p1
.end method

.method public getCustomTheme()I
    .locals 1

    const v0, 0x7f10000c

    return v0
.end method

.method protected getDetailObjectDisableStrId()I
    .locals 1

    const v0, 0x7f0f0d51

    return v0
.end method

.method public hasPostEntry()Ljava/lang/Boolean;
    .locals 1

    const/4 v0, 0x0

    .line 383
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public isDarkTheme()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method protected isInFlagMode()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public onActiveChanged(Z)V
    .locals 0

    .line 183
    invoke-super {p0, p1}, Lcom/narvii/detail/DetailFragment;->onActiveChanged(Z)V

    if-eqz p1, :cond_0

    .line 184
    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getView()Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-boolean p1, p0, Lcom/narvii/sharedfolder/SharedPhotoDetailFragment;->subListSetted:Z

    if-nez p1, :cond_0

    .line 185
    invoke-direct {p0}, Lcom/narvii/sharedfolder/SharedPhotoDetailFragment;->setUpSubList()V

    :cond_0
    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 2

    const/16 v0, 0x6f

    if-ne p1, v0, :cond_0

    const/4 v0, -0x1

    if-ne p2, v0, :cond_0

    .line 192
    iget-object v0, p0, Lcom/narvii/sharedfolder/SharedPhotoDetailFragment;->photoDetailAdapter:Lcom/narvii/sharedfolder/SharedPhotoDetailFragment$PhotoDetailAdapter;

    const-string v1, "collectionId"

    invoke-virtual {p3, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/narvii/detail/DetailAdapter;->commentNew(Ljava/lang/String;)V

    .line 194
    :cond_0
    invoke-super {p0, p1, p2, p3}, Lcom/narvii/app/NVFragment;->onActivityResult(IILandroid/content/Intent;)V

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 4

    .line 545
    invoke-direct {p0}, Lcom/narvii/sharedfolder/SharedPhotoDetailFragment;->getSharedPhoto()Lcom/narvii/model/SharedFile;

    move-result-object v0

    .line 546
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    goto/16 :goto_2

    :sswitch_0
    const v0, 0x7f090cdc

    .line 580
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/narvii/sharedfolder/SharedPhotoDetailFragment;->voteIconView:Landroid/view/View;

    .line 581
    new-instance p1, Landroid/content/Intent;

    const-string v0, "vote"

    invoke-direct {p1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lcom/narvii/app/NVFragment;->ensureLogin(Landroid/content/Intent;)V

    goto/16 :goto_2

    :sswitch_1
    if-eqz v0, :cond_1

    .line 593
    iget-object p1, v0, Lcom/narvii/model/SharedFile;->author:Lcom/narvii/model/User;

    if-nez p1, :cond_0

    goto :goto_0

    .line 596
    :cond_0
    invoke-static {p0, p1}, Lcom/narvii/user/profile/UserProfileFragment;->intent(Lcom/narvii/app/NVContext;Lcom/narvii/model/User;)Landroid/content/Intent;

    move-result-object p1

    if-eqz p1, :cond_7

    const-string v0, "Source"

    const-string v1, "Shared Folder Media"

    .line 598
    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 599
    invoke-virtual {p0, p1}, Landroid/support/v4/app/Fragment;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_2

    :cond_1
    :goto_0
    return-void

    :sswitch_2
    if-nez v0, :cond_2

    return-void

    .line 552
    :cond_2
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    const v1, 0x7f090571

    if-ne p1, v1, :cond_3

    iget-object p1, v0, Lcom/narvii/model/SharedFile;->media:Lcom/narvii/model/Media;

    if-eqz p1, :cond_3

    invoke-virtual {p1}, Lcom/narvii/model/Media;->isVideo()Z

    move-result p1

    if-eqz p1, :cond_3

    .line 553
    iget-object p1, v0, Lcom/narvii/model/SharedFile;->media:Lcom/narvii/model/Media;

    invoke-static {p1, v0}, Lcom/narvii/video/NVFullScreenVideoActivity;->intent(Lcom/narvii/model/Media;Lcom/narvii/model/NVObject;)Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/support/v4/app/Fragment;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_2

    .line 555
    :cond_3
    iget-object p1, p0, Lcom/narvii/sharedfolder/SharedPhotoDetailFragment;->hideDetailStatusManager:Lcom/narvii/sharedfolder/HideDetailStatusManager;

    invoke-virtual {p1}, Lcom/narvii/sharedfolder/HideDetailStatusManager;->isHideDetail()Z

    move-result p1

    const/16 v0, 0x400

    const-wide/16 v1, 0xc8

    if-nez p1, :cond_4

    .line 557
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    move-result-object p1

    const v3, 0x10a0001

    .line 556
    invoke-static {p1, v3}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object p1

    .line 558
    invoke-virtual {p1, v1, v2}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 559
    iget-object v1, p0, Lcom/narvii/sharedfolder/SharedPhotoDetailFragment;->detailLayout:Landroid/view/View;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 560
    iget-object v1, p0, Lcom/narvii/sharedfolder/SharedPhotoDetailFragment;->detailLayout:Landroid/view/View;

    invoke-virtual {v1, p1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 561
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->isEmbedFragment()Z

    move-result p1

    if-nez p1, :cond_5

    invoke-virtual {p0}, Lcom/narvii/sharedfolder/SharedPhotoDetailFragment;->isInFlagMode()Z

    move-result p1

    if-nez p1, :cond_5

    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object p1

    if-eqz p1, :cond_5

    .line 562
    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/ActionBar;->hide()V

    .line 563
    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/view/Window;->addFlags(I)V

    goto :goto_1

    .line 567
    :cond_4
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    move-result-object p1

    const/high16 v3, 0x10a0000

    .line 566
    invoke-static {p1, v3}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object p1

    .line 568
    invoke-virtual {p1, v1, v2}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 569
    iget-object v1, p0, Lcom/narvii/sharedfolder/SharedPhotoDetailFragment;->detailLayout:Landroid/view/View;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 570
    iget-object v1, p0, Lcom/narvii/sharedfolder/SharedPhotoDetailFragment;->detailLayout:Landroid/view/View;

    invoke-virtual {v1, p1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 571
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->isEmbedFragment()Z

    move-result p1

    if-nez p1, :cond_5

    invoke-virtual {p0}, Lcom/narvii/sharedfolder/SharedPhotoDetailFragment;->isInFlagMode()Z

    move-result p1

    if-nez p1, :cond_5

    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object p1

    if-eqz p1, :cond_5

    .line 572
    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/ActionBar;->show()V

    .line 573
    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/view/Window;->clearFlags(I)V

    .line 576
    :cond_5
    :goto_1
    iget-object p1, p0, Lcom/narvii/sharedfolder/SharedPhotoDetailFragment;->hideDetailStatusManager:Lcom/narvii/sharedfolder/HideDetailStatusManager;

    invoke-virtual {p1}, Lcom/narvii/sharedfolder/HideDetailStatusManager;->isHideDetail()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    invoke-virtual {p1, v0}, Lcom/narvii/sharedfolder/HideDetailStatusManager;->setHideDetail(Z)V

    goto :goto_2

    :sswitch_3
    if-nez v0, :cond_6

    return-void

    .line 588
    :cond_6
    iget-object p1, p0, Lcom/narvii/sharedfolder/SharedPhotoDetailFragment;->photoDetailAdapter:Lcom/narvii/sharedfolder/SharedPhotoDetailFragment$PhotoDetailAdapter;

    if-eqz p1, :cond_7

    .line 589
    invoke-virtual {p1}, Lcom/narvii/detail/DetailAdapter;->commentNew()V

    :cond_7
    :goto_2
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        0x7f09028d -> :sswitch_3
        0x7f090571 -> :sswitch_2
        0x7f090bd8 -> :sswitch_2
        0x7f090c27 -> :sswitch_1
        0x7f090cd5 -> :sswitch_0
    .end sparse-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 142
    invoke-super {p0, p1}, Lcom/narvii/detail/DetailFragment;->onCreate(Landroid/os/Bundle;)V

    const/4 p1, 0x0

    .line 143
    invoke-virtual {p0, p1}, Lcom/narvii/app/NVFragment;->setTitle(Ljava/lang/CharSequence;)V

    .line 144
    new-instance p1, Lcom/narvii/sharedfolder/SharedPhotoColorHelper;

    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/narvii/sharedfolder/SharedPhotoColorHelper;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/narvii/sharedfolder/SharedPhotoDetailFragment;->sharedPhotoColorHelper:Lcom/narvii/sharedfolder/SharedPhotoColorHelper;

    .line 145
    new-instance p1, Lcom/narvii/sharedfolder/SharedFolderHelper;

    invoke-direct {p1, p0}, Lcom/narvii/sharedfolder/SharedFolderHelper;-><init>(Lcom/narvii/app/NVContext;)V

    iput-object p1, p0, Lcom/narvii/sharedfolder/SharedPhotoDetailFragment;->sharedFolderHelper:Lcom/narvii/sharedfolder/SharedFolderHelper;

    const/4 p1, 0x1

    .line 146
    invoke-virtual {p0, p1}, Lcom/narvii/app/NVFragment;->setHasOptionsMenu(Z)V

    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 2

    .line 393
    invoke-super {p0, p1, p2}, Landroid/support/v4/app/Fragment;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    .line 394
    invoke-interface {p1}, Landroid/view/Menu;->clear()V

    const p2, 0x7f0f0fa2

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 395
    invoke-interface {p1, v0, p2, v1, p2}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object p2

    const v1, 0x7f080309

    .line 396
    invoke-interface {p2, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    move-result-object p2

    const/4 v1, 0x2

    .line 397
    invoke-interface {p2, v1}, Landroid/view/MenuItem;->setShowAsActionFlags(I)Landroid/view/MenuItem;

    const p2, 0x7f0f03e1

    .line 398
    invoke-interface {p1, v0, p2, v0, p2}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    const p2, 0x7f0f0f2a

    .line 399
    invoke-interface {p1, v0, p2, v0, p2}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    const p2, 0x7f0f06d5

    .line 400
    invoke-interface {p1, v0, p2, v0, p2}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    const p2, 0x7f0f0094

    .line 401
    invoke-interface {p1, v0, p2, v0, p2}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    const p2, 0x7f0f0348

    .line 402
    invoke-interface {p1, v0, p2, v0, p2}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    const p3, 0x7f0b0625

    const/4 v0, 0x0

    .line 157
    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public onDestroy()V
    .locals 1

    .line 959
    iget-object v0, p0, Lcom/narvii/sharedfolder/SharedPhotoDetailFragment;->hideDetailStatusManager:Lcom/narvii/sharedfolder/HideDetailStatusManager;

    if-eqz v0, :cond_0

    .line 960
    invoke-virtual {v0, p0}, Lcom/narvii/sharedfolder/HideDetailStatusManager;->unRegister(Lcom/narvii/sharedfolder/HideDetailStatusManager$OnHideStatusChangedListener;)V

    .line 962
    :cond_0
    invoke-super {p0}, Lcom/narvii/list/NVListFragment;->onDestroy()V

    return-void
.end method

.method public onHideDetail(Z)V
    .locals 1

    .line 706
    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->isAdded()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 709
    :cond_0
    iget-object v0, p0, Lcom/narvii/sharedfolder/SharedPhotoDetailFragment;->detailLayout:Landroid/view/View;

    if-nez v0, :cond_1

    return-void

    :cond_1
    if-eqz p1, :cond_2

    const/16 p1, 0x8

    goto :goto_0

    :cond_2
    const/4 p1, 0x0

    .line 712
    :goto_0
    invoke-virtual {v0, p1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method protected onListViewCreated(Landroid/widget/ListView;Landroid/os/Bundle;)V
    .locals 0

    .line 162
    invoke-super {p0, p1, p2}, Lcom/narvii/list/NVListFragment;->onListViewCreated(Landroid/widget/ListView;Landroid/os/Bundle;)V

    const/16 p2, 0x8

    .line 163
    invoke-virtual {p1, p2}, Landroid/widget/ListView;->setVisibility(I)V

    return-void
.end method

.method protected onLoginResult(ZLandroid/content/Intent;)V
    .locals 2

    if-eqz p1, :cond_1

    .line 607
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "vote"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string p1, "voteValue"

    .line 609
    invoke-virtual {p2, p1}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const/4 v0, 0x4

    .line 610
    invoke-virtual {p2, p1, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    goto :goto_0

    :cond_0
    move-object p1, v1

    .line 612
    :goto_0
    invoke-direct {p0, p1, v1}, Lcom/narvii/sharedfolder/SharedPhotoDetailFragment;->vote(Ljava/lang/Integer;Lcom/narvii/util/http/ApiService;)V

    return-void

    .line 615
    :cond_1
    invoke-super {p0, p1, p2}, Lcom/narvii/list/NVListFragment;->onLoginResult(ZLandroid/content/Intent;)V

    return-void
.end method

.method public onNotification(Lcom/narvii/notification/Notification;)V
    .locals 3

    .line 681
    invoke-direct {p0}, Lcom/narvii/sharedfolder/SharedPhotoDetailFragment;->getSharedPhoto()Lcom/narvii/model/SharedFile;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 685
    :cond_0
    iget-object v1, p1, Lcom/narvii/notification/Notification;->id:Ljava/lang/String;

    if-eqz v1, :cond_1

    iget-object v2, p1, Lcom/narvii/notification/Notification;->obj:Ljava/lang/Object;

    instance-of v2, v2, Lcom/narvii/model/SharedFile;

    if-eqz v2, :cond_1

    invoke-virtual {v0}, Lcom/narvii/model/SharedFile;->id()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 686
    iget-object v1, p1, Lcom/narvii/notification/Notification;->obj:Ljava/lang/Object;

    if-eqz v1, :cond_1

    .line 687
    check-cast v1, Lcom/narvii/model/SharedFile;

    invoke-virtual {v1}, Lcom/narvii/model/NVObject;->clone()Lcom/narvii/model/NVObject;

    move-result-object v1

    check-cast v1, Lcom/narvii/model/SharedFile;

    .line 688
    iget-object v2, p0, Lcom/narvii/sharedfolder/SharedPhotoDetailFragment;->photoDetailAdapter:Lcom/narvii/sharedfolder/SharedPhotoDetailFragment$PhotoDetailAdapter;

    if-eqz v2, :cond_1

    .line 689
    invoke-virtual {v2, v1}, Lcom/narvii/sharedfolder/SharedPhotoDetailFragment$PhotoDetailAdapter;->setObject(Lcom/narvii/model/SharedFile;)V

    .line 694
    :cond_1
    iget-object v1, p1, Lcom/narvii/notification/Notification;->obj:Ljava/lang/Object;

    instance-of v2, v1, Lcom/narvii/model/Comment;

    if-eqz v2, :cond_4

    check-cast v1, Lcom/narvii/model/Comment;

    iget-object v1, v1, Lcom/narvii/model/Comment;->parentId:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/narvii/detail/DetailFragment;->id()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/narvii/util/Utils;->isEqualsNotNull(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 695
    iget-object v1, p1, Lcom/narvii/notification/Notification;->action:Ljava/lang/String;

    const-string v2, "new"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 696
    iget p1, v0, Lcom/narvii/model/SharedFile;->commentsCount:I

    add-int/lit8 p1, p1, 0x1

    iput p1, v0, Lcom/narvii/model/SharedFile;->commentsCount:I

    goto :goto_0

    .line 697
    :cond_2
    iget-object p1, p1, Lcom/narvii/notification/Notification;->action:Ljava/lang/String;

    const-string v1, "delete"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 698
    iget p1, v0, Lcom/narvii/model/SharedFile;->commentsCount:I

    add-int/lit8 p1, p1, -0x1

    iput p1, v0, Lcom/narvii/model/SharedFile;->commentsCount:I

    .line 700
    :cond_3
    :goto_0
    invoke-direct {p0}, Lcom/narvii/sharedfolder/SharedPhotoDetailFragment;->updateCommentCountView()V

    :cond_4
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 7

    .line 424
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const-string v1, "Fullscreen Media"

    const/4 v2, 0x0

    const v3, 0x7f0f0193

    const/4 v4, 0x0

    const/4 v5, 0x1

    sparse-switch v0, :sswitch_data_0

    goto/16 :goto_0

    .line 426
    :sswitch_0
    invoke-direct {p0}, Lcom/narvii/sharedfolder/SharedPhotoDetailFragment;->getSharedPhoto()Lcom/narvii/model/SharedFile;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 427
    iget-object v0, p1, Lcom/narvii/model/SharedFile;->media:Lcom/narvii/model/Media;

    invoke-virtual {v0}, Lcom/narvii/model/Media;->isVideo()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v2, 0x1

    :cond_0
    xor-int/lit8 v0, v2, 0x1

    .line 428
    invoke-static {p0, p1, v0}, Lcom/narvii/share/ShareDialog;->getShareDialogFromPhoto(Lcom/narvii/app/NVContext;Lcom/narvii/model/SharedFile;Z)Lcom/narvii/share/ShareDialog;

    move-result-object p1

    invoke-virtual {p1, v1}, Lcom/narvii/share/ShareDialog;->setSource(Ljava/lang/String;)Lcom/narvii/share/ShareDialog;

    move-result-object p1

    invoke-virtual {p1}, Lcom/narvii/share/ShareDialog;->show()V

    return v5

    .line 465
    :sswitch_1
    invoke-direct {p0}, Lcom/narvii/sharedfolder/SharedPhotoDetailFragment;->getSharedPhoto()Lcom/narvii/model/SharedFile;

    move-result-object p1

    if-nez p1, :cond_1

    return v5

    .line 469
    :cond_1
    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    const-string v2, "saveImage"

    .line 470
    invoke-virtual {v0, v2}, Landroid/support/v4/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/narvii/media/SaveImageFragment;

    if-nez v0, :cond_2

    .line 472
    new-instance v0, Lcom/narvii/media/SaveImageFragment;

    invoke-direct {v0}, Lcom/narvii/media/SaveImageFragment;-><init>()V

    .line 473
    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v3

    invoke-virtual {v3}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v3

    .line 474
    invoke-virtual {v3, v0, v2}, Landroid/support/v4/app/FragmentTransaction;->add(Landroid/support/v4/app/Fragment;Ljava/lang/String;)Landroid/support/v4/app/FragmentTransaction;

    move-result-object v2

    invoke-virtual {v2}, Landroid/support/v4/app/FragmentTransaction;->commit()I

    .line 475
    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v2

    .line 476
    invoke-virtual {v2}, Landroid/support/v4/app/FragmentManager;->executePendingTransactions()Z

    .line 478
    :cond_2
    iget-object p1, p1, Lcom/narvii/model/SharedFile;->media:Lcom/narvii/model/Media;

    invoke-virtual {v0, p1}, Lcom/narvii/media/SaveImageFragment;->save(Lcom/narvii/model/Media;)V

    .line 480
    new-instance p1, Lcom/narvii/share/ShareViewHelper;

    invoke-direct {p1, p0}, Lcom/narvii/share/ShareViewHelper;-><init>(Lcom/narvii/app/NVContext;)V

    .line 481
    iput-object v1, p1, Lcom/narvii/share/ShareViewHelper;->source:Ljava/lang/String;

    const/16 v0, 0x6d

    .line 482
    invoke-static {p0, v4, v0}, Lcom/narvii/util/StatisticHelper;->getStatisticSource(Lcom/narvii/app/NVContext;Lcom/narvii/model/NVObject;I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/narvii/share/ShareViewHelper;->statContent:Ljava/lang/String;

    const-string v0, "Save Image"

    .line 483
    invoke-virtual {p1, v4, v0}, Lcom/narvii/share/ShareViewHelper;->stat(Lcom/narvii/share/SharePayload;Ljava/lang/String;)V

    return v5

    .line 513
    :sswitch_2
    invoke-direct {p0}, Lcom/narvii/sharedfolder/SharedPhotoDetailFragment;->getSharedPhoto()Lcom/narvii/model/SharedFile;

    move-result-object p1

    .line 514
    new-instance v0, Lcom/narvii/flag/report/FlagReportOptionDialog$Builder;

    invoke-direct {v0, p0}, Lcom/narvii/flag/report/FlagReportOptionDialog$Builder;-><init>(Lcom/narvii/app/NVContext;)V

    .line 515
    invoke-virtual {v0, p1}, Lcom/narvii/flag/report/FlagReportOptionDialog$Builder;->nvObject(Lcom/narvii/model/NVObject;)Lcom/narvii/flag/report/FlagReportOptionDialog$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/narvii/flag/report/FlagReportOptionDialog$Builder;->build()Lcom/narvii/flag/report/FlagReportOptionDialog;

    move-result-object p1

    .line 516
    invoke-virtual {p1}, Lcom/narvii/flag/report/FlagReportOptionDialog;->show()V

    return v5

    .line 432
    :sswitch_3
    new-instance v0, Lcom/narvii/sharedfolder/SharedPhotoDetailFragment$3;

    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/narvii/sharedfolder/SharedPhotoDetailFragment$3;-><init>(Lcom/narvii/sharedfolder/SharedPhotoDetailFragment;Landroid/content/Context;)V

    const v1, 0x7f0f10c4

    .line 438
    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setTitle(I)V

    .line 439
    iget-object v1, v0, Lcom/narvii/widget/InputDialog;->edit:Landroid/widget/EditText;

    const v5, 0x7f0f078c

    invoke-virtual {v1, v5}, Landroid/widget/EditText;->setHint(I)V

    .line 440
    invoke-direct {p0}, Lcom/narvii/sharedfolder/SharedPhotoDetailFragment;->getSharedPhoto()Lcom/narvii/model/SharedFile;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 441
    iget-object v5, v1, Lcom/narvii/model/SharedFile;->title:Ljava/lang/String;

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_3

    .line 442
    iget-object v5, v0, Lcom/narvii/widget/InputDialog;->edit:Landroid/widget/EditText;

    iget-object v6, v1, Lcom/narvii/model/SharedFile;->title:Ljava/lang/String;

    invoke-virtual {v5, v6}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 443
    iget-object v5, v0, Lcom/narvii/widget/InputDialog;->edit:Landroid/widget/EditText;

    iget-object v1, v1, Lcom/narvii/model/SharedFile;->title:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v5, v1}, Landroid/widget/EditText;->setSelection(I)V

    .line 445
    :cond_3
    invoke-virtual {v0, v3, v2, v4}, Lcom/narvii/util/dialog/AlertDialog;->addButton(IILandroid/view/View$OnClickListener;)Landroid/view/View;

    const v1, 0x7f0f03aa

    .line 446
    invoke-virtual {p0, v1}, Landroid/support/v4/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x4

    invoke-virtual {v0, v1, v2, v4}, Lcom/narvii/widget/InputDialog;->addButton(Ljava/lang/CharSequence;ILandroid/view/View$OnClickListener;)Landroid/view/View;

    move-result-object v1

    .line 447
    new-instance v2, Lcom/narvii/sharedfolder/SharedPhotoDetailFragment$4;

    invoke-direct {v2, p0, v0}, Lcom/narvii/sharedfolder/SharedPhotoDetailFragment$4;-><init>(Lcom/narvii/sharedfolder/SharedPhotoDetailFragment;Lcom/narvii/widget/InputDialog;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 462
    invoke-virtual {v0}, Lcom/narvii/app/NVDialog;->show()V

    goto :goto_0

    .line 487
    :sswitch_4
    invoke-direct {p0}, Lcom/narvii/sharedfolder/SharedPhotoDetailFragment;->getSharedPhoto()Lcom/narvii/model/SharedFile;

    move-result-object p1

    .line 488
    new-instance v0, Lcom/narvii/widget/ACMAlertDialog;

    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/narvii/widget/ACMAlertDialog;-><init>(Landroid/content/Context;)V

    const v1, 0x7f0f0398

    .line 489
    invoke-virtual {v0, v1}, Lcom/narvii/widget/ACMAlertDialog;->setMessage(I)V

    .line 490
    invoke-virtual {v0, v3, v4}, Lcom/narvii/widget/ACMAlertDialog;->addButton(ILandroid/view/View$OnClickListener;)Landroid/view/View;

    const v1, 0x7f0f119f

    .line 491
    new-instance v2, Lcom/narvii/sharedfolder/SharedPhotoDetailFragment$5;

    invoke-direct {v2, p0, p1}, Lcom/narvii/sharedfolder/SharedPhotoDetailFragment$5;-><init>(Lcom/narvii/sharedfolder/SharedPhotoDetailFragment;Lcom/narvii/model/SharedFile;)V

    const/high16 p1, -0x10000

    invoke-virtual {v0, v1, v2, p1}, Lcom/narvii/widget/ACMAlertDialog;->addButton(ILandroid/view/View$OnClickListener;I)Landroid/view/View;

    .line 509
    invoke-virtual {v0}, Lcom/narvii/app/NVDialog;->show()V

    return v5

    .line 520
    :sswitch_5
    invoke-direct {p0}, Lcom/narvii/sharedfolder/SharedPhotoDetailFragment;->getSharedPhoto()Lcom/narvii/model/SharedFile;

    move-result-object p1

    .line 521
    new-instance v0, Lcom/narvii/poweruser/AdvancedOptionDialog$Builder;

    invoke-direct {v0, p0}, Lcom/narvii/poweruser/AdvancedOptionDialog$Builder;-><init>(Lcom/narvii/app/NVContext;)V

    invoke-virtual {v0, p1}, Lcom/narvii/poweruser/AdvancedOptionDialog$Builder;->nvObject(Lcom/narvii/model/NVObject;)Lcom/narvii/poweruser/AdvancedOptionDialog$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/narvii/poweruser/AdvancedOptionDialog$Builder;->build()Lcom/narvii/poweruser/AdvancedOptionDialog;

    move-result-object p1

    .line 522
    invoke-virtual {p1}, Lcom/narvii/poweruser/AdvancedOptionDialog;->show()V

    return v5

    .line 526
    :goto_0
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result p1

    return p1

    :sswitch_data_0
    .sparse-switch
        0x7f0f0094 -> :sswitch_5
        0x7f0f0348 -> :sswitch_4
        0x7f0f03e1 -> :sswitch_3
        0x7f0f06d5 -> :sswitch_2
        0x7f0f0f2a -> :sswitch_1
        0x7f0f0fa2 -> :sswitch_0
    .end sparse-switch
.end method

.method public onPostSaveInstanceInPager()V
    .locals 1

    const/4 v0, 0x0

    .line 727
    iput-boolean v0, p0, Lcom/narvii/sharedfolder/SharedPhotoDetailFragment;->willSaveInstanceInPager:Z

    return-void
.end method

.method public onPreSaveInstanceInPager()V
    .locals 1

    const/4 v0, 0x1

    .line 722
    iput-boolean v0, p0, Lcom/narvii/sharedfolder/SharedPhotoDetailFragment;->willSaveInstanceInPager:Z

    return-void
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)V
    .locals 9

    .line 407
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onPrepareOptionsMenu(Landroid/view/Menu;)V

    .line 408
    invoke-direct {p0}, Lcom/narvii/sharedfolder/SharedPhotoDetailFragment;->getSharedPhoto()Lcom/narvii/model/SharedFile;

    move-result-object v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    .line 409
    iget v3, v0, Lcom/narvii/model/SharedFile;->status:I

    const/16 v4, 0x9

    if-eq v3, v4, :cond_0

    const/4 v3, 0x1

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    :goto_0
    const-string v4, "account"

    .line 410
    invoke-virtual {p0, v4}, Lcom/narvii/app/NVFragment;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/narvii/account/AccountService;

    .line 411
    invoke-virtual {v4}, Lcom/narvii/account/AccountService;->getUserProfile()Lcom/narvii/model/User;

    move-result-object v4

    .line 412
    invoke-direct {p0, v0, v4}, Lcom/narvii/sharedfolder/SharedPhotoDetailFragment;->isMine(Lcom/narvii/model/SharedFile;Lcom/narvii/model/User;)Z

    move-result v5

    const v6, 0x7f0f0fa2

    .line 414
    invoke-interface {p1, v6}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v6

    invoke-interface {v6, v3}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    const v6, 0x7f0f03e1

    .line 415
    invoke-interface {p1, v6}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v6

    invoke-interface {v6, v5}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    const v6, 0x7f0f0f2a

    .line 416
    invoke-interface {p1, v6}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v6

    if-eqz v0, :cond_1

    iget-object v7, v0, Lcom/narvii/model/SharedFile;->media:Lcom/narvii/model/Media;

    if-eqz v7, :cond_1

    iget v7, v7, Lcom/narvii/model/Media;->type:I

    const/16 v8, 0x64

    if-ne v7, v8, :cond_1

    const/4 v7, 0x1

    goto :goto_1

    :cond_1
    const/4 v7, 0x0

    :goto_1
    invoke-interface {v6, v7}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    const v6, 0x7f0f06d5

    .line 417
    invoke-interface {p1, v6}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v6

    if-eqz v3, :cond_2

    if-nez v5, :cond_2

    const/4 v3, 0x1

    goto :goto_2

    :cond_2
    const/4 v3, 0x0

    :goto_2
    invoke-interface {v6, v3}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    const v3, 0x7f0f0094

    .line 418
    invoke-interface {p1, v3}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v3

    if-eqz v0, :cond_3

    if-eqz v4, :cond_3

    invoke-virtual {v4}, Lcom/narvii/model/User;->isCurator()Z

    move-result v0

    if-eqz v0, :cond_3

    goto :goto_3

    :cond_3
    const/4 v1, 0x0

    :goto_3
    invoke-interface {v3, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    const v0, 0x7f0f0348

    .line 419
    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object p1

    invoke-interface {p1, v5}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    .line 239
    invoke-super {p0, p1}, Lcom/narvii/list/NVListFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 241
    iget-object v0, p0, Lcom/narvii/sharedfolder/SharedPhotoDetailFragment;->commentAdapter:Lcom/narvii/sharedfolder/SharedPhotoDetailFragment$CommentAdapter;

    if-eqz v0, :cond_0

    .line 242
    invoke-virtual {v0}, Lcom/narvii/sharedfolder/SharedPhotoDetailFragment$CommentAdapter;->onSaveInstanceState()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v1, "commentAdapter"

    .line 244
    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 247
    :cond_0
    iget-object v0, p0, Lcom/narvii/sharedfolder/SharedPhotoDetailFragment;->albumAdapter:Lcom/narvii/sharedfolder/SharedPhotoDetailFragment$AlbumAdapter;

    if-eqz v0, :cond_1

    .line 248
    invoke-virtual {v0}, Lcom/narvii/sharedfolder/SharedPhotoDetailFragment$AlbumAdapter;->onSaveInstanceState()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_1

    const-string v1, "albumAdapter"

    .line 250
    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    :cond_1
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 1

    .line 169
    iput-object p2, p0, Lcom/narvii/sharedfolder/SharedPhotoDetailFragment;->savedInstanceState:Landroid/os/Bundle;

    const v0, 0x7f09080d

    .line 170
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/narvii/sharedfolder/SharedPhotoDetailFragment;->overlayPlaceholder:Landroid/view/View;

    const v0, 0x7f09034d

    .line 171
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/narvii/sharedfolder/SharedPhotoDetailFragment;->detailLayout:Landroid/view/View;

    .line 172
    invoke-super {p0, p1, p2}, Lcom/narvii/detail/DetailFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    const v0, 0x7f090bd8

    .line 173
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f090571

    .line 174
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 175
    invoke-direct {p0}, Lcom/narvii/sharedfolder/SharedPhotoDetailFragment;->updateDetailView()V

    .line 176
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->isActive()Z

    move-result p1

    if-nez p1, :cond_0

    if-eqz p2, :cond_1

    .line 177
    :cond_0
    invoke-direct {p0}, Lcom/narvii/sharedfolder/SharedPhotoDetailFragment;->setUpSubList()V

    :cond_1
    return-void
.end method

.method protected shouldShowNotAvailable(Lcom/narvii/model/NVObject;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public vote(Ljava/lang/Integer;)V
    .locals 1

    const/4 v0, 0x0

    .line 619
    invoke-direct {p0, p1, v0}, Lcom/narvii/sharedfolder/SharedPhotoDetailFragment;->vote(Ljava/lang/Integer;Lcom/narvii/util/http/ApiService;)V

    return-void
.end method
