.class final Lcom/narvii/chat/ChatGoLivePickerDialog$ChatGoLiveAdapter$ChatGoLiveViewHolder;
.super Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/narvii/chat/ChatGoLivePickerDialog$ChatGoLiveAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "ChatGoLiveViewHolder"
.end annotation


# instance fields
.field private final hintTV:Landroid/widget/TextView;

.field private final modeIV:Landroid/widget/ImageView;

.field private final scaleView:Lcom/narvii/widget/ScaleView;

.field private final titleTV:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 1
    .param p1    # Landroid/view/View;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    .line 2
    const-string v0, "view"

    .line 3
    .line 4
    .line 5
    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-direct {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 9
    .line 10
    iget-object p1, p0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 11
    .line 12
    .line 13
    const v0, 0x7f0a0c6c

    .line 14
    .line 15
    .line 16
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 17
    move-result-object p1

    .line 18
    .line 19
    check-cast p1, Lcom/narvii/widget/ScaleView;

    .line 20
    .line 21
    iput-object p1, p0, Lcom/narvii/chat/ChatGoLivePickerDialog$ChatGoLiveAdapter$ChatGoLiveViewHolder;->scaleView:Lcom/narvii/widget/ScaleView;

    .line 22
    .line 23
    iget-object p1, p0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 24
    .line 25
    .line 26
    const v0, 0x7f0a097e

    .line 27
    .line 28
    .line 29
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 30
    move-result-object p1

    .line 31
    .line 32
    check-cast p1, Landroid/widget/ImageView;

    .line 33
    .line 34
    iput-object p1, p0, Lcom/narvii/chat/ChatGoLivePickerDialog$ChatGoLiveAdapter$ChatGoLiveViewHolder;->modeIV:Landroid/widget/ImageView;

    .line 35
    .line 36
    iget-object p1, p0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 37
    .line 38
    .line 39
    const v0, 0x7f0a097f

    .line 40
    .line 41
    .line 42
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 43
    move-result-object p1

    .line 44
    .line 45
    check-cast p1, Landroid/widget/TextView;

    .line 46
    .line 47
    iput-object p1, p0, Lcom/narvii/chat/ChatGoLivePickerDialog$ChatGoLiveAdapter$ChatGoLiveViewHolder;->titleTV:Landroid/widget/TextView;

    .line 48
    .line 49
    iget-object p1, p0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 50
    .line 51
    .line 52
    const v0, 0x7f0a097d

    .line 53
    .line 54
    .line 55
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 56
    move-result-object p1

    .line 57
    .line 58
    check-cast p1, Landroid/widget/TextView;

    .line 59
    .line 60
    iput-object p1, p0, Lcom/narvii/chat/ChatGoLivePickerDialog$ChatGoLiveAdapter$ChatGoLiveViewHolder;->hintTV:Landroid/widget/TextView;

    .line 61
    return-void
.end method


# virtual methods
.method public final updateView(IF)V
    .locals 5

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/chat/ChatGoLivePickerDialog$ChatGoLiveAdapter$ChatGoLiveViewHolder;->scaleView:Lcom/narvii/widget/ScaleView;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0, p2}, Lcom/narvii/widget/ScaleView;->setScale(F)V

    .line 6
    .line 7
    iget-object v0, p0, Lcom/narvii/chat/ChatGoLivePickerDialog$ChatGoLiveAdapter$ChatGoLiveViewHolder;->scaleView:Lcom/narvii/widget/ScaleView;

    .line 8
    .line 9
    .line 10
    .line 11
    .line 12
    const-wide v1, 0x3fe3333333333333L    # 0.6

    .line 13
    float-to-double v3, p2

    .line 14
    mul-double/2addr v3, v1

    .line 15
    .line 16
    .line 17
    const p2, 0x3ecccccd    # 0.4f

    .line 18
    float-to-double v1, p2

    .line 19
    add-double/2addr v3, v1

    .line 20
    double-to-float p2, v3

    .line 21
    .line 22
    .line 23
    invoke-virtual {v0, p2}, Landroid/view/View;->setAlpha(F)V

    .line 24
    const/4 p2, 0x1

    .line 25
    .line 26
    if-eq p1, p2, :cond_2

    .line 27
    const/4 p2, 0x4

    .line 28
    .line 29
    if-eq p1, p2, :cond_1

    .line 30
    const/4 p2, 0x5

    .line 31
    .line 32
    if-eq p1, p2, :cond_0

    .line 33
    goto :goto_0

    .line 34
    .line 35
    :cond_0
    iget-object p1, p0, Lcom/narvii/chat/ChatGoLivePickerDialog$ChatGoLiveAdapter$ChatGoLiveViewHolder;->modeIV:Landroid/widget/ImageView;

    .line 36
    .line 37
    .line 38
    const p2, 0x7f0807d6

    .line 39
    .line 40
    .line 41
    invoke-virtual {p1, p2}, Landroid/view/View;->setBackgroundResource(I)V

    .line 42
    .line 43
    iget-object p1, p0, Lcom/narvii/chat/ChatGoLivePickerDialog$ChatGoLiveAdapter$ChatGoLiveViewHolder;->titleTV:Landroid/widget/TextView;

    .line 44
    .line 45
    .line 46
    const p2, 0x7f121269

    .line 47
    .line 48
    .line 49
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(I)V

    .line 50
    .line 51
    iget-object p1, p0, Lcom/narvii/chat/ChatGoLivePickerDialog$ChatGoLiveAdapter$ChatGoLiveViewHolder;->hintTV:Landroid/widget/TextView;

    .line 52
    .line 53
    .line 54
    const p2, 0x7f12126a

    .line 55
    .line 56
    .line 57
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(I)V

    .line 58
    goto :goto_0

    .line 59
    .line 60
    :cond_1
    iget-object p1, p0, Lcom/narvii/chat/ChatGoLivePickerDialog$ChatGoLiveAdapter$ChatGoLiveViewHolder;->modeIV:Landroid/widget/ImageView;

    .line 61
    .line 62
    .line 63
    const p2, 0x7f0807d5

    .line 64
    .line 65
    .line 66
    invoke-virtual {p1, p2}, Landroid/view/View;->setBackgroundResource(I)V

    .line 67
    .line 68
    iget-object p1, p0, Lcom/narvii/chat/ChatGoLivePickerDialog$ChatGoLiveAdapter$ChatGoLiveViewHolder;->titleTV:Landroid/widget/TextView;

    .line 69
    .line 70
    .line 71
    const p2, 0x7f120bb1

    .line 72
    .line 73
    .line 74
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(I)V

    .line 75
    .line 76
    iget-object p1, p0, Lcom/narvii/chat/ChatGoLivePickerDialog$ChatGoLiveAdapter$ChatGoLiveViewHolder;->hintTV:Landroid/widget/TextView;

    .line 77
    .line 78
    .line 79
    const p2, 0x7f121261

    .line 80
    .line 81
    .line 82
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(I)V

    .line 83
    goto :goto_0

    .line 84
    .line 85
    :cond_2
    iget-object p1, p0, Lcom/narvii/chat/ChatGoLivePickerDialog$ChatGoLiveAdapter$ChatGoLiveViewHolder;->modeIV:Landroid/widget/ImageView;

    .line 86
    .line 87
    .line 88
    const p2, 0x7f0807d4

    .line 89
    .line 90
    .line 91
    invoke-virtual {p1, p2}, Landroid/view/View;->setBackgroundResource(I)V

    .line 92
    .line 93
    iget-object p1, p0, Lcom/narvii/chat/ChatGoLivePickerDialog$ChatGoLiveAdapter$ChatGoLiveViewHolder;->titleTV:Landroid/widget/TextView;

    .line 94
    .line 95
    .line 96
    const p2, 0x7f121276

    .line 97
    .line 98
    .line 99
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(I)V

    .line 100
    .line 101
    iget-object p1, p0, Lcom/narvii/chat/ChatGoLivePickerDialog$ChatGoLiveAdapter$ChatGoLiveViewHolder;->hintTV:Landroid/widget/TextView;

    .line 102
    .line 103
    .line 104
    const p2, 0x7f120b9e

    .line 105
    .line 106
    .line 107
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(I)V

    .line 108
    :goto_0
    return-void
.end method
