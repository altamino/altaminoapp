.class Lcom/narvii/widget/EditTextIMG$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/GestureDetector$OnGestureListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/narvii/widget/EditTextIMG;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/widget/EditTextIMG;


# direct methods
.method constructor <init>(Lcom/narvii/widget/EditTextIMG;)V
    .locals 0

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/widget/EditTextIMG$3;->this$0:Lcom/narvii/widget/EditTextIMG;

    .line 3
    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    return-void
.end method


# virtual methods
.method public onDown(Landroid/view/MotionEvent;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public onLongPress(Landroid/view/MotionEvent;)V
    .locals 0

    .line 1
    .line 2
    iget-object p1, p0, Lcom/narvii/widget/EditTextIMG$3;->this$0:Lcom/narvii/widget/EditTextIMG;

    .line 3
    .line 4
    .line 5
    invoke-static {p1}, Lcom/narvii/widget/EditTextIMG;->a(Lcom/narvii/widget/EditTextIMG;)Z

    .line 6
    move-result p1

    .line 7
    .line 8
    if-nez p1, :cond_0

    .line 9
    .line 10
    iget-object p1, p0, Lcom/narvii/widget/EditTextIMG$3;->this$0:Lcom/narvii/widget/EditTextIMG;

    .line 11
    .line 12
    .line 13
    invoke-virtual {p1}, Lcom/narvii/widget/EditTextIMG;->showActionMode()V

    .line 14
    :cond_0
    return-void
.end method

.method public onScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public onShowPress(Landroid/view/MotionEvent;)V
    .locals 0

    return-void
.end method

.method public onSingleTapUp(Landroid/view/MotionEvent;)Z
    .locals 4

    .line 1
    .line 2
    iget-object p1, p0, Lcom/narvii/widget/EditTextIMG$3;->this$0:Lcom/narvii/widget/EditTextIMG;

    .line 3
    .line 4
    .line 5
    invoke-static {p1}, Lcom/narvii/widget/EditTextIMG;->e(Lcom/narvii/widget/EditTextIMG;)J

    .line 6
    move-result-wide v0

    .line 7
    .line 8
    iget-object p1, p0, Lcom/narvii/widget/EditTextIMG$3;->this$0:Lcom/narvii/widget/EditTextIMG;

    .line 9
    .line 10
    .line 11
    invoke-static {p1}, Lcom/narvii/widget/EditTextIMG;->b(Lcom/narvii/widget/EditTextIMG;)J

    .line 12
    move-result-wide v2

    .line 13
    .line 14
    cmp-long p1, v0, v2

    .line 15
    .line 16
    if-nez p1, :cond_0

    .line 17
    .line 18
    iget-object p1, p0, Lcom/narvii/widget/EditTextIMG$3;->this$0:Lcom/narvii/widget/EditTextIMG;

    .line 19
    .line 20
    .line 21
    invoke-virtual {p1}, Lcom/narvii/widget/EditTextIMG;->showActionMode()V

    .line 22
    :cond_0
    const/4 p1, 0x0

    .line 23
    return p1
.end method
