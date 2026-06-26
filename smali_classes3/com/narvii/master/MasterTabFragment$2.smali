.class Lcom/narvii/master/MasterTabFragment$2;
.super Ljava/lang/Object;
.source "MasterTabFragment.java"

# interfaces
.implements Lcom/narvii/account/AccountService$RecentVisitorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/narvii/master/MasterTabFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/master/MasterTabFragment;


# direct methods
.method constructor <init>(Lcom/narvii/master/MasterTabFragment;)V
    .locals 0

    .line 146
    iput-object p1, p0, Lcom/narvii/master/MasterTabFragment$2;->this$0:Lcom/narvii/master/MasterTabFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onVisitorCountChanged(II)V
    .locals 0

    .line 149
    iget-object p2, p0, Lcom/narvii/master/MasterTabFragment$2;->this$0:Lcom/narvii/master/MasterTabFragment;

    iget-object p2, p2, Lcom/narvii/master/MasterTabFragment;->masterBottomBar:Lcom/narvii/master/widget/MasterBottomBar;

    if-lez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-virtual {p2, p1}, Lcom/narvii/master/widget/MasterBottomBar;->updateMeBadge(Z)V

    return-void
.end method
