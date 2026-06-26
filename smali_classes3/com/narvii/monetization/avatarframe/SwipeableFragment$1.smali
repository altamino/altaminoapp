.class Lcom/narvii/monetization/avatarframe/SwipeableFragment$1;
.super Ljava/lang/Object;
.source "SwipeableFragment.java"

# interfaces
.implements Lcom/narvii/widget/SwipeableLayout$SwipeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/monetization/avatarframe/SwipeableFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/monetization/avatarframe/SwipeableFragment;


# direct methods
.method constructor <init>(Lcom/narvii/monetization/avatarframe/SwipeableFragment;)V
    .locals 0

    .line 153
    iput-object p1, p0, Lcom/narvii/monetization/avatarframe/SwipeableFragment$1;->this$0:Lcom/narvii/monetization/avatarframe/SwipeableFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLayoutMoved(IIII)V
    .locals 0

    return-void
.end method

.method public onLayoutSwiped()V
    .locals 1

    .line 156
    iget-object v0, p0, Lcom/narvii/monetization/avatarframe/SwipeableFragment$1;->this$0:Lcom/narvii/monetization/avatarframe/SwipeableFragment;

    invoke-virtual {v0}, Lcom/narvii/monetization/avatarframe/SwipeableFragment;->remove()V

    return-void
.end method
