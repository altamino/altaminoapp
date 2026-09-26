.class Lcom/narvii/app/SwipeableActivity$1;
.super Lcom/google/android/material/bottomsheet/BottomSheetBehavior$f;
.source "SourceFile"


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

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/app/SwipeableActivity$1;->this$0:Lcom/narvii/app/SwipeableActivity;

    .line 3
    .line 4
    .line 5
    invoke-direct {p0}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior$f;-><init>()V

    .line 6
    return-void
.end method


# virtual methods
.method public onSlide(Landroid/view/View;F)V
    .locals 0
    .param p1    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    return-void
.end method

.method public onStateChanged(Landroid/view/View;I)V
    .locals 0
    .param p1    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    const/4 p1, 0x4

    .line 2
    .line 3
    if-ne p2, p1, :cond_0

    .line 4
    .line 5
    iget-object p1, p0, Lcom/narvii/app/SwipeableActivity$1;->this$0:Lcom/narvii/app/SwipeableActivity;

    .line 6
    .line 7
    .line 8
    invoke-virtual {p1}, Lcom/narvii/app/FragmentWrapperActivity;->finish()V

    .line 9
    .line 10
    iget-object p1, p0, Lcom/narvii/app/SwipeableActivity$1;->this$0:Lcom/narvii/app/SwipeableActivity;

    .line 11
    const/4 p2, 0x0

    .line 12
    .line 13
    .line 14
    invoke-virtual {p1, p2, p2}, Landroid/app/Activity;->overridePendingTransition(II)V

    .line 15
    :cond_0
    return-void
.end method
