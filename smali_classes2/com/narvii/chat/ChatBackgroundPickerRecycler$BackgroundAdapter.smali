.class Lcom/narvii/chat/ChatBackgroundPickerRecycler$BackgroundAdapter;
.super Landroid/support/v7/widget/RecyclerView$Adapter;
.source "ChatBackgroundPickerRecycler.java"


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
        "Landroid/support/v7/widget/RecyclerView$Adapter<",
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

    .line 249
    iput-object p1, p0, Lcom/narvii/chat/ChatBackgroundPickerRecycler$BackgroundAdapter;->this$0:Lcom/narvii/chat/ChatBackgroundPickerRecycler;

    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView$Adapter;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/narvii/chat/ChatBackgroundPickerRecycler;Lcom/narvii/chat/ChatBackgroundPickerRecycler$1;)V
    .locals 0

    .line 249
    invoke-direct {p0, p1}, Lcom/narvii/chat/ChatBackgroundPickerRecycler$BackgroundAdapter;-><init>(Lcom/narvii/chat/ChatBackgroundPickerRecycler;)V

    return-void
.end method

.method private showUserUploadPreview()Z
    .locals 1

    .line 270
    iget-object v0, p0, Lcom/narvii/chat/ChatBackgroundPickerRecycler$BackgroundAdapter;->this$0:Lcom/narvii/chat/ChatBackgroundPickerRecycler;

    invoke-static {v0}, Lcom/narvii/chat/ChatBackgroundPickerRecycler;->access$400(Lcom/narvii/chat/ChatBackgroundPickerRecycler;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/narvii/chat/ChatBackgroundPickerRecycler$BackgroundAdapter;->this$0:Lcom/narvii/chat/ChatBackgroundPickerRecycler;

    invoke-static {v0}, Lcom/narvii/chat/ChatBackgroundPickerRecycler;->access$500(Lcom/narvii/chat/ChatBackgroundPickerRecycler;)Lcom/narvii/model/Media;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method


# virtual methods
.method public getBackgroundEntryByPosition(I)Lcom/narvii/chat/ChatBackgroundPickerRecycler$BackgroundEntry;
    .locals 1

    .line 327
    iget-object v0, p0, Lcom/narvii/chat/ChatBackgroundPickerRecycler$BackgroundAdapter;->this$0:Lcom/narvii/chat/ChatBackgroundPickerRecycler;

    invoke-static {v0}, Lcom/narvii/chat/ChatBackgroundPickerRecycler;->access$400(Lcom/narvii/chat/ChatBackgroundPickerRecycler;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x2

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    :goto_0
    sub-int/2addr p1, v0

    invoke-direct {p0}, Lcom/narvii/chat/ChatBackgroundPickerRecycler$BackgroundAdapter;->showUserUploadPreview()Z

    move-result v0

    sub-int/2addr p1, v0

    .line 328
    invoke-static {}, Lcom/narvii/chat/ChatBackgroundPickerRecycler;->access$1000()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/narvii/chat/ChatBackgroundPickerRecycler$BackgroundEntry;

    return-object p1
.end method

.method public getItemCount()I
    .locals 2

    .line 323
    invoke-static {}, Lcom/narvii/chat/ChatBackgroundPickerRecycler;->access$1000()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    iget-object v1, p0, Lcom/narvii/chat/ChatBackgroundPickerRecycler$BackgroundAdapter;->this$0:Lcom/narvii/chat/ChatBackgroundPickerRecycler;

    invoke-static {v1}, Lcom/narvii/chat/ChatBackgroundPickerRecycler;->access$400(Lcom/narvii/chat/ChatBackgroundPickerRecycler;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x2

    goto :goto_0

    :cond_0
    const/4 v1, 0x1

    :goto_0
    add-int/2addr v0, v1

    return v0
.end method

.method public getItemViewType(I)I
    .locals 2

    if-nez p1, :cond_0

    .line 257
    iget-object v0, p0, Lcom/narvii/chat/ChatBackgroundPickerRecycler$BackgroundAdapter;->this$0:Lcom/narvii/chat/ChatBackgroundPickerRecycler;

    invoke-static {v0}, Lcom/narvii/chat/ChatBackgroundPickerRecycler;->access$400(Lcom/narvii/chat/ChatBackgroundPickerRecycler;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    .line 259
    invoke-direct {p0}, Lcom/narvii/chat/ChatBackgroundPickerRecycler$BackgroundAdapter;->showUserUploadPreview()Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 p1, 0x3

    return p1

    .line 261
    :cond_1
    iget-object v1, p0, Lcom/narvii/chat/ChatBackgroundPickerRecycler$BackgroundAdapter;->this$0:Lcom/narvii/chat/ChatBackgroundPickerRecycler;

    invoke-static {v1}, Lcom/narvii/chat/ChatBackgroundPickerRecycler;->access$400(Lcom/narvii/chat/ChatBackgroundPickerRecycler;)Z

    move-result v1

    sub-int/2addr p1, v1

    invoke-direct {p0}, Lcom/narvii/chat/ChatBackgroundPickerRecycler$BackgroundAdapter;->showUserUploadPreview()Z

    move-result v1

    sub-int/2addr p1, v1

    if-nez p1, :cond_2

    return v0

    :cond_2
    const/4 p1, 0x2

    return p1
.end method

.method public bridge synthetic onBindViewHolder(Landroid/support/v7/widget/RecyclerView$ViewHolder;I)V
    .locals 0

    .line 249
    check-cast p1, Lcom/narvii/chat/ChatBackgroundPickerRecycler$BackgroundViewHolder;

    invoke-virtual {p0, p1, p2}, Lcom/narvii/chat/ChatBackgroundPickerRecycler$BackgroundAdapter;->onBindViewHolder(Lcom/narvii/chat/ChatBackgroundPickerRecycler$BackgroundViewHolder;I)V

    return-void
.end method

.method public onBindViewHolder(Lcom/narvii/chat/ChatBackgroundPickerRecycler$BackgroundViewHolder;I)V
    .locals 7

    .line 284
    invoke-virtual {p0, p2}, Lcom/narvii/chat/ChatBackgroundPickerRecycler$BackgroundAdapter;->getItemViewType(I)I

    move-result v0

    if-nez v0, :cond_0

    goto/16 :goto_b

    :cond_0
    const/high16 v1, 0x3f800000    # 1.0f

    const v2, 0x3f4ccccd    # 0.8f

    const/4 v3, 0x1

    const/16 v4, 0x8

    const/4 v5, 0x0

    if-ne v0, v3, :cond_4

    .line 288
    invoke-static {p1}, Lcom/narvii/chat/ChatBackgroundPickerRecycler$BackgroundViewHolder;->access$600(Lcom/narvii/chat/ChatBackgroundPickerRecycler$BackgroundViewHolder;)Lcom/narvii/widget/NVImageView;

    move-result-object p2

    invoke-virtual {p2, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 290
    :try_start_0
    invoke-static {p1}, Lcom/narvii/chat/ChatBackgroundPickerRecycler$BackgroundViewHolder;->access$700(Lcom/narvii/chat/ChatBackgroundPickerRecycler$BackgroundViewHolder;)Lcom/narvii/widget/BlurImageView;

    move-result-object p2

    iget-object v0, p0, Lcom/narvii/chat/ChatBackgroundPickerRecycler$BackgroundAdapter;->this$0:Lcom/narvii/chat/ChatBackgroundPickerRecycler;

    invoke-virtual {v0}, Lcom/narvii/chat/ChatBackgroundPickerRecycler;->getDefaultBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/narvii/widget/BlurImageView;->setImageDrawable2(Landroid/graphics/drawable/Drawable;)V
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    nop

    .line 293
    :goto_0
    iget-object p2, p0, Lcom/narvii/chat/ChatBackgroundPickerRecycler$BackgroundAdapter;->this$0:Lcom/narvii/chat/ChatBackgroundPickerRecycler;

    invoke-static {p2}, Lcom/narvii/chat/ChatBackgroundPickerRecycler;->access$800(Lcom/narvii/chat/ChatBackgroundPickerRecycler;)Lcom/narvii/model/Media;

    move-result-object p2

    if-nez p2, :cond_1

    goto :goto_1

    :cond_1
    const/4 v3, 0x0

    .line 294
    :goto_1
    invoke-static {p1}, Lcom/narvii/chat/ChatBackgroundPickerRecycler$BackgroundViewHolder;->access$900(Lcom/narvii/chat/ChatBackgroundPickerRecycler$BackgroundViewHolder;)Landroid/view/View;

    move-result-object p2

    if-eqz v3, :cond_2

    const/4 v4, 0x0

    :cond_2
    invoke-virtual {p2, v4}, Landroid/view/View;->setVisibility(I)V

    .line 295
    invoke-static {p1}, Lcom/narvii/chat/ChatBackgroundPickerRecycler$BackgroundViewHolder;->access$700(Lcom/narvii/chat/ChatBackgroundPickerRecycler$BackgroundViewHolder;)Lcom/narvii/widget/BlurImageView;

    move-result-object p2

    invoke-virtual {p2, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 296
    invoke-static {p1}, Lcom/narvii/chat/ChatBackgroundPickerRecycler$BackgroundViewHolder;->access$700(Lcom/narvii/chat/ChatBackgroundPickerRecycler$BackgroundViewHolder;)Lcom/narvii/widget/BlurImageView;

    move-result-object p1

    if-eqz v3, :cond_3

    goto :goto_2

    :cond_3
    const v1, 0x3f4ccccd    # 0.8f

    :goto_2
    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setAlpha(F)V

    goto/16 :goto_b

    :cond_4
    const/4 v6, 0x3

    if-ne v0, v6, :cond_8

    .line 298
    invoke-static {p1}, Lcom/narvii/chat/ChatBackgroundPickerRecycler$BackgroundViewHolder;->access$600(Lcom/narvii/chat/ChatBackgroundPickerRecycler$BackgroundViewHolder;)Lcom/narvii/widget/NVImageView;

    move-result-object p2

    invoke-virtual {p2, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 300
    :try_start_1
    invoke-static {p1}, Lcom/narvii/chat/ChatBackgroundPickerRecycler$BackgroundViewHolder;->access$600(Lcom/narvii/chat/ChatBackgroundPickerRecycler$BackgroundViewHolder;)Lcom/narvii/widget/NVImageView;

    move-result-object p2

    iget-object v0, p0, Lcom/narvii/chat/ChatBackgroundPickerRecycler$BackgroundAdapter;->this$0:Lcom/narvii/chat/ChatBackgroundPickerRecycler;

    invoke-static {v0}, Lcom/narvii/chat/ChatBackgroundPickerRecycler;->access$500(Lcom/narvii/chat/ChatBackgroundPickerRecycler;)Lcom/narvii/model/Media;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/narvii/widget/NVImageView;->setImageMedia(Lcom/narvii/model/Media;)Z
    :try_end_1
    .catch Ljava/lang/OutOfMemoryError; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_3

    :catch_1
    nop

    .line 303
    :goto_3
    iget-object p2, p0, Lcom/narvii/chat/ChatBackgroundPickerRecycler$BackgroundAdapter;->this$0:Lcom/narvii/chat/ChatBackgroundPickerRecycler;

    invoke-static {p2}, Lcom/narvii/chat/ChatBackgroundPickerRecycler;->access$800(Lcom/narvii/chat/ChatBackgroundPickerRecycler;)Lcom/narvii/model/Media;

    move-result-object p2

    if-eqz p2, :cond_5

    iget-object p2, p0, Lcom/narvii/chat/ChatBackgroundPickerRecycler$BackgroundAdapter;->this$0:Lcom/narvii/chat/ChatBackgroundPickerRecycler;

    invoke-static {p2}, Lcom/narvii/chat/ChatBackgroundPickerRecycler;->access$500(Lcom/narvii/chat/ChatBackgroundPickerRecycler;)Lcom/narvii/model/Media;

    move-result-object p2

    iget-object v0, p0, Lcom/narvii/chat/ChatBackgroundPickerRecycler$BackgroundAdapter;->this$0:Lcom/narvii/chat/ChatBackgroundPickerRecycler;

    invoke-static {v0}, Lcom/narvii/chat/ChatBackgroundPickerRecycler;->access$800(Lcom/narvii/chat/ChatBackgroundPickerRecycler;)Lcom/narvii/model/Media;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/narvii/model/Media;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_5

    goto :goto_4

    :cond_5
    const/4 v3, 0x0

    .line 304
    :goto_4
    invoke-static {p1}, Lcom/narvii/chat/ChatBackgroundPickerRecycler$BackgroundViewHolder;->access$900(Lcom/narvii/chat/ChatBackgroundPickerRecycler$BackgroundViewHolder;)Landroid/view/View;

    move-result-object p2

    if-eqz v3, :cond_6

    goto :goto_5

    :cond_6
    const/16 v5, 0x8

    :goto_5
    invoke-virtual {p2, v5}, Landroid/view/View;->setVisibility(I)V

    .line 305
    invoke-static {p1}, Lcom/narvii/chat/ChatBackgroundPickerRecycler$BackgroundViewHolder;->access$700(Lcom/narvii/chat/ChatBackgroundPickerRecycler$BackgroundViewHolder;)Lcom/narvii/widget/BlurImageView;

    move-result-object p2

    invoke-virtual {p2, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 306
    invoke-static {p1}, Lcom/narvii/chat/ChatBackgroundPickerRecycler$BackgroundViewHolder;->access$600(Lcom/narvii/chat/ChatBackgroundPickerRecycler$BackgroundViewHolder;)Lcom/narvii/widget/NVImageView;

    move-result-object p1

    if-eqz v3, :cond_7

    goto :goto_6

    :cond_7
    const v1, 0x3f4ccccd    # 0.8f

    :goto_6
    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setAlpha(F)V

    goto :goto_b

    .line 308
    :cond_8
    invoke-static {p1}, Lcom/narvii/chat/ChatBackgroundPickerRecycler$BackgroundViewHolder;->access$600(Lcom/narvii/chat/ChatBackgroundPickerRecycler$BackgroundViewHolder;)Lcom/narvii/widget/NVImageView;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 309
    invoke-virtual {p0, p2}, Lcom/narvii/chat/ChatBackgroundPickerRecycler$BackgroundAdapter;->getBackgroundEntryByPosition(I)Lcom/narvii/chat/ChatBackgroundPickerRecycler$BackgroundEntry;

    move-result-object p2

    .line 311
    :try_start_2
    invoke-static {p1}, Lcom/narvii/chat/ChatBackgroundPickerRecycler$BackgroundViewHolder;->access$600(Lcom/narvii/chat/ChatBackgroundPickerRecycler$BackgroundViewHolder;)Lcom/narvii/widget/NVImageView;

    move-result-object v0

    invoke-static {p2}, Lcom/narvii/chat/ChatBackgroundPickerRecycler$BackgroundEntry;->access$200(Lcom/narvii/chat/ChatBackgroundPickerRecycler$BackgroundEntry;)Lcom/narvii/model/Media;

    move-result-object v6

    invoke-virtual {v0, v6}, Lcom/narvii/widget/NVImageView;->setImageMedia(Lcom/narvii/model/Media;)Z
    :try_end_2
    .catch Ljava/lang/OutOfMemoryError; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_7

    :catch_2
    nop

    .line 314
    :goto_7
    iget-object v0, p0, Lcom/narvii/chat/ChatBackgroundPickerRecycler$BackgroundAdapter;->this$0:Lcom/narvii/chat/ChatBackgroundPickerRecycler;

    invoke-static {v0}, Lcom/narvii/chat/ChatBackgroundPickerRecycler;->access$800(Lcom/narvii/chat/ChatBackgroundPickerRecycler;)Lcom/narvii/model/Media;

    move-result-object v0

    if-eqz v0, :cond_9

    invoke-static {p2}, Lcom/narvii/chat/ChatBackgroundPickerRecycler$BackgroundEntry;->access$200(Lcom/narvii/chat/ChatBackgroundPickerRecycler$BackgroundEntry;)Lcom/narvii/model/Media;

    move-result-object p2

    iget-object v0, p0, Lcom/narvii/chat/ChatBackgroundPickerRecycler$BackgroundAdapter;->this$0:Lcom/narvii/chat/ChatBackgroundPickerRecycler;

    invoke-static {v0}, Lcom/narvii/chat/ChatBackgroundPickerRecycler;->access$800(Lcom/narvii/chat/ChatBackgroundPickerRecycler;)Lcom/narvii/model/Media;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/narvii/model/Media;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_9

    goto :goto_8

    :cond_9
    const/4 v3, 0x0

    .line 315
    :goto_8
    invoke-static {p1}, Lcom/narvii/chat/ChatBackgroundPickerRecycler$BackgroundViewHolder;->access$900(Lcom/narvii/chat/ChatBackgroundPickerRecycler$BackgroundViewHolder;)Landroid/view/View;

    move-result-object p2

    if-eqz v3, :cond_a

    goto :goto_9

    :cond_a
    const/16 v5, 0x8

    :goto_9
    invoke-virtual {p2, v5}, Landroid/view/View;->setVisibility(I)V

    .line 316
    invoke-static {p1}, Lcom/narvii/chat/ChatBackgroundPickerRecycler$BackgroundViewHolder;->access$700(Lcom/narvii/chat/ChatBackgroundPickerRecycler$BackgroundViewHolder;)Lcom/narvii/widget/BlurImageView;

    move-result-object p2

    invoke-virtual {p2, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 317
    invoke-static {p1}, Lcom/narvii/chat/ChatBackgroundPickerRecycler$BackgroundViewHolder;->access$600(Lcom/narvii/chat/ChatBackgroundPickerRecycler$BackgroundViewHolder;)Lcom/narvii/widget/NVImageView;

    move-result-object p1

    if-eqz v3, :cond_b

    goto :goto_a

    :cond_b
    const v1, 0x3f4ccccd    # 0.8f

    :goto_a
    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setAlpha(F)V

    :goto_b
    return-void
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .locals 0

    .line 249
    invoke-virtual {p0, p1, p2}, Lcom/narvii/chat/ChatBackgroundPickerRecycler$BackgroundAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/narvii/chat/ChatBackgroundPickerRecycler$BackgroundViewHolder;

    move-result-object p1

    return-object p1
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/narvii/chat/ChatBackgroundPickerRecycler$BackgroundViewHolder;
    .locals 4

    const/4 v0, 0x0

    if-nez p2, :cond_0

    .line 276
    new-instance p2, Lcom/narvii/chat/ChatBackgroundPickerRecycler$BackgroundViewHolder;

    iget-object v1, p0, Lcom/narvii/chat/ChatBackgroundPickerRecycler$BackgroundAdapter;->this$0:Lcom/narvii/chat/ChatBackgroundPickerRecycler;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    const v3, 0x7f0b0689

    invoke-virtual {v2, v3, p1, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    invoke-direct {p2, v1, p1}, Lcom/narvii/chat/ChatBackgroundPickerRecycler$BackgroundViewHolder;-><init>(Lcom/narvii/chat/ChatBackgroundPickerRecycler;Landroid/view/View;)V

    return-object p2

    .line 278
    :cond_0
    new-instance p2, Lcom/narvii/chat/ChatBackgroundPickerRecycler$BackgroundViewHolder;

    iget-object v1, p0, Lcom/narvii/chat/ChatBackgroundPickerRecycler$BackgroundAdapter;->this$0:Lcom/narvii/chat/ChatBackgroundPickerRecycler;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    const v3, 0x7f0b0688

    invoke-virtual {v2, v3, p1, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    invoke-direct {p2, v1, p1}, Lcom/narvii/chat/ChatBackgroundPickerRecycler$BackgroundViewHolder;-><init>(Lcom/narvii/chat/ChatBackgroundPickerRecycler;Landroid/view/View;)V

    return-object p2
.end method
