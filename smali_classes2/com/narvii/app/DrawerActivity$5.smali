.class Lcom/narvii/app/DrawerActivity$5;
.super Landroid/view/GestureDetector$SimpleOnGestureListener;
.source "DrawerActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/app/DrawerActivity;->initActionBar()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/app/DrawerActivity;


# direct methods
.method constructor <init>(Lcom/narvii/app/DrawerActivity;)V
    .locals 0

    .line 761
    iput-object p1, p0, Lcom/narvii/app/DrawerActivity$5;->this$0:Lcom/narvii/app/DrawerActivity;

    invoke-direct {p0}, Landroid/view/GestureDetector$SimpleOnGestureListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public onSingleTapUp(Landroid/view/MotionEvent;)Z
    .locals 0

    .line 764
    iget-object p1, p0, Lcom/narvii/app/DrawerActivity$5;->this$0:Lcom/narvii/app/DrawerActivity;

    invoke-virtual {p1}, Lcom/narvii/app/NVActivity;->canScrollUp()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 765
    iget-object p1, p0, Lcom/narvii/app/DrawerActivity$5;->this$0:Lcom/narvii/app/DrawerActivity;

    invoke-virtual {p1}, Lcom/narvii/app/NVActivity;->smoothScrollToTop()V

    goto :goto_0

    .line 767
    :cond_0
    iget-object p1, p0, Lcom/narvii/app/DrawerActivity$5;->this$0:Lcom/narvii/app/DrawerActivity;

    invoke-virtual {p1}, Lcom/narvii/app/DrawerActivity;->openDrawer()V

    :goto_0
    const/4 p1, 0x1

    return p1
.end method
