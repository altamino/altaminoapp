.class Lcom/narvii/monetization/avatarframe/SwipeableFragment$3;
.super Ljava/lang/Object;
.source "SwipeableFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


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

    .line 181
    iput-object p1, p0, Lcom/narvii/monetization/avatarframe/SwipeableFragment$3;->this$0:Lcom/narvii/monetization/avatarframe/SwipeableFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    .line 184
    iget-object p1, p0, Lcom/narvii/monetization/avatarframe/SwipeableFragment$3;->this$0:Lcom/narvii/monetization/avatarframe/SwipeableFragment;

    invoke-virtual {p1}, Lcom/narvii/monetization/avatarframe/SwipeableFragment;->dismiss()V

    return-void
.end method
