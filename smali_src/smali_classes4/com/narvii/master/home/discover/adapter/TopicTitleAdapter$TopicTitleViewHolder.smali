.class public final Lcom/narvii/master/home/discover/adapter/TopicTitleAdapter$TopicTitleViewHolder;
.super Lcom/narvii/widget/recycleview/viewholder/BaseViewHolder;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/narvii/master/home/discover/adapter/TopicTitleAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "TopicTitleViewHolder"
.end annotation


# instance fields
.field private final icon:Lcom/narvii/widget/NVImageView;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final iconContainer:Landroid/widget/FrameLayout;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final interestIcon:Landroid/widget/FrameLayout;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field final synthetic this$0:Lcom/narvii/master/home/discover/adapter/TopicTitleAdapter;

.field private final title:Landroid/widget/TextView;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/narvii/master/home/discover/adapter/TopicTitleAdapter;Landroid/view/View;)V
    .locals 4
    .param p1    # Lcom/narvii/master/home/discover/adapter/TopicTitleAdapter;
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
    const-string v0, "itemView"

    .line 3
    .line 4
    .line 5
    invoke-static {p2, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    iput-object p1, p0, Lcom/narvii/master/home/discover/adapter/TopicTitleAdapter$TopicTitleViewHolder;->this$0:Lcom/narvii/master/home/discover/adapter/TopicTitleAdapter;

    .line 8
    .line 9
    .line 10
    invoke-direct {p0, p2}, Lcom/narvii/widget/recycleview/viewholder/BaseViewHolder;-><init>(Landroid/view/View;)V

    .line 11
    .line 12
    .line 13
    const v0, 0x7f0a0e9e

    .line 14
    .line 15
    .line 16
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 17
    move-result-object v0

    .line 18
    .line 19
    const-string v1, "findViewById(...)"

    .line 20
    .line 21
    .line 22
    invoke-static {v0, v1}, Lkotlin/jvm/internal/t;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 23
    .line 24
    check-cast v0, Landroid/widget/TextView;

    .line 25
    .line 26
    iput-object v0, p0, Lcom/narvii/master/home/discover/adapter/TopicTitleAdapter$TopicTitleViewHolder;->title:Landroid/widget/TextView;

    .line 27
    .line 28
    .line 29
    const v2, 0x7f0a06d5

    .line 30
    .line 31
    .line 32
    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 33
    move-result-object v2

    .line 34
    .line 35
    .line 36
    invoke-static {v2, v1}, Lkotlin/jvm/internal/t;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 37
    .line 38
    check-cast v2, Lcom/narvii/widget/NVImageView;

    .line 39
    .line 40
    iput-object v2, p0, Lcom/narvii/master/home/discover/adapter/TopicTitleAdapter$TopicTitleViewHolder;->icon:Lcom/narvii/widget/NVImageView;

    .line 41
    .line 42
    .line 43
    const v2, 0x7f0a0733

    .line 44
    .line 45
    .line 46
    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 47
    move-result-object v2

    .line 48
    .line 49
    .line 50
    invoke-static {v2, v1}, Lkotlin/jvm/internal/t;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 51
    .line 52
    check-cast v2, Landroid/widget/FrameLayout;

    .line 53
    .line 54
    iput-object v2, p0, Lcom/narvii/master/home/discover/adapter/TopicTitleAdapter$TopicTitleViewHolder;->interestIcon:Landroid/widget/FrameLayout;

    .line 55
    .line 56
    .line 57
    const v3, 0x7f0a06df

    .line 58
    .line 59
    .line 60
    invoke-virtual {p2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 61
    move-result-object v3

    .line 62
    .line 63
    .line 64
    invoke-static {v3, v1}, Lkotlin/jvm/internal/t;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 65
    .line 66
    check-cast v3, Landroid/widget/FrameLayout;

    .line 67
    .line 68
    iput-object v3, p0, Lcom/narvii/master/home/discover/adapter/TopicTitleAdapter$TopicTitleViewHolder;->iconContainer:Landroid/widget/FrameLayout;

    .line 69
    .line 70
    iget-object v1, p1, Lcom/narvii/paging/adapter/NVRecyclerViewBaseAdapter;->subviewClickListener:Landroid/view/View$OnClickListener;

    .line 71
    .line 72
    .line 73
    invoke-virtual {v2, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 74
    .line 75
    iget-object v1, p1, Lcom/narvii/paging/adapter/NVRecyclerViewBaseAdapter;->subviewClickListener:Landroid/view/View$OnClickListener;

    .line 76
    .line 77
    .line 78
    invoke-virtual {v3, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 79
    .line 80
    iget-object v1, p1, Lcom/narvii/paging/adapter/NVRecyclerViewBaseAdapter;->subviewClickListener:Landroid/view/View$OnClickListener;

    .line 81
    .line 82
    .line 83
    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 84
    .line 85
    .line 86
    invoke-virtual {p1}, Lcom/narvii/master/home/discover/adapter/TopicTitleAdapter;->getModuleDisplayConfig()Lcom/narvii/topic/ModuleDisplayConfig;

    .line 87
    move-result-object v0

    .line 88
    .line 89
    if-eqz v0, :cond_0

    .line 90
    .line 91
    iget-boolean v0, v0, Lcom/narvii/topic/ModuleDisplayConfig;->isTop:Z

    .line 92
    const/4 v1, 0x1

    .line 93
    .line 94
    if-ne v0, v1, :cond_0

    .line 95
    .line 96
    .line 97
    invoke-virtual {p2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 98
    move-result-object v0

    .line 99
    .line 100
    const-string v1, "null cannot be cast to non-null type android.view.ViewGroup.MarginLayoutParams"

    .line 101
    .line 102
    .line 103
    invoke-static {v0, v1}, Lkotlin/jvm/internal/t;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 104
    .line 105
    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 106
    .line 107
    .line 108
    invoke-virtual {p1}, Lcom/narvii/paging/adapter/NVRecyclerViewBaseAdapter;->getContext()Landroid/content/Context;

    .line 109
    move-result-object p1

    .line 110
    .line 111
    const/high16 v1, 0x41f00000    # 30.0f

    .line 112
    .line 113
    .line 114
    invoke-static {p1, v1}, Lcom/narvii/util/Utils;->dpToPxInt(Landroid/content/Context;F)I

    .line 115
    move-result p1

    .line 116
    .line 117
    iput p1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 118
    .line 119
    .line 120
    invoke-virtual {p2, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 121
    :cond_0
    return-void
.end method


# virtual methods
.method public final getIcon()Lcom/narvii/widget/NVImageView;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object v0, p0, Lcom/narvii/master/home/discover/adapter/TopicTitleAdapter$TopicTitleViewHolder;->icon:Lcom/narvii/widget/NVImageView;

    return-object v0
.end method

.method public final getInterestIcon()Landroid/widget/FrameLayout;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object v0, p0, Lcom/narvii/master/home/discover/adapter/TopicTitleAdapter$TopicTitleViewHolder;->interestIcon:Landroid/widget/FrameLayout;

    return-object v0
.end method

.method public final getTitle()Landroid/widget/TextView;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object v0, p0, Lcom/narvii/master/home/discover/adapter/TopicTitleAdapter$TopicTitleViewHolder;->title:Landroid/widget/TextView;

    return-object v0
.end method
