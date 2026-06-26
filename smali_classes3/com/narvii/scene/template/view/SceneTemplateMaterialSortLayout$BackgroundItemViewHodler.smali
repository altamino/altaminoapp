.class public final Lcom/narvii/scene/template/view/SceneTemplateMaterialSortLayout$BackgroundItemViewHodler;
.super Landroid/support/v7/widget/RecyclerView$ViewHolder;
.source "SceneTemplateMaterialSortLayout.kt"


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
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            ")V"
        }
    .end annotation

    const-string v0, "view"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 262
    iput-object p1, p0, Lcom/narvii/scene/template/view/SceneTemplateMaterialSortLayout$BackgroundItemViewHodler;->this$0:Lcom/narvii/scene/template/view/SceneTemplateMaterialSortLayout;

    invoke-direct {p0, p2}, Landroid/support/v7/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 264
    iget-object p1, p0, Landroid/support/v7/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    sget p2, Lcom/narvii/mediaeditor/R$id;->number:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/narvii/scene/template/view/SceneTemplateMaterialSortLayout$BackgroundItemViewHodler;->number:Landroid/widget/TextView;

    return-void
.end method


# virtual methods
.method public final getNumber()Landroid/widget/TextView;
    .locals 1

    .line 264
    iget-object v0, p0, Lcom/narvii/scene/template/view/SceneTemplateMaterialSortLayout$BackgroundItemViewHodler;->number:Landroid/widget/TextView;

    return-object v0
.end method

.method public final update(I)V
    .locals 2

    .line 267
    iget-object v0, p0, Lcom/narvii/scene/template/view/SceneTemplateMaterialSortLayout$BackgroundItemViewHodler;->number:Landroid/widget/TextView;

    const-string v1, "number"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    add-int/lit8 p1, p1, 0x1

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method
