.class Lcom/narvii/chat/ChatBackgroundPickerRecycler$BackgroundViewHolder;
.super Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/narvii/chat/ChatBackgroundPickerRecycler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "BackgroundViewHolder"
.end annotation


# instance fields
.field private final blur:Lcom/narvii/widget/BlurImageView;

.field private final img:Lcom/narvii/widget/NVImageView;

.field private final selected:Landroid/view/View;

.field final synthetic this$0:Lcom/narvii/chat/ChatBackgroundPickerRecycler;


# direct methods
.method public constructor <init>(Lcom/narvii/chat/ChatBackgroundPickerRecycler;Landroid/view/View;)V
    .locals 1

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/chat/ChatBackgroundPickerRecycler$BackgroundViewHolder;->this$0:Lcom/narvii/chat/ChatBackgroundPickerRecycler;

    .line 3
    .line 4
    .line 5
    invoke-direct {p0, p2}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 6
    .line 7
    .line 8
    const v0, 0x7f0a0288

    .line 9
    .line 10
    .line 11
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 12
    move-result-object v0

    .line 13
    .line 14
    check-cast v0, Lcom/narvii/widget/NVImageView;

    .line 15
    .line 16
    iput-object v0, p0, Lcom/narvii/chat/ChatBackgroundPickerRecycler$BackgroundViewHolder;->img:Lcom/narvii/widget/NVImageView;

    .line 17
    .line 18
    .line 19
    const v0, 0x7f0a0287

    .line 20
    .line 21
    .line 22
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 23
    move-result-object v0

    .line 24
    .line 25
    check-cast v0, Lcom/narvii/widget/BlurImageView;

    .line 26
    .line 27
    iput-object v0, p0, Lcom/narvii/chat/ChatBackgroundPickerRecycler$BackgroundViewHolder;->blur:Lcom/narvii/widget/BlurImageView;

    .line 28
    .line 29
    .line 30
    const v0, 0x7f0a0289

    .line 31
    .line 32
    .line 33
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 34
    move-result-object v0

    .line 35
    .line 36
    iput-object v0, p0, Lcom/narvii/chat/ChatBackgroundPickerRecycler$BackgroundViewHolder;->selected:Landroid/view/View;

    .line 37
    .line 38
    .line 39
    invoke-virtual {p2, p1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 40
    return-void
.end method

.method static bridge synthetic a(Lcom/narvii/chat/ChatBackgroundPickerRecycler$BackgroundViewHolder;)Lcom/narvii/widget/BlurImageView;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/narvii/chat/ChatBackgroundPickerRecycler$BackgroundViewHolder;->blur:Lcom/narvii/widget/BlurImageView;

    return-object p0
.end method

.method static bridge synthetic b(Lcom/narvii/chat/ChatBackgroundPickerRecycler$BackgroundViewHolder;)Lcom/narvii/widget/NVImageView;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/narvii/chat/ChatBackgroundPickerRecycler$BackgroundViewHolder;->img:Lcom/narvii/widget/NVImageView;

    return-object p0
.end method

.method static bridge synthetic c(Lcom/narvii/chat/ChatBackgroundPickerRecycler$BackgroundViewHolder;)Landroid/view/View;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/narvii/chat/ChatBackgroundPickerRecycler$BackgroundViewHolder;->selected:Landroid/view/View;

    return-object p0
.end method
