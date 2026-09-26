.class Lcom/narvii/chat/ChatBackgroundPickerRecycler$BackgroundAdapter;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/narvii/chat/ChatBackgroundPickerRecycler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "BackgroundAdapter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/recyclerview/widget/RecyclerView$Adapter<",
        "Lcom/narvii/chat/ChatBackgroundPickerRecycler$BackgroundViewHolder;",
        ">;"
    }
.end annotation


# static fields
.field private static final VIEW_TYPE_NONE:I = 0x1

.field private static final VIEW_TYPE_NORMAL:I = 0x2

.field private static final VIEW_TYPE_USER_UPLOAD:I = 0x0

.field private static final VIEW_TYPE_USER_UPLOAD_PREVIEW:I = 0x3


# instance fields
.field final synthetic this$0:Lcom/narvii/chat/ChatBackgroundPickerRecycler;


# direct methods
.method private constructor <init>(Lcom/narvii/chat/ChatBackgroundPickerRecycler;)V
    .locals 0

    iput-object p1, p0, Lcom/narvii/chat/ChatBackgroundPickerRecycler$BackgroundAdapter;->this$0:Lcom/narvii/chat/ChatBackgroundPickerRecycler;

    .line 2
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/narvii/chat/ChatBackgroundPickerRecycler;Lcom/narvii/chat/c;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/narvii/chat/ChatBackgroundPickerRecycler$BackgroundAdapter;-><init>(Lcom/narvii/chat/ChatBackgroundPickerRecycler;)V

    return-void
.end method

.method private showUserUploadPreview()Z
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/chat/ChatBackgroundPickerRecycler$BackgroundAdapter;->this$0:Lcom/narvii/chat/ChatBackgroundPickerRecycler;

    .line 3
    .line 4
    .line 5
    invoke-static {v0}, Lcom/narvii/chat/ChatBackgroundPickerRecycler;->d(Lcom/narvii/chat/ChatBackgroundPickerRecycler;)Z

    .line 6
    move-result v0

    .line 7
    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    iget-object v0, p0, Lcom/narvii/chat/ChatBackgroundPickerRecycler$BackgroundAdapter;->this$0:Lcom/narvii/chat/ChatBackgroundPickerRecycler;

    .line 11
    .line 12
    .line 13
    invoke-static {v0}, Lcom/narvii/chat/ChatBackgroundPickerRecycler;->e(Lcom/narvii/chat/ChatBackgroundPickerRecycler;)Lcom/narvii/model/Media;

    .line 14
    move-result-object v0

    .line 15
    .line 16
    if-eqz v0, :cond_0

    .line 17
    const/4 v0, 0x1

    .line 18
    goto :goto_0

    .line 19
    :cond_0
    const/4 v0, 0x0

    .line 20
    :goto_0
    return v0
.end method


# virtual methods
.method public getBackgroundEntryByPosition(I)Lcom/narvii/chat/ChatBackgroundPickerRecycler$BackgroundEntry;
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/chat/ChatBackgroundPickerRecycler$BackgroundAdapter;->this$0:Lcom/narvii/chat/ChatBackgroundPickerRecycler;

    .line 3
    .line 4
    .line 5
    invoke-static {v0}, Lcom/narvii/chat/ChatBackgroundPickerRecycler;->d(Lcom/narvii/chat/ChatBackgroundPickerRecycler;)Z

    .line 6
    move-result v0

    .line 7
    .line 8
    if-eqz v0, :cond_0

    .line 9
    const/4 v0, 0x2

    .line 10
    goto :goto_0

    .line 11
    :cond_0
    const/4 v0, 0x1

    .line 12
    :goto_0
    sub-int/2addr p1, v0

    .line 13
    .line 14
    .line 15
    invoke-direct {p0}, Lcom/narvii/chat/ChatBackgroundPickerRecycler$BackgroundAdapter;->showUserUploadPreview()Z

    .line 16
    move-result v0

    .line 17
    sub-int/2addr p1, v0

    .line 18
    .line 19
    .line 20
    invoke-static {}, Lcom/narvii/chat/ChatBackgroundPickerRecycler;->f()Ljava/util/List;

    .line 21
    move-result-object v0

    .line 22
    .line 23
    .line 24
    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 25
    move-result-object p1

    .line 26
    .line 27
    check-cast p1, Lcom/narvii/chat/ChatBackgroundPickerRecycler$BackgroundEntry;

    .line 28
    return-object p1
.end method

.method public getItemCount()I
    .locals 2

    .line 1
    .line 2
    .line 3
    invoke-static {}, Lcom/narvii/chat/ChatBackgroundPickerRecycler;->f()Ljava/util/List;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    .line 7
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 8
    move-result v0

    .line 9
    .line 10
    iget-object v1, p0, Lcom/narvii/chat/ChatBackgroundPickerRecycler$BackgroundAdapter;->this$0:Lcom/narvii/chat/ChatBackgroundPickerRecycler;

    .line 11
    .line 12
    .line 13
    invoke-static {v1}, Lcom/narvii/chat/ChatBackgroundPickerRecycler;->d(Lcom/narvii/chat/ChatBackgroundPickerRecycler;)Z

    .line 14
    move-result v1

    .line 15
    .line 16
    if-eqz v1, :cond_0

    .line 17
    const/4 v1, 0x2

    .line 18
    goto :goto_0

    .line 19
    :cond_0
    const/4 v1, 0x1

    .line 20
    :goto_0
    add-int/2addr v0, v1

    .line 21
    return v0
.end method

.method public getItemViewType(I)I
    .locals 2

    .line 1
    .line 2
    if-nez p1, :cond_0

    .line 3
    .line 4
    iget-object v0, p0, Lcom/narvii/chat/ChatBackgroundPickerRecycler$BackgroundAdapter;->this$0:Lcom/narvii/chat/ChatBackgroundPickerRecycler;

    .line 5
    .line 6
    .line 7
    invoke-static {v0}, Lcom/narvii/chat/ChatBackgroundPickerRecycler;->d(Lcom/narvii/chat/ChatBackgroundPickerRecycler;)Z

    .line 8
    move-result v0

    .line 9
    .line 10
    if-eqz v0, :cond_0

    .line 11
    const/4 p1, 0x0

    .line 12
    return p1

    .line 13
    :cond_0
    const/4 v0, 0x1

    .line 14
    .line 15
    if-ne p1, v0, :cond_1

    .line 16
    .line 17
    .line 18
    invoke-direct {p0}, Lcom/narvii/chat/ChatBackgroundPickerRecycler$BackgroundAdapter;->showUserUploadPreview()Z

    .line 19
    move-result v1

    .line 20
    .line 21
    if-eqz v1, :cond_1

    .line 22
    const/4 p1, 0x3

    .line 23
    return p1

    .line 24
    .line 25
    :cond_1
    iget-object v1, p0, Lcom/narvii/chat/ChatBackgroundPickerRecycler$BackgroundAdapter;->this$0:Lcom/narvii/chat/ChatBackgroundPickerRecycler;

    .line 26
    .line 27
    .line 28
    invoke-static {v1}, Lcom/narvii/chat/ChatBackgroundPickerRecycler;->d(Lcom/narvii/chat/ChatBackgroundPickerRecycler;)Z

    .line 29
    move-result v1

    .line 30
    sub-int/2addr p1, v1

    .line 31
    .line 32
    .line 33
    invoke-direct {p0}, Lcom/narvii/chat/ChatBackgroundPickerRecycler$BackgroundAdapter;->showUserUploadPreview()Z

    .line 34
    move-result v1

    .line 35
    sub-int/2addr p1, v1

    .line 36
    .line 37
    if-nez p1, :cond_2

    .line 38
    return v0

    .line 39
    :cond_2
    const/4 p1, 0x2

    .line 40
    return p1
.end method

.method public bridge synthetic onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 0

    .line 1
    check-cast p1, Lcom/narvii/chat/ChatBackgroundPickerRecycler$BackgroundViewHolder;

    invoke-virtual {p0, p1, p2}, Lcom/narvii/chat/ChatBackgroundPickerRecycler$BackgroundAdapter;->onBindViewHolder(Lcom/narvii/chat/ChatBackgroundPickerRecycler$BackgroundViewHolder;I)V

    return-void
.end method

.method public onBindViewHolder(Lcom/narvii/chat/ChatBackgroundPickerRecycler$BackgroundViewHolder;I)V
    .locals 7

    .line 2
    invoke-virtual {p0, p2}, Lcom/narvii/chat/ChatBackgroundPickerRecycler$BackgroundAdapter;->getItemViewType(I)I

    move-result v0

    if-nez v0, :cond_0

    goto/16 :goto_5

    :cond_0
    const v1, 0x3f4ccccd    # 0.8f

    const/high16 v2, 0x3f800000    # 1.0f

    const/4 v3, 0x1

    const/16 v4, 0x8

    const/4 v5, 0x0

    if-ne v0, v3, :cond_4

    .line 3
    invoke-static {p1}, Lcom/narvii/chat/ChatBackgroundPickerRecycler$BackgroundViewHolder;->b(Lcom/narvii/chat/ChatBackgroundPickerRecycler$BackgroundViewHolder;)Lcom/narvii/widget/NVImageView;

    move-result-object p2

    invoke-virtual {p2, v4}, Landroid/view/View;->setVisibility(I)V

    .line 4
    :try_start_0
    invoke-static {p1}, Lcom/narvii/chat/ChatBackgroundPickerRecycler$BackgroundViewHolder;->a(Lcom/narvii/chat/ChatBackgroundPickerRecycler$BackgroundViewHolder;)Lcom/narvii/widget/BlurImageView;

    move-result-object p2

    iget-object v0, p0, Lcom/narvii/chat/ChatBackgroundPickerRecycler$BackgroundAdapter;->this$0:Lcom/narvii/chat/ChatBackgroundPickerRecycler;

    invoke-virtual {v0}, Lcom/narvii/chat/ChatBackgroundPickerRecycler;->getDefaultBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/narvii/widget/BlurImageView;->setImageDrawable2(Landroid/graphics/drawable/Drawable;)V
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    iget-object p2, p0, Lcom/narvii/chat/ChatBackgroundPickerRecycler$BackgroundAdapter;->this$0:Lcom/narvii/chat/ChatBackgroundPickerRecycler;

    .line 5
    invoke-static {p2}, Lcom/narvii/chat/ChatBackgroundPickerRecycler;->c(Lcom/narvii/chat/ChatBackgroundPickerRecycler;)Lcom/narvii/model/Media;

    move-result-object p2

    if-nez p2, :cond_1

    goto :goto_0

    :cond_1
    move v3, v5

    .line 6
    :goto_0
    invoke-static {p1}, Lcom/narvii/chat/ChatBackgroundPickerRecycler$BackgroundViewHolder;->c(Lcom/narvii/chat/ChatBackgroundPickerRecycler$BackgroundViewHolder;)Landroid/view/View;

    move-result-object p2

    if-eqz v3, :cond_2

    move v4, v5

    :cond_2
    invoke-virtual {p2, v4}, Landroid/view/View;->setVisibility(I)V

    .line 7
    invoke-static {p1}, Lcom/narvii/chat/ChatBackgroundPickerRecycler$BackgroundViewHolder;->a(Lcom/narvii/chat/ChatBackgroundPickerRecycler$BackgroundViewHolder;)Lcom/narvii/widget/BlurImageView;

    move-result-object p2

    invoke-virtual {p2, v5}, Landroid/view/View;->setVisibility(I)V

    .line 8
    invoke-static {p1}, Lcom/narvii/chat/ChatBackgroundPickerRecycler$BackgroundViewHolder;->a(Lcom/narvii/chat/ChatBackgroundPickerRecycler$BackgroundViewHolder;)Lcom/narvii/widget/BlurImageView;

    move-result-object p1

    if-eqz v3, :cond_3

    move v1, v2

    :cond_3
    invoke-virtual {p1, v1}, Landroid/view/View;->setAlpha(F)V

    goto/16 :goto_5

    :cond_4
    const/4 v6, 0x3

    if-ne v0, v6, :cond_8

    .line 9
    invoke-static {p1}, Lcom/narvii/chat/ChatBackgroundPickerRecycler$BackgroundViewHolder;->b(Lcom/narvii/chat/ChatBackgroundPickerRecycler$BackgroundViewHolder;)Lcom/narvii/widget/NVImageView;

    move-result-object p2

    invoke-virtual {p2, v5}, Landroid/view/View;->setVisibility(I)V

    .line 10
    :try_start_1
    invoke-static {p1}, Lcom/narvii/chat/ChatBackgroundPickerRecycler$BackgroundViewHolder;->b(Lcom/narvii/chat/ChatBackgroundPickerRecycler$BackgroundViewHolder;)Lcom/narvii/widget/NVImageView;

    move-result-object p2

    iget-object v0, p0, Lcom/narvii/chat/ChatBackgroundPickerRecycler$BackgroundAdapter;->this$0:Lcom/narvii/chat/ChatBackgroundPickerRecycler;

    invoke-static {v0}, Lcom/narvii/chat/ChatBackgroundPickerRecycler;->e(Lcom/narvii/chat/ChatBackgroundPickerRecycler;)Lcom/narvii/model/Media;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/narvii/widget/NVImageView;->setImageMedia(Lcom/narvii/model/Media;)Z
    :try_end_1
    .catch Ljava/lang/OutOfMemoryError; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    iget-object p2, p0, Lcom/narvii/chat/ChatBackgroundPickerRecycler$BackgroundAdapter;->this$0:Lcom/narvii/chat/ChatBackgroundPickerRecycler;

    .line 11
    invoke-static {p2}, Lcom/narvii/chat/ChatBackgroundPickerRecycler;->c(Lcom/narvii/chat/ChatBackgroundPickerRecycler;)Lcom/narvii/model/Media;

    move-result-object p2

    if-eqz p2, :cond_5

    iget-object p2, p0, Lcom/narvii/chat/ChatBackgroundPickerRecycler$BackgroundAdapter;->this$0:Lcom/narvii/chat/ChatBackgroundPickerRecycler;

    invoke-static {p2}, Lcom/narvii/chat/ChatBackgroundPickerRecycler;->e(Lcom/narvii/chat/ChatBackgroundPickerRecycler;)Lcom/narvii/model/Media;

    move-result-object p2

    iget-object v0, p0, Lcom/narvii/chat/ChatBackgroundPickerRecycler$BackgroundAdapter;->this$0:Lcom/narvii/chat/ChatBackgroundPickerRecycler;

    invoke-static {v0}, Lcom/narvii/chat/ChatBackgroundPickerRecycler;->c(Lcom/narvii/chat/ChatBackgroundPickerRecycler;)Lcom/narvii/model/Media;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/narvii/model/Media;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_5

    goto :goto_1

    :cond_5
    move v3, v5

    .line 12
    :goto_1
    invoke-static {p1}, Lcom/narvii/chat/ChatBackgroundPickerRecycler$BackgroundViewHolder;->c(Lcom/narvii/chat/ChatBackgroundPickerRecycler$BackgroundViewHolder;)Landroid/view/View;

    move-result-object p2

    if-eqz v3, :cond_6

    goto :goto_2

    :cond_6
    move v5, v4

    :goto_2
    invoke-virtual {p2, v5}, Landroid/view/View;->setVisibility(I)V

    .line 13
    invoke-static {p1}, Lcom/narvii/chat/ChatBackgroundPickerRecycler$BackgroundViewHolder;->a(Lcom/narvii/chat/ChatBackgroundPickerRecycler$BackgroundViewHolder;)Lcom/narvii/widget/BlurImageView;

    move-result-object p2

    invoke-virtual {p2, v4}, Landroid/view/View;->setVisibility(I)V

    .line 14
    invoke-static {p1}, Lcom/narvii/chat/ChatBackgroundPickerRecycler$BackgroundViewHolder;->b(Lcom/narvii/chat/ChatBackgroundPickerRecycler$BackgroundViewHolder;)Lcom/narvii/widget/NVImageView;

    move-result-object p1

    if-eqz v3, :cond_7

    move v1, v2

    :cond_7
    invoke-virtual {p1, v1}, Landroid/view/View;->setAlpha(F)V

    goto :goto_5

    .line 15
    :cond_8
    invoke-static {p1}, Lcom/narvii/chat/ChatBackgroundPickerRecycler$BackgroundViewHolder;->b(Lcom/narvii/chat/ChatBackgroundPickerRecycler$BackgroundViewHolder;)Lcom/narvii/widget/NVImageView;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/view/View;->setVisibility(I)V

    .line 16
    invoke-virtual {p0, p2}, Lcom/narvii/chat/ChatBackgroundPickerRecycler$BackgroundAdapter;->getBackgroundEntryByPosition(I)Lcom/narvii/chat/ChatBackgroundPickerRecycler$BackgroundEntry;

    move-result-object p2

    .line 17
    :try_start_2
    invoke-static {p1}, Lcom/narvii/chat/ChatBackgroundPickerRecycler$BackgroundViewHolder;->b(Lcom/narvii/chat/ChatBackgroundPickerRecycler$BackgroundViewHolder;)Lcom/narvii/widget/NVImageView;

    move-result-object v0

    invoke-static {p2}, Lcom/narvii/chat/ChatBackgroundPickerRecycler$BackgroundEntry;->a(Lcom/narvii/chat/ChatBackgroundPickerRecycler$BackgroundEntry;)Lcom/narvii/model/Media;

    move-result-object v6

    invoke-virtual {v0, v6}, Lcom/narvii/widget/NVImageView;->setImageMedia(Lcom/narvii/model/Media;)Z
    :try_end_2
    .catch Ljava/lang/OutOfMemoryError; {:try_start_2 .. :try_end_2} :catch_2

    :catch_2
    iget-object v0, p0, Lcom/narvii/chat/ChatBackgroundPickerRecycler$BackgroundAdapter;->this$0:Lcom/narvii/chat/ChatBackgroundPickerRecycler;

    .line 18
    invoke-static {v0}, Lcom/narvii/chat/ChatBackgroundPickerRecycler;->c(Lcom/narvii/chat/ChatBackgroundPickerRecycler;)Lcom/narvii/model/Media;

    move-result-object v0

    if-eqz v0, :cond_9

    invoke-static {p2}, Lcom/narvii/chat/ChatBackgroundPickerRecycler$BackgroundEntry;->a(Lcom/narvii/chat/ChatBackgroundPickerRecycler$BackgroundEntry;)Lcom/narvii/model/Media;

    move-result-object p2

    iget-object v0, p0, Lcom/narvii/chat/ChatBackgroundPickerRecycler$BackgroundAdapter;->this$0:Lcom/narvii/chat/ChatBackgroundPickerRecycler;

    invoke-static {v0}, Lcom/narvii/chat/ChatBackgroundPickerRecycler;->c(Lcom/narvii/chat/ChatBackgroundPickerRecycler;)Lcom/narvii/model/Media;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/narvii/model/Media;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_9

    goto :goto_3

    :cond_9
    move v3, v5

    .line 19
    :goto_3
    invoke-static {p1}, Lcom/narvii/chat/ChatBackgroundPickerRecycler$BackgroundViewHolder;->c(Lcom/narvii/chat/ChatBackgroundPickerRecycler$BackgroundViewHolder;)Landroid/view/View;

    move-result-object p2

    if-eqz v3, :cond_a

    goto :goto_4

    :cond_a
    move v5, v4

    :goto_4
    invoke-virtual {p2, v5}, Landroid/view/View;->setVisibility(I)V

    .line 20
    invoke-static {p1}, Lcom/narvii/chat/ChatBackgroundPickerRecycler$BackgroundViewHolder;->a(Lcom/narvii/chat/ChatBackgroundPickerRecycler$BackgroundViewHolder;)Lcom/narvii/widget/BlurImageView;

    move-result-object p2

    invoke-virtual {p2, v4}, Landroid/view/View;->setVisibility(I)V

    .line 21
    invoke-static {p1}, Lcom/narvii/chat/ChatBackgroundPickerRecycler$BackgroundViewHolder;->b(Lcom/narvii/chat/ChatBackgroundPickerRecycler$BackgroundViewHolder;)Lcom/narvii/widget/NVImageView;

    move-result-object p1

    if-eqz v3, :cond_b

    move v1, v2

    :cond_b
    invoke-virtual {p1, v1}, Landroid/view/View;->setAlpha(F)V

    :goto_5
    return-void
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Lcom/narvii/chat/ChatBackgroundPickerRecycler$BackgroundAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/narvii/chat/ChatBackgroundPickerRecycler$BackgroundViewHolder;

    move-result-object p1

    return-object p1
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/narvii/chat/ChatBackgroundPickerRecycler$BackgroundViewHolder;
    .locals 4

    const/4 v0, 0x0

    if-nez p2, :cond_0

    .line 2
    new-instance p2, Lcom/narvii/chat/ChatBackgroundPickerRecycler$BackgroundViewHolder;

    iget-object v1, p0, Lcom/narvii/chat/ChatBackgroundPickerRecycler$BackgroundAdapter;->this$0:Lcom/narvii/chat/ChatBackgroundPickerRecycler;

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    const v3, 0x7f0d073f

    invoke-virtual {v2, v3, p1, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    invoke-direct {p2, v1, p1}, Lcom/narvii/chat/ChatBackgroundPickerRecycler$BackgroundViewHolder;-><init>(Lcom/narvii/chat/ChatBackgroundPickerRecycler;Landroid/view/View;)V

    return-object p2

    .line 3
    :cond_0
    new-instance p2, Lcom/narvii/chat/ChatBackgroundPickerRecycler$BackgroundViewHolder;

    iget-object v1, p0, Lcom/narvii/chat/ChatBackgroundPickerRecycler$BackgroundAdapter;->this$0:Lcom/narvii/chat/ChatBackgroundPickerRecycler;

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    const v3, 0x7f0d073e

    invoke-virtual {v2, v3, p1, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    invoke-direct {p2, v1, p1}, Lcom/narvii/chat/ChatBackgroundPickerRecycler$BackgroundViewHolder;-><init>(Lcom/narvii/chat/ChatBackgroundPickerRecycler;Landroid/view/View;)V

    return-object p2
.end method
