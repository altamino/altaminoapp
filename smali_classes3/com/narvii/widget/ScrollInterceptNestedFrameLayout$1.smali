.class Lcom/narvii/widget/ScrollInterceptNestedFrameLayout$1;
.super Ljava/lang/Object;
.source "ScrollInterceptNestedFrameLayout.java"

# interfaces
.implements Landroid/view/GestureDetector$OnGestureListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/widget/ScrollInterceptNestedFrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/widget/ScrollInterceptNestedFrameLayout;


# direct methods
.method constructor <init>(Lcom/narvii/widget/ScrollInterceptNestedFrameLayout;)V
    .locals 0

    .line 28
    iput-object p1, p0, Lcom/narvii/widget/ScrollInterceptNestedFrameLayout$1;->this$0:Lcom/narvii/widget/ScrollInterceptNestedFrameLayout;

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

    return-void
.end method

.method public onScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 0

    .line 46
    iget-object p1, p0, Lcom/narvii/widget/ScrollInterceptNestedFrameLayout$1;->this$0:Lcom/narvii/widget/ScrollInterceptNestedFrameLayout;

    invoke-static {p1}, Lcom/narvii/widget/ScrollInterceptNestedFrameLayout;->access$000(Lcom/narvii/widget/ScrollInterceptNestedFrameLayout;)Z

    move-result p1

    return p1
.end method

.method public onShowPress(Landroid/view/MotionEvent;)V
    .locals 0

    return-void
.end method

.method public onSingleTapUp(Landroid/view/MotionEvent;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method
