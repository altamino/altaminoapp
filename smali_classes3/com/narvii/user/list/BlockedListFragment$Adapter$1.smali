.class Lcom/narvii/user/list/BlockedListFragment$Adapter$1;
.super Ljava/lang/Object;
.source "BlockedListFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/user/list/BlockedListFragment$Adapter;->getItemView(Ljava/lang/Object;Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/narvii/user/list/BlockedListFragment$Adapter;

.field final synthetic val$obj:Ljava/lang/Object;


# direct methods
.method constructor <init>(Lcom/narvii/user/list/BlockedListFragment$Adapter;Ljava/lang/Object;)V
    .locals 0

    .line 169
    iput-object p1, p0, Lcom/narvii/user/list/BlockedListFragment$Adapter$1;->this$1:Lcom/narvii/user/list/BlockedListFragment$Adapter;

    iput-object p2, p0, Lcom/narvii/user/list/BlockedListFragment$Adapter$1;->val$obj:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 172
    iget-object p1, p0, Lcom/narvii/user/list/BlockedListFragment$Adapter$1;->val$obj:Ljava/lang/Object;

    instance-of v0, p1, Lcom/narvii/model/User;

    if-eqz v0, :cond_0

    .line 173
    iget-object v0, p0, Lcom/narvii/user/list/BlockedListFragment$Adapter$1;->this$1:Lcom/narvii/user/list/BlockedListFragment$Adapter;

    iget-object v0, v0, Lcom/narvii/user/list/BlockedListFragment$Adapter;->this$0:Lcom/narvii/user/list/BlockedListFragment;

    check-cast p1, Lcom/narvii/model/User;

    invoke-virtual {v0, p1}, Lcom/narvii/user/list/BlockedListFragment;->unblock(Lcom/narvii/model/User;)V

    :cond_0
    return-void
.end method
