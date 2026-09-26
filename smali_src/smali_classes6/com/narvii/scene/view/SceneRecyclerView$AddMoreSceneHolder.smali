.class Lcom/narvii/scene/view/SceneRecyclerView$AddMoreSceneHolder;
.super Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
.source "SourceFile"


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

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/scene/view/SceneRecyclerView$AddMoreSceneHolder;->this$0:Lcom/narvii/scene/view/SceneRecyclerView;

    .line 3
    .line 4
    .line 5
    invoke-direct {p0, p2}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 6
    .line 7
    sget v0, Lcom/narvii/mediaeditor/R$id;->iv_add:I

    .line 8
    .line 9
    .line 10
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 11
    move-result-object v0

    .line 12
    .line 13
    check-cast v0, Landroid/widget/ImageView;

    .line 14
    .line 15
    iput-object v0, p0, Lcom/narvii/scene/view/SceneRecyclerView$AddMoreSceneHolder;->ivAdd:Landroid/widget/ImageView;

    .line 16
    .line 17
    new-instance v0, Lcom/narvii/util/OnPreventRepeatedClickListener;

    .line 18
    .line 19
    new-instance v1, Lcom/narvii/scene/view/SceneRecyclerView$AddMoreSceneHolder$1;

    .line 20
    .line 21
    .line 22
    invoke-direct {v1, p0, p1}, Lcom/narvii/scene/view/SceneRecyclerView$AddMoreSceneHolder$1;-><init>(Lcom/narvii/scene/view/SceneRecyclerView$AddMoreSceneHolder;Lcom/narvii/scene/view/SceneRecyclerView;)V

    .line 23
    .line 24
    const/16 p1, 0xc8

    .line 25
    .line 26
    .line 27
    invoke-direct {v0, v1, p1}, Lcom/narvii/util/OnPreventRepeatedClickListener;-><init>(Landroid/view/View$OnClickListener;I)V

    .line 28
    .line 29
    .line 30
    invoke-virtual {p2, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 31
    return-void
.end method
