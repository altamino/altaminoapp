.class public Lcom/narvii/master/search/GlobalHashTagFragment;
.super Lcom/narvii/list/NVListFragment;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/narvii/master/search/GlobalHashTagFragment$FeedAdapter;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Lcom/narvii/list/NVListFragment;-><init>()V

    .line 4
    return-void
.end method

.method static synthetic access$000(Lcom/narvii/master/search/GlobalHashTagFragment;)Lcom/narvii/nvplayerview/delegate/IVideoListDelegate;
    .locals 0

    .line 1
    .line 2
    iget-object p0, p0, Lcom/narvii/list/NVListFragment;->mVideoListDelegate:Lcom/narvii/nvplayerview/delegate/IVideoListDelegate;

    .line 3
    return-object p0
.end method

.method static synthetic access$100(Lcom/narvii/master/search/GlobalHashTagFragment;)Z
    .locals 0

    .line 1
    .line 2
    iget-boolean p0, p0, Lcom/narvii/list/NVListFragment;->videoAutoPlay:Z

    .line 3
    return p0
.end method


# virtual methods
.method protected createAdapter(Landroid/os/Bundle;)Landroid/widget/ListAdapter;
    .locals 1

    .line 1
    .line 2
    new-instance p1, Lcom/narvii/master/search/GlobalHashTagFragment$FeedAdapter;

    .line 3
    .line 4
    .line 5
    invoke-direct {p1, p0, p0}, Lcom/narvii/master/search/GlobalHashTagFragment$FeedAdapter;-><init>(Lcom/narvii/master/search/GlobalHashTagFragment;Lcom/narvii/app/NVContext;)V

    .line 6
    .line 7
    const-string v0, "hashTag"

    .line 8
    .line 9
    .line 10
    invoke-virtual {p0, v0}, Lcom/narvii/app/NVFragment;->getStringParam(Ljava/lang/String;)Ljava/lang/String;

    .line 11
    move-result-object v0

    .line 12
    .line 13
    iput-object v0, p1, Lcom/narvii/master/search/GlobalPostSearchAdapter;->keyword:Ljava/lang/String;

    .line 14
    .line 15
    new-instance v0, Lcom/narvii/master/HeadlineDividerAdapter;

    .line 16
    .line 17
    .line 18
    invoke-direct {v0, p0}, Lcom/narvii/master/HeadlineDividerAdapter;-><init>(Lcom/narvii/app/NVContext;)V

    .line 19
    .line 20
    .line 21
    invoke-virtual {v0, p1}, Lcom/narvii/master/HeadlineDividerAdapter;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 22
    return-object v0
.end method

.method public getListSelector()Landroid/graphics/drawable/Drawable;
    .locals 2

    .line 1
    .line 2
    new-instance v0, Landroid/graphics/drawable/ColorDrawable;

    .line 3
    const/4 v1, 0x0

    .line 4
    .line 5
    .line 6
    invoke-direct {v0, v1}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    .line 7
    return-object v0
.end method

.method public initNVTheme()I
    .locals 1

    const/4 v0, 0x2

    return v0
.end method

.method protected initVideoListDelegate()Lcom/narvii/nvplayerview/delegate/IVideoListDelegate;
    .locals 2

    .line 1
    .line 2
    new-instance v0, Lcom/narvii/nvplayerview/delegate/NVVideoListDelegate;

    .line 3
    .line 4
    .line 5
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    .line 6
    move-result-object v1

    .line 7
    .line 8
    .line 9
    invoke-direct {v0, p0, v1}, Lcom/narvii/nvplayerview/delegate/NVVideoListDelegate;-><init>(Lcom/narvii/app/NVContext;Landroid/app/Activity;)V

    .line 10
    return-object v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-super {p0, p1}, Lcom/narvii/list/NVListFragment;->onCreate(Landroid/os/Bundle;)V

    .line 4
    .line 5
    const-string p1, "title"

    .line 6
    .line 7
    .line 8
    invoke-virtual {p0, p1}, Lcom/narvii/app/NVFragment;->getStringParam(Ljava/lang/String;)Ljava/lang/String;

    .line 9
    move-result-object p1

    .line 10
    .line 11
    .line 12
    invoke-virtual {p0, p1}, Lcom/narvii/app/NVFragment;->setTitle(Ljava/lang/CharSequence;)V

    .line 13
    return-void
.end method

.method protected onListViewCreated(Landroid/widget/ListView;Landroid/os/Bundle;)V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-super {p0, p1, p2}, Lcom/narvii/list/NVListFragment;->onListViewCreated(Landroid/widget/ListView;Landroid/os/Bundle;)V

    .line 4
    const/4 p2, 0x0

    .line 5
    .line 6
    .line 7
    invoke-virtual {p1, p2}, Landroid/widget/ListView;->setDivider(Landroid/graphics/drawable/Drawable;)V

    .line 8
    const/4 p2, 0x0

    .line 9
    .line 10
    .line 11
    invoke-virtual {p1, p2}, Landroid/widget/ListView;->setDividerHeight(I)V

    .line 12
    return-void
.end method
