.class final Lcom/google/android/exoplayer2/ui/c0$e;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplayer2/ui/c0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "e"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/recyclerview/widget/RecyclerView$Adapter<",
        "Lcom/google/android/exoplayer2/ui/c0$i;",
        ">;"
    }
.end annotation


# instance fields
.field private final playbackSpeedTexts:[Ljava/lang/String;

.field private final playbackSpeeds:[F

.field private selectedIndex:I

.field final synthetic this$0:Lcom/google/android/exoplayer2/ui/c0;


# direct methods
.method public constructor <init>(Lcom/google/android/exoplayer2/ui/c0;[Ljava/lang/String;[F)V
    .locals 0

    .line 1
    .line 2
    iput-object p1, p0, Lcom/google/android/exoplayer2/ui/c0$e;->this$0:Lcom/google/android/exoplayer2/ui/c0;

    .line 3
    .line 4
    .line 5
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    .line 6
    .line 7
    iput-object p2, p0, Lcom/google/android/exoplayer2/ui/c0$e;->playbackSpeedTexts:[Ljava/lang/String;

    .line 8
    .line 9
    iput-object p3, p0, Lcom/google/android/exoplayer2/ui/c0$e;->playbackSpeeds:[F

    .line 10
    return-void
.end method

.method public static synthetic g(Lcom/google/android/exoplayer2/ui/c0$e;ILandroid/view/View;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/google/android/exoplayer2/ui/c0$e;->i(ILandroid/view/View;)V

    return-void
.end method

.method private synthetic i(ILandroid/view/View;)V
    .locals 1

    .line 1
    .line 2
    iget p2, p0, Lcom/google/android/exoplayer2/ui/c0$e;->selectedIndex:I

    .line 3
    .line 4
    if-eq p1, p2, :cond_0

    .line 5
    .line 6
    iget-object p2, p0, Lcom/google/android/exoplayer2/ui/c0$e;->this$0:Lcom/google/android/exoplayer2/ui/c0;

    .line 7
    .line 8
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/c0$e;->playbackSpeeds:[F

    .line 9
    .line 10
    aget p1, v0, p1

    .line 11
    .line 12
    .line 13
    invoke-static {p2, p1}, Lcom/google/android/exoplayer2/ui/c0;->H(Lcom/google/android/exoplayer2/ui/c0;F)V

    .line 14
    .line 15
    :cond_0
    iget-object p1, p0, Lcom/google/android/exoplayer2/ui/c0$e;->this$0:Lcom/google/android/exoplayer2/ui/c0;

    .line 16
    .line 17
    .line 18
    invoke-static {p1}, Lcom/google/android/exoplayer2/ui/c0;->I(Lcom/google/android/exoplayer2/ui/c0;)Landroid/widget/PopupWindow;

    .line 19
    move-result-object p1

    .line 20
    .line 21
    .line 22
    invoke-virtual {p1}, Landroid/widget/PopupWindow;->dismiss()V

    .line 23
    return-void
.end method


# virtual methods
.method public getItemCount()I
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/c0$e;->playbackSpeedTexts:[Ljava/lang/String;

    .line 3
    array-length v0, v0

    .line 4
    return v0
.end method

.method public h()Ljava/lang/String;
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/c0$e;->playbackSpeedTexts:[Ljava/lang/String;

    .line 3
    .line 4
    iget v1, p0, Lcom/google/android/exoplayer2/ui/c0$e;->selectedIndex:I

    .line 5
    .line 6
    aget-object v0, v0, v1

    .line 7
    return-object v0
.end method

.method public j(Lcom/google/android/exoplayer2/ui/c0$i;I)V
    .locals 3

    .line 1
    .line 2
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/c0$e;->playbackSpeedTexts:[Ljava/lang/String;

    .line 3
    array-length v1, v0

    .line 4
    .line 5
    if-ge p2, v1, :cond_0

    .line 6
    .line 7
    iget-object v1, p1, Lcom/google/android/exoplayer2/ui/c0$i;->textView:Landroid/widget/TextView;

    .line 8
    .line 9
    aget-object v0, v0, p2

    .line 10
    .line 11
    .line 12
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 13
    .line 14
    :cond_0
    iget v0, p0, Lcom/google/android/exoplayer2/ui/c0$e;->selectedIndex:I

    .line 15
    const/4 v1, 0x0

    .line 16
    .line 17
    if-ne p2, v0, :cond_1

    .line 18
    .line 19
    iget-object v0, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 20
    const/4 v2, 0x1

    .line 21
    .line 22
    .line 23
    invoke-virtual {v0, v2}, Landroid/view/View;->setSelected(Z)V

    .line 24
    .line 25
    iget-object v0, p1, Lcom/google/android/exoplayer2/ui/c0$i;->checkView:Landroid/view/View;

    .line 26
    .line 27
    .line 28
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 29
    goto :goto_0

    .line 30
    .line 31
    :cond_1
    iget-object v0, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 32
    .line 33
    .line 34
    invoke-virtual {v0, v1}, Landroid/view/View;->setSelected(Z)V

    .line 35
    .line 36
    iget-object v0, p1, Lcom/google/android/exoplayer2/ui/c0$i;->checkView:Landroid/view/View;

    .line 37
    const/4 v1, 0x4

    .line 38
    .line 39
    .line 40
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 41
    .line 42
    :goto_0
    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 43
    .line 44
    new-instance v0, Lcom/google/android/exoplayer2/ui/e0;

    .line 45
    .line 46
    .line 47
    invoke-direct {v0, p0, p2}, Lcom/google/android/exoplayer2/ui/e0;-><init>(Lcom/google/android/exoplayer2/ui/c0$e;I)V

    .line 48
    .line 49
    .line 50
    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 51
    return-void
.end method

.method public k(Landroid/view/ViewGroup;I)Lcom/google/android/exoplayer2/ui/c0$i;
    .locals 2

    .line 1
    .line 2
    iget-object p2, p0, Lcom/google/android/exoplayer2/ui/c0$e;->this$0:Lcom/google/android/exoplayer2/ui/c0;

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

.method public l(F)V
    .locals 5

    .line 1
    const/4 v0, 0x0

    .line 2
    .line 3
    .line 4
    const v1, 0x7f7fffff    # Float.MAX_VALUE

    .line 5
    move v2, v1

    .line 6
    move v1, v0

    .line 7
    .line 8
    :goto_0
    iget-object v3, p0, Lcom/google/android/exoplayer2/ui/c0$e;->playbackSpeeds:[F

    .line 9
    array-length v4, v3

    .line 10
    .line 11
    if-ge v0, v4, :cond_1

    .line 12
    .line 13
    aget v3, v3, v0

    .line 14
    .line 15
    sub-float v3, p1, v3

    .line 16
    .line 17
    .line 18
    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    .line 19
    move-result v3

    .line 20
    .line 21
    cmpg-float v4, v3, v2

    .line 22
    .line 23
    if-gez v4, :cond_0

    .line 24
    move v1, v0

    .line 25
    move v2, v3

    .line 26
    .line 27
    :cond_0
    add-int/lit8 v0, v0, 0x1

    .line 28
    goto :goto_0

    .line 29
    .line 30
    :cond_1
    iput v1, p0, Lcom/google/android/exoplayer2/ui/c0$e;->selectedIndex:I

    .line 31
    return-void
.end method

.method public bridge synthetic onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 0

    .line 1
    .line 2
    check-cast p1, Lcom/google/android/exoplayer2/ui/c0$i;

    .line 3
    .line 4
    .line 5
    invoke-virtual {p0, p1, p2}, Lcom/google/android/exoplayer2/ui/c0$e;->j(Lcom/google/android/exoplayer2/ui/c0$i;I)V

    .line 6
    return-void
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0, p1, p2}, Lcom/google/android/exoplayer2/ui/c0$e;->k(Landroid/view/ViewGroup;I)Lcom/google/android/exoplayer2/ui/c0$i;

    .line 4
    move-result-object p1

    .line 5
    return-object p1
.end method
