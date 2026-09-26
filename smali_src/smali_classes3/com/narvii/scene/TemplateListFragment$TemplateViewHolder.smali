.class public final Lcom/narvii/scene/TemplateListFragment$TemplateViewHolder;
.super Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
.source "SourceFile"

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


# instance fields
.field private final coverImage:Lcom/narvii/widget/ThumbImageView;

.field private template:Lcom/narvii/scene/model/TemplateConfig;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field final synthetic this$0:Lcom/narvii/scene/TemplateListFragment;

.field private final videoPlayButton:Lcom/narvii/widget/NVImageView;


# direct methods
.method public constructor <init>(Lcom/narvii/scene/TemplateListFragment;Landroid/view/View;)V
    .locals 1
    .param p1    # Lcom/narvii/scene/TemplateListFragment;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            ")V"
        }
    .end annotation

    .line 1
    .line 2
    .line 3
    const-string/jumbo v0, "view"

    .line 4
    .line 5
    .line 6
    invoke-static {p2, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 7
    .line 8
    iput-object p1, p0, Lcom/narvii/scene/TemplateListFragment$TemplateViewHolder;->this$0:Lcom/narvii/scene/TemplateListFragment;

    .line 9
    .line 10
    .line 11
    invoke-direct {p0, p2}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 12
    .line 13
    iget-object p1, p0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 14
    .line 15
    sget p2, Lcom/narvii/mediaeditor/R$id;->cover_image:I

    .line 16
    .line 17
    .line 18
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 19
    move-result-object p1

    .line 20
    .line 21
    check-cast p1, Lcom/narvii/widget/ThumbImageView;

    .line 22
    .line 23
    iput-object p1, p0, Lcom/narvii/scene/TemplateListFragment$TemplateViewHolder;->coverImage:Lcom/narvii/widget/ThumbImageView;

    .line 24
    .line 25
    iget-object p2, p0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 26
    .line 27
    sget v0, Lcom/narvii/mediaeditor/R$id;->video_play_button:I

    .line 28
    .line 29
    .line 30
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 31
    move-result-object p2

    .line 32
    .line 33
    check-cast p2, Lcom/narvii/widget/NVImageView;

    .line 34
    .line 35
    iput-object p2, p0, Lcom/narvii/scene/TemplateListFragment$TemplateViewHolder;->videoPlayButton:Lcom/narvii/widget/NVImageView;

    .line 36
    .line 37
    .line 38
    invoke-virtual {p1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 39
    return-void
.end method


# virtual methods
.method public final getCoverImage()Lcom/narvii/widget/ThumbImageView;
    .locals 1

    iget-object v0, p0, Lcom/narvii/scene/TemplateListFragment$TemplateViewHolder;->coverImage:Lcom/narvii/widget/ThumbImageView;

    return-object v0
.end method

.method public final getTemplate()Lcom/narvii/scene/model/TemplateConfig;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/narvii/scene/TemplateListFragment$TemplateViewHolder;->template:Lcom/narvii/scene/model/TemplateConfig;

    return-object v0
.end method

.method public final getVideoPlayButton()Lcom/narvii/widget/NVImageView;
    .locals 1

    iget-object v0, p0, Lcom/narvii/scene/TemplateListFragment$TemplateViewHolder;->videoPlayButton:Lcom/narvii/widget/NVImageView;

    return-object v0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1    # Landroid/view/View;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    .line 2
    .line 3
    invoke-static {}, Lcom/narvii/app/NVApplication;->instance()Lcom/narvii/app/NVApplication;

    .line 4
    move-result-object p1

    .line 5
    .line 6
    .line 7
    invoke-static {p1}, Lcom/narvii/nvplayer/NVPlayerManager;->getNVPlayer(Landroid/content/Context;)Lcom/narvii/nvplayer/INVPlayer;

    .line 8
    move-result-object p1

    .line 9
    .line 10
    .line 11
    invoke-interface {p1}, Lcom/narvii/nvplayer/INVPlayer;->getPlayWhenReady()Z

    .line 12
    move-result v0

    .line 13
    const/4 v1, 0x1

    .line 14
    .line 15
    if-nez v0, :cond_0

    .line 16
    .line 17
    iget-object p1, p0, Lcom/narvii/scene/TemplateListFragment$TemplateViewHolder;->this$0:Lcom/narvii/scene/TemplateListFragment;

    .line 18
    .line 19
    .line 20
    invoke-virtual {p1, v1}, Lcom/narvii/scene/TemplateListFragment;->setAutoPlaying(Z)V

    .line 21
    .line 22
    iget-object p1, p0, Lcom/narvii/scene/TemplateListFragment$TemplateViewHolder;->this$0:Lcom/narvii/scene/TemplateListFragment;

    .line 23
    .line 24
    .line 25
    invoke-virtual {p1}, Lcom/narvii/paging/NVRecyclerViewFragment;->getVideoListDelegate()Lcom/narvii/nvplayerview/delegate/IVideoListDelegate;

    .line 26
    move-result-object p1

    .line 27
    .line 28
    const-string v0, "null cannot be cast to non-null type com.narvii.nvplayerview.delegate.NVVideoListDelegate"

    .line 29
    .line 30
    .line 31
    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 32
    .line 33
    check-cast p1, Lcom/narvii/nvplayerview/delegate/NVVideoListDelegate;

    .line 34
    .line 35
    .line 36
    invoke-virtual {p1}, Lcom/narvii/nvplayerview/delegate/NVVideoListDelegate;->refreshPlayerPosition()V

    .line 37
    goto :goto_0

    .line 38
    .line 39
    .line 40
    :cond_0
    invoke-interface {p1}, Lcom/narvii/nvplayer/INVPlayer;->getPlayWhenReady()Z

    .line 41
    move-result v0

    .line 42
    xor-int/2addr v0, v1

    .line 43
    .line 44
    .line 45
    invoke-interface {p1, v0}, Lcom/narvii/nvplayer/INVPlayer;->setPlayWhenReady(Z)V

    .line 46
    .line 47
    iget-object v0, p0, Lcom/narvii/scene/TemplateListFragment$TemplateViewHolder;->this$0:Lcom/narvii/scene/TemplateListFragment;

    .line 48
    .line 49
    .line 50
    invoke-interface {p1}, Lcom/narvii/nvplayer/INVPlayer;->getPlayWhenReady()Z

    .line 51
    move-result p1

    .line 52
    .line 53
    .line 54
    invoke-virtual {v0, p1}, Lcom/narvii/scene/TemplateListFragment;->setAutoPlaying(Z)V

    .line 55
    :goto_0
    return-void
.end method

.method public final setTemplate(Lcom/narvii/scene/model/TemplateConfig;)V
    .locals 0
    .param p1    # Lcom/narvii/scene/model/TemplateConfig;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/narvii/scene/TemplateListFragment$TemplateViewHolder;->template:Lcom/narvii/scene/model/TemplateConfig;

    return-void
.end method

.method public final updateData(Lcom/narvii/scene/model/TemplateConfig;)V
    .locals 9
    .param p1    # Lcom/narvii/scene/model/TemplateConfig;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    .line 2
    .line 3
    const-string/jumbo v0, "template"

    .line 4
    .line 5
    .line 6
    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 7
    .line 8
    iput-object p1, p0, Lcom/narvii/scene/TemplateListFragment$TemplateViewHolder;->template:Lcom/narvii/scene/model/TemplateConfig;

    .line 9
    .line 10
    iget-object v0, p0, Lcom/narvii/scene/TemplateListFragment$TemplateViewHolder;->coverImage:Lcom/narvii/widget/ThumbImageView;

    .line 11
    .line 12
    iget-object v1, p1, Lcom/narvii/scene/model/TemplateConfig;->coverImageUrl:Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    invoke-virtual {v0, v1}, Lcom/narvii/widget/NVImageView;->setImageUrl(Ljava/lang/String;)Z

    .line 16
    .line 17
    new-instance v5, Lcom/narvii/model/Media;

    .line 18
    .line 19
    .line 20
    invoke-direct {v5}, Lcom/narvii/model/Media;-><init>()V

    .line 21
    .line 22
    iget-object v0, p1, Lcom/narvii/scene/model/TemplateConfig;->coverImageUrl:Ljava/lang/String;

    .line 23
    .line 24
    iput-object v0, v5, Lcom/narvii/model/Media;->url:Ljava/lang/String;

    .line 25
    .line 26
    iput-object v0, v5, Lcom/narvii/model/Media;->coverImage:Ljava/lang/String;

    .line 27
    .line 28
    const/16 v0, 0x64

    .line 29
    .line 30
    iput v0, v5, Lcom/narvii/model/Media;->type:I

    .line 31
    .line 32
    new-instance v4, Lcom/narvii/model/Media;

    .line 33
    .line 34
    .line 35
    invoke-direct {v4}, Lcom/narvii/model/Media;-><init>()V

    .line 36
    .line 37
    iget-object v0, p1, Lcom/narvii/scene/model/TemplateConfig;->previewVideoUrl:Ljava/lang/String;

    .line 38
    .line 39
    iput-object v0, v4, Lcom/narvii/model/Media;->url:Ljava/lang/String;

    .line 40
    .line 41
    iget-object p1, p1, Lcom/narvii/scene/model/TemplateConfig;->coverImageUrl:Ljava/lang/String;

    .line 42
    .line 43
    iput-object p1, v4, Lcom/narvii/model/Media;->coverImage:Ljava/lang/String;

    .line 44
    .line 45
    const/16 p1, 0x66

    .line 46
    .line 47
    iput p1, v4, Lcom/narvii/model/Media;->type:I

    .line 48
    .line 49
    iget-object v2, p0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 50
    .line 51
    sget v3, Lcom/narvii/mediaeditor/R$id;->cover_image:I

    .line 52
    const/4 v6, 0x0

    .line 53
    const/4 v7, 0x1

    .line 54
    const/4 v8, 0x0

    .line 55
    .line 56
    .line 57
    invoke-static/range {v2 .. v8}, Lcom/narvii/nvplayerview/delegate/NVVideoListDelegate;->markVideoCell(Landroid/view/View;ILcom/narvii/model/Media;Lcom/narvii/model/Media;Lcom/narvii/model/NVObject;IZ)V

    .line 58
    return-void
.end method
