.class public final Lcom/narvii/scene/TemplateListFragment$HorizontalItemDecoration;
.super Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;
.source "SourceFile"


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

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/scene/TemplateListFragment$HorizontalItemDecoration;->this$0:Lcom/narvii/scene/TemplateListFragment;

    .line 3
    .line 4
    .line 5
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;-><init>()V

    .line 6
    return-void
.end method


# virtual methods
.method public getItemOffsets(Landroid/graphics/Rect;Landroid/view/View;Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$State;)V
    .locals 3
    .param p1    # Landroid/graphics/Rect;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroid/view/View;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Landroidx/recyclerview/widget/RecyclerView;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p4    # Landroidx/recyclerview/widget/RecyclerView$State;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    .line 2
    const-string v0, "outRect"

    .line 3
    .line 4
    .line 5
    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    const-string/jumbo v0, "view"

    .line 9
    .line 10
    .line 11
    invoke-static {p2, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 12
    .line 13
    const-string v0, "parent"

    .line 14
    .line 15
    .line 16
    invoke-static {p3, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 17
    .line 18
    const-string v0, "state"

    .line 19
    .line 20
    .line 21
    invoke-static {p4, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 22
    .line 23
    .line 24
    invoke-super {p0, p1, p2, p3, p4}, Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;->getItemOffsets(Landroid/graphics/Rect;Landroid/view/View;Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$State;)V

    .line 25
    .line 26
    .line 27
    invoke-virtual {p3, p2}, Landroidx/recyclerview/widget/RecyclerView;->getChildAdapterPosition(Landroid/view/View;)I

    .line 28
    move-result p2

    .line 29
    .line 30
    iget-object p3, p0, Lcom/narvii/scene/TemplateListFragment$HorizontalItemDecoration;->this$0:Lcom/narvii/scene/TemplateListFragment;

    .line 31
    .line 32
    .line 33
    invoke-virtual {p3}, Lcom/narvii/scene/TemplateListFragment;->getTemplateList()Ljava/util/List;

    .line 34
    move-result-object p3

    .line 35
    .line 36
    .line 37
    invoke-interface {p3}, Ljava/util/List;->size()I

    .line 38
    move-result p3

    .line 39
    .line 40
    const/high16 p4, 0x41700000    # 15.0f

    .line 41
    .line 42
    if-nez p2, :cond_0

    .line 43
    .line 44
    iget-object v0, p0, Lcom/narvii/scene/TemplateListFragment$HorizontalItemDecoration;->this$0:Lcom/narvii/scene/TemplateListFragment;

    .line 45
    .line 46
    .line 47
    invoke-virtual {v0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    .line 48
    move-result-object v0

    .line 49
    .line 50
    .line 51
    invoke-static {v0}, Lcom/narvii/util/Utils;->getScreenWidth(Landroid/content/Context;)I

    .line 52
    move-result v0

    .line 53
    .line 54
    iget-object v1, p0, Lcom/narvii/scene/TemplateListFragment$HorizontalItemDecoration;->this$0:Lcom/narvii/scene/TemplateListFragment;

    .line 55
    .line 56
    .line 57
    invoke-static {v1}, Lcom/narvii/scene/TemplateListFragment;->access$getItemContentWidth(Lcom/narvii/scene/TemplateListFragment;)I

    .line 58
    move-result v1

    .line 59
    sub-int/2addr v0, v1

    .line 60
    .line 61
    div-int/lit8 v0, v0, 0x2

    .line 62
    goto :goto_0

    .line 63
    .line 64
    .line 65
    :cond_0
    invoke-static {}, Lcom/narvii/app/NVApplication;->instance()Lcom/narvii/app/NVApplication;

    .line 66
    move-result-object v0

    .line 67
    .line 68
    .line 69
    invoke-static {v0, p4}, Lcom/narvii/util/Utils;->dpToPx(Landroid/content/Context;F)F

    .line 70
    move-result v0

    .line 71
    float-to-int v0, v0

    .line 72
    .line 73
    :goto_0
    add-int/lit8 p3, p3, -0x1

    .line 74
    .line 75
    if-ne p2, p3, :cond_1

    .line 76
    .line 77
    iget-object p2, p0, Lcom/narvii/scene/TemplateListFragment$HorizontalItemDecoration;->this$0:Lcom/narvii/scene/TemplateListFragment;

    .line 78
    .line 79
    .line 80
    invoke-virtual {p2}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    .line 81
    move-result-object p2

    .line 82
    .line 83
    .line 84
    invoke-static {p2}, Lcom/narvii/util/Utils;->getScreenWidth(Landroid/content/Context;)I

    .line 85
    move-result p2

    .line 86
    .line 87
    iget-object p3, p0, Lcom/narvii/scene/TemplateListFragment$HorizontalItemDecoration;->this$0:Lcom/narvii/scene/TemplateListFragment;

    .line 88
    .line 89
    .line 90
    invoke-static {p3}, Lcom/narvii/scene/TemplateListFragment;->access$getItemContentWidth(Lcom/narvii/scene/TemplateListFragment;)I

    .line 91
    move-result p3

    .line 92
    sub-int/2addr p2, p3

    .line 93
    .line 94
    div-int/lit8 p2, p2, 0x2

    .line 95
    goto :goto_1

    .line 96
    .line 97
    .line 98
    :cond_1
    invoke-static {}, Lcom/narvii/app/NVApplication;->instance()Lcom/narvii/app/NVApplication;

    .line 99
    move-result-object p2

    .line 100
    .line 101
    .line 102
    invoke-static {p2, p4}, Lcom/narvii/util/Utils;->dpToPx(Landroid/content/Context;F)F

    .line 103
    move-result p2

    .line 104
    float-to-int p2, p2

    .line 105
    .line 106
    .line 107
    :goto_1
    invoke-static {}, Lcom/narvii/util/Utils;->isRtl()Z

    .line 108
    move-result p3

    .line 109
    .line 110
    if-eqz p3, :cond_2

    .line 111
    move v2, v0

    .line 112
    move v0, p2

    .line 113
    move p2, v2

    .line 114
    :cond_2
    const/4 p3, 0x0

    .line 115
    .line 116
    .line 117
    invoke-virtual {p1, v0, p3, p2, p3}, Landroid/graphics/Rect;->set(IIII)V

    .line 118
    return-void
.end method
