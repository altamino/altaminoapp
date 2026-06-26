.class Lcom/narvii/editor/cropping/basic/ColorPickerAdapter$ColorPickerViewHolder;
.super Landroid/support/v7/widget/RecyclerView$ViewHolder;
.source "ColorPickerAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/narvii/editor/cropping/basic/ColorPickerAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ColorPickerViewHolder"
.end annotation


# instance fields
.field color:Ljava/lang/String;

.field listener:Lcom/narvii/editor/cropping/basic/IColorSelectedListener;

.field position:I

.field final synthetic this$0:Lcom/narvii/editor/cropping/basic/ColorPickerAdapter;


# direct methods
.method public constructor <init>(Lcom/narvii/editor/cropping/basic/ColorPickerAdapter;Landroid/view/View;)V
    .locals 0

    .line 70
    iput-object p1, p0, Lcom/narvii/editor/cropping/basic/ColorPickerAdapter$ColorPickerViewHolder;->this$0:Lcom/narvii/editor/cropping/basic/ColorPickerAdapter;

    .line 71
    invoke-direct {p0, p2}, Landroid/support/v7/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 72
    new-instance p1, Lcom/narvii/editor/cropping/basic/-$$Lambda$ColorPickerAdapter$ColorPickerViewHolder$_OkLtzcxBTADhuCojVuvq337fPc;

    invoke-direct {p1, p0}, Lcom/narvii/editor/cropping/basic/-$$Lambda$ColorPickerAdapter$ColorPickerViewHolder$_OkLtzcxBTADhuCojVuvq337fPc;-><init>(Lcom/narvii/editor/cropping/basic/ColorPickerAdapter$ColorPickerViewHolder;)V

    invoke-virtual {p2, p1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method


# virtual methods
.method public synthetic lambda$new$0$ColorPickerAdapter$ColorPickerViewHolder(Landroid/view/View;)V
    .locals 2

    .line 73
    iget-object p1, p0, Lcom/narvii/editor/cropping/basic/ColorPickerAdapter$ColorPickerViewHolder;->listener:Lcom/narvii/editor/cropping/basic/IColorSelectedListener;

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/narvii/editor/cropping/basic/ColorPickerAdapter$ColorPickerViewHolder;->color:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 74
    iget v1, p0, Lcom/narvii/editor/cropping/basic/ColorPickerAdapter$ColorPickerViewHolder;->position:I

    invoke-interface {p1, v0, v1}, Lcom/narvii/editor/cropping/basic/IColorSelectedListener;->onColorSelected(Ljava/lang/String;I)V

    .line 75
    iget-object p1, p0, Lcom/narvii/editor/cropping/basic/ColorPickerAdapter$ColorPickerViewHolder;->this$0:Lcom/narvii/editor/cropping/basic/ColorPickerAdapter;

    iget v0, p0, Lcom/narvii/editor/cropping/basic/ColorPickerAdapter$ColorPickerViewHolder;->position:I

    invoke-virtual {p1, v0}, Lcom/narvii/editor/cropping/basic/ColorPickerAdapter;->setSelectedIndex(I)V

    :cond_0
    return-void
.end method
