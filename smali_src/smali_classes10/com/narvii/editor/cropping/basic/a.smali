.class public final synthetic Lcom/narvii/editor/cropping/basic/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic a:Lcom/narvii/editor/cropping/basic/ColorPickerAdapter$ColorPickerViewHolder;


# direct methods
.method public synthetic constructor <init>(Lcom/narvii/editor/cropping/basic/ColorPickerAdapter$ColorPickerViewHolder;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/narvii/editor/cropping/basic/a;->a:Lcom/narvii/editor/cropping/basic/ColorPickerAdapter$ColorPickerViewHolder;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/narvii/editor/cropping/basic/a;->a:Lcom/narvii/editor/cropping/basic/ColorPickerAdapter$ColorPickerViewHolder;

    invoke-static {v0, p1}, Lcom/narvii/editor/cropping/basic/ColorPickerAdapter$ColorPickerViewHolder;->a(Lcom/narvii/editor/cropping/basic/ColorPickerAdapter$ColorPickerViewHolder;Landroid/view/View;)V

    return-void
.end method
