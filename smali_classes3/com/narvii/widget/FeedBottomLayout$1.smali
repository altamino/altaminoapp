.class Lcom/narvii/widget/FeedBottomLayout$1;
.super Ljava/lang/Object;
.source "FeedBottomLayout.java"

# interfaces
.implements Lcom/narvii/util/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/widget/FeedBottomLayout;->startLikeAnimation(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/narvii/util/Callback<",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/widget/FeedBottomLayout;


# direct methods
.method constructor <init>(Lcom/narvii/widget/FeedBottomLayout;)V
    .locals 0

    .line 167
    iput-object p1, p0, Lcom/narvii/widget/FeedBottomLayout$1;->this$0:Lcom/narvii/widget/FeedBottomLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call(Ljava/lang/Boolean;)V
    .locals 1

    .line 170
    iget-object p1, p0, Lcom/narvii/widget/FeedBottomLayout$1;->this$0:Lcom/narvii/widget/FeedBottomLayout;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/narvii/widget/FeedBottomLayout;->access$002(Lcom/narvii/widget/FeedBottomLayout;Z)Z

    .line 171
    iget-object p1, p0, Lcom/narvii/widget/FeedBottomLayout$1;->this$0:Lcom/narvii/widget/FeedBottomLayout;

    iget-object p1, p1, Lcom/narvii/widget/FeedBottomLayout;->bottomAnimationListener:Lcom/narvii/widget/FeedBottomLayout$BottomAnimationListener;

    if-eqz p1, :cond_0

    .line 172
    invoke-interface {p1}, Lcom/narvii/widget/FeedBottomLayout$BottomAnimationListener;->onAnimationFinished()V

    :cond_0
    return-void
.end method

.method public bridge synthetic call(Ljava/lang/Object;)V
    .locals 0

    .line 167
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p0, p1}, Lcom/narvii/widget/FeedBottomLayout$1;->call(Ljava/lang/Boolean;)V

    return-void
.end method
