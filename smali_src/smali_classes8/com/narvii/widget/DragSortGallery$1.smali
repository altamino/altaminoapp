.class Lcom/narvii/widget/DragSortGallery$1;
.super Landroid/view/GestureDetector$SimpleOnGestureListener;
.source "SourceFile"


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

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/widget/DragSortGallery$1;->this$0:Lcom/narvii/widget/DragSortGallery;

    .line 3
    .line 4
    .line 5
    invoke-direct {p0}, Landroid/view/GestureDetector$SimpleOnGestureListener;-><init>()V

    .line 6
    return-void
.end method


# virtual methods
.method public onLongPress(Landroid/view/MotionEvent;)V
    .locals 10

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/widget/DragSortGallery$1;->this$0:Lcom/narvii/widget/DragSortGallery;

    .line 3
    .line 4
    iget-object v1, v0, Lcom/narvii/widget/DragSortGallery;->draging:Landroid/view/View;

    .line 5
    .line 6
    if-eqz v1, :cond_1

    .line 7
    .line 8
    iget-boolean v0, v0, Lcom/narvii/widget/DragSortGallery;->dragCanceled:Z

    .line 9
    .line 10
    if-nez v0, :cond_0

    .line 11
    .line 12
    const-wide/16 v2, 0x0

    .line 13
    .line 14
    const-wide/16 v4, 0x0

    .line 15
    const/4 v6, 0x3

    .line 16
    const/4 v7, 0x0

    .line 17
    const/4 v8, 0x0

    .line 18
    const/4 v9, 0x0

    .line 19
    .line 20
    .line 21
    invoke-static/range {v2 .. v9}, Landroid/view/MotionEvent;->obtain(JJIFFI)Landroid/view/MotionEvent;

    .line 22
    move-result-object v0

    .line 23
    .line 24
    iget-object v2, p0, Lcom/narvii/widget/DragSortGallery$1;->this$0:Lcom/narvii/widget/DragSortGallery;

    .line 25
    .line 26
    .line 27
    invoke-virtual {v2, v0}, Lcom/narvii/widget/DragSortGallery;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 28
    .line 29
    .line 30
    invoke-virtual {v0}, Landroid/view/MotionEvent;->recycle()V

    .line 31
    .line 32
    iget-object v0, p0, Lcom/narvii/widget/DragSortGallery$1;->this$0:Lcom/narvii/widget/DragSortGallery;

    .line 33
    const/4 v2, 0x1

    .line 34
    .line 35
    iput-boolean v2, v0, Lcom/narvii/widget/DragSortGallery;->dragCanceled:Z

    .line 36
    .line 37
    .line 38
    :cond_0
    invoke-virtual {v1}, Landroid/view/View;->performLongClick()Z

    .line 39
    .line 40
    .line 41
    :cond_1
    invoke-super {p0, p1}, Landroid/view/GestureDetector$SimpleOnGestureListener;->onLongPress(Landroid/view/MotionEvent;)V

    .line 42
    return-void
.end method

.method public onSingleTapUp(Landroid/view/MotionEvent;)Z
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/widget/DragSortGallery$1;->this$0:Lcom/narvii/widget/DragSortGallery;

    .line 3
    .line 4
    iget-object v0, v0, Lcom/narvii/widget/DragSortGallery;->draging:Landroid/view/View;

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    .line 9
    invoke-virtual {v0}, Landroid/view/View;->performClick()Z

    .line 10
    const/4 p1, 0x1

    .line 11
    return p1

    .line 12
    .line 13
    .line 14
    :cond_0
    invoke-super {p0, p1}, Landroid/view/GestureDetector$SimpleOnGestureListener;->onSingleTapUp(Landroid/view/MotionEvent;)Z

    .line 15
    move-result p1

    .line 16
    return p1
.end method
