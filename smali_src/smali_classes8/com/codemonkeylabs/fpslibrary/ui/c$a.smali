.class Lcom/codemonkeylabs/fpslibrary/ui/c$a;
.super Landroid/view/GestureDetector$SimpleOnGestureListener;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/codemonkeylabs/fpslibrary/ui/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/codemonkeylabs/fpslibrary/ui/c;


# direct methods
.method constructor <init>(Lcom/codemonkeylabs/fpslibrary/ui/c;)V
    .locals 0

    .line 1
    .line 2
    iput-object p1, p0, Lcom/codemonkeylabs/fpslibrary/ui/c$a;->this$0:Lcom/codemonkeylabs/fpslibrary/ui/c;

    .line 3
    .line 4
    .line 5
    invoke-direct {p0}, Landroid/view/GestureDetector$SimpleOnGestureListener;-><init>()V

    .line 6
    return-void
.end method


# virtual methods
.method public onDoubleTap(Landroid/view/MotionEvent;)Z
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Lcom/codemonkeylabs/fpslibrary/ui/c$a;->this$0:Lcom/codemonkeylabs/fpslibrary/ui/c;

    .line 3
    const/4 v1, 0x0

    .line 4
    .line 5
    .line 6
    invoke-virtual {v0, v1}, Lcom/codemonkeylabs/fpslibrary/ui/c;->e(Z)V

    .line 7
    .line 8
    .line 9
    invoke-super {p0, p1}, Landroid/view/GestureDetector$SimpleOnGestureListener;->onDoubleTap(Landroid/view/MotionEvent;)Z

    .line 10
    move-result p1

    .line 11
    return p1
.end method
