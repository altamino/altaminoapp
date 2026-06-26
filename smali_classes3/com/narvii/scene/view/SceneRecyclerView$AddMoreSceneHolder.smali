.class Lcom/narvii/scene/view/SceneRecyclerView$AddMoreSceneHolder;
.super Landroid/support/v7/widget/RecyclerView$ViewHolder;
.source "SceneRecyclerView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/narvii/scene/view/SceneRecyclerView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AddMoreSceneHolder"
.end annotation


# instance fields
.field ivAdd:Landroid/widget/ImageView;

.field final synthetic this$0:Lcom/narvii/scene/view/SceneRecyclerView;


# direct methods
.method public constructor <init>(Lcom/narvii/scene/view/SceneRecyclerView;Landroid/view/View;)V
    .locals 2

    .line 521
    iput-object p1, p0, Lcom/narvii/scene/view/SceneRecyclerView$AddMoreSceneHolder;->this$0:Lcom/narvii/scene/view/SceneRecyclerView;

    .line 522
    invoke-direct {p0, p2}, Landroid/support/v7/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 523
    sget v0, Lcom/narvii/mediaeditor/R$id;->iv_add:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/narvii/scene/view/SceneRecyclerView$AddMoreSceneHolder;->ivAdd:Landroid/widget/ImageView;

    .line 525
    new-instance v0, Lcom/narvii/util/OnPreventRepeatedClickListener;

    new-instance v1, Lcom/narvii/scene/view/SceneRecyclerView$AddMoreSceneHolder$1;

    invoke-direct {v1, p0, p1}, Lcom/narvii/scene/view/SceneRecyclerView$AddMoreSceneHolder$1;-><init>(Lcom/narvii/scene/view/SceneRecyclerView$AddMoreSceneHolder;Lcom/narvii/scene/view/SceneRecyclerView;)V

    const/16 p1, 0xc8

    invoke-direct {v0, v1, p1}, Lcom/narvii/util/OnPreventRepeatedClickListener;-><init>(Landroid/view/View$OnClickListener;I)V

    invoke-virtual {p2, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method
