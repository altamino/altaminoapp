.class Lcom/google/android/exoplayer2/ui/c0$h;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplayer2/ui/c0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "h"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/recyclerview/widget/RecyclerView$Adapter<",
        "Lcom/google/android/exoplayer2/ui/c0$g;",
        ">;"
    }
.end annotation


# instance fields
.field private final iconIds:[Landroid/graphics/drawable/Drawable;

.field private final mainTexts:[Ljava/lang/String;

.field private final subTexts:[Ljava/lang/String;

.field final synthetic this$0:Lcom/google/android/exoplayer2/ui/c0;


# direct methods
.method public constructor <init>(Lcom/google/android/exoplayer2/ui/c0;[Ljava/lang/String;[Landroid/graphics/drawable/Drawable;)V
    .locals 0

    .line 1
    .line 2
    iput-object p1, p0, Lcom/google/android/exoplayer2/ui/c0$h;->this$0:Lcom/google/android/exoplayer2/ui/c0;

    .line 3
    .line 4
    .line 5
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    .line 6
    .line 7
    iput-object p2, p0, Lcom/google/android/exoplayer2/ui/c0$h;->mainTexts:[Ljava/lang/String;

    .line 8
    array-length p1, p2

    .line 9
    .line 10
    new-array p1, p1, [Ljava/lang/String;

    .line 11
    .line 12
    iput-object p1, p0, Lcom/google/android/exoplayer2/ui/c0$h;->subTexts:[Ljava/lang/String;

    .line 13
    .line 14
    iput-object p3, p0, Lcom/google/android/exoplayer2/ui/c0$h;->iconIds:[Landroid/graphics/drawable/Drawable;

    .line 15
    return-void
.end method


# virtual methods
.method public g(Lcom/google/android/exoplayer2/ui/c0$g;I)V
    .locals 3

    .line 1
    .line 2
    .line 3
    invoke-static {p1}, Lcom/google/android/exoplayer2/ui/c0$g;->b(Lcom/google/android/exoplayer2/ui/c0$g;)Landroid/widget/TextView;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    iget-object v1, p0, Lcom/google/android/exoplayer2/ui/c0$h;->mainTexts:[Ljava/lang/String;

    .line 7
    .line 8
    aget-object v1, v1, p2

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 12
    .line 13
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/c0$h;->subTexts:[Ljava/lang/String;

    .line 14
    .line 15
    aget-object v0, v0, p2

    .line 16
    .line 17
    const/16 v1, 0x8

    .line 18
    .line 19
    if-nez v0, :cond_0

    .line 20
    .line 21
    .line 22
    invoke-static {p1}, Lcom/google/android/exoplayer2/ui/c0$g;->c(Lcom/google/android/exoplayer2/ui/c0$g;)Landroid/widget/TextView;

    .line 23
    move-result-object v0

    .line 24
    .line 25
    .line 26
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 27
    goto :goto_0

    .line 28
    .line 29
    .line 30
    :cond_0
    invoke-static {p1}, Lcom/google/android/exoplayer2/ui/c0$g;->c(Lcom/google/android/exoplayer2/ui/c0$g;)Landroid/widget/TextView;

    .line 31
    move-result-object v0

    .line 32
    .line 33
    iget-object v2, p0, Lcom/google/android/exoplayer2/ui/c0$h;->subTexts:[Ljava/lang/String;

    .line 34
    .line 35
    aget-object v2, v2, p2

    .line 36
    .line 37
    .line 38
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 39
    .line 40
    :goto_0
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/c0$h;->iconIds:[Landroid/graphics/drawable/Drawable;

    .line 41
    .line 42
    aget-object v0, v0, p2

    .line 43
    .line 44
    if-nez v0, :cond_1

    .line 45
    .line 46
    .line 47
    invoke-static {p1}, Lcom/google/android/exoplayer2/ui/c0$g;->d(Lcom/google/android/exoplayer2/ui/c0$g;)Landroid/widget/ImageView;

    .line 48
    move-result-object p1

    .line 49
    .line 50
    .line 51
    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 52
    goto :goto_1

    .line 53
    .line 54
    .line 55
    :cond_1
    invoke-static {p1}, Lcom/google/android/exoplayer2/ui/c0$g;->d(Lcom/google/android/exoplayer2/ui/c0$g;)Landroid/widget/ImageView;

    .line 56
    move-result-object p1

    .line 57
    .line 58
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/c0$h;->iconIds:[Landroid/graphics/drawable/Drawable;

    .line 59
    .line 60
    aget-object p2, v0, p2

    .line 61
    .line 62
    .line 63
    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 64
    :goto_1
    return-void
.end method

.method public getItemCount()I
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/c0$h;->mainTexts:[Ljava/lang/String;

    .line 3
    array-length v0, v0

    .line 4
    return v0
.end method

.method public getItemId(I)J
    .locals 2

    int-to-long v0, p1

    return-wide v0
.end method

.method public h(Landroid/view/ViewGroup;I)Lcom/google/android/exoplayer2/ui/c0$g;
    .locals 2

    .line 1
    .line 2
    iget-object p2, p0, Lcom/google/android/exoplayer2/ui/c0$h;->this$0:Lcom/google/android/exoplayer2/ui/c0;

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
    sget v0, Lcom/google/android/exoplayer2/ui/r;->exo_styled_settings_list_item:I

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
    new-instance p2, Lcom/google/android/exoplayer2/ui/c0$g;

    .line 20
    .line 21
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/c0$h;->this$0:Lcom/google/android/exoplayer2/ui/c0;

    .line 22
    .line 23
    .line 24
    invoke-direct {p2, v0, p1}, Lcom/google/android/exoplayer2/ui/c0$g;-><init>(Lcom/google/android/exoplayer2/ui/c0;Landroid/view/View;)V

    .line 25
    return-object p2
.end method

.method public i(ILjava/lang/String;)V
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/c0$h;->subTexts:[Ljava/lang/String;

    .line 3
    .line 4
    aput-object p2, v0, p1

    .line 5
    return-void
.end method

.method public bridge synthetic onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 0

    .line 1
    .line 2
    check-cast p1, Lcom/google/android/exoplayer2/ui/c0$g;

    .line 3
    .line 4
    .line 5
    invoke-virtual {p0, p1, p2}, Lcom/google/android/exoplayer2/ui/c0$h;->g(Lcom/google/android/exoplayer2/ui/c0$g;I)V

    .line 6
    return-void
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0, p1, p2}, Lcom/google/android/exoplayer2/ui/c0$h;->h(Landroid/view/ViewGroup;I)Lcom/google/android/exoplayer2/ui/c0$g;

    .line 4
    move-result-object p1

    .line 5
    return-object p1
.end method
