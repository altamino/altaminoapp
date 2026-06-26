.class public Lcom/narvii/widget/ThumbGallery;
.super Lcom/narvii/widget/HorizontalRecyclerView;
.source "ThumbGallery.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/narvii/widget/ThumbGallery$GalleryRecyclerAdapter;,
        Lcom/narvii/widget/ThumbGallery$OnItemClickListener;
    }
.end annotation


# instance fields
.field private adapter:Lcom/narvii/widget/ThumbGallery$GalleryRecyclerAdapter;

.field private darkTheme:Z

.field private list:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/narvii/model/Media;",
            ">;"
        }
    .end annotation
.end field

.field private listener:Lcom/narvii/widget/ThumbGallery$OnItemClickListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 35
    invoke-direct {p0, p1, v0}, Lcom/narvii/widget/ThumbGallery;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .line 39
    invoke-direct {p0, p1, p2}, Lcom/narvii/widget/HorizontalRecyclerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 40
    new-instance p1, Landroid/support/v7/widget/LinearLayoutManager;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p2

    const/4 v0, 0x0

    invoke-direct {p1, p2, v0, v0}, Landroid/support/v7/widget/LinearLayoutManager;-><init>(Landroid/content/Context;IZ)V

    invoke-virtual {p0, p1}, Landroid/support/v7/widget/RecyclerView;->setLayoutManager(Landroid/support/v7/widget/RecyclerView$LayoutManager;)V

    return-void
.end method

.method static synthetic access$000(Lcom/narvii/widget/ThumbGallery;)Ljava/util/List;
    .locals 0

    .line 19
    iget-object p0, p0, Lcom/narvii/widget/ThumbGallery;->list:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$100(Lcom/narvii/widget/ThumbGallery;)Z
    .locals 0

    .line 19
    iget-boolean p0, p0, Lcom/narvii/widget/ThumbGallery;->darkTheme:Z

    return p0
.end method

.method static synthetic access$200(Lcom/narvii/widget/ThumbGallery;)Lcom/narvii/widget/ThumbGallery$OnItemClickListener;
    .locals 0

    .line 19
    iget-object p0, p0, Lcom/narvii/widget/ThumbGallery;->listener:Lcom/narvii/widget/ThumbGallery$OnItemClickListener;

    return-object p0
.end method


# virtual methods
.method public setDarkTheme(Z)V
    .locals 0

    .line 31
    iput-boolean p1, p0, Lcom/narvii/widget/ThumbGallery;->darkTheme:Z

    return-void
.end method

.method public setMediaList(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/narvii/model/Media;",
            ">;)V"
        }
    .end annotation

    .line 44
    iput-object p1, p0, Lcom/narvii/widget/ThumbGallery;->list:Ljava/util/List;

    .line 45
    iget-object p1, p0, Lcom/narvii/widget/ThumbGallery;->adapter:Lcom/narvii/widget/ThumbGallery$GalleryRecyclerAdapter;

    if-nez p1, :cond_0

    .line 46
    new-instance p1, Lcom/narvii/widget/ThumbGallery$GalleryRecyclerAdapter;

    invoke-direct {p1, p0}, Lcom/narvii/widget/ThumbGallery$GalleryRecyclerAdapter;-><init>(Lcom/narvii/widget/ThumbGallery;)V

    iput-object p1, p0, Lcom/narvii/widget/ThumbGallery;->adapter:Lcom/narvii/widget/ThumbGallery$GalleryRecyclerAdapter;

    .line 47
    iget-object p1, p0, Lcom/narvii/widget/ThumbGallery;->adapter:Lcom/narvii/widget/ThumbGallery$GalleryRecyclerAdapter;

    invoke-virtual {p0, p1}, Landroid/support/v7/widget/RecyclerView;->setAdapter(Landroid/support/v7/widget/RecyclerView$Adapter;)V

    goto :goto_0

    .line 49
    :cond_0
    invoke-virtual {p1}, Landroid/support/v7/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    :goto_0
    return-void
.end method

.method public setOnItemClickListener(Lcom/narvii/widget/ThumbGallery$OnItemClickListener;)V
    .locals 0

    .line 54
    iput-object p1, p0, Lcom/narvii/widget/ThumbGallery;->listener:Lcom/narvii/widget/ThumbGallery$OnItemClickListener;

    return-void
.end method
