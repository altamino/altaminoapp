.class Lcom/narvii/blog/post/PollPostActivity$1;
.super Ljava/lang/Object;
.source "PollPostActivity.java"

# interfaces
.implements Lcom/narvii/widget/NVScrollView$OnScrollListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/blog/post/PollPostActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/blog/post/PollPostActivity;


# direct methods
.method constructor <init>(Lcom/narvii/blog/post/PollPostActivity;)V
    .locals 0

    .line 58
    iput-object p1, p0, Lcom/narvii/blog/post/PollPostActivity$1;->this$0:Lcom/narvii/blog/post/PollPostActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onScroll(IIII)V
    .locals 0

    .line 61
    iget-object p1, p0, Lcom/narvii/blog/post/PollPostActivity$1;->this$0:Lcom/narvii/blog/post/PollPostActivity;

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Lcom/narvii/blog/post/PollPostActivity;->closeAllSwipeToDelete(Z)V

    return-void
.end method
