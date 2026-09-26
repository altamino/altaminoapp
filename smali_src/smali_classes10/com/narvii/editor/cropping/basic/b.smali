.class public final synthetic Lcom/narvii/editor/cropping/basic/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic a:Lcom/narvii/editor/cropping/basic/ColorPickerView;


# direct methods
.method public synthetic constructor <init>(Lcom/narvii/editor/cropping/basic/ColorPickerView;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/narvii/editor/cropping/basic/b;->a:Lcom/narvii/editor/cropping/basic/ColorPickerView;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/narvii/editor/cropping/basic/b;->a:Lcom/narvii/editor/cropping/basic/ColorPickerView;

    invoke-static {v0, p1}, Lcom/narvii/editor/cropping/basic/ColorPickerView;->a(Lcom/narvii/editor/cropping/basic/ColorPickerView;Landroid/view/View;)V

    return-void
.end method
