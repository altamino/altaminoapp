.class final Lcom/narvii/chat/ChatGoLivePickerDialog$ChatGoLiveAdapter$ChatGoLiveViewHolder;
.super Landroid/support/v7/widget/RecyclerView$ViewHolder;
.source "ChatGoLivePickerDialog.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/narvii/chat/ChatGoLivePickerDialog$ChatGoLiveAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "ChatGoLiveViewHolder"
.end annotation


# instance fields
.field private final hintTV:Landroid/widget/TextView;

.field private final modeIV:Landroid/widget/ImageView;

.field private final scaleView:Lcom/narvii/widget/ScaleView;

.field final synthetic this$0:Lcom/narvii/chat/ChatGoLivePickerDialog$ChatGoLiveAdapter;

.field private final titleTV:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Lcom/narvii/chat/ChatGoLivePickerDialog$ChatGoLiveAdapter;Landroid/view/View;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            ")V"
        }
    .end annotation

    const-string/jumbo v0, "view"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 175
    iput-object p1, p0, Lcom/narvii/chat/ChatGoLivePickerDialog$ChatGoLiveAdapter$ChatGoLiveViewHolder;->this$0:Lcom/narvii/chat/ChatGoLivePickerDialog$ChatGoLiveAdapter;

    invoke-direct {p0, p2}, Landroid/support/v7/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 176
    iget-object p1, p0, Landroid/support/v7/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    const p2, 0x7f0909a3

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/narvii/widget/ScaleView;

    iput-object p1, p0, Lcom/narvii/chat/ChatGoLivePickerDialog$ChatGoLiveAdapter$ChatGoLiveViewHolder;->scaleView:Lcom/narvii/widget/ScaleView;

    .line 177
    iget-object p1, p0, Landroid/support/v7/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    const p2, 0x7f09071c

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/narvii/chat/ChatGoLivePickerDialog$ChatGoLiveAdapter$ChatGoLiveViewHolder;->modeIV:Landroid/widget/ImageView;

    .line 178
    iget-object p1, p0, Landroid/support/v7/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    const p2, 0x7f09071d

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/narvii/chat/ChatGoLivePickerDialog$ChatGoLiveAdapter$ChatGoLiveViewHolder;->titleTV:Landroid/widget/TextView;

    .line 179
    iget-object p1, p0, Landroid/support/v7/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    const p2, 0x7f09071b

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/narvii/chat/ChatGoLivePickerDialog$ChatGoLiveAdapter$ChatGoLiveViewHolder;->hintTV:Landroid/widget/TextView;

    return-void
.end method


# virtual methods
.method public final updateView(IF)V
    .locals 5

    .line 182
    iget-object v0, p0, Lcom/narvii/chat/ChatGoLivePickerDialog$ChatGoLiveAdapter$ChatGoLiveViewHolder;->scaleView:Lcom/narvii/widget/ScaleView;

    const-string v1, "scaleView"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Lcom/narvii/widget/ScaleView;->setScale(F)V

    .line 183
    iget-object v0, p0, Lcom/narvii/chat/ChatGoLivePickerDialog$ChatGoLiveAdapter$ChatGoLiveViewHolder;->scaleView:Lcom/narvii/widget/ScaleView;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    float-to-double v1, p2

    const-wide v3, 0x3fe3333333333333L    # 0.6

    invoke-static {v1, v2}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v1, v1, v3

    const p2, 0x3ecccccd    # 0.4f

    float-to-double v3, p2

    invoke-static {v3, v4}, Ljava/lang/Double;->isNaN(D)Z

    add-double/2addr v1, v3

    double-to-float p2, v1

    invoke-virtual {v0, p2}, Landroid/widget/LinearLayout;->setAlpha(F)V

    const/4 p2, 0x1

    if-eq p1, p2, :cond_2

    const/4 p2, 0x4

    if-eq p1, p2, :cond_1

    const/4 p2, 0x5

    if-eq p1, p2, :cond_0

    goto :goto_0

    .line 194
    :cond_0
    iget-object p1, p0, Lcom/narvii/chat/ChatGoLivePickerDialog$ChatGoLiveAdapter$ChatGoLiveViewHolder;->modeIV:Landroid/widget/ImageView;

    const p2, 0x7f0805f6

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 195
    iget-object p1, p0, Lcom/narvii/chat/ChatGoLivePickerDialog$ChatGoLiveAdapter$ChatGoLiveViewHolder;->titleTV:Landroid/widget/TextView;

    const p2, 0x7f0f1160

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(I)V

    .line 196
    iget-object p1, p0, Lcom/narvii/chat/ChatGoLivePickerDialog$ChatGoLiveAdapter$ChatGoLiveViewHolder;->hintTV:Landroid/widget/TextView;

    const p2, 0x7f0f1161

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    .line 202
    :cond_1
    iget-object p1, p0, Lcom/narvii/chat/ChatGoLivePickerDialog$ChatGoLiveAdapter$ChatGoLiveViewHolder;->modeIV:Landroid/widget/ImageView;

    const p2, 0x7f0805f5

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 203
    iget-object p1, p0, Lcom/narvii/chat/ChatGoLivePickerDialog$ChatGoLiveAdapter$ChatGoLiveViewHolder;->titleTV:Landroid/widget/TextView;

    const p2, 0x7f0f0b03

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(I)V

    .line 204
    iget-object p1, p0, Lcom/narvii/chat/ChatGoLivePickerDialog$ChatGoLiveAdapter$ChatGoLiveViewHolder;->hintTV:Landroid/widget/TextView;

    const p2, 0x7f0f1156

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    .line 186
    :cond_2
    iget-object p1, p0, Lcom/narvii/chat/ChatGoLivePickerDialog$ChatGoLiveAdapter$ChatGoLiveViewHolder;->modeIV:Landroid/widget/ImageView;

    const p2, 0x7f0805f4

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 187
    iget-object p1, p0, Lcom/narvii/chat/ChatGoLivePickerDialog$ChatGoLiveAdapter$ChatGoLiveViewHolder;->titleTV:Landroid/widget/TextView;

    const p2, 0x7f0f116f

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(I)V

    .line 188
    iget-object p1, p0, Lcom/narvii/chat/ChatGoLivePickerDialog$ChatGoLiveAdapter$ChatGoLiveViewHolder;->hintTV:Landroid/widget/TextView;

    const p2, 0x7f0f0af3

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(I)V

    :goto_0
    return-void
.end method
