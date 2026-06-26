.class Lcom/narvii/item/property/ItemPropertyEditor$1;
.super Landroid/view/GestureDetector$SimpleOnGestureListener;
.source "ItemPropertyEditor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/narvii/item/property/ItemPropertyEditor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/item/property/ItemPropertyEditor;


# direct methods
.method constructor <init>(Lcom/narvii/item/property/ItemPropertyEditor;)V
    .locals 0

    .line 73
    iput-object p1, p0, Lcom/narvii/item/property/ItemPropertyEditor$1;->this$0:Lcom/narvii/item/property/ItemPropertyEditor;

    invoke-direct {p0}, Landroid/view/GestureDetector$SimpleOnGestureListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onLongPress(Landroid/view/MotionEvent;)V
    .locals 1

    .line 76
    iget-object p1, p0, Lcom/narvii/item/property/ItemPropertyEditor$1;->this$0:Lcom/narvii/item/property/ItemPropertyEditor;

    const/4 v0, 0x1

    iput-boolean v0, p1, Lcom/narvii/item/property/ItemPropertyEditor;->afterLongClick:Z

    .line 77
    iget-object p1, p1, Lcom/narvii/item/property/ItemPropertyEditor;->prevEvent:Landroid/view/MotionEvent;

    if-eqz p1, :cond_0

    const/4 v0, 0x3

    .line 78
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->setAction(I)V

    .line 79
    iget-object p1, p0, Lcom/narvii/item/property/ItemPropertyEditor$1;->this$0:Lcom/narvii/item/property/ItemPropertyEditor;

    iget-object v0, p1, Lcom/narvii/item/property/ItemPropertyEditor;->prevEvent:Landroid/view/MotionEvent;

    invoke-static {p1, v0}, Lcom/narvii/item/property/ItemPropertyEditor;->access$001(Lcom/narvii/item/property/ItemPropertyEditor;Landroid/view/MotionEvent;)Z

    .line 80
    iget-object p1, p0, Lcom/narvii/item/property/ItemPropertyEditor$1;->this$0:Lcom/narvii/item/property/ItemPropertyEditor;

    iget-object p1, p1, Lcom/narvii/item/property/ItemPropertyEditor;->prevEvent:Landroid/view/MotionEvent;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->recycle()V

    .line 81
    iget-object p1, p0, Lcom/narvii/item/property/ItemPropertyEditor$1;->this$0:Lcom/narvii/item/property/ItemPropertyEditor;

    const/4 v0, 0x0

    iput-object v0, p1, Lcom/narvii/item/property/ItemPropertyEditor;->prevEvent:Landroid/view/MotionEvent;

    .line 83
    :cond_0
    iget-object p1, p0, Lcom/narvii/item/property/ItemPropertyEditor$1;->this$0:Lcom/narvii/item/property/ItemPropertyEditor;

    iget-object v0, p1, Lcom/narvii/item/property/ItemPropertyEditor;->longClickListener:Landroid/view/View$OnLongClickListener;

    if-eqz v0, :cond_1

    .line 84
    invoke-interface {v0, p1}, Landroid/view/View$OnLongClickListener;->onLongClick(Landroid/view/View;)Z

    :cond_1
    return-void
.end method
