.class public Lcom/narvii/item/detail/ItemDetailFragment;
.super Lcom/narvii/detail/FeedDetailFragment;
.source "ItemDetailFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/narvii/item/detail/ItemDetailFragment$TagRelatedAdapter;,
        Lcom/narvii/item/detail/ItemDetailFragment$WriteRelatedBlogAdapter;,
        Lcom/narvii/item/detail/ItemDetailFragment$RelatedBlogHeaderAdapter;,
        Lcom/narvii/item/detail/ItemDetailFragment$CommentAdapter;,
        Lcom/narvii/item/detail/ItemDetailFragment$Adapter;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/narvii/detail/FeedDetailFragment<",
        "Lcom/narvii/model/Item;",
        ">;"
    }
.end annotation


# static fields
.field static final ABOUT_HEADER:Lcom/narvii/detail/DetailAdapter$HeaderTag;

.field static final ADD_DESC:Lcom/narvii/detail/DetailAdapter$AddTag;

.field static final ADS:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/narvii/detail/DetailAdapter$CellType;",
            ">;"
        }
    .end annotation
.end field

.field static final AD_ABOVECOMMENT:Lcom/narvii/detail/DetailAdapter$CellType;

.field static final AUTHOR_HEADER:Lcom/narvii/detail/DetailAdapter$HeaderTag;

.field static final CONTRIBUTORS:Lcom/narvii/detail/DetailAdapter$CellType;

.field static final CONTRIBUTORS_HEADER:Lcom/narvii/detail/DetailAdapter$HeaderTag;

.field static final CONTRIBUTOR_REQUEST:I = 0x4

.field static final COPY_AND_EDIT_REQUEST:I = 0x8

.field static final GALLERY:Lcom/narvii/detail/DetailAdapter$CellType;

.field static final GALLERY_HEADER:Lcom/narvii/detail/DetailAdapter$HeaderTag;

.field static final HEADER:Lcom/narvii/detail/DetailAdapter$CellType;

.field static final LIKES_HEADER:Lcom/narvii/detail/DetailAdapter$HeaderTag;

.field static final PROPERTY:Lcom/narvii/detail/DetailAdapter$CellType;

.field static final USER:Lcom/narvii/detail/DetailAdapter$CellType;


# instance fields
.field advancedOptionDialog:Lcom/narvii/poweruser/AdvancedOptionDialog;

.field private final callback:Lcom/narvii/util/Callback;

.field commentAdapter:Lcom/narvii/item/detail/ItemDetailFragment$CommentAdapter;

.field communityConfigHelper:Lcom/narvii/modulization/CommunityConfigHelper;

.field divAdapter:Lcom/narvii/list/DividerAdapter;

.field fromMyCatalog:Z

.field header:Lcom/narvii/list/overlay/OverlayLayout;

.field private final headerClickListener:Landroid/view/View$OnClickListener;

.field private headerLayout:Lcom/narvii/item/detail/HeaderLayout;

.field private headerPlaceHolder:Landroid/view/View;

.field itemAdapter:Lcom/narvii/item/detail/ItemDetailFragment$Adapter;

.field private itemHelper:Lcom/narvii/item/ItemHelper;

.field private keywordsHeight:I

.field private final longClickVote:Landroid/view/View$OnLongClickListener;

.field private mergeAdapter:Lcom/narvii/list/MergeAdapter;

.field public onFinishListener:Lcom/narvii/util/Callback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/narvii/util/Callback<",
            "Lcom/narvii/model/Item;",
            ">;"
        }
    .end annotation
.end field

.field private relatedBlogHeaderAdapter:Lcom/narvii/item/detail/ItemDetailFragment$RelatedBlogHeaderAdapter;

.field swipeRefreshLayout:Lcom/narvii/list/refresh/SwipeRefreshLayout;

.field tagRelatedAdapter:Lcom/narvii/item/detail/ItemDetailFragment$TagRelatedAdapter;

.field voteIconView:Landroid/view/View;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 131
    new-instance v0, Lcom/narvii/detail/DetailAdapter$CellType;

    const/4 v1, 0x1

    const-string v2, "detail.item.header"

    invoke-direct {v0, v2, v1}, Lcom/narvii/detail/DetailAdapter$CellType;-><init>(Ljava/lang/String;Z)V

    sput-object v0, Lcom/narvii/item/detail/ItemDetailFragment;->HEADER:Lcom/narvii/detail/DetailAdapter$CellType;

    .line 132
    new-instance v0, Lcom/narvii/detail/DetailAdapter$CellType;

    const-string v2, "detail.property"

    invoke-direct {v0, v2}, Lcom/narvii/detail/DetailAdapter$CellType;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/narvii/item/detail/ItemDetailFragment;->PROPERTY:Lcom/narvii/detail/DetailAdapter$CellType;

    .line 133
    new-instance v0, Lcom/narvii/detail/DetailAdapter$HeaderTag;

    const-string v2, "detail.about.header"

    const v3, 0x7f0f036d

    invoke-direct {v0, v2, v3}, Lcom/narvii/detail/DetailAdapter$HeaderTag;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/narvii/item/detail/ItemDetailFragment;->ABOUT_HEADER:Lcom/narvii/detail/DetailAdapter$HeaderTag;

    .line 134
    new-instance v0, Lcom/narvii/detail/DetailAdapter$HeaderTag;

    const-string v2, "detail.gallery.header"

    const v3, 0x7f0f071f

    invoke-direct {v0, v2, v3}, Lcom/narvii/detail/DetailAdapter$HeaderTag;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/narvii/item/detail/ItemDetailFragment;->GALLERY_HEADER:Lcom/narvii/detail/DetailAdapter$HeaderTag;

    .line 135
    new-instance v0, Lcom/narvii/detail/DetailAdapter$HeaderTag;

    const-string v2, "detail.user.header"

    const v3, 0x7f0f0137

    invoke-direct {v0, v2, v3}, Lcom/narvii/detail/DetailAdapter$HeaderTag;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/narvii/item/detail/ItemDetailFragment;->AUTHOR_HEADER:Lcom/narvii/detail/DetailAdapter$HeaderTag;

    .line 136
    new-instance v0, Lcom/narvii/detail/DetailAdapter$AddTag;

    const-string v2, "detail.add_desc"

    const v3, 0x7f0f036e

    invoke-direct {v0, v2, v3}, Lcom/narvii/detail/DetailAdapter$AddTag;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/narvii/item/detail/ItemDetailFragment;->ADD_DESC:Lcom/narvii/detail/DetailAdapter$AddTag;

    .line 137
    new-instance v0, Lcom/narvii/detail/DetailAdapter$CellType;

    const-string v2, "detail.gallery"

    invoke-direct {v0, v2}, Lcom/narvii/detail/DetailAdapter$CellType;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/narvii/item/detail/ItemDetailFragment;->GALLERY:Lcom/narvii/detail/DetailAdapter$CellType;

    .line 138
    new-instance v0, Lcom/narvii/detail/DetailAdapter$CellType;

    const-string v2, "detail.contributors"

    invoke-direct {v0, v2}, Lcom/narvii/detail/DetailAdapter$CellType;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/narvii/item/detail/ItemDetailFragment;->CONTRIBUTORS:Lcom/narvii/detail/DetailAdapter$CellType;

    .line 139
    new-instance v0, Lcom/narvii/detail/DetailAdapter$HeaderTag;

    const-string v2, "detail.contributors.header"

    const v3, 0x7f0f02f0

    invoke-direct {v0, v2, v3}, Lcom/narvii/detail/DetailAdapter$HeaderTag;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/narvii/item/detail/ItemDetailFragment;->CONTRIBUTORS_HEADER:Lcom/narvii/detail/DetailAdapter$HeaderTag;

    .line 140
    new-instance v0, Lcom/narvii/detail/DetailAdapter$CellType;

    const-string v2, "detail.user"

    invoke-direct {v0, v2, v1}, Lcom/narvii/detail/DetailAdapter$CellType;-><init>(Ljava/lang/String;Z)V

    sput-object v0, Lcom/narvii/item/detail/ItemDetailFragment;->USER:Lcom/narvii/detail/DetailAdapter$CellType;

    .line 141
    new-instance v0, Lcom/narvii/detail/DetailAdapter$HeaderTag;

    const-string v2, "detail.likes"

    const v3, 0x7f0f0ae5

    invoke-direct {v0, v2, v3}, Lcom/narvii/detail/DetailAdapter$HeaderTag;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/narvii/item/detail/ItemDetailFragment;->LIKES_HEADER:Lcom/narvii/detail/DetailAdapter$HeaderTag;

    const/16 v0, 0x14

    new-array v0, v0, [Lcom/narvii/detail/DetailAdapter$CellType;

    .line 661
    new-instance v2, Lcom/narvii/detail/DetailAdapter$CellType;

    const/4 v3, 0x0

    const-string v4, "adbanner1"

    invoke-direct {v2, v4, v3}, Lcom/narvii/detail/DetailAdapter$CellType;-><init>(Ljava/lang/String;Z)V

    aput-object v2, v0, v3

    new-instance v2, Lcom/narvii/detail/DetailAdapter$CellType;

    const-string v4, "adbanner2"

    invoke-direct {v2, v4, v3}, Lcom/narvii/detail/DetailAdapter$CellType;-><init>(Ljava/lang/String;Z)V

    aput-object v2, v0, v1

    new-instance v1, Lcom/narvii/detail/DetailAdapter$CellType;

    const-string v2, "adbanner3"

    invoke-direct {v1, v2, v3}, Lcom/narvii/detail/DetailAdapter$CellType;-><init>(Ljava/lang/String;Z)V

    const/4 v2, 0x2

    aput-object v1, v0, v2

    new-instance v1, Lcom/narvii/detail/DetailAdapter$CellType;

    const-string v2, "adbanner4"

    invoke-direct {v1, v2, v3}, Lcom/narvii/detail/DetailAdapter$CellType;-><init>(Ljava/lang/String;Z)V

    const/4 v2, 0x3

    aput-object v1, v0, v2

    new-instance v1, Lcom/narvii/detail/DetailAdapter$CellType;

    const-string v2, "adbanner5"

    invoke-direct {v1, v2, v3}, Lcom/narvii/detail/DetailAdapter$CellType;-><init>(Ljava/lang/String;Z)V

    const/4 v2, 0x4

    aput-object v1, v0, v2

    new-instance v1, Lcom/narvii/detail/DetailAdapter$CellType;

    const-string v2, "adbanner6"

    invoke-direct {v1, v2, v3}, Lcom/narvii/detail/DetailAdapter$CellType;-><init>(Ljava/lang/String;Z)V

    const/4 v2, 0x5

    aput-object v1, v0, v2

    new-instance v1, Lcom/narvii/detail/DetailAdapter$CellType;

    const-string v2, "adbanner7"

    invoke-direct {v1, v2, v3}, Lcom/narvii/detail/DetailAdapter$CellType;-><init>(Ljava/lang/String;Z)V

    const/4 v2, 0x6

    aput-object v1, v0, v2

    new-instance v1, Lcom/narvii/detail/DetailAdapter$CellType;

    const-string v2, "adbanner8"

    invoke-direct {v1, v2, v3}, Lcom/narvii/detail/DetailAdapter$CellType;-><init>(Ljava/lang/String;Z)V

    const/4 v2, 0x7

    aput-object v1, v0, v2

    new-instance v1, Lcom/narvii/detail/DetailAdapter$CellType;

    const-string v2, "adbanner9"

    invoke-direct {v1, v2, v3}, Lcom/narvii/detail/DetailAdapter$CellType;-><init>(Ljava/lang/String;Z)V

    const/16 v2, 0x8

    aput-object v1, v0, v2

    new-instance v1, Lcom/narvii/detail/DetailAdapter$CellType;

    const-string v2, "adbanner10"

    invoke-direct {v1, v2, v3}, Lcom/narvii/detail/DetailAdapter$CellType;-><init>(Ljava/lang/String;Z)V

    const/16 v2, 0x9

    aput-object v1, v0, v2

    new-instance v1, Lcom/narvii/detail/DetailAdapter$CellType;

    const-string v2, "adbanner11"

    invoke-direct {v1, v2, v3}, Lcom/narvii/detail/DetailAdapter$CellType;-><init>(Ljava/lang/String;Z)V

    const/16 v2, 0xa

    aput-object v1, v0, v2

    new-instance v1, Lcom/narvii/detail/DetailAdapter$CellType;

    const-string v2, "adbanner12"

    invoke-direct {v1, v2, v3}, Lcom/narvii/detail/DetailAdapter$CellType;-><init>(Ljava/lang/String;Z)V

    const/16 v2, 0xb

    aput-object v1, v0, v2

    new-instance v1, Lcom/narvii/detail/DetailAdapter$CellType;

    const-string v2, "adbanner13"

    invoke-direct {v1, v2, v3}, Lcom/narvii/detail/DetailAdapter$CellType;-><init>(Ljava/lang/String;Z)V

    const/16 v2, 0xc

    aput-object v1, v0, v2

    new-instance v1, Lcom/narvii/detail/DetailAdapter$CellType;

    const-string v2, "adbanner14"

    invoke-direct {v1, v2, v3}, Lcom/narvii/detail/DetailAdapter$CellType;-><init>(Ljava/lang/String;Z)V

    const/16 v2, 0xd

    aput-object v1, v0, v2

    new-instance v1, Lcom/narvii/detail/DetailAdapter$CellType;

    const-string v2, "adbanner15"

    invoke-direct {v1, v2, v3}, Lcom/narvii/detail/DetailAdapter$CellType;-><init>(Ljava/lang/String;Z)V

    const/16 v2, 0xe

    aput-object v1, v0, v2

    new-instance v1, Lcom/narvii/detail/DetailAdapter$CellType;

    const-string v2, "adbanner16"

    invoke-direct {v1, v2, v3}, Lcom/narvii/detail/DetailAdapter$CellType;-><init>(Ljava/lang/String;Z)V

    const/16 v2, 0xf

    aput-object v1, v0, v2

    new-instance v1, Lcom/narvii/detail/DetailAdapter$CellType;

    const-string v2, "adbanner17"

    invoke-direct {v1, v2, v3}, Lcom/narvii/detail/DetailAdapter$CellType;-><init>(Ljava/lang/String;Z)V

    const/16 v2, 0x10

    aput-object v1, v0, v2

    new-instance v1, Lcom/narvii/detail/DetailAdapter$CellType;

    const-string v2, "adbanner18"

    invoke-direct {v1, v2, v3}, Lcom/narvii/detail/DetailAdapter$CellType;-><init>(Ljava/lang/String;Z)V

    const/16 v2, 0x11

    aput-object v1, v0, v2

    new-instance v1, Lcom/narvii/detail/DetailAdapter$CellType;

    const-string v2, "adbanner19"

    invoke-direct {v1, v2, v3}, Lcom/narvii/detail/DetailAdapter$CellType;-><init>(Ljava/lang/String;Z)V

    const/16 v2, 0x12

    aput-object v1, v0, v2

    new-instance v1, Lcom/narvii/detail/DetailAdapter$CellType;

    const-string v2, "adbanner20"

    invoke-direct {v1, v2, v3}, Lcom/narvii/detail/DetailAdapter$CellType;-><init>(Ljava/lang/String;Z)V

    const/16 v2, 0x13

    aput-object v1, v0, v2

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/narvii/item/detail/ItemDetailFragment;->ADS:Ljava/util/List;

    .line 683
    new-instance v0, Lcom/narvii/detail/DetailAdapter$CellType;

    const-string v1, "adbanner_abovecomment"

    invoke-direct {v0, v1, v3}, Lcom/narvii/detail/DetailAdapter$CellType;-><init>(Ljava/lang/String;Z)V

    sput-object v0, Lcom/narvii/item/detail/ItemDetailFragment;->AD_ABOVECOMMENT:Lcom/narvii/detail/DetailAdapter$CellType;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 127
    invoke-direct {p0}, Lcom/narvii/detail/FeedDetailFragment;-><init>()V

    .line 509
    new-instance v0, Lcom/narvii/item/detail/ItemDetailFragment$6;

    invoke-direct {v0, p0}, Lcom/narvii/item/detail/ItemDetailFragment$6;-><init>(Lcom/narvii/item/detail/ItemDetailFragment;)V

    iput-object v0, p0, Lcom/narvii/item/detail/ItemDetailFragment;->headerClickListener:Landroid/view/View$OnClickListener;

    .line 522
    new-instance v0, Lcom/narvii/item/detail/ItemDetailFragment$7;

    invoke-direct {v0, p0}, Lcom/narvii/item/detail/ItemDetailFragment$7;-><init>(Lcom/narvii/item/detail/ItemDetailFragment;)V

    iput-object v0, p0, Lcom/narvii/item/detail/ItemDetailFragment;->longClickVote:Landroid/view/View$OnLongClickListener;

    .line 1732
    new-instance v0, Lcom/narvii/item/detail/ItemDetailFragment$11;

    invoke-direct {v0, p0}, Lcom/narvii/item/detail/ItemDetailFragment$11;-><init>(Lcom/narvii/item/detail/ItemDetailFragment;)V

    iput-object v0, p0, Lcom/narvii/item/detail/ItemDetailFragment;->callback:Lcom/narvii/util/Callback;

    return-void
.end method

.method static synthetic access$002(Lcom/narvii/item/detail/ItemDetailFragment;I)I
    .locals 0

    .line 127
    iput p1, p0, Lcom/narvii/item/detail/ItemDetailFragment;->keywordsHeight:I

    return p1
.end method

.method static synthetic access$100(Lcom/narvii/item/detail/ItemDetailFragment;)V
    .locals 0

    .line 127
    invoke-direct {p0}, Lcom/narvii/item/detail/ItemDetailFragment;->updateHeader()V

    return-void
.end method

.method static synthetic access$1002(Lcom/narvii/item/detail/ItemDetailFragment;Z)Z
    .locals 0

    .line 127
    iput-boolean p1, p0, Lcom/narvii/detail/DetailFragment;->_isBackgroundDark:Z

    return p1
.end method

.method static synthetic access$1102(Lcom/narvii/item/detail/ItemDetailFragment;I)I
    .locals 0

    .line 127
    iput p1, p0, Lcom/narvii/app/NVFragment;->_backgroundColor:I

    return p1
.end method

.method static synthetic access$1200(Lcom/narvii/item/detail/ItemDetailFragment;)V
    .locals 0

    .line 127
    invoke-direct {p0}, Lcom/narvii/item/detail/ItemDetailFragment;->updateBackground()V

    return-void
.end method

.method static synthetic access$1300(Lcom/narvii/item/detail/ItemDetailFragment;)V
    .locals 0

    .line 127
    invoke-virtual {p0}, Lcom/narvii/list/NVListFragment;->updateListViewContentBackground()V

    return-void
.end method

.method static synthetic access$1400(Lcom/narvii/item/detail/ItemDetailFragment;)Z
    .locals 0

    .line 127
    invoke-virtual {p0}, Lcom/narvii/detail/FeedDetailFragment;->newPreview()Z

    move-result p0

    return p0
.end method

.method static synthetic access$1500(Lcom/narvii/item/detail/ItemDetailFragment;)Z
    .locals 0

    .line 127
    invoke-virtual {p0}, Lcom/narvii/detail/FeedDetailFragment;->isMeAccessibleToThisPost()Z

    move-result p0

    return p0
.end method

.method static synthetic access$1600(Lcom/narvii/item/detail/ItemDetailFragment;)Z
    .locals 0

    .line 127
    iget-boolean p0, p0, Lcom/narvii/detail/FeedDetailFragment;->fromHeadline:Z

    return p0
.end method

.method static synthetic access$1700(Lcom/narvii/item/detail/ItemDetailFragment;)Z
    .locals 0

    .line 127
    iget-boolean p0, p0, Lcom/narvii/detail/FeedDetailFragment;->notJoined:Z

    return p0
.end method

.method static synthetic access$1800(Lcom/narvii/item/detail/ItemDetailFragment;)Landroid/view/View;
    .locals 0

    .line 127
    iget-object p0, p0, Lcom/narvii/item/detail/ItemDetailFragment;->headerPlaceHolder:Landroid/view/View;

    return-object p0
.end method

.method static synthetic access$1802(Lcom/narvii/item/detail/ItemDetailFragment;Landroid/view/View;)Landroid/view/View;
    .locals 0

    .line 127
    iput-object p1, p0, Lcom/narvii/item/detail/ItemDetailFragment;->headerPlaceHolder:Landroid/view/View;

    return-object p1
.end method

.method static synthetic access$1900(Lcom/narvii/item/detail/ItemDetailFragment;)V
    .locals 0

    .line 127
    invoke-direct {p0}, Lcom/narvii/item/detail/ItemDetailFragment;->updateHeaderPlaceHolder()V

    return-void
.end method

.method static synthetic access$200(Lcom/narvii/item/detail/ItemDetailFragment;)Z
    .locals 0

    .line 127
    invoke-virtual {p0}, Lcom/narvii/detail/FeedDetailFragment;->checkCommunityJoined()Z

    move-result p0

    return p0
.end method

.method static synthetic access$2000(Lcom/narvii/item/detail/ItemDetailFragment;)Z
    .locals 0

    .line 127
    invoke-virtual {p0}, Lcom/narvii/detail/FeedDetailFragment;->isMeAccessibleToThisPost()Z

    move-result p0

    return p0
.end method

.method static synthetic access$2100(Lcom/narvii/item/detail/ItemDetailFragment;)Z
    .locals 0

    .line 127
    invoke-virtual {p0}, Lcom/narvii/detail/FeedDetailFragment;->isMeAccessibleToThisPost()Z

    move-result p0

    return p0
.end method

.method static synthetic access$2200(Lcom/narvii/item/detail/ItemDetailFragment;)Z
    .locals 0

    .line 127
    invoke-virtual {p0}, Lcom/narvii/detail/FeedDetailFragment;->isMeAccessibleToThisPost()Z

    move-result p0

    return p0
.end method

.method static synthetic access$2300(Lcom/narvii/item/detail/ItemDetailFragment;)Z
    .locals 0

    .line 127
    iget-boolean p0, p0, Lcom/narvii/detail/FeedDetailFragment;->fromHeadline:Z

    return p0
.end method

.method static synthetic access$2400(Lcom/narvii/item/detail/ItemDetailFragment;)Z
    .locals 0

    .line 127
    invoke-virtual {p0}, Lcom/narvii/detail/FeedDetailFragment;->isMeAccessibleToThisPost()Z

    move-result p0

    return p0
.end method

.method static synthetic access$2500(Lcom/narvii/item/detail/ItemDetailFragment;)Lcom/narvii/item/detail/HeaderLayout;
    .locals 0

    .line 127
    iget-object p0, p0, Lcom/narvii/item/detail/ItemDetailFragment;->headerLayout:Lcom/narvii/item/detail/HeaderLayout;

    return-object p0
.end method

.method static synthetic access$2600(Lcom/narvii/item/detail/ItemDetailFragment;)Lcom/narvii/feed/FeedContinuousViewer$ContinuousLoaderListener;
    .locals 0

    .line 127
    iget-object p0, p0, Lcom/narvii/detail/FeedDetailFragment;->continuousLoaderListener:Lcom/narvii/feed/FeedContinuousViewer$ContinuousLoaderListener;

    return-object p0
.end method

.method static synthetic access$2700(Lcom/narvii/item/detail/ItemDetailFragment;)Lcom/narvii/feed/FeedContinuousViewer$ContinuousLoaderListener;
    .locals 0

    .line 127
    iget-object p0, p0, Lcom/narvii/detail/FeedDetailFragment;->continuousLoaderListener:Lcom/narvii/feed/FeedContinuousViewer$ContinuousLoaderListener;

    return-object p0
.end method

.method static synthetic access$2800(Lcom/narvii/item/detail/ItemDetailFragment;)Lcom/narvii/feed/FeedContinuousViewer$ContinuousLoaderListener;
    .locals 0

    .line 127
    iget-object p0, p0, Lcom/narvii/detail/FeedDetailFragment;->continuousLoaderListener:Lcom/narvii/feed/FeedContinuousViewer$ContinuousLoaderListener;

    return-object p0
.end method

.method static synthetic access$2900(Lcom/narvii/item/detail/ItemDetailFragment;)Lcom/narvii/feed/FeedContinuousViewer$ContinuousLoaderListener;
    .locals 0

    .line 127
    iget-object p0, p0, Lcom/narvii/detail/FeedDetailFragment;->continuousLoaderListener:Lcom/narvii/feed/FeedContinuousViewer$ContinuousLoaderListener;

    return-object p0
.end method

.method static synthetic access$300(Lcom/narvii/item/detail/ItemDetailFragment;)Lcom/narvii/feed/FeedContinuousViewer;
    .locals 0

    .line 127
    iget-object p0, p0, Lcom/narvii/detail/FeedDetailFragment;->continuousLoader:Lcom/narvii/feed/FeedContinuousViewer;

    return-object p0
.end method

.method static synthetic access$3000(Lcom/narvii/item/detail/ItemDetailFragment;)Lcom/narvii/feed/FeedContinuousViewer;
    .locals 0

    .line 127
    iget-object p0, p0, Lcom/narvii/detail/FeedDetailFragment;->continuousLoader:Lcom/narvii/feed/FeedContinuousViewer;

    return-object p0
.end method

.method static synthetic access$3100(Lcom/narvii/item/detail/ItemDetailFragment;)Lcom/narvii/feed/FeedContinuousViewer;
    .locals 0

    .line 127
    iget-object p0, p0, Lcom/narvii/detail/FeedDetailFragment;->continuousLoader:Lcom/narvii/feed/FeedContinuousViewer;

    return-object p0
.end method

.method static synthetic access$3200(Lcom/narvii/item/detail/ItemDetailFragment;)Z
    .locals 0

    .line 127
    invoke-virtual {p0}, Lcom/narvii/detail/FeedDetailFragment;->isMeAccessibleToThisPost()Z

    move-result p0

    return p0
.end method

.method static synthetic access$3300(Lcom/narvii/item/detail/ItemDetailFragment;)Z
    .locals 0

    .line 127
    invoke-virtual {p0}, Lcom/narvii/detail/FeedDetailFragment;->isMeAccessibleToThisPost()Z

    move-result p0

    return p0
.end method

.method static synthetic access$3400(Lcom/narvii/item/detail/ItemDetailFragment;)Z
    .locals 0

    .line 127
    invoke-virtual {p0}, Lcom/narvii/detail/FeedDetailFragment;->isMeAccessibleToThisPost()Z

    move-result p0

    return p0
.end method

.method static synthetic access$3500(Lcom/narvii/item/detail/ItemDetailFragment;Landroid/view/View;II)V
    .locals 0

    .line 127
    invoke-virtual {p0, p1, p2, p3}, Lcom/narvii/detail/DetailFragment;->setTextColor(Landroid/view/View;II)V

    return-void
.end method

.method static synthetic access$3600(Lcom/narvii/item/detail/ItemDetailFragment;)Z
    .locals 0

    .line 127
    invoke-virtual {p0}, Lcom/narvii/detail/FeedDetailFragment;->isMeAccessibleToThisPost()Z

    move-result p0

    return p0
.end method

.method static synthetic access$3700(Lcom/narvii/item/detail/ItemDetailFragment;)Lcom/narvii/item/detail/ItemDetailFragment$RelatedBlogHeaderAdapter;
    .locals 0

    .line 127
    iget-object p0, p0, Lcom/narvii/item/detail/ItemDetailFragment;->relatedBlogHeaderAdapter:Lcom/narvii/item/detail/ItemDetailFragment$RelatedBlogHeaderAdapter;

    return-object p0
.end method

.method static synthetic access$400(Lcom/narvii/item/detail/ItemDetailFragment;Lcom/narvii/model/Feed;)V
    .locals 0

    .line 127
    invoke-virtual {p0, p1}, Lcom/narvii/detail/FeedDetailFragment;->updateteBottomLayout(Lcom/narvii/model/Feed;)V

    return-void
.end method

.method static synthetic access$500(Lcom/narvii/item/detail/ItemDetailFragment;)V
    .locals 0

    .line 127
    invoke-virtual {p0}, Lcom/narvii/detail/FeedDetailFragment;->tippingTooltipDone()V

    return-void
.end method

.method static synthetic access$600(Lcom/narvii/item/detail/ItemDetailFragment;)Z
    .locals 0

    .line 127
    iget-boolean p0, p0, Lcom/narvii/detail/FeedDetailFragment;->notJoined:Z

    return p0
.end method

.method static synthetic access$700(Lcom/narvii/item/detail/ItemDetailFragment;)V
    .locals 0

    .line 127
    invoke-virtual {p0}, Lcom/narvii/detail/FeedDetailFragment;->tryReportActiveStatus()V

    return-void
.end method

.method static synthetic access$800(Lcom/narvii/item/detail/ItemDetailFragment;Lcom/narvii/model/Feed;)V
    .locals 0

    .line 127
    invoke-virtual {p0, p1}, Lcom/narvii/detail/FeedDetailFragment;->sendFeedUpdateGlobalNotification(Lcom/narvii/model/Feed;)V

    return-void
.end method

.method static synthetic access$902(Lcom/narvii/item/detail/ItemDetailFragment;Z)Z
    .locals 0

    .line 127
    iput-boolean p1, p0, Lcom/narvii/detail/DetailFragment;->_hasBackground:Z

    return p1
.end method

.method private getHeaderVoteLayoutHeight()I
    .locals 2

    .line 464
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    const/high16 v1, 0x42700000    # 60.0f

    invoke-static {v0, v1}, Lcom/narvii/util/Utils;->dpToPx(Landroid/content/Context;F)F

    move-result v0

    float-to-int v0, v0

    return v0
.end method

.method private getOverlayHeaderHeight()I
    .locals 2

    .line 468
    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    invoke-direct {p0}, Lcom/narvii/item/detail/ItemDetailFragment;->getHeaderVoteLayoutHeight()I

    move-result v1

    add-int/2addr v0, v1

    iget v1, p0, Lcom/narvii/item/detail/ItemDetailFragment;->keywordsHeight:I

    add-int/2addr v0, v1

    return v0
.end method

.method private updateBackground()V
    .locals 14

    .line 601
    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getView()Landroid/view/View;

    move-result-object v0

    .line 603
    iget-object v1, p0, Lcom/narvii/detail/DetailFragment;->backgroundView:Lcom/narvii/widget/FullscreenBackgroundView;

    if-eqz v1, :cond_e

    iget-object v1, p0, Lcom/narvii/item/detail/ItemDetailFragment;->itemAdapter:Lcom/narvii/item/detail/ItemDetailFragment$Adapter;

    if-nez v1, :cond_0

    goto/16 :goto_5

    .line 606
    :cond_0
    invoke-virtual {v1}, Lcom/narvii/detail/DetailAdapter;->getObject()Lcom/narvii/model/NVObject;

    move-result-object v1

    check-cast v1, Lcom/narvii/model/Item;

    if-nez v1, :cond_1

    return-void

    .line 610
    :cond_1
    iget-object v2, p0, Lcom/narvii/detail/DetailFragment;->backgroundView:Lcom/narvii/widget/FullscreenBackgroundView;

    const/4 v3, 0x1

    new-array v4, v3, [Lcom/narvii/image/BackgroundSource;

    const/4 v5, 0x0

    aput-object v1, v4, v5

    invoke-virtual {v2, v4}, Lcom/narvii/widget/FullscreenBackgroundView;->setBackgroundSource([Lcom/narvii/image/BackgroundSource;)V

    .line 612
    invoke-virtual {p0}, Lcom/narvii/detail/DetailFragment;->isBackgroundColorDark()Z

    move-result v2

    invoke-virtual {p0, v2}, Lcom/narvii/list/NVListFragment;->setDarkTheme(Z)V

    .line 613
    invoke-virtual {v1}, Lcom/narvii/model/Feed;->getBackgroundMedia()Lcom/narvii/model/Media;

    move-result-object v2

    if-nez v2, :cond_2

    invoke-virtual {v1}, Lcom/narvii/model/Feed;->getBackgroundColor()I

    move-result v2

    goto :goto_0

    :cond_2
    const/4 v2, 0x0

    :goto_0
    invoke-virtual {p0, v2}, Lcom/narvii/detail/FeedDetailFragment;->updateSBB(I)V

    .line 615
    iget-object v2, p0, Lcom/narvii/item/detail/ItemDetailFragment;->divAdapter:Lcom/narvii/list/DividerAdapter;

    invoke-virtual {p0}, Lcom/narvii/detail/DetailFragment;->isBackgroundColorDark()Z

    move-result v4

    invoke-virtual {v2, v4}, Lcom/narvii/list/NVAdapter;->setDarkTheme(Z)V

    .line 617
    iget-object v2, p0, Lcom/narvii/item/detail/ItemDetailFragment;->headerLayout:Lcom/narvii/item/detail/HeaderLayout;

    if-eqz v2, :cond_4

    .line 618
    invoke-virtual {v1}, Lcom/narvii/model/Feed;->getBackgroundColor()I

    move-result v2

    if-eqz v2, :cond_3

    goto :goto_1

    :cond_3
    const/4 v3, 0x0

    .line 619
    :goto_1
    iget-object v2, p0, Lcom/narvii/item/detail/ItemDetailFragment;->headerLayout:Lcom/narvii/item/detail/HeaderLayout;

    invoke-virtual {p0}, Lcom/narvii/detail/DetailFragment;->isBackgroundColorDark()Z

    move-result v4

    invoke-virtual {v2, v4, v3}, Lcom/narvii/item/detail/HeaderLayout;->setDarkTheme(ZZ)V

    :cond_4
    if-eqz v0, :cond_7

    .line 624
    invoke-virtual {v1}, Lcom/narvii/model/Feed;->getBackgroundColor()I

    move-result v1

    const v2, 0x7f0904dd

    .line 625
    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 626
    new-instance v3, Landroid/graphics/drawable/ShapeDrawable;

    new-instance v4, Landroid/graphics/drawable/shapes/RectShape;

    invoke-direct {v4}, Landroid/graphics/drawable/shapes/RectShape;-><init>()V

    invoke-direct {v3, v4}, Landroid/graphics/drawable/ShapeDrawable;-><init>(Landroid/graphics/drawable/shapes/Shape;)V

    .line 627
    invoke-virtual {p0}, Lcom/narvii/detail/DetailFragment;->hasBackground()Z

    move-result v4

    if-nez v4, :cond_5

    const/4 v1, -0x1

    const/4 v12, -0x1

    goto :goto_3

    :cond_5
    if-eqz v1, :cond_6

    goto :goto_2

    :cond_6
    const/high16 v1, -0x1000000

    const v4, 0x3e4ccccd    # 0.2f

    invoke-static {v1, v4}, Lcom/narvii/util/Utils;->getColor(IF)I

    move-result v1

    :goto_2
    move v12, v1

    .line 628
    :goto_3
    invoke-virtual {v3}, Landroid/graphics/drawable/ShapeDrawable;->getPaint()Landroid/graphics/Paint;

    move-result-object v1

    new-instance v4, Landroid/graphics/LinearGradient;

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v6

    iget v6, v6, Landroid/util/DisplayMetrics;->widthPixels:I

    div-int/lit8 v6, v6, 0x4

    int-to-float v10, v6

    const v6, 0xffffff

    sget-object v13, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    move-object v6, v4

    const/4 v11, 0x0

    invoke-direct/range {v6 .. v13}, Landroid/graphics/LinearGradient;-><init>(FFFFIILandroid/graphics/Shader$TileMode;)V

    invoke-virtual {v1, v4}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    if-eqz v2, :cond_7

    .line 630
    invoke-virtual {v2, v3}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_7
    const v1, -0xcfcfd0

    const v2, 0x7f090619

    .line 634
    invoke-virtual {p0, v0, v2, v1}, Lcom/narvii/detail/DetailFragment;->setTextColor(Landroid/view/View;II)V

    .line 635
    invoke-static {v0, v2}, Lcom/narvii/util/ViewUtils;->getTextView(Landroid/view/View;I)Landroid/widget/TextView;

    move-result-object v0

    if-eqz v0, :cond_9

    const/high16 v1, 0x40400000    # 3.0f

    const/4 v2, 0x0

    const/high16 v3, 0x40000000    # 2.0f

    .line 637
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->isDarkTheme()Z

    move-result v4

    if-nez v4, :cond_8

    goto :goto_4

    :cond_8
    const/high16 v5, -0x34000000    # -3.3554432E7f

    :goto_4
    invoke-virtual {v0, v1, v2, v3, v5}, Landroid/widget/TextView;->setShadowLayer(FFFI)V

    .line 639
    :cond_9
    iget-object v0, p0, Lcom/narvii/item/detail/ItemDetailFragment;->commentAdapter:Lcom/narvii/item/detail/ItemDetailFragment$CommentAdapter;

    if-eqz v0, :cond_a

    .line 640
    invoke-virtual {p0}, Lcom/narvii/detail/DetailFragment;->isBackgroundColorDark()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/narvii/list/NVAdapter;->setDarkTheme(Z)V

    .line 643
    :cond_a
    iget-object v0, p0, Lcom/narvii/item/detail/ItemDetailFragment;->tagRelatedAdapter:Lcom/narvii/item/detail/ItemDetailFragment$TagRelatedAdapter;

    if-eqz v0, :cond_b

    .line 644
    invoke-virtual {p0}, Lcom/narvii/detail/DetailFragment;->isBackgroundColorDark()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/narvii/list/NVAdapter;->setDarkTheme(Z)V

    .line 647
    :cond_b
    iget-object v0, p0, Lcom/narvii/item/detail/ItemDetailFragment;->itemAdapter:Lcom/narvii/item/detail/ItemDetailFragment$Adapter;

    if-eqz v0, :cond_c

    .line 648
    invoke-virtual {p0}, Lcom/narvii/detail/DetailFragment;->isBackgroundColorDark()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/narvii/list/NVAdapter;->setDarkTheme(Z)V

    .line 651
    :cond_c
    iget-object v0, p0, Lcom/narvii/item/detail/ItemDetailFragment;->relatedBlogHeaderAdapter:Lcom/narvii/item/detail/ItemDetailFragment$RelatedBlogHeaderAdapter;

    if-eqz v0, :cond_d

    .line 652
    invoke-virtual {p0}, Lcom/narvii/detail/DetailFragment;->isBackgroundColorDark()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/narvii/list/NVAdapter;->setDarkTheme(Z)V

    .line 655
    :cond_d
    iget-object v0, p0, Lcom/narvii/item/detail/ItemDetailFragment;->mergeAdapter:Lcom/narvii/list/MergeAdapter;

    if-eqz v0, :cond_e

    .line 656
    invoke-virtual {v0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    :cond_e
    :goto_5
    return-void
.end method

.method private updateHeader()V
    .locals 5

    .line 473
    iget-object v0, p0, Lcom/narvii/item/detail/ItemDetailFragment;->itemAdapter:Lcom/narvii/item/detail/ItemDetailFragment$Adapter;

    invoke-virtual {v0}, Lcom/narvii/detail/DetailAdapter;->getObject()Lcom/narvii/model/NVObject;

    move-result-object v0

    check-cast v0, Lcom/narvii/model/Item;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    .line 474
    new-instance v3, Lcom/narvii/util/FilterHelper;

    invoke-direct {v3, p0}, Lcom/narvii/util/FilterHelper;-><init>(Lcom/narvii/app/NVContext;)V

    invoke-virtual {v3}, Lcom/narvii/util/FilterHelper;->keepForLeaderAndCurator()Lcom/narvii/util/FilterHelper;

    move-result-object v3

    invoke-virtual {v3, v0}, Lcom/narvii/util/FilterHelper;->isAccessible(Lcom/narvii/model/NVObject;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v3, 0x1

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    :goto_0
    if-eqz v0, :cond_3

    if-nez v3, :cond_1

    goto/16 :goto_1

    .line 479
    :cond_1
    iget-object v3, p0, Lcom/narvii/item/detail/ItemDetailFragment;->header:Lcom/narvii/list/overlay/OverlayLayout;

    invoke-virtual {v3, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 481
    invoke-direct {p0}, Lcom/narvii/item/detail/ItemDetailFragment;->getOverlayHeaderHeight()I

    move-result v2

    .line 482
    invoke-direct {p0}, Lcom/narvii/item/detail/ItemDetailFragment;->updateHeaderPlaceHolder()V

    .line 483
    iget-object v3, p0, Lcom/narvii/item/detail/ItemDetailFragment;->header:Lcom/narvii/list/overlay/OverlayLayout;

    const v4, 0x7f0b0143

    invoke-virtual {v3, v4, v2}, Lcom/narvii/list/overlay/OverlayLayout;->setLayout(II)V

    .line 484
    iget-object v3, p0, Lcom/narvii/item/detail/ItemDetailFragment;->header:Lcom/narvii/list/overlay/OverlayLayout;

    const v4, 0x7f0905e7

    invoke-virtual {v3, v4}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/narvii/item/detail/HeaderLayout;

    iput-object v3, p0, Lcom/narvii/item/detail/ItemDetailFragment;->headerLayout:Lcom/narvii/item/detail/HeaderLayout;

    .line 485
    iget-boolean v3, p0, Lcom/narvii/detail/FeedDetailFragment;->fromHeadline:Z

    if-eqz v3, :cond_2

    .line 486
    iget-object v3, p0, Lcom/narvii/item/detail/ItemDetailFragment;->headerLayout:Lcom/narvii/item/detail/HeaderLayout;

    invoke-virtual {v3}, Lcom/narvii/item/detail/HeaderLayout;->removeActionBar2()V

    .line 488
    :cond_2
    iget-object v3, p0, Lcom/narvii/item/detail/ItemDetailFragment;->headerLayout:Lcom/narvii/item/detail/HeaderLayout;

    iget-boolean v4, p0, Lcom/narvii/detail/DetailFragment;->preview:Z

    invoke-virtual {v3, v4}, Lcom/narvii/item/detail/HeaderLayout;->setPreview(Z)V

    .line 489
    iget-object v3, p0, Lcom/narvii/item/detail/ItemDetailFragment;->headerLayout:Lcom/narvii/item/detail/HeaderLayout;

    invoke-virtual {p0}, Lcom/narvii/detail/FeedDetailFragment;->isMeAccessibleToThisPost()Z

    move-result v4

    xor-int/2addr v1, v4

    invoke-virtual {v3, v1}, Lcom/narvii/item/detail/HeaderLayout;->setIsHiddenPost(Z)V

    .line 490
    iget-object v1, p0, Lcom/narvii/item/detail/ItemDetailFragment;->headerLayout:Lcom/narvii/item/detail/HeaderLayout;

    invoke-virtual {v1, v0}, Lcom/narvii/item/detail/HeaderLayout;->setItem(Lcom/narvii/model/Item;)V

    .line 491
    iget-object v1, p0, Lcom/narvii/item/detail/ItemDetailFragment;->headerLayout:Lcom/narvii/item/detail/HeaderLayout;

    invoke-virtual {v1, v2}, Lcom/narvii/item/detail/HeaderLayout;->setHeight1(I)V

    .line 492
    iget-object v1, p0, Lcom/narvii/item/detail/ItemDetailFragment;->headerLayout:Lcom/narvii/item/detail/HeaderLayout;

    iget-object v2, p0, Lcom/narvii/item/detail/ItemDetailFragment;->headerClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v2}, Lcom/narvii/item/detail/HeaderLayout;->setHeaderClickListener(Landroid/view/View$OnClickListener;)V

    .line 493
    iget-object v1, p0, Lcom/narvii/item/detail/ItemDetailFragment;->headerLayout:Lcom/narvii/item/detail/HeaderLayout;

    iget-object v2, p0, Lcom/narvii/item/detail/ItemDetailFragment;->longClickVote:Landroid/view/View$OnLongClickListener;

    invoke-virtual {v1, v2}, Lcom/narvii/item/detail/HeaderLayout;->setLongClickVoteListener(Landroid/view/View$OnLongClickListener;)V

    .line 495
    iget-object v1, p0, Lcom/narvii/item/detail/ItemDetailFragment;->headerLayout:Lcom/narvii/item/detail/HeaderLayout;

    iget-object v1, v1, Lcom/narvii/item/detail/HeaderLayout;->gradient:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    .line 496
    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    iget v2, v2, Landroid/util/DisplayMetrics;->widthPixels:I

    div-int/lit8 v2, v2, 0x4

    invoke-direct {p0}, Lcom/narvii/item/detail/ItemDetailFragment;->getHeaderVoteLayoutHeight()I

    move-result v3

    add-int/2addr v2, v3

    iget v3, p0, Lcom/narvii/item/detail/ItemDetailFragment;->keywordsHeight:I

    add-int/2addr v2, v3

    iput v2, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 497
    iget-object v2, p0, Lcom/narvii/item/detail/ItemDetailFragment;->headerLayout:Lcom/narvii/item/detail/HeaderLayout;

    iget-object v2, v2, Lcom/narvii/item/detail/HeaderLayout;->gradient:Landroid/view/View;

    invoke-virtual {v2, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 499
    iget-object v1, p0, Lcom/narvii/item/detail/ItemDetailFragment;->headerLayout:Lcom/narvii/item/detail/HeaderLayout;

    iget-object v1, v1, Lcom/narvii/item/detail/HeaderLayout;->keywordsView:Lcom/narvii/widget/KeywordsView;

    new-instance v2, Lcom/narvii/item/detail/ItemDetailFragment$5;

    invoke-direct {v2, p0}, Lcom/narvii/item/detail/ItemDetailFragment$5;-><init>(Lcom/narvii/item/detail/ItemDetailFragment;)V

    invoke-virtual {v1, v2}, Lcom/narvii/widget/KeywordsView;->setOnSizeChangedListener(Lcom/narvii/widget/KeywordsView$OnSizeChangedListener;)V

    .line 506
    invoke-virtual {p0, v0}, Lcom/narvii/detail/FeedDetailFragment;->updateteBottomLayout(Lcom/narvii/model/Feed;)V

    return-void

    .line 476
    :cond_3
    :goto_1
    iget-object v0, p0, Lcom/narvii/item/detail/ItemDetailFragment;->header:Lcom/narvii/list/overlay/OverlayLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    return-void
.end method

.method private updateHeaderPlaceHolder()V
    .locals 2

    .line 554
    iget-object v0, p0, Lcom/narvii/item/detail/ItemDetailFragment;->headerPlaceHolder:Landroid/view/View;

    if-nez v0, :cond_0

    return-void

    .line 557
    :cond_0
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 558
    invoke-direct {p0}, Lcom/narvii/item/detail/ItemDetailFragment;->getOverlayHeaderHeight()I

    move-result v1

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 559
    iget-object v1, p0, Lcom/narvii/item/detail/ItemDetailFragment;->headerPlaceHolder:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method


# virtual methods
.method addToCategory(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/narvii/model/ItemCategory;",
            ">;)V"
        }
    .end annotation

    .line 1748
    iget-object v0, p0, Lcom/narvii/item/detail/ItemDetailFragment;->itemHelper:Lcom/narvii/item/ItemHelper;

    invoke-virtual {p0}, Lcom/narvii/detail/FeedDetailFragment;->getFeed()Lcom/narvii/model/Feed;

    move-result-object v1

    check-cast v1, Lcom/narvii/model/Item;

    invoke-virtual {v1}, Lcom/narvii/model/Item;->id()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/narvii/item/detail/ItemDetailFragment;->callback:Lcom/narvii/util/Callback;

    invoke-virtual {v0, p1, v1, v2}, Lcom/narvii/item/ItemHelper;->addToCategory(Ljava/util/List;Ljava/lang/String;Lcom/narvii/util/Callback;)V

    return-void
.end method

.method addToMyFavorites()V
    .locals 3

    .line 1744
    iget-object v0, p0, Lcom/narvii/item/detail/ItemDetailFragment;->itemHelper:Lcom/narvii/item/ItemHelper;

    invoke-virtual {p0}, Lcom/narvii/detail/FeedDetailFragment;->getFeed()Lcom/narvii/model/Feed;

    move-result-object v1

    check-cast v1, Lcom/narvii/model/Item;

    invoke-virtual {v1}, Lcom/narvii/model/Item;->id()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/narvii/item/detail/ItemDetailFragment;->callback:Lcom/narvii/util/Callback;

    invoke-virtual {v0, v1, v2}, Lcom/narvii/item/ItemHelper;->addToMyFavorites(Ljava/lang/String;Lcom/narvii/util/Callback;)V

    return-void
.end method

.method protected bookmark(Ljava/lang/String;)V
    .locals 2

    .line 1798
    invoke-super {p0, p1}, Lcom/narvii/detail/FeedDetailFragment;->bookmark(Ljava/lang/String;)V

    .line 1799
    new-instance v0, Lcom/narvii/feed/FeedHelper;

    invoke-direct {v0, p0}, Lcom/narvii/feed/FeedHelper;-><init>(Lcom/narvii/app/NVContext;)V

    invoke-virtual {v0, p1}, Lcom/narvii/feed/FeedHelper;->source(Ljava/lang/String;)Lcom/narvii/feed/FeedHelper;

    move-result-object p1

    invoke-virtual {p0}, Lcom/narvii/detail/FeedDetailFragment;->getFeed()Lcom/narvii/model/Feed;

    move-result-object v0

    new-instance v1, Lcom/narvii/item/detail/ItemDetailFragment$12;

    invoke-direct {v1, p0}, Lcom/narvii/item/detail/ItemDetailFragment$12;-><init>(Lcom/narvii/item/detail/ItemDetailFragment;)V

    invoke-virtual {p1, v0, v1}, Lcom/narvii/feed/FeedHelper;->bookmark(Lcom/narvii/model/Feed;Lcom/narvii/util/Callback;)V

    return-void
.end method

.method protected bottomComment()V
    .locals 2

    .line 1815
    iget-object v0, p0, Lcom/narvii/item/detail/ItemDetailFragment;->itemAdapter:Lcom/narvii/item/detail/ItemDetailFragment$Adapter;

    if-eqz v0, :cond_0

    .line 1816
    iget-object v0, p0, Lcom/narvii/detail/FeedDetailFragment;->blockPass:Lcom/narvii/util/statistics/TmpValue;

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/narvii/util/statistics/TmpValue;->set(Ljava/lang/Object;)V

    .line 1817
    iget-object v0, p0, Lcom/narvii/item/detail/ItemDetailFragment;->itemAdapter:Lcom/narvii/item/detail/ItemDetailFragment$Adapter;

    invoke-virtual {v0}, Lcom/narvii/item/detail/ItemDetailFragment$Adapter;->commentNew()V

    :cond_0
    return-void
.end method

.method protected completePageViewEvent(Lcom/narvii/logging/LogEvent$Builder;Z)V
    .locals 1

    .line 312
    invoke-super {p0, p1, p2}, Lcom/narvii/app/NVFragment;->completePageViewEvent(Lcom/narvii/logging/LogEvent$Builder;Z)V

    .line 313
    invoke-virtual {p0}, Lcom/narvii/item/detail/ItemDetailFragment;->getFeedDetailAdapter()Lcom/narvii/detail/FeedDetailAdapter;

    move-result-object p2

    if-eqz p2, :cond_0

    .line 314
    invoke-virtual {p2}, Lcom/narvii/detail/DetailAdapter;->getObject()Lcom/narvii/model/NVObject;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 315
    invoke-virtual {p2}, Lcom/narvii/detail/DetailAdapter;->getObject()Lcom/narvii/model/NVObject;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/narvii/logging/LogEvent$Builder;->object(Lcom/narvii/model/NVObject;)Lcom/narvii/logging/LogEvent$Builder;

    goto :goto_0

    .line 317
    :cond_0
    invoke-virtual {p0}, Lcom/narvii/detail/DetailFragment;->id()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/narvii/logging/LogEvent$Builder;->objectId(Ljava/lang/String;)Lcom/narvii/logging/LogEvent$Builder;

    move-result-object p1

    sget-object p2, Lcom/narvii/logging/ObjectType;->item:Lcom/narvii/logging/ObjectType;

    invoke-virtual {p1, p2}, Lcom/narvii/logging/LogEvent$Builder;->objectType(Lcom/narvii/logging/ObjectType;)Lcom/narvii/logging/LogEvent$Builder;

    :goto_0
    return-void
.end method

.method protected createAdapter(Landroid/os/Bundle;)Landroid/widget/ListAdapter;
    .locals 4

    .line 413
    new-instance p1, Lcom/narvii/item/detail/ItemDetailFragment$Adapter;

    invoke-direct {p1, p0}, Lcom/narvii/item/detail/ItemDetailFragment$Adapter;-><init>(Lcom/narvii/item/detail/ItemDetailFragment;)V

    iput-object p1, p0, Lcom/narvii/item/detail/ItemDetailFragment;->itemAdapter:Lcom/narvii/item/detail/ItemDetailFragment$Adapter;

    .line 414
    new-instance p1, Lcom/narvii/item/detail/ItemDetailFragment$CommentAdapter;

    invoke-direct {p1, p0}, Lcom/narvii/item/detail/ItemDetailFragment$CommentAdapter;-><init>(Lcom/narvii/item/detail/ItemDetailFragment;)V

    iput-object p1, p0, Lcom/narvii/item/detail/ItemDetailFragment;->commentAdapter:Lcom/narvii/item/detail/ItemDetailFragment$CommentAdapter;

    .line 415
    new-instance p1, Lcom/narvii/item/detail/ItemDetailFragment$TagRelatedAdapter;

    invoke-direct {p1, p0}, Lcom/narvii/item/detail/ItemDetailFragment$TagRelatedAdapter;-><init>(Lcom/narvii/item/detail/ItemDetailFragment;)V

    iput-object p1, p0, Lcom/narvii/item/detail/ItemDetailFragment;->tagRelatedAdapter:Lcom/narvii/item/detail/ItemDetailFragment$TagRelatedAdapter;

    .line 416
    new-instance p1, Lcom/narvii/item/detail/ItemDetailFragment$4;

    invoke-direct {p1, p0, p0}, Lcom/narvii/item/detail/ItemDetailFragment$4;-><init>(Lcom/narvii/item/detail/ItemDetailFragment;Lcom/narvii/app/NVContext;)V

    iput-object p1, p0, Lcom/narvii/item/detail/ItemDetailFragment;->mergeAdapter:Lcom/narvii/list/MergeAdapter;

    .line 435
    iget-object p1, p0, Lcom/narvii/item/detail/ItemDetailFragment;->mergeAdapter:Lcom/narvii/list/MergeAdapter;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/narvii/list/MergeAdapter;->setFlags(I)V

    .line 436
    iget-object p1, p0, Lcom/narvii/item/detail/ItemDetailFragment;->mergeAdapter:Lcom/narvii/list/MergeAdapter;

    iget-object v1, p0, Lcom/narvii/item/detail/ItemDetailFragment;->itemAdapter:Lcom/narvii/item/detail/ItemDetailFragment$Adapter;

    invoke-virtual {p1, v1}, Lcom/narvii/list/MergeAdapter;->addAdapter(Landroid/widget/ListAdapter;)V

    .line 438
    new-instance p1, Lcom/narvii/item/detail/ItemDetailFragment$RelatedBlogHeaderAdapter;

    invoke-direct {p1, p0, p0}, Lcom/narvii/item/detail/ItemDetailFragment$RelatedBlogHeaderAdapter;-><init>(Lcom/narvii/item/detail/ItemDetailFragment;Lcom/narvii/app/NVContext;)V

    iput-object p1, p0, Lcom/narvii/item/detail/ItemDetailFragment;->relatedBlogHeaderAdapter:Lcom/narvii/item/detail/ItemDetailFragment$RelatedBlogHeaderAdapter;

    .line 439
    new-instance p1, Lcom/narvii/item/detail/ItemDetailFragment$WriteRelatedBlogAdapter;

    invoke-direct {p1, p0}, Lcom/narvii/item/detail/ItemDetailFragment$WriteRelatedBlogAdapter;-><init>(Lcom/narvii/item/detail/ItemDetailFragment;)V

    .line 440
    new-instance v1, Lcom/narvii/list/DividerAdapter;

    invoke-direct {v1, p0}, Lcom/narvii/list/DividerAdapter;-><init>(Lcom/narvii/app/NVContext;)V

    iput-object v1, p0, Lcom/narvii/item/detail/ItemDetailFragment;->divAdapter:Lcom/narvii/list/DividerAdapter;

    .line 441
    iget-object v1, p0, Lcom/narvii/item/detail/ItemDetailFragment;->divAdapter:Lcom/narvii/list/DividerAdapter;

    iget-object v2, p0, Lcom/narvii/item/detail/ItemDetailFragment;->tagRelatedAdapter:Lcom/narvii/item/detail/ItemDetailFragment$TagRelatedAdapter;

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lcom/narvii/list/DividerAdapter;->setAdapter(Landroid/widget/ListAdapter;I)V

    .line 442
    new-instance v1, Lcom/narvii/list/StaticViewAdapter;

    invoke-direct {v1}, Lcom/narvii/list/StaticViewAdapter;-><init>()V

    new-array v0, v0, [I

    const v2, 0x7f0b04b5

    aput v2, v0, v3

    .line 443
    invoke-virtual {v1, v0}, Lcom/narvii/list/StaticViewAdapter;->addLayouts([I)V

    .line 445
    invoke-virtual {p0}, Lcom/narvii/detail/FeedDetailFragment;->newPreview()Z

    move-result v0

    if-nez v0, :cond_0

    .line 446
    iget-object v0, p0, Lcom/narvii/item/detail/ItemDetailFragment;->mergeAdapter:Lcom/narvii/list/MergeAdapter;

    iget-object v2, p0, Lcom/narvii/item/detail/ItemDetailFragment;->commentAdapter:Lcom/narvii/item/detail/ItemDetailFragment$CommentAdapter;

    invoke-virtual {v0, v2}, Lcom/narvii/list/MergeAdapter;->addAdapter(Landroid/widget/ListAdapter;)V

    .line 447
    iget-object v0, p0, Lcom/narvii/item/detail/ItemDetailFragment;->mergeAdapter:Lcom/narvii/list/MergeAdapter;

    new-instance v2, Lcom/narvii/detail/FeedDetailFragment$CommentFooterAdapter;

    invoke-direct {v2, p0, p0}, Lcom/narvii/detail/FeedDetailFragment$CommentFooterAdapter;-><init>(Lcom/narvii/detail/FeedDetailFragment;Lcom/narvii/app/NVContext;)V

    invoke-virtual {v0, v2}, Lcom/narvii/list/MergeAdapter;->addAdapter(Landroid/widget/ListAdapter;)V

    .line 449
    :cond_0
    iget-object v0, p0, Lcom/narvii/item/detail/ItemDetailFragment;->mergeAdapter:Lcom/narvii/list/MergeAdapter;

    iget-object v2, p0, Lcom/narvii/item/detail/ItemDetailFragment;->relatedBlogHeaderAdapter:Lcom/narvii/item/detail/ItemDetailFragment$RelatedBlogHeaderAdapter;

    invoke-virtual {v0, v2}, Lcom/narvii/list/MergeAdapter;->addAdapter(Landroid/widget/ListAdapter;)V

    .line 450
    iget-object v0, p0, Lcom/narvii/item/detail/ItemDetailFragment;->mergeAdapter:Lcom/narvii/list/MergeAdapter;

    invoke-virtual {v0, p1}, Lcom/narvii/list/MergeAdapter;->addAdapter(Landroid/widget/ListAdapter;)V

    .line 451
    invoke-virtual {p0}, Lcom/narvii/detail/FeedDetailFragment;->newPreview()Z

    move-result p1

    if-nez p1, :cond_1

    .line 452
    iget-object p1, p0, Lcom/narvii/item/detail/ItemDetailFragment;->mergeAdapter:Lcom/narvii/list/MergeAdapter;

    iget-object v0, p0, Lcom/narvii/item/detail/ItemDetailFragment;->divAdapter:Lcom/narvii/list/DividerAdapter;

    invoke-virtual {p1, v0}, Lcom/narvii/list/MergeAdapter;->addAdapter(Landroid/widget/ListAdapter;)V

    .line 454
    :cond_1
    iget-object p1, p0, Lcom/narvii/item/detail/ItemDetailFragment;->mergeAdapter:Lcom/narvii/list/MergeAdapter;

    invoke-virtual {p1, v1}, Lcom/narvii/list/MergeAdapter;->addAdapter(Landroid/widget/ListAdapter;)V

    .line 455
    iget-object p1, p0, Lcom/narvii/item/detail/ItemDetailFragment;->mergeAdapter:Lcom/narvii/list/MergeAdapter;

    return-object p1
.end method

.method protected disableOptinAds()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getFeedDetailAdapter()Lcom/narvii/detail/FeedDetailAdapter;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/narvii/detail/FeedDetailAdapter<",
            "Lcom/narvii/model/Item;",
            ">;"
        }
    .end annotation

    .line 460
    iget-object v0, p0, Lcom/narvii/item/detail/ItemDetailFragment;->itemAdapter:Lcom/narvii/item/detail/ItemDetailFragment$Adapter;

    return-object v0
.end method

.method protected getLiveLayerTopic()Ljava/lang/String;
    .locals 1

    const-string/jumbo v0, "users-browsing-item-at"

    return-object v0
.end method

.method public getPageName()Ljava/lang/String;
    .locals 1

    const-string v0, "WikiEntryDetail"

    return-object v0
.end method

.method public getTransferIntent(Landroid/content/Intent;)Landroid/content/Intent;
    .locals 2

    .line 275
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 276
    invoke-virtual {p0, v0}, Lcom/narvii/item/detail/ItemDetailFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    const-string v1, "__savedInstanceState"

    .line 277
    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    .line 278
    invoke-super {p0, p1}, Lcom/narvii/detail/DetailFragment;->getTransferIntent(Landroid/content/Intent;)Landroid/content/Intent;

    move-result-object p1

    return-object p1
.end method

.method protected hoverBelowOverlayPlaceHolder()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public isHover(I)Z
    .locals 3

    .line 587
    iget-object v0, p0, Lcom/narvii/item/detail/ItemDetailFragment;->mergeAdapter:Lcom/narvii/list/MergeAdapter;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 590
    :cond_0
    iget-boolean v2, p0, Lcom/narvii/detail/DetailFragment;->disabled:Z

    if-eqz v2, :cond_1

    return v1

    .line 593
    :cond_1
    invoke-virtual {v0, p1}, Lcom/narvii/list/MergeAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object p1

    sget-object v0, Lcom/narvii/detail/DetailAdapter;->COMMENT_ADD:Lcom/narvii/detail/DetailAdapter$CellType;

    if-ne p1, v0, :cond_2

    const/4 v1, 0x1

    :cond_2
    return v1
.end method

.method protected objectType()I
    .locals 1

    const/4 v0, 0x2

    return v0
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 4

    const/4 v0, -0x1

    const/16 v1, 0x64

    if-ne p1, v1, :cond_0

    if-ne p2, v0, :cond_0

    if-eqz p3, :cond_0

    const-string v1, "categoryList"

    .line 1760
    invoke-virtual {p3, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-class v2, Lcom/narvii/model/ItemCategory;

    invoke-static {v1, v2}, Lcom/narvii/util/JacksonUtils;->readListAs(Ljava/lang/String;Ljava/lang/Class;)Ljava/util/ArrayList;

    move-result-object v1

    .line 1761
    invoke-virtual {p0, v1}, Lcom/narvii/item/detail/ItemDetailFragment;->addToCategory(Ljava/util/List;)V

    :cond_0
    const/4 v1, 0x4

    if-ne p1, v1, :cond_1

    if-ne p2, v0, :cond_1

    if-eqz p3, :cond_1

    .line 1764
    iget-object v1, p0, Lcom/narvii/item/detail/ItemDetailFragment;->itemAdapter:Lcom/narvii/item/detail/ItemDetailFragment$Adapter;

    const-string v2, "contributorList"

    invoke-virtual {p3, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-class v3, Lcom/narvii/item/contributor/Contributor;

    invoke-static {v2, v3}, Lcom/narvii/util/JacksonUtils;->readListAs(Ljava/lang/String;Ljava/lang/Class;)Ljava/util/ArrayList;

    move-result-object v2

    iput-object v2, v1, Lcom/narvii/item/detail/ItemDetailFragment$Adapter;->contributorList:Ljava/util/List;

    .line 1765
    iget-object v1, p0, Lcom/narvii/item/detail/ItemDetailFragment;->itemAdapter:Lcom/narvii/item/detail/ItemDetailFragment$Adapter;

    invoke-virtual {v1}, Lcom/narvii/item/detail/ItemDetailFragment$Adapter;->notifyDataSetChanged()V

    :cond_1
    const/16 v1, 0x8

    if-ne p1, v1, :cond_2

    if-ne p2, v0, :cond_2

    if-eqz p3, :cond_2

    const-string v1, "object"

    .line 1768
    invoke-virtual {p3, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-class v2, Lcom/narvii/model/Item;

    invoke-static {v1, v2}, Lcom/narvii/util/JacksonUtils;->readAs(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/narvii/model/Item;

    .line 1769
    iget-object v2, v1, Lcom/narvii/model/Item;->itemId:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/narvii/detail/FeedDetailFragment;->getFeed()Lcom/narvii/model/Feed;

    move-result-object v3

    check-cast v3, Lcom/narvii/model/Item;

    iget-object v3, v3, Lcom/narvii/model/Item;->itemId:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/narvii/util/Utils;->isEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 1770
    invoke-static {v1}, Lcom/narvii/detail/FeedDetailFragment;->intent(Lcom/narvii/model/Feed;)Landroid/content/Intent;

    move-result-object v1

    .line 1771
    iget-boolean v2, p0, Lcom/narvii/item/detail/ItemDetailFragment;->fromMyCatalog:Z

    const-string v3, "fromMyCatalog"

    invoke-virtual {v1, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1772
    invoke-virtual {p0, v1}, Landroid/support/v4/app/Fragment;->startActivity(Landroid/content/Intent;)V

    .line 1773
    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    const v2, 0x7f010029

    const v3, 0x7f01002a

    invoke-virtual {v1, v2, v3}, Landroid/app/Activity;->overridePendingTransition(II)V

    .line 1774
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->finish()V

    :cond_2
    const/16 v1, 0x6f

    if-ne p1, v1, :cond_3

    if-ne p2, v0, :cond_3

    .line 1778
    iget-object v0, p0, Lcom/narvii/item/detail/ItemDetailFragment;->itemAdapter:Lcom/narvii/item/detail/ItemDetailFragment$Adapter;

    const-string v1, "collectionId"

    invoke-virtual {p3, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/narvii/item/detail/ItemDetailFragment$Adapter;->commentNew(Ljava/lang/String;)V

    .line 1780
    :cond_3
    invoke-super {p0, p1, p2, p3}, Lcom/narvii/app/NVFragment;->onActivityResult(IILandroid/content/Intent;)V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 4

    if-nez p1, :cond_0

    .line 170
    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "__savedInstanceState"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 171
    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getBundleExtra(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object p1

    .line 173
    :cond_0
    invoke-super {p0, p1}, Lcom/narvii/detail/FeedDetailFragment;->onCreate(Landroid/os/Bundle;)V

    .line 174
    new-instance v0, Lcom/narvii/item/ItemHelper;

    invoke-direct {v0, p0}, Lcom/narvii/item/ItemHelper;-><init>(Lcom/narvii/app/NVFragment;)V

    iput-object v0, p0, Lcom/narvii/item/detail/ItemDetailFragment;->itemHelper:Lcom/narvii/item/ItemHelper;

    const-string v0, ""

    .line 175
    invoke-virtual {p0, v0}, Lcom/narvii/app/NVFragment;->setTitle(Ljava/lang/CharSequence;)V

    const-string v0, "fromMyCatalog"

    if-nez p1, :cond_1

    .line 177
    invoke-virtual {p0, v0}, Lcom/narvii/app/NVFragment;->getBooleanParam(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/narvii/item/detail/ItemDetailFragment;->fromMyCatalog:Z

    const/4 v0, 0x1

    goto :goto_0

    .line 179
    :cond_1
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/narvii/item/detail/ItemDetailFragment;->fromMyCatalog:Z

    .line 200
    :goto_0
    new-instance p1, Lcom/narvii/modulization/CommunityConfigHelper;

    invoke-direct {p1, p0}, Lcom/narvii/modulization/CommunityConfigHelper;-><init>(Lcom/narvii/app/NVContext;)V

    iput-object p1, p0, Lcom/narvii/item/detail/ItemDetailFragment;->communityConfigHelper:Lcom/narvii/modulization/CommunityConfigHelper;

    .line 202
    iget-object p1, p0, Lcom/narvii/detail/DetailFragment;->actions:Ljava/util/List;

    sget-object v1, Lcom/narvii/livelayer/LiveLayerService;->ACTION_BROWSING:Ljava/lang/String;

    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string p1, "justCreated"

    .line 210
    const/4 v1, 0x1

    invoke-virtual {p0, p1, v1}, Lcom/narvii/app/NVFragment;->getBooleanParam(Ljava/lang/String;Z)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 211
    new-instance p1, Lcom/narvii/account/push/PushNotificationHelper;

    invoke-direct {p1, p0}, Lcom/narvii/account/push/PushNotificationHelper;-><init>(Lcom/narvii/app/NVContext;)V

    const-string/jumbo v0, "scenario_create_post"

    .line 212
    invoke-virtual {p1, v0}, Lcom/narvii/account/push/PushNotificationHelper;->showRemindDialogIfNeeded(Ljava/lang/String;)Z

    :cond_2
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 4

    .line 283
    invoke-super {p0, p1, p2}, Lcom/narvii/detail/FeedDetailFragment;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    const p2, 0x7f0f02f6

    const/4 v0, 0x0

    .line 284
    invoke-interface {p1, v0, p2, v0, p2}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object p2

    const/4 v1, 0x2

    .line 285
    invoke-interface {p2, v1}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 286
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->isEmbedFragment()Z

    move-result v1

    if-eqz v1, :cond_0

    const v1, 0x7f0b03f7

    .line 287
    invoke-interface {p2, v1}, Landroid/view/MenuItem;->setActionView(I)Landroid/view/MenuItem;

    .line 288
    invoke-interface {p2}, Landroid/view/MenuItem;->getActionView()Landroid/view/View;

    move-result-object v1

    new-instance v2, Lcom/narvii/item/detail/ItemDetailFragment$1;

    invoke-direct {v2, p0, p2}, Lcom/narvii/item/detail/ItemDetailFragment$1;-><init>(Lcom/narvii/item/detail/ItemDetailFragment;Landroid/view/MenuItem;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 294
    invoke-interface {p2}, Landroid/view/MenuItem;->getActionView()Landroid/view/View;

    move-result-object v1

    const v2, 0x7f0903da

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 295
    invoke-interface {p2}, Landroid/view/MenuItem;->getActionView()Landroid/view/View;

    move-result-object p2

    const v1, 0x7f0903db

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p2, v1, v2}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    goto :goto_0

    :cond_0
    const v1, 0x7f08045b

    .line 297
    invoke-interface {p2, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    :goto_0
    const/4 p2, 0x7

    const v1, 0x7f0f0170

    .line 299
    invoke-interface {p1, v0, v1, p2, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v1

    .line 300
    invoke-interface {v1, v0}, Landroid/view/MenuItem;->setShowAsAction(I)V

    const v1, 0x7f0f10fb

    .line 301
    invoke-interface {p1, v0, v1, p2, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object p2

    .line 302
    invoke-interface {p2, v0}, Landroid/view/MenuItem;->setShowAsAction(I)V

    const p2, 0x7f0f01b8

    const/16 v1, 0x8

    .line 303
    invoke-interface {p1, v0, p2, v1, p2}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    const p2, 0x7f0f019b

    .line 304
    invoke-interface {p1, v0, p2, v1, p2}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    const p2, 0x7f0f0bca

    .line 305
    invoke-interface {p1, v0, p2, v1, p2}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    const/16 p2, 0xa

    const v1, 0x7f0f0094

    .line 306
    invoke-interface {p1, v0, v1, p2, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object p1

    .line 307
    invoke-interface {p1, v0}, Landroid/view/MenuItem;->setShowAsAction(I)V

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    const p3, 0x7f0b04bf

    const/4 v0, 0x0

    .line 223
    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method protected onLoginResult(ZLandroid/content/Intent;)V
    .locals 3

    if-eqz p1, :cond_3

    .line 1353
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "vote"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const-string/jumbo v1, "voteFromBottom"

    if-nez v0, :cond_0

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1354
    :cond_0
    iget-object v0, p0, Lcom/narvii/item/detail/ItemDetailFragment;->tagRelatedAdapter:Lcom/narvii/item/detail/ItemDetailFragment$TagRelatedAdapter;

    if-eqz v0, :cond_1

    const-string v0, "__adapterClass"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-class v2, Lcom/narvii/item/detail/ItemDetailFragment$TagRelatedAdapter;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/narvii/util/Utils;->isEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1355
    iget-object v0, p0, Lcom/narvii/item/detail/ItemDetailFragment;->tagRelatedAdapter:Lcom/narvii/item/detail/ItemDetailFragment$TagRelatedAdapter;

    invoke-virtual {v0, p1, p2}, Lcom/narvii/item/detail/ItemDetailFragment$TagRelatedAdapter;->onLoginResult(ZLandroid/content/Intent;)V

    return-void

    :cond_1
    const-string/jumbo p1, "voteValue"

    .line 1359
    invoke-virtual {p2, p1}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v0

    const/4 v2, 0x0

    if-eqz v0, :cond_2

    const/4 v0, 0x4

    .line 1360
    invoke-virtual {p2, p1, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    goto :goto_0

    :cond_2
    move-object p1, v2

    .line 1362
    :goto_0
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    invoke-virtual {p0, p1, v2, p2}, Lcom/narvii/item/detail/ItemDetailFragment;->vote(Ljava/lang/Integer;Lcom/narvii/util/http/ApiService;Z)V

    return-void

    .line 1365
    :cond_3
    invoke-super {p0, p1, p2}, Lcom/narvii/detail/FeedDetailFragment;->onLoginResult(ZLandroid/content/Intent;)V

    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 4

    .line 351
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const/4 v1, 0x1

    const v2, 0x7f0f0bca

    if-ne v0, v2, :cond_0

    .line 352
    new-instance p1, Lcom/narvii/util/dialog/ActionSheetDialog;

    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/narvii/util/dialog/ActionSheetDialog;-><init>(Landroid/content/Context;)V

    const v0, 0x7f0f0309

    const/4 v2, 0x0

    .line 353
    invoke-virtual {p1, v0, v2}, Lcom/narvii/util/dialog/ActionSheetDialog;->addItem(II)V

    const v0, 0x7f0f0ec2

    .line 354
    invoke-virtual {p1, v0, v1}, Lcom/narvii/util/dialog/ActionSheetDialog;->addItem(II)V

    .line 355
    new-instance v0, Lcom/narvii/item/detail/ItemDetailFragment$2;

    invoke-direct {v0, p0}, Lcom/narvii/item/detail/ItemDetailFragment$2;-><init>(Lcom/narvii/item/detail/ItemDetailFragment;)V

    invoke-virtual {p1, v0}, Lcom/narvii/util/dialog/ActionSheetDialog;->setOnClickListener(Landroid/content/DialogInterface$OnClickListener;)V

    .line 372
    invoke-virtual {p1}, Lcom/narvii/util/dialog/ActionSheetDialog;->show()V

    return v1

    .line 375
    :cond_0
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v2, 0x7f0f01b8

    if-ne v0, v2, :cond_1

    .line 376
    invoke-virtual {p0}, Lcom/narvii/item/detail/ItemDetailFragment;->submitOfficialCatalog()V

    return v1

    .line 379
    :cond_1
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v2, 0x7f0f019b

    const v3, 0x7f0f02f6

    if-eq v0, v2, :cond_6

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    if-ne v0, v3, :cond_2

    goto :goto_0

    .line 390
    :cond_2
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v2, 0x7f0f0094

    if-eq v0, v2, :cond_5

    const v2, 0x7f0f0170

    if-eq v0, v2, :cond_4

    const v2, 0x7f0f10fb

    if-eq v0, v2, :cond_3

    .line 408
    invoke-super {p0, p1}, Lcom/narvii/detail/FeedDetailFragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result p1

    return p1

    .line 398
    :cond_3
    new-instance p1, Lcom/narvii/feed/FeedHelper;

    invoke-direct {p1, p0}, Lcom/narvii/feed/FeedHelper;-><init>(Lcom/narvii/app/NVContext;)V

    invoke-virtual {p0}, Lcom/narvii/detail/FeedDetailFragment;->getFeed()Lcom/narvii/model/Feed;

    move-result-object v0

    new-instance v2, Lcom/narvii/item/detail/ItemDetailFragment$3;

    invoke-direct {v2, p0}, Lcom/narvii/item/detail/ItemDetailFragment$3;-><init>(Lcom/narvii/item/detail/ItemDetailFragment;)V

    invoke-virtual {p1, v0, v2}, Lcom/narvii/feed/FeedHelper;->unBookmark(Lcom/narvii/model/Feed;Lcom/narvii/util/Callback;)V

    return v1

    :cond_4
    const-string p1, "Post Detail Menu"

    .line 395
    invoke-virtual {p0, p1}, Lcom/narvii/item/detail/ItemDetailFragment;->bookmark(Ljava/lang/String;)V

    return v1

    .line 392
    :cond_5
    invoke-virtual {p0}, Lcom/narvii/item/detail/ItemDetailFragment;->showModerationDialog()V

    return v1

    .line 381
    :cond_6
    :goto_0
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result p1

    if-ne p1, v3, :cond_7

    const-string/jumbo p1, "titlebar"

    goto :goto_1

    :cond_7
    const-string p1, "moremenu"

    .line 386
    :goto_1
    iget-object v0, p0, Lcom/narvii/item/detail/ItemDetailFragment;->itemHelper:Lcom/narvii/item/ItemHelper;

    iput-object p1, v0, Lcom/narvii/item/ItemHelper;->source:Ljava/lang/String;

    .line 387
    invoke-virtual {p0}, Lcom/narvii/item/detail/ItemDetailFragment;->addToMyFavorites()V

    return v1
.end method

.method public onPause()V
    .locals 1

    .line 261
    iget-object v0, p0, Lcom/narvii/item/detail/ItemDetailFragment;->advancedOptionDialog:Lcom/narvii/poweruser/AdvancedOptionDialog;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 262
    iget-object v0, p0, Lcom/narvii/item/detail/ItemDetailFragment;->advancedOptionDialog:Lcom/narvii/poweruser/AdvancedOptionDialog;

    invoke-virtual {v0}, Lcom/narvii/app/NVDialog;->dismiss()V

    .line 264
    :cond_0
    invoke-super {p0}, Lcom/narvii/list/NVListFragment;->onPause()V

    return-void
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)V
    .locals 12

    .line 323
    invoke-super {p0, p1}, Lcom/narvii/detail/FeedDetailFragment;->onPrepareOptionsMenu(Landroid/view/Menu;)V

    .line 324
    invoke-virtual {p0}, Lcom/narvii/detail/FeedDetailFragment;->isMine()Z

    move-result v0

    .line 325
    invoke-virtual {p0}, Lcom/narvii/detail/FeedDetailFragment;->getFeed()Lcom/narvii/model/Feed;

    move-result-object v1

    check-cast v1, Lcom/narvii/model/Item;

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_0

    .line 326
    invoke-virtual {v1}, Lcom/narvii/model/Item;->status()I

    move-result v4

    const/16 v5, 0x9

    if-eq v4, v5, :cond_0

    const/4 v4, 0x1

    goto :goto_0

    :cond_0
    const/4 v4, 0x0

    .line 327
    :goto_0
    iget-object v5, p0, Lcom/narvii/item/detail/ItemDetailFragment;->itemAdapter:Lcom/narvii/item/detail/ItemDetailFragment$Adapter;

    if-eqz v5, :cond_1

    iget-boolean v5, v5, Lcom/narvii/item/detail/ItemDetailFragment$Adapter;->inMyFavorites:Z

    if-eqz v5, :cond_1

    const/4 v5, 0x1

    goto :goto_1

    :cond_1
    const/4 v5, 0x0

    :goto_1
    const-string v6, "account"

    .line 328
    invoke-virtual {p0, v6}, Lcom/narvii/app/NVFragment;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/narvii/account/AccountService;

    .line 329
    invoke-virtual {v6}, Lcom/narvii/account/AccountService;->getUserProfile()Lcom/narvii/model/User;

    move-result-object v7

    const v8, 0x7f0f0bca

    .line 330
    invoke-interface {p1, v8}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v8

    const/16 v9, 0xfe

    if-eqz v5, :cond_2

    if-eqz v4, :cond_2

    if-eqz v7, :cond_2

    if-nez v0, :cond_2

    iget-object v10, v1, Lcom/narvii/model/Feed;->author:Lcom/narvii/model/User;

    if-eqz v10, :cond_2

    iget v10, v10, Lcom/narvii/model/User;->role:I

    if-ne v10, v9, :cond_2

    const/4 v10, 0x1

    goto :goto_2

    :cond_2
    const/4 v10, 0x0

    :goto_2
    invoke-interface {v8, v10}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 331
    new-instance v8, Lcom/narvii/modulization/CommunityConfigHelper;

    invoke-direct {v8, p0}, Lcom/narvii/modulization/CommunityConfigHelper;-><init>(Lcom/narvii/app/NVContext;)V

    const v10, 0x7f0f01b8

    .line 332
    invoke-interface {p1, v10}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v10

    if-eqz v4, :cond_3

    if-eqz v0, :cond_3

    invoke-virtual {v8}, Lcom/narvii/modulization/CommunityConfigHelper;->isCatalogEnable()Z

    move-result v11

    if-eqz v11, :cond_3

    invoke-virtual {v8}, Lcom/narvii/modulization/CommunityConfigHelper;->isCatalogCutaionEnable()Z

    move-result v8

    if-eqz v8, :cond_3

    const/4 v8, 0x1

    goto :goto_3

    :cond_3
    const/4 v8, 0x0

    :goto_3
    invoke-interface {v10, v8}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    const v8, 0x7f0f0fa2

    .line 333
    invoke-interface {p1, v8}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v8

    if-nez v5, :cond_4

    if-eqz v4, :cond_4

    if-eqz v7, :cond_4

    if-nez v0, :cond_4

    iget-object v10, v1, Lcom/narvii/model/Feed;->author:Lcom/narvii/model/User;

    if-eqz v10, :cond_4

    iget v10, v10, Lcom/narvii/model/User;->role:I

    if-ne v10, v9, :cond_4

    const/4 v10, 0x0

    goto :goto_4

    :cond_4
    const/4 v10, 0x2

    :goto_4
    invoke-interface {v8, v10}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 334
    invoke-virtual {v6}, Lcom/narvii/account/AccountService;->hasAccount()Z

    move-result v8

    if-eqz v8, :cond_5

    if-nez v5, :cond_5

    if-eqz v4, :cond_5

    if-eqz v7, :cond_5

    if-nez v0, :cond_5

    iget-object v0, v1, Lcom/narvii/model/Feed;->author:Lcom/narvii/model/User;

    if-eqz v0, :cond_5

    iget v0, v0, Lcom/narvii/model/User;->role:I

    if-ne v0, v9, :cond_5

    const/4 v0, 0x1

    goto :goto_5

    :cond_5
    const/4 v0, 0x0

    :goto_5
    const v1, 0x7f0f02f6

    .line 335
    invoke-interface {p1, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    invoke-interface {v1, v0}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    const v1, 0x7f0f019b

    .line 336
    invoke-interface {p1, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    invoke-interface {v1, v0}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 337
    invoke-virtual {v6}, Lcom/narvii/account/AccountService;->getUserProfile()Lcom/narvii/model/User;

    move-result-object v0

    .line 338
    invoke-virtual {p0}, Lcom/narvii/detail/FeedDetailFragment;->getFeed()Lcom/narvii/model/Feed;

    move-result-object v1

    if-eqz v1, :cond_6

    if-eqz v0, :cond_6

    invoke-virtual {v0}, Lcom/narvii/model/User;->isCurator()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->isGlobalInteractionScope()Z

    move-result v0

    if-nez v0, :cond_6

    const/4 v0, 0x1

    goto :goto_6

    :cond_6
    const/4 v0, 0x0

    :goto_6
    const v1, 0x7f0f0094

    .line 339
    invoke-interface {p1, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    invoke-interface {v1, v0}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 340
    iget-object v0, p0, Lcom/narvii/item/detail/ItemDetailFragment;->itemAdapter:Lcom/narvii/item/detail/ItemDetailFragment$Adapter;

    const v1, 0x7f0f0170

    const v4, 0x7f0f10fb

    if-eqz v0, :cond_9

    invoke-virtual {v0}, Lcom/narvii/detail/FeedDetailAdapter;->getResponse()Lcom/narvii/model/api/FeedResponse;

    move-result-object v0

    if-eqz v0, :cond_9

    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->isGlobalInteractionScope()Z

    move-result v0

    if-nez v0, :cond_9

    .line 341
    invoke-interface {p1, v4}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    iget-object v4, p0, Lcom/narvii/item/detail/ItemDetailFragment;->itemAdapter:Lcom/narvii/item/detail/ItemDetailFragment$Adapter;

    iget-boolean v5, v4, Lcom/narvii/detail/FeedDetailAdapter;->isBookmarked:Z

    if-eqz v5, :cond_7

    invoke-virtual {v4}, Lcom/narvii/detail/DetailAdapter;->getObject()Lcom/narvii/model/NVObject;

    move-result-object v4

    if-eqz v4, :cond_7

    const/4 v4, 0x1

    goto :goto_7

    :cond_7
    const/4 v4, 0x0

    :goto_7
    invoke-interface {v0, v4}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 342
    invoke-interface {p1, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object p1

    iget-object v0, p0, Lcom/narvii/item/detail/ItemDetailFragment;->itemAdapter:Lcom/narvii/item/detail/ItemDetailFragment$Adapter;

    iget-boolean v1, v0, Lcom/narvii/detail/FeedDetailAdapter;->isBookmarked:Z

    if-nez v1, :cond_8

    invoke-virtual {v0}, Lcom/narvii/detail/DetailAdapter;->getObject()Lcom/narvii/model/NVObject;

    move-result-object v0

    if-eqz v0, :cond_8

    goto :goto_8

    :cond_8
    const/4 v2, 0x0

    :goto_8
    invoke-interface {p1, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto :goto_9

    .line 344
    :cond_9
    invoke-interface {p1, v4}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v3}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 345
    invoke-interface {p1, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object p1

    invoke-interface {p1, v3}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    :goto_9
    return-void
.end method

.method public onRefresh()V
    .locals 3

    .line 565
    new-instance v0, Lcom/narvii/item/detail/ItemDetailFragment$8;

    invoke-direct {v0, p0}, Lcom/narvii/item/detail/ItemDetailFragment$8;-><init>(Lcom/narvii/item/detail/ItemDetailFragment;)V

    .line 575
    iget-object v1, p0, Lcom/narvii/item/detail/ItemDetailFragment;->itemAdapter:Lcom/narvii/item/detail/ItemDetailFragment$Adapter;

    const/4 v2, 0x1

    invoke-virtual {v1, v2, v0}, Lcom/narvii/detail/DetailAdapter;->refresh(ILcom/narvii/util/Callback;)V

    .line 576
    iget-object v1, p0, Lcom/narvii/item/detail/ItemDetailFragment;->commentAdapter:Lcom/narvii/item/detail/ItemDetailFragment$CommentAdapter;

    invoke-virtual {v1, v2, v0}, Lcom/narvii/list/NVPagedAdapter;->refresh(ILcom/narvii/util/Callback;)V

    .line 577
    iget-object v1, p0, Lcom/narvii/item/detail/ItemDetailFragment;->tagRelatedAdapter:Lcom/narvii/item/detail/ItemDetailFragment$TagRelatedAdapter;

    invoke-virtual {v1, v2, v0}, Lcom/narvii/feed/BaseFeedListAdapter;->refresh(ILcom/narvii/util/Callback;)V

    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    .line 269
    invoke-super {p0, p1}, Lcom/narvii/list/NVListFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 270
    iget-boolean v0, p0, Lcom/narvii/item/detail/ItemDetailFragment;->fromMyCatalog:Z

    const-string v1, "fromMyCatalog"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 1

    const v0, 0x7f09080a

    .line 228
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/narvii/list/overlay/OverlayLayout;

    iput-object v0, p0, Lcom/narvii/item/detail/ItemDetailFragment;->header:Lcom/narvii/list/overlay/OverlayLayout;

    .line 229
    invoke-super {p0, p1, p2}, Lcom/narvii/detail/FeedDetailFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 231
    iget-object p2, p0, Lcom/narvii/item/detail/ItemDetailFragment;->header:Lcom/narvii/list/overlay/OverlayLayout;

    invoke-virtual {p0}, Lcom/narvii/list/NVListFragment;->getListView()Landroid/widget/ListView;

    move-result-object v0

    check-cast v0, Lcom/narvii/widget/NVListView;

    invoke-virtual {p2, v0}, Lcom/narvii/list/overlay/OverlayLayout;->attach(Lcom/narvii/widget/NVListView;)V

    .line 232
    invoke-direct {p0}, Lcom/narvii/item/detail/ItemDetailFragment;->updateHeader()V

    const p2, 0x7f090b2d

    .line 235
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/narvii/list/refresh/SwipeRefreshLayout;

    iput-object p1, p0, Lcom/narvii/item/detail/ItemDetailFragment;->swipeRefreshLayout:Lcom/narvii/list/refresh/SwipeRefreshLayout;

    .line 236
    iget-boolean p1, p0, Lcom/narvii/detail/DetailFragment;->preview:Z

    if-nez p1, :cond_0

    .line 237
    iget-object p1, p0, Lcom/narvii/item/detail/ItemDetailFragment;->swipeRefreshLayout:Lcom/narvii/list/refresh/SwipeRefreshLayout;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroid/view/ViewGroup;->setEnabled(Z)V

    .line 238
    iget-object p1, p0, Lcom/narvii/item/detail/ItemDetailFragment;->swipeRefreshLayout:Lcom/narvii/list/refresh/SwipeRefreshLayout;

    invoke-virtual {p1, p2}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 239
    iget-object p1, p0, Lcom/narvii/item/detail/ItemDetailFragment;->swipeRefreshLayout:Lcom/narvii/list/refresh/SwipeRefreshLayout;

    invoke-virtual {p0}, Lcom/narvii/list/NVListFragment;->getListView()Landroid/widget/ListView;

    move-result-object p2

    check-cast p2, Lcom/narvii/widget/NVListView;

    invoke-virtual {p1, p2}, Lcom/narvii/list/refresh/SwipeRefreshLayout;->setTarget(Lcom/narvii/widget/NVListView;)V

    .line 240
    iget-object p1, p0, Lcom/narvii/item/detail/ItemDetailFragment;->swipeRefreshLayout:Lcom/narvii/list/refresh/SwipeRefreshLayout;

    invoke-virtual {p1, p0}, Lcom/narvii/list/refresh/SwipeRefreshLayout;->setOnRefreshListener(Lcom/narvii/list/refresh/SwipeRefreshLayout$OnRefreshListener;)V

    .line 243
    :cond_0
    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object p1

    instance-of p1, p1, Lcom/narvii/app/NVActivity;

    if-eqz p1, :cond_1

    .line 244
    iget-object p1, p0, Lcom/narvii/item/detail/ItemDetailFragment;->header:Lcom/narvii/list/overlay/OverlayLayout;

    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getActionBarOverlaySize()I

    move-result p2

    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getStatusBarOverlaySize()I

    move-result v0

    add-int/2addr p2, v0

    invoke-virtual {p1, p2}, Lcom/narvii/list/overlay/OverlayLayout;->setHeight1(I)V

    :cond_1
    return-void
.end method

.method protected setListContentBgWhenHasPageBackground()Z
    .locals 1

    .line 582
    iget-boolean v0, p0, Lcom/narvii/detail/DetailFragment;->_hasBackground:Z

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method protected shouldBlockClick(Ljava/lang/Object;)Z
    .locals 2

    .line 1824
    iget-boolean v0, p0, Lcom/narvii/detail/FeedDetailFragment;->notJoined:Z

    if-eqz v0, :cond_2

    .line 1825
    sget-object v0, Lcom/narvii/item/detail/ItemDetailFragment;->LIKES_HEADER:Lcom/narvii/detail/DetailAdapter$HeaderTag;

    const/4 v1, 0x0

    if-eq p1, v0, :cond_1

    sget-object v0, Lcom/narvii/detail/DetailAdapter;->USER_GRID:Lcom/narvii/detail/DetailAdapter$CellType;

    if-ne p1, v0, :cond_0

    goto :goto_0

    .line 1828
    :cond_0
    sget-object v0, Lcom/narvii/detail/DetailAdapter;->COMMENT_HEADER:Lcom/narvii/detail/DetailAdapter$CellType;

    if-ne p1, v0, :cond_2

    :cond_1
    :goto_0
    return v1

    .line 1832
    :cond_2
    invoke-super {p0, p1}, Lcom/narvii/detail/FeedDetailFragment;->shouldBlockClick(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method protected showModerationDialog()V
    .locals 2

    .line 1791
    new-instance v0, Lcom/narvii/poweruser/AdvancedOptionDialog$Builder;

    invoke-direct {v0, p0}, Lcom/narvii/poweruser/AdvancedOptionDialog$Builder;-><init>(Lcom/narvii/app/NVContext;)V

    invoke-virtual {p0}, Lcom/narvii/detail/FeedDetailFragment;->getFeed()Lcom/narvii/model/Feed;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/narvii/poweruser/AdvancedOptionDialog$Builder;->nvObject(Lcom/narvii/model/NVObject;)Lcom/narvii/poweruser/AdvancedOptionDialog$Builder;

    move-result-object v0

    .line 1792
    invoke-virtual {v0}, Lcom/narvii/poweruser/AdvancedOptionDialog$Builder;->build()Lcom/narvii/poweruser/AdvancedOptionDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/narvii/item/detail/ItemDetailFragment;->advancedOptionDialog:Lcom/narvii/poweruser/AdvancedOptionDialog;

    .line 1793
    iget-object v0, p0, Lcom/narvii/item/detail/ItemDetailFragment;->advancedOptionDialog:Lcom/narvii/poweruser/AdvancedOptionDialog;

    invoke-virtual {v0}, Lcom/narvii/poweruser/AdvancedOptionDialog;->show()V

    return-void
.end method

.method submitOfficialCatalog()V
    .locals 2

    .line 1752
    iget-object v0, p0, Lcom/narvii/item/detail/ItemDetailFragment;->itemHelper:Lcom/narvii/item/ItemHelper;

    invoke-virtual {p0}, Lcom/narvii/detail/FeedDetailFragment;->getFeed()Lcom/narvii/model/Feed;

    move-result-object v1

    check-cast v1, Lcom/narvii/model/Item;

    invoke-virtual {v0, v1}, Lcom/narvii/item/ItemHelper;->submitOfficialCatalog(Lcom/narvii/model/Item;)V

    .line 1753
    iget-object v0, p0, Lcom/narvii/item/detail/ItemDetailFragment;->itemHelper:Lcom/narvii/item/ItemHelper;

    const-string v1, "Profile"

    iput-object v1, v0, Lcom/narvii/item/ItemHelper;->source:Ljava/lang/String;

    return-void
.end method

.method protected unVote()V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 1786
    invoke-virtual {p0, v0, v0, v1}, Lcom/narvii/item/detail/ItemDetailFragment;->vote(Ljava/lang/Integer;Lcom/narvii/util/http/ApiService;Z)V

    return-void
.end method

.method protected vote(Ljava/lang/Integer;Lcom/narvii/util/http/ApiService;Z)V
    .locals 9

    .line 1371
    invoke-virtual {p0}, Lcom/narvii/detail/FeedDetailFragment;->getFeed()Lcom/narvii/model/Feed;

    move-result-object v0

    check-cast v0, Lcom/narvii/model/Item;

    .line 1372
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->isGlobalInteractionScope()Z

    move-result v1

    invoke-static {p1, v0, v1}, Lcom/narvii/story/detail/VoteHelper;->getTargetVotedValue(Ljava/lang/Integer;Lcom/narvii/model/Feed;Z)I

    move-result v1

    const/4 v2, 0x1

    if-nez p1, :cond_0

    if-nez v1, :cond_0

    .line 1375
    new-instance p1, Lcom/narvii/util/dialog/ActionSheetDialog;

    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {p1, v1}, Lcom/narvii/util/dialog/ActionSheetDialog;-><init>(Landroid/content/Context;)V

    const v1, 0x7f0f1105

    .line 1376
    invoke-virtual {p1, v1, v2}, Lcom/narvii/util/dialog/ActionSheetDialog;->addItem(IZ)V

    const v1, 0x7f0f029c

    const/4 v2, 0x0

    .line 1377
    invoke-virtual {p1, v1, v2}, Lcom/narvii/util/dialog/ActionSheetDialog;->addItem(IZ)V

    .line 1378
    new-instance v1, Lcom/narvii/item/detail/ItemDetailFragment$9;

    invoke-direct {v1, p0, p2, p3, v0}, Lcom/narvii/item/detail/ItemDetailFragment$9;-><init>(Lcom/narvii/item/detail/ItemDetailFragment;Lcom/narvii/util/http/ApiService;ZLcom/narvii/model/Item;)V

    invoke-virtual {p1, v1}, Lcom/narvii/util/dialog/ActionSheetDialog;->setOnClickListener(Landroid/content/DialogInterface$OnClickListener;)V

    .line 1390
    invoke-virtual {p1}, Lcom/narvii/util/dialog/ActionSheetDialog;->show()V

    return-void

    :cond_0
    if-eqz p3, :cond_2

    .line 1394
    iget-object p1, p0, Lcom/narvii/detail/FeedDetailFragment;->continuousLoaderListener:Lcom/narvii/feed/FeedContinuousViewer$ContinuousLoaderListener;

    if-eqz p1, :cond_2

    const v3, 0x7f090165

    .line 1395
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->isGlobalInteractionScope()Z

    move-result v4

    invoke-virtual {v0, v4}, Lcom/narvii/model/Feed;->getVotedValue(Z)I

    move-result v4

    if-nez v4, :cond_1

    const/4 v4, 0x1

    goto :goto_0

    :cond_1
    const/4 v4, 0x2

    :goto_0
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {p1, v3, v4}, Lcom/narvii/feed/FeedContinuousViewer$ContinuousLoaderListener;->onStart(ILjava/lang/Object;)V

    :cond_2
    if-eqz p3, :cond_3

    .line 1400
    sget-object p1, Lcom/narvii/util/logging/LoggingSource;->SBB:Lcom/narvii/util/logging/LoggingSource;

    goto :goto_1

    :cond_3
    sget-object p1, Lcom/narvii/util/logging/LoggingSource;->PostDetailView:Lcom/narvii/util/logging/LoggingSource;

    .line 1413
    :goto_1
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getParentContext()Lcom/narvii/app/NVContext;

    move-result-object v3

    invoke-static {v3, v0, v1}, Lcom/narvii/util/LiveLayerUtils;->reportVoting(Lcom/narvii/app/NVContext;Lcom/narvii/model/NVObject;I)V

    .line 1417
    new-instance v3, Lcom/narvii/story/detail/VoteHelper;

    invoke-direct {v3, p0}, Lcom/narvii/story/detail/VoteHelper;-><init>(Lcom/narvii/app/NVContext;)V

    .line 1418
    iput-object p1, v3, Lcom/narvii/story/detail/VoteHelper;->loggingSource:Lcom/narvii/util/logging/LoggingSource;

    const-string p1, "loggingOrigin"

    .line 1419
    invoke-virtual {p0, p1}, Lcom/narvii/app/NVFragment;->getStringParam(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, v3, Lcom/narvii/story/detail/VoteHelper;->loggingOriginName:Ljava/lang/String;

    .line 1420
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    new-instance v4, Lcom/narvii/item/detail/ItemDetailFragment$10;

    invoke-direct {v4, p0, p3, v0, v1}, Lcom/narvii/item/detail/ItemDetailFragment$10;-><init>(Lcom/narvii/item/detail/ItemDetailFragment;ZLcom/narvii/model/Item;I)V

    invoke-virtual {v3, v0, p1, p2, v4}, Lcom/narvii/story/detail/VoteHelper;->vote(Lcom/narvii/model/Feed;Ljava/lang/Integer;Lcom/narvii/util/http/ApiService;Lcom/narvii/story/detail/VoteHelper$OnVoteListener;)V

    .line 1455
    iget-object p1, p0, Lcom/narvii/item/detail/ItemDetailFragment;->headerLayout:Lcom/narvii/item/detail/HeaderLayout;

    if-eqz p1, :cond_4

    .line 1456
    invoke-virtual {p1, v2}, Lcom/narvii/item/detail/HeaderLayout;->setVoting(Z)V

    .line 1458
    :cond_4
    iget-object p1, p0, Lcom/narvii/item/detail/ItemDetailFragment;->itemAdapter:Lcom/narvii/item/detail/ItemDetailFragment$Adapter;

    if-eqz p1, :cond_5

    .line 1459
    invoke-virtual {p1}, Lcom/narvii/item/detail/ItemDetailFragment$Adapter;->notifyDataSetChanged()V

    :cond_5
    return-void
.end method
