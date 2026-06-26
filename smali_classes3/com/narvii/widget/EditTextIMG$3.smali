.class Lcom/narvii/widget/EditTextIMG$3;
.super Ljava/lang/Object;
.source "EditTextIMG.java"

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

    .line 115
    iput-object p1, p0, Lcom/narvii/widget/EditTextIMG$3;->this$0:Lcom/narvii/widget/EditTextIMG;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

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

    .line 138
    iget-object p1, p0, Lcom/narvii/widget/EditTextIMG$3;->this$0:Lcom/narvii/widget/EditTextIMG;

    invoke-static {p1}, Lcom/narvii/widget/EditTextIMG;->access$000(Lcom/narvii/widget/EditTextIMG;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 139
    iget-object p1, p0, Lcom/narvii/widget/EditTextIMG$3;->this$0:Lcom/narvii/widget/EditTextIMG;

    invoke-virtual {p1}, Lcom/narvii/widget/EditTextIMG;->showActionMode()V

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

    .line 119
    iget-object p1, p0, Lcom/narvii/widget/EditTextIMG$3;->this$0:Lcom/narvii/widget/EditTextIMG;

    invoke-static {p1}, Lcom/narvii/widget/EditTextIMG;->access$200(Lcom/narvii/widget/EditTextIMG;)J

    move-result-wide v0

    .line 120
    iget-object p1, p0, Lcom/narvii/widget/EditTextIMG$3;->this$0:Lcom/narvii/widget/EditTextIMG;

    invoke-static {p1}, Lcom/narvii/widget/EditTextIMG;->access$300(Lcom/narvii/widget/EditTextIMG;)J

    move-result-wide v2

    cmp-long p1, v0, v2

    if-nez p1, :cond_0

    .line 121
    iget-object p1, p0, Lcom/narvii/widget/EditTextIMG$3;->this$0:Lcom/narvii/widget/EditTextIMG;

    invoke-virtual {p1}, Lcom/narvii/widget/EditTextIMG;->showActionMode()V

    :cond_0
    const/4 p1, 0x0

    return p1
.end method
