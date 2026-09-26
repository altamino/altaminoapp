.class Lcom/narvii/item/property/ItemPropertyEditor$1;
.super Landroid/view/GestureDetector$SimpleOnGestureListener;
.source "SourceFile"


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

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/item/property/ItemPropertyEditor$1;->this$0:Lcom/narvii/item/property/ItemPropertyEditor;

    .line 3
    .line 4
    .line 5
    invoke-direct {p0}, Landroid/view/GestureDetector$SimpleOnGestureListener;-><init>()V

    .line 6
    return-void
.end method


# virtual methods
.method public onLongPress(Landroid/view/MotionEvent;)V
    .locals 1

    .line 1
    .line 2
    iget-object p1, p0, Lcom/narvii/item/property/ItemPropertyEditor$1;->this$0:Lcom/narvii/item/property/ItemPropertyEditor;

    .line 3
    const/4 v0, 0x1

    .line 4
    .line 5
    iput-boolean v0, p1, Lcom/narvii/item/property/ItemPropertyEditor;->afterLongClick:Z

    .line 6
    .line 7
    iget-object p1, p1, Lcom/narvii/item/property/ItemPropertyEditor;->prevEvent:Landroid/view/MotionEvent;

    .line 8
    .line 9
    if-eqz p1, :cond_0

    .line 10
    const/4 v0, 0x3

    .line 11
    .line 12
    .line 13
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->setAction(I)V

    .line 14
    .line 15
    iget-object p1, p0, Lcom/narvii/item/property/ItemPropertyEditor$1;->this$0:Lcom/narvii/item/property/ItemPropertyEditor;

    .line 16
    .line 17
    iget-object v0, p1, Lcom/narvii/item/property/ItemPropertyEditor;->prevEvent:Landroid/view/MotionEvent;

    .line 18
    .line 19
    .line 20
    invoke-static {p1, v0}, Lcom/narvii/item/property/ItemPropertyEditor;->access$001(Lcom/narvii/item/property/ItemPropertyEditor;Landroid/view/MotionEvent;)Z

    .line 21
    .line 22
    iget-object p1, p0, Lcom/narvii/item/property/ItemPropertyEditor$1;->this$0:Lcom/narvii/item/property/ItemPropertyEditor;

    .line 23
    .line 24
    iget-object p1, p1, Lcom/narvii/item/property/ItemPropertyEditor;->prevEvent:Landroid/view/MotionEvent;

    .line 25
    .line 26
    .line 27
    invoke-virtual {p1}, Landroid/view/MotionEvent;->recycle()V

    .line 28
    .line 29
    iget-object p1, p0, Lcom/narvii/item/property/ItemPropertyEditor$1;->this$0:Lcom/narvii/item/property/ItemPropertyEditor;

    .line 30
    const/4 v0, 0x0

    .line 31
    .line 32
    iput-object v0, p1, Lcom/narvii/item/property/ItemPropertyEditor;->prevEvent:Landroid/view/MotionEvent;

    .line 33
    .line 34
    :cond_0
    iget-object p1, p0, Lcom/narvii/item/property/ItemPropertyEditor$1;->this$0:Lcom/narvii/item/property/ItemPropertyEditor;

    .line 35
    .line 36
    iget-object v0, p1, Lcom/narvii/item/property/ItemPropertyEditor;->longClickListener:Landroid/view/View$OnLongClickListener;

    .line 37
    .line 38
    if-eqz v0, :cond_1

    .line 39
    .line 40
    .line 41
    invoke-interface {v0, p1}, Landroid/view/View$OnLongClickListener;->onLongClick(Landroid/view/View;)Z

    .line 42
    :cond_1
    return-void
.end method
