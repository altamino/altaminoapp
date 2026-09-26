.class public final Lcom/narvii/scene/template/view/SceneTemplateMaterialSortLayout$BackgroundItemViewHodler;
.super Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/narvii/scene/template/view/SceneTemplateMaterialSortLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "BackgroundItemViewHodler"
.end annotation


# instance fields
.field private final number:Landroid/widget/TextView;

.field final synthetic this$0:Lcom/narvii/scene/template/view/SceneTemplateMaterialSortLayout;


# direct methods
.method public constructor <init>(Lcom/narvii/scene/template/view/SceneTemplateMaterialSortLayout;Landroid/view/View;)V
    .locals 1
    .param p1    # Lcom/narvii/scene/template/view/SceneTemplateMaterialSortLayout;
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
    iput-object p1, p0, Lcom/narvii/scene/template/view/SceneTemplateMaterialSortLayout$BackgroundItemViewHodler;->this$0:Lcom/narvii/scene/template/view/SceneTemplateMaterialSortLayout;

    .line 9
    .line 10
    .line 11
    invoke-direct {p0, p2}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 12
    .line 13
    iget-object p1, p0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 14
    .line 15
    sget p2, Lcom/narvii/mediaeditor/R$id;->number:I

    .line 16
    .line 17
    .line 18
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 19
    move-result-object p1

    .line 20
    .line 21
    check-cast p1, Landroid/widget/TextView;

    .line 22
    .line 23
    iput-object p1, p0, Lcom/narvii/scene/template/view/SceneTemplateMaterialSortLayout$BackgroundItemViewHodler;->number:Landroid/widget/TextView;

    .line 24
    return-void
.end method


# virtual methods
.method public final getNumber()Landroid/widget/TextView;
    .locals 1

    iget-object v0, p0, Lcom/narvii/scene/template/view/SceneTemplateMaterialSortLayout$BackgroundItemViewHodler;->number:Landroid/widget/TextView;

    return-object v0
.end method

.method public final update(I)V
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/scene/template/view/SceneTemplateMaterialSortLayout$BackgroundItemViewHodler;->number:Landroid/widget/TextView;

    .line 3
    .line 4
    add-int/lit8 p1, p1, 0x1

    .line 5
    .line 6
    .line 7
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 8
    move-result-object p1

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 12
    return-void
.end method
