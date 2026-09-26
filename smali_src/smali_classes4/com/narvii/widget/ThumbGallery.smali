.class public Lcom/narvii/widget/ThumbGallery;
.super Lcom/narvii/widget/HorizontalRecyclerView;
.source "SourceFile"


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

    .line 1
    invoke-direct {p0, p1, v0}, Lcom/narvii/widget/ThumbGallery;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .line 2
    invoke-direct {p0, p1, p2}, Lcom/narvii/widget/HorizontalRecyclerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 3
    new-instance p1, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p2

    const/4 v0, 0x0

    invoke-direct {p1, p2, v0, v0}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;IZ)V

    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    return-void
.end method

.method static bridge synthetic b(Lcom/narvii/widget/ThumbGallery;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/narvii/widget/ThumbGallery;->darkTheme:Z

    return p0
.end method

.method static bridge synthetic c(Lcom/narvii/widget/ThumbGallery;)Ljava/util/List;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/narvii/widget/ThumbGallery;->list:Ljava/util/List;

    return-object p0
.end method

.method static bridge synthetic d(Lcom/narvii/widget/ThumbGallery;)Lcom/narvii/widget/ThumbGallery$OnItemClickListener;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/narvii/widget/ThumbGallery;->listener:Lcom/narvii/widget/ThumbGallery$OnItemClickListener;

    return-object p0
.end method


# virtual methods
.method public setDarkTheme(Z)V
    .locals 0

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

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/widget/ThumbGallery;->list:Ljava/util/List;

    .line 3
    .line 4
    iget-object p1, p0, Lcom/narvii/widget/ThumbGallery;->adapter:Lcom/narvii/widget/ThumbGallery$GalleryRecyclerAdapter;

    .line 5
    .line 6
    if-nez p1, :cond_0

    .line 7
    .line 8
    new-instance p1, Lcom/narvii/widget/ThumbGallery$GalleryRecyclerAdapter;

    .line 9
    .line 10
    .line 11
    invoke-direct {p1, p0}, Lcom/narvii/widget/ThumbGallery$GalleryRecyclerAdapter;-><init>(Lcom/narvii/widget/ThumbGallery;)V

    .line 12
    .line 13
    iput-object p1, p0, Lcom/narvii/widget/ThumbGallery;->adapter:Lcom/narvii/widget/ThumbGallery$GalleryRecyclerAdapter;

    .line 14
    .line 15
    .line 16
    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 17
    goto :goto_0

    .line 18
    .line 19
    .line 20
    :cond_0
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    .line 21
    :goto_0
    return-void
.end method

.method public setOnItemClickListener(Lcom/narvii/widget/ThumbGallery$OnItemClickListener;)V
    .locals 0

    iput-object p1, p0, Lcom/narvii/widget/ThumbGallery;->listener:Lcom/narvii/widget/ThumbGallery$OnItemClickListener;

    return-void
.end method
