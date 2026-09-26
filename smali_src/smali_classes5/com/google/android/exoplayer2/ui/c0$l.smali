.class abstract Lcom/google/android/exoplayer2/ui/c0$l;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplayer2/ui/c0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x402
    name = "l"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/recyclerview/widget/RecyclerView$Adapter<",
        "Lcom/google/android/exoplayer2/ui/c0$i;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/exoplayer2/ui/c0;

.field protected tracks:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/google/android/exoplayer2/ui/c0$k;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method protected constructor <init>(Lcom/google/android/exoplayer2/ui/c0;)V
    .locals 0

    .line 1
    .line 2
    iput-object p1, p0, Lcom/google/android/exoplayer2/ui/c0$l;->this$0:Lcom/google/android/exoplayer2/ui/c0;

    .line 3
    .line 4
    .line 5
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    .line 6
    .line 7
    new-instance p1, Ljava/util/ArrayList;

    .line 8
    .line 9
    .line 10
    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 11
    .line 12
    iput-object p1, p0, Lcom/google/android/exoplayer2/ui/c0$l;->tracks:Ljava/util/List;

    .line 13
    return-void
.end method

.method public static synthetic g(Lcom/google/android/exoplayer2/ui/c0$l;Lcom/google/android/exoplayer2/d3;Lcom/google/android/exoplayer2/source/f1;Lcom/google/android/exoplayer2/ui/c0$k;Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/google/android/exoplayer2/ui/c0$l;->h(Lcom/google/android/exoplayer2/d3;Lcom/google/android/exoplayer2/source/f1;Lcom/google/android/exoplayer2/ui/c0$k;Landroid/view/View;)V

    return-void
.end method

.method private synthetic h(Lcom/google/android/exoplayer2/d3;Lcom/google/android/exoplayer2/source/f1;Lcom/google/android/exoplayer2/ui/c0$k;Landroid/view/View;)V
    .locals 2

    .line 1
    .line 2
    .line 3
    invoke-interface {p1}, Lcom/google/android/exoplayer2/d3;->h()Lcom/google/android/exoplayer2/trackselection/z;

    .line 4
    move-result-object p4

    .line 5
    .line 6
    .line 7
    invoke-virtual {p4}, Lcom/google/android/exoplayer2/trackselection/z;->a()Lcom/google/android/exoplayer2/trackselection/z$a;

    .line 8
    move-result-object p4

    .line 9
    .line 10
    new-instance v0, Lcom/google/android/exoplayer2/trackselection/x;

    .line 11
    .line 12
    iget v1, p3, Lcom/google/android/exoplayer2/ui/c0$k;->trackIndex:I

    .line 13
    .line 14
    .line 15
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 16
    move-result-object v1

    .line 17
    .line 18
    .line 19
    invoke-static {v1}, Lcom/google/common/collect/a0;->y(Ljava/lang/Object;)Lcom/google/common/collect/a0;

    .line 20
    move-result-object v1

    .line 21
    .line 22
    .line 23
    invoke-direct {v0, p2, v1}, Lcom/google/android/exoplayer2/trackselection/x;-><init>(Lcom/google/android/exoplayer2/source/f1;Ljava/util/List;)V

    .line 24
    .line 25
    .line 26
    invoke-virtual {p4, v0}, Lcom/google/android/exoplayer2/trackselection/z$a;->G(Lcom/google/android/exoplayer2/trackselection/x;)Lcom/google/android/exoplayer2/trackselection/z$a;

    .line 27
    move-result-object p2

    .line 28
    .line 29
    iget-object p4, p3, Lcom/google/android/exoplayer2/ui/c0$k;->trackGroup:Lcom/google/android/exoplayer2/e4$a;

    .line 30
    .line 31
    .line 32
    invoke-virtual {p4}, Lcom/google/android/exoplayer2/e4$a;->d()I

    .line 33
    move-result p4

    .line 34
    const/4 v0, 0x0

    .line 35
    .line 36
    .line 37
    invoke-virtual {p2, p4, v0}, Lcom/google/android/exoplayer2/trackselection/z$a;->J(IZ)Lcom/google/android/exoplayer2/trackselection/z$a;

    .line 38
    move-result-object p2

    .line 39
    .line 40
    .line 41
    invoke-virtual {p2}, Lcom/google/android/exoplayer2/trackselection/z$a;->A()Lcom/google/android/exoplayer2/trackselection/z;

    .line 42
    move-result-object p2

    .line 43
    .line 44
    .line 45
    invoke-interface {p1, p2}, Lcom/google/android/exoplayer2/d3;->D(Lcom/google/android/exoplayer2/trackselection/z;)V

    .line 46
    .line 47
    iget-object p1, p3, Lcom/google/android/exoplayer2/ui/c0$k;->trackName:Ljava/lang/String;

    .line 48
    .line 49
    .line 50
    invoke-virtual {p0, p1}, Lcom/google/android/exoplayer2/ui/c0$l;->l(Ljava/lang/String;)V

    .line 51
    .line 52
    iget-object p1, p0, Lcom/google/android/exoplayer2/ui/c0$l;->this$0:Lcom/google/android/exoplayer2/ui/c0;

    .line 53
    .line 54
    .line 55
    invoke-static {p1}, Lcom/google/android/exoplayer2/ui/c0;->I(Lcom/google/android/exoplayer2/ui/c0;)Landroid/widget/PopupWindow;

    .line 56
    move-result-object p1

    .line 57
    .line 58
    .line 59
    invoke-virtual {p1}, Landroid/widget/PopupWindow;->dismiss()V

    .line 60
    return-void
.end method


# virtual methods
.method protected clear()V
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    iput-object v0, p0, Lcom/google/android/exoplayer2/ui/c0$l;->tracks:Ljava/util/List;

    .line 7
    return-void
.end method

.method public getItemCount()I
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/c0$l;->tracks:Ljava/util/List;

    .line 3
    .line 4
    .line 5
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    .line 6
    move-result v0

    .line 7
    .line 8
    if-eqz v0, :cond_0

    .line 9
    const/4 v0, 0x0

    .line 10
    goto :goto_0

    .line 11
    .line 12
    :cond_0
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/c0$l;->tracks:Ljava/util/List;

    .line 13
    .line 14
    .line 15
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 16
    move-result v0

    .line 17
    .line 18
    add-int/lit8 v0, v0, 0x1

    .line 19
    :goto_0
    return v0
.end method

.method public i(Lcom/google/android/exoplayer2/ui/c0$i;I)V
    .locals 6

    .line 1
    .line 2
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/c0$l;->this$0:Lcom/google/android/exoplayer2/ui/c0;

    .line 3
    .line 4
    .line 5
    invoke-static {v0}, Lcom/google/android/exoplayer2/ui/c0;->j(Lcom/google/android/exoplayer2/ui/c0;)Lcom/google/android/exoplayer2/d3;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    if-nez v0, :cond_0

    .line 9
    return-void

    .line 10
    .line 11
    :cond_0
    if-nez p2, :cond_1

    .line 12
    .line 13
    .line 14
    invoke-virtual {p0, p1}, Lcom/google/android/exoplayer2/ui/c0$l;->j(Lcom/google/android/exoplayer2/ui/c0$i;)V

    .line 15
    goto :goto_2

    .line 16
    .line 17
    :cond_1
    iget-object v1, p0, Lcom/google/android/exoplayer2/ui/c0$l;->tracks:Ljava/util/List;

    .line 18
    const/4 v2, 0x1

    .line 19
    sub-int/2addr p2, v2

    .line 20
    .line 21
    .line 22
    invoke-interface {v1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 23
    move-result-object p2

    .line 24
    .line 25
    check-cast p2, Lcom/google/android/exoplayer2/ui/c0$k;

    .line 26
    .line 27
    iget-object v1, p2, Lcom/google/android/exoplayer2/ui/c0$k;->trackGroup:Lcom/google/android/exoplayer2/e4$a;

    .line 28
    .line 29
    .line 30
    invoke-virtual {v1}, Lcom/google/android/exoplayer2/e4$a;->b()Lcom/google/android/exoplayer2/source/f1;

    .line 31
    move-result-object v1

    .line 32
    .line 33
    .line 34
    invoke-interface {v0}, Lcom/google/android/exoplayer2/d3;->h()Lcom/google/android/exoplayer2/trackselection/z;

    .line 35
    move-result-object v3

    .line 36
    .line 37
    iget-object v3, v3, Lcom/google/android/exoplayer2/trackselection/z;->overrides:Lcom/google/common/collect/b0;

    .line 38
    .line 39
    .line 40
    invoke-virtual {v3, v1}, Lcom/google/common/collect/b0;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 41
    move-result-object v3

    .line 42
    const/4 v4, 0x0

    .line 43
    .line 44
    if-eqz v3, :cond_2

    .line 45
    .line 46
    .line 47
    invoke-virtual {p2}, Lcom/google/android/exoplayer2/ui/c0$k;->a()Z

    .line 48
    move-result v3

    .line 49
    .line 50
    if-eqz v3, :cond_2

    .line 51
    goto :goto_0

    .line 52
    :cond_2
    move v2, v4

    .line 53
    .line 54
    :goto_0
    iget-object v3, p1, Lcom/google/android/exoplayer2/ui/c0$i;->textView:Landroid/widget/TextView;

    .line 55
    .line 56
    iget-object v5, p2, Lcom/google/android/exoplayer2/ui/c0$k;->trackName:Ljava/lang/String;

    .line 57
    .line 58
    .line 59
    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 60
    .line 61
    iget-object v3, p1, Lcom/google/android/exoplayer2/ui/c0$i;->checkView:Landroid/view/View;

    .line 62
    .line 63
    if-eqz v2, :cond_3

    .line 64
    goto :goto_1

    .line 65
    :cond_3
    const/4 v4, 0x4

    .line 66
    .line 67
    .line 68
    :goto_1
    invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V

    .line 69
    .line 70
    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 71
    .line 72
    new-instance v2, Lcom/google/android/exoplayer2/ui/h0;

    .line 73
    .line 74
    .line 75
    invoke-direct {v2, p0, v0, v1, p2}, Lcom/google/android/exoplayer2/ui/h0;-><init>(Lcom/google/android/exoplayer2/ui/c0$l;Lcom/google/android/exoplayer2/d3;Lcom/google/android/exoplayer2/source/f1;Lcom/google/android/exoplayer2/ui/c0$k;)V

    .line 76
    .line 77
    .line 78
    invoke-virtual {p1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 79
    :goto_2
    return-void
.end method

.method protected abstract j(Lcom/google/android/exoplayer2/ui/c0$i;)V
.end method

.method public k(Landroid/view/ViewGroup;I)Lcom/google/android/exoplayer2/ui/c0$i;
    .locals 2

    .line 1
    .line 2
    iget-object p2, p0, Lcom/google/android/exoplayer2/ui/c0$l;->this$0:Lcom/google/android/exoplayer2/ui/c0;

    .line 3
    .line 4
    .line 5
    invoke-virtual {p2}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 6
    move-result-object p2

    .line 7
    .line 8
    .line 9
    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 10
    move-result-object p2

    .line 11
    .line 12
    sget v0, Lcom/google/android/exoplayer2/ui/r;->exo_styled_sub_settings_list_item:I

    .line 13
    const/4 v1, 0x0

    .line 14
    .line 15
    .line 16
    invoke-virtual {p2, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 17
    move-result-object p1

    .line 18
    .line 19
    new-instance p2, Lcom/google/android/exoplayer2/ui/c0$i;

    .line 20
    .line 21
    .line 22
    invoke-direct {p2, p1}, Lcom/google/android/exoplayer2/ui/c0$i;-><init>(Landroid/view/View;)V

    .line 23
    return-object p2
.end method

.method protected abstract l(Ljava/lang/String;)V
.end method

.method public bridge synthetic onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 0

    .line 1
    .line 2
    check-cast p1, Lcom/google/android/exoplayer2/ui/c0$i;

    .line 3
    .line 4
    .line 5
    invoke-virtual {p0, p1, p2}, Lcom/google/android/exoplayer2/ui/c0$l;->i(Lcom/google/android/exoplayer2/ui/c0$i;I)V

    .line 6
    return-void
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0, p1, p2}, Lcom/google/android/exoplayer2/ui/c0$l;->k(Landroid/view/ViewGroup;I)Lcom/google/android/exoplayer2/ui/c0$i;

    .line 4
    move-result-object p1

    .line 5
    return-object p1
.end method
