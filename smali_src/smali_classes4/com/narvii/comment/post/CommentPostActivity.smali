.class public Lcom/narvii/comment/post/CommentPostActivity;
.super Lcom/narvii/post/BasePostActivity;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/view/View$OnLongClickListener;
.implements Lcom/narvii/monetization/sticker/picker/StickerSelectListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/narvii/comment/post/CommentPostActivity$StatusListener;,
        Lcom/narvii/comment/post/CommentPostActivity$SwitchKeyboard;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/narvii/post/BasePostActivity<",
        "Lcom/narvii/comment/post/CommentPost;",
        ">;",
        "Landroid/view/View$OnClickListener;",
        "Landroid/view/View$OnLongClickListener;",
        "Lcom/narvii/monetization/sticker/picker/StickerSelectListener;"
    }
.end annotation


# static fields
.field public static final COMMENT_POST_KEY_NDC_ID:Ljava/lang/String; = "ndcId"

.field static LATEST_DRAFT:Lcom/narvii/comment/post/CommentPost; = null

.field static LATEST_DRAFT_ID:Ljava/lang/String; = null

.field static final MAX_MEDIA:I = 0x5

.field private static statusListener:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/narvii/comment/post/CommentPostActivity$StatusListener;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private btnKeyboardEntry:Landroid/view/View;

.field private btnStickerEntry:Landroid/view/View;

.field defaultStickerSet:Z

.field editContent:Landroid/widget/EditText;

.field private fromStoryCommentList:Z

.field imgs:Lcom/narvii/widget/DragSortGallery;

.field isKeyboardVisible:Z

.field keyboardObserver:Lcom/narvii/util/SoftKeyboard$KeyboardObserver;

.field photoDir:Ljava/io/File;

.field post:Lcom/narvii/comment/post/CommentPost;

.field postBtn:Landroid/widget/ImageView;

.field posted:Z

.field public stickerContainer:Landroid/view/View;

.field private stickerPanel:Landroid/view/View;

.field private stickerPickerTabFragment:Lcom/narvii/monetization/sticker/picker/StickerPickerTabFragment;

.field final switchingKeyboard:Lcom/narvii/util/statistics/TmpValue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/narvii/util/statistics/TmpValue<",
            "Lcom/narvii/comment/post/CommentPostActivity$SwitchKeyboard;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Lcom/narvii/post/BasePostActivity;-><init>()V

    .line 4
    .line 5
    new-instance v0, Lcom/narvii/util/statistics/TmpValue;

    .line 6
    .line 7
    .line 8
    invoke-direct {v0}, Lcom/narvii/util/statistics/TmpValue;-><init>()V

    .line 9
    .line 10
    iput-object v0, p0, Lcom/narvii/comment/post/CommentPostActivity;->switchingKeyboard:Lcom/narvii/util/statistics/TmpValue;

    .line 11
    return-void
.end method

.method static bridge synthetic A(Lcom/narvii/comment/post/CommentPostActivity;Z)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/narvii/comment/post/CommentPostActivity;->updateGalleryViews(Z)V

    return-void
.end method

.method static bridge synthetic B()Ljava/lang/ref/WeakReference;
    .locals 1

    .line 1
    sget-object v0, Lcom/narvii/comment/post/CommentPostActivity;->statusListener:Ljava/lang/ref/WeakReference;

    return-object v0
.end method

.method private changePanelVisibility(Landroid/view/View;I)V
    .locals 0

    .line 1
    .line 2
    if-nez p1, :cond_0

    .line 3
    return-void

    .line 4
    .line 5
    .line 6
    :cond_0
    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    .line 7
    return-void
.end method

.method private changeSegmentBackground(Z)V
    .locals 3

    .line 1
    .line 2
    .line 3
    invoke-static {p0}, Lcom/narvii/util/AndroidBug5497Workaround;->getKeyboardHeight(Landroid/app/Activity;)I

    .line 4
    move-result v0

    .line 5
    .line 6
    if-lez v0, :cond_0

    .line 7
    .line 8
    .line 9
    invoke-virtual {p0, v0}, Lcom/narvii/comment/post/CommentPostActivity;->getValidPanelHeight(I)I

    .line 10
    move-result v0

    .line 11
    goto :goto_0

    .line 12
    .line 13
    .line 14
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 15
    move-result-object v0

    .line 16
    .line 17
    .line 18
    const v1, 0x7f070555

    .line 19
    .line 20
    .line 21
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 22
    move-result v0

    .line 23
    .line 24
    :goto_0
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 25
    .line 26
    const/16 v2, 0x1d

    .line 27
    .line 28
    if-ge v1, v2, :cond_2

    .line 29
    .line 30
    .line 31
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    .line 32
    move-result-object v1

    .line 33
    .line 34
    .line 35
    invoke-virtual {v1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    .line 36
    move-result-object v1

    .line 37
    .line 38
    new-instance v2, Lcom/narvii/widget/TopTransparentDrawable;

    .line 39
    .line 40
    if-eqz p1, :cond_1

    .line 41
    goto :goto_1

    .line 42
    :cond_1
    const/4 v0, 0x0

    .line 43
    .line 44
    .line 45
    :goto_1
    const p1, -0xa0a09

    .line 46
    .line 47
    .line 48
    invoke-direct {v2, p1, v0}, Lcom/narvii/widget/TopTransparentDrawable;-><init>(II)V

    .line 49
    .line 50
    .line 51
    invoke-virtual {v1, v2}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 52
    :cond_2
    return-void
.end method

.method private changeStikerEntryVisibility(Z)V
    .locals 4

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/comment/post/CommentPostActivity;->btnStickerEntry:Landroid/view/View;

    .line 3
    .line 4
    const/16 v1, 0x8

    .line 5
    const/4 v2, 0x0

    .line 6
    .line 7
    if-eqz v0, :cond_1

    .line 8
    .line 9
    if-eqz p1, :cond_0

    .line 10
    move v3, v2

    .line 11
    goto :goto_0

    .line 12
    :cond_0
    move v3, v1

    .line 13
    .line 14
    .line 15
    :goto_0
    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 16
    .line 17
    :cond_1
    iget-object v0, p0, Lcom/narvii/comment/post/CommentPostActivity;->btnKeyboardEntry:Landroid/view/View;

    .line 18
    .line 19
    if-eqz v0, :cond_3

    .line 20
    .line 21
    if-eqz p1, :cond_2

    .line 22
    goto :goto_1

    .line 23
    :cond_2
    move v1, v2

    .line 24
    .line 25
    .line 26
    :goto_1
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 27
    :cond_3
    return-void
.end method

.method public static clearMemoryDrafts()V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Lcom/narvii/comment/post/CommentPostActivity;->LATEST_DRAFT:Lcom/narvii/comment/post/CommentPost;

    sput-object v0, Lcom/narvii/comment/post/CommentPostActivity;->LATEST_DRAFT_ID:Ljava/lang/String;

    return-void
.end method

.method private findImageById(Landroid/view/View;)Lcom/narvii/widget/NVImageView;
    .locals 2

    .line 1
    .line 2
    .line 3
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    .line 4
    move-result v0

    .line 5
    .line 6
    .line 7
    const v1, 0x7f0a06ec

    .line 8
    .line 9
    if-ne v0, v1, :cond_0

    .line 10
    .line 11
    .line 12
    const v0, 0x7f0a06f2

    .line 13
    .line 14
    .line 15
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 16
    move-result-object p1

    .line 17
    .line 18
    check-cast p1, Lcom/narvii/widget/NVImageView;

    .line 19
    return-object p1

    .line 20
    .line 21
    .line 22
    :cond_0
    const v1, 0x7f0a06ed

    .line 23
    .line 24
    if-ne v0, v1, :cond_1

    .line 25
    .line 26
    .line 27
    const v0, 0x7f0a06f3

    .line 28
    .line 29
    .line 30
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 31
    move-result-object p1

    .line 32
    .line 33
    check-cast p1, Lcom/narvii/widget/NVImageView;

    .line 34
    return-object p1

    .line 35
    .line 36
    .line 37
    :cond_1
    const v1, 0x7f0a06ee

    .line 38
    .line 39
    if-ne v0, v1, :cond_2

    .line 40
    .line 41
    .line 42
    const v0, 0x7f0a06f4

    .line 43
    .line 44
    .line 45
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 46
    move-result-object p1

    .line 47
    .line 48
    check-cast p1, Lcom/narvii/widget/NVImageView;

    .line 49
    return-object p1

    .line 50
    .line 51
    .line 52
    :cond_2
    const v1, 0x7f0a06ef

    .line 53
    .line 54
    if-ne v0, v1, :cond_3

    .line 55
    .line 56
    .line 57
    const v0, 0x7f0a06f5

    .line 58
    .line 59
    .line 60
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 61
    move-result-object p1

    .line 62
    .line 63
    check-cast p1, Lcom/narvii/widget/NVImageView;

    .line 64
    return-object p1

    .line 65
    .line 66
    .line 67
    :cond_3
    const v1, 0x7f0a06f0

    .line 68
    .line 69
    if-ne v0, v1, :cond_4

    .line 70
    .line 71
    .line 72
    const v0, 0x7f0a06f6

    .line 73
    .line 74
    .line 75
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 76
    move-result-object p1

    .line 77
    .line 78
    check-cast p1, Lcom/narvii/widget/NVImageView;

    .line 79
    return-object p1

    .line 80
    :cond_4
    const/4 p1, 0x0

    .line 81
    return-object p1
.end method

.method private getPostTypeValue()Ljava/lang/String;
    .locals 3

    .line 1
    .line 2
    const-string v0, "stat_parent_type"

    .line 3
    .line 4
    .line 5
    invoke-virtual {p0, v0}, Lcom/narvii/app/NVActivity;->getStringParam(Ljava/lang/String;)Ljava/lang/String;

    .line 6
    move-result-object v1

    .line 7
    .line 8
    const-string v2, "favorite"

    .line 9
    .line 10
    .line 11
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 12
    move-result v1

    .line 13
    .line 14
    if-eqz v1, :cond_0

    .line 15
    .line 16
    const-string v0, "wiki"

    .line 17
    goto :goto_0

    .line 18
    .line 19
    .line 20
    :cond_0
    invoke-virtual {p0, v0}, Lcom/narvii/app/NVActivity;->getStringParam(Ljava/lang/String;)Ljava/lang/String;

    .line 21
    move-result-object v0

    .line 22
    :goto_0
    return-object v0
.end method

.method private gotoCommunityDetail()V
    .locals 4

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/narvii/app/NVActivity;->getConfigCid()I

    .line 4
    move-result v0

    .line 5
    .line 6
    const-string v1, "community"

    .line 7
    .line 8
    .line 9
    invoke-virtual {p0, v1}, Lcom/narvii/app/NVActivity;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 10
    move-result-object v1

    .line 11
    .line 12
    check-cast v1, Lcom/narvii/community/CommunityService;

    .line 13
    .line 14
    .line 15
    invoke-virtual {v1, v0}, Lcom/narvii/community/CommunityService;->getCommunity(I)Lcom/narvii/model/Community;

    .line 16
    move-result-object v1

    .line 17
    .line 18
    const-class v2, Lcom/narvii/master/CommunityDetailFragment;

    .line 19
    .line 20
    .line 21
    invoke-static {v2}, Lcom/narvii/app/FragmentWrapperActivity;->intent(Ljava/lang/Class;)Landroid/content/Intent;

    .line 22
    move-result-object v2

    .line 23
    .line 24
    const-string v3, "id"

    .line 25
    .line 26
    .line 27
    invoke-virtual {v2, v3, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 28
    .line 29
    const-string v0, "joinOnly"

    .line 30
    const/4 v3, 0x1

    .line 31
    .line 32
    .line 33
    invoke-virtual {v2, v0, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 34
    .line 35
    const-string v0, "prefetch"

    .line 36
    .line 37
    .line 38
    invoke-static {v1}, Lcom/narvii/util/JacksonUtils;->writeAsString(Ljava/lang/Object;)Ljava/lang/String;

    .line 39
    move-result-object v1

    .line 40
    .line 41
    .line 42
    invoke-virtual {v2, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 43
    .line 44
    .line 45
    invoke-static {p0, v2}, Lcom/narvii/comment/post/CommentPostActivity;->safedk_RedirectBlockingFragmentActivity_startActivity_df8845b07c3ebd4003c932535b05cc9f(Lai/medialab/medialabads2/maliciousadblockers/RedirectBlockingFragmentActivity;Landroid/content/Intent;)V

    .line 46
    return-void
.end method

.method private isReply()Z
    .locals 1

    .line 1
    .line 2
    const-string v0, "respondTo"

    .line 3
    .line 4
    .line 5
    invoke-virtual {p0, v0}, Lcom/narvii/app/NVActivity;->getStringParam(Ljava/lang/String;)Ljava/lang/String;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    if-eqz v0, :cond_0

    .line 9
    const/4 v0, 0x1

    .line 10
    goto :goto_0

    .line 11
    :cond_0
    const/4 v0, 0x0

    .line 12
    :goto_0
    return v0
.end method

.method private synthetic lambda$onLoginResult$0()V
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/comment/post/CommentPostActivity;->editContent:Landroid/widget/EditText;

    .line 3
    .line 4
    .line 5
    invoke-static {v0}, Lcom/narvii/util/SoftKeyboard;->showSoftKeyboard(Landroid/widget/EditText;)V

    .line 6
    return-void
.end method

.method public static safedk_RedirectBlockingFragmentActivity_startActivity_df8845b07c3ebd4003c932535b05cc9f(Lai/medialab/medialabads2/maliciousadblockers/RedirectBlockingFragmentActivity;Landroid/content/Intent;)V
    .locals 1
    .param p0, "p0"    # Lai/medialab/medialabads2/maliciousadblockers/RedirectBlockingFragmentActivity;
    .param p1, "p1"    # Landroid/content/Intent;

    const-string v0, "SafeDK-Special|SafeDK: Call> Lai/medialab/medialabads2/maliciousadblockers/RedirectBlockingFragmentActivity;->startActivity(Landroid/content/Intent;)V"

    invoke-static {v0}, Lcom/safedk/android/utils/Logger;->d(Ljava/lang/String;)I

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0, p1}, Lai/medialab/medialabads2/maliciousadblockers/RedirectBlockingFragmentActivity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method public static setStatusListener(Lcom/narvii/comment/post/CommentPostActivity$StatusListener;)V
    .locals 1

    .line 1
    .line 2
    if-nez p0, :cond_0

    .line 3
    const/4 p0, 0x0

    .line 4
    goto :goto_0

    .line 5
    .line 6
    :cond_0
    new-instance v0, Ljava/lang/ref/WeakReference;

    .line 7
    .line 8
    .line 9
    invoke-direct {v0, p0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 10
    move-object p0, v0

    .line 11
    .line 12
    :goto_0
    sput-object p0, Lcom/narvii/comment/post/CommentPostActivity;->statusListener:Ljava/lang/ref/WeakReference;

    .line 13
    return-void
.end method

.method public static synthetic u(Lcom/narvii/comment/post/CommentPostActivity;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/narvii/comment/post/CommentPostActivity;->lambda$onLoginResult$0()V

    return-void
.end method

.method private updateGalleryViews(Z)V
    .locals 3

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/comment/post/CommentPostActivity;->imgs:Lcom/narvii/widget/DragSortGallery;

    .line 3
    .line 4
    if-nez v0, :cond_0

    .line 5
    return-void

    .line 6
    .line 7
    .line 8
    :cond_0
    invoke-virtual {p0}, Lcom/narvii/comment/post/CommentPostActivity;->savePost()Lcom/narvii/comment/post/CommentPost;

    .line 9
    move-result-object v0

    .line 10
    .line 11
    iget-object v0, v0, Lcom/narvii/comment/post/CommentPost;->mediaList:Ljava/util/List;

    .line 12
    const/4 v1, 0x0

    .line 13
    .line 14
    if-nez v0, :cond_1

    .line 15
    move v0, v1

    .line 16
    goto :goto_0

    .line 17
    .line 18
    .line 19
    :cond_1
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 20
    move-result v0

    .line 21
    .line 22
    :goto_0
    iget-object v2, p0, Lcom/narvii/comment/post/CommentPostActivity;->imgs:Lcom/narvii/widget/DragSortGallery;

    .line 23
    .line 24
    if-lez v0, :cond_2

    .line 25
    .line 26
    if-nez p1, :cond_2

    .line 27
    move p1, v1

    .line 28
    goto :goto_1

    .line 29
    .line 30
    :cond_2
    const/16 p1, 0x8

    .line 31
    .line 32
    .line 33
    :goto_1
    invoke-virtual {v2, p1}, Landroid/view/View;->setVisibility(I)V

    .line 34
    .line 35
    iget-object p1, p0, Lcom/narvii/comment/post/CommentPostActivity;->imgs:Lcom/narvii/widget/DragSortGallery;

    .line 36
    .line 37
    .line 38
    invoke-virtual {p1, v1, v0}, Lcom/narvii/widget/DragSortGallery;->setDragRange(II)V

    .line 39
    return-void
.end method

.method static bridge synthetic v(Lcom/narvii/comment/post/CommentPostActivity;)Landroid/view/View;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/narvii/comment/post/CommentPostActivity;->stickerPanel:Landroid/view/View;

    return-object p0
.end method

.method static bridge synthetic w(Lcom/narvii/comment/post/CommentPostActivity;Landroid/view/View;I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/narvii/comment/post/CommentPostActivity;->changePanelVisibility(Landroid/view/View;I)V

    return-void
.end method

.method static bridge synthetic x(Lcom/narvii/comment/post/CommentPostActivity;Z)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/narvii/comment/post/CommentPostActivity;->changeSegmentBackground(Z)V

    return-void
.end method

.method static bridge synthetic y(Lcom/narvii/comment/post/CommentPostActivity;Z)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/narvii/comment/post/CommentPostActivity;->changeStikerEntryVisibility(Z)V

    return-void
.end method

.method static bridge synthetic z(Lcom/narvii/comment/post/CommentPostActivity;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/narvii/comment/post/CommentPostActivity;->gotoCommunityDetail()V

    return-void
.end method


# virtual methods
.method protected disableMediaPost()Z
    .locals 2

    .line 1
    .line 2
    const-string v0, "parentType"

    .line 3
    const/4 v1, -0x1

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0, v0, v1}, Lcom/narvii/app/NVActivity;->getIntParam(Ljava/lang/String;I)I

    .line 7
    move-result v0

    .line 8
    .line 9
    const/16 v1, 0x6d

    .line 10
    .line 11
    if-ne v1, v0, :cond_0

    .line 12
    const/4 v0, 0x1

    .line 13
    return v0

    .line 14
    :cond_0
    const/4 v0, 0x0

    .line 15
    return v0
.end method

.method protected doPost(Lcom/narvii/comment/post/CommentPost;)V
    .locals 9

    const-string v0, "parentType"

    .line 2
    invoke-virtual {p0, v0}, Lcom/narvii/app/NVActivity;->getIntParam(Ljava/lang/String;)I

    move-result v1

    const-string v2, "parentId"

    .line 3
    invoke-virtual {p0, v2}, Lcom/narvii/app/NVActivity;->getStringParam(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "commentId"

    .line 4
    invoke-virtual {p0, v4}, Lcom/narvii/app/NVActivity;->getStringParam(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 5
    invoke-virtual {p0}, Lcom/narvii/app/NVActivity;->isGlobalInteractionScope()Z

    move-result v5

    invoke-static {v1, v3, v4, v5}, Lcom/narvii/comment/CommentHelper;->createPostCommentRequest(ILjava/lang/String;Ljava/lang/String;Z)Lcom/narvii/util/http/ApiRequest;

    move-result-object v1

    const-string v3, "ndcId"

    const/4 v4, -0x1

    .line 6
    invoke-virtual {p0, v3, v4}, Lcom/narvii/app/NVActivity;->getIntParam(Ljava/lang/String;I)I

    move-result v5

    if-lez v5, :cond_0

    .line 7
    invoke-virtual {v1}, Lcom/narvii/util/http/ApiRequest;->edit()Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object v5

    invoke-virtual {p0, v3}, Lcom/narvii/app/NVActivity;->getIntParam(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v5, v3}, Lcom/narvii/util/http/ApiRequest$Builder;->communityId(I)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 8
    :cond_0
    new-instance v3, Lcom/narvii/post/PostHelper;

    invoke-direct {v3, p0}, Lcom/narvii/post/PostHelper;-><init>(Lcom/narvii/app/NVContext;)V

    .line 9
    invoke-virtual {v3, p0}, Lcom/narvii/post/PostHelper;->setPostListener(Lcom/narvii/post/PostListener;)V

    const-class v5, Lcom/narvii/model/api/CommentResponse;

    .line 10
    invoke-virtual {v3, p1, v1, v5}, Lcom/narvii/post/PostHelper;->startPost(Lcom/narvii/post/PostObject;Lcom/narvii/util/http/ApiRequest;Ljava/lang/Class;)V

    .line 11
    invoke-virtual {p0, v0, v4}, Lcom/narvii/app/NVActivity;->getIntParam(Ljava/lang/String;I)I

    move-result v1

    const-string v3, "parentSubType"

    .line 12
    invoke-virtual {p0, v3, v4}, Lcom/narvii/app/NVActivity;->getIntParam(Ljava/lang/String;I)I

    move-result v5

    .line 13
    iget p1, p1, Lcom/narvii/comment/post/CommentPost;->type:I

    const/4 v6, 0x3

    if-ne p1, v6, :cond_1

    const-string p1, "Sticker"

    goto :goto_0

    :cond_1
    const-string p1, "Text"

    :goto_0
    const-string v6, "feed"

    .line 14
    invoke-virtual {p0, v6}, Lcom/narvii/app/NVActivity;->getStringParam(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    new-instance v7, Lcom/narvii/model/Feed$FeedDeserializer;

    invoke-direct {v7}, Lcom/narvii/model/Feed$FeedDeserializer;-><init>()V

    invoke-static {v6, v7}, Lcom/narvii/util/JacksonUtils;->readUsing(Ljava/lang/String;Lcom/fasterxml/jackson/databind/JsonDeserializer;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/narvii/model/Feed;

    .line 15
    invoke-direct {p0}, Lcom/narvii/comment/post/CommentPostActivity;->isReply()Z

    move-result v7

    if-eqz v7, :cond_2

    sget-object v7, Lcom/narvii/logging/ActSemantic;->reply:Lcom/narvii/logging/ActSemantic;

    goto :goto_1

    :cond_2
    sget-object v7, Lcom/narvii/logging/ActSemantic;->comment:Lcom/narvii/logging/ActSemantic;

    :goto_1
    invoke-static {p0, v7}, Lcom/narvii/logging/LogEvent;->clickBuilder(Lcom/narvii/app/NVContext;Lcom/narvii/logging/ActSemantic;)Lcom/narvii/logging/LogEvent$Builder;

    move-result-object v7

    const-string v8, "CommentArea"

    invoke-virtual {v7, v8}, Lcom/narvii/logging/LogEvent$Builder;->area(Ljava/lang/String;)Lcom/narvii/logging/LogEvent$Builder;

    move-result-object v7

    const-string v8, "content"

    .line 16
    invoke-virtual {v7, v8, p1}, Lcom/narvii/logging/LogEvent$Builder;->extraParam(Ljava/lang/String;Ljava/lang/Object;)Lcom/narvii/logging/LogEvent$Builder;

    move-result-object p1

    if-eqz v6, :cond_3

    .line 17
    invoke-virtual {p1, v6}, Lcom/narvii/logging/LogEvent$Builder;->object(Lcom/narvii/model/NVObject;)Lcom/narvii/logging/LogEvent$Builder;

    goto :goto_2

    .line 18
    :cond_3
    invoke-virtual {p0, v2}, Lcom/narvii/app/NVActivity;->getStringParam(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1, v6}, Lcom/narvii/logging/LogEvent$Builder;->objectId(Ljava/lang/String;)Lcom/narvii/logging/LogEvent$Builder;

    move-result-object v6

    .line 19
    invoke-static {v1}, Lcom/narvii/logging/LogUtils;->getObjectType(I)Lcom/narvii/logging/ObjectType;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/narvii/logging/LogEvent$Builder;->objectType(Lcom/narvii/logging/ObjectType;)Lcom/narvii/logging/LogEvent$Builder;

    move-result-object v6

    .line 20
    invoke-static {v1, v5}, Lcom/narvii/logging/LogUtils;->getObjectSubType(II)Lcom/narvii/logging/ObjectSubType;

    move-result-object v1

    invoke-virtual {v6, v1}, Lcom/narvii/logging/LogEvent$Builder;->objectSubType(Lcom/narvii/logging/ObjectSubType;)Lcom/narvii/logging/LogEvent$Builder;

    .line 21
    :goto_2
    invoke-virtual {p1}, Lcom/narvii/logging/LogEvent$Builder;->send()Lcom/narvii/logging/LogEvent;

    .line 22
    invoke-virtual {p0, v0}, Lcom/narvii/app/NVActivity;->getIntParam(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {p0, v2}, Lcom/narvii/app/NVActivity;->getStringParam(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v3, v4}, Lcom/narvii/app/NVActivity;->getIntParam(Ljava/lang/String;I)I

    move-result v1

    invoke-static {p0, p1, v0, v1}, Lcom/narvii/util/LiveLayerUtils;->reportCommenting(Lcom/narvii/app/NVContext;ILjava/lang/String;I)V

    return-void
.end method

.method protected bridge synthetic doPost(Lcom/narvii/post/PostObject;)V
    .locals 0

    .line 1
    check-cast p1, Lcom/narvii/comment/post/CommentPost;

    invoke-virtual {p0, p1}, Lcom/narvii/comment/post/CommentPostActivity;->doPost(Lcom/narvii/comment/post/CommentPost;)V

    return-void
.end method

.method public finish()V
    .locals 2

    .line 1
    .line 2
    .line 3
    invoke-super {p0}, Lcom/narvii/app/NVActivity;->finish()V

    .line 4
    .line 5
    .line 6
    const v0, 0x7f010037

    .line 7
    .line 8
    .line 9
    const v1, 0x7f010039

    .line 10
    .line 11
    .line 12
    invoke-virtual {p0, v0, v1}, Landroid/app/Activity;->overridePendingTransition(II)V

    .line 13
    .line 14
    sget-object v0, Lcom/narvii/comment/post/CommentPostActivity;->statusListener:Ljava/lang/ref/WeakReference;

    .line 15
    .line 16
    if-nez v0, :cond_0

    .line 17
    const/4 v0, 0x0

    .line 18
    goto :goto_0

    .line 19
    .line 20
    .line 21
    :cond_0
    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 22
    move-result-object v0

    .line 23
    .line 24
    check-cast v0, Lcom/narvii/comment/post/CommentPostActivity$StatusListener;

    .line 25
    .line 26
    :goto_0
    if-eqz v0, :cond_2

    .line 27
    .line 28
    iget-boolean v1, p0, Lcom/narvii/comment/post/CommentPostActivity;->posted:Z

    .line 29
    .line 30
    if-eqz v1, :cond_1

    .line 31
    .line 32
    .line 33
    invoke-virtual {p0}, Lcom/narvii/comment/post/CommentPostActivity;->isEdit()Z

    .line 34
    move-result v1

    .line 35
    .line 36
    if-nez v1, :cond_1

    .line 37
    const/4 v1, 0x1

    .line 38
    goto :goto_1

    .line 39
    :cond_1
    const/4 v1, 0x0

    .line 40
    .line 41
    .line 42
    :goto_1
    invoke-interface {v0, p0, v1}, Lcom/narvii/comment/post/CommentPostActivity$StatusListener;->onPostDone(Lcom/narvii/comment/post/CommentPostActivity;Z)V

    .line 43
    :cond_2
    return-void
.end method

.method public getActiveSpaceHeight()I
    .locals 3

    .line 1
    .line 2
    .line 3
    const v0, 0x7f0a0de5

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    .line 7
    move-result-object v0

    .line 8
    const/4 v1, 0x0

    .line 9
    .line 10
    if-nez v0, :cond_0

    .line 11
    return v1

    .line 12
    .line 13
    :cond_0
    new-instance v2, Landroid/graphics/Rect;

    .line 14
    .line 15
    .line 16
    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    .line 17
    .line 18
    .line 19
    invoke-virtual {v0, v2}, Landroid/view/View;->getGlobalVisibleRect(Landroid/graphics/Rect;)Z

    .line 20
    move-result v0

    .line 21
    .line 22
    if-eqz v0, :cond_1

    .line 23
    .line 24
    iget v0, v2, Landroid/graphics/Rect;->bottom:I

    .line 25
    return v0

    .line 26
    :cond_1
    return v1
.end method

.method public getPageName()Ljava/lang/String;
    .locals 1

    const-string v0, "comments"

    return-object v0
.end method

.method protected getValidPanelHeight(I)I
    .locals 2

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    .line 7
    const v1, 0x7f070555

    .line 8
    .line 9
    .line 10
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 11
    move-result v0

    .line 12
    .line 13
    .line 14
    invoke-static {p1, v0}, Ljava/lang/Math;->max(II)I

    .line 15
    move-result p1

    .line 16
    return p1
.end method

.method public isEdit()Z
    .locals 1

    .line 1
    .line 2
    const-string v0, "commentId"

    .line 3
    .line 4
    .line 5
    invoke-virtual {p0, v0}, Lcom/narvii/app/NVActivity;->getStringParam(Ljava/lang/String;)Ljava/lang/String;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    if-eqz v0, :cond_0

    .line 9
    const/4 v0, 0x1

    .line 10
    goto :goto_0

    .line 11
    :cond_0
    const/4 v0, 0x0

    .line 12
    :goto_0
    return v0
.end method

.method public isValidPage()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 5

    .line 1
    .line 2
    .line 3
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    .line 4
    move-result v0

    .line 5
    .line 6
    .line 7
    const v1, 0x7f0a0aea

    .line 8
    const/4 v2, 0x0

    .line 9
    const/4 v3, 0x0

    .line 10
    .line 11
    if-eq v0, v1, :cond_8

    .line 12
    .line 13
    .line 14
    const v1, 0x7f0a0b27

    .line 15
    .line 16
    if-eq v0, v1, :cond_7

    .line 17
    .line 18
    .line 19
    const v1, 0x7f0a0da7

    .line 20
    const/4 v4, 0x1

    .line 21
    .line 22
    if-eq v0, v1, :cond_2

    .line 23
    .line 24
    .line 25
    invoke-direct {p0, p1}, Lcom/narvii/comment/post/CommentPostActivity;->findImageById(Landroid/view/View;)Lcom/narvii/widget/NVImageView;

    .line 26
    move-result-object p1

    .line 27
    .line 28
    if-eqz p1, :cond_b

    .line 29
    .line 30
    .line 31
    const v0, 0x7f0a06eb

    .line 32
    .line 33
    .line 34
    invoke-virtual {p1, v0}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    .line 35
    move-result-object p1

    .line 36
    .line 37
    check-cast p1, Lcom/narvii/model/Media;

    .line 38
    .line 39
    if-nez p1, :cond_0

    .line 40
    .line 41
    iget-object p1, p0, Lcom/narvii/comment/post/CommentPostActivity;->photoDir:Ljava/io/File;

    .line 42
    .line 43
    .line 44
    invoke-virtual {p1}, Ljava/io/File;->mkdirs()Z

    .line 45
    .line 46
    iget-object p1, p0, Lcom/narvii/post/BasePostActivity;->mediaPickerFragment:Lcom/narvii/media/MediaPickerFragment;

    .line 47
    .line 48
    iget-object v0, p0, Lcom/narvii/comment/post/CommentPostActivity;->photoDir:Ljava/io/File;

    .line 49
    const/4 v1, 0x4

    .line 50
    .line 51
    .line 52
    invoke-virtual {p1, v0, v2, v1, v4}, Lcom/narvii/media/MediaPickerFragment;->pickMedia(Ljava/io/File;Landroid/os/Bundle;II)V

    .line 53
    .line 54
    goto/16 :goto_2

    .line 55
    .line 56
    .line 57
    :cond_0
    invoke-virtual {p0}, Lcom/narvii/comment/post/CommentPostActivity;->savePost()Lcom/narvii/comment/post/CommentPost;

    .line 58
    move-result-object v0

    .line 59
    .line 60
    iget-object v0, v0, Lcom/narvii/comment/post/CommentPost;->mediaList:Ljava/util/List;

    .line 61
    .line 62
    .line 63
    invoke-interface {v0, p1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    .line 64
    move-result p1

    .line 65
    .line 66
    new-instance v1, Landroid/content/Intent;

    .line 67
    .line 68
    .line 69
    invoke-virtual {p0}, Lcom/narvii/app/NVActivity;->getContext()Landroid/content/Context;

    .line 70
    move-result-object v2

    .line 71
    .line 72
    const-class v3, Lcom/narvii/media/MediaGalleryActivity;

    .line 73
    .line 74
    .line 75
    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 76
    .line 77
    const-string v2, "list"

    .line 78
    .line 79
    .line 80
    invoke-static {v0}, Lcom/narvii/util/JacksonUtils;->writeAsString(Ljava/lang/Object;)Ljava/lang/String;

    .line 81
    move-result-object v0

    .line 82
    .line 83
    .line 84
    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 85
    .line 86
    if-ltz p1, :cond_1

    .line 87
    .line 88
    const-string v0, "position"

    .line 89
    .line 90
    .line 91
    invoke-virtual {v1, v0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 92
    .line 93
    .line 94
    :cond_1
    invoke-static {p0, v1}, Lcom/narvii/comment/post/CommentPostActivity;->safedk_RedirectBlockingFragmentActivity_startActivity_df8845b07c3ebd4003c932535b05cc9f(Lai/medialab/medialabads2/maliciousadblockers/RedirectBlockingFragmentActivity;Landroid/content/Intent;)V

    .line 95
    .line 96
    goto/16 :goto_2

    .line 97
    .line 98
    .line 99
    :cond_2
    invoke-virtual {p0}, Lcom/narvii/app/NVActivity;->isVisitorNotJoined()Z

    .line 100
    move-result p1

    .line 101
    .line 102
    if-eqz p1, :cond_3

    .line 103
    .line 104
    .line 105
    invoke-static {p0}, Lcom/narvii/community/JoinCommunityDialog;->showInnerJoinDialog(Lcom/narvii/app/NVContext;)Landroid/app/Dialog;

    .line 106
    return-void

    .line 107
    .line 108
    :cond_3
    iget-object p1, p0, Lcom/narvii/comment/post/CommentPostActivity;->stickerPanel:Landroid/view/View;

    .line 109
    .line 110
    .line 111
    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    .line 112
    move-result p1

    .line 113
    .line 114
    if-eqz p1, :cond_6

    .line 115
    .line 116
    .line 117
    invoke-static {p0}, Lcom/narvii/util/AndroidBug5497Workaround;->getKeyboardHeight(Landroid/app/Activity;)I

    .line 118
    move-result p1

    .line 119
    .line 120
    if-lez p1, :cond_4

    .line 121
    .line 122
    iget-object v0, p0, Lcom/narvii/comment/post/CommentPostActivity;->stickerPanel:Landroid/view/View;

    .line 123
    .line 124
    .line 125
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 126
    move-result-object v0

    .line 127
    .line 128
    .line 129
    invoke-virtual {p0, p1}, Lcom/narvii/comment/post/CommentPostActivity;->getValidPanelHeight(I)I

    .line 130
    move-result p1

    .line 131
    .line 132
    iput p1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 133
    .line 134
    :cond_4
    iget-boolean p1, p0, Lcom/narvii/comment/post/CommentPostActivity;->isKeyboardVisible:Z

    .line 135
    .line 136
    if-eqz p1, :cond_5

    .line 137
    .line 138
    iget-object p1, p0, Lcom/narvii/comment/post/CommentPostActivity;->switchingKeyboard:Lcom/narvii/util/statistics/TmpValue;

    .line 139
    .line 140
    new-instance v0, Lcom/narvii/comment/post/CommentPostActivity$SwitchKeyboard;

    .line 141
    .line 142
    iget-object v1, p0, Lcom/narvii/comment/post/CommentPostActivity;->stickerPanel:Landroid/view/View;

    .line 143
    .line 144
    .line 145
    invoke-direct {v0, v3, v1}, Lcom/narvii/comment/post/CommentPostActivity$SwitchKeyboard;-><init>(ZLandroid/view/View;)V

    .line 146
    .line 147
    .line 148
    invoke-virtual {p1, v0}, Lcom/narvii/util/statistics/TmpValue;->set(Ljava/lang/Object;)V

    .line 149
    .line 150
    iget-object p1, p0, Lcom/narvii/comment/post/CommentPostActivity;->editContent:Landroid/widget/EditText;

    .line 151
    .line 152
    .line 153
    invoke-static {p1}, Lcom/narvii/util/SoftKeyboard;->hideSoftKeyboard(Landroid/widget/EditText;)V

    .line 154
    goto :goto_0

    .line 155
    .line 156
    :cond_5
    iget-object p1, p0, Lcom/narvii/comment/post/CommentPostActivity;->stickerPanel:Landroid/view/View;

    .line 157
    .line 158
    .line 159
    invoke-direct {p0, p1, v3}, Lcom/narvii/comment/post/CommentPostActivity;->changePanelVisibility(Landroid/view/View;I)V

    .line 160
    .line 161
    .line 162
    :goto_0
    invoke-direct {p0, v3}, Lcom/narvii/comment/post/CommentPostActivity;->changeStikerEntryVisibility(Z)V

    .line 163
    .line 164
    .line 165
    invoke-direct {p0, v4}, Lcom/narvii/comment/post/CommentPostActivity;->updateGalleryViews(Z)V

    .line 166
    goto :goto_2

    .line 167
    .line 168
    .line 169
    :cond_6
    invoke-direct {p0, v3}, Lcom/narvii/comment/post/CommentPostActivity;->updateGalleryViews(Z)V

    .line 170
    .line 171
    iget-object p1, p0, Lcom/narvii/comment/post/CommentPostActivity;->switchingKeyboard:Lcom/narvii/util/statistics/TmpValue;

    .line 172
    .line 173
    new-instance v0, Lcom/narvii/comment/post/CommentPostActivity$SwitchKeyboard;

    .line 174
    .line 175
    iget-object v1, p0, Lcom/narvii/comment/post/CommentPostActivity;->stickerPanel:Landroid/view/View;

    .line 176
    .line 177
    .line 178
    invoke-direct {v0, v4, v1}, Lcom/narvii/comment/post/CommentPostActivity$SwitchKeyboard;-><init>(ZLandroid/view/View;)V

    .line 179
    .line 180
    .line 181
    invoke-virtual {p1, v0}, Lcom/narvii/util/statistics/TmpValue;->set(Ljava/lang/Object;)V

    .line 182
    .line 183
    iget-object p1, p0, Lcom/narvii/comment/post/CommentPostActivity;->editContent:Landroid/widget/EditText;

    .line 184
    .line 185
    .line 186
    invoke-static {p1}, Lcom/narvii/util/SoftKeyboard;->showSoftKeyboard(Landroid/widget/EditText;)V

    .line 187
    .line 188
    .line 189
    invoke-direct {p0, v4}, Lcom/narvii/comment/post/CommentPostActivity;->changeStikerEntryVisibility(Z)V

    .line 190
    goto :goto_2

    .line 191
    .line 192
    .line 193
    :cond_7
    invoke-virtual {p0}, Lcom/narvii/post/BasePostActivity;->startPost()V

    .line 194
    goto :goto_2

    .line 195
    .line 196
    .line 197
    :cond_8
    invoke-virtual {p0}, Lcom/narvii/comment/post/CommentPostActivity;->savePost()Lcom/narvii/comment/post/CommentPost;

    .line 198
    move-result-object p1

    .line 199
    .line 200
    iget-object p1, p1, Lcom/narvii/comment/post/CommentPost;->mediaList:Ljava/util/List;

    .line 201
    const/4 v0, 0x5

    .line 202
    .line 203
    if-eqz p1, :cond_9

    .line 204
    .line 205
    .line 206
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 207
    move-result v1

    .line 208
    .line 209
    if-lt v1, v0, :cond_9

    .line 210
    .line 211
    .line 212
    const p1, 0x7f120efb

    .line 213
    .line 214
    .line 215
    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 216
    move-result-object p1

    .line 217
    .line 218
    .line 219
    invoke-static {p0, p1, v3}, Lcom/narvii/util/NVToast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Lcom/narvii/util/NVToast;

    .line 220
    move-result-object p1

    .line 221
    .line 222
    .line 223
    invoke-virtual {p1}, Lcom/narvii/util/NVToast;->show()V

    .line 224
    goto :goto_2

    .line 225
    .line 226
    :cond_9
    iget-object v1, p0, Lcom/narvii/comment/post/CommentPostActivity;->photoDir:Ljava/io/File;

    .line 227
    .line 228
    .line 229
    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    .line 230
    .line 231
    iget-object v1, p0, Lcom/narvii/post/BasePostActivity;->mediaPickerFragment:Lcom/narvii/media/MediaPickerFragment;

    .line 232
    .line 233
    iget-object v4, p0, Lcom/narvii/comment/post/CommentPostActivity;->photoDir:Ljava/io/File;

    .line 234
    .line 235
    if-nez p1, :cond_a

    .line 236
    move p1, v3

    .line 237
    goto :goto_1

    .line 238
    .line 239
    .line 240
    :cond_a
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 241
    move-result p1

    .line 242
    :goto_1
    sub-int/2addr v0, p1

    .line 243
    .line 244
    .line 245
    invoke-virtual {v1, v4, v2, v3, v0}, Lcom/narvii/media/MediaPickerFragment;->pickMedia(Ljava/io/File;Landroid/os/Bundle;II)V

    .line 246
    :cond_b
    :goto_2
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 6

    .line 1
    .line 2
    .line 3
    invoke-super {p0, p1}, Lcom/narvii/post/BasePostActivity;->onCreate(Landroid/os/Bundle;)V

    .line 4
    const/4 v0, 0x1

    .line 5
    .line 6
    .line 7
    invoke-virtual {p0, v0}, Lcom/narvii/app/theme/NVThemeActivity;->setShouldInflateAd(Z)V

    .line 8
    .line 9
    new-instance v1, Ljava/io/File;

    .line 10
    .line 11
    new-instance v2, Ljava/io/File;

    .line 12
    .line 13
    .line 14
    invoke-virtual {p0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    .line 15
    move-result-object v3

    .line 16
    .line 17
    const-string v4, "photo"

    .line 18
    .line 19
    .line 20
    invoke-direct {v2, v3, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 21
    .line 22
    const-string v3, "comment"

    .line 23
    .line 24
    .line 25
    invoke-direct {v1, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 26
    .line 27
    iput-object v1, p0, Lcom/narvii/comment/post/CommentPostActivity;->photoDir:Ljava/io/File;

    .line 28
    .line 29
    .line 30
    const v1, 0x7f0d062b

    .line 31
    .line 32
    .line 33
    invoke-virtual {p0, v1}, Lcom/narvii/app/theme/NVThemeActivity;->setContentView(I)V

    .line 34
    .line 35
    .line 36
    invoke-static {p0}, Lcom/narvii/util/AndroidBug5497Workaround;->assistActivity(Landroid/app/Activity;)V

    .line 37
    .line 38
    .line 39
    invoke-virtual {p0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    .line 40
    move-result-object v1

    .line 41
    .line 42
    .line 43
    invoke-virtual {v1}, Landroid/app/ActionBar;->hide()V

    .line 44
    .line 45
    .line 46
    invoke-virtual {p0}, Lcom/narvii/comment/post/CommentPostActivity;->isEdit()Z

    .line 47
    move-result v1

    .line 48
    .line 49
    if-eqz v1, :cond_0

    .line 50
    .line 51
    .line 52
    const v1, 0x7f120438

    .line 53
    goto :goto_0

    .line 54
    .line 55
    .line 56
    :cond_0
    const v1, 0x7f120eb4

    .line 57
    .line 58
    .line 59
    :goto_0
    invoke-virtual {p0, v1}, Landroid/app/Activity;->setTitle(I)V

    .line 60
    .line 61
    .line 62
    const v1, 0x7f0a039d

    .line 63
    .line 64
    .line 65
    invoke-virtual {p0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    .line 66
    move-result-object v1

    .line 67
    .line 68
    check-cast v1, Landroid/widget/EditText;

    .line 69
    .line 70
    iput-object v1, p0, Lcom/narvii/comment/post/CommentPostActivity;->editContent:Landroid/widget/EditText;

    .line 71
    .line 72
    new-instance v2, Lcom/narvii/comment/post/CommentPostActivity$1;

    .line 73
    .line 74
    .line 75
    invoke-direct {v2, p0}, Lcom/narvii/comment/post/CommentPostActivity$1;-><init>(Lcom/narvii/comment/post/CommentPostActivity;)V

    .line 76
    .line 77
    .line 78
    invoke-static {v1, v2}, Lcom/narvii/util/SoftKeyboard;->observeKeyboard(Landroid/view/View;Lcom/narvii/util/Callback;)Lcom/narvii/util/SoftKeyboard$KeyboardObserver;

    .line 79
    move-result-object v1

    .line 80
    .line 81
    iput-object v1, p0, Lcom/narvii/comment/post/CommentPostActivity;->keyboardObserver:Lcom/narvii/util/SoftKeyboard$KeyboardObserver;

    .line 82
    .line 83
    iget-object v1, p0, Lcom/narvii/comment/post/CommentPostActivity;->editContent:Landroid/widget/EditText;

    .line 84
    .line 85
    check-cast v1, Lcom/narvii/comment/post/CommentEditText;

    .line 86
    .line 87
    new-instance v2, Lcom/narvii/comment/post/CommentPostActivity$2;

    .line 88
    .line 89
    .line 90
    invoke-direct {v2, p0}, Lcom/narvii/comment/post/CommentPostActivity$2;-><init>(Lcom/narvii/comment/post/CommentPostActivity;)V

    .line 91
    .line 92
    iput-object v2, v1, Lcom/narvii/comment/post/CommentEditText;->onKeyPreImeListener:Lcom/narvii/util/Callback;

    .line 93
    .line 94
    iget-object v1, p0, Lcom/narvii/comment/post/CommentPostActivity;->editContent:Landroid/widget/EditText;

    .line 95
    .line 96
    new-instance v2, Lcom/narvii/comment/post/CommentPostActivity$3;

    .line 97
    .line 98
    .line 99
    invoke-direct {v2, p0}, Lcom/narvii/comment/post/CommentPostActivity$3;-><init>(Lcom/narvii/comment/post/CommentPostActivity;)V

    .line 100
    .line 101
    .line 102
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 103
    .line 104
    const-string v1, "hint"

    .line 105
    .line 106
    .line 107
    invoke-virtual {p0, v1}, Lcom/narvii/app/NVActivity;->getStringParam(Ljava/lang/String;)Ljava/lang/String;

    .line 108
    move-result-object v1

    .line 109
    .line 110
    .line 111
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 112
    move-result v2

    .line 113
    .line 114
    if-nez v2, :cond_1

    .line 115
    .line 116
    iget-object v2, p0, Lcom/narvii/comment/post/CommentPostActivity;->editContent:Landroid/widget/EditText;

    .line 117
    .line 118
    .line 119
    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setHint(Ljava/lang/CharSequence;)V

    .line 120
    .line 121
    .line 122
    :cond_1
    const v1, 0x7f0a0aea

    .line 123
    .line 124
    .line 125
    invoke-virtual {p0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    .line 126
    move-result-object v2

    .line 127
    .line 128
    .line 129
    invoke-virtual {v2, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 130
    .line 131
    .line 132
    invoke-virtual {p0}, Lcom/narvii/comment/post/CommentPostActivity;->disableMediaPost()Z

    .line 133
    move-result v2

    .line 134
    .line 135
    if-eqz v2, :cond_2

    .line 136
    .line 137
    .line 138
    invoke-virtual {p0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    .line 139
    move-result-object v1

    .line 140
    .line 141
    const/16 v2, 0x8

    .line 142
    .line 143
    .line 144
    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 145
    .line 146
    iget-object v1, p0, Lcom/narvii/comment/post/CommentPostActivity;->editContent:Landroid/widget/EditText;

    .line 147
    .line 148
    .line 149
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 150
    move-result-object v1

    .line 151
    .line 152
    check-cast v1, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 153
    .line 154
    .line 155
    invoke-virtual {p0}, Lcom/narvii/app/NVActivity;->getContext()Landroid/content/Context;

    .line 156
    move-result-object v2

    .line 157
    .line 158
    const/high16 v3, 0x41000000    # 8.0f

    .line 159
    .line 160
    .line 161
    invoke-static {v2, v3}, Lcom/narvii/util/Utils;->dpToPx(Landroid/content/Context;F)F

    .line 162
    move-result v2

    .line 163
    float-to-int v2, v2

    .line 164
    .line 165
    .line 166
    invoke-virtual {v1, v2}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginStart(I)V

    .line 167
    .line 168
    .line 169
    :cond_2
    const v1, 0x7f0a0b27

    .line 170
    .line 171
    .line 172
    invoke-virtual {p0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    .line 173
    move-result-object v1

    .line 174
    .line 175
    check-cast v1, Landroid/widget/ImageView;

    .line 176
    .line 177
    iput-object v1, p0, Lcom/narvii/comment/post/CommentPostActivity;->postBtn:Landroid/widget/ImageView;

    .line 178
    .line 179
    .line 180
    invoke-virtual {v1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 181
    .line 182
    .line 183
    const v1, 0x7f0a0de5

    .line 184
    .line 185
    .line 186
    invoke-virtual {p0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    .line 187
    move-result-object v1

    .line 188
    .line 189
    new-instance v2, Lcom/narvii/comment/post/CommentPostActivity$4;

    .line 190
    .line 191
    .line 192
    invoke-direct {v2, p0}, Lcom/narvii/comment/post/CommentPostActivity$4;-><init>(Lcom/narvii/comment/post/CommentPostActivity;)V

    .line 193
    .line 194
    .line 195
    invoke-virtual {v1, v2}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 196
    .line 197
    .line 198
    const v1, 0x7f0a035b

    .line 199
    .line 200
    .line 201
    invoke-virtual {p0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    .line 202
    move-result-object v1

    .line 203
    .line 204
    check-cast v1, Lcom/narvii/widget/DragSortGallery;

    .line 205
    .line 206
    iput-object v1, p0, Lcom/narvii/comment/post/CommentPostActivity;->imgs:Lcom/narvii/widget/DragSortGallery;

    .line 207
    .line 208
    .line 209
    invoke-virtual {v1}, Landroid/view/ViewGroup;->getChildCount()I

    .line 210
    move-result v1

    .line 211
    const/4 v2, 0x0

    .line 212
    move v3, v2

    .line 213
    .line 214
    :goto_1
    if-ge v3, v1, :cond_4

    .line 215
    .line 216
    iget-object v4, p0, Lcom/narvii/comment/post/CommentPostActivity;->imgs:Lcom/narvii/widget/DragSortGallery;

    .line 217
    .line 218
    .line 219
    invoke-virtual {v4, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 220
    move-result-object v4

    .line 221
    .line 222
    .line 223
    invoke-direct {p0, v4}, Lcom/narvii/comment/post/CommentPostActivity;->findImageById(Landroid/view/View;)Lcom/narvii/widget/NVImageView;

    .line 224
    move-result-object v5

    .line 225
    .line 226
    if-eqz v5, :cond_3

    .line 227
    .line 228
    .line 229
    invoke-virtual {v4, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 230
    .line 231
    .line 232
    invoke-virtual {v4, p0}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 233
    .line 234
    :cond_3
    add-int/lit8 v3, v3, 0x1

    .line 235
    goto :goto_1

    .line 236
    .line 237
    :cond_4
    const-class v1, Lcom/narvii/comment/post/CommentPost;

    .line 238
    .line 239
    const-string v3, "post"

    .line 240
    .line 241
    if-nez p1, :cond_b

    .line 242
    .line 243
    .line 244
    invoke-virtual {p0, v3}, Lcom/narvii/app/NVActivity;->getStringParam(Ljava/lang/String;)Ljava/lang/String;

    .line 245
    move-result-object p1

    .line 246
    .line 247
    .line 248
    invoke-static {p1, v1}, Lcom/narvii/util/JacksonUtils;->readAs(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    .line 249
    move-result-object p1

    .line 250
    .line 251
    check-cast p1, Lcom/narvii/comment/post/CommentPost;

    .line 252
    .line 253
    iput-object p1, p0, Lcom/narvii/comment/post/CommentPostActivity;->post:Lcom/narvii/comment/post/CommentPost;

    .line 254
    .line 255
    if-eqz p1, :cond_8

    .line 256
    .line 257
    .line 258
    invoke-virtual {p1}, Lcom/narvii/comment/post/CommentPost;->title()Ljava/lang/String;

    .line 259
    move-result-object p1

    .line 260
    .line 261
    if-eqz p1, :cond_5

    .line 262
    .line 263
    iget-object p1, p0, Lcom/narvii/comment/post/CommentPostActivity;->post:Lcom/narvii/comment/post/CommentPost;

    .line 264
    .line 265
    .line 266
    invoke-virtual {p1}, Lcom/narvii/comment/post/CommentPost;->title()Ljava/lang/String;

    .line 267
    move-result-object p1

    .line 268
    .line 269
    .line 270
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 271
    move-result-object p1

    .line 272
    .line 273
    .line 274
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    .line 275
    move-result p1

    .line 276
    .line 277
    if-nez p1, :cond_7

    .line 278
    .line 279
    :cond_5
    iget-object p1, p0, Lcom/narvii/comment/post/CommentPostActivity;->post:Lcom/narvii/comment/post/CommentPost;

    .line 280
    .line 281
    .line 282
    invoke-virtual {p1}, Lcom/narvii/comment/post/CommentPost;->icon()Ljava/lang/String;

    .line 283
    move-result-object p1

    .line 284
    .line 285
    if-eqz p1, :cond_6

    .line 286
    .line 287
    iget-object p1, p0, Lcom/narvii/comment/post/CommentPostActivity;->post:Lcom/narvii/comment/post/CommentPost;

    .line 288
    .line 289
    .line 290
    invoke-virtual {p1}, Lcom/narvii/comment/post/CommentPost;->icon()Ljava/lang/String;

    .line 291
    move-result-object p1

    .line 292
    .line 293
    .line 294
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 295
    move-result-object p1

    .line 296
    .line 297
    .line 298
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    .line 299
    move-result p1

    .line 300
    .line 301
    if-nez p1, :cond_7

    .line 302
    .line 303
    :cond_6
    iget-object p1, p0, Lcom/narvii/comment/post/CommentPostActivity;->post:Lcom/narvii/comment/post/CommentPost;

    .line 304
    .line 305
    .line 306
    invoke-virtual {p1}, Lcom/narvii/comment/post/CommentPost;->content()Ljava/lang/String;

    .line 307
    move-result-object p1

    .line 308
    .line 309
    if-eqz p1, :cond_8

    .line 310
    .line 311
    iget-object p1, p0, Lcom/narvii/comment/post/CommentPostActivity;->post:Lcom/narvii/comment/post/CommentPost;

    .line 312
    .line 313
    .line 314
    invoke-virtual {p1}, Lcom/narvii/comment/post/CommentPost;->content()Ljava/lang/String;

    .line 315
    move-result-object p1

    .line 316
    .line 317
    .line 318
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 319
    move-result-object p1

    .line 320
    .line 321
    .line 322
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    .line 323
    move-result p1

    .line 324
    .line 325
    if-nez p1, :cond_7

    .line 326
    goto :goto_2

    .line 327
    :cond_7
    move p1, v2

    .line 328
    goto :goto_3

    .line 329
    :cond_8
    :goto_2
    move p1, v0

    .line 330
    .line 331
    :goto_3
    iget-object v1, p0, Lcom/narvii/comment/post/CommentPostActivity;->post:Lcom/narvii/comment/post/CommentPost;

    .line 332
    .line 333
    if-eqz v1, :cond_9

    .line 334
    .line 335
    if-eqz p1, :cond_c

    .line 336
    .line 337
    :cond_9
    new-instance p1, Ljava/lang/StringBuilder;

    .line 338
    .line 339
    .line 340
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 341
    .line 342
    const-string v1, "parentType"

    .line 343
    .line 344
    .line 345
    invoke-virtual {p0, v1}, Lcom/narvii/app/NVActivity;->getStringParam(Ljava/lang/String;)Ljava/lang/String;

    .line 346
    move-result-object v1

    .line 347
    .line 348
    .line 349
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 350
    .line 351
    const-string/jumbo v1, "|"

    .line 352
    .line 353
    .line 354
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 355
    .line 356
    const-string v3, "parentId"

    .line 357
    .line 358
    .line 359
    invoke-virtual {p0, v3}, Lcom/narvii/app/NVActivity;->getStringParam(Ljava/lang/String;)Ljava/lang/String;

    .line 360
    move-result-object v3

    .line 361
    .line 362
    .line 363
    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 364
    .line 365
    .line 366
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 367
    .line 368
    const-string v3, "respondTo"

    .line 369
    .line 370
    .line 371
    invoke-virtual {p0, v3}, Lcom/narvii/app/NVActivity;->getStringParam(Ljava/lang/String;)Ljava/lang/String;

    .line 372
    move-result-object v3

    .line 373
    .line 374
    .line 375
    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 376
    .line 377
    .line 378
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 379
    .line 380
    const-string v1, "commentId"

    .line 381
    .line 382
    .line 383
    invoke-virtual {p0, v1}, Lcom/narvii/app/NVActivity;->getStringParam(Ljava/lang/String;)Ljava/lang/String;

    .line 384
    move-result-object v1

    .line 385
    .line 386
    .line 387
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 388
    .line 389
    .line 390
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 391
    move-result-object p1

    .line 392
    .line 393
    sget-object v1, Lcom/narvii/comment/post/CommentPostActivity;->LATEST_DRAFT_ID:Ljava/lang/String;

    .line 394
    .line 395
    .line 396
    invoke-static {p1, v1}, Lcom/narvii/util/Utils;->isEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 397
    move-result p1

    .line 398
    .line 399
    if-eqz p1, :cond_a

    .line 400
    .line 401
    sget-object p1, Lcom/narvii/comment/post/CommentPostActivity;->LATEST_DRAFT:Lcom/narvii/comment/post/CommentPost;

    .line 402
    .line 403
    if-eqz p1, :cond_a

    .line 404
    .line 405
    iput-object p1, p0, Lcom/narvii/comment/post/CommentPostActivity;->post:Lcom/narvii/comment/post/CommentPost;

    .line 406
    const/4 p1, 0x0

    .line 407
    .line 408
    sput-object p1, Lcom/narvii/comment/post/CommentPostActivity;->LATEST_DRAFT:Lcom/narvii/comment/post/CommentPost;

    .line 409
    .line 410
    sput-object p1, Lcom/narvii/comment/post/CommentPostActivity;->LATEST_DRAFT_ID:Ljava/lang/String;

    .line 411
    goto :goto_4

    .line 412
    .line 413
    :cond_a
    iget-object p1, p0, Lcom/narvii/comment/post/CommentPostActivity;->post:Lcom/narvii/comment/post/CommentPost;

    .line 414
    .line 415
    if-nez p1, :cond_c

    .line 416
    .line 417
    new-instance p1, Lcom/narvii/comment/post/CommentPost;

    .line 418
    .line 419
    .line 420
    invoke-direct {p1}, Lcom/narvii/comment/post/CommentPost;-><init>()V

    .line 421
    .line 422
    iput-object p1, p0, Lcom/narvii/comment/post/CommentPostActivity;->post:Lcom/narvii/comment/post/CommentPost;

    .line 423
    goto :goto_4

    .line 424
    .line 425
    .line 426
    :cond_b
    invoke-virtual {p1, v3}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 427
    move-result-object p1

    .line 428
    .line 429
    .line 430
    invoke-static {p1, v1}, Lcom/narvii/util/JacksonUtils;->readAs(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    .line 431
    move-result-object p1

    .line 432
    .line 433
    check-cast p1, Lcom/narvii/comment/post/CommentPost;

    .line 434
    .line 435
    iput-object p1, p0, Lcom/narvii/comment/post/CommentPostActivity;->post:Lcom/narvii/comment/post/CommentPost;

    .line 436
    .line 437
    .line 438
    :cond_c
    :goto_4
    const p1, 0x7f0a0da7

    .line 439
    .line 440
    .line 441
    invoke-virtual {p0, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    .line 442
    move-result-object p1

    .line 443
    .line 444
    iput-object p1, p0, Lcom/narvii/comment/post/CommentPostActivity;->stickerContainer:Landroid/view/View;

    .line 445
    .line 446
    .line 447
    invoke-virtual {p1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 448
    .line 449
    .line 450
    const p1, 0x7f0a0db1

    .line 451
    .line 452
    .line 453
    invoke-virtual {p0, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    .line 454
    move-result-object v1

    .line 455
    .line 456
    iput-object v1, p0, Lcom/narvii/comment/post/CommentPostActivity;->stickerPanel:Landroid/view/View;

    .line 457
    .line 458
    .line 459
    const v1, 0x7f0a0daa

    .line 460
    .line 461
    .line 462
    invoke-virtual {p0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    .line 463
    move-result-object v1

    .line 464
    .line 465
    iput-object v1, p0, Lcom/narvii/comment/post/CommentPostActivity;->btnStickerEntry:Landroid/view/View;

    .line 466
    .line 467
    .line 468
    const v1, 0x7f0a0dae

    .line 469
    .line 470
    .line 471
    invoke-virtual {p0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    .line 472
    move-result-object v1

    .line 473
    .line 474
    iput-object v1, p0, Lcom/narvii/comment/post/CommentPostActivity;->btnKeyboardEntry:Landroid/view/View;

    .line 475
    .line 476
    iget-object v1, p0, Lcom/narvii/comment/post/CommentPostActivity;->stickerPanel:Landroid/view/View;

    .line 477
    .line 478
    if-eqz v1, :cond_11

    .line 479
    .line 480
    .line 481
    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    .line 482
    move-result-object v1

    .line 483
    .line 484
    const-string v3, "stickPicker"

    .line 485
    .line 486
    .line 487
    invoke-virtual {v1, v3}, Landroidx/fragment/app/FragmentManager;->m0(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    .line 488
    move-result-object v1

    .line 489
    .line 490
    check-cast v1, Lcom/narvii/monetization/sticker/picker/StickerPickerTabFragment;

    .line 491
    .line 492
    iput-object v1, p0, Lcom/narvii/comment/post/CommentPostActivity;->stickerPickerTabFragment:Lcom/narvii/monetization/sticker/picker/StickerPickerTabFragment;

    .line 493
    .line 494
    if-nez v1, :cond_10

    .line 495
    .line 496
    new-instance v1, Lcom/narvii/monetization/sticker/picker/StickerPickerTabFragment;

    .line 497
    .line 498
    .line 499
    invoke-direct {v1}, Lcom/narvii/monetization/sticker/picker/StickerPickerTabFragment;-><init>()V

    .line 500
    .line 501
    iput-object v1, p0, Lcom/narvii/comment/post/CommentPostActivity;->stickerPickerTabFragment:Lcom/narvii/monetization/sticker/picker/StickerPickerTabFragment;

    .line 502
    .line 503
    new-instance v1, Landroid/os/Bundle;

    .line 504
    .line 505
    .line 506
    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 507
    .line 508
    const-string v4, "showEmojiOnly"

    .line 509
    .line 510
    .line 511
    invoke-virtual {p0, v4}, Lcom/narvii/app/NVActivity;->getBooleanParam(Ljava/lang/String;)Z

    .line 512
    move-result v5

    .line 513
    .line 514
    if-nez v5, :cond_e

    .line 515
    .line 516
    const-string v5, "isAnnouncement"

    .line 517
    .line 518
    .line 519
    invoke-virtual {p0, v5}, Lcom/narvii/app/NVActivity;->getBooleanParam(Ljava/lang/String;)Z

    .line 520
    move-result v5

    .line 521
    .line 522
    if-eqz v5, :cond_d

    .line 523
    goto :goto_5

    .line 524
    :cond_d
    move v5, v2

    .line 525
    goto :goto_6

    .line 526
    :cond_e
    :goto_5
    move v5, v0

    .line 527
    .line 528
    .line 529
    :goto_6
    invoke-virtual {v1, v4, v5}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    .line 530
    .line 531
    const-string v4, "tabBottom"

    .line 532
    .line 533
    .line 534
    invoke-virtual {v1, v4, v0}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    .line 535
    .line 536
    const-string v0, "source"

    .line 537
    .line 538
    const-string v4, "Sticker Keyboard"

    .line 539
    .line 540
    .line 541
    invoke-virtual {v1, v0, v4}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 542
    .line 543
    const-string v0, "stickerCollectionId"

    .line 544
    .line 545
    .line 546
    invoke-virtual {p0, v0}, Lcom/narvii/app/NVActivity;->getStringParam(Ljava/lang/String;)Ljava/lang/String;

    .line 547
    move-result-object v0

    .line 548
    .line 549
    const-string v4, "collectionId"

    .line 550
    .line 551
    .line 552
    invoke-virtual {v1, v4, v0}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 553
    .line 554
    .line 555
    invoke-virtual {p0}, Lcom/narvii/app/NVActivity;->isGlobalInteractionScope()Z

    .line 556
    move-result v0

    .line 557
    .line 558
    if-eqz v0, :cond_f

    .line 559
    .line 560
    const-string v0, "__communityId"

    .line 561
    .line 562
    .line 563
    invoke-virtual {v1, v0, v2}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 564
    .line 565
    :cond_f
    iget-object v0, p0, Lcom/narvii/comment/post/CommentPostActivity;->stickerPickerTabFragment:Lcom/narvii/monetization/sticker/picker/StickerPickerTabFragment;

    .line 566
    .line 567
    .line 568
    invoke-virtual {v0, v1}, Landroidx/fragment/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    .line 569
    .line 570
    .line 571
    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    .line 572
    move-result-object v0

    .line 573
    .line 574
    .line 575
    invoke-virtual {v0}, Landroidx/fragment/app/FragmentManager;->q()Landroidx/fragment/app/FragmentTransaction;

    .line 576
    move-result-object v0

    .line 577
    .line 578
    iget-object v1, p0, Lcom/narvii/comment/post/CommentPostActivity;->stickerPickerTabFragment:Lcom/narvii/monetization/sticker/picker/StickerPickerTabFragment;

    .line 579
    .line 580
    .line 581
    invoke-virtual {v0, p1, v1, v3}, Landroidx/fragment/app/FragmentTransaction;->c(ILandroidx/fragment/app/Fragment;Ljava/lang/String;)Landroidx/fragment/app/FragmentTransaction;

    .line 582
    move-result-object p1

    .line 583
    .line 584
    .line 585
    invoke-virtual {p1}, Landroidx/fragment/app/FragmentTransaction;->k()I

    .line 586
    .line 587
    :cond_10
    iget-object p1, p0, Lcom/narvii/comment/post/CommentPostActivity;->stickerPickerTabFragment:Lcom/narvii/monetization/sticker/picker/StickerPickerTabFragment;

    .line 588
    .line 589
    .line 590
    invoke-virtual {p1, p0}, Lcom/narvii/monetization/sticker/picker/StickerPickerTabFragment;->setStickerSelectListener(Lcom/narvii/monetization/sticker/picker/StickerSelectListener;)V

    .line 591
    .line 592
    :cond_11
    iget-object p1, p0, Lcom/narvii/comment/post/CommentPostActivity;->post:Lcom/narvii/comment/post/CommentPost;

    .line 593
    .line 594
    .line 595
    invoke-virtual {p0, p1}, Lcom/narvii/comment/post/CommentPostActivity;->updateView(Lcom/narvii/comment/post/CommentPost;)V

    .line 596
    .line 597
    const-string p1, "fromStoryCommentList"

    .line 598
    .line 599
    .line 600
    invoke-virtual {p0, p1, v2}, Lcom/narvii/app/NVActivity;->getBooleanParam(Ljava/lang/String;Z)Z

    .line 601
    move-result p1

    .line 602
    .line 603
    iput-boolean p1, p0, Lcom/narvii/comment/post/CommentPostActivity;->fromStoryCommentList:Z

    .line 604
    return-void
.end method

.method protected onDestroy()V
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-super {p0}, Lcom/narvii/post/BasePostActivity;->onDestroy()V

    .line 4
    .line 5
    iget-object v0, p0, Lcom/narvii/comment/post/CommentPostActivity;->keyboardObserver:Lcom/narvii/util/SoftKeyboard$KeyboardObserver;

    .line 6
    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    .line 10
    invoke-virtual {v0}, Lcom/narvii/util/SoftKeyboard$KeyboardObserver;->dispose()V

    .line 11
    :cond_0
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1

    .line 1
    .line 2
    const/16 v0, 0x52

    .line 3
    .line 4
    if-ne p1, v0, :cond_0

    .line 5
    const/4 p1, 0x1

    .line 6
    return p1

    .line 7
    .line 8
    .line 9
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    .line 10
    move-result p1

    .line 11
    return p1
.end method

.method protected onLoginResult(ZLandroid/content/Intent;)V
    .locals 2

    .line 1
    .line 2
    .line 3
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    const-string v1, "loginAhead"

    .line 7
    .line 8
    .line 9
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 10
    move-result v0

    .line 11
    .line 12
    if-eqz v0, :cond_0

    .line 13
    .line 14
    new-instance v0, Lcom/narvii/comment/post/a;

    .line 15
    .line 16
    .line 17
    invoke-direct {v0, p0}, Lcom/narvii/comment/post/a;-><init>(Lcom/narvii/comment/post/CommentPostActivity;)V

    .line 18
    .line 19
    .line 20
    invoke-static {v0}, Lcom/narvii/util/Utils;->post(Ljava/lang/Runnable;)V

    .line 21
    .line 22
    .line 23
    :cond_0
    invoke-super {p0, p1, p2}, Lcom/narvii/post/BasePostActivity;->onLoginResult(ZLandroid/content/Intent;)V

    .line 24
    return-void
.end method

.method public onLongClick(Landroid/view/View;)Z
    .locals 5

    .line 1
    .line 2
    .line 3
    invoke-direct {p0, p1}, Lcom/narvii/comment/post/CommentPostActivity;->findImageById(Landroid/view/View;)Lcom/narvii/widget/NVImageView;

    .line 4
    move-result-object p1

    .line 5
    .line 6
    .line 7
    const v0, 0x7f0a06eb

    .line 8
    .line 9
    .line 10
    invoke-virtual {p1, v0}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    .line 11
    move-result-object p1

    .line 12
    .line 13
    check-cast p1, Lcom/narvii/model/Media;

    .line 14
    const/4 v0, 0x1

    .line 15
    .line 16
    if-nez p1, :cond_0

    .line 17
    goto :goto_0

    .line 18
    .line 19
    :cond_0
    new-instance v1, Landroid/app/AlertDialog$Builder;

    .line 20
    .line 21
    .line 22
    invoke-virtual {p0}, Lcom/narvii/app/NVActivity;->getContext()Landroid/content/Context;

    .line 23
    move-result-object v2

    .line 24
    .line 25
    .line 26
    invoke-direct {v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 27
    .line 28
    new-array v2, v0, [Ljava/lang/CharSequence;

    .line 29
    .line 30
    .line 31
    invoke-virtual {p0}, Lcom/narvii/app/NVActivity;->getContext()Landroid/content/Context;

    .line 32
    move-result-object v3

    .line 33
    .line 34
    .line 35
    const v4, 0x7f1203a0

    .line 36
    .line 37
    .line 38
    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 39
    move-result-object v3

    .line 40
    const/4 v4, 0x0

    .line 41
    .line 42
    aput-object v3, v2, v4

    .line 43
    .line 44
    new-instance v3, Lcom/narvii/comment/post/CommentPostActivity$5;

    .line 45
    .line 46
    .line 47
    invoke-direct {v3, p0, p1}, Lcom/narvii/comment/post/CommentPostActivity$5;-><init>(Lcom/narvii/comment/post/CommentPostActivity;Lcom/narvii/model/Media;)V

    .line 48
    .line 49
    .line 50
    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 51
    .line 52
    .line 53
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 54
    :goto_0
    return v0
.end method

.method protected onPause()V
    .locals 4

    .line 1
    .line 2
    .line 3
    invoke-super {p0}, Lcom/narvii/app/NVActivity;->onPause()V

    .line 4
    .line 5
    iget-boolean v0, p0, Lcom/narvii/comment/post/CommentPostActivity;->posted:Z

    .line 6
    .line 7
    if-nez v0, :cond_4

    .line 8
    .line 9
    .line 10
    invoke-virtual {p0}, Lcom/narvii/comment/post/CommentPostActivity;->savePost()Lcom/narvii/comment/post/CommentPost;

    .line 11
    move-result-object v0

    .line 12
    .line 13
    const-string v1, "post"

    .line 14
    .line 15
    .line 16
    invoke-virtual {p0, v1}, Lcom/narvii/app/NVActivity;->getStringParam(Ljava/lang/String;)Ljava/lang/String;

    .line 17
    move-result-object v1

    .line 18
    .line 19
    const-class v2, Lcom/narvii/comment/post/CommentPost;

    .line 20
    .line 21
    .line 22
    invoke-static {v1, v2}, Lcom/narvii/util/JacksonUtils;->readAs(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    .line 23
    move-result-object v1

    .line 24
    .line 25
    check-cast v1, Lcom/narvii/comment/post/CommentPost;

    .line 26
    .line 27
    if-eqz v0, :cond_4

    .line 28
    .line 29
    .line 30
    invoke-virtual {v0}, Lcom/narvii/comment/post/CommentPost;->title()Ljava/lang/String;

    .line 31
    move-result-object v2

    .line 32
    .line 33
    if-eqz v2, :cond_0

    .line 34
    .line 35
    .line 36
    invoke-virtual {v0}, Lcom/narvii/comment/post/CommentPost;->title()Ljava/lang/String;

    .line 37
    move-result-object v2

    .line 38
    .line 39
    .line 40
    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 41
    move-result-object v2

    .line 42
    .line 43
    .line 44
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    .line 45
    move-result v2

    .line 46
    .line 47
    if-nez v2, :cond_2

    .line 48
    .line 49
    .line 50
    :cond_0
    invoke-virtual {v0}, Lcom/narvii/comment/post/CommentPost;->icon()Ljava/lang/String;

    .line 51
    move-result-object v2

    .line 52
    .line 53
    if-eqz v2, :cond_1

    .line 54
    .line 55
    .line 56
    invoke-virtual {v0}, Lcom/narvii/comment/post/CommentPost;->icon()Ljava/lang/String;

    .line 57
    move-result-object v2

    .line 58
    .line 59
    .line 60
    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 61
    move-result-object v2

    .line 62
    .line 63
    .line 64
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    .line 65
    move-result v2

    .line 66
    .line 67
    if-nez v2, :cond_2

    .line 68
    .line 69
    .line 70
    :cond_1
    invoke-virtual {v0}, Lcom/narvii/comment/post/CommentPost;->content()Ljava/lang/String;

    .line 71
    move-result-object v2

    .line 72
    .line 73
    if-eqz v2, :cond_4

    .line 74
    .line 75
    .line 76
    invoke-virtual {v0}, Lcom/narvii/comment/post/CommentPost;->content()Ljava/lang/String;

    .line 77
    move-result-object v2

    .line 78
    .line 79
    .line 80
    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 81
    move-result-object v2

    .line 82
    .line 83
    .line 84
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    .line 85
    move-result v2

    .line 86
    .line 87
    if-nez v2, :cond_2

    .line 88
    goto :goto_0

    .line 89
    .line 90
    :cond_2
    if-eqz v1, :cond_3

    .line 91
    .line 92
    .line 93
    invoke-virtual {v0, v1}, Lcom/narvii/comment/post/CommentPost;->isSame(Lcom/narvii/post/PostObject;)Z

    .line 94
    move-result v1

    .line 95
    .line 96
    if-nez v1, :cond_4

    .line 97
    .line 98
    :cond_3
    new-instance v1, Ljava/lang/StringBuilder;

    .line 99
    .line 100
    .line 101
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 102
    .line 103
    const-string v2, "parentType"

    .line 104
    .line 105
    .line 106
    invoke-virtual {p0, v2}, Lcom/narvii/app/NVActivity;->getStringParam(Ljava/lang/String;)Ljava/lang/String;

    .line 107
    move-result-object v2

    .line 108
    .line 109
    .line 110
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 111
    .line 112
    const-string/jumbo v2, "|"

    .line 113
    .line 114
    .line 115
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 116
    .line 117
    const-string v3, "parentId"

    .line 118
    .line 119
    .line 120
    invoke-virtual {p0, v3}, Lcom/narvii/app/NVActivity;->getStringParam(Ljava/lang/String;)Ljava/lang/String;

    .line 121
    move-result-object v3

    .line 122
    .line 123
    .line 124
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 125
    .line 126
    .line 127
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 128
    .line 129
    const-string v3, "respondTo"

    .line 130
    .line 131
    .line 132
    invoke-virtual {p0, v3}, Lcom/narvii/app/NVActivity;->getStringParam(Ljava/lang/String;)Ljava/lang/String;

    .line 133
    move-result-object v3

    .line 134
    .line 135
    .line 136
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 137
    .line 138
    .line 139
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 140
    .line 141
    const-string v2, "commentId"

    .line 142
    .line 143
    .line 144
    invoke-virtual {p0, v2}, Lcom/narvii/app/NVActivity;->getStringParam(Ljava/lang/String;)Ljava/lang/String;

    .line 145
    move-result-object v2

    .line 146
    .line 147
    .line 148
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 149
    .line 150
    .line 151
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 152
    move-result-object v1

    .line 153
    .line 154
    sput-object v1, Lcom/narvii/comment/post/CommentPostActivity;->LATEST_DRAFT_ID:Ljava/lang/String;

    .line 155
    .line 156
    sput-object v0, Lcom/narvii/comment/post/CommentPostActivity;->LATEST_DRAFT:Lcom/narvii/comment/post/CommentPost;

    .line 157
    .line 158
    :cond_4
    :goto_0
    iget-boolean v0, p0, Lcom/narvii/comment/post/CommentPostActivity;->fromStoryCommentList:Z

    .line 159
    .line 160
    if-eqz v0, :cond_5

    .line 161
    .line 162
    .line 163
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 164
    move-result-object v0

    .line 165
    .line 166
    .line 167
    invoke-static {v0}, Lcom/narvii/nvplayer/NVPlayerManager;->getNVPlayer(Landroid/content/Context;)Lcom/narvii/nvplayer/INVPlayer;

    .line 168
    move-result-object v0

    .line 169
    const/4 v1, 0x0

    .line 170
    .line 171
    .line 172
    invoke-interface {v0, v1}, Lcom/narvii/nvplayer/INVPlayer;->setPlayWhenReady(Z)V

    .line 173
    :cond_5
    return-void
.end method

.method public onPickMediaResult(Ljava/util/List;Landroid/os/Bundle;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/narvii/model/Media;",
            ">;",
            "Landroid/os/Bundle;",
            ")V"
        }
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/narvii/comment/post/CommentPostActivity;->savePost()Lcom/narvii/comment/post/CommentPost;

    .line 4
    move-result-object p2

    .line 5
    .line 6
    new-instance v0, Ljava/util/ArrayList;

    .line 7
    .line 8
    .line 9
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 10
    .line 11
    iget-object v1, p2, Lcom/narvii/comment/post/CommentPost;->mediaList:Ljava/util/List;

    .line 12
    .line 13
    if-eqz v1, :cond_0

    .line 14
    .line 15
    .line 16
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 17
    .line 18
    .line 19
    :cond_0
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 20
    const/4 p1, 0x5

    .line 21
    .line 22
    .line 23
    const v1, 0x7f120efb

    .line 24
    .line 25
    .line 26
    invoke-virtual {p0, v0, p1, v1}, Lcom/narvii/post/BasePostActivity;->trimMediaList(Ljava/util/List;II)V

    .line 27
    .line 28
    iput-object v0, p2, Lcom/narvii/comment/post/CommentPost;->mediaList:Ljava/util/List;

    .line 29
    .line 30
    iput-object p2, p0, Lcom/narvii/comment/post/CommentPostActivity;->post:Lcom/narvii/comment/post/CommentPost;

    .line 31
    .line 32
    .line 33
    invoke-virtual {p0, p2}, Lcom/narvii/comment/post/CommentPostActivity;->updateView(Lcom/narvii/comment/post/CommentPost;)V

    .line 34
    .line 35
    new-instance p1, Lcom/narvii/comment/post/CommentPostActivity$6;

    .line 36
    .line 37
    .line 38
    invoke-direct {p1, p0}, Lcom/narvii/comment/post/CommentPostActivity$6;-><init>(Lcom/narvii/comment/post/CommentPostActivity;)V

    .line 39
    .line 40
    const-wide/16 v0, 0xc8

    .line 41
    .line 42
    .line 43
    invoke-static {p1, v0, v1}, Lcom/narvii/util/Utils;->postDelayed(Ljava/lang/Runnable;J)V

    .line 44
    return-void
.end method

.method public onPostFail(Lcom/narvii/post/PostHelper;ILjava/lang/String;Ljava/lang/Throwable;)V
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-super {p0, p1, p2, p3, p4}, Lcom/narvii/post/BasePostActivity;->onPostFail(Lcom/narvii/post/PostHelper;ILjava/lang/String;Ljava/lang/Throwable;)V

    .line 4
    .line 5
    const/16 p3, 0xe6

    .line 6
    .line 7
    if-ne p2, p3, :cond_0

    .line 8
    .line 9
    .line 10
    invoke-virtual {p1}, Lcom/narvii/post/PostHelper;->getPost()Lcom/narvii/post/PostObject;

    .line 11
    move-result-object p1

    .line 12
    .line 13
    check-cast p1, Lcom/narvii/comment/post/CommentPost;

    .line 14
    .line 15
    new-instance p2, Lcom/narvii/widget/ACMAlertDialog;

    .line 16
    .line 17
    .line 18
    invoke-virtual {p0}, Lcom/narvii/app/NVActivity;->getContext()Landroid/content/Context;

    .line 19
    move-result-object p3

    .line 20
    .line 21
    .line 22
    invoke-direct {p2, p3}, Lcom/narvii/widget/ACMAlertDialog;-><init>(Landroid/content/Context;)V

    .line 23
    .line 24
    .line 25
    const p3, 0x7f1207f5

    .line 26
    .line 27
    .line 28
    invoke-virtual {p2, p3}, Lcom/narvii/widget/ACMAlertDialog;->setMessage(I)V

    .line 29
    .line 30
    .line 31
    const p3, 0x7f1201e2

    .line 32
    .line 33
    .line 34
    invoke-virtual {p0, p3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 35
    move-result-object p3

    .line 36
    .line 37
    .line 38
    const p4, -0x444445

    .line 39
    const/4 v0, 0x0

    .line 40
    .line 41
    .line 42
    invoke-virtual {p2, p3, p4, v0}, Lcom/narvii/widget/ACMAlertDialog;->addButton(Ljava/lang/CharSequence;ILandroid/view/View$OnClickListener;)Landroid/view/View;

    .line 43
    .line 44
    new-instance p3, Lcom/narvii/comment/post/CommentPostActivity$7;

    .line 45
    .line 46
    .line 47
    invoke-direct {p3, p0, p1}, Lcom/narvii/comment/post/CommentPostActivity$7;-><init>(Lcom/narvii/comment/post/CommentPostActivity;Lcom/narvii/comment/post/CommentPost;)V

    .line 48
    .line 49
    .line 50
    const p1, 0x7f121175

    .line 51
    .line 52
    .line 53
    invoke-virtual {p2, p1, p3}, Lcom/narvii/widget/ACMAlertDialog;->addButton(ILandroid/view/View$OnClickListener;)Landroid/view/View;

    .line 54
    .line 55
    .line 56
    invoke-virtual {p2}, Lcom/narvii/app/NVDialog;->show()V

    .line 57
    :cond_0
    return-void
.end method

.method public onPostFinished(Lcom/narvii/post/PostHelper;Lcom/narvii/model/api/ApiResponse;)V
    .locals 5

    .line 1
    const/4 v0, 0x1

    .line 2
    .line 3
    iput-boolean v0, p0, Lcom/narvii/comment/post/CommentPostActivity;->posted:Z

    .line 4
    .line 5
    .line 6
    invoke-static {}, Lcom/narvii/comment/post/CommentPostActivity;->clearMemoryDrafts()V

    .line 7
    .line 8
    .line 9
    invoke-super {p0, p1, p2}, Lcom/narvii/post/BasePostActivity;->onPostFinished(Lcom/narvii/post/PostHelper;Lcom/narvii/model/api/ApiResponse;)V

    .line 10
    .line 11
    .line 12
    invoke-virtual {p0}, Lcom/narvii/comment/post/CommentPostActivity;->isEdit()Z

    .line 13
    move-result p1

    .line 14
    .line 15
    if-nez p1, :cond_5

    .line 16
    .line 17
    const-string p1, "statistics"

    .line 18
    .line 19
    .line 20
    invoke-virtual {p0, p1}, Lcom/narvii/app/NVActivity;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 21
    move-result-object p1

    .line 22
    .line 23
    check-cast p1, Lcom/narvii/util/statistics/StatisticsService;

    .line 24
    .line 25
    instance-of v1, p2, Lcom/narvii/model/api/CommentResponse;

    .line 26
    const/4 v2, 0x0

    .line 27
    const/4 v3, 0x0

    .line 28
    .line 29
    if-eqz v1, :cond_2

    .line 30
    .line 31
    check-cast p2, Lcom/narvii/model/api/CommentResponse;

    .line 32
    .line 33
    iget-object p2, p2, Lcom/narvii/model/api/CommentResponse;->comment:Lcom/narvii/model/Comment;

    .line 34
    .line 35
    if-eqz p2, :cond_2

    .line 36
    .line 37
    iget v1, p2, Lcom/narvii/model/Comment;->type:I

    .line 38
    const/4 v4, 0x3

    .line 39
    .line 40
    if-ne v1, v4, :cond_0

    .line 41
    .line 42
    const-string p2, "Sticker"

    .line 43
    goto :goto_1

    .line 44
    .line 45
    :cond_0
    iget-object p2, p2, Lcom/narvii/model/Comment;->mediaList:Ljava/util/List;

    .line 46
    .line 47
    if-eqz p2, :cond_1

    .line 48
    .line 49
    .line 50
    invoke-interface {p2}, Ljava/util/List;->size()I

    .line 51
    move-result p2

    .line 52
    .line 53
    if-lez p2, :cond_1

    .line 54
    .line 55
    const-string p2, "Photo"

    .line 56
    :goto_0
    move v0, v3

    .line 57
    goto :goto_1

    .line 58
    .line 59
    :cond_1
    const-string p2, "Text"

    .line 60
    goto :goto_0

    .line 61
    :cond_2
    move-object p2, v2

    .line 62
    goto :goto_0

    .line 63
    .line 64
    :goto_1
    const-string v1, "User Comments"

    .line 65
    .line 66
    .line 67
    invoke-interface {p1, v1}, Lcom/narvii/util/statistics/StatisticsService;->event(Ljava/lang/String;)Lcom/narvii/util/statistics/StatisticsEventBuilder;

    .line 68
    move-result-object v1

    .line 69
    .line 70
    const-string v3, "Comments Written Total"

    .line 71
    .line 72
    .line 73
    invoke-virtual {v1, v3}, Lcom/narvii/util/statistics/StatisticsEventBuilder;->userPropInc(Ljava/lang/String;)Lcom/narvii/util/statistics/StatisticsEventBuilder;

    .line 74
    move-result-object v1

    .line 75
    .line 76
    const-string v3, "respondTo"

    .line 77
    .line 78
    .line 79
    invoke-virtual {p0, v3}, Lcom/narvii/app/NVActivity;->getStringParam(Ljava/lang/String;)Ljava/lang/String;

    .line 80
    move-result-object v3

    .line 81
    .line 82
    if-eqz v3, :cond_3

    .line 83
    .line 84
    const-string v3, "Replay"

    .line 85
    goto :goto_2

    .line 86
    .line 87
    :cond_3
    const-string v3, "New"

    .line 88
    .line 89
    :goto_2
    const-string v4, "Type"

    .line 90
    .line 91
    .line 92
    invoke-virtual {v1, v4, v3}, Lcom/narvii/util/statistics/StatisticsEventBuilder;->param(Ljava/lang/String;Ljava/lang/String;)Lcom/narvii/util/statistics/StatisticsEventBuilder;

    .line 93
    move-result-object v1

    .line 94
    .line 95
    const-string v3, "stat_parent_type"

    .line 96
    .line 97
    .line 98
    invoke-virtual {p0, v3}, Lcom/narvii/app/NVActivity;->getStringParam(Ljava/lang/String;)Ljava/lang/String;

    .line 99
    move-result-object v3

    .line 100
    .line 101
    const-string v4, "Types"

    .line 102
    .line 103
    .line 104
    invoke-virtual {v1, v4, v3}, Lcom/narvii/util/statistics/StatisticsEventBuilder;->param(Ljava/lang/String;Ljava/lang/String;)Lcom/narvii/util/statistics/StatisticsEventBuilder;

    .line 105
    move-result-object v1

    .line 106
    .line 107
    const-string v3, "Content Type"

    .line 108
    .line 109
    .line 110
    invoke-virtual {v1, v3, p2}, Lcom/narvii/util/statistics/StatisticsEventBuilder;->param(Ljava/lang/String;Ljava/lang/String;)Lcom/narvii/util/statistics/StatisticsEventBuilder;

    .line 111
    move-result-object p2

    .line 112
    .line 113
    const-string v1, "source"

    .line 114
    .line 115
    .line 116
    invoke-virtual {p0, v1}, Lcom/narvii/app/NVActivity;->getStringParam(Ljava/lang/String;)Ljava/lang/String;

    .line 117
    move-result-object v1

    .line 118
    .line 119
    .line 120
    invoke-virtual {p2, v1}, Lcom/narvii/util/statistics/StatisticsEventBuilder;->source(Ljava/lang/String;)Lcom/narvii/util/statistics/StatisticsEventBuilder;

    .line 121
    move-result-object p2

    .line 122
    .line 123
    if-eqz v0, :cond_4

    .line 124
    .line 125
    const-string v0, "Sticker Comments Total"

    .line 126
    .line 127
    .line 128
    invoke-virtual {p2, v0}, Lcom/narvii/util/statistics/StatisticsEventBuilder;->userPropInc(Ljava/lang/String;)Lcom/narvii/util/statistics/StatisticsEventBuilder;

    .line 129
    .line 130
    :cond_4
    const-string p2, "Comment Post"

    .line 131
    .line 132
    .line 133
    invoke-interface {p1, p2}, Lcom/narvii/util/statistics/StatisticsService;->event(Ljava/lang/String;)Lcom/narvii/util/statistics/StatisticsEventBuilder;

    .line 134
    move-result-object p1

    .line 135
    .line 136
    const-string p2, "post_type"

    .line 137
    .line 138
    .line 139
    invoke-direct {p0}, Lcom/narvii/comment/post/CommentPostActivity;->getPostTypeValue()Ljava/lang/String;

    .line 140
    move-result-object v0

    .line 141
    .line 142
    .line 143
    invoke-virtual {p1, p2, v0}, Lcom/narvii/util/statistics/StatisticsEventBuilder;->param(Ljava/lang/String;Ljava/lang/String;)Lcom/narvii/util/statistics/StatisticsEventBuilder;

    .line 144
    move-result-object p1

    .line 145
    .line 146
    .line 147
    invoke-static {p0}, Lcom/google/firebase/analytics/FirebaseAnalytics;->getInstance(Landroid/content/Context;)Lcom/google/firebase/analytics/FirebaseAnalytics;

    .line 148
    move-result-object p2

    .line 149
    .line 150
    const-string v0, "create_comment"

    .line 151
    .line 152
    .line 153
    invoke-virtual {p2, v0, v2}, Lcom/google/firebase/analytics/FirebaseAnalytics;->a(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 154
    .line 155
    .line 156
    invoke-static {p0, p1}, Lcom/narvii/util/statistics/FirebaseLogManager;->logEvent(Lcom/narvii/app/NVContext;Lcom/narvii/util/statistics/StatisticsEventBuilder;)V

    .line 157
    :cond_5
    return-void
.end method

.method protected onResume()V
    .locals 2

    .line 1
    .line 2
    .line 3
    invoke-super {p0}, Lcom/narvii/app/NVActivity;->onResume()V

    .line 4
    .line 5
    iget-boolean v0, p0, Lcom/narvii/comment/post/CommentPostActivity;->fromStoryCommentList:Z

    .line 6
    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    .line 10
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 11
    move-result-object v0

    .line 12
    .line 13
    .line 14
    invoke-static {v0}, Lcom/narvii/nvplayer/NVPlayerManager;->getNVPlayer(Landroid/content/Context;)Lcom/narvii/nvplayer/INVPlayer;

    .line 15
    move-result-object v0

    .line 16
    const/4 v1, 0x1

    .line 17
    .line 18
    .line 19
    invoke-interface {v0, v1}, Lcom/narvii/nvplayer/INVPlayer;->setPlayWhenReady(Z)V

    .line 20
    :cond_0
    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    .line 1
    .line 2
    .line 3
    invoke-super {p0, p1}, Lcom/narvii/post/BasePostActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 4
    .line 5
    iget-object v0, p0, Lcom/narvii/comment/post/CommentPostActivity;->post:Lcom/narvii/comment/post/CommentPost;

    .line 6
    .line 7
    .line 8
    invoke-static {v0}, Lcom/narvii/util/JacksonUtils;->writeAsString(Ljava/lang/Object;)Ljava/lang/String;

    .line 9
    move-result-object v0

    .line 10
    .line 11
    const-string v1, "post"

    .line 12
    .line 13
    .line 14
    invoke-virtual {p1, v1, v0}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 15
    return-void
.end method

.method public onStickerSelected(Lcom/narvii/model/Sticker;Lcom/narvii/monetization/sticker/model/StickerCollection;)V
    .locals 0

    .line 1
    .line 2
    if-nez p1, :cond_0

    .line 3
    return-void

    .line 4
    .line 5
    .line 6
    :cond_0
    invoke-virtual {p0}, Lcom/narvii/comment/post/CommentPostActivity;->savePost()Lcom/narvii/comment/post/CommentPost;

    .line 7
    move-result-object p2

    .line 8
    .line 9
    iget-object p1, p1, Lcom/narvii/model/Sticker;->stickerId:Ljava/lang/String;

    .line 10
    .line 11
    iput-object p1, p2, Lcom/narvii/comment/post/CommentPost;->stickerId:Ljava/lang/String;

    .line 12
    const/4 p1, 0x0

    .line 13
    .line 14
    iput-object p1, p2, Lcom/narvii/comment/post/CommentPost;->content:Ljava/lang/String;

    .line 15
    .line 16
    iput-object p1, p2, Lcom/narvii/comment/post/CommentPost;->mediaList:Ljava/util/List;

    .line 17
    const/4 p1, 0x3

    .line 18
    .line 19
    iput p1, p2, Lcom/narvii/comment/post/CommentPost;->type:I

    .line 20
    .line 21
    .line 22
    invoke-virtual {p0, p2}, Lcom/narvii/comment/post/CommentPostActivity;->doPost(Lcom/narvii/comment/post/CommentPost;)V

    .line 23
    return-void
.end method

.method public postClazz()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "Lcom/narvii/comment/post/CommentPost;",
            ">;"
        }
    .end annotation

    const-class v0, Lcom/narvii/comment/post/CommentPost;

    return-object v0
.end method

.method protected savePost()Lcom/narvii/comment/post/CommentPost;
    .locals 4

    iget-object v0, p0, Lcom/narvii/comment/post/CommentPostActivity;->post:Lcom/narvii/comment/post/CommentPost;

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Lcom/narvii/comment/post/CommentPost;

    invoke-direct {v0}, Lcom/narvii/comment/post/CommentPost;-><init>()V

    iput-object v0, p0, Lcom/narvii/comment/post/CommentPostActivity;->post:Lcom/narvii/comment/post/CommentPost;

    :cond_0
    iget-object v0, p0, Lcom/narvii/comment/post/CommentPostActivity;->post:Lcom/narvii/comment/post/CommentPost;

    iget-object v1, p0, Lcom/narvii/comment/post/CommentPostActivity;->editContent:Landroid/widget/EditText;

    .line 3
    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/narvii/comment/post/CommentPost;->content:Ljava/lang/String;

    iget-object v0, p0, Lcom/narvii/comment/post/CommentPostActivity;->post:Lcom/narvii/comment/post/CommentPost;

    .line 4
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, v0, Lcom/narvii/comment/post/CommentPost;->mediaList:Ljava/util/List;

    iget-object v0, p0, Lcom/narvii/comment/post/CommentPostActivity;->imgs:Lcom/narvii/widget/DragSortGallery;

    .line 5
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_2

    iget-object v2, p0, Lcom/narvii/comment/post/CommentPostActivity;->imgs:Lcom/narvii/widget/DragSortGallery;

    .line 6
    invoke-virtual {v2, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 7
    invoke-direct {p0, v2}, Lcom/narvii/comment/post/CommentPostActivity;->findImageById(Landroid/view/View;)Lcom/narvii/widget/NVImageView;

    move-result-object v2

    if-eqz v2, :cond_1

    const v3, 0x7f0a06eb

    .line 8
    invoke-virtual {v2, v3}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/narvii/model/Media;

    if-eqz v2, :cond_1

    iget-object v3, p0, Lcom/narvii/comment/post/CommentPostActivity;->post:Lcom/narvii/comment/post/CommentPost;

    .line 9
    iget-object v3, v3, Lcom/narvii/comment/post/CommentPost;->mediaList:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/narvii/comment/post/CommentPostActivity;->post:Lcom/narvii/comment/post/CommentPost;

    return-object v0
.end method

.method protected bridge synthetic savePost()Lcom/narvii/post/PostObject;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/narvii/comment/post/CommentPostActivity;->savePost()Lcom/narvii/comment/post/CommentPost;

    move-result-object v0

    return-object v0
.end method

.method public setTransparentArea(Landroid/graphics/Rect;)V
    .locals 5

    .line 1
    .line 2
    .line 3
    const v0, 0x7f0a0de5

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    .line 7
    move-result-object v0

    .line 8
    .line 9
    if-nez v0, :cond_0

    .line 10
    return-void

    .line 11
    .line 12
    :cond_0
    new-instance v1, Landroid/graphics/Rect;

    .line 13
    .line 14
    .line 15
    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    .line 16
    .line 17
    .line 18
    invoke-virtual {v0, v1}, Landroid/view/View;->getGlobalVisibleRect(Landroid/graphics/Rect;)Z

    .line 19
    .line 20
    .line 21
    const v2, 0x7f0a0de7

    .line 22
    .line 23
    .line 24
    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 25
    move-result-object v2

    .line 26
    .line 27
    .line 28
    const v3, 0x7f0a0de8

    .line 29
    .line 30
    .line 31
    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 32
    move-result-object v0

    .line 33
    .line 34
    .line 35
    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 36
    move-result-object v3

    .line 37
    .line 38
    iget v4, p1, Landroid/graphics/Rect;->top:I

    .line 39
    .line 40
    iget v1, v1, Landroid/graphics/Rect;->top:I

    .line 41
    sub-int/2addr v4, v1

    .line 42
    .line 43
    iput v4, v3, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 44
    .line 45
    .line 46
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 47
    move-result-object v1

    .line 48
    .line 49
    .line 50
    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    .line 51
    move-result p1

    .line 52
    .line 53
    iput p1, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 54
    .line 55
    .line 56
    invoke-virtual {v2}, Landroid/view/View;->requestLayout()V

    .line 57
    .line 58
    .line 59
    invoke-virtual {v0}, Landroid/view/View;->requestLayout()V

    .line 60
    return-void
.end method

.method protected updateView(Lcom/narvii/comment/post/CommentPost;)V
    .locals 9

    .line 2
    invoke-super {p0, p1}, Lcom/narvii/post/BasePostActivity;->updateView(Lcom/narvii/post/PostObject;)V

    if-nez p1, :cond_0

    return-void

    .line 3
    :cond_0
    iget-object v0, p1, Lcom/narvii/comment/post/CommentPost;->content:Ljava/lang/String;

    iget-object v1, p0, Lcom/narvii/comment/post/CommentPostActivity;->editContent:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/narvii/util/Utils;->isEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/narvii/comment/post/CommentPostActivity;->editContent:Landroid/widget/EditText;

    .line 4
    iget-object v1, p1, Lcom/narvii/comment/post/CommentPost;->content:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/narvii/comment/post/CommentPostActivity;->editContent:Landroid/widget/EditText;

    .line 5
    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setSelection(I)V

    .line 6
    :cond_1
    iget-object v0, p1, Lcom/narvii/comment/post/CommentPost;->mediaList:Ljava/util/List;

    const/4 v1, 0x0

    if-nez v0, :cond_2

    move v0, v1

    goto :goto_0

    :cond_2
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    :goto_0
    iget-object v2, p0, Lcom/narvii/comment/post/CommentPostActivity;->imgs:Lcom/narvii/widget/DragSortGallery;

    if-lez v0, :cond_3

    move v3, v1

    goto :goto_1

    :cond_3
    const/16 v3, 0x8

    .line 7
    :goto_1
    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    iget-object v2, p0, Lcom/narvii/comment/post/CommentPostActivity;->imgs:Lcom/narvii/widget/DragSortGallery;

    .line 8
    invoke-virtual {v2, v1, v0}, Lcom/narvii/widget/DragSortGallery;->setDragRange(II)V

    iget-object v2, p0, Lcom/narvii/comment/post/CommentPostActivity;->imgs:Lcom/narvii/widget/DragSortGallery;

    .line 9
    invoke-virtual {v2}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    move v3, v1

    move v4, v3

    :goto_2
    if-ge v3, v2, :cond_7

    iget-object v5, p0, Lcom/narvii/comment/post/CommentPostActivity;->imgs:Lcom/narvii/widget/DragSortGallery;

    .line 10
    invoke-virtual {v5, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    .line 11
    invoke-direct {p0, v5}, Lcom/narvii/comment/post/CommentPostActivity;->findImageById(Landroid/view/View;)Lcom/narvii/widget/NVImageView;

    move-result-object v6

    if-eqz v6, :cond_6

    if-ge v4, v0, :cond_4

    .line 12
    iget-object v7, p1, Lcom/narvii/comment/post/CommentPost;->mediaList:Ljava/util/List;

    invoke-interface {v7, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/narvii/model/Media;

    goto :goto_3

    :cond_4
    const/4 v7, 0x0

    :goto_3
    const v8, 0x7f120828

    .line 13
    invoke-virtual {p0, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v8}, Landroid/view/View;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object v5

    if-nez v7, :cond_5

    move v8, v1

    goto :goto_4

    :cond_5
    const/4 v8, 0x4

    :goto_4
    invoke-virtual {v5, v8}, Landroid/view/View;->setVisibility(I)V

    .line 14
    invoke-virtual {v6, v7}, Lcom/narvii/widget/NVImageView;->setImageMedia(Lcom/narvii/model/Media;)Z

    const v5, 0x7f0a06eb

    .line 15
    invoke-virtual {v6, v5, v7}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    add-int/lit8 v4, v4, 0x1

    :cond_6
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_7
    return-void
.end method

.method protected bridge synthetic updateView(Lcom/narvii/post/PostObject;)V
    .locals 0

    .line 1
    check-cast p1, Lcom/narvii/comment/post/CommentPost;

    invoke-virtual {p0, p1}, Lcom/narvii/comment/post/CommentPostActivity;->updateView(Lcom/narvii/comment/post/CommentPost;)V

    return-void
.end method

.method protected validateUpload(Lcom/narvii/comment/post/CommentPost;)Z
    .locals 4

    iget-object v0, p0, Lcom/narvii/comment/post/CommentPostActivity;->editContent:Landroid/widget/EditText;

    const v1, 0x7f120ed5

    .line 2
    invoke-virtual {p0, v0, v1}, Lcom/narvii/post/BasePostActivity;->validateEditTextNotEmpty(Landroid/widget/EditText;I)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    iget-object v0, p0, Lcom/narvii/comment/post/CommentPostActivity;->editContent:Landroid/widget/EditText;

    const/16 v2, 0xbb8

    const v3, 0x7f120ed3

    .line 3
    invoke-virtual {p0, v0, v2, v3}, Lcom/narvii/post/BasePostActivity;->validateEditTextMax(Landroid/widget/EditText;II)Z

    move-result v0

    if-nez v0, :cond_1

    return v1

    .line 4
    :cond_1
    iget-object p1, p1, Lcom/narvii/comment/post/CommentPost;->mediaList:Ljava/util/List;

    const/4 v0, 0x5

    const v2, 0x7f120ef0

    invoke-virtual {p0, p1, v0, v2}, Lcom/narvii/post/BasePostActivity;->validateMediaListMax(Ljava/util/List;II)Z

    move-result p1

    if-nez p1, :cond_2

    return v1

    :cond_2
    const/4 p1, 0x1

    return p1
.end method

.method protected bridge synthetic validateUpload(Lcom/narvii/post/PostObject;)Z
    .locals 0

    .line 1
    check-cast p1, Lcom/narvii/comment/post/CommentPost;

    invoke-virtual {p0, p1}, Lcom/narvii/comment/post/CommentPostActivity;->validateUpload(Lcom/narvii/comment/post/CommentPost;)Z

    move-result p1

    return p1
.end method
