.class Lcom/narvii/story/StoryListFragment$11;
.super Landroid/support/design/widget/BottomSheetBehavior$BottomSheetCallback;
.source "StoryListFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/narvii/story/StoryListFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/story/StoryListFragment;


# direct methods
.method constructor <init>(Lcom/narvii/story/StoryListFragment;)V
    .locals 0

    .line 2486
    iput-object p1, p0, Lcom/narvii/story/StoryListFragment$11;->this$0:Lcom/narvii/story/StoryListFragment;

    invoke-direct {p0}, Landroid/support/design/widget/BottomSheetBehavior$BottomSheetCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onSlide(Landroid/view/View;F)V
    .locals 0

    return-void
.end method

.method public onStateChanged(Landroid/view/View;I)V
    .locals 1

    .line 2489
    iget-object p1, p0, Lcom/narvii/story/StoryListFragment$11;->this$0:Lcom/narvii/story/StoryListFragment;

    iget-object p1, p1, Lcom/narvii/story/StoryListFragment;->bottomSheetFragment:Landroid/support/v4/app/Fragment;

    instance-of v0, p1, Lcom/narvii/app/NVFragment;

    if-eqz v0, :cond_2

    const/4 v0, 0x3

    if-eq p2, v0, :cond_1

    const/4 v0, 0x4

    if-eq p2, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    .line 2495
    invoke-virtual {p1, p2}, Landroid/support/v4/app/Fragment;->setUserVisibleHint(Z)V

    goto :goto_0

    :cond_1
    const/4 p2, 0x1

    .line 2492
    invoke-virtual {p1, p2}, Landroid/support/v4/app/Fragment;->setUserVisibleHint(Z)V

    :cond_2
    :goto_0
    return-void
.end method
