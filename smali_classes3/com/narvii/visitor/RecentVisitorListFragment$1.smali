.class Lcom/narvii/visitor/RecentVisitorListFragment$1;
.super Landroid/content/BroadcastReceiver;
.source "RecentVisitorListFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/narvii/visitor/RecentVisitorListFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/visitor/RecentVisitorListFragment;


# direct methods
.method constructor <init>(Lcom/narvii/visitor/RecentVisitorListFragment;)V
    .locals 0

    .line 71
    iput-object p1, p0, Lcom/narvii/visitor/RecentVisitorListFragment$1;->this$0:Lcom/narvii/visitor/RecentVisitorListFragment;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    .line 74
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string p2, "com.narvii.action.PRIVACY_CHANGED"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 75
    iget-object p1, p0, Lcom/narvii/visitor/RecentVisitorListFragment$1;->this$0:Lcom/narvii/visitor/RecentVisitorListFragment;

    invoke-static {p1}, Lcom/narvii/visitor/RecentVisitorListFragment;->access$000(Lcom/narvii/visitor/RecentVisitorListFragment;)V

    :cond_0
    return-void
.end method
