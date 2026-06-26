.class Lcom/narvii/chat/ChatBackgroundPickerRecycler$BackgroundViewHolder;
.super Landroid/support/v7/widget/RecyclerView$ViewHolder;
.source "ChatBackgroundPickerRecycler.java"


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

    .line 240
    iput-object p1, p0, Lcom/narvii/chat/ChatBackgroundPickerRecycler$BackgroundViewHolder;->this$0:Lcom/narvii/chat/ChatBackgroundPickerRecycler;

    .line 241
    invoke-direct {p0, p2}, Landroid/support/v7/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    const v0, 0x7f0901d1

    .line 242
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/narvii/widget/NVImageView;

    iput-object v0, p0, Lcom/narvii/chat/ChatBackgroundPickerRecycler$BackgroundViewHolder;->img:Lcom/narvii/widget/NVImageView;

    const v0, 0x7f0901d0

    .line 243
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/narvii/widget/BlurImageView;

    iput-object v0, p0, Lcom/narvii/chat/ChatBackgroundPickerRecycler$BackgroundViewHolder;->blur:Lcom/narvii/widget/BlurImageView;

    const v0, 0x7f0901d2

    .line 244
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/narvii/chat/ChatBackgroundPickerRecycler$BackgroundViewHolder;->selected:Landroid/view/View;

    .line 245
    invoke-virtual {p2, p1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method static synthetic access$600(Lcom/narvii/chat/ChatBackgroundPickerRecycler$BackgroundViewHolder;)Lcom/narvii/widget/NVImageView;
    .locals 0

    .line 234
    iget-object p0, p0, Lcom/narvii/chat/ChatBackgroundPickerRecycler$BackgroundViewHolder;->img:Lcom/narvii/widget/NVImageView;

    return-object p0
.end method

.method static synthetic access$700(Lcom/narvii/chat/ChatBackgroundPickerRecycler$BackgroundViewHolder;)Lcom/narvii/widget/BlurImageView;
    .locals 0

    .line 234
    iget-object p0, p0, Lcom/narvii/chat/ChatBackgroundPickerRecycler$BackgroundViewHolder;->blur:Lcom/narvii/widget/BlurImageView;

    return-object p0
.end method

.method static synthetic access$900(Lcom/narvii/chat/ChatBackgroundPickerRecycler$BackgroundViewHolder;)Landroid/view/View;
    .locals 0

    .line 234
    iget-object p0, p0, Lcom/narvii/chat/ChatBackgroundPickerRecycler$BackgroundViewHolder;->selected:Landroid/view/View;

    return-object p0
.end method
