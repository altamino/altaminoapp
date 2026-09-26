.class Lcom/narvii/user/list/BlockedListFragment$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/user/list/BlockedListFragment;->onItemLongClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/user/list/BlockedListFragment;

.field final synthetic val$obj:Ljava/lang/Object;


# direct methods
.method constructor <init>(Lcom/narvii/user/list/BlockedListFragment;Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/user/list/BlockedListFragment$2;->this$0:Lcom/narvii/user/list/BlockedListFragment;

    .line 3
    .line 4
    iput-object p2, p0, Lcom/narvii/user/list/BlockedListFragment$2;->val$obj:Ljava/lang/Object;

    .line 5
    .line 6
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 1
    .line 2
    if-nez p2, :cond_0

    .line 3
    .line 4
    iget-object p1, p0, Lcom/narvii/user/list/BlockedListFragment$2;->this$0:Lcom/narvii/user/list/BlockedListFragment;

    .line 5
    .line 6
    iget-object p2, p0, Lcom/narvii/user/list/BlockedListFragment$2;->val$obj:Ljava/lang/Object;

    .line 7
    .line 8
    check-cast p2, Lcom/narvii/model/User;

    .line 9
    .line 10
    .line 11
    invoke-virtual {p1, p2}, Lcom/narvii/user/list/BlockedListFragment;->unblock(Lcom/narvii/model/User;)V

    .line 12
    :cond_0
    return-void
.end method
