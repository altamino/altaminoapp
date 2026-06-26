.class public final Lcom/narvii/scene/TemplateListFragment$TemplateViewHolder;
.super Landroid/support/v7/widget/RecyclerView$ViewHolder;
.source "TemplateListFragment.kt"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/narvii/scene/TemplateListFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "TemplateViewHolder"
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nTemplateListFragment.kt\nKotlin\n*S Kotlin\n*F\n+ 1 TemplateListFragment.kt\ncom/narvii/scene/TemplateListFragment$TemplateViewHolder\n*L\n1#1,475:1\n*E\n"
.end annotation


# instance fields
.field private final coverImage:Lcom/narvii/widget/ThumbImageView;

.field private template:Lcom/narvii/scene/model/TemplateConfig;

.field final synthetic this$0:Lcom/narvii/scene/TemplateListFragment;

.field private final videoPlayButton:Lcom/narvii/widget/NVImageView;


# direct methods
.method public constructor <init>(Lcom/narvii/scene/TemplateListFragment;Landroid/view/View;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            ")V"
        }
    .end annotation

    const-string v0, "view"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 258
    iput-object p1, p0, Lcom/narvii/scene/TemplateListFragment$TemplateViewHolder;->this$0:Lcom/narvii/scene/TemplateListFragment;

    invoke-direct {p0, p2}, Landroid/support/v7/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 260
    iget-object p1, p0, Landroid/support/v7/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    sget p2, Lcom/narvii/mediaeditor/R$id;->cover_image:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/narvii/widget/ThumbImageView;

    iput-object p1, p0, Lcom/narvii/scene/TemplateListFragment$TemplateViewHolder;->coverImage:Lcom/narvii/widget/ThumbImageView;

    .line 261
    iget-object p1, p0, Landroid/support/v7/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    sget p2, Lcom/narvii/mediaeditor/R$id;->video_play_button:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/narvii/widget/NVImageView;

    iput-object p1, p0, Lcom/narvii/scene/TemplateListFragment$TemplateViewHolder;->videoPlayButton:Lcom/narvii/widget/NVImageView;

    .line 266
    iget-object p1, p0, Lcom/narvii/scene/TemplateListFragment$TemplateViewHolder;->coverImage:Lcom/narvii/widget/ThumbImageView;

    invoke-virtual {p1, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method


# virtual methods
.method public final getCoverImage()Lcom/narvii/widget/ThumbImageView;
    .locals 1

    .line 260
    iget-object v0, p0, Lcom/narvii/scene/TemplateListFragment$TemplateViewHolder;->coverImage:Lcom/narvii/widget/ThumbImageView;

    return-object v0
.end method

.method public final getTemplate()Lcom/narvii/scene/model/TemplateConfig;
    .locals 1

    .line 263
    iget-object v0, p0, Lcom/narvii/scene/TemplateListFragment$TemplateViewHolder;->template:Lcom/narvii/scene/model/TemplateConfig;

    return-object v0
.end method

.method public final getVideoPlayButton()Lcom/narvii/widget/NVImageView;
    .locals 1

    .line 261
    iget-object v0, p0, Lcom/narvii/scene/TemplateListFragment$TemplateViewHolder;->videoPlayButton:Lcom/narvii/widget/NVImageView;

    return-object v0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 288
    invoke-static {}, Lcom/narvii/app/NVApplication;->instance()Lcom/narvii/app/NVApplication;

    move-result-object p1

    invoke-static {p1}, Lcom/narvii/nvplayer/NVPlayerManager;->getNVPlayer(Landroid/content/Context;)Lcom/narvii/nvplayer/INVPlayer;

    move-result-object p1

    const-string v0, "nvPlayer"

    .line 289
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p1}, Lcom/narvii/nvplayer/INVPlayer;->getPlayWhenReady()Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_1

    .line 290
    iget-object p1, p0, Lcom/narvii/scene/TemplateListFragment$TemplateViewHolder;->this$0:Lcom/narvii/scene/TemplateListFragment;

    invoke-virtual {p1, v1}, Lcom/narvii/scene/TemplateListFragment;->setAutoPlaying(Z)V

    .line 291
    iget-object p1, p0, Lcom/narvii/scene/TemplateListFragment$TemplateViewHolder;->this$0:Lcom/narvii/scene/TemplateListFragment;

    invoke-virtual {p1}, Lcom/narvii/paging/NVRecyclerViewFragment;->getVideoListDelegate()Lcom/narvii/nvplayerview/delegate/IVideoListDelegate;

    move-result-object p1

    if-eqz p1, :cond_0

    check-cast p1, Lcom/narvii/nvplayerview/delegate/NVVideoListDelegate;

    invoke-virtual {p1}, Lcom/narvii/nvplayerview/delegate/NVVideoListDelegate;->refreshPlayerPosition()V

    goto :goto_0

    :cond_0
    new-instance p1, Lkotlin/TypeCastException;

    const-string v0, "null cannot be cast to non-null type com.narvii.nvplayerview.delegate.NVVideoListDelegate"

    invoke-direct {p1, v0}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 293
    :cond_1
    invoke-interface {p1}, Lcom/narvii/nvplayer/INVPlayer;->getPlayWhenReady()Z

    move-result v0

    xor-int/2addr v0, v1

    invoke-interface {p1, v0}, Lcom/narvii/nvplayer/INVPlayer;->setPlayWhenReady(Z)V

    .line 294
    iget-object v0, p0, Lcom/narvii/scene/TemplateListFragment$TemplateViewHolder;->this$0:Lcom/narvii/scene/TemplateListFragment;

    invoke-interface {p1}, Lcom/narvii/nvplayer/INVPlayer;->getPlayWhenReady()Z

    move-result p1

    invoke-virtual {v0, p1}, Lcom/narvii/scene/TemplateListFragment;->setAutoPlaying(Z)V

    :goto_0
    return-void
.end method

.method public final setTemplate(Lcom/narvii/scene/model/TemplateConfig;)V
    .locals 0

    .line 263
    iput-object p1, p0, Lcom/narvii/scene/TemplateListFragment$TemplateViewHolder;->template:Lcom/narvii/scene/model/TemplateConfig;

    return-void
.end method

.method public final updateData(Lcom/narvii/scene/model/TemplateConfig;)V
    .locals 9

    const-string v0, "template"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 270
    iput-object p1, p0, Lcom/narvii/scene/TemplateListFragment$TemplateViewHolder;->template:Lcom/narvii/scene/model/TemplateConfig;

    .line 271
    iget-object v0, p0, Lcom/narvii/scene/TemplateListFragment$TemplateViewHolder;->coverImage:Lcom/narvii/widget/ThumbImageView;

    iget-object v1, p1, Lcom/narvii/scene/model/TemplateConfig;->coverImageUrl:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/narvii/widget/NVImageView;->setImageUrl(Ljava/lang/String;)Z

    .line 273
    new-instance v5, Lcom/narvii/model/Media;

    invoke-direct {v5}, Lcom/narvii/model/Media;-><init>()V

    .line 274
    iget-object v0, p1, Lcom/narvii/scene/model/TemplateConfig;->coverImageUrl:Ljava/lang/String;

    iput-object v0, v5, Lcom/narvii/model/Media;->url:Ljava/lang/String;

    .line 275
    iput-object v0, v5, Lcom/narvii/model/Media;->coverImage:Ljava/lang/String;

    const/16 v0, 0x64

    .line 276
    iput v0, v5, Lcom/narvii/model/Media;->type:I

    .line 279
    new-instance v4, Lcom/narvii/model/Media;

    invoke-direct {v4}, Lcom/narvii/model/Media;-><init>()V

    .line 280
    iget-object v0, p1, Lcom/narvii/scene/model/TemplateConfig;->previewVideoUrl:Ljava/lang/String;

    iput-object v0, v4, Lcom/narvii/model/Media;->url:Ljava/lang/String;

    .line 281
    iget-object p1, p1, Lcom/narvii/scene/model/TemplateConfig;->coverImageUrl:Ljava/lang/String;

    iput-object p1, v4, Lcom/narvii/model/Media;->coverImage:Ljava/lang/String;

    const/16 p1, 0x66

    .line 282
    iput p1, v4, Lcom/narvii/model/Media;->type:I

    .line 284
    iget-object v2, p0, Landroid/support/v7/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    sget v3, Lcom/narvii/mediaeditor/R$id;->cover_image:I

    const/4 v6, 0x0

    const/4 v7, 0x1

    const/4 v8, 0x0

    invoke-static/range {v2 .. v8}, Lcom/narvii/nvplayerview/delegate/NVVideoListDelegate;->markVideoCell(Landroid/view/View;ILcom/narvii/model/Media;Lcom/narvii/model/Media;Lcom/narvii/model/NVObject;IZ)V

    return-void
.end method
