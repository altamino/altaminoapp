.class Lcom/narvii/user/profile/UserProfileFragment$TopAdapter$1;
.super Ljava/lang/Object;
.source "SourceFile"

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

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/user/profile/UserProfileFragment$TopAdapter$1;->this$1:Lcom/narvii/user/profile/UserProfileFragment$TopAdapter;

    .line 3
    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 4

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/user/profile/UserProfileFragment$TopAdapter$1;->this$1:Lcom/narvii/user/profile/UserProfileFragment$TopAdapter;

    .line 3
    .line 4
    iget-object v0, v0, Lcom/narvii/user/profile/UserProfileFragment$TopAdapter;->this$0:Lcom/narvii/user/profile/UserProfileFragment;

    .line 5
    .line 6
    iget-object v0, v0, Lcom/narvii/user/profile/UserProfileFragment;->header:Lcom/narvii/list/overlay/OverlayLayout;

    .line 7
    .line 8
    if-nez v0, :cond_0

    .line 9
    const/4 v0, 0x0

    .line 10
    goto :goto_0

    .line 11
    .line 12
    .line 13
    :cond_0
    const v1, 0x7f0a0f57

    .line 14
    .line 15
    .line 16
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 17
    move-result-object v0

    .line 18
    .line 19
    check-cast v0, Lcom/narvii/user/profile/HeaderLayout;

    .line 20
    :goto_0
    const/4 v1, 0x0

    .line 21
    .line 22
    if-nez v0, :cond_1

    .line 23
    return v1

    .line 24
    :cond_1
    const/4 v2, 0x1

    .line 25
    .line 26
    iput-boolean v2, v0, Lcom/narvii/user/profile/HeaderLayout;->allowTouch:Z

    .line 27
    .line 28
    .line 29
    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    .line 30
    move-result p1

    .line 31
    int-to-float v2, p1

    .line 32
    const/4 v3, 0x0

    .line 33
    .line 34
    .line 35
    invoke-virtual {p2, v3, v2}, Landroid/view/MotionEvent;->offsetLocation(FF)V

    .line 36
    .line 37
    iget-object v2, p0, Lcom/narvii/user/profile/UserProfileFragment$TopAdapter$1;->this$1:Lcom/narvii/user/profile/UserProfileFragment$TopAdapter;

    .line 38
    .line 39
    iget-object v2, v2, Lcom/narvii/user/profile/UserProfileFragment$TopAdapter;->this$0:Lcom/narvii/user/profile/UserProfileFragment;

    .line 40
    .line 41
    iget-object v2, v2, Lcom/narvii/user/profile/UserProfileFragment;->header:Lcom/narvii/list/overlay/OverlayLayout;

    .line 42
    .line 43
    .line 44
    invoke-virtual {v2, p2}, Landroid/view/View;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    .line 45
    move-result v2

    .line 46
    neg-int p1, p1

    .line 47
    int-to-float p1, p1

    .line 48
    .line 49
    .line 50
    invoke-virtual {p2, v3, p1}, Landroid/view/MotionEvent;->offsetLocation(FF)V

    .line 51
    .line 52
    iput-boolean v1, v0, Lcom/narvii/user/profile/HeaderLayout;->allowTouch:Z

    .line 53
    return v2
.end method
