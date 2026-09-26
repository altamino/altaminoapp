.class Lcom/narvii/widget/FeedBottomLayout$1;
.super Ljava/lang/Object;
.source "SourceFile"

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

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/widget/FeedBottomLayout$1;->this$0:Lcom/narvii/widget/FeedBottomLayout;

    .line 3
    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    return-void
.end method


# virtual methods
.method public call(Ljava/lang/Boolean;)V
    .locals 1

    iget-object p1, p0, Lcom/narvii/widget/FeedBottomLayout$1;->this$0:Lcom/narvii/widget/FeedBottomLayout;

    const/4 v0, 0x0

    .line 2
    invoke-static {p1, v0}, Lcom/narvii/widget/FeedBottomLayout;->a(Lcom/narvii/widget/FeedBottomLayout;Z)V

    iget-object p1, p0, Lcom/narvii/widget/FeedBottomLayout$1;->this$0:Lcom/narvii/widget/FeedBottomLayout;

    .line 3
    iget-object p1, p1, Lcom/narvii/widget/FeedBottomLayout;->bottomAnimationListener:Lcom/narvii/widget/FeedBottomLayout$BottomAnimationListener;

    if-eqz p1, :cond_0

    .line 4
    invoke-interface {p1}, Lcom/narvii/widget/FeedBottomLayout$BottomAnimationListener;->onAnimationFinished()V

    :cond_0
    return-void
.end method

.method public bridge synthetic call(Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p0, p1}, Lcom/narvii/widget/FeedBottomLayout$1;->call(Ljava/lang/Boolean;)V

    return-void
.end method
