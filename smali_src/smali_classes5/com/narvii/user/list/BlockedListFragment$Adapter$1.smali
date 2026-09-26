.class Lcom/narvii/user/list/BlockedListFragment$Adapter$1;
.super Ljava/lang/Object;
.source "SourceFile"

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
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/user/list/BlockedListFragment$Adapter$1;->this$1:Lcom/narvii/user/list/BlockedListFragment$Adapter;

    .line 3
    .line 4
    iput-object p2, p0, Lcom/narvii/user/list/BlockedListFragment$Adapter$1;->val$obj:Ljava/lang/Object;

    .line 5
    .line 6
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 1
    .line 2
    iget-object p1, p0, Lcom/narvii/user/list/BlockedListFragment$Adapter$1;->val$obj:Ljava/lang/Object;

    .line 3
    .line 4
    instance-of v0, p1, Lcom/narvii/model/User;

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    iget-object v0, p0, Lcom/narvii/user/list/BlockedListFragment$Adapter$1;->this$1:Lcom/narvii/user/list/BlockedListFragment$Adapter;

    .line 9
    .line 10
    iget-object v0, v0, Lcom/narvii/user/list/BlockedListFragment$Adapter;->this$0:Lcom/narvii/user/list/BlockedListFragment;

    .line 11
    .line 12
    check-cast p1, Lcom/narvii/model/User;

    .line 13
    .line 14
    .line 15
    invoke-virtual {v0, p1}, Lcom/narvii/user/list/BlockedListFragment;->unblock(Lcom/narvii/model/User;)V

    .line 16
    :cond_0
    return-void
.end method
