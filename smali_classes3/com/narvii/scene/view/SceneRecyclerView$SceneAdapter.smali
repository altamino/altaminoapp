.class Lcom/narvii/scene/view/SceneRecyclerView$SceneAdapter;
.super Landroid/support/v7/widget/RecyclerView$Adapter;
.source "SceneRecyclerView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/narvii/scene/view/SceneRecyclerView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "SceneAdapter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/support/v7/widget/RecyclerView$Adapter<",
        "Landroid/support/v7/widget/RecyclerView$ViewHolder;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/scene/view/SceneRecyclerView;


# direct methods
.method constructor <init>(Lcom/narvii/scene/view/SceneRecyclerView;)V
    .locals 0

    .line 240
    iput-object p1, p0, Lcom/narvii/scene/view/SceneRecyclerView$SceneAdapter;->this$0:Lcom/narvii/scene/view/SceneRecyclerView;

    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView$Adapter;-><init>()V

    return-void
.end method


# virtual methods
.method public getItemCount()I
    .locals 2

    .line 306
    iget-object v0, p0, Lcom/narvii/scene/view/SceneRecyclerView$SceneAdapter;->this$0:Lcom/narvii/scene/view/SceneRecyclerView;

    invoke-static {v0}, Lcom/narvii/scene/view/SceneRecyclerView;->access$000(Lcom/narvii/scene/view/SceneRecyclerView;)Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Lcom/narvii/util/CollectionUtils;->getSize(Ljava/util/List;)I

    move-result v0

    const/16 v1, 0xa

    if-ge v0, v1, :cond_1

    .line 307
    iget-object v1, p0, Lcom/narvii/scene/view/SceneRecyclerView$SceneAdapter;->this$0:Lcom/narvii/scene/view/SceneRecyclerView;

    invoke-static {v1}, Lcom/narvii/scene/view/SceneRecyclerView;->access$100(Lcom/narvii/scene/view/SceneRecyclerView;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    :cond_1
    :goto_0
    return v0
.end method

.method public getItemViewType(I)I
    .locals 1

    const/16 v0, 0xa

    if-gt p1, v0, :cond_0

    .line 312
    iget-object v0, p0, Lcom/narvii/scene/view/SceneRecyclerView$SceneAdapter;->this$0:Lcom/narvii/scene/view/SceneRecyclerView;

    invoke-static {v0}, Lcom/narvii/scene/view/SceneRecyclerView;->access$000(Lcom/narvii/scene/view/SceneRecyclerView;)Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Lcom/narvii/util/CollectionUtils;->getSize(Ljava/util/List;)I

    move-result v0

    if-ne p1, v0, :cond_0

    iget-object p1, p0, Lcom/narvii/scene/view/SceneRecyclerView$SceneAdapter;->this$0:Lcom/narvii/scene/view/SceneRecyclerView;

    invoke-static {p1}, Lcom/narvii/scene/view/SceneRecyclerView;->access$100(Lcom/narvii/scene/view/SceneRecyclerView;)Z

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public onBindViewHolder(Landroid/support/v7/widget/RecyclerView$ViewHolder;I)V
    .locals 7

    .line 253
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onBindViewHolder  >>> position = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SceneRecyclerView"

    invoke-static {v1, v0}, Lcom/narvii/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 254
    instance-of v0, p1, Lcom/narvii/scene/view/SceneRecyclerView$SceneHolder;

    const/16 v1, 0x11

    const/high16 v2, 0x41800000    # 16.0f

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz v0, :cond_b

    .line 255
    iget-object v0, p0, Lcom/narvii/scene/view/SceneRecyclerView$SceneAdapter;->this$0:Lcom/narvii/scene/view/SceneRecyclerView;

    invoke-static {v0}, Lcom/narvii/scene/view/SceneRecyclerView;->access$000(Lcom/narvii/scene/view/SceneRecyclerView;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/narvii/scene/SceneWrapper;

    .line 256
    check-cast p1, Lcom/narvii/scene/view/SceneRecyclerView$SceneHolder;

    invoke-virtual {p0}, Lcom/narvii/scene/view/SceneRecyclerView$SceneAdapter;->getItemCount()I

    move-result v5

    sub-int/2addr v5, v4

    if-eq p2, v5, :cond_0

    const/4 v5, 0x1

    goto :goto_0

    :cond_0
    const/4 v5, 0x0

    :goto_0
    invoke-virtual {p1, v5}, Lcom/narvii/scene/view/SceneRecyclerView$SceneHolder;->showSplit(Z)V

    .line 257
    invoke-virtual {p1, v0}, Lcom/narvii/scene/view/SceneRecyclerView$SceneHolder;->setSceneWrapper(Lcom/narvii/scene/SceneWrapper;)V

    .line 260
    iget-object v5, p1, Landroid/support/v7/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    check-cast v5, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 261
    sget v6, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v6, v1, :cond_3

    .line 262
    iget-object v1, p0, Lcom/narvii/scene/view/SceneRecyclerView$SceneAdapter;->this$0:Lcom/narvii/scene/view/SceneRecyclerView;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    if-nez p2, :cond_1

    const/high16 v6, 0x41800000    # 16.0f

    goto :goto_1

    :cond_1
    const/4 v6, 0x0

    :goto_1
    invoke-static {v1, v6}, Lcom/narvii/util/Utils;->dpToPx(Landroid/content/Context;F)F

    move-result v1

    float-to-int v1, v1

    invoke-virtual {v5, v1}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginStart(I)V

    .line 263
    iget-object v1, p0, Lcom/narvii/scene/view/SceneRecyclerView$SceneAdapter;->this$0:Lcom/narvii/scene/view/SceneRecyclerView;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p0}, Lcom/narvii/scene/view/SceneRecyclerView$SceneAdapter;->getItemCount()I

    move-result v6

    sub-int/2addr v6, v4

    if-ne p2, v6, :cond_2

    goto :goto_2

    :cond_2
    const/4 v2, 0x0

    :goto_2
    invoke-static {v1, v2}, Lcom/narvii/util/Utils;->dpToPx(Landroid/content/Context;F)F

    move-result p2

    float-to-int p2, p2

    invoke-virtual {v5, p2}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginEnd(I)V

    goto :goto_5

    .line 265
    :cond_3
    iget-object v1, p0, Lcom/narvii/scene/view/SceneRecyclerView$SceneAdapter;->this$0:Lcom/narvii/scene/view/SceneRecyclerView;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    if-nez p2, :cond_4

    const/high16 v6, 0x41800000    # 16.0f

    goto :goto_3

    :cond_4
    const/4 v6, 0x0

    :goto_3
    invoke-static {v1, v6}, Lcom/narvii/util/Utils;->dpToPx(Landroid/content/Context;F)F

    move-result v1

    float-to-int v1, v1

    iput v1, v5, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 266
    iget-object v1, p0, Lcom/narvii/scene/view/SceneRecyclerView$SceneAdapter;->this$0:Lcom/narvii/scene/view/SceneRecyclerView;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p0}, Lcom/narvii/scene/view/SceneRecyclerView$SceneAdapter;->getItemCount()I

    move-result v6

    sub-int/2addr v6, v4

    if-ne p2, v6, :cond_5

    goto :goto_4

    :cond_5
    const/4 v2, 0x0

    :goto_4
    invoke-static {v1, v2}, Lcom/narvii/util/Utils;->dpToPx(Landroid/content/Context;F)F

    move-result p2

    float-to-int p2, p2

    iput p2, v5, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    .line 268
    :goto_5
    iget-object p2, p1, Lcom/narvii/scene/view/SceneRecyclerView$SceneHolder;->sceneView:Lcom/narvii/scene/view/NVSceneView;

    invoke-virtual {p2}, Landroid/widget/RelativeLayout;->requestLayout()V

    if-eqz v0, :cond_f

    .line 272
    invoke-virtual {v0}, Lcom/narvii/scene/SceneWrapper;->getAttachDataStatus()I

    move-result p2

    if-eqz p2, :cond_a

    if-eq p2, v4, :cond_9

    const/4 v0, 0x2

    if-eq p2, v0, :cond_8

    const/4 v0, 0x3

    if-eq p2, v0, :cond_7

    const/4 v0, 0x4

    if-eq p2, v0, :cond_6

    goto/16 :goto_9

    .line 286
    :cond_6
    iget-object p1, p1, Lcom/narvii/scene/view/SceneRecyclerView$SceneHolder;->attached:Landroid/widget/ImageView;

    sget p2, Lcom/narvii/mediaeditor/R$drawable;->ic_scene_attach_poll_uneditable:I

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_9

    .line 280
    :cond_7
    iget-object p1, p1, Lcom/narvii/scene/view/SceneRecyclerView$SceneHolder;->attached:Landroid/widget/ImageView;

    sget p2, Lcom/narvii/mediaeditor/R$drawable;->ic_scene_attach_poll:I

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_9

    .line 283
    :cond_8
    iget-object p1, p1, Lcom/narvii/scene/view/SceneRecyclerView$SceneHolder;->attached:Landroid/widget/ImageView;

    sget p2, Lcom/narvii/mediaeditor/R$drawable;->ic_scene_attach_quiz:I

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_9

    .line 277
    :cond_9
    iget-object p1, p1, Lcom/narvii/scene/view/SceneRecyclerView$SceneHolder;->attached:Landroid/widget/ImageView;

    sget p2, Lcom/narvii/mediaeditor/R$drawable;->ic_scene_attach:I

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_9

    .line 274
    :cond_a
    iget-object p1, p1, Lcom/narvii/scene/view/SceneRecyclerView$SceneHolder;->attached:Landroid/widget/ImageView;

    sget p2, Lcom/narvii/mediaeditor/R$drawable;->ic_scene_attach_empty:I

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_9

    .line 292
    :cond_b
    instance-of v0, p1, Lcom/narvii/scene/view/SceneRecyclerView$AddMoreSceneHolder;

    if-eqz v0, :cond_f

    .line 293
    check-cast p1, Lcom/narvii/scene/view/SceneRecyclerView$AddMoreSceneHolder;

    iget-object v0, p1, Lcom/narvii/scene/view/SceneRecyclerView$AddMoreSceneHolder;->ivAdd:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    .line 294
    sget v5, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v5, v1, :cond_d

    .line 295
    iget-object v1, p0, Lcom/narvii/scene/view/SceneRecyclerView$SceneAdapter;->this$0:Lcom/narvii/scene/view/SceneRecyclerView;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p0}, Lcom/narvii/scene/view/SceneRecyclerView$SceneAdapter;->getItemCount()I

    move-result v5

    sub-int/2addr v5, v4

    if-ne p2, v5, :cond_c

    goto :goto_6

    :cond_c
    const/4 v2, 0x0

    :goto_6
    invoke-static {v1, v2}, Lcom/narvii/util/Utils;->dpToPx(Landroid/content/Context;F)F

    move-result p2

    float-to-int p2, p2

    invoke-virtual {v0, p2}, Landroid/widget/LinearLayout$LayoutParams;->setMarginEnd(I)V

    goto :goto_8

    .line 297
    :cond_d
    iget-object v1, p0, Lcom/narvii/scene/view/SceneRecyclerView$SceneAdapter;->this$0:Lcom/narvii/scene/view/SceneRecyclerView;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p0}, Lcom/narvii/scene/view/SceneRecyclerView$SceneAdapter;->getItemCount()I

    move-result v5

    sub-int/2addr v5, v4

    if-ne p2, v5, :cond_e

    goto :goto_7

    :cond_e
    const/4 v2, 0x0

    :goto_7
    invoke-static {v1, v2}, Lcom/narvii/util/Utils;->dpToPx(Landroid/content/Context;F)F

    move-result p2

    float-to-int p2, p2

    iput p2, v0, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    .line 299
    :goto_8
    iget-object p1, p1, Lcom/narvii/scene/view/SceneRecyclerView$AddMoreSceneHolder;->ivAdd:Landroid/widget/ImageView;

    invoke-virtual {p1}, Landroid/widget/ImageView;->requestLayout()V

    :cond_f
    :goto_9
    return-void
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .locals 4

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-ne p2, v1, :cond_0

    .line 246
    new-instance p2, Lcom/narvii/scene/view/SceneRecyclerView$AddMoreSceneHolder;

    iget-object v1, p0, Lcom/narvii/scene/view/SceneRecyclerView$SceneAdapter;->this$0:Lcom/narvii/scene/view/SceneRecyclerView;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    sget v3, Lcom/narvii/mediaeditor/R$layout;->story_recycler_scene_add_more_item:I

    invoke-virtual {v2, v3, p1, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    invoke-direct {p2, v1, p1}, Lcom/narvii/scene/view/SceneRecyclerView$AddMoreSceneHolder;-><init>(Lcom/narvii/scene/view/SceneRecyclerView;Landroid/view/View;)V

    return-object p2

    .line 248
    :cond_0
    new-instance p2, Lcom/narvii/scene/view/SceneRecyclerView$SceneHolder;

    iget-object v1, p0, Lcom/narvii/scene/view/SceneRecyclerView$SceneAdapter;->this$0:Lcom/narvii/scene/view/SceneRecyclerView;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    sget v3, Lcom/narvii/mediaeditor/R$layout;->story_recycler_scene_item:I

    invoke-virtual {v2, v3, p1, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    invoke-direct {p2, v1, p1}, Lcom/narvii/scene/view/SceneRecyclerView$SceneHolder;-><init>(Lcom/narvii/scene/view/SceneRecyclerView;Landroid/view/View;)V

    return-object p2
.end method
