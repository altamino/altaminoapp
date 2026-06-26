.class Lcom/narvii/app/SwipeableActivity$1;
.super Landroid/support/design/widget/BottomSheetBehavior$BottomSheetCallback;
.source "SwipeableActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/app/SwipeableActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/app/SwipeableActivity;


# direct methods
.method constructor <init>(Lcom/narvii/app/SwipeableActivity;)V
    .locals 0

    .line 45
    iput-object p1, p0, Lcom/narvii/app/SwipeableActivity$1;->this$0:Lcom/narvii/app/SwipeableActivity;

    invoke-direct {p0}, Landroid/support/design/widget/BottomSheetBehavior$BottomSheetCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onSlide(Landroid/view/View;F)V
    .locals 0

    return-void
.end method

.method public onStateChanged(Landroid/view/View;I)V
    .locals 0

    const/4 p1, 0x4

    if-ne p2, p1, :cond_0

    .line 49
    iget-object p1, p0, Lcom/narvii/app/SwipeableActivity$1;->this$0:Lcom/narvii/app/SwipeableActivity;

    invoke-virtual {p1}, Lcom/narvii/app/FragmentWrapperActivity;->finish()V

    .line 50
    iget-object p1, p0, Lcom/narvii/app/SwipeableActivity$1;->this$0:Lcom/narvii/app/SwipeableActivity;

    const/4 p2, 0x0

    invoke-virtual {p1, p2, p2}, Landroid/app/Activity;->overridePendingTransition(II)V

    :cond_0
    return-void
.end method
