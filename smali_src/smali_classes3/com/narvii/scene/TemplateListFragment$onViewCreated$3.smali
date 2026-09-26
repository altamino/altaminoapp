.class public final Lcom/narvii/scene/TemplateListFragment$onViewCreated$3;
.super Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/scene/TemplateListFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nTemplateListFragment.kt\nKotlin\n*S Kotlin\n*F\n+ 1 TemplateListFragment.kt\ncom/narvii/scene/TemplateListFragment$onViewCreated$3\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,475:1\n1#2:476\n*E\n"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/scene/TemplateListFragment;


# direct methods
.method constructor <init>(Lcom/narvii/scene/TemplateListFragment;)V
    .locals 0

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/scene/TemplateListFragment$onViewCreated$3;->this$0:Lcom/narvii/scene/TemplateListFragment;

    .line 3
    .line 4
    .line 5
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;-><init>()V

    .line 6
    return-void
.end method


# virtual methods
.method public onScrollStateChanged(Landroidx/recyclerview/widget/RecyclerView;I)V
    .locals 1
    .param p1    # Landroidx/recyclerview/widget/RecyclerView;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    .line 2
    const-string v0, "recyclerView"

    .line 3
    .line 4
    .line 5
    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-super {p0, p1, p2}, Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;->onScrollStateChanged(Landroidx/recyclerview/widget/RecyclerView;I)V

    .line 9
    .line 10
    if-nez p2, :cond_1

    .line 11
    .line 12
    iget-object p1, p0, Lcom/narvii/scene/TemplateListFragment$onViewCreated$3;->this$0:Lcom/narvii/scene/TemplateListFragment;

    .line 13
    .line 14
    .line 15
    invoke-static {p1}, Lcom/narvii/scene/TemplateListFragment;->access$getSnapHelper$p$s-1314462008(Lcom/narvii/scene/TemplateListFragment;)Landroidx/recyclerview/widget/SnapHelper;

    .line 16
    move-result-object p1

    .line 17
    .line 18
    iget-object p2, p0, Lcom/narvii/scene/TemplateListFragment$onViewCreated$3;->this$0:Lcom/narvii/scene/TemplateListFragment;

    .line 19
    .line 20
    .line 21
    invoke-virtual {p2}, Lcom/narvii/scene/TemplateListFragment;->getLinearLayoutManager()Landroidx/recyclerview/widget/LinearLayoutManager;

    .line 22
    move-result-object p2

    .line 23
    .line 24
    .line 25
    invoke-virtual {p1, p2}, Landroidx/recyclerview/widget/SnapHelper;->h(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)Landroid/view/View;

    .line 26
    move-result-object p1

    .line 27
    .line 28
    iget-object p2, p0, Lcom/narvii/scene/TemplateListFragment$onViewCreated$3;->this$0:Lcom/narvii/scene/TemplateListFragment;

    .line 29
    .line 30
    if-eqz p1, :cond_0

    .line 31
    .line 32
    .line 33
    invoke-virtual {p2}, Lcom/narvii/scene/TemplateListFragment;->getLinearLayoutManager()Landroidx/recyclerview/widget/LinearLayoutManager;

    .line 34
    move-result-object v0

    .line 35
    .line 36
    .line 37
    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getPosition(Landroid/view/View;)I

    .line 38
    move-result p1

    .line 39
    goto :goto_0

    .line 40
    :cond_0
    const/4 p1, -0x1

    .line 41
    .line 42
    .line 43
    :goto_0
    invoke-virtual {p2, p1}, Lcom/narvii/scene/TemplateListFragment;->setSelectedPosition(I)V

    .line 44
    .line 45
    iget-object p1, p0, Lcom/narvii/scene/TemplateListFragment$onViewCreated$3;->this$0:Lcom/narvii/scene/TemplateListFragment;

    .line 46
    .line 47
    .line 48
    invoke-static {p1}, Lcom/narvii/scene/TemplateListFragment;->access$updateTitle(Lcom/narvii/scene/TemplateListFragment;)V

    .line 49
    :cond_1
    return-void
.end method

.method public onScrolled(Landroidx/recyclerview/widget/RecyclerView;II)V
    .locals 1
    .param p1    # Landroidx/recyclerview/widget/RecyclerView;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    .line 2
    const-string v0, "recyclerView"

    .line 3
    .line 4
    .line 5
    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-super {p0, p1, p2, p3}, Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;->onScrolled(Landroidx/recyclerview/widget/RecyclerView;II)V

    .line 9
    .line 10
    .line 11
    invoke-static {}, Lcom/narvii/util/Utils;->isRtl()Z

    .line 12
    move-result p1

    .line 13
    .line 14
    if-eqz p1, :cond_0

    .line 15
    .line 16
    iget-object p1, p0, Lcom/narvii/scene/TemplateListFragment$onViewCreated$3;->this$0:Lcom/narvii/scene/TemplateListFragment;

    .line 17
    .line 18
    .line 19
    invoke-virtual {p1}, Lcom/narvii/scene/TemplateListFragment;->getScrollX()I

    .line 20
    move-result p3

    .line 21
    sub-int/2addr p3, p2

    .line 22
    .line 23
    .line 24
    invoke-virtual {p1, p3}, Lcom/narvii/scene/TemplateListFragment;->setScrollX(I)V

    .line 25
    goto :goto_0

    .line 26
    .line 27
    :cond_0
    iget-object p1, p0, Lcom/narvii/scene/TemplateListFragment$onViewCreated$3;->this$0:Lcom/narvii/scene/TemplateListFragment;

    .line 28
    .line 29
    .line 30
    invoke-virtual {p1}, Lcom/narvii/scene/TemplateListFragment;->getScrollX()I

    .line 31
    move-result p3

    .line 32
    add-int/2addr p3, p2

    .line 33
    .line 34
    .line 35
    invoke-virtual {p1, p3}, Lcom/narvii/scene/TemplateListFragment;->setScrollX(I)V

    .line 36
    .line 37
    :goto_0
    iget-object p1, p0, Lcom/narvii/scene/TemplateListFragment$onViewCreated$3;->this$0:Lcom/narvii/scene/TemplateListFragment;

    .line 38
    .line 39
    .line 40
    invoke-static {p1}, Lcom/narvii/scene/TemplateListFragment;->access$getItemContentWidth(Lcom/narvii/scene/TemplateListFragment;)I

    .line 41
    move-result p1

    .line 42
    int-to-float p1, p1

    .line 43
    .line 44
    iget-object p2, p0, Lcom/narvii/scene/TemplateListFragment$onViewCreated$3;->this$0:Lcom/narvii/scene/TemplateListFragment;

    .line 45
    .line 46
    .line 47
    invoke-virtual {p2}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    .line 48
    move-result-object p2

    .line 49
    .line 50
    const/high16 p3, 0x41f00000    # 30.0f

    .line 51
    .line 52
    .line 53
    invoke-static {p2, p3}, Lcom/narvii/util/Utils;->dpToPx(Landroid/content/Context;F)F

    .line 54
    move-result p2

    .line 55
    add-float/2addr p1, p2

    .line 56
    float-to-int p1, p1

    .line 57
    .line 58
    iget-object p2, p0, Lcom/narvii/scene/TemplateListFragment$onViewCreated$3;->this$0:Lcom/narvii/scene/TemplateListFragment;

    .line 59
    .line 60
    .line 61
    invoke-virtual {p2}, Lcom/narvii/scene/TemplateListFragment;->getScrollX()I

    .line 62
    move-result p3

    .line 63
    .line 64
    .line 65
    invoke-static {p2, p3, p1}, Lcom/narvii/scene/TemplateListFragment;->access$getPosition(Lcom/narvii/scene/TemplateListFragment;II)I

    .line 66
    move-result p2

    .line 67
    .line 68
    iget-object p3, p0, Lcom/narvii/scene/TemplateListFragment$onViewCreated$3;->this$0:Lcom/narvii/scene/TemplateListFragment;

    .line 69
    .line 70
    .line 71
    invoke-virtual {p3}, Lcom/narvii/scene/TemplateListFragment;->getScrollX()I

    .line 72
    move-result p3

    .line 73
    int-to-float p3, p3

    .line 74
    int-to-float p1, p1

    .line 75
    div-float/2addr p3, p1

    .line 76
    float-to-int p1, p3

    .line 77
    int-to-float p1, p1

    .line 78
    sub-float/2addr p3, p1

    .line 79
    .line 80
    iget-object p1, p0, Lcom/narvii/scene/TemplateListFragment$onViewCreated$3;->this$0:Lcom/narvii/scene/TemplateListFragment;

    .line 81
    .line 82
    .line 83
    invoke-static {p1, p2, p3}, Lcom/narvii/scene/TemplateListFragment;->access$setAnimation(Lcom/narvii/scene/TemplateListFragment;IF)V

    .line 84
    return-void
.end method
