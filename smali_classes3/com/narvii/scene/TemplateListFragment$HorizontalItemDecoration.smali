.class public final Lcom/narvii/scene/TemplateListFragment$HorizontalItemDecoration;
.super Landroid/support/v7/widget/RecyclerView$ItemDecoration;
.source "TemplateListFragment.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/narvii/scene/TemplateListFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "HorizontalItemDecoration"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/scene/TemplateListFragment;


# direct methods
.method public constructor <init>(Lcom/narvii/scene/TemplateListFragment;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 358
    iput-object p1, p0, Lcom/narvii/scene/TemplateListFragment$HorizontalItemDecoration;->this$0:Lcom/narvii/scene/TemplateListFragment;

    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView$ItemDecoration;-><init>()V

    return-void
.end method


# virtual methods
.method public getItemOffsets(Landroid/graphics/Rect;Landroid/view/View;Landroid/support/v7/widget/RecyclerView;Landroid/support/v7/widget/RecyclerView$State;)V
    .locals 3

    const-string v0, "outRect"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "view"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "parent"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "state"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 361
    invoke-super {p0, p1, p2, p3, p4}, Landroid/support/v7/widget/RecyclerView$ItemDecoration;->getItemOffsets(Landroid/graphics/Rect;Landroid/view/View;Landroid/support/v7/widget/RecyclerView;Landroid/support/v7/widget/RecyclerView$State;)V

    .line 362
    invoke-virtual {p3, p2}, Landroid/support/v7/widget/RecyclerView;->getChildAdapterPosition(Landroid/view/View;)I

    move-result p2

    .line 363
    iget-object p3, p0, Lcom/narvii/scene/TemplateListFragment$HorizontalItemDecoration;->this$0:Lcom/narvii/scene/TemplateListFragment;

    invoke-virtual {p3}, Lcom/narvii/scene/TemplateListFragment;->getTemplateList()Ljava/util/List;

    move-result-object p3

    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result p3

    const/high16 p4, 0x41700000    # 15.0f

    if-nez p2, :cond_0

    .line 366
    iget-object v0, p0, Lcom/narvii/scene/TemplateListFragment$HorizontalItemDecoration;->this$0:Lcom/narvii/scene/TemplateListFragment;

    invoke-virtual {v0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/narvii/util/Utils;->getScreenWidth(Landroid/content/Context;)I

    move-result v0

    iget-object v1, p0, Lcom/narvii/scene/TemplateListFragment$HorizontalItemDecoration;->this$0:Lcom/narvii/scene/TemplateListFragment;

    invoke-static {v1}, Lcom/narvii/scene/TemplateListFragment;->access$getItemContentWidth(Lcom/narvii/scene/TemplateListFragment;)I

    move-result v1

    sub-int/2addr v0, v1

    div-int/lit8 v0, v0, 0x2

    goto :goto_0

    .line 368
    :cond_0
    invoke-static {}, Lcom/narvii/app/NVApplication;->instance()Lcom/narvii/app/NVApplication;

    move-result-object v0

    invoke-static {v0, p4}, Lcom/narvii/util/Utils;->dpToPx(Landroid/content/Context;F)F

    move-result v0

    float-to-int v0, v0

    :goto_0
    add-int/lit8 p3, p3, -0x1

    if-ne p2, p3, :cond_1

    .line 371
    iget-object p2, p0, Lcom/narvii/scene/TemplateListFragment$HorizontalItemDecoration;->this$0:Lcom/narvii/scene/TemplateListFragment;

    invoke-virtual {p2}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Lcom/narvii/util/Utils;->getScreenWidth(Landroid/content/Context;)I

    move-result p2

    iget-object p3, p0, Lcom/narvii/scene/TemplateListFragment$HorizontalItemDecoration;->this$0:Lcom/narvii/scene/TemplateListFragment;

    invoke-static {p3}, Lcom/narvii/scene/TemplateListFragment;->access$getItemContentWidth(Lcom/narvii/scene/TemplateListFragment;)I

    move-result p3

    sub-int/2addr p2, p3

    div-int/lit8 p2, p2, 0x2

    goto :goto_1

    .line 373
    :cond_1
    invoke-static {}, Lcom/narvii/app/NVApplication;->instance()Lcom/narvii/app/NVApplication;

    move-result-object p2

    invoke-static {p2, p4}, Lcom/narvii/util/Utils;->dpToPx(Landroid/content/Context;F)F

    move-result p2

    float-to-int p2, p2

    .line 376
    :goto_1
    invoke-static {}, Lcom/narvii/util/Utils;->isRtl()Z

    move-result p3

    if-eqz p3, :cond_2

    goto :goto_2

    :cond_2
    move v2, v0

    move v0, p2

    move p2, v2

    :goto_2
    const/4 p3, 0x0

    .line 381
    invoke-virtual {p1, p2, p3, v0, p3}, Landroid/graphics/Rect;->set(IIII)V

    return-void
.end method
