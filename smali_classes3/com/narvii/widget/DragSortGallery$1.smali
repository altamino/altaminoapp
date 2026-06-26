.class Lcom/narvii/widget/DragSortGallery$1;
.super Landroid/view/GestureDetector$SimpleOnGestureListener;
.source "DragSortGallery.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/narvii/widget/DragSortGallery;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/widget/DragSortGallery;


# direct methods
.method constructor <init>(Lcom/narvii/widget/DragSortGallery;)V
    .locals 0

    .line 40
    iput-object p1, p0, Lcom/narvii/widget/DragSortGallery$1;->this$0:Lcom/narvii/widget/DragSortGallery;

    invoke-direct {p0}, Landroid/view/GestureDetector$SimpleOnGestureListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onLongPress(Landroid/view/MotionEvent;)V
    .locals 10

    .line 52
    iget-object v0, p0, Lcom/narvii/widget/DragSortGallery$1;->this$0:Lcom/narvii/widget/DragSortGallery;

    iget-object v1, v0, Lcom/narvii/widget/DragSortGallery;->draging:Landroid/view/View;

    if-eqz v1, :cond_1

    .line 54
    iget-boolean v0, v0, Lcom/narvii/widget/DragSortGallery;->dragCanceled:Z

    if-nez v0, :cond_0

    const-wide/16 v2, 0x0

    const-wide/16 v4, 0x0

    const/4 v6, 0x3

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    .line 55
    invoke-static/range {v2 .. v9}, Landroid/view/MotionEvent;->obtain(JJIFFI)Landroid/view/MotionEvent;

    move-result-object v0

    .line 56
    iget-object v2, p0, Lcom/narvii/widget/DragSortGallery$1;->this$0:Lcom/narvii/widget/DragSortGallery;

    invoke-virtual {v2, v0}, Lcom/narvii/widget/DragSortGallery;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 57
    invoke-virtual {v0}, Landroid/view/MotionEvent;->recycle()V

    .line 58
    iget-object v0, p0, Lcom/narvii/widget/DragSortGallery$1;->this$0:Lcom/narvii/widget/DragSortGallery;

    const/4 v2, 0x1

    iput-boolean v2, v0, Lcom/narvii/widget/DragSortGallery;->dragCanceled:Z

    .line 60
    :cond_0
    invoke-virtual {v1}, Landroid/view/View;->performLongClick()Z

    .line 62
    :cond_1
    invoke-super {p0, p1}, Landroid/view/GestureDetector$SimpleOnGestureListener;->onLongPress(Landroid/view/MotionEvent;)V

    return-void
.end method

.method public onSingleTapUp(Landroid/view/MotionEvent;)Z
    .locals 1

    .line 43
    iget-object v0, p0, Lcom/narvii/widget/DragSortGallery$1;->this$0:Lcom/narvii/widget/DragSortGallery;

    iget-object v0, v0, Lcom/narvii/widget/DragSortGallery;->draging:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 44
    invoke-virtual {v0}, Landroid/view/View;->performClick()Z

    const/4 p1, 0x1

    return p1

    .line 47
    :cond_0
    invoke-super {p0, p1}, Landroid/view/GestureDetector$SimpleOnGestureListener;->onSingleTapUp(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method
