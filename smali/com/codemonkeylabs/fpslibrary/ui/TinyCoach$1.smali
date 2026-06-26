.class Lcom/codemonkeylabs/fpslibrary/ui/TinyCoach$1;
.super Landroid/view/GestureDetector$SimpleOnGestureListener;
.source "TinyCoach.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/codemonkeylabs/fpslibrary/ui/TinyCoach;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/codemonkeylabs/fpslibrary/ui/TinyCoach;


# direct methods
.method constructor <init>(Lcom/codemonkeylabs/fpslibrary/ui/TinyCoach;)V
    .locals 0

    .line 30
    iput-object p1, p0, Lcom/codemonkeylabs/fpslibrary/ui/TinyCoach$1;->this$0:Lcom/codemonkeylabs/fpslibrary/ui/TinyCoach;

    invoke-direct {p0}, Landroid/view/GestureDetector$SimpleOnGestureListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onDoubleTap(Landroid/view/MotionEvent;)Z
    .locals 2

    .line 35
    iget-object v0, p0, Lcom/codemonkeylabs/fpslibrary/ui/TinyCoach$1;->this$0:Lcom/codemonkeylabs/fpslibrary/ui/TinyCoach;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/codemonkeylabs/fpslibrary/ui/TinyCoach;->hide(Z)V

    .line 36
    invoke-super {p0, p1}, Landroid/view/GestureDetector$SimpleOnGestureListener;->onDoubleTap(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method
