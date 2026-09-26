.class public final Lcom/narvii/master/home/profile/LinkCommunityFragment$LinkedAdapter$LinkedViewHolder;
.super Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/narvii/master/home/profile/LinkCommunityFragment$LinkedAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "LinkedViewHolder"
.end annotation


# instance fields
.field private final checkBox:Landroid/widget/CheckBox;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final dragSortView:Landroid/view/View;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final iconIV:Lcom/narvii/widget/ThumbImageView;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final nameTV:Landroid/widget/TextView;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private pos:I

.field final synthetic this$0:Lcom/narvii/master/home/profile/LinkCommunityFragment$LinkedAdapter;


# direct methods
.method public constructor <init>(Lcom/narvii/master/home/profile/LinkCommunityFragment$LinkedAdapter;Landroid/view/View;)V
    .locals 1
    .param p1    # Lcom/narvii/master/home/profile/LinkCommunityFragment$LinkedAdapter;
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
    const-string v0, "view"

    .line 3
    .line 4
    .line 5
    invoke-static {p2, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    iput-object p1, p0, Lcom/narvii/master/home/profile/LinkCommunityFragment$LinkedAdapter$LinkedViewHolder;->this$0:Lcom/narvii/master/home/profile/LinkCommunityFragment$LinkedAdapter;

    .line 8
    .line 9
    .line 10
    invoke-direct {p0, p2}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 11
    .line 12
    .line 13
    const p1, 0x7f0a036b

    .line 14
    .line 15
    .line 16
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 17
    move-result-object p1

    .line 18
    .line 19
    const-string v0, "findViewById(...)"

    .line 20
    .line 21
    .line 22
    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 23
    .line 24
    check-cast p1, Lcom/narvii/widget/ThumbImageView;

    .line 25
    .line 26
    iput-object p1, p0, Lcom/narvii/master/home/profile/LinkCommunityFragment$LinkedAdapter$LinkedViewHolder;->iconIV:Lcom/narvii/widget/ThumbImageView;

    .line 27
    .line 28
    .line 29
    const p1, 0x7f0a037c

    .line 30
    .line 31
    .line 32
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 33
    move-result-object p1

    .line 34
    .line 35
    .line 36
    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 37
    .line 38
    check-cast p1, Landroid/widget/TextView;

    .line 39
    .line 40
    iput-object p1, p0, Lcom/narvii/master/home/profile/LinkCommunityFragment$LinkedAdapter$LinkedViewHolder;->nameTV:Landroid/widget/TextView;

    .line 41
    .line 42
    .line 43
    const p1, 0x7f0a02cb

    .line 44
    .line 45
    .line 46
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 47
    move-result-object p1

    .line 48
    .line 49
    .line 50
    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 51
    .line 52
    check-cast p1, Landroid/widget/CheckBox;

    .line 53
    .line 54
    iput-object p1, p0, Lcom/narvii/master/home/profile/LinkCommunityFragment$LinkedAdapter$LinkedViewHolder;->checkBox:Landroid/widget/CheckBox;

    .line 55
    .line 56
    .line 57
    const p1, 0x7f0a0466

    .line 58
    .line 59
    .line 60
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 61
    move-result-object p1

    .line 62
    .line 63
    .line 64
    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 65
    .line 66
    iput-object p1, p0, Lcom/narvii/master/home/profile/LinkCommunityFragment$LinkedAdapter$LinkedViewHolder;->dragSortView:Landroid/view/View;

    .line 67
    const/4 p1, -0x1

    .line 68
    .line 69
    iput p1, p0, Lcom/narvii/master/home/profile/LinkCommunityFragment$LinkedAdapter$LinkedViewHolder;->pos:I

    .line 70
    return-void
.end method

.method public static synthetic a(Lcom/narvii/master/home/profile/LinkCommunityFragment;Lcom/narvii/master/home/profile/LinkCommunityFragment$LinkedAdapter$LinkedViewHolder;Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 0

    .line 1
    invoke-static {p0, p1, p2, p3}, Lcom/narvii/master/home/profile/LinkCommunityFragment$LinkedAdapter$LinkedViewHolder;->updateData$lambda$2$lambda$1(Lcom/narvii/master/home/profile/LinkCommunityFragment;Lcom/narvii/master/home/profile/LinkCommunityFragment$LinkedAdapter$LinkedViewHolder;Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method public static synthetic b(Lcom/narvii/master/home/profile/LinkCommunityFragment$LinkedAdapter;Lcom/narvii/master/home/profile/LinkCommunityFragment;ILandroid/view/View;)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2, p3}, Lcom/narvii/master/home/profile/LinkCommunityFragment$LinkedAdapter$LinkedViewHolder;->updateData$lambda$2$lambda$0(Lcom/narvii/master/home/profile/LinkCommunityFragment$LinkedAdapter;Lcom/narvii/master/home/profile/LinkCommunityFragment;ILandroid/view/View;)V

    return-void
.end method

.method private static final updateData$lambda$2$lambda$0(Lcom/narvii/master/home/profile/LinkCommunityFragment$LinkedAdapter;Lcom/narvii/master/home/profile/LinkCommunityFragment;ILandroid/view/View;)V
    .locals 0

    .line 1
    .line 2
    const-string p3, "this$0"

    .line 3
    .line 4
    .line 5
    invoke-static {p0, p3}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    const-string p3, "this$1"

    .line 8
    .line 9
    .line 10
    invoke-static {p1, p3}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    invoke-virtual {p0}, Lcom/narvii/master/home/profile/LinkCommunityFragment$LinkedAdapter;->getSupportDragSort()Z

    .line 14
    move-result p0

    .line 15
    .line 16
    if-eqz p0, :cond_0

    .line 17
    .line 18
    .line 19
    invoke-static {p1, p2}, Lcom/narvii/master/home/profile/LinkCommunityFragment;->access$removeLinkCommunity(Lcom/narvii/master/home/profile/LinkCommunityFragment;I)V

    .line 20
    goto :goto_0

    .line 21
    .line 22
    .line 23
    :cond_0
    invoke-static {p1, p2}, Lcom/narvii/master/home/profile/LinkCommunityFragment;->access$addLinkCommunity(Lcom/narvii/master/home/profile/LinkCommunityFragment;I)V

    .line 24
    :goto_0
    return-void
.end method

.method private static final updateData$lambda$2$lambda$1(Lcom/narvii/master/home/profile/LinkCommunityFragment;Lcom/narvii/master/home/profile/LinkCommunityFragment$LinkedAdapter$LinkedViewHolder;Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 0

    .line 1
    .line 2
    const-string p2, "this$0"

    .line 3
    .line 4
    .line 5
    invoke-static {p0, p2}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    const-string p2, "this$1"

    .line 8
    .line 9
    .line 10
    invoke-static {p1, p2}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    invoke-virtual {p3}, Landroid/view/MotionEvent;->getActionMasked()I

    .line 14
    move-result p2

    .line 15
    .line 16
    if-nez p2, :cond_0

    .line 17
    .line 18
    .line 19
    invoke-static {p0}, Lcom/narvii/master/home/profile/LinkCommunityFragment;->access$getLinkedCommuCopy$p(Lcom/narvii/master/home/profile/LinkCommunityFragment;)Ljava/util/List;

    .line 20
    move-result-object p2

    .line 21
    .line 22
    .line 23
    invoke-interface {p2}, Ljava/util/List;->clear()V

    .line 24
    .line 25
    .line 26
    invoke-static {p0}, Lcom/narvii/master/home/profile/LinkCommunityFragment;->access$getLinkedCommuCopy$p(Lcom/narvii/master/home/profile/LinkCommunityFragment;)Ljava/util/List;

    .line 27
    move-result-object p2

    .line 28
    .line 29
    .line 30
    invoke-static {p0}, Lcom/narvii/master/home/profile/LinkCommunityFragment;->access$getLinkedCommu$p(Lcom/narvii/master/home/profile/LinkCommunityFragment;)Ljava/util/List;

    .line 31
    move-result-object p3

    .line 32
    .line 33
    check-cast p3, Ljava/util/Collection;

    .line 34
    .line 35
    .line 36
    invoke-interface {p2, p3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 37
    .line 38
    .line 39
    invoke-static {p0}, Lcom/narvii/master/home/profile/LinkCommunityFragment;->access$getItemTouchHelper$p(Lcom/narvii/master/home/profile/LinkCommunityFragment;)Landroidx/recyclerview/widget/ItemTouchHelper;

    .line 40
    move-result-object p0

    .line 41
    .line 42
    if-eqz p0, :cond_0

    .line 43
    .line 44
    .line 45
    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/ItemTouchHelper;->z(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V

    .line 46
    :cond_0
    const/4 p0, 0x0

    .line 47
    return p0
.end method


# virtual methods
.method public final getCheckBox()Landroid/widget/CheckBox;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object v0, p0, Lcom/narvii/master/home/profile/LinkCommunityFragment$LinkedAdapter$LinkedViewHolder;->checkBox:Landroid/widget/CheckBox;

    return-object v0
.end method

.method public final getDragSortView()Landroid/view/View;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object v0, p0, Lcom/narvii/master/home/profile/LinkCommunityFragment$LinkedAdapter$LinkedViewHolder;->dragSortView:Landroid/view/View;

    return-object v0
.end method

.method public final getIconIV()Lcom/narvii/widget/ThumbImageView;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object v0, p0, Lcom/narvii/master/home/profile/LinkCommunityFragment$LinkedAdapter$LinkedViewHolder;->iconIV:Lcom/narvii/widget/ThumbImageView;

    return-object v0
.end method

.method public final getNameTV()Landroid/widget/TextView;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object v0, p0, Lcom/narvii/master/home/profile/LinkCommunityFragment$LinkedAdapter$LinkedViewHolder;->nameTV:Landroid/widget/TextView;

    return-object v0
.end method

.method public final getPos()I
    .locals 1

    iget v0, p0, Lcom/narvii/master/home/profile/LinkCommunityFragment$LinkedAdapter$LinkedViewHolder;->pos:I

    return v0
.end method

.method public final setPos(I)V
    .locals 0

    iput p1, p0, Lcom/narvii/master/home/profile/LinkCommunityFragment$LinkedAdapter$LinkedViewHolder;->pos:I

    return-void
.end method

.method public final updateData(Lcom/narvii/model/Community;I)V
    .locals 4
    .param p1    # Lcom/narvii/model/Community;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/master/home/profile/LinkCommunityFragment$LinkedAdapter$LinkedViewHolder;->this$0:Lcom/narvii/master/home/profile/LinkCommunityFragment$LinkedAdapter;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/narvii/master/home/profile/LinkCommunityFragment$LinkedAdapter;->getSupportDragSort()Z

    .line 6
    move-result v0

    .line 7
    .line 8
    if-eqz v0, :cond_0

    .line 9
    move v0, p2

    .line 10
    goto :goto_0

    .line 11
    :cond_0
    const/4 v0, -0x1

    .line 12
    .line 13
    :goto_0
    iput v0, p0, Lcom/narvii/master/home/profile/LinkCommunityFragment$LinkedAdapter$LinkedViewHolder;->pos:I

    .line 14
    .line 15
    if-eqz p1, :cond_3

    .line 16
    .line 17
    iget-object v0, p0, Lcom/narvii/master/home/profile/LinkCommunityFragment$LinkedAdapter$LinkedViewHolder;->this$0:Lcom/narvii/master/home/profile/LinkCommunityFragment$LinkedAdapter;

    .line 18
    .line 19
    iget-object v1, v0, Lcom/narvii/master/home/profile/LinkCommunityFragment$LinkedAdapter;->this$0:Lcom/narvii/master/home/profile/LinkCommunityFragment;

    .line 20
    .line 21
    iget-object v2, p0, Lcom/narvii/master/home/profile/LinkCommunityFragment$LinkedAdapter$LinkedViewHolder;->iconIV:Lcom/narvii/widget/ThumbImageView;

    .line 22
    .line 23
    iget-object v3, p1, Lcom/narvii/model/Community;->icon:Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    invoke-virtual {v2, v3}, Lcom/narvii/widget/NVImageView;->setImageUrl(Ljava/lang/String;)Z

    .line 27
    .line 28
    iget-object v2, p0, Lcom/narvii/master/home/profile/LinkCommunityFragment$LinkedAdapter$LinkedViewHolder;->nameTV:Landroid/widget/TextView;

    .line 29
    .line 30
    iget-object p1, p1, Lcom/narvii/model/Community;->name:Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    invoke-virtual {v2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 34
    .line 35
    iget-object p1, p0, Lcom/narvii/master/home/profile/LinkCommunityFragment$LinkedAdapter$LinkedViewHolder;->nameTV:Landroid/widget/TextView;

    .line 36
    .line 37
    .line 38
    invoke-static {v1}, Lcom/narvii/master/home/profile/LinkCommunityFragment;->access$getOptionTextColor$p(Lcom/narvii/master/home/profile/LinkCommunityFragment;)I

    .line 39
    move-result v2

    .line 40
    .line 41
    .line 42
    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 43
    .line 44
    iget-object p1, p0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 45
    .line 46
    .line 47
    invoke-static {v1}, Lcom/narvii/master/home/profile/LinkCommunityFragment;->access$getOptionBackgroundColor$p(Lcom/narvii/master/home/profile/LinkCommunityFragment;)I

    .line 48
    move-result v2

    .line 49
    .line 50
    .line 51
    invoke-virtual {p1, v2}, Landroid/view/View;->setBackgroundColor(I)V

    .line 52
    .line 53
    iget-object p1, p0, Lcom/narvii/master/home/profile/LinkCommunityFragment$LinkedAdapter$LinkedViewHolder;->checkBox:Landroid/widget/CheckBox;

    .line 54
    .line 55
    .line 56
    invoke-virtual {v0}, Lcom/narvii/master/home/profile/LinkCommunityFragment$LinkedAdapter;->isDarkTheme()Z

    .line 57
    move-result v2

    .line 58
    .line 59
    if-eqz v2, :cond_1

    .line 60
    .line 61
    .line 62
    const v2, 0x7f0809e1

    .line 63
    goto :goto_1

    .line 64
    .line 65
    .line 66
    :cond_1
    const v2, 0x7f0809e0

    .line 67
    .line 68
    .line 69
    :goto_1
    invoke-virtual {p1, v2}, Landroid/widget/CompoundButton;->setButtonDrawable(I)V

    .line 70
    .line 71
    iget-object p1, p0, Lcom/narvii/master/home/profile/LinkCommunityFragment$LinkedAdapter$LinkedViewHolder;->checkBox:Landroid/widget/CheckBox;

    .line 72
    .line 73
    .line 74
    invoke-virtual {v0}, Lcom/narvii/master/home/profile/LinkCommunityFragment$LinkedAdapter;->getSupportDragSort()Z

    .line 75
    move-result v2

    .line 76
    .line 77
    .line 78
    invoke-virtual {p1, v2}, Landroid/widget/CompoundButton;->setChecked(Z)V

    .line 79
    .line 80
    iget-object p1, p0, Lcom/narvii/master/home/profile/LinkCommunityFragment$LinkedAdapter$LinkedViewHolder;->checkBox:Landroid/widget/CheckBox;

    .line 81
    .line 82
    new-instance v2, Lcom/narvii/master/home/profile/d0;

    .line 83
    .line 84
    .line 85
    invoke-direct {v2, v0, v1, p2}, Lcom/narvii/master/home/profile/d0;-><init>(Lcom/narvii/master/home/profile/LinkCommunityFragment$LinkedAdapter;Lcom/narvii/master/home/profile/LinkCommunityFragment;I)V

    .line 86
    .line 87
    .line 88
    invoke-virtual {p1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 89
    .line 90
    .line 91
    invoke-virtual {v0}, Lcom/narvii/master/home/profile/LinkCommunityFragment$LinkedAdapter;->getSupportDragSort()Z

    .line 92
    move-result p1

    .line 93
    .line 94
    if-eqz p1, :cond_2

    .line 95
    .line 96
    iget-object p1, p0, Lcom/narvii/master/home/profile/LinkCommunityFragment$LinkedAdapter$LinkedViewHolder;->dragSortView:Landroid/view/View;

    .line 97
    const/4 p2, 0x0

    .line 98
    .line 99
    .line 100
    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    .line 101
    .line 102
    iget-object p1, p0, Lcom/narvii/master/home/profile/LinkCommunityFragment$LinkedAdapter$LinkedViewHolder;->dragSortView:Landroid/view/View;

    .line 103
    .line 104
    new-instance p2, Lcom/narvii/master/home/profile/e0;

    .line 105
    .line 106
    .line 107
    invoke-direct {p2, v1, p0}, Lcom/narvii/master/home/profile/e0;-><init>(Lcom/narvii/master/home/profile/LinkCommunityFragment;Lcom/narvii/master/home/profile/LinkCommunityFragment$LinkedAdapter$LinkedViewHolder;)V

    .line 108
    .line 109
    .line 110
    invoke-virtual {p1, p2}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 111
    goto :goto_2

    .line 112
    .line 113
    :cond_2
    iget-object p1, p0, Lcom/narvii/master/home/profile/LinkCommunityFragment$LinkedAdapter$LinkedViewHolder;->dragSortView:Landroid/view/View;

    .line 114
    .line 115
    const/16 p2, 0x8

    .line 116
    .line 117
    .line 118
    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    .line 119
    :cond_3
    :goto_2
    return-void
.end method
