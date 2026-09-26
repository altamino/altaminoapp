.class public Lcom/narvii/sharedfolder/SharedPhotoDetailFragment;
.super Lcom/narvii/detail/DetailFragment;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcom/narvii/notification/NotificationListener;
.implements Lcom/narvii/sharedfolder/HideDetailStatusManager$OnHideStatusChangedListener;
.implements Lcom/narvii/util/FixedFragmentStatePagerAdapter$FragmentSaveInstanceInPagerListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/narvii/sharedfolder/SharedPhotoDetailFragment$PhotoDetailAdapter;,
        Lcom/narvii/sharedfolder/SharedPhotoDetailFragment$CommentAdapter;,
        Lcom/narvii/sharedfolder/SharedPhotoDetailFragment$AlbumAdapter;
    }
.end annotation


# static fields
.field public static final SHARED_FOLDER_MEDIA:Ljava/lang/String; = "Shared Folder Media"


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

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Lcom/narvii/detail/DetailFragment;-><init>()V

    .line 4
    .line 5
    new-instance v0, Lcom/narvii/sharedfolder/SharedPhotoDetailFragment$2;

    .line 6
    .line 7
    .line 8
    invoke-direct {v0, p0}, Lcom/narvii/sharedfolder/SharedPhotoDetailFragment$2;-><init>(Lcom/narvii/sharedfolder/SharedPhotoDetailFragment;)V

    .line 9
    .line 10
    iput-object v0, p0, Lcom/narvii/sharedfolder/SharedPhotoDetailFragment;->longClickVote:Landroid/view/View$OnLongClickListener;

    .line 11
    .line 12
    new-instance v0, Lcom/narvii/sharedfolder/HideDetailStatusManager;

    .line 13
    .line 14
    .line 15
    invoke-direct {v0}, Lcom/narvii/sharedfolder/HideDetailStatusManager;-><init>()V

    .line 16
    .line 17
    iput-object v0, p0, Lcom/narvii/sharedfolder/SharedPhotoDetailFragment;->hideDetailStatusManager:Lcom/narvii/sharedfolder/HideDetailStatusManager;

    .line 18
    return-void
.end method

.method static bridge synthetic A(Lcom/narvii/sharedfolder/SharedPhotoDetailFragment;Ljava/lang/Integer;Lcom/narvii/util/http/ApiService;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/narvii/sharedfolder/SharedPhotoDetailFragment;->vote(Ljava/lang/Integer;Lcom/narvii/util/http/ApiService;)V

    return-void
.end method

.method private getSharedPhoto()Lcom/narvii/model/SharedFile;
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/sharedfolder/SharedPhotoDetailFragment;->photoDetailAdapter:Lcom/narvii/sharedfolder/SharedPhotoDetailFragment$PhotoDetailAdapter;

    .line 3
    .line 4
    if-nez v0, :cond_0

    .line 5
    const/4 v0, 0x0

    .line 6
    goto :goto_0

    .line 7
    .line 8
    .line 9
    :cond_0
    invoke-virtual {v0}, Lcom/narvii/detail/DetailAdapter;->getObject()Lcom/narvii/model/NVObject;

    .line 10
    move-result-object v0

    .line 11
    .line 12
    check-cast v0, Lcom/narvii/model/SharedFile;

    .line 13
    :goto_0
    return-object v0
.end method

.method private goAllCommentsPage()V
    .locals 3

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Lcom/narvii/sharedfolder/SharedPhotoDetailFragment;->getSharedPhoto()Lcom/narvii/model/SharedFile;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    new-instance v1, Lcom/narvii/comment/list/CommentListFragment$IntentBuilder;

    .line 9
    .line 10
    .line 11
    invoke-direct {v1}, Lcom/narvii/comment/list/CommentListFragment$IntentBuilder;-><init>()V

    .line 12
    .line 13
    .line 14
    invoke-virtual {v0}, Lcom/narvii/model/SharedFile;->objectType()I

    .line 15
    move-result v2

    .line 16
    .line 17
    .line 18
    invoke-virtual {v1, v2}, Lcom/narvii/comment/list/CommentListFragment$IntentBuilder;->parentType(I)Lcom/narvii/comment/list/CommentListFragment$IntentBuilder;

    .line 19
    move-result-object v1

    .line 20
    .line 21
    .line 22
    invoke-virtual {v0}, Lcom/narvii/model/SharedFile;->id()Ljava/lang/String;

    .line 23
    move-result-object v2

    .line 24
    .line 25
    .line 26
    invoke-virtual {v1, v2}, Lcom/narvii/comment/list/CommentListFragment$IntentBuilder;->parentId(Ljava/lang/String;)Lcom/narvii/comment/list/CommentListFragment$IntentBuilder;

    .line 27
    move-result-object v1

    .line 28
    .line 29
    iget-object v0, v0, Lcom/narvii/model/SharedFile;->media:Lcom/narvii/model/Media;

    .line 30
    .line 31
    .line 32
    invoke-virtual {v1, v0}, Lcom/narvii/comment/list/CommentListFragment$IntentBuilder;->background(Lcom/narvii/model/Media;)Lcom/narvii/comment/list/CommentListFragment$IntentBuilder;

    .line 33
    move-result-object v0

    .line 34
    .line 35
    const-string v1, "shared-folder-image"

    .line 36
    .line 37
    .line 38
    invoke-virtual {v0, v1}, Lcom/narvii/comment/list/CommentListFragment$IntentBuilder;->backgroundType(Ljava/lang/String;)Lcom/narvii/comment/list/CommentListFragment$IntentBuilder;

    .line 39
    move-result-object v0

    .line 40
    .line 41
    .line 42
    invoke-virtual {v0}, Lcom/narvii/comment/list/CommentListFragment$IntentBuilder;->build()Landroid/content/Intent;

    .line 43
    move-result-object v0

    .line 44
    .line 45
    .line 46
    invoke-static {p0, v0}, Lcom/narvii/sharedfolder/SharedPhotoDetailFragment;->safedk_Fragment_startActivity_d519b2d71bdac81b1d20f350086c68e6(Landroidx/fragment/app/Fragment;Landroid/content/Intent;)V

    .line 47
    :cond_0
    return-void
.end method

.method public static intent(Lcom/narvii/model/SharedFile;)Landroid/content/Intent;
    .locals 3

    .line 1
    .line 2
    if-nez p0, :cond_0

    .line 3
    const/4 p0, 0x0

    .line 4
    return-object p0

    .line 5
    .line 6
    :cond_0
    const-class v0, Lcom/narvii/sharedfolder/SharedPhotoDetailFragment;

    .line 7
    .line 8
    .line 9
    invoke-static {v0}, Lcom/narvii/app/FragmentWrapperActivity;->intent(Ljava/lang/Class;)Landroid/content/Intent;

    .line 10
    move-result-object v0

    .line 11
    .line 12
    const-string v1, "id"

    .line 13
    .line 14
    .line 15
    invoke-virtual {p0}, Lcom/narvii/model/SharedFile;->id()Ljava/lang/String;

    .line 16
    move-result-object v2

    .line 17
    .line 18
    .line 19
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 20
    .line 21
    const-string v1, "prefetch"

    .line 22
    .line 23
    .line 24
    invoke-static {p0}, Lcom/narvii/util/JacksonUtils;->writeAsString(Ljava/lang/Object;)Ljava/lang/String;

    .line 25
    move-result-object p0

    .line 26
    .line 27
    .line 28
    invoke-virtual {v0, v1, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 29
    return-object v0
.end method

.method private isMine(Lcom/narvii/model/SharedFile;Lcom/narvii/model/User;)Z
    .locals 2

    .line 1
    const/4 v0, 0x0

    .line 2
    .line 3
    if-eqz p1, :cond_2

    .line 4
    .line 5
    iget-object v1, p1, Lcom/narvii/model/SharedFile;->author:Lcom/narvii/model/User;

    .line 6
    .line 7
    if-nez v1, :cond_0

    .line 8
    goto :goto_0

    .line 9
    .line 10
    :cond_0
    if-nez p2, :cond_1

    .line 11
    return v0

    .line 12
    .line 13
    .line 14
    :cond_1
    invoke-virtual {p2}, Lcom/narvii/model/User;->id()Ljava/lang/String;

    .line 15
    move-result-object p2

    .line 16
    .line 17
    iget-object p1, p1, Lcom/narvii/model/SharedFile;->author:Lcom/narvii/model/User;

    .line 18
    .line 19
    .line 20
    invoke-virtual {p1}, Lcom/narvii/model/User;->uid()Ljava/lang/String;

    .line 21
    move-result-object p1

    .line 22
    .line 23
    .line 24
    invoke-static {p2, p1}, Lcom/narvii/util/Utils;->isEqualsNotNull(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 25
    move-result p1

    .line 26
    return p1

    .line 27
    :cond_2
    :goto_0
    return v0
.end method

.method public static safedk_Fragment_startActivity_d519b2d71bdac81b1d20f350086c68e6(Landroidx/fragment/app/Fragment;Landroid/content/Intent;)V
    .locals 1
    .param p0, "p0"    # Landroidx/fragment/app/Fragment;
    .param p1, "p1"    # Landroid/content/Intent;

    const-string v0, "SafeDK-Special|SafeDK: Call> Landroidx/fragment/app/Fragment;->startActivity(Landroid/content/Intent;)V"

    invoke-static {v0}, Lcom/safedk/android/utils/Logger;->d(Ljava/lang/String;)I

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0, p1}, Landroidx/fragment/app/Fragment;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method private setUpAlbumList(Landroid/os/Bundle;)V
    .locals 4

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getView()Landroid/view/View;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    .line 7
    const v1, 0x7f0a00f2

    .line 8
    .line 9
    .line 10
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 11
    move-result-object v0

    .line 12
    .line 13
    check-cast v0, Lcom/narvii/widget/NVListView;

    .line 14
    .line 15
    iput-object v0, p0, Lcom/narvii/sharedfolder/SharedPhotoDetailFragment;->albumList:Lcom/narvii/widget/NVListView;

    .line 16
    const/4 v1, 0x0

    .line 17
    .line 18
    .line 19
    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setDivider(Landroid/graphics/drawable/Drawable;)V

    .line 20
    .line 21
    iget-object v0, p0, Lcom/narvii/sharedfolder/SharedPhotoDetailFragment;->albumList:Lcom/narvii/widget/NVListView;

    .line 22
    const/4 v2, 0x0

    .line 23
    .line 24
    .line 25
    invoke-virtual {v0, v2}, Landroid/widget/ListView;->setDividerHeight(I)V

    .line 26
    .line 27
    iget-object v0, p0, Lcom/narvii/sharedfolder/SharedPhotoDetailFragment;->albumList:Lcom/narvii/widget/NVListView;

    .line 28
    .line 29
    new-instance v3, Landroid/graphics/drawable/ColorDrawable;

    .line 30
    .line 31
    .line 32
    invoke-direct {v3, v2}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    .line 33
    .line 34
    .line 35
    invoke-virtual {v0, v3}, Landroid/widget/AbsListView;->setSelector(Landroid/graphics/drawable/Drawable;)V

    .line 36
    .line 37
    iget-object v0, p0, Lcom/narvii/sharedfolder/SharedPhotoDetailFragment;->albumList:Lcom/narvii/widget/NVListView;

    .line 38
    const/4 v2, 0x2

    .line 39
    .line 40
    .line 41
    invoke-virtual {v0, v2}, Landroid/view/View;->setOverScrollMode(I)V

    .line 42
    .line 43
    new-instance v0, Lcom/narvii/sharedfolder/SharedPhotoDetailFragment$AlbumAdapter;

    .line 44
    .line 45
    .line 46
    invoke-direct {v0, p0, p0}, Lcom/narvii/sharedfolder/SharedPhotoDetailFragment$AlbumAdapter;-><init>(Lcom/narvii/sharedfolder/SharedPhotoDetailFragment;Lcom/narvii/app/NVContext;)V

    .line 47
    .line 48
    iput-object v0, p0, Lcom/narvii/sharedfolder/SharedPhotoDetailFragment;->albumAdapter:Lcom/narvii/sharedfolder/SharedPhotoDetailFragment$AlbumAdapter;

    .line 49
    .line 50
    if-nez p1, :cond_0

    .line 51
    goto :goto_0

    .line 52
    .line 53
    :cond_0
    const-string v0, "albumAdapter"

    .line 54
    .line 55
    .line 56
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    .line 57
    move-result-object v1

    .line 58
    .line 59
    :goto_0
    if-eqz v1, :cond_1

    .line 60
    .line 61
    iget-object p1, p0, Lcom/narvii/sharedfolder/SharedPhotoDetailFragment;->albumAdapter:Lcom/narvii/sharedfolder/SharedPhotoDetailFragment$AlbumAdapter;

    .line 62
    .line 63
    .line 64
    invoke-virtual {p1, v1}, Lcom/narvii/sharedfolder/SharedPhotoDetailFragment$AlbumAdapter;->onRestoreInstanceState(Landroid/os/Bundle;)V

    .line 65
    .line 66
    :cond_1
    iget-object p1, p0, Lcom/narvii/sharedfolder/SharedPhotoDetailFragment;->albumAdapter:Lcom/narvii/sharedfolder/SharedPhotoDetailFragment$AlbumAdapter;

    .line 67
    .line 68
    .line 69
    invoke-virtual {p1}, Lcom/narvii/list/NVPagedAdapter;->onAttach()V

    .line 70
    .line 71
    iget-object p1, p0, Lcom/narvii/sharedfolder/SharedPhotoDetailFragment;->albumList:Lcom/narvii/widget/NVListView;

    .line 72
    .line 73
    iget-object v0, p0, Lcom/narvii/sharedfolder/SharedPhotoDetailFragment;->albumAdapter:Lcom/narvii/sharedfolder/SharedPhotoDetailFragment$AlbumAdapter;

    .line 74
    .line 75
    .line 76
    invoke-virtual {p1, v0}, Lcom/narvii/widget/NVListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 77
    .line 78
    iget-object p1, p0, Lcom/narvii/sharedfolder/SharedPhotoDetailFragment;->albumList:Lcom/narvii/widget/NVListView;

    .line 79
    .line 80
    iget-object v0, p0, Lcom/narvii/sharedfolder/SharedPhotoDetailFragment;->albumAdapter:Lcom/narvii/sharedfolder/SharedPhotoDetailFragment$AlbumAdapter;

    .line 81
    .line 82
    .line 83
    invoke-virtual {p1, v0}, Landroid/widget/AdapterView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 84
    return-void
.end method

.method private setUpCommentList(Landroid/os/Bundle;)V
    .locals 4

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getView()Landroid/view/View;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    .line 7
    const v1, 0x7f0a035e

    .line 8
    .line 9
    .line 10
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 11
    move-result-object v0

    .line 12
    .line 13
    check-cast v0, Lcom/narvii/widget/NVListView;

    .line 14
    .line 15
    iput-object v0, p0, Lcom/narvii/sharedfolder/SharedPhotoDetailFragment;->commentList:Lcom/narvii/widget/NVListView;

    .line 16
    const/4 v1, 0x0

    .line 17
    .line 18
    .line 19
    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setDivider(Landroid/graphics/drawable/Drawable;)V

    .line 20
    .line 21
    iget-object v0, p0, Lcom/narvii/sharedfolder/SharedPhotoDetailFragment;->commentList:Lcom/narvii/widget/NVListView;

    .line 22
    const/4 v2, 0x0

    .line 23
    .line 24
    .line 25
    invoke-virtual {v0, v2}, Landroid/widget/ListView;->setDividerHeight(I)V

    .line 26
    .line 27
    iget-object v0, p0, Lcom/narvii/sharedfolder/SharedPhotoDetailFragment;->commentList:Lcom/narvii/widget/NVListView;

    .line 28
    .line 29
    new-instance v3, Landroid/graphics/drawable/ColorDrawable;

    .line 30
    .line 31
    .line 32
    invoke-direct {v3, v2}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    .line 33
    .line 34
    .line 35
    invoke-virtual {v0, v3}, Landroid/widget/AbsListView;->setSelector(Landroid/graphics/drawable/Drawable;)V

    .line 36
    .line 37
    iget-object v0, p0, Lcom/narvii/sharedfolder/SharedPhotoDetailFragment;->commentList:Lcom/narvii/widget/NVListView;

    .line 38
    const/4 v2, 0x2

    .line 39
    .line 40
    .line 41
    invoke-virtual {v0, v2}, Landroid/view/View;->setOverScrollMode(I)V

    .line 42
    .line 43
    new-instance v0, Lcom/narvii/sharedfolder/SharedPhotoDetailFragment$CommentAdapter;

    .line 44
    .line 45
    .line 46
    invoke-direct {v0, p0, p0}, Lcom/narvii/sharedfolder/SharedPhotoDetailFragment$CommentAdapter;-><init>(Lcom/narvii/sharedfolder/SharedPhotoDetailFragment;Lcom/narvii/app/NVContext;)V

    .line 47
    .line 48
    iput-object v0, p0, Lcom/narvii/sharedfolder/SharedPhotoDetailFragment;->commentAdapter:Lcom/narvii/sharedfolder/SharedPhotoDetailFragment$CommentAdapter;

    .line 49
    .line 50
    if-nez p1, :cond_0

    .line 51
    goto :goto_0

    .line 52
    .line 53
    :cond_0
    const-string v0, "commentAdapter"

    .line 54
    .line 55
    .line 56
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    .line 57
    move-result-object v1

    .line 58
    .line 59
    :goto_0
    if-eqz v1, :cond_1

    .line 60
    .line 61
    iget-object p1, p0, Lcom/narvii/sharedfolder/SharedPhotoDetailFragment;->commentAdapter:Lcom/narvii/sharedfolder/SharedPhotoDetailFragment$CommentAdapter;

    .line 62
    .line 63
    .line 64
    invoke-virtual {p1, v1}, Lcom/narvii/sharedfolder/SharedPhotoDetailFragment$CommentAdapter;->onRestoreInstanceState(Landroid/os/Bundle;)V

    .line 65
    .line 66
    :cond_1
    iget-object p1, p0, Lcom/narvii/sharedfolder/SharedPhotoDetailFragment;->commentAdapter:Lcom/narvii/sharedfolder/SharedPhotoDetailFragment$CommentAdapter;

    .line 67
    .line 68
    .line 69
    invoke-virtual {p1}, Lcom/narvii/list/NVPagedAdapter;->onAttach()V

    .line 70
    .line 71
    iget-object p1, p0, Lcom/narvii/sharedfolder/SharedPhotoDetailFragment;->commentList:Lcom/narvii/widget/NVListView;

    .line 72
    .line 73
    iget-object v0, p0, Lcom/narvii/sharedfolder/SharedPhotoDetailFragment;->commentAdapter:Lcom/narvii/sharedfolder/SharedPhotoDetailFragment$CommentAdapter;

    .line 74
    .line 75
    .line 76
    invoke-virtual {p1, v0}, Lcom/narvii/widget/NVListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 77
    .line 78
    iget-object p1, p0, Lcom/narvii/sharedfolder/SharedPhotoDetailFragment;->commentList:Lcom/narvii/widget/NVListView;

    .line 79
    .line 80
    iget-object v0, p0, Lcom/narvii/sharedfolder/SharedPhotoDetailFragment;->commentAdapter:Lcom/narvii/sharedfolder/SharedPhotoDetailFragment$CommentAdapter;

    .line 81
    .line 82
    .line 83
    invoke-virtual {p1, v0}, Landroid/widget/AdapterView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 84
    return-void
.end method

.method private setUpSubList()V
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/sharedfolder/SharedPhotoDetailFragment;->savedInstanceState:Landroid/os/Bundle;

    .line 3
    .line 4
    .line 5
    invoke-direct {p0, v0}, Lcom/narvii/sharedfolder/SharedPhotoDetailFragment;->setUpCommentList(Landroid/os/Bundle;)V

    .line 6
    .line 7
    iget-object v0, p0, Lcom/narvii/sharedfolder/SharedPhotoDetailFragment;->savedInstanceState:Landroid/os/Bundle;

    .line 8
    .line 9
    .line 10
    invoke-direct {p0, v0}, Lcom/narvii/sharedfolder/SharedPhotoDetailFragment;->setUpAlbumList(Landroid/os/Bundle;)V

    .line 11
    const/4 v0, 0x1

    .line 12
    .line 13
    iput-boolean v0, p0, Lcom/narvii/sharedfolder/SharedPhotoDetailFragment;->subListSetted:Z

    .line 14
    return-void
.end method

.method static bridge synthetic t(Lcom/narvii/sharedfolder/SharedPhotoDetailFragment;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/narvii/sharedfolder/SharedPhotoDetailFragment;->willSaveInstanceInPager:Z

    return p0
.end method

.method static bridge synthetic u(Lcom/narvii/sharedfolder/SharedPhotoDetailFragment;Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/narvii/sharedfolder/SharedPhotoDetailFragment;->voting:Z

    return-void
.end method

.method private updateCommentCountView()V
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/sharedfolder/SharedPhotoDetailFragment;->commentAdapter:Lcom/narvii/sharedfolder/SharedPhotoDetailFragment$CommentAdapter;

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    .line 7
    invoke-virtual {v0}, Lcom/narvii/sharedfolder/SharedPhotoDetailFragment$CommentAdapter;->notifyDataSetChanged()V

    .line 8
    :cond_0
    return-void
.end method

.method private updateDetailView()V
    .locals 8

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getView()Landroid/view/View;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    if-nez v0, :cond_0

    .line 7
    return-void

    .line 8
    .line 9
    .line 10
    :cond_0
    invoke-direct {p0}, Lcom/narvii/sharedfolder/SharedPhotoDetailFragment;->getSharedPhoto()Lcom/narvii/model/SharedFile;

    .line 11
    move-result-object v1

    .line 12
    .line 13
    const/16 v2, 0x8

    .line 14
    .line 15
    if-nez v1, :cond_1

    .line 16
    .line 17
    iget-object v0, p0, Lcom/narvii/sharedfolder/SharedPhotoDetailFragment;->detailLayout:Landroid/view/View;

    .line 18
    .line 19
    .line 20
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 21
    return-void

    .line 22
    .line 23
    :cond_1
    iget-object v3, p0, Lcom/narvii/sharedfolder/SharedPhotoDetailFragment;->detailLayout:Landroid/view/View;

    .line 24
    .line 25
    iget-object v4, p0, Lcom/narvii/sharedfolder/SharedPhotoDetailFragment;->hideDetailStatusManager:Lcom/narvii/sharedfolder/HideDetailStatusManager;

    .line 26
    .line 27
    .line 28
    invoke-virtual {v4}, Lcom/narvii/sharedfolder/HideDetailStatusManager;->isHideDetail()Z

    .line 29
    move-result v4

    .line 30
    const/4 v5, 0x0

    .line 31
    .line 32
    if-eqz v4, :cond_2

    .line 33
    goto :goto_0

    .line 34
    :cond_2
    move v2, v5

    .line 35
    .line 36
    .line 37
    :goto_0
    invoke-virtual {v3, v2}, Landroid/view/View;->setVisibility(I)V

    .line 38
    .line 39
    .line 40
    const v2, 0x7f0a06eb

    .line 41
    .line 42
    .line 43
    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 44
    move-result-object v2

    .line 45
    .line 46
    check-cast v2, Lcom/narvii/widget/TouchImageView;

    .line 47
    .line 48
    iget-object v3, v1, Lcom/narvii/model/SharedFile;->media:Lcom/narvii/model/Media;

    .line 49
    const/4 v4, 0x1

    .line 50
    .line 51
    if-eqz v3, :cond_3

    .line 52
    .line 53
    iget v3, v3, Lcom/narvii/model/Media;->type:I

    .line 54
    .line 55
    const/16 v6, 0x64

    .line 56
    .line 57
    if-ne v3, v6, :cond_3

    .line 58
    move v3, v4

    .line 59
    goto :goto_1

    .line 60
    :cond_3
    move v3, v5

    .line 61
    .line 62
    .line 63
    :goto_1
    invoke-virtual {v2, v3}, Lcom/narvii/widget/TouchImageView;->setZoomEnabled(Z)V

    .line 64
    .line 65
    .line 66
    const v3, 0x7f0a0705

    .line 67
    .line 68
    .line 69
    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 70
    move-result-object v3

    .line 71
    .line 72
    check-cast v3, Landroid/widget/ProgressBar;

    .line 73
    .line 74
    iget-object v6, v1, Lcom/narvii/model/SharedFile;->media:Lcom/narvii/model/Media;

    .line 75
    .line 76
    .line 77
    invoke-virtual {v2, v6}, Lcom/narvii/widget/NVImageView;->setImageMedia(Lcom/narvii/model/Media;)Z

    .line 78
    .line 79
    iget-object v6, v1, Lcom/narvii/model/SharedFile;->media:Lcom/narvii/model/Media;

    .line 80
    .line 81
    if-eqz v6, :cond_5

    .line 82
    .line 83
    iget-object v6, v6, Lcom/narvii/model/Media;->url:Ljava/lang/String;

    .line 84
    .line 85
    if-eqz v6, :cond_5

    .line 86
    .line 87
    .line 88
    invoke-virtual {v2}, Lcom/narvii/widget/NVImageView;->getStatus()I

    .line 89
    move-result v6

    .line 90
    .line 91
    if-ne v6, v4, :cond_5

    .line 92
    .line 93
    .line 94
    invoke-virtual {v2}, Lcom/narvii/widget/NVImageView;->getStatus()I

    .line 95
    move-result v6

    .line 96
    .line 97
    if-ne v6, v4, :cond_4

    .line 98
    move v6, v4

    .line 99
    goto :goto_2

    .line 100
    :cond_4
    move v6, v5

    .line 101
    .line 102
    .line 103
    :goto_2
    invoke-static {v3, v6}, Lcom/narvii/util/ViewUtils;->show(Landroid/view/View;Z)V

    .line 104
    .line 105
    new-instance v6, Lcom/narvii/sharedfolder/SharedPhotoDetailFragment$1;

    .line 106
    .line 107
    .line 108
    invoke-direct {v6, p0, v3, v2}, Lcom/narvii/sharedfolder/SharedPhotoDetailFragment$1;-><init>(Lcom/narvii/sharedfolder/SharedPhotoDetailFragment;Landroid/widget/ProgressBar;Lcom/narvii/widget/TouchImageView;)V

    .line 109
    .line 110
    .line 111
    invoke-virtual {v2, v6}, Lcom/narvii/widget/NVImageView;->setOnImageChangedListener(Lcom/narvii/widget/NVImageView$OnImageChangedListener;)V

    .line 112
    .line 113
    :cond_5
    iget-object v3, v1, Lcom/narvii/model/SharedFile;->media:Lcom/narvii/model/Media;

    .line 114
    .line 115
    if-eqz v3, :cond_6

    .line 116
    .line 117
    .line 118
    invoke-virtual {v3}, Lcom/narvii/model/Media;->isVideo()Z

    .line 119
    move-result v3

    .line 120
    .line 121
    if-eqz v3, :cond_6

    .line 122
    .line 123
    .line 124
    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 125
    move-result-object v3

    .line 126
    .line 127
    .line 128
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    .line 129
    move-result-object v6

    .line 130
    .line 131
    .line 132
    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 133
    move-result-object v6

    .line 134
    .line 135
    .line 136
    invoke-virtual {v6}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    .line 137
    move-result-object v6

    .line 138
    .line 139
    iget v6, v6, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 140
    .line 141
    mul-int/lit8 v6, v6, 0x3

    .line 142
    .line 143
    div-int/lit8 v6, v6, 0x4

    .line 144
    .line 145
    iput v6, v3, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 146
    .line 147
    .line 148
    invoke-virtual {v2, v3}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 149
    .line 150
    .line 151
    :cond_6
    const v2, 0x7f0a0f36

    .line 152
    .line 153
    .line 154
    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 155
    move-result-object v2

    .line 156
    .line 157
    check-cast v2, Lcom/narvii/widget/UserAvatarLayout;

    .line 158
    .line 159
    iget-object v3, v1, Lcom/narvii/model/SharedFile;->author:Lcom/narvii/model/User;

    .line 160
    .line 161
    .line 162
    invoke-virtual {v2, v3}, Lcom/narvii/widget/UserAvatarLayout;->setUser(Lcom/narvii/model/User;)V

    .line 163
    .line 164
    .line 165
    invoke-virtual {p0}, Lcom/narvii/sharedfolder/SharedPhotoDetailFragment;->isDarkTheme()Z

    .line 166
    move-result v3

    .line 167
    .line 168
    const/high16 v6, -0x1000000

    .line 169
    .line 170
    .line 171
    invoke-virtual {v2, v3, v6}, Lcom/narvii/widget/UserAvatarLayout;->setDarkTheme(ZI)V

    .line 172
    .line 173
    .line 174
    const v2, 0x7f0a09f9

    .line 175
    .line 176
    .line 177
    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 178
    move-result-object v2

    .line 179
    .line 180
    check-cast v2, Lcom/narvii/widget/NicknameView;

    .line 181
    .line 182
    iget-object v3, v1, Lcom/narvii/model/SharedFile;->author:Lcom/narvii/model/User;

    .line 183
    .line 184
    .line 185
    invoke-virtual {v2, v3}, Lcom/narvii/widget/NicknameView;->setUser(Lcom/narvii/model/User;)V

    .line 186
    .line 187
    .line 188
    invoke-virtual {v2}, Lcom/narvii/widget/NicknameView;->getNameView()Landroid/widget/TextView;

    .line 189
    move-result-object v3

    .line 190
    .line 191
    if-eqz v3, :cond_7

    .line 192
    .line 193
    .line 194
    invoke-virtual {v2}, Lcom/narvii/widget/NicknameView;->getNameView()Landroid/widget/TextView;

    .line 195
    move-result-object v2

    .line 196
    const/4 v3, 0x0

    .line 197
    .line 198
    const/high16 v6, 0x33000000

    .line 199
    .line 200
    const/high16 v7, 0x3f800000    # 1.0f

    .line 201
    .line 202
    .line 203
    invoke-virtual {v2, v7, v3, v7, v6}, Landroid/widget/TextView;->setShadowLayer(FFFI)V

    .line 204
    .line 205
    .line 206
    :cond_7
    const v2, 0x7f0a0f4b

    .line 207
    .line 208
    .line 209
    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 210
    move-result-object v2

    .line 211
    .line 212
    .line 213
    invoke-virtual {v2, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 214
    .line 215
    .line 216
    const v2, 0x7f0a0e9e

    .line 217
    .line 218
    .line 219
    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 220
    move-result-object v2

    .line 221
    .line 222
    check-cast v2, Landroid/widget/TextView;

    .line 223
    .line 224
    iget-object v3, v1, Lcom/narvii/model/SharedFile;->title:Ljava/lang/String;

    .line 225
    .line 226
    .line 227
    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 228
    .line 229
    .line 230
    const v2, 0x7f0a0408

    .line 231
    .line 232
    .line 233
    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 234
    move-result-object v2

    .line 235
    .line 236
    check-cast v2, Landroid/widget/TextView;

    .line 237
    .line 238
    new-array v3, v4, [Ljava/lang/Object;

    .line 239
    .line 240
    .line 241
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    .line 242
    move-result-object v4

    .line 243
    .line 244
    .line 245
    invoke-static {v4}, Lcom/narvii/util/DateTimeFormatter;->getInstance(Landroid/content/Context;)Lcom/narvii/util/DateTimeFormatter;

    .line 246
    move-result-object v4

    .line 247
    .line 248
    iget-object v1, v1, Lcom/narvii/model/SharedFile;->createdTime:Ljava/util/Date;

    .line 249
    .line 250
    .line 251
    invoke-virtual {v4, v1}, Lcom/narvii/util/DateTimeFormatter;->format(Ljava/util/Date;)Ljava/lang/String;

    .line 252
    move-result-object v1

    .line 253
    .line 254
    aput-object v1, v3, v5

    .line 255
    .line 256
    .line 257
    const v1, 0x7f121220

    .line 258
    .line 259
    .line 260
    invoke-virtual {p0, v1, v3}, Landroidx/fragment/app/Fragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 261
    move-result-object v1

    .line 262
    .line 263
    .line 264
    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 265
    .line 266
    .line 267
    const v1, 0x7f0a0ffb

    .line 268
    .line 269
    .line 270
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 271
    move-result-object v1

    .line 272
    .line 273
    .line 274
    invoke-virtual {v1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 275
    .line 276
    .line 277
    const v1, 0x7f0a0355

    .line 278
    .line 279
    .line 280
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 281
    move-result-object v0

    .line 282
    .line 283
    .line 284
    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 285
    .line 286
    .line 287
    invoke-direct {p0}, Lcom/narvii/sharedfolder/SharedPhotoDetailFragment;->updateVoteViews()V

    .line 288
    return-void
.end method

.method private updateVoteViews()V
    .locals 5

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getView()Landroid/view/View;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    if-nez v0, :cond_0

    .line 7
    return-void

    .line 8
    .line 9
    .line 10
    :cond_0
    invoke-direct {p0}, Lcom/narvii/sharedfolder/SharedPhotoDetailFragment;->getSharedPhoto()Lcom/narvii/model/SharedFile;

    .line 11
    move-result-object v0

    .line 12
    .line 13
    if-nez v0, :cond_1

    .line 14
    return-void

    .line 15
    .line 16
    .line 17
    :cond_1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getView()Landroid/view/View;

    .line 18
    move-result-object v1

    .line 19
    .line 20
    .line 21
    const v2, 0x7f0a0ffb

    .line 22
    .line 23
    .line 24
    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 25
    move-result-object v1

    .line 26
    .line 27
    .line 28
    invoke-virtual {v1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 29
    .line 30
    iget-object v2, p0, Lcom/narvii/sharedfolder/SharedPhotoDetailFragment;->longClickVote:Landroid/view/View$OnLongClickListener;

    .line 31
    .line 32
    .line 33
    invoke-virtual {v1, v2}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 34
    .line 35
    .line 36
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getView()Landroid/view/View;

    .line 37
    move-result-object v1

    .line 38
    .line 39
    .line 40
    const v2, 0x7f0a1002

    .line 41
    .line 42
    .line 43
    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 44
    move-result-object v1

    .line 45
    .line 46
    check-cast v1, Lcom/narvii/widget/VoteIcon;

    .line 47
    .line 48
    iget v2, v0, Lcom/narvii/model/SharedFile;->votedValue:I

    .line 49
    .line 50
    .line 51
    invoke-virtual {v1, v2}, Lcom/narvii/widget/VoteIcon;->setVotedValue(I)V

    .line 52
    const/4 v2, -0x1

    .line 53
    .line 54
    .line 55
    invoke-virtual {v1, v2}, Lcom/narvii/widget/VoteIcon;->setNoneColor(I)V

    .line 56
    .line 57
    iget-boolean v2, p0, Lcom/narvii/sharedfolder/SharedPhotoDetailFragment;->voting:Z

    .line 58
    const/4 v3, 0x0

    .line 59
    .line 60
    const/16 v4, 0x8

    .line 61
    .line 62
    if-eqz v2, :cond_2

    .line 63
    move v2, v4

    .line 64
    goto :goto_0

    .line 65
    :cond_2
    move v2, v3

    .line 66
    .line 67
    .line 68
    :goto_0
    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 69
    .line 70
    .line 71
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getView()Landroid/view/View;

    .line 72
    move-result-object v1

    .line 73
    .line 74
    .line 75
    const v2, 0x7f0a1006

    .line 76
    .line 77
    .line 78
    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 79
    move-result-object v1

    .line 80
    .line 81
    check-cast v1, Lcom/narvii/widget/SpinningView;

    .line 82
    .line 83
    if-eqz v1, :cond_4

    .line 84
    .line 85
    iget-boolean v2, p0, Lcom/narvii/sharedfolder/SharedPhotoDetailFragment;->voting:Z

    .line 86
    .line 87
    if-eqz v2, :cond_3

    .line 88
    goto :goto_1

    .line 89
    :cond_3
    move v3, v4

    .line 90
    .line 91
    .line 92
    :goto_1
    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 93
    .line 94
    .line 95
    :cond_4
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getView()Landroid/view/View;

    .line 96
    move-result-object v1

    .line 97
    .line 98
    .line 99
    const v2, 0x7f0a0ffd

    .line 100
    .line 101
    .line 102
    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 103
    move-result-object v1

    .line 104
    .line 105
    check-cast v1, Landroid/widget/TextView;

    .line 106
    .line 107
    iget v0, v0, Lcom/narvii/model/SharedFile;->votesCount:I

    .line 108
    .line 109
    if-nez v0, :cond_5

    .line 110
    .line 111
    .line 112
    const v0, 0x7f120b8c

    .line 113
    .line 114
    .line 115
    invoke-virtual {p0, v0}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    .line 116
    move-result-object v0

    .line 117
    goto :goto_2

    .line 118
    .line 119
    .line 120
    :cond_5
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 121
    move-result-object v0

    .line 122
    .line 123
    .line 124
    :goto_2
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 125
    return-void
.end method

.method static bridge synthetic v(Lcom/narvii/sharedfolder/SharedPhotoDetailFragment;)Lcom/narvii/model/SharedFile;
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/narvii/sharedfolder/SharedPhotoDetailFragment;->getSharedPhoto()Lcom/narvii/model/SharedFile;

    move-result-object p0

    return-object p0
.end method

.method private vote(Ljava/lang/Integer;Lcom/narvii/util/http/ApiService;)V
    .locals 5

    iget-object v0, p0, Lcom/narvii/sharedfolder/SharedPhotoDetailFragment;->photoDetailAdapter:Lcom/narvii/sharedfolder/SharedPhotoDetailFragment$PhotoDetailAdapter;

    .line 2
    invoke-virtual {v0}, Lcom/narvii/detail/DetailAdapter;->getObject()Lcom/narvii/model/NVObject;

    move-result-object v0

    check-cast v0, Lcom/narvii/model/SharedFile;

    if-nez v0, :cond_0

    return-void

    .line 3
    :cond_0
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->isGlobalInteractionScope()Z

    move-result v1

    invoke-static {p1, v0, v1}, Lcom/narvii/story/detail/VoteHelper;->getTargetVotedValue(Ljava/lang/Integer;Lcom/narvii/model/SharedFile;Z)I

    move-result v1

    const/4 v2, 0x1

    if-nez p1, :cond_1

    if-nez v1, :cond_1

    .line 4
    new-instance p1, Lcom/narvii/util/dialog/ActionSheetDialog;

    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/narvii/util/dialog/ActionSheetDialog;-><init>(Landroid/content/Context;)V

    const v0, 0x7f12120e

    .line 5
    invoke-virtual {p1, v0, v2}, Lcom/narvii/util/dialog/ActionSheetDialog;->addItem(IZ)V

    .line 6
    new-instance v0, Lcom/narvii/sharedfolder/SharedPhotoDetailFragment$6;

    invoke-direct {v0, p0, p2}, Lcom/narvii/sharedfolder/SharedPhotoDetailFragment$6;-><init>(Lcom/narvii/sharedfolder/SharedPhotoDetailFragment;Lcom/narvii/util/http/ApiService;)V

    invoke-virtual {p1, v0}, Lcom/narvii/util/dialog/ActionSheetDialog;->setOnClickListener(Landroid/content/DialogInterface$OnClickListener;)V

    .line 7
    invoke-virtual {p1}, Lcom/narvii/util/dialog/ActionSheetDialog;->show()V

    return-void

    :cond_1
    if-eqz v1, :cond_2

    const-string p1, "statistics"

    .line 8
    invoke-virtual {p0, p1}, Lcom/narvii/app/NVFragment;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/narvii/util/statistics/StatisticsService;

    const-string v3, "Like Post"

    .line 9
    invoke-interface {p1, v3}, Lcom/narvii/util/statistics/StatisticsService;->event(Ljava/lang/String;)Lcom/narvii/util/statistics/StatisticsEventBuilder;

    move-result-object p1

    const-string v3, "post_type"

    const-string v4, "Shared Folder Media"

    .line 10
    invoke-virtual {p1, v3, v4}, Lcom/narvii/util/statistics/StatisticsEventBuilder;->param(Ljava/lang/String;Ljava/lang/String;)Lcom/narvii/util/statistics/StatisticsEventBuilder;

    move-result-object p1

    .line 11
    invoke-virtual {p1, v4}, Lcom/narvii/util/statistics/StatisticsEventBuilder;->source(Ljava/lang/String;)Lcom/narvii/util/statistics/StatisticsEventBuilder;

    move-result-object p1

    const-string v3, "Likes Total"

    .line 12
    invoke-virtual {p1, v3}, Lcom/narvii/util/statistics/StatisticsEventBuilder;->userPropInc(Ljava/lang/String;)Lcom/narvii/util/statistics/StatisticsEventBuilder;

    move-result-object p1

    .line 13
    invoke-static {p0, p1}, Lcom/narvii/util/statistics/FirebaseLogManager;->logEvent(Lcom/narvii/app/NVContext;Lcom/narvii/util/statistics/StatisticsEventBuilder;)V

    .line 14
    :cond_2
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getParentContext()Lcom/narvii/app/NVContext;

    move-result-object p1

    invoke-static {p1, v0, v1}, Lcom/narvii/util/LiveLayerUtils;->reportVoting(Lcom/narvii/app/NVContext;Lcom/narvii/model/NVObject;I)V

    .line 15
    new-instance p1, Lcom/narvii/story/detail/VoteHelper;

    invoke-direct {p1, p0}, Lcom/narvii/story/detail/VoteHelper;-><init>(Lcom/narvii/app/NVContext;)V

    .line 16
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    new-instance v4, Lcom/narvii/sharedfolder/SharedPhotoDetailFragment$7;

    invoke-direct {v4, p0, v1}, Lcom/narvii/sharedfolder/SharedPhotoDetailFragment$7;-><init>(Lcom/narvii/sharedfolder/SharedPhotoDetailFragment;I)V

    invoke-virtual {p1, v0, v3, p2, v4}, Lcom/narvii/story/detail/VoteHelper;->vote(Lcom/narvii/model/SharedFile;Ljava/lang/Integer;Lcom/narvii/util/http/ApiService;Lcom/narvii/story/detail/VoteHelper$OnVoteListener;)V

    iput-boolean v2, p0, Lcom/narvii/sharedfolder/SharedPhotoDetailFragment;->voting:Z

    .line 17
    invoke-direct {p0}, Lcom/narvii/sharedfolder/SharedPhotoDetailFragment;->updateVoteViews()V

    return-void
.end method

.method static bridge synthetic w(Lcom/narvii/sharedfolder/SharedPhotoDetailFragment;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/narvii/sharedfolder/SharedPhotoDetailFragment;->goAllCommentsPage()V

    return-void
.end method

.method static bridge synthetic x(Lcom/narvii/sharedfolder/SharedPhotoDetailFragment;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/narvii/sharedfolder/SharedPhotoDetailFragment;->updateCommentCountView()V

    return-void
.end method

.method static bridge synthetic y(Lcom/narvii/sharedfolder/SharedPhotoDetailFragment;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/narvii/sharedfolder/SharedPhotoDetailFragment;->updateDetailView()V

    return-void
.end method

.method static bridge synthetic z(Lcom/narvii/sharedfolder/SharedPhotoDetailFragment;)V
    .locals 0

    .line 1
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

    .line 1
    .line 2
    new-instance p1, Lcom/narvii/sharedfolder/SharedPhotoDetailFragment$PhotoDetailAdapter;

    .line 3
    .line 4
    .line 5
    invoke-direct {p1, p0, p0}, Lcom/narvii/sharedfolder/SharedPhotoDetailFragment$PhotoDetailAdapter;-><init>(Lcom/narvii/sharedfolder/SharedPhotoDetailFragment;Lcom/narvii/app/NVContext;)V

    .line 6
    .line 7
    iput-object p1, p0, Lcom/narvii/sharedfolder/SharedPhotoDetailFragment;->photoDetailAdapter:Lcom/narvii/sharedfolder/SharedPhotoDetailFragment$PhotoDetailAdapter;

    .line 8
    return-object p1
.end method

.method public getCustomTheme()I
    .locals 1

    const v0, 0x7f13000d

    return v0
.end method

.method protected getDetailObjectDisableStrId()I
    .locals 1

    const v0, 0x7f120e7e

    return v0
.end method

.method public hasPostEntry()Ljava/lang/Boolean;
    .locals 1

    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

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

    .line 1
    .line 2
    .line 3
    invoke-super {p0, p1}, Lcom/narvii/detail/DetailFragment;->onActiveChanged(Z)V

    .line 4
    .line 5
    if-eqz p1, :cond_0

    .line 6
    .line 7
    .line 8
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getView()Landroid/view/View;

    .line 9
    move-result-object p1

    .line 10
    .line 11
    if-eqz p1, :cond_0

    .line 12
    .line 13
    iget-boolean p1, p0, Lcom/narvii/sharedfolder/SharedPhotoDetailFragment;->subListSetted:Z

    .line 14
    .line 15
    if-nez p1, :cond_0

    .line 16
    .line 17
    .line 18
    invoke-direct {p0}, Lcom/narvii/sharedfolder/SharedPhotoDetailFragment;->setUpSubList()V

    .line 19
    :cond_0
    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 2

    .line 1
    .line 2
    const/16 v0, 0x6f

    .line 3
    .line 4
    if-ne p1, v0, :cond_0

    .line 5
    const/4 v0, -0x1

    .line 6
    .line 7
    if-ne p2, v0, :cond_0

    .line 8
    .line 9
    iget-object v0, p0, Lcom/narvii/sharedfolder/SharedPhotoDetailFragment;->photoDetailAdapter:Lcom/narvii/sharedfolder/SharedPhotoDetailFragment$PhotoDetailAdapter;

    .line 10
    .line 11
    const-string v1, "collectionId"

    .line 12
    .line 13
    .line 14
    invoke-virtual {p3, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    .line 15
    move-result-object v1

    .line 16
    .line 17
    .line 18
    invoke-virtual {v0, v1}, Lcom/narvii/detail/DetailAdapter;->commentNew(Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    :cond_0
    invoke-super {p0, p1, p2, p3}, Lcom/narvii/app/NVFragment;->onActivityResult(IILandroid/content/Intent;)V

    .line 22
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 4

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Lcom/narvii/sharedfolder/SharedPhotoDetailFragment;->getSharedPhoto()Lcom/narvii/model/SharedFile;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    .line 7
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    .line 8
    move-result v1

    .line 9
    .line 10
    .line 11
    sparse-switch v1, :sswitch_data_0

    .line 12
    .line 13
    goto/16 :goto_2

    .line 14
    .line 15
    .line 16
    :sswitch_0
    const v0, 0x7f0a1002

    .line 17
    .line 18
    .line 19
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 20
    move-result-object p1

    .line 21
    .line 22
    iput-object p1, p0, Lcom/narvii/sharedfolder/SharedPhotoDetailFragment;->voteIconView:Landroid/view/View;

    .line 23
    .line 24
    new-instance p1, Landroid/content/Intent;

    .line 25
    .line 26
    .line 27
    const-string/jumbo v0, "vote"

    .line 28
    .line 29
    .line 30
    invoke-direct {p1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 31
    .line 32
    .line 33
    invoke-virtual {p0, p1}, Lcom/narvii/app/NVFragment;->ensureLogin(Landroid/content/Intent;)V

    .line 34
    .line 35
    goto/16 :goto_2

    .line 36
    .line 37
    :sswitch_1
    if-eqz v0, :cond_1

    .line 38
    .line 39
    iget-object p1, v0, Lcom/narvii/model/SharedFile;->author:Lcom/narvii/model/User;

    .line 40
    .line 41
    if-nez p1, :cond_0

    .line 42
    goto :goto_0

    .line 43
    .line 44
    .line 45
    :cond_0
    invoke-static {p0, p1}, Lcom/narvii/user/profile/UserProfileFragment;->intent(Lcom/narvii/app/NVContext;Lcom/narvii/model/User;)Landroid/content/Intent;

    .line 46
    move-result-object p1

    .line 47
    .line 48
    if-eqz p1, :cond_7

    .line 49
    .line 50
    const-string v0, "Source"

    .line 51
    .line 52
    const-string v1, "Shared Folder Media"

    .line 53
    .line 54
    .line 55
    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 56
    .line 57
    .line 58
    invoke-static {p0, p1}, Lcom/narvii/sharedfolder/SharedPhotoDetailFragment;->safedk_Fragment_startActivity_d519b2d71bdac81b1d20f350086c68e6(Landroidx/fragment/app/Fragment;Landroid/content/Intent;)V

    .line 59
    .line 60
    goto/16 :goto_2

    .line 61
    :cond_1
    :goto_0
    return-void

    .line 62
    .line 63
    :sswitch_2
    if-nez v0, :cond_2

    .line 64
    return-void

    .line 65
    .line 66
    .line 67
    :cond_2
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    .line 68
    move-result p1

    .line 69
    .line 70
    .line 71
    const v1, 0x7f0a06eb

    .line 72
    .line 73
    if-ne p1, v1, :cond_3

    .line 74
    .line 75
    iget-object p1, v0, Lcom/narvii/model/SharedFile;->media:Lcom/narvii/model/Media;

    .line 76
    .line 77
    if-eqz p1, :cond_3

    .line 78
    .line 79
    .line 80
    invoke-virtual {p1}, Lcom/narvii/model/Media;->isVideo()Z

    .line 81
    move-result p1

    .line 82
    .line 83
    if-eqz p1, :cond_3

    .line 84
    .line 85
    iget-object p1, v0, Lcom/narvii/model/SharedFile;->media:Lcom/narvii/model/Media;

    .line 86
    .line 87
    .line 88
    invoke-static {p1, v0}, Lcom/narvii/video/NVFullScreenVideoActivity;->intent(Lcom/narvii/model/Media;Lcom/narvii/model/NVObject;)Landroid/content/Intent;

    .line 89
    move-result-object p1

    .line 90
    .line 91
    .line 92
    invoke-static {p0, p1}, Lcom/narvii/sharedfolder/SharedPhotoDetailFragment;->safedk_Fragment_startActivity_d519b2d71bdac81b1d20f350086c68e6(Landroidx/fragment/app/Fragment;Landroid/content/Intent;)V

    .line 93
    .line 94
    goto/16 :goto_2

    .line 95
    .line 96
    :cond_3
    iget-object p1, p0, Lcom/narvii/sharedfolder/SharedPhotoDetailFragment;->hideDetailStatusManager:Lcom/narvii/sharedfolder/HideDetailStatusManager;

    .line 97
    .line 98
    .line 99
    invoke-virtual {p1}, Lcom/narvii/sharedfolder/HideDetailStatusManager;->isHideDetail()Z

    .line 100
    move-result p1

    .line 101
    .line 102
    const/16 v0, 0x400

    .line 103
    .line 104
    const-wide/16 v1, 0xc8

    .line 105
    .line 106
    if-nez p1, :cond_4

    .line 107
    .line 108
    .line 109
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    .line 110
    move-result-object p1

    .line 111
    .line 112
    .line 113
    const v3, 0x10a0001

    .line 114
    .line 115
    .line 116
    invoke-static {p1, v3}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    .line 117
    move-result-object p1

    .line 118
    .line 119
    .line 120
    invoke-virtual {p1, v1, v2}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 121
    .line 122
    iget-object v1, p0, Lcom/narvii/sharedfolder/SharedPhotoDetailFragment;->detailLayout:Landroid/view/View;

    .line 123
    .line 124
    const/16 v2, 0x8

    .line 125
    .line 126
    .line 127
    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 128
    .line 129
    iget-object v1, p0, Lcom/narvii/sharedfolder/SharedPhotoDetailFragment;->detailLayout:Landroid/view/View;

    .line 130
    .line 131
    .line 132
    invoke-virtual {v1, p1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 133
    .line 134
    .line 135
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->isEmbedFragment()Z

    .line 136
    move-result p1

    .line 137
    .line 138
    if-nez p1, :cond_5

    .line 139
    .line 140
    .line 141
    invoke-virtual {p0}, Lcom/narvii/sharedfolder/SharedPhotoDetailFragment;->isInFlagMode()Z

    .line 142
    move-result p1

    .line 143
    .line 144
    if-nez p1, :cond_5

    .line 145
    .line 146
    .line 147
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    .line 148
    move-result-object p1

    .line 149
    .line 150
    if-eqz p1, :cond_5

    .line 151
    .line 152
    .line 153
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    .line 154
    move-result-object p1

    .line 155
    .line 156
    .line 157
    invoke-virtual {p1}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    .line 158
    move-result-object p1

    .line 159
    .line 160
    .line 161
    invoke-virtual {p1}, Landroid/app/ActionBar;->hide()V

    .line 162
    .line 163
    .line 164
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    .line 165
    move-result-object p1

    .line 166
    .line 167
    .line 168
    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    .line 169
    move-result-object p1

    .line 170
    .line 171
    .line 172
    invoke-virtual {p1, v0}, Landroid/view/Window;->addFlags(I)V

    .line 173
    goto :goto_1

    .line 174
    .line 175
    .line 176
    :cond_4
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    .line 177
    move-result-object p1

    .line 178
    .line 179
    const/high16 v3, 0x10a0000

    .line 180
    .line 181
    .line 182
    invoke-static {p1, v3}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    .line 183
    move-result-object p1

    .line 184
    .line 185
    .line 186
    invoke-virtual {p1, v1, v2}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 187
    .line 188
    iget-object v1, p0, Lcom/narvii/sharedfolder/SharedPhotoDetailFragment;->detailLayout:Landroid/view/View;

    .line 189
    const/4 v2, 0x0

    .line 190
    .line 191
    .line 192
    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 193
    .line 194
    iget-object v1, p0, Lcom/narvii/sharedfolder/SharedPhotoDetailFragment;->detailLayout:Landroid/view/View;

    .line 195
    .line 196
    .line 197
    invoke-virtual {v1, p1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 198
    .line 199
    .line 200
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->isEmbedFragment()Z

    .line 201
    move-result p1

    .line 202
    .line 203
    if-nez p1, :cond_5

    .line 204
    .line 205
    .line 206
    invoke-virtual {p0}, Lcom/narvii/sharedfolder/SharedPhotoDetailFragment;->isInFlagMode()Z

    .line 207
    move-result p1

    .line 208
    .line 209
    if-nez p1, :cond_5

    .line 210
    .line 211
    .line 212
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    .line 213
    move-result-object p1

    .line 214
    .line 215
    if-eqz p1, :cond_5

    .line 216
    .line 217
    .line 218
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    .line 219
    move-result-object p1

    .line 220
    .line 221
    .line 222
    invoke-virtual {p1}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    .line 223
    move-result-object p1

    .line 224
    .line 225
    .line 226
    invoke-virtual {p1}, Landroid/app/ActionBar;->show()V

    .line 227
    .line 228
    .line 229
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    .line 230
    move-result-object p1

    .line 231
    .line 232
    .line 233
    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    .line 234
    move-result-object p1

    .line 235
    .line 236
    .line 237
    invoke-virtual {p1, v0}, Landroid/view/Window;->clearFlags(I)V

    .line 238
    .line 239
    :cond_5
    :goto_1
    iget-object p1, p0, Lcom/narvii/sharedfolder/SharedPhotoDetailFragment;->hideDetailStatusManager:Lcom/narvii/sharedfolder/HideDetailStatusManager;

    .line 240
    .line 241
    .line 242
    invoke-virtual {p1}, Lcom/narvii/sharedfolder/HideDetailStatusManager;->isHideDetail()Z

    .line 243
    move-result v0

    .line 244
    .line 245
    xor-int/lit8 v0, v0, 0x1

    .line 246
    .line 247
    .line 248
    invoke-virtual {p1, v0}, Lcom/narvii/sharedfolder/HideDetailStatusManager;->setHideDetail(Z)V

    .line 249
    goto :goto_2

    .line 250
    .line 251
    :sswitch_3
    if-nez v0, :cond_6

    .line 252
    return-void

    .line 253
    .line 254
    :cond_6
    iget-object p1, p0, Lcom/narvii/sharedfolder/SharedPhotoDetailFragment;->photoDetailAdapter:Lcom/narvii/sharedfolder/SharedPhotoDetailFragment$PhotoDetailAdapter;

    .line 255
    .line 256
    if-eqz p1, :cond_7

    .line 257
    .line 258
    .line 259
    invoke-virtual {p1}, Lcom/narvii/detail/DetailAdapter;->commentNew()V

    .line 260
    :cond_7
    :goto_2
    return-void

    .line 261
    .line 262
    .line 263
    .line 264
    .line 265
    .line 266
    .line 267
    .line 268
    .line 269
    .line 270
    .line 271
    .line 272
    .line 273
    .line 274
    .line 275
    .line 276
    .line 277
    .line 278
    .line 279
    .line 280
    .line 281
    .line 282
    :sswitch_data_0
    .sparse-switch
        0x7f0a0355 -> :sswitch_3
        0x7f0a06eb -> :sswitch_2
        0x7f0a0ef3 -> :sswitch_2
        0x7f0a0f4b -> :sswitch_1
        0x7f0a0ffb -> :sswitch_0
    .end sparse-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-super {p0, p1}, Lcom/narvii/detail/DetailFragment;->onCreate(Landroid/os/Bundle;)V

    .line 4
    const/4 p1, 0x0

    .line 5
    .line 6
    .line 7
    invoke-virtual {p0, p1}, Lcom/narvii/app/NVFragment;->setTitle(Ljava/lang/CharSequence;)V

    .line 8
    .line 9
    new-instance p1, Lcom/narvii/sharedfolder/SharedPhotoColorHelper;

    .line 10
    .line 11
    .line 12
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    .line 13
    move-result-object v0

    .line 14
    .line 15
    .line 16
    invoke-direct {p1, v0}, Lcom/narvii/sharedfolder/SharedPhotoColorHelper;-><init>(Landroid/content/Context;)V

    .line 17
    .line 18
    iput-object p1, p0, Lcom/narvii/sharedfolder/SharedPhotoDetailFragment;->sharedPhotoColorHelper:Lcom/narvii/sharedfolder/SharedPhotoColorHelper;

    .line 19
    .line 20
    new-instance p1, Lcom/narvii/sharedfolder/SharedFolderHelper;

    .line 21
    .line 22
    .line 23
    invoke-direct {p1, p0}, Lcom/narvii/sharedfolder/SharedFolderHelper;-><init>(Lcom/narvii/app/NVContext;)V

    .line 24
    .line 25
    iput-object p1, p0, Lcom/narvii/sharedfolder/SharedPhotoDetailFragment;->sharedFolderHelper:Lcom/narvii/sharedfolder/SharedFolderHelper;

    .line 26
    const/4 p1, 0x1

    .line 27
    .line 28
    .line 29
    invoke-virtual {p0, p1}, Lcom/narvii/app/NVFragment;->setHasOptionsMenu(Z)V

    .line 30
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 2

    .line 1
    .line 2
    .line 3
    invoke-super {p0, p1, p2}, Landroidx/fragment/app/Fragment;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    .line 4
    .line 5
    .line 6
    invoke-interface {p1}, Landroid/view/Menu;->clear()V

    .line 7
    .line 8
    .line 9
    const p2, 0x7f1210ad

    .line 10
    const/4 v0, 0x1

    .line 11
    const/4 v1, 0x0

    .line 12
    .line 13
    .line 14
    invoke-interface {p1, v1, p2, v0, p2}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    .line 15
    move-result-object p2

    .line 16
    .line 17
    .line 18
    const v0, 0x7f080413

    .line 19
    .line 20
    .line 21
    invoke-interface {p2, v0}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 22
    move-result-object p2

    .line 23
    const/4 v0, 0x2

    .line 24
    .line 25
    .line 26
    invoke-interface {p2, v0}, Landroid/view/MenuItem;->setShowAsActionFlags(I)Landroid/view/MenuItem;

    .line 27
    .line 28
    .line 29
    const p2, 0x7f12044c

    .line 30
    .line 31
    .line 32
    invoke-interface {p1, v1, p2, v1, p2}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    .line 33
    .line 34
    .line 35
    const p2, 0x7f12103c

    .line 36
    .line 37
    .line 38
    invoke-interface {p1, v1, p2, v1, p2}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    .line 39
    .line 40
    .line 41
    const p2, 0x7f120781

    .line 42
    .line 43
    .line 44
    invoke-interface {p1, v1, p2, v1, p2}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    .line 45
    .line 46
    .line 47
    const p2, 0x7f12009d

    .line 48
    .line 49
    .line 50
    invoke-interface {p1, v1, p2, v1, p2}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    .line 51
    .line 52
    .line 53
    const p2, 0x7f1203a0

    .line 54
    .line 55
    .line 56
    invoke-interface {p1, v1, p2, v1, p2}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    .line 57
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1
    .param p2    # Landroid/view/ViewGroup;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p3    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    .line 2
    .line 3
    const p3, 0x7f0d06d4

    .line 4
    const/4 v0, 0x0

    .line 5
    .line 6
    .line 7
    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 8
    move-result-object p1

    .line 9
    return-object p1
.end method

.method public onDestroy()V
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/sharedfolder/SharedPhotoDetailFragment;->hideDetailStatusManager:Lcom/narvii/sharedfolder/HideDetailStatusManager;

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    .line 7
    invoke-virtual {v0, p0}, Lcom/narvii/sharedfolder/HideDetailStatusManager;->unRegister(Lcom/narvii/sharedfolder/HideDetailStatusManager$OnHideStatusChangedListener;)V

    .line 8
    .line 9
    .line 10
    :cond_0
    invoke-super {p0}, Lcom/narvii/list/NVListFragment;->onDestroy()V

    .line 11
    return-void
.end method

.method public onHideDetail(Z)V
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->isAdded()Z

    .line 4
    move-result v0

    .line 5
    .line 6
    if-nez v0, :cond_0

    .line 7
    return-void

    .line 8
    .line 9
    :cond_0
    iget-object v0, p0, Lcom/narvii/sharedfolder/SharedPhotoDetailFragment;->detailLayout:Landroid/view/View;

    .line 10
    .line 11
    if-nez v0, :cond_1

    .line 12
    return-void

    .line 13
    .line 14
    :cond_1
    if-eqz p1, :cond_2

    .line 15
    .line 16
    const/16 p1, 0x8

    .line 17
    goto :goto_0

    .line 18
    :cond_2
    const/4 p1, 0x0

    .line 19
    .line 20
    .line 21
    :goto_0
    invoke-virtual {v0, p1}, Landroid/view/View;->setVisibility(I)V

    .line 22
    return-void
.end method

.method protected onListViewCreated(Landroid/widget/ListView;Landroid/os/Bundle;)V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-super {p0, p1, p2}, Lcom/narvii/list/NVListFragment;->onListViewCreated(Landroid/widget/ListView;Landroid/os/Bundle;)V

    .line 4
    .line 5
    const/16 p2, 0x8

    .line 6
    .line 7
    .line 8
    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    .line 9
    return-void
.end method

.method protected onLoginResult(ZLandroid/content/Intent;)V
    .locals 2

    .line 1
    .line 2
    if-eqz p1, :cond_1

    .line 3
    .line 4
    .line 5
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    .line 9
    const-string/jumbo v1, "vote"

    .line 10
    .line 11
    .line 12
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 13
    move-result v0

    .line 14
    .line 15
    if-eqz v0, :cond_1

    .line 16
    .line 17
    .line 18
    const-string/jumbo p1, "voteValue"

    .line 19
    .line 20
    .line 21
    invoke-virtual {p2, p1}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    .line 22
    move-result v0

    .line 23
    const/4 v1, 0x0

    .line 24
    .line 25
    if-eqz v0, :cond_0

    .line 26
    const/4 v0, 0x4

    .line 27
    .line 28
    .line 29
    invoke-virtual {p2, p1, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    .line 30
    move-result p1

    .line 31
    .line 32
    .line 33
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 34
    move-result-object p1

    .line 35
    goto :goto_0

    .line 36
    :cond_0
    move-object p1, v1

    .line 37
    .line 38
    .line 39
    :goto_0
    invoke-direct {p0, p1, v1}, Lcom/narvii/sharedfolder/SharedPhotoDetailFragment;->vote(Ljava/lang/Integer;Lcom/narvii/util/http/ApiService;)V

    .line 40
    return-void

    .line 41
    .line 42
    .line 43
    :cond_1
    invoke-super {p0, p1, p2}, Lcom/narvii/list/NVListFragment;->onLoginResult(ZLandroid/content/Intent;)V

    .line 44
    return-void
.end method

.method public onNotification(Lcom/narvii/notification/Notification;)V
    .locals 3

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Lcom/narvii/sharedfolder/SharedPhotoDetailFragment;->getSharedPhoto()Lcom/narvii/model/SharedFile;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    if-nez v0, :cond_0

    .line 7
    return-void

    .line 8
    .line 9
    :cond_0
    iget-object v1, p1, Lcom/narvii/notification/Notification;->id:Ljava/lang/String;

    .line 10
    .line 11
    if-eqz v1, :cond_1

    .line 12
    .line 13
    iget-object v2, p1, Lcom/narvii/notification/Notification;->obj:Ljava/lang/Object;

    .line 14
    .line 15
    instance-of v2, v2, Lcom/narvii/model/SharedFile;

    .line 16
    .line 17
    if-eqz v2, :cond_1

    .line 18
    .line 19
    .line 20
    invoke-virtual {v0}, Lcom/narvii/model/SharedFile;->id()Ljava/lang/String;

    .line 21
    move-result-object v2

    .line 22
    .line 23
    .line 24
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 25
    move-result v1

    .line 26
    .line 27
    if-eqz v1, :cond_1

    .line 28
    .line 29
    iget-object v1, p1, Lcom/narvii/notification/Notification;->obj:Ljava/lang/Object;

    .line 30
    .line 31
    if-eqz v1, :cond_1

    .line 32
    .line 33
    check-cast v1, Lcom/narvii/model/SharedFile;

    .line 34
    .line 35
    .line 36
    invoke-virtual {v1}, Lcom/narvii/model/NVObject;->clone()Lcom/narvii/model/NVObject;

    .line 37
    move-result-object v1

    .line 38
    .line 39
    check-cast v1, Lcom/narvii/model/SharedFile;

    .line 40
    .line 41
    iget-object v2, p0, Lcom/narvii/sharedfolder/SharedPhotoDetailFragment;->photoDetailAdapter:Lcom/narvii/sharedfolder/SharedPhotoDetailFragment$PhotoDetailAdapter;

    .line 42
    .line 43
    if-eqz v2, :cond_1

    .line 44
    .line 45
    .line 46
    invoke-virtual {v2, v1}, Lcom/narvii/sharedfolder/SharedPhotoDetailFragment$PhotoDetailAdapter;->setObject(Lcom/narvii/model/SharedFile;)V

    .line 47
    .line 48
    :cond_1
    iget-object v1, p1, Lcom/narvii/notification/Notification;->obj:Ljava/lang/Object;

    .line 49
    .line 50
    instance-of v2, v1, Lcom/narvii/model/Comment;

    .line 51
    .line 52
    if-eqz v2, :cond_4

    .line 53
    .line 54
    check-cast v1, Lcom/narvii/model/Comment;

    .line 55
    .line 56
    iget-object v1, v1, Lcom/narvii/model/Comment;->parentId:Ljava/lang/String;

    .line 57
    .line 58
    .line 59
    invoke-virtual {p0}, Lcom/narvii/detail/DetailFragment;->id()Ljava/lang/String;

    .line 60
    move-result-object v2

    .line 61
    .line 62
    .line 63
    invoke-static {v1, v2}, Lcom/narvii/util/Utils;->isEqualsNotNull(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 64
    move-result v1

    .line 65
    .line 66
    if-eqz v1, :cond_4

    .line 67
    .line 68
    iget-object v1, p1, Lcom/narvii/notification/Notification;->action:Ljava/lang/String;

    .line 69
    .line 70
    const-string v2, "new"

    .line 71
    .line 72
    .line 73
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 74
    move-result v1

    .line 75
    .line 76
    if-eqz v1, :cond_2

    .line 77
    .line 78
    iget p1, v0, Lcom/narvii/model/SharedFile;->commentsCount:I

    .line 79
    .line 80
    add-int/lit8 p1, p1, 0x1

    .line 81
    .line 82
    iput p1, v0, Lcom/narvii/model/SharedFile;->commentsCount:I

    .line 83
    goto :goto_0

    .line 84
    .line 85
    :cond_2
    iget-object p1, p1, Lcom/narvii/notification/Notification;->action:Ljava/lang/String;

    .line 86
    .line 87
    const-string v1, "delete"

    .line 88
    .line 89
    .line 90
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 91
    move-result p1

    .line 92
    .line 93
    if-eqz p1, :cond_3

    .line 94
    .line 95
    iget p1, v0, Lcom/narvii/model/SharedFile;->commentsCount:I

    .line 96
    .line 97
    add-int/lit8 p1, p1, -0x1

    .line 98
    .line 99
    iput p1, v0, Lcom/narvii/model/SharedFile;->commentsCount:I

    .line 100
    .line 101
    .line 102
    :cond_3
    :goto_0
    invoke-direct {p0}, Lcom/narvii/sharedfolder/SharedPhotoDetailFragment;->updateCommentCountView()V

    .line 103
    :cond_4
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 7

    .line 1
    .line 2
    .line 3
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    .line 4
    move-result v0

    .line 5
    .line 6
    .line 7
    const v1, 0x7f1201e2

    .line 8
    .line 9
    const-string v2, "Fullscreen Media"

    .line 10
    const/4 v3, 0x0

    .line 11
    const/4 v4, 0x0

    .line 12
    const/4 v5, 0x1

    .line 13
    .line 14
    .line 15
    sparse-switch v0, :sswitch_data_0

    .line 16
    .line 17
    goto/16 :goto_0

    .line 18
    .line 19
    .line 20
    :sswitch_0
    invoke-direct {p0}, Lcom/narvii/sharedfolder/SharedPhotoDetailFragment;->getSharedPhoto()Lcom/narvii/model/SharedFile;

    .line 21
    move-result-object p1

    .line 22
    .line 23
    if-eqz p1, :cond_0

    .line 24
    .line 25
    iget-object v0, p1, Lcom/narvii/model/SharedFile;->media:Lcom/narvii/model/Media;

    .line 26
    .line 27
    .line 28
    invoke-virtual {v0}, Lcom/narvii/model/Media;->isVideo()Z

    .line 29
    move-result v0

    .line 30
    .line 31
    if-eqz v0, :cond_0

    .line 32
    move v3, v5

    .line 33
    .line 34
    :cond_0
    xor-int/lit8 v0, v3, 0x1

    .line 35
    .line 36
    .line 37
    invoke-static {p0, p1, v0}, Lcom/narvii/share/ShareDialog;->getShareDialogFromPhoto(Lcom/narvii/app/NVContext;Lcom/narvii/model/SharedFile;Z)Lcom/narvii/share/ShareDialog;

    .line 38
    move-result-object p1

    .line 39
    .line 40
    .line 41
    invoke-virtual {p1, v2}, Lcom/narvii/share/ShareDialog;->setSource(Ljava/lang/String;)Lcom/narvii/share/ShareDialog;

    .line 42
    move-result-object p1

    .line 43
    .line 44
    .line 45
    invoke-virtual {p1}, Lcom/narvii/share/ShareDialog;->show()V

    .line 46
    return v5

    .line 47
    .line 48
    .line 49
    :sswitch_1
    invoke-direct {p0}, Lcom/narvii/sharedfolder/SharedPhotoDetailFragment;->getSharedPhoto()Lcom/narvii/model/SharedFile;

    .line 50
    move-result-object p1

    .line 51
    .line 52
    if-nez p1, :cond_1

    .line 53
    return v5

    .line 54
    .line 55
    .line 56
    :cond_1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getFragmentManager()Landroidx/fragment/app/FragmentManager;

    .line 57
    move-result-object v0

    .line 58
    .line 59
    const-string v1, "saveImage"

    .line 60
    .line 61
    .line 62
    invoke-virtual {v0, v1}, Landroidx/fragment/app/FragmentManager;->m0(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    .line 63
    move-result-object v0

    .line 64
    .line 65
    check-cast v0, Lcom/narvii/media/SaveImageFragment;

    .line 66
    .line 67
    if-nez v0, :cond_2

    .line 68
    .line 69
    new-instance v0, Lcom/narvii/media/SaveImageFragment;

    .line 70
    .line 71
    .line 72
    invoke-direct {v0}, Lcom/narvii/media/SaveImageFragment;-><init>()V

    .line 73
    .line 74
    .line 75
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getFragmentManager()Landroidx/fragment/app/FragmentManager;

    .line 76
    move-result-object v3

    .line 77
    .line 78
    .line 79
    invoke-virtual {v3}, Landroidx/fragment/app/FragmentManager;->q()Landroidx/fragment/app/FragmentTransaction;

    .line 80
    move-result-object v3

    .line 81
    .line 82
    .line 83
    invoke-virtual {v3, v0, v1}, Landroidx/fragment/app/FragmentTransaction;->e(Landroidx/fragment/app/Fragment;Ljava/lang/String;)Landroidx/fragment/app/FragmentTransaction;

    .line 84
    move-result-object v1

    .line 85
    .line 86
    .line 87
    invoke-virtual {v1}, Landroidx/fragment/app/FragmentTransaction;->j()I

    .line 88
    .line 89
    .line 90
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getFragmentManager()Landroidx/fragment/app/FragmentManager;

    .line 91
    move-result-object v1

    .line 92
    .line 93
    .line 94
    invoke-virtual {v1}, Landroidx/fragment/app/FragmentManager;->i0()Z

    .line 95
    .line 96
    :cond_2
    iget-object p1, p1, Lcom/narvii/model/SharedFile;->media:Lcom/narvii/model/Media;

    .line 97
    .line 98
    .line 99
    invoke-virtual {v0, p1}, Lcom/narvii/media/SaveImageFragment;->save(Lcom/narvii/model/Media;)V

    .line 100
    .line 101
    new-instance p1, Lcom/narvii/share/ShareViewHelper;

    .line 102
    .line 103
    .line 104
    invoke-direct {p1, p0}, Lcom/narvii/share/ShareViewHelper;-><init>(Lcom/narvii/app/NVContext;)V

    .line 105
    .line 106
    iput-object v2, p1, Lcom/narvii/share/ShareViewHelper;->source:Ljava/lang/String;

    .line 107
    .line 108
    const/16 v0, 0x6d

    .line 109
    .line 110
    .line 111
    invoke-static {p0, v4, v0}, Lcom/narvii/util/StatisticHelper;->getStatisticSource(Lcom/narvii/app/NVContext;Lcom/narvii/model/NVObject;I)Ljava/lang/String;

    .line 112
    move-result-object v0

    .line 113
    .line 114
    iput-object v0, p1, Lcom/narvii/share/ShareViewHelper;->statContent:Ljava/lang/String;

    .line 115
    .line 116
    const-string v0, "Save Image"

    .line 117
    .line 118
    .line 119
    invoke-virtual {p1, v4, v0}, Lcom/narvii/share/ShareViewHelper;->stat(Lcom/narvii/share/SharePayload;Ljava/lang/String;)V

    .line 120
    return v5

    .line 121
    .line 122
    .line 123
    :sswitch_2
    invoke-direct {p0}, Lcom/narvii/sharedfolder/SharedPhotoDetailFragment;->getSharedPhoto()Lcom/narvii/model/SharedFile;

    .line 124
    move-result-object p1

    .line 125
    .line 126
    new-instance v0, Lcom/narvii/flag/report/FlagReportOptionDialog$Builder;

    .line 127
    .line 128
    .line 129
    invoke-direct {v0, p0}, Lcom/narvii/flag/report/FlagReportOptionDialog$Builder;-><init>(Lcom/narvii/app/NVContext;)V

    .line 130
    .line 131
    .line 132
    invoke-virtual {v0, p1}, Lcom/narvii/flag/report/FlagReportOptionDialog$Builder;->nvObject(Lcom/narvii/model/NVObject;)Lcom/narvii/flag/report/FlagReportOptionDialog$Builder;

    .line 133
    move-result-object p1

    .line 134
    .line 135
    .line 136
    invoke-virtual {p1}, Lcom/narvii/flag/report/FlagReportOptionDialog$Builder;->build()Lcom/narvii/flag/report/FlagReportOptionDialog;

    .line 137
    move-result-object p1

    .line 138
    .line 139
    .line 140
    invoke-virtual {p1}, Lcom/narvii/flag/report/FlagReportOptionDialog;->show()V

    .line 141
    return v5

    .line 142
    .line 143
    :sswitch_3
    new-instance v0, Lcom/narvii/sharedfolder/SharedPhotoDetailFragment$3;

    .line 144
    .line 145
    .line 146
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    .line 147
    move-result-object v2

    .line 148
    .line 149
    .line 150
    invoke-direct {v0, p0, v2}, Lcom/narvii/sharedfolder/SharedPhotoDetailFragment$3;-><init>(Lcom/narvii/sharedfolder/SharedPhotoDetailFragment;Landroid/content/Context;)V

    .line 151
    .line 152
    .line 153
    const v2, 0x7f1211bf

    .line 154
    .line 155
    .line 156
    invoke-virtual {v0, v2}, Landroid/app/Dialog;->setTitle(I)V

    .line 157
    .line 158
    iget-object v2, v0, Lcom/narvii/widget/InputDialog;->edit:Landroid/widget/EditText;

    .line 159
    .line 160
    .line 161
    const v5, 0x7f120843

    .line 162
    .line 163
    .line 164
    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setHint(I)V

    .line 165
    .line 166
    .line 167
    invoke-direct {p0}, Lcom/narvii/sharedfolder/SharedPhotoDetailFragment;->getSharedPhoto()Lcom/narvii/model/SharedFile;

    .line 168
    move-result-object v2

    .line 169
    .line 170
    if-eqz v2, :cond_3

    .line 171
    .line 172
    iget-object v5, v2, Lcom/narvii/model/SharedFile;->title:Ljava/lang/String;

    .line 173
    .line 174
    .line 175
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 176
    move-result v5

    .line 177
    .line 178
    if-nez v5, :cond_3

    .line 179
    .line 180
    iget-object v5, v0, Lcom/narvii/widget/InputDialog;->edit:Landroid/widget/EditText;

    .line 181
    .line 182
    iget-object v6, v2, Lcom/narvii/model/SharedFile;->title:Ljava/lang/String;

    .line 183
    .line 184
    .line 185
    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 186
    .line 187
    iget-object v5, v0, Lcom/narvii/widget/InputDialog;->edit:Landroid/widget/EditText;

    .line 188
    .line 189
    iget-object v2, v2, Lcom/narvii/model/SharedFile;->title:Ljava/lang/String;

    .line 190
    .line 191
    .line 192
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    .line 193
    move-result v2

    .line 194
    .line 195
    .line 196
    invoke-virtual {v5, v2}, Landroid/widget/EditText;->setSelection(I)V

    .line 197
    .line 198
    .line 199
    :cond_3
    invoke-virtual {v0, v1, v3, v4}, Lcom/narvii/util/dialog/AlertDialog;->addButton(IILandroid/view/View$OnClickListener;)Landroid/view/View;

    .line 200
    .line 201
    .line 202
    const v1, 0x7f120402

    .line 203
    .line 204
    .line 205
    invoke-virtual {p0, v1}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    .line 206
    move-result-object v1

    .line 207
    const/4 v2, 0x4

    .line 208
    .line 209
    .line 210
    invoke-virtual {v0, v1, v2, v4}, Lcom/narvii/widget/InputDialog;->addButton(Ljava/lang/CharSequence;ILandroid/view/View$OnClickListener;)Landroid/view/View;

    .line 211
    move-result-object v1

    .line 212
    .line 213
    new-instance v2, Lcom/narvii/sharedfolder/SharedPhotoDetailFragment$4;

    .line 214
    .line 215
    .line 216
    invoke-direct {v2, p0, v0}, Lcom/narvii/sharedfolder/SharedPhotoDetailFragment$4;-><init>(Lcom/narvii/sharedfolder/SharedPhotoDetailFragment;Lcom/narvii/widget/InputDialog;)V

    .line 217
    .line 218
    .line 219
    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 220
    .line 221
    .line 222
    invoke-virtual {v0}, Lcom/narvii/app/NVDialog;->show()V

    .line 223
    .line 224
    .line 225
    :goto_0
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    .line 226
    move-result p1

    .line 227
    return p1

    .line 228
    .line 229
    .line 230
    :sswitch_4
    invoke-direct {p0}, Lcom/narvii/sharedfolder/SharedPhotoDetailFragment;->getSharedPhoto()Lcom/narvii/model/SharedFile;

    .line 231
    move-result-object p1

    .line 232
    .line 233
    new-instance v0, Lcom/narvii/widget/ACMAlertDialog;

    .line 234
    .line 235
    .line 236
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    .line 237
    move-result-object v2

    .line 238
    .line 239
    .line 240
    invoke-direct {v0, v2}, Lcom/narvii/widget/ACMAlertDialog;-><init>(Landroid/content/Context;)V

    .line 241
    .line 242
    .line 243
    const v2, 0x7f1203f4

    .line 244
    .line 245
    .line 246
    invoke-virtual {v0, v2}, Lcom/narvii/widget/ACMAlertDialog;->setMessage(I)V

    .line 247
    .line 248
    .line 249
    invoke-virtual {v0, v1, v4}, Lcom/narvii/widget/ACMAlertDialog;->addButton(ILandroid/view/View$OnClickListener;)Landroid/view/View;

    .line 250
    .line 251
    new-instance v1, Lcom/narvii/sharedfolder/SharedPhotoDetailFragment$5;

    .line 252
    .line 253
    .line 254
    invoke-direct {v1, p0, p1}, Lcom/narvii/sharedfolder/SharedPhotoDetailFragment$5;-><init>(Lcom/narvii/sharedfolder/SharedPhotoDetailFragment;Lcom/narvii/model/SharedFile;)V

    .line 255
    .line 256
    const/high16 p1, -0x10000

    .line 257
    .line 258
    .line 259
    const v2, 0x7f1212a7

    .line 260
    .line 261
    .line 262
    invoke-virtual {v0, v2, v1, p1}, Lcom/narvii/widget/ACMAlertDialog;->addButton(ILandroid/view/View$OnClickListener;I)Landroid/view/View;

    .line 263
    .line 264
    .line 265
    invoke-virtual {v0}, Lcom/narvii/app/NVDialog;->show()V

    .line 266
    return v5

    .line 267
    .line 268
    .line 269
    :sswitch_5
    invoke-direct {p0}, Lcom/narvii/sharedfolder/SharedPhotoDetailFragment;->getSharedPhoto()Lcom/narvii/model/SharedFile;

    .line 270
    move-result-object p1

    .line 271
    .line 272
    new-instance v0, Lcom/narvii/poweruser/AdvancedOptionDialog$Builder;

    .line 273
    .line 274
    .line 275
    invoke-direct {v0, p0}, Lcom/narvii/poweruser/AdvancedOptionDialog$Builder;-><init>(Lcom/narvii/app/NVContext;)V

    .line 276
    .line 277
    .line 278
    invoke-virtual {v0, p1}, Lcom/narvii/poweruser/AdvancedOptionDialog$Builder;->nvObject(Lcom/narvii/model/NVObject;)Lcom/narvii/poweruser/AdvancedOptionDialog$Builder;

    .line 279
    move-result-object p1

    .line 280
    .line 281
    .line 282
    invoke-virtual {p1}, Lcom/narvii/poweruser/AdvancedOptionDialog$Builder;->build()Lcom/narvii/poweruser/AdvancedOptionDialog;

    .line 283
    move-result-object p1

    .line 284
    .line 285
    .line 286
    invoke-virtual {p1}, Lcom/narvii/poweruser/AdvancedOptionDialog;->show()V

    .line 287
    return v5

    .line 288
    nop

    .line 289
    .line 290
    .line 291
    .line 292
    .line 293
    .line 294
    .line 295
    .line 296
    .line 297
    .line 298
    .line 299
    .line 300
    .line 301
    .line 302
    .line 303
    .line 304
    .line 305
    .line 306
    .line 307
    .line 308
    .line 309
    .line 310
    .line 311
    .line 312
    .line 313
    .line 314
    :sswitch_data_0
    .sparse-switch
        0x7f12009d -> :sswitch_5
        0x7f1203a0 -> :sswitch_4
        0x7f12044c -> :sswitch_3
        0x7f120781 -> :sswitch_2
        0x7f12103c -> :sswitch_1
        0x7f1210ad -> :sswitch_0
    .end sparse-switch
.end method

.method public onPostSaveInstanceInPager()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/narvii/sharedfolder/SharedPhotoDetailFragment;->willSaveInstanceInPager:Z

    return-void
.end method

.method public onPreSaveInstanceInPager()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/narvii/sharedfolder/SharedPhotoDetailFragment;->willSaveInstanceInPager:Z

    return-void
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)V
    .locals 9

    .line 1
    .line 2
    .line 3
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onPrepareOptionsMenu(Landroid/view/Menu;)V

    .line 4
    .line 5
    .line 6
    invoke-direct {p0}, Lcom/narvii/sharedfolder/SharedPhotoDetailFragment;->getSharedPhoto()Lcom/narvii/model/SharedFile;

    .line 7
    move-result-object v0

    .line 8
    const/4 v1, 0x0

    .line 9
    const/4 v2, 0x1

    .line 10
    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    iget v3, v0, Lcom/narvii/model/SharedFile;->status:I

    .line 14
    .line 15
    const/16 v4, 0x9

    .line 16
    .line 17
    if-eq v3, v4, :cond_0

    .line 18
    move v3, v2

    .line 19
    goto :goto_0

    .line 20
    :cond_0
    move v3, v1

    .line 21
    .line 22
    :goto_0
    const-string v4, "account"

    .line 23
    .line 24
    .line 25
    invoke-virtual {p0, v4}, Lcom/narvii/app/NVFragment;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 26
    move-result-object v4

    .line 27
    .line 28
    check-cast v4, Lcom/narvii/account/AccountService;

    .line 29
    .line 30
    .line 31
    invoke-virtual {v4}, Lcom/narvii/account/AccountService;->getUserProfile()Lcom/narvii/model/User;

    .line 32
    move-result-object v4

    .line 33
    .line 34
    .line 35
    invoke-direct {p0, v0, v4}, Lcom/narvii/sharedfolder/SharedPhotoDetailFragment;->isMine(Lcom/narvii/model/SharedFile;Lcom/narvii/model/User;)Z

    .line 36
    move-result v5

    .line 37
    .line 38
    .line 39
    const v6, 0x7f1210ad

    .line 40
    .line 41
    .line 42
    invoke-interface {p1, v6}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    .line 43
    move-result-object v6

    .line 44
    .line 45
    .line 46
    invoke-interface {v6, v3}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 47
    .line 48
    .line 49
    const v6, 0x7f12044c

    .line 50
    .line 51
    .line 52
    invoke-interface {p1, v6}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    .line 53
    move-result-object v6

    .line 54
    .line 55
    .line 56
    invoke-interface {v6, v5}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 57
    .line 58
    .line 59
    const v6, 0x7f12103c

    .line 60
    .line 61
    .line 62
    invoke-interface {p1, v6}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    .line 63
    move-result-object v6

    .line 64
    .line 65
    if-eqz v0, :cond_1

    .line 66
    .line 67
    iget-object v7, v0, Lcom/narvii/model/SharedFile;->media:Lcom/narvii/model/Media;

    .line 68
    .line 69
    if-eqz v7, :cond_1

    .line 70
    .line 71
    iget v7, v7, Lcom/narvii/model/Media;->type:I

    .line 72
    .line 73
    const/16 v8, 0x64

    .line 74
    .line 75
    if-ne v7, v8, :cond_1

    .line 76
    move v7, v2

    .line 77
    goto :goto_1

    .line 78
    :cond_1
    move v7, v1

    .line 79
    .line 80
    .line 81
    :goto_1
    invoke-interface {v6, v7}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 82
    .line 83
    .line 84
    const v6, 0x7f120781

    .line 85
    .line 86
    .line 87
    invoke-interface {p1, v6}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    .line 88
    move-result-object v6

    .line 89
    .line 90
    if-eqz v3, :cond_2

    .line 91
    .line 92
    if-nez v5, :cond_2

    .line 93
    move v3, v2

    .line 94
    goto :goto_2

    .line 95
    :cond_2
    move v3, v1

    .line 96
    .line 97
    .line 98
    :goto_2
    invoke-interface {v6, v3}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 99
    .line 100
    .line 101
    const v3, 0x7f12009d

    .line 102
    .line 103
    .line 104
    invoke-interface {p1, v3}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    .line 105
    move-result-object v3

    .line 106
    .line 107
    if-eqz v0, :cond_3

    .line 108
    .line 109
    if-eqz v4, :cond_3

    .line 110
    .line 111
    .line 112
    invoke-virtual {v4}, Lcom/narvii/model/User;->isCurator()Z

    .line 113
    move-result v0

    .line 114
    .line 115
    if-eqz v0, :cond_3

    .line 116
    move v1, v2

    .line 117
    .line 118
    .line 119
    :cond_3
    invoke-interface {v3, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 120
    .line 121
    .line 122
    const v0, 0x7f1203a0

    .line 123
    .line 124
    .line 125
    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    .line 126
    move-result-object p1

    .line 127
    .line 128
    .line 129
    invoke-interface {p1, v5}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 130
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    .line 1
    .line 2
    .line 3
    invoke-super {p0, p1}, Lcom/narvii/list/NVListFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 4
    .line 5
    iget-object v0, p0, Lcom/narvii/sharedfolder/SharedPhotoDetailFragment;->commentAdapter:Lcom/narvii/sharedfolder/SharedPhotoDetailFragment$CommentAdapter;

    .line 6
    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    .line 10
    invoke-virtual {v0}, Lcom/narvii/sharedfolder/SharedPhotoDetailFragment$CommentAdapter;->onSaveInstanceState()Landroid/os/Bundle;

    .line 11
    move-result-object v0

    .line 12
    .line 13
    if-eqz v0, :cond_0

    .line 14
    .line 15
    const-string v1, "commentAdapter"

    .line 16
    .line 17
    .line 18
    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 19
    .line 20
    :cond_0
    iget-object v0, p0, Lcom/narvii/sharedfolder/SharedPhotoDetailFragment;->albumAdapter:Lcom/narvii/sharedfolder/SharedPhotoDetailFragment$AlbumAdapter;

    .line 21
    .line 22
    if-eqz v0, :cond_1

    .line 23
    .line 24
    .line 25
    invoke-virtual {v0}, Lcom/narvii/sharedfolder/SharedPhotoDetailFragment$AlbumAdapter;->onSaveInstanceState()Landroid/os/Bundle;

    .line 26
    move-result-object v0

    .line 27
    .line 28
    if-eqz v0, :cond_1

    .line 29
    .line 30
    const-string v1, "albumAdapter"

    .line 31
    .line 32
    .line 33
    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 34
    :cond_1
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 1

    .line 1
    .line 2
    iput-object p2, p0, Lcom/narvii/sharedfolder/SharedPhotoDetailFragment;->savedInstanceState:Landroid/os/Bundle;

    .line 3
    .line 4
    .line 5
    const v0, 0x7f0a0ab4

    .line 6
    .line 7
    .line 8
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 9
    move-result-object v0

    .line 10
    .line 11
    iput-object v0, p0, Lcom/narvii/sharedfolder/SharedPhotoDetailFragment;->overlayPlaceholder:Landroid/view/View;

    .line 12
    .line 13
    .line 14
    const v0, 0x7f0a0430

    .line 15
    .line 16
    .line 17
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 18
    move-result-object v0

    .line 19
    .line 20
    iput-object v0, p0, Lcom/narvii/sharedfolder/SharedPhotoDetailFragment;->detailLayout:Landroid/view/View;

    .line 21
    .line 22
    .line 23
    invoke-super {p0, p1, p2}, Lcom/narvii/detail/DetailFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 24
    .line 25
    .line 26
    const v0, 0x7f0a0ef3

    .line 27
    .line 28
    .line 29
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 30
    move-result-object v0

    .line 31
    .line 32
    .line 33
    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 34
    .line 35
    .line 36
    const v0, 0x7f0a06eb

    .line 37
    .line 38
    .line 39
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 40
    move-result-object p1

    .line 41
    .line 42
    .line 43
    invoke-virtual {p1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 44
    .line 45
    .line 46
    invoke-direct {p0}, Lcom/narvii/sharedfolder/SharedPhotoDetailFragment;->updateDetailView()V

    .line 47
    .line 48
    .line 49
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->isActive()Z

    .line 50
    move-result p1

    .line 51
    .line 52
    if-nez p1, :cond_0

    .line 53
    .line 54
    if-eqz p2, :cond_1

    .line 55
    .line 56
    .line 57
    :cond_0
    invoke-direct {p0}, Lcom/narvii/sharedfolder/SharedPhotoDetailFragment;->setUpSubList()V

    .line 58
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

    .line 1
    invoke-direct {p0, p1, v0}, Lcom/narvii/sharedfolder/SharedPhotoDetailFragment;->vote(Ljava/lang/Integer;Lcom/narvii/util/http/ApiService;)V

    return-void
.end method
