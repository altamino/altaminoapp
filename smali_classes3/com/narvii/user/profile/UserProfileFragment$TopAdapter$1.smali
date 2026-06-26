.class Lcom/narvii/user/profile/UserProfileFragment$TopAdapter$1;
.super Ljava/lang/Object;
.source "UserProfileFragment.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/narvii/user/profile/UserProfileFragment$TopAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/narvii/user/profile/UserProfileFragment$TopAdapter;


# direct methods
.method constructor <init>(Lcom/narvii/user/profile/UserProfileFragment$TopAdapter;)V
    .locals 0

    .line 1449
    iput-object p1, p0, Lcom/narvii/user/profile/UserProfileFragment$TopAdapter$1;->this$1:Lcom/narvii/user/profile/UserProfileFragment$TopAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 4

    .line 1452
    iget-object v0, p0, Lcom/narvii/user/profile/UserProfileFragment$TopAdapter$1;->this$1:Lcom/narvii/user/profile/UserProfileFragment$TopAdapter;

    iget-object v0, v0, Lcom/narvii/user/profile/UserProfileFragment$TopAdapter;->this$0:Lcom/narvii/user/profile/UserProfileFragment;

    iget-object v0, v0, Lcom/narvii/user/profile/UserProfileFragment;->header:Lcom/narvii/list/overlay/OverlayLayout;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    const v1, 0x7f090c35

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/narvii/user/profile/HeaderLayout;

    :goto_0
    const/4 v1, 0x0

    if-nez v0, :cond_1

    return v1

    :cond_1
    const/4 v2, 0x1

    .line 1456
    iput-boolean v2, v0, Lcom/narvii/user/profile/HeaderLayout;->allowTouch:Z

    .line 1457
    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result p1

    int-to-float v2, p1

    const/4 v3, 0x0

    .line 1458
    invoke-virtual {p2, v3, v2}, Landroid/view/MotionEvent;->offsetLocation(FF)V

    .line 1459
    iget-object v2, p0, Lcom/narvii/user/profile/UserProfileFragment$TopAdapter$1;->this$1:Lcom/narvii/user/profile/UserProfileFragment$TopAdapter;

    iget-object v2, v2, Lcom/narvii/user/profile/UserProfileFragment$TopAdapter;->this$0:Lcom/narvii/user/profile/UserProfileFragment;

    iget-object v2, v2, Lcom/narvii/user/profile/UserProfileFragment;->header:Lcom/narvii/list/overlay/OverlayLayout;

    invoke-virtual {v2, p2}, Landroid/widget/RelativeLayout;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v2

    neg-int p1, p1

    int-to-float p1, p1

    .line 1460
    invoke-virtual {p2, v3, p1}, Landroid/view/MotionEvent;->offsetLocation(FF)V

    .line 1461
    iput-boolean v1, v0, Lcom/narvii/user/profile/HeaderLayout;->allowTouch:Z

    return v2
.end method
