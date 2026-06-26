.class public Lcom/narvii/comment/post/CommentPostActivity;
.super Lcom/narvii/post/BasePostActivity;
.source "CommentPostActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/view/View$OnLongClickListener;
.implements Lcom/narvii/monetization/sticker/picker/StickerSelectListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/narvii/comment/post/CommentPostActivity$SwitchKeyboard;,
        Lcom/narvii/comment/post/CommentPostActivity$StatusListener;
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

    .line 86
    invoke-direct {p0}, Lcom/narvii/post/BasePostActivity;-><init>()V

    .line 118
    new-instance v0, Lcom/narvii/util/statistics/TmpValue;

    invoke-direct {v0}, Lcom/narvii/util/statistics/TmpValue;-><init>()V

    iput-object v0, p0, Lcom/narvii/comment/post/CommentPostActivity;->switchingKeyboard:Lcom/narvii/util/statistics/TmpValue;

    return-void
.end method

.method static synthetic access$000(Lcom/narvii/comment/post/CommentPostActivity;)Landroid/view/View;
    .locals 0

    .line 86
    iget-object p0, p0, Lcom/narvii/comment/post/CommentPostActivity;->stickerPanel:Landroid/view/View;

    return-object p0
.end method

.method static synthetic access$100(Lcom/narvii/comment/post/CommentPostActivity;Landroid/view/View;I)V
    .locals 0

    .line 86
    invoke-direct {p0, p1, p2}, Lcom/narvii/comment/post/CommentPostActivity;->changePanelVisibility(Landroid/view/View;I)V

    return-void
.end method

.method static synthetic access$200(Lcom/narvii/comment/post/CommentPostActivity;Z)V
    .locals 0

    .line 86
    invoke-direct {p0, p1}, Lcom/narvii/comment/post/CommentPostActivity;->changeStikerEntryVisibility(Z)V

    return-void
.end method

.method static synthetic access$300(Lcom/narvii/comment/post/CommentPostActivity;Z)V
    .locals 0

    .line 86
    invoke-direct {p0, p1}, Lcom/narvii/comment/post/CommentPostActivity;->changeSegmentBackground(Z)V

    return-void
.end method

.method static synthetic access$400(Lcom/narvii/comment/post/CommentPostActivity;Z)V
    .locals 0

    .line 86
    invoke-direct {p0, p1}, Lcom/narvii/comment/post/CommentPostActivity;->updateGalleryViews(Z)V

    return-void
.end method

.method static synthetic access$500()Ljava/lang/ref/WeakReference;
    .locals 1

    .line 86
    sget-object v0, Lcom/narvii/comment/post/CommentPostActivity;->statusListener:Ljava/lang/ref/WeakReference;

    return-object v0
.end method

.method static synthetic access$600(Lcom/narvii/comment/post/CommentPostActivity;)V
    .locals 0

    .line 86
    invoke-direct {p0}, Lcom/narvii/comment/post/CommentPostActivity;->gotoCommunityDetail()V

    return-void
.end method

.method private changePanelVisibility(Landroid/view/View;I)V
    .locals 0

    if-nez p1, :cond_0

    return-void

    .line 326
    :cond_0
    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method private changeSegmentBackground(Z)V
    .locals 4

    .line 403
    invoke-static {p0}, Lcom/narvii/util/AndroidBug5497Workaround;->getKeyboardHeight(Landroid/app/Activity;)I

    move-result v0

    if-lez v0, :cond_0

    .line 404
    invoke-virtual {p0, v0}, Lcom/narvii/comment/post/CommentPostActivity;->getValidPanelHeight(I)I

    move-result v0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f07031d

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 405
    :goto_0
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v1

    new-instance v2, Lcom/narvii/widget/TopTransparentDrawable;

    const v3, -0xa0a09

    if-eqz p1, :cond_1

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    :goto_1
    invoke-direct {v2, v3, v0}, Lcom/narvii/widget/TopTransparentDrawable;-><init>(II)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method private changeStikerEntryVisibility(Z)V
    .locals 4

    .line 393
    iget-object v0, p0, Lcom/narvii/comment/post/CommentPostActivity;->btnStickerEntry:Landroid/view/View;

    const/4 v1, 0x0

    const/16 v2, 0x8

    if-eqz v0, :cond_1

    if-eqz p1, :cond_0

    const/4 v3, 0x0

    goto :goto_0

    :cond_0
    const/16 v3, 0x8

    .line 394
    :goto_0
    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 396
    :cond_1
    iget-object v0, p0, Lcom/narvii/comment/post/CommentPostActivity;->btnKeyboardEntry:Landroid/view/View;

    if-eqz v0, :cond_3

    if-eqz p1, :cond_2

    const/16 v1, 0x8

    .line 397
    :cond_2
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_3
    return-void
.end method

.method public static clearMemoryDrafts()V
    .locals 1

    const/4 v0, 0x0

    .line 98
    sput-object v0, Lcom/narvii/comment/post/CommentPostActivity;->LATEST_DRAFT:Lcom/narvii/comment/post/CommentPost;

    .line 99
    sput-object v0, Lcom/narvii/comment/post/CommentPostActivity;->LATEST_DRAFT_ID:Ljava/lang/String;

    return-void
.end method

.method private gotoCommunityDetail()V
    .locals 4

    .line 700
    invoke-virtual {p0}, Lcom/narvii/app/NVActivity;->getConfigCid()I

    move-result v0

    const-string v1, "community"

    .line 701
    invoke-virtual {p0, v1}, Lcom/narvii/app/NVActivity;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/narvii/community/CommunityService;

    .line 702
    invoke-virtual {v1, v0}, Lcom/narvii/community/CommunityService;->getCommunity(I)Lcom/narvii/model/Community;

    move-result-object v1

    .line 703
    const-class v2, Lcom/narvii/master/CommunityDetailFragment;

    invoke-static {v2}, Lcom/narvii/app/FragmentWrapperActivity;->intent(Ljava/lang/Class;)Landroid/content/Intent;

    move-result-object v2

    const-string v3, "id"

    .line 704
    invoke-virtual {v2, v3, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v0, "joinOnly"

    const/4 v3, 0x1

    .line 705
    invoke-virtual {v2, v0, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 706
    invoke-static {v1}, Lcom/narvii/util/JacksonUtils;->writeAsString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "prefetch"

    invoke-virtual {v2, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 707
    invoke-virtual {p0, v2}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method private isReply()Z
    .locals 1

    const-string v0, "respondTo"

    .line 666
    invoke-virtual {p0, v0}, Lcom/narvii/app/NVActivity;->getStringParam(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static setStatusListener(Lcom/narvii/comment/post/CommentPostActivity$StatusListener;)V
    .locals 1

    if-nez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    .line 736
    :cond_0
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    move-object p0, v0

    :goto_0
    sput-object p0, Lcom/narvii/comment/post/CommentPostActivity;->statusListener:Ljava/lang/ref/WeakReference;

    return-void
.end method

.method private updateGalleryViews(Z)V
    .locals 3

    .line 409
    iget-object v0, p0, Lcom/narvii/comment/post/CommentPostActivity;->imgs:Lcom/narvii/widget/DragSortGallery;

    if-nez v0, :cond_0

    return-void

    .line 412
    :cond_0
    invoke-virtual {p0}, Lcom/narvii/comment/post/CommentPostActivity;->savePost()Lcom/narvii/comment/post/CommentPost;

    move-result-object v0

    .line 413
    iget-object v0, v0, Lcom/narvii/comment/post/CommentPost;->mediaList:Ljava/util/List;

    const/4 v1, 0x0

    if-nez v0, :cond_1

    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    .line 414
    :goto_0
    iget-object v2, p0, Lcom/narvii/comment/post/CommentPostActivity;->imgs:Lcom/narvii/widget/DragSortGallery;

    if-lez v0, :cond_2

    if-nez p1, :cond_2

    const/4 p1, 0x0

    goto :goto_1

    :cond_2
    const/16 p1, 0x8

    :goto_1
    invoke-virtual {v2, p1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 415
    iget-object p1, p0, Lcom/narvii/comment/post/CommentPostActivity;->imgs:Lcom/narvii/widget/DragSortGallery;

    invoke-virtual {p1, v1, v0}, Lcom/narvii/widget/DragSortGallery;->setDragRange(II)V

    return-void
.end method


# virtual methods
.method protected disableMediaPost()Z
    .locals 2

    const-string v0, "parentType"

    const/4 v1, -0x1

    .line 134
    invoke-virtual {p0, v0, v1}, Lcom/narvii/app/NVActivity;->getIntParam(Ljava/lang/String;I)I

    move-result v0

    const/16 v1, 0x6d

    if-ne v1, v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method protected doPost(Lcom/narvii/comment/post/CommentPost;)V
    .locals 9

    const-string v0, "parentType"

    .line 597
    invoke-virtual {p0, v0}, Lcom/narvii/app/NVActivity;->getIntParam(Ljava/lang/String;)I

    move-result v1

    const-string v2, "parentId"

    .line 598
    invoke-virtual {p0, v2}, Lcom/narvii/app/NVActivity;->getStringParam(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "commentId"

    .line 599
    invoke-virtual {p0, v4}, Lcom/narvii/app/NVActivity;->getStringParam(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 600
    invoke-virtual {p0}, Lcom/narvii/app/NVActivity;->isGlobalInteractionScope()Z

    move-result v5

    invoke-static {v1, v3, v4, v5}, Lcom/narvii/comment/CommentHelper;->createPostCommentRequest(ILjava/lang/String;Ljava/lang/String;Z)Lcom/narvii/util/http/ApiRequest;

    move-result-object v1

    const-string v3, "ndcId"

    const/4 v4, -0x1

    .line 601
    invoke-virtual {p0, v3, v4}, Lcom/narvii/app/NVActivity;->getIntParam(Ljava/lang/String;I)I

    move-result v5

    if-lez v5, :cond_0

    .line 602
    invoke-virtual {v1}, Lcom/narvii/util/http/ApiRequest;->edit()Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object v5

    invoke-virtual {p0, v3}, Lcom/narvii/app/NVActivity;->getIntParam(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v5, v3}, Lcom/narvii/util/http/ApiRequest$Builder;->communityId(I)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 605
    :cond_0
    new-instance v3, Lcom/narvii/post/PostHelper;

    invoke-direct {v3, p0}, Lcom/narvii/post/PostHelper;-><init>(Lcom/narvii/app/NVContext;)V

    .line 606
    invoke-virtual {v3, p0}, Lcom/narvii/post/PostHelper;->setPostListener(Lcom/narvii/post/PostListener;)V

    .line 607
    const-class v5, Lcom/narvii/model/api/CommentResponse;

    invoke-virtual {v3, p1, v1, v5}, Lcom/narvii/post/PostHelper;->startPost(Lcom/narvii/post/PostObject;Lcom/narvii/util/http/ApiRequest;Ljava/lang/Class;)V

    .line 610
    invoke-virtual {p0, v0, v4}, Lcom/narvii/app/NVActivity;->getIntParam(Ljava/lang/String;I)I

    move-result v1

    const-string v3, "parentSubType"

    .line 611
    invoke-virtual {p0, v3, v4}, Lcom/narvii/app/NVActivity;->getIntParam(Ljava/lang/String;I)I

    move-result v5

    .line 613
    iget p1, p1, Lcom/narvii/comment/post/CommentPost;->type:I

    const/4 v6, 0x3

    if-ne p1, v6, :cond_1

    const-string p1, "Sticker"

    goto :goto_0

    :cond_1
    const-string p1, "Text"

    :goto_0
    const-string v6, "feed"

    .line 618
    invoke-virtual {p0, v6}, Lcom/narvii/app/NVActivity;->getStringParam(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    new-instance v7, Lcom/narvii/model/Feed$FeedDeserializer;

    invoke-direct {v7}, Lcom/narvii/model/Feed$FeedDeserializer;-><init>()V

    invoke-static {v6, v7}, Lcom/narvii/util/JacksonUtils;->readUsing(Ljava/lang/String;Lcom/fasterxml/jackson/databind/JsonDeserializer;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/narvii/model/Feed;

    .line 619
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

    .line 620
    invoke-virtual {v7, v8, p1}, Lcom/narvii/logging/LogEvent$Builder;->extraParam(Ljava/lang/String;Ljava/lang/Object;)Lcom/narvii/logging/LogEvent$Builder;

    move-result-object p1

    if-eqz v6, :cond_3

    .line 622
    invoke-virtual {p1, v6}, Lcom/narvii/logging/LogEvent$Builder;->object(Lcom/narvii/model/NVObject;)Lcom/narvii/logging/LogEvent$Builder;

    goto :goto_2

    .line 624
    :cond_3
    invoke-virtual {p0, v2}, Lcom/narvii/app/NVActivity;->getStringParam(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1, v6}, Lcom/narvii/logging/LogEvent$Builder;->objectId(Ljava/lang/String;)Lcom/narvii/logging/LogEvent$Builder;

    move-result-object v6

    .line 625
    invoke-static {v1}, Lcom/narvii/logging/LogUtils;->getObjectType(I)Lcom/narvii/logging/ObjectType;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/narvii/logging/LogEvent$Builder;->objectType(Lcom/narvii/logging/ObjectType;)Lcom/narvii/logging/LogEvent$Builder;

    move-result-object v6

    .line 626
    invoke-static {v1, v5}, Lcom/narvii/logging/LogUtils;->getObjectSubType(II)Lcom/narvii/logging/ObjectSubType;

    move-result-object v1

    invoke-virtual {v6, v1}, Lcom/narvii/logging/LogEvent$Builder;->objectSubType(Lcom/narvii/logging/ObjectSubType;)Lcom/narvii/logging/LogEvent$Builder;

    .line 628
    :goto_2
    invoke-virtual {p1}, Lcom/narvii/logging/LogEvent$Builder;->send()Lcom/narvii/logging/LogEvent;

    .line 629
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

    .line 86
    check-cast p1, Lcom/narvii/comment/post/CommentPost;

    invoke-virtual {p0, p1}, Lcom/narvii/comment/post/CommentPostActivity;->doPost(Lcom/narvii/comment/post/CommentPost;)V

    return-void
.end method

.method public finish()V
    .locals 2

    .line 376
    invoke-super {p0}, Lcom/narvii/app/NVActivity;->finish()V

    const v0, 0x7f010029

    const v1, 0x7f01002b

    .line 377
    invoke-virtual {p0, v0, v1}, Landroid/app/Activity;->overridePendingTransition(II)V

    .line 378
    sget-object v0, Lcom/narvii/comment/post/CommentPostActivity;->statusListener:Ljava/lang/ref/WeakReference;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/narvii/comment/post/CommentPostActivity$StatusListener;

    :goto_0
    if-eqz v0, :cond_2

    .line 380
    iget-boolean v1, p0, Lcom/narvii/comment/post/CommentPostActivity;->posted:Z

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Lcom/narvii/comment/post/CommentPostActivity;->isEdit()Z

    move-result v1

    if-nez v1, :cond_1

    const/4 v1, 0x1

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    :goto_1
    invoke-interface {v0, p0, v1}, Lcom/narvii/comment/post/CommentPostActivity$StatusListener;->onPostDone(Lcom/narvii/comment/post/CommentPostActivity;Z)V

    :cond_2
    return-void
.end method

.method public getActiveSpaceHeight()I
    .locals 3

    const v0, 0x7f090b03

    .line 743
    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 746
    :cond_0
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    .line 747
    invoke-virtual {v0, v2}, Landroid/view/View;->getGlobalVisibleRect(Landroid/graphics/Rect;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 748
    iget v0, v2, Landroid/graphics/Rect;->bottom:I

    return v0

    :cond_1
    return v1
.end method

.method public getPageName()Ljava/lang/String;
    .locals 1

    const-string v0, "CommentPage"

    return-object v0
.end method

.method protected getValidPanelHeight(I)I
    .locals 2

    .line 488
    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f07031d

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    invoke-static {p1, v0}, Ljava/lang/Math;->max(II)I

    move-result p1

    return p1
.end method

.method public isEdit()Z
    .locals 1

    const-string v0, "commentId"

    .line 130
    invoke-virtual {p0, v0}, Lcom/narvii/app/NVActivity;->getStringParam(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isValidPage()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public synthetic lambda$onLoginResult$0$CommentPostActivity()V
    .locals 1

    .line 790
    iget-object v0, p0, Lcom/narvii/comment/post/CommentPostActivity;->editContent:Landroid/widget/EditText;

    invoke-static {v0}, Lcom/narvii/util/SoftKeyboard;->showSoftKeyboard(Landroid/widget/EditText;)V

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 5

    .line 420
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const v1, 0x7f090833

    const/4 v2, 0x0

    const/4 v3, 0x0

    if-eq v0, v1, :cond_9

    const v1, 0x7f09086c

    if-eq v0, v1, :cond_8

    const v1, 0x7f090aad

    const/4 v4, 0x1

    if-eq v0, v1, :cond_2

    const v0, 0x7f090571

    .line 464
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/narvii/widget/NVImageView;

    if-eqz p1, :cond_c

    .line 466
    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->getTag(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/narvii/model/Media;

    if-nez p1, :cond_0

    .line 468
    iget-object p1, p0, Lcom/narvii/comment/post/CommentPostActivity;->photoDir:Ljava/io/File;

    invoke-virtual {p1}, Ljava/io/File;->mkdirs()Z

    .line 469
    iget-object p1, p0, Lcom/narvii/post/BasePostActivity;->mediaPickerFragment:Lcom/narvii/media/MediaPickerFragment;

    iget-object v0, p0, Lcom/narvii/comment/post/CommentPostActivity;->photoDir:Ljava/io/File;

    const/4 v1, 0x4

    invoke-virtual {p1, v0, v2, v1, v4}, Lcom/narvii/media/MediaPickerFragment;->pickMedia(Ljava/io/File;Landroid/os/Bundle;II)V

    goto/16 :goto_3

    .line 471
    :cond_0
    invoke-virtual {p0}, Lcom/narvii/comment/post/CommentPostActivity;->savePost()Lcom/narvii/comment/post/CommentPost;

    move-result-object v0

    .line 472
    iget-object v0, v0, Lcom/narvii/comment/post/CommentPost;->mediaList:Ljava/util/List;

    .line 473
    invoke-interface {v0, p1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result p1

    .line 474
    new-instance v1, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/narvii/app/NVActivity;->getContext()Landroid/content/Context;

    move-result-object v2

    const-class v3, Lcom/narvii/media/MediaGalleryActivity;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 475
    invoke-static {v0}, Lcom/narvii/util/JacksonUtils;->writeAsString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "list"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    if-ltz p1, :cond_1

    const-string v0, "position"

    .line 477
    invoke-virtual {v1, v0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 479
    :cond_1
    invoke-virtual {p0, v1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_3

    .line 422
    :cond_2
    invoke-virtual {p0}, Lcom/narvii/app/NVActivity;->isVisitorNotJoined()Z

    move-result p1

    if-eqz p1, :cond_3

    .line 423
    invoke-static {p0}, Lcom/narvii/community/JoinCommunityDialog;->showInnerJoinDialog(Lcom/narvii/app/NVContext;)Landroid/app/Dialog;

    return-void

    .line 426
    :cond_3
    iget-object p1, p0, Lcom/narvii/comment/post/CommentPostActivity;->stickerPanel:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result p1

    if-eqz p1, :cond_4

    const/4 p1, 0x1

    goto :goto_0

    :cond_4
    const/4 p1, 0x0

    :goto_0
    if-eqz p1, :cond_7

    .line 428
    invoke-static {p0}, Lcom/narvii/util/AndroidBug5497Workaround;->getKeyboardHeight(Landroid/app/Activity;)I

    move-result p1

    if-lez p1, :cond_5

    .line 430
    iget-object v0, p0, Lcom/narvii/comment/post/CommentPostActivity;->stickerPanel:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    invoke-virtual {p0, p1}, Lcom/narvii/comment/post/CommentPostActivity;->getValidPanelHeight(I)I

    move-result p1

    iput p1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 432
    :cond_5
    iget-boolean p1, p0, Lcom/narvii/comment/post/CommentPostActivity;->isKeyboardVisible:Z

    if-eqz p1, :cond_6

    .line 433
    iget-object p1, p0, Lcom/narvii/comment/post/CommentPostActivity;->switchingKeyboard:Lcom/narvii/util/statistics/TmpValue;

    new-instance v0, Lcom/narvii/comment/post/CommentPostActivity$SwitchKeyboard;

    iget-object v1, p0, Lcom/narvii/comment/post/CommentPostActivity;->stickerPanel:Landroid/view/View;

    invoke-direct {v0, v3, v1}, Lcom/narvii/comment/post/CommentPostActivity$SwitchKeyboard;-><init>(ZLandroid/view/View;)V

    invoke-virtual {p1, v0}, Lcom/narvii/util/statistics/TmpValue;->set(Ljava/lang/Object;)V

    .line 434
    iget-object p1, p0, Lcom/narvii/comment/post/CommentPostActivity;->editContent:Landroid/widget/EditText;

    invoke-static {p1}, Lcom/narvii/util/SoftKeyboard;->hideSoftKeyboard(Landroid/widget/EditText;)V

    goto :goto_1

    .line 436
    :cond_6
    iget-object p1, p0, Lcom/narvii/comment/post/CommentPostActivity;->stickerPanel:Landroid/view/View;

    invoke-direct {p0, p1, v3}, Lcom/narvii/comment/post/CommentPostActivity;->changePanelVisibility(Landroid/view/View;I)V

    .line 438
    :goto_1
    invoke-direct {p0, v3}, Lcom/narvii/comment/post/CommentPostActivity;->changeStikerEntryVisibility(Z)V

    .line 440
    invoke-direct {p0, v4}, Lcom/narvii/comment/post/CommentPostActivity;->updateGalleryViews(Z)V

    goto :goto_3

    .line 442
    :cond_7
    invoke-direct {p0, v3}, Lcom/narvii/comment/post/CommentPostActivity;->updateGalleryViews(Z)V

    .line 443
    iget-object p1, p0, Lcom/narvii/comment/post/CommentPostActivity;->switchingKeyboard:Lcom/narvii/util/statistics/TmpValue;

    new-instance v0, Lcom/narvii/comment/post/CommentPostActivity$SwitchKeyboard;

    iget-object v1, p0, Lcom/narvii/comment/post/CommentPostActivity;->stickerPanel:Landroid/view/View;

    invoke-direct {v0, v4, v1}, Lcom/narvii/comment/post/CommentPostActivity$SwitchKeyboard;-><init>(ZLandroid/view/View;)V

    invoke-virtual {p1, v0}, Lcom/narvii/util/statistics/TmpValue;->set(Ljava/lang/Object;)V

    .line 444
    iget-object p1, p0, Lcom/narvii/comment/post/CommentPostActivity;->editContent:Landroid/widget/EditText;

    invoke-static {p1}, Lcom/narvii/util/SoftKeyboard;->showSoftKeyboard(Landroid/widget/EditText;)V

    .line 445
    invoke-direct {p0, v4}, Lcom/narvii/comment/post/CommentPostActivity;->changeStikerEntryVisibility(Z)V

    goto :goto_3

    .line 449
    :cond_8
    invoke-virtual {p0}, Lcom/narvii/post/BasePostActivity;->startPost()V

    goto :goto_3

    .line 453
    :cond_9
    invoke-virtual {p0}, Lcom/narvii/comment/post/CommentPostActivity;->savePost()Lcom/narvii/comment/post/CommentPost;

    move-result-object p1

    .line 454
    iget-object p1, p1, Lcom/narvii/comment/post/CommentPost;->mediaList:Ljava/util/List;

    const/4 v0, 0x5

    if-eqz p1, :cond_a

    .line 455
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-lt v1, v0, :cond_a

    const p1, 0x7f0f0dd0

    .line 456
    invoke-virtual {p0, p1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1, v3}, Lcom/narvii/util/NVToast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Lcom/narvii/util/NVToast;

    move-result-object p1

    invoke-virtual {p1}, Lcom/narvii/util/NVToast;->show()V

    goto :goto_3

    .line 458
    :cond_a
    iget-object v1, p0, Lcom/narvii/comment/post/CommentPostActivity;->photoDir:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    .line 459
    iget-object v1, p0, Lcom/narvii/post/BasePostActivity;->mediaPickerFragment:Lcom/narvii/media/MediaPickerFragment;

    iget-object v4, p0, Lcom/narvii/comment/post/CommentPostActivity;->photoDir:Ljava/io/File;

    if-nez p1, :cond_b

    const/4 p1, 0x0

    goto :goto_2

    :cond_b
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    :goto_2
    sub-int/2addr v0, p1

    invoke-virtual {v1, v4, v2, v3, v0}, Lcom/narvii/media/MediaPickerFragment;->pickMedia(Ljava/io/File;Landroid/os/Bundle;II)V

    :cond_c
    :goto_3
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 6

    .line 142
    const-class v0, Lcom/narvii/comment/post/CommentPost;

    invoke-super {p0, p1}, Lcom/narvii/post/BasePostActivity;->onCreate(Landroid/os/Bundle;)V

    .line 143
    new-instance v1, Ljava/io/File;

    new-instance v2, Ljava/io/File;

    invoke-virtual {p0}, Landroid/app/Activity;->getFilesDir()Ljava/io/File;

    move-result-object v3

    const-string v4, "photo"

    invoke-direct {v2, v3, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    const-string v3, "comment"

    invoke-direct {v1, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v1, p0, Lcom/narvii/comment/post/CommentPostActivity;->photoDir:Ljava/io/File;

    const v1, 0x7f0b0583

    .line 145
    invoke-virtual {p0, v1}, Lcom/narvii/app/theme/NVThemeActivity;->setContentView(I)V

    .line 146
    invoke-static {p0}, Lcom/narvii/util/AndroidBug5497Workaround;->assistActivity(Landroid/app/Activity;)V

    .line 147
    invoke-virtual {p0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/ActionBar;->hide()V

    .line 148
    invoke-virtual {p0}, Lcom/narvii/comment/post/CommentPostActivity;->isEdit()Z

    move-result v1

    if-eqz v1, :cond_0

    const v1, 0x7f0f03cd

    goto :goto_0

    :cond_0
    const v1, 0x7f0f0d88

    :goto_0
    invoke-virtual {p0, v1}, Landroid/app/Activity;->setTitle(I)V

    const v1, 0x7f0902d0

    .line 150
    invoke-virtual {p0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    iput-object v1, p0, Lcom/narvii/comment/post/CommentPostActivity;->editContent:Landroid/widget/EditText;

    .line 151
    iget-object v1, p0, Lcom/narvii/comment/post/CommentPostActivity;->editContent:Landroid/widget/EditText;

    new-instance v2, Lcom/narvii/comment/post/CommentPostActivity$1;

    invoke-direct {v2, p0}, Lcom/narvii/comment/post/CommentPostActivity$1;-><init>(Lcom/narvii/comment/post/CommentPostActivity;)V

    invoke-static {v1, v2}, Lcom/narvii/util/SoftKeyboard;->observeKeyboard(Landroid/view/View;Lcom/narvii/util/Callback;)Lcom/narvii/util/SoftKeyboard$KeyboardObserver;

    move-result-object v1

    iput-object v1, p0, Lcom/narvii/comment/post/CommentPostActivity;->keyboardObserver:Lcom/narvii/util/SoftKeyboard$KeyboardObserver;

    .line 207
    iget-object v1, p0, Lcom/narvii/comment/post/CommentPostActivity;->editContent:Landroid/widget/EditText;

    check-cast v1, Lcom/narvii/comment/post/CommentEditText;

    new-instance v2, Lcom/narvii/comment/post/CommentPostActivity$2;

    invoke-direct {v2, p0}, Lcom/narvii/comment/post/CommentPostActivity$2;-><init>(Lcom/narvii/comment/post/CommentPostActivity;)V

    iput-object v2, v1, Lcom/narvii/comment/post/CommentEditText;->onKeyPreImeListener:Lcom/narvii/util/Callback;

    .line 216
    iget-object v1, p0, Lcom/narvii/comment/post/CommentPostActivity;->editContent:Landroid/widget/EditText;

    new-instance v2, Lcom/narvii/comment/post/CommentPostActivity$3;

    invoke-direct {v2, p0}, Lcom/narvii/comment/post/CommentPostActivity$3;-><init>(Lcom/narvii/comment/post/CommentPostActivity;)V

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    const-string v1, "hint"

    .line 236
    invoke-virtual {p0, v1}, Lcom/narvii/app/NVActivity;->getStringParam(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 237
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 238
    iget-object v2, p0, Lcom/narvii/comment/post/CommentPostActivity;->editContent:Landroid/widget/EditText;

    invoke-virtual {v2, v1}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    :cond_1
    const v1, 0x7f090833

    .line 241
    invoke-virtual {p0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 243
    invoke-virtual {p0}, Lcom/narvii/comment/post/CommentPostActivity;->disableMediaPost()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 244
    invoke-virtual {p0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 245
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x11

    const/high16 v3, 0x41000000    # 8.0f

    if-ge v1, v2, :cond_2

    .line 246
    iget-object v1, p0, Lcom/narvii/comment/post/CommentPostActivity;->editContent:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup$MarginLayoutParams;

    invoke-virtual {p0}, Lcom/narvii/app/NVActivity;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2, v3}, Lcom/narvii/util/Utils;->dpToPx(Landroid/content/Context;F)F

    move-result v2

    float-to-int v2, v2

    iput v2, v1, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    goto :goto_1

    .line 248
    :cond_2
    iget-object v1, p0, Lcom/narvii/comment/post/CommentPostActivity;->editContent:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup$MarginLayoutParams;

    invoke-virtual {p0}, Lcom/narvii/app/NVActivity;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2, v3}, Lcom/narvii/util/Utils;->dpToPx(Landroid/content/Context;F)F

    move-result v2

    float-to-int v2, v2

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginStart(I)V

    :cond_3
    :goto_1
    const v1, 0x7f09086c

    .line 252
    invoke-virtual {p0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/narvii/comment/post/CommentPostActivity;->postBtn:Landroid/widget/ImageView;

    .line 253
    iget-object v1, p0, Lcom/narvii/comment/post/CommentPostActivity;->postBtn:Landroid/widget/ImageView;

    invoke-virtual {v1, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v1, 0x7f090b03

    .line 254
    invoke-virtual {p0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    new-instance v2, Lcom/narvii/comment/post/CommentPostActivity$4;

    invoke-direct {v2, p0}, Lcom/narvii/comment/post/CommentPostActivity$4;-><init>(Lcom/narvii/comment/post/CommentPostActivity;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    const v1, 0x7f090293

    .line 264
    invoke-virtual {p0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/narvii/widget/DragSortGallery;

    iput-object v1, p0, Lcom/narvii/comment/post/CommentPostActivity;->imgs:Lcom/narvii/widget/DragSortGallery;

    .line 265
    iget-object v1, p0, Lcom/narvii/comment/post/CommentPostActivity;->imgs:Lcom/narvii/widget/DragSortGallery;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_2
    if-ge v3, v1, :cond_5

    .line 266
    iget-object v4, p0, Lcom/narvii/comment/post/CommentPostActivity;->imgs:Lcom/narvii/widget/DragSortGallery;

    invoke-virtual {v4, v3}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    const v5, 0x7f090571

    .line 267
    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    if-eqz v5, :cond_4

    .line 268
    invoke-virtual {v4, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 269
    invoke-virtual {v4, p0}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    :cond_4
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_5
    const-string v1, "post"

    const/4 v3, 0x1

    if-nez p1, :cond_c

    .line 274
    invoke-virtual {p0, v1}, Lcom/narvii/app/NVActivity;->getStringParam(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, v0}, Lcom/narvii/util/JacksonUtils;->readAs(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/narvii/comment/post/CommentPost;

    iput-object p1, p0, Lcom/narvii/comment/post/CommentPostActivity;->post:Lcom/narvii/comment/post/CommentPost;

    .line 275
    iget-object p1, p0, Lcom/narvii/comment/post/CommentPostActivity;->post:Lcom/narvii/comment/post/CommentPost;

    if-eqz p1, :cond_9

    invoke-virtual {p1}, Lcom/narvii/comment/post/CommentPost;->title()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_6

    iget-object p1, p0, Lcom/narvii/comment/post/CommentPostActivity;->post:Lcom/narvii/comment/post/CommentPost;

    invoke-virtual {p1}, Lcom/narvii/comment/post/CommentPost;->title()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    if-nez p1, :cond_8

    :cond_6
    iget-object p1, p0, Lcom/narvii/comment/post/CommentPostActivity;->post:Lcom/narvii/comment/post/CommentPost;

    .line 276
    invoke-virtual {p1}, Lcom/narvii/comment/post/CommentPost;->icon()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_7

    iget-object p1, p0, Lcom/narvii/comment/post/CommentPostActivity;->post:Lcom/narvii/comment/post/CommentPost;

    invoke-virtual {p1}, Lcom/narvii/comment/post/CommentPost;->icon()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    if-nez p1, :cond_8

    :cond_7
    iget-object p1, p0, Lcom/narvii/comment/post/CommentPostActivity;->post:Lcom/narvii/comment/post/CommentPost;

    .line 277
    invoke-virtual {p1}, Lcom/narvii/comment/post/CommentPost;->content()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_9

    iget-object p1, p0, Lcom/narvii/comment/post/CommentPostActivity;->post:Lcom/narvii/comment/post/CommentPost;

    invoke-virtual {p1}, Lcom/narvii/comment/post/CommentPost;->content()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    if-nez p1, :cond_8

    goto :goto_3

    :cond_8
    const/4 p1, 0x0

    goto :goto_4

    :cond_9
    :goto_3
    const/4 p1, 0x1

    .line 278
    :goto_4
    iget-object v0, p0, Lcom/narvii/comment/post/CommentPostActivity;->post:Lcom/narvii/comment/post/CommentPost;

    if-eqz v0, :cond_a

    if-eqz p1, :cond_d

    .line 280
    :cond_a
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "parentType"

    invoke-virtual {p0, v0}, Lcom/narvii/app/NVActivity;->getStringParam(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v0, "|"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "parentId"

    invoke-virtual {p0, v1}, Lcom/narvii/app/NVActivity;->getStringParam(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "respondTo"

    .line 281
    invoke-virtual {p0, v1}, Lcom/narvii/app/NVActivity;->getStringParam(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "commentId"

    invoke-virtual {p0, v0}, Lcom/narvii/app/NVActivity;->getStringParam(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 282
    sget-object v0, Lcom/narvii/comment/post/CommentPostActivity;->LATEST_DRAFT_ID:Ljava/lang/String;

    invoke-static {p1, v0}, Lcom/narvii/util/Utils;->isEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_b

    sget-object p1, Lcom/narvii/comment/post/CommentPostActivity;->LATEST_DRAFT:Lcom/narvii/comment/post/CommentPost;

    if-eqz p1, :cond_b

    .line 283
    iput-object p1, p0, Lcom/narvii/comment/post/CommentPostActivity;->post:Lcom/narvii/comment/post/CommentPost;

    const/4 p1, 0x0

    .line 284
    sput-object p1, Lcom/narvii/comment/post/CommentPostActivity;->LATEST_DRAFT:Lcom/narvii/comment/post/CommentPost;

    .line 285
    sput-object p1, Lcom/narvii/comment/post/CommentPostActivity;->LATEST_DRAFT_ID:Ljava/lang/String;

    goto :goto_5

    .line 286
    :cond_b
    iget-object p1, p0, Lcom/narvii/comment/post/CommentPostActivity;->post:Lcom/narvii/comment/post/CommentPost;

    if-nez p1, :cond_d

    .line 287
    new-instance p1, Lcom/narvii/comment/post/CommentPost;

    invoke-direct {p1}, Lcom/narvii/comment/post/CommentPost;-><init>()V

    iput-object p1, p0, Lcom/narvii/comment/post/CommentPostActivity;->post:Lcom/narvii/comment/post/CommentPost;

    goto :goto_5

    .line 291
    :cond_c
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, v0}, Lcom/narvii/util/JacksonUtils;->readAs(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/narvii/comment/post/CommentPost;

    iput-object p1, p0, Lcom/narvii/comment/post/CommentPostActivity;->post:Lcom/narvii/comment/post/CommentPost;

    :cond_d
    :goto_5
    const p1, 0x7f090aad

    .line 294
    invoke-virtual {p0, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/narvii/comment/post/CommentPostActivity;->stickerContainer:Landroid/view/View;

    .line 295
    iget-object p1, p0, Lcom/narvii/comment/post/CommentPostActivity;->stickerContainer:Landroid/view/View;

    invoke-virtual {p1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const p1, 0x7f090ab7

    .line 296
    invoke-virtual {p0, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/narvii/comment/post/CommentPostActivity;->stickerPanel:Landroid/view/View;

    const v0, 0x7f090ab0

    .line 297
    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/narvii/comment/post/CommentPostActivity;->btnStickerEntry:Landroid/view/View;

    const v0, 0x7f090ab4

    .line 298
    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/narvii/comment/post/CommentPostActivity;->btnKeyboardEntry:Landroid/view/View;

    .line 300
    iget-object v0, p0, Lcom/narvii/comment/post/CommentPostActivity;->stickerPanel:Landroid/view/View;

    if-eqz v0, :cond_12

    .line 301
    invoke-virtual {p0}, Landroid/support/v4/app/FragmentActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    const-string v1, "stickPicker"

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/narvii/monetization/sticker/picker/StickerPickerTabFragment;

    iput-object v0, p0, Lcom/narvii/comment/post/CommentPostActivity;->stickerPickerTabFragment:Lcom/narvii/monetization/sticker/picker/StickerPickerTabFragment;

    .line 302
    iget-object v0, p0, Lcom/narvii/comment/post/CommentPostActivity;->stickerPickerTabFragment:Lcom/narvii/monetization/sticker/picker/StickerPickerTabFragment;

    if-nez v0, :cond_11

    .line 303
    new-instance v0, Lcom/narvii/monetization/sticker/picker/StickerPickerTabFragment;

    invoke-direct {v0}, Lcom/narvii/monetization/sticker/picker/StickerPickerTabFragment;-><init>()V

    iput-object v0, p0, Lcom/narvii/comment/post/CommentPostActivity;->stickerPickerTabFragment:Lcom/narvii/monetization/sticker/picker/StickerPickerTabFragment;

    .line 304
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v4, "showEmojiOnly"

    .line 305
    invoke-virtual {p0, v4}, Lcom/narvii/app/NVActivity;->getBooleanParam(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_f

    const-string v5, "isAnnouncement"

    invoke-virtual {p0, v5}, Lcom/narvii/app/NVActivity;->getBooleanParam(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_e

    goto :goto_6

    :cond_e
    const/4 v5, 0x0

    goto :goto_7

    :cond_f
    :goto_6
    const/4 v5, 0x1

    :goto_7
    invoke-virtual {v0, v4, v5}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v4, "tabBottom"

    .line 306
    invoke-virtual {v0, v4, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v3, "source"

    const-string v4, "Sticker Keyboard"

    .line 307
    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "stickerCollectionId"

    .line 308
    invoke-virtual {p0, v3}, Lcom/narvii/app/NVActivity;->getStringParam(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "collectionId"

    invoke-virtual {v0, v4, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 309
    invoke-virtual {p0}, Lcom/narvii/app/NVActivity;->isGlobalInteractionScope()Z

    move-result v3

    if-eqz v3, :cond_10

    const-string v3, "__communityId"

    .line 310
    invoke-virtual {v0, v3, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 312
    :cond_10
    iget-object v3, p0, Lcom/narvii/comment/post/CommentPostActivity;->stickerPickerTabFragment:Lcom/narvii/monetization/sticker/picker/StickerPickerTabFragment;

    invoke-virtual {v3, v0}, Landroid/support/v4/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    .line 313
    invoke-virtual {p0}, Landroid/support/v4/app/FragmentActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    iget-object v3, p0, Lcom/narvii/comment/post/CommentPostActivity;->stickerPickerTabFragment:Lcom/narvii/monetization/sticker/picker/StickerPickerTabFragment;

    invoke-virtual {v0, p1, v3, v1}, Landroid/support/v4/app/FragmentTransaction;->add(ILandroid/support/v4/app/Fragment;Ljava/lang/String;)Landroid/support/v4/app/FragmentTransaction;

    move-result-object p1

    invoke-virtual {p1}, Landroid/support/v4/app/FragmentTransaction;->commitAllowingStateLoss()I

    .line 315
    :cond_11
    iget-object p1, p0, Lcom/narvii/comment/post/CommentPostActivity;->stickerPickerTabFragment:Lcom/narvii/monetization/sticker/picker/StickerPickerTabFragment;

    invoke-virtual {p1, p0}, Lcom/narvii/monetization/sticker/picker/StickerPickerTabFragment;->setStickerSelectListener(Lcom/narvii/monetization/sticker/picker/StickerSelectListener;)V

    .line 317
    :cond_12
    iget-object p1, p0, Lcom/narvii/comment/post/CommentPostActivity;->post:Lcom/narvii/comment/post/CommentPost;

    invoke-virtual {p0, p1}, Lcom/narvii/comment/post/CommentPostActivity;->updateView(Lcom/narvii/comment/post/CommentPost;)V

    const-string p1, "fromStoryCommentList"

    .line 319
    invoke-virtual {p0, p1, v2}, Lcom/narvii/app/NVActivity;->getBooleanParam(Ljava/lang/String;Z)Z

    move-result p1

    iput-boolean p1, p0, Lcom/narvii/comment/post/CommentPostActivity;->fromStoryCommentList:Z

    return-void
.end method

.method protected onDestroy()V
    .locals 1

    .line 368
    invoke-super {p0}, Lcom/narvii/post/BasePostActivity;->onDestroy()V

    .line 369
    iget-object v0, p0, Lcom/narvii/comment/post/CommentPostActivity;->keyboardObserver:Lcom/narvii/util/SoftKeyboard$KeyboardObserver;

    if-eqz v0, :cond_0

    .line 370
    invoke-virtual {v0}, Lcom/narvii/util/SoftKeyboard$KeyboardObserver;->dispose()V

    :cond_0
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1

    const/16 v0, 0x52

    if-ne p1, v0, :cond_0

    const/4 p1, 0x1

    return p1

    .line 389
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result p1

    return p1
.end method

.method protected onLoginResult(ZLandroid/content/Intent;)V
    .locals 2

    .line 789
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "loginAhead"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 790
    new-instance v0, Lcom/narvii/comment/post/-$$Lambda$CommentPostActivity$KF-cA_lgs1Xt3H5Kj2TZWxYc848;

    invoke-direct {v0, p0}, Lcom/narvii/comment/post/-$$Lambda$CommentPostActivity$KF-cA_lgs1Xt3H5Kj2TZWxYc848;-><init>(Lcom/narvii/comment/post/CommentPostActivity;)V

    invoke-static {v0}, Lcom/narvii/util/Utils;->post(Ljava/lang/Runnable;)V

    .line 792
    :cond_0
    invoke-super {p0, p1, p2}, Lcom/narvii/post/BasePostActivity;->onLoginResult(ZLandroid/content/Intent;)V

    return-void
.end method

.method public onLongClick(Landroid/view/View;)Z
    .locals 6

    const v0, 0x7f090571

    .line 493
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/narvii/widget/NVImageView;

    .line 494
    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->getTag(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/narvii/model/Media;

    const/4 v0, 0x1

    if-nez p1, :cond_0

    goto :goto_0

    .line 497
    :cond_0
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/narvii/app/NVActivity;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    new-array v2, v0, [Ljava/lang/CharSequence;

    const/4 v3, 0x0

    .line 498
    invoke-virtual {p0}, Lcom/narvii/app/NVActivity;->getContext()Landroid/content/Context;

    move-result-object v4

    const v5, 0x7f0f0348

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    new-instance v3, Lcom/narvii/comment/post/CommentPostActivity$5;

    invoke-direct {v3, p0, p1}, Lcom/narvii/comment/post/CommentPostActivity$5;-><init>(Lcom/narvii/comment/post/CommentPostActivity;Lcom/narvii/model/Media;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 507
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    :goto_0
    return v0
.end method

.method protected onPause()V
    .locals 5

    .line 346
    invoke-super {p0}, Lcom/narvii/app/NVActivity;->onPause()V

    .line 347
    iget-boolean v0, p0, Lcom/narvii/comment/post/CommentPostActivity;->posted:Z

    const/4 v1, 0x0

    if-nez v0, :cond_5

    .line 348
    invoke-virtual {p0}, Lcom/narvii/comment/post/CommentPostActivity;->savePost()Lcom/narvii/comment/post/CommentPost;

    move-result-object v0

    const-string v2, "post"

    .line 349
    invoke-virtual {p0, v2}, Lcom/narvii/app/NVActivity;->getStringParam(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-class v3, Lcom/narvii/comment/post/CommentPost;

    invoke-static {v2, v3}, Lcom/narvii/util/JacksonUtils;->readAs(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/narvii/comment/post/CommentPost;

    if-eqz v0, :cond_3

    .line 350
    invoke-virtual {v0}, Lcom/narvii/comment/post/CommentPost;->title()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_0

    invoke-virtual {v0}, Lcom/narvii/comment/post/CommentPost;->title()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-nez v3, :cond_2

    .line 351
    :cond_0
    invoke-virtual {v0}, Lcom/narvii/comment/post/CommentPost;->icon()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_1

    invoke-virtual {v0}, Lcom/narvii/comment/post/CommentPost;->icon()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-nez v3, :cond_2

    .line 352
    :cond_1
    invoke-virtual {v0}, Lcom/narvii/comment/post/CommentPost;->content()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_3

    invoke-virtual {v0}, Lcom/narvii/comment/post/CommentPost;->content()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-nez v3, :cond_2

    goto :goto_0

    :cond_2
    const/4 v3, 0x0

    goto :goto_1

    :cond_3
    :goto_0
    const/4 v3, 0x1

    :goto_1
    if-nez v3, :cond_5

    if-eqz v2, :cond_4

    .line 353
    invoke-virtual {v0, v2}, Lcom/narvii/comment/post/CommentPost;->isSame(Lcom/narvii/post/PostObject;)Z

    move-result v2

    if-nez v2, :cond_5

    .line 354
    :cond_4
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "parentType"

    invoke-virtual {p0, v3}, Lcom/narvii/app/NVActivity;->getStringParam(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v3, "|"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "parentId"

    invoke-virtual {p0, v4}, Lcom/narvii/app/NVActivity;->getStringParam(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "respondTo"

    .line 355
    invoke-virtual {p0, v4}, Lcom/narvii/app/NVActivity;->getStringParam(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "commentId"

    invoke-virtual {p0, v3}, Lcom/narvii/app/NVActivity;->getStringParam(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 356
    sput-object v2, Lcom/narvii/comment/post/CommentPostActivity;->LATEST_DRAFT_ID:Ljava/lang/String;

    .line 357
    sput-object v0, Lcom/narvii/comment/post/CommentPostActivity;->LATEST_DRAFT:Lcom/narvii/comment/post/CommentPost;

    .line 360
    :cond_5
    iget-boolean v0, p0, Lcom/narvii/comment/post/CommentPostActivity;->fromStoryCommentList:Z

    if-eqz v0, :cond_6

    .line 361
    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/narvii/nvplayer/NVPlayerManager;->getNVPlayer(Landroid/content/Context;)Lcom/narvii/nvplayer/INVPlayer;

    move-result-object v0

    .line 362
    invoke-interface {v0, v1}, Lcom/narvii/nvplayer/INVPlayer;->setPlayWhenReady(Z)V

    :cond_6
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

    .line 574
    invoke-virtual {p0}, Lcom/narvii/comment/post/CommentPostActivity;->savePost()Lcom/narvii/comment/post/CommentPost;

    move-result-object p2

    .line 575
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 576
    iget-object v1, p2, Lcom/narvii/comment/post/CommentPost;->mediaList:Ljava/util/List;

    if-eqz v1, :cond_0

    .line 577
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 579
    :cond_0
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    const/4 p1, 0x5

    const v1, 0x7f0f0dd0

    .line 581
    invoke-virtual {p0, v0, p1, v1}, Lcom/narvii/post/BasePostActivity;->trimMediaList(Ljava/util/List;II)V

    .line 583
    iput-object v0, p2, Lcom/narvii/comment/post/CommentPost;->mediaList:Ljava/util/List;

    .line 584
    iput-object p2, p0, Lcom/narvii/comment/post/CommentPostActivity;->post:Lcom/narvii/comment/post/CommentPost;

    .line 585
    invoke-virtual {p0, p2}, Lcom/narvii/comment/post/CommentPostActivity;->updateView(Lcom/narvii/comment/post/CommentPost;)V

    .line 586
    new-instance p1, Lcom/narvii/comment/post/CommentPostActivity$6;

    invoke-direct {p1, p0}, Lcom/narvii/comment/post/CommentPostActivity$6;-><init>(Lcom/narvii/comment/post/CommentPostActivity;)V

    const-wide/16 v0, 0xc8

    invoke-static {p1, v0, v1}, Lcom/narvii/util/Utils;->postDelayed(Ljava/lang/Runnable;J)V

    return-void
.end method

.method public onPostFail(Lcom/narvii/post/PostHelper;ILjava/lang/String;Ljava/lang/Throwable;)V
    .locals 1

    .line 671
    invoke-super {p0, p1, p2, p3, p4}, Lcom/narvii/post/BasePostActivity;->onPostFail(Lcom/narvii/post/PostHelper;ILjava/lang/String;Ljava/lang/Throwable;)V

    const/16 p3, 0xe6

    if-ne p2, p3, :cond_0

    .line 673
    invoke-virtual {p1}, Lcom/narvii/post/PostHelper;->getPost()Lcom/narvii/post/PostObject;

    move-result-object p1

    check-cast p1, Lcom/narvii/comment/post/CommentPost;

    .line 674
    new-instance p2, Lcom/narvii/widget/ACMAlertDialog;

    invoke-virtual {p0}, Lcom/narvii/app/NVActivity;->getContext()Landroid/content/Context;

    move-result-object p3

    invoke-direct {p2, p3}, Lcom/narvii/widget/ACMAlertDialog;-><init>(Landroid/content/Context;)V

    const p3, 0x7f0f0745

    .line 675
    invoke-virtual {p2, p3}, Lcom/narvii/widget/ACMAlertDialog;->setMessage(I)V

    const p3, 0x7f0f0193

    .line 676
    invoke-virtual {p0, p3}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object p3

    const p4, -0x444445

    const/4 v0, 0x0

    invoke-virtual {p2, p3, p4, v0}, Lcom/narvii/widget/ACMAlertDialog;->addButton(Ljava/lang/CharSequence;ILandroid/view/View$OnClickListener;)Landroid/view/View;

    const p3, 0x7f0f1079

    .line 677
    new-instance p4, Lcom/narvii/comment/post/CommentPostActivity$7;

    invoke-direct {p4, p0, p1}, Lcom/narvii/comment/post/CommentPostActivity$7;-><init>(Lcom/narvii/comment/post/CommentPostActivity;Lcom/narvii/comment/post/CommentPost;)V

    invoke-virtual {p2, p3, p4}, Lcom/narvii/widget/ACMAlertDialog;->addButton(ILandroid/view/View$OnClickListener;)Landroid/view/View;

    .line 695
    invoke-virtual {p2}, Lcom/narvii/app/NVDialog;->show()V

    :cond_0
    return-void
.end method

.method public onPostFinished(Lcom/narvii/post/PostHelper;Lcom/narvii/model/api/ApiResponse;)V
    .locals 4

    const/4 v0, 0x1

    .line 634
    iput-boolean v0, p0, Lcom/narvii/comment/post/CommentPostActivity;->posted:Z

    .line 635
    invoke-static {}, Lcom/narvii/comment/post/CommentPostActivity;->clearMemoryDrafts()V

    .line 637
    invoke-super {p0, p1, p2}, Lcom/narvii/post/BasePostActivity;->onPostFinished(Lcom/narvii/post/PostHelper;Lcom/narvii/model/api/ApiResponse;)V

    return-void
.end method

.method protected onResume()V
    .locals 2

    .line 337
    invoke-super {p0}, Lcom/narvii/app/NVActivity;->onResume()V

    .line 338
    iget-boolean v0, p0, Lcom/narvii/comment/post/CommentPostActivity;->fromStoryCommentList:Z

    if-eqz v0, :cond_0

    .line 339
    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/narvii/nvplayer/NVPlayerManager;->getNVPlayer(Landroid/content/Context;)Lcom/narvii/nvplayer/INVPlayer;

    move-result-object v0

    const/4 v1, 0x1

    .line 340
    invoke-interface {v0, v1}, Lcom/narvii/nvplayer/INVPlayer;->setPlayWhenReady(Z)V

    :cond_0
    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    .line 331
    invoke-super {p0, p1}, Lcom/narvii/post/BasePostActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 332
    iget-object v0, p0, Lcom/narvii/comment/post/CommentPostActivity;->post:Lcom/narvii/comment/post/CommentPost;

    invoke-static {v0}, Lcom/narvii/util/JacksonUtils;->writeAsString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "post"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onStickerSelected(Lcom/narvii/model/Sticker;Lcom/narvii/monetization/sticker/model/StickerCollection;)V
    .locals 0

    if-nez p1, :cond_0

    return-void

    .line 717
    :cond_0
    invoke-virtual {p0}, Lcom/narvii/comment/post/CommentPostActivity;->savePost()Lcom/narvii/comment/post/CommentPost;

    move-result-object p2

    .line 718
    iget-object p1, p1, Lcom/narvii/model/Sticker;->stickerId:Ljava/lang/String;

    iput-object p1, p2, Lcom/narvii/comment/post/CommentPost;->stickerId:Ljava/lang/String;

    const/4 p1, 0x0

    .line 719
    iput-object p1, p2, Lcom/narvii/comment/post/CommentPost;->content:Ljava/lang/String;

    .line 720
    iput-object p1, p2, Lcom/narvii/comment/post/CommentPost;->mediaList:Ljava/util/List;

    const/4 p1, 0x3

    .line 721
    iput p1, p2, Lcom/narvii/comment/post/CommentPost;->type:I

    .line 722
    invoke-virtual {p0, p2}, Lcom/narvii/comment/post/CommentPostActivity;->doPost(Lcom/narvii/comment/post/CommentPost;)V

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

    .line 125
    const-class v0, Lcom/narvii/comment/post/CommentPost;

    return-object v0
.end method

.method protected savePost()Lcom/narvii/comment/post/CommentPost;
    .locals 4

    .line 542
    iget-object v0, p0, Lcom/narvii/comment/post/CommentPostActivity;->post:Lcom/narvii/comment/post/CommentPost;

    if-nez v0, :cond_0

    .line 543
    new-instance v0, Lcom/narvii/comment/post/CommentPost;

    invoke-direct {v0}, Lcom/narvii/comment/post/CommentPost;-><init>()V

    iput-object v0, p0, Lcom/narvii/comment/post/CommentPostActivity;->post:Lcom/narvii/comment/post/CommentPost;

    .line 545
    :cond_0
    iget-object v0, p0, Lcom/narvii/comment/post/CommentPostActivity;->post:Lcom/narvii/comment/post/CommentPost;

    iget-object v1, p0, Lcom/narvii/comment/post/CommentPostActivity;->editContent:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/narvii/comment/post/CommentPost;->content:Ljava/lang/String;

    .line 546
    iget-object v0, p0, Lcom/narvii/comment/post/CommentPostActivity;->post:Lcom/narvii/comment/post/CommentPost;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, v0, Lcom/narvii/comment/post/CommentPost;->mediaList:Ljava/util/List;

    const/4 v0, 0x0

    .line 547
    iget-object v1, p0, Lcom/narvii/comment/post/CommentPostActivity;->imgs:Lcom/narvii/widget/DragSortGallery;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v1

    :goto_0
    if-ge v0, v1, :cond_2

    .line 548
    iget-object v2, p0, Lcom/narvii/comment/post/CommentPostActivity;->imgs:Lcom/narvii/widget/DragSortGallery;

    invoke-virtual {v2, v0}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    const v3, 0x7f090571

    .line 549
    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/narvii/widget/NVImageView;

    if-eqz v2, :cond_1

    .line 551
    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->getTag(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/narvii/model/Media;

    if-eqz v2, :cond_1

    .line 553
    iget-object v3, p0, Lcom/narvii/comment/post/CommentPostActivity;->post:Lcom/narvii/comment/post/CommentPost;

    iget-object v3, v3, Lcom/narvii/comment/post/CommentPost;->mediaList:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 558
    :cond_2
    iget-object v0, p0, Lcom/narvii/comment/post/CommentPostActivity;->post:Lcom/narvii/comment/post/CommentPost;

    return-object v0
.end method

.method protected bridge synthetic savePost()Lcom/narvii/post/PostObject;
    .locals 1

    .line 86
    invoke-virtual {p0}, Lcom/narvii/comment/post/CommentPostActivity;->savePost()Lcom/narvii/comment/post/CommentPost;

    move-result-object v0

    return-object v0
.end method

.method public setTransparentArea(Landroid/graphics/Rect;)V
    .locals 5

    const v0, 0x7f090b03

    .line 754
    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 757
    :cond_0
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    .line 758
    invoke-virtual {v0, v1}, Landroid/view/View;->getGlobalVisibleRect(Landroid/graphics/Rect;)Z

    const v2, 0x7f090b05

    .line 759
    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    const v3, 0x7f090b06

    .line 760
    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 761
    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    iget v4, p1, Landroid/graphics/Rect;->top:I

    iget v1, v1, Landroid/graphics/Rect;->top:I

    sub-int/2addr v4, v1

    iput v4, v3, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 762
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result p1

    iput p1, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 763
    invoke-virtual {v2}, Landroid/view/View;->requestLayout()V

    .line 764
    invoke-virtual {v0}, Landroid/view/View;->requestLayout()V

    return-void
.end method

.method protected updateView(Lcom/narvii/comment/post/CommentPost;)V
    .locals 10

    .line 514
    invoke-super {p0, p1}, Lcom/narvii/post/BasePostActivity;->updateView(Lcom/narvii/post/PostObject;)V

    if-nez p1, :cond_0

    return-void

    .line 519
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

    .line 520
    iget-object v0, p0, Lcom/narvii/comment/post/CommentPostActivity;->editContent:Landroid/widget/EditText;

    iget-object v1, p1, Lcom/narvii/comment/post/CommentPost;->content:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 521
    iget-object v0, p0, Lcom/narvii/comment/post/CommentPostActivity;->editContent:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v1}, Landroid/text/Editable;->length()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setSelection(I)V

    .line 524
    :cond_1
    iget-object v0, p1, Lcom/narvii/comment/post/CommentPost;->mediaList:Ljava/util/List;

    const/4 v1, 0x0

    if-nez v0, :cond_2

    const/4 v0, 0x0

    goto :goto_0

    :cond_2
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    .line 525
    :goto_0
    iget-object v2, p0, Lcom/narvii/comment/post/CommentPostActivity;->imgs:Lcom/narvii/widget/DragSortGallery;

    if-lez v0, :cond_3

    const/4 v3, 0x0

    goto :goto_1

    :cond_3
    const/16 v3, 0x8

    :goto_1
    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 526
    iget-object v2, p0, Lcom/narvii/comment/post/CommentPostActivity;->imgs:Lcom/narvii/widget/DragSortGallery;

    invoke-virtual {v2, v1, v0}, Lcom/narvii/widget/DragSortGallery;->setDragRange(II)V

    .line 527
    iget-object v2, p0, Lcom/narvii/comment/post/CommentPostActivity;->imgs:Lcom/narvii/widget/DragSortGallery;

    invoke-virtual {v2}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_2
    if-ge v3, v2, :cond_7

    .line 528
    iget-object v5, p0, Lcom/narvii/comment/post/CommentPostActivity;->imgs:Lcom/narvii/widget/DragSortGallery;

    invoke-virtual {v5, v3}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    const v6, 0x7f090571

    .line 529
    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Lcom/narvii/widget/NVImageView;

    if-eqz v7, :cond_6

    if-ge v4, v0, :cond_4

    .line 531
    iget-object v8, p1, Lcom/narvii/comment/post/CommentPost;->mediaList:Ljava/util/List;

    invoke-interface {v8, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/narvii/model/Media;

    goto :goto_3

    :cond_4
    const/4 v8, 0x0

    :goto_3
    const v9, 0x7f090562

    .line 532
    invoke-virtual {v5, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    if-nez v8, :cond_5

    const/4 v9, 0x0

    goto :goto_4

    :cond_5
    const/4 v9, 0x4

    :goto_4
    invoke-virtual {v5, v9}, Landroid/view/View;->setVisibility(I)V

    .line 533
    invoke-virtual {v7, v8}, Lcom/narvii/widget/NVImageView;->setImageMedia(Lcom/narvii/model/Media;)Z

    .line 534
    invoke-virtual {v7, v6, v8}, Landroid/widget/ImageView;->setTag(ILjava/lang/Object;)V

    add-int/lit8 v4, v4, 0x1

    :cond_6
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_7
    return-void
.end method

.method protected bridge synthetic updateView(Lcom/narvii/post/PostObject;)V
    .locals 0

    .line 86
    check-cast p1, Lcom/narvii/comment/post/CommentPost;

    invoke-virtual {p0, p1}, Lcom/narvii/comment/post/CommentPostActivity;->updateView(Lcom/narvii/comment/post/CommentPost;)V

    return-void
.end method

.method protected validateUpload(Lcom/narvii/comment/post/CommentPost;)Z
    .locals 4

    .line 563
    iget-object v0, p0, Lcom/narvii/comment/post/CommentPostActivity;->editContent:Landroid/widget/EditText;

    const v1, 0x7f0f0daa

    invoke-virtual {p0, v0, v1}, Lcom/narvii/post/BasePostActivity;->validateEditTextNotEmpty(Landroid/widget/EditText;I)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 565
    :cond_0
    iget-object v0, p0, Lcom/narvii/comment/post/CommentPostActivity;->editContent:Landroid/widget/EditText;

    const/16 v2, 0xbb8

    const v3, 0x7f0f0da8

    invoke-virtual {p0, v0, v2, v3}, Lcom/narvii/post/BasePostActivity;->validateEditTextMax(Landroid/widget/EditText;II)Z

    move-result v0

    if-nez v0, :cond_1

    return v1

    .line 567
    :cond_1
    iget-object p1, p1, Lcom/narvii/comment/post/CommentPost;->mediaList:Ljava/util/List;

    const/4 v0, 0x5

    const v2, 0x7f0f0dc5

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

    .line 86
    check-cast p1, Lcom/narvii/comment/post/CommentPost;

    invoke-virtual {p0, p1}, Lcom/narvii/comment/post/CommentPostActivity;->validateUpload(Lcom/narvii/comment/post/CommentPost;)Z

    move-result p1

    return p1
.end method
