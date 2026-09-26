.class Lcom/narvii/editor/cropping/basic/ColorPickerAdapter$ColorPickerViewHolder;
.super Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
.source "SourceFile"


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

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/editor/cropping/basic/ColorPickerAdapter$ColorPickerViewHolder;->this$0:Lcom/narvii/editor/cropping/basic/ColorPickerAdapter;

    .line 3
    .line 4
    .line 5
    invoke-direct {p0, p2}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 6
    .line 7
    new-instance p1, Lcom/narvii/editor/cropping/basic/a;

    .line 8
    .line 9
    .line 10
    invoke-direct {p1, p0}, Lcom/narvii/editor/cropping/basic/a;-><init>(Lcom/narvii/editor/cropping/basic/ColorPickerAdapter$ColorPickerViewHolder;)V

    .line 11
    .line 12
    .line 13
    invoke-virtual {p2, p1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 14
    return-void
.end method

.method public static synthetic a(Lcom/narvii/editor/cropping/basic/ColorPickerAdapter$ColorPickerViewHolder;Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/narvii/editor/cropping/basic/ColorPickerAdapter$ColorPickerViewHolder;->lambda$new$0(Landroid/view/View;)V

    return-void
.end method

.method private synthetic lambda$new$0(Landroid/view/View;)V
    .locals 2

    .line 1
    .line 2
    iget-object p1, p0, Lcom/narvii/editor/cropping/basic/ColorPickerAdapter$ColorPickerViewHolder;->listener:Lcom/narvii/editor/cropping/basic/IColorSelectedListener;

    .line 3
    .line 4
    if-eqz p1, :cond_0

    .line 5
    .line 6
    iget-object v0, p0, Lcom/narvii/editor/cropping/basic/ColorPickerAdapter$ColorPickerViewHolder;->color:Ljava/lang/String;

    .line 7
    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    iget v1, p0, Lcom/narvii/editor/cropping/basic/ColorPickerAdapter$ColorPickerViewHolder;->position:I

    .line 11
    .line 12
    .line 13
    invoke-interface {p1, v0, v1}, Lcom/narvii/editor/cropping/basic/IColorSelectedListener;->onColorSelected(Ljava/lang/String;I)V

    .line 14
    .line 15
    iget-object p1, p0, Lcom/narvii/editor/cropping/basic/ColorPickerAdapter$ColorPickerViewHolder;->this$0:Lcom/narvii/editor/cropping/basic/ColorPickerAdapter;

    .line 16
    .line 17
    iget v0, p0, Lcom/narvii/editor/cropping/basic/ColorPickerAdapter$ColorPickerViewHolder;->position:I

    .line 18
    .line 19
    .line 20
    invoke-virtual {p1, v0}, Lcom/narvii/editor/cropping/basic/ColorPickerAdapter;->setSelectedIndex(I)V

    .line 21
    :cond_0
    return-void
.end method
