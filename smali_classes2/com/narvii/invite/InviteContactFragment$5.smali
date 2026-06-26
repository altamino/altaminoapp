.class Lcom/narvii/invite/InviteContactFragment$5;
.super Ljava/lang/Object;
.source "InviteContactFragment.java"

# interfaces
.implements Lcom/narvii/util/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/invite/InviteContactFragment;->searchContact(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/narvii/util/Callback<",
        "Ljava/util/List<",
        "Lcom/narvii/invite/InviteContactFragment$Contact;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/invite/InviteContactFragment;

.field final synthetic val$key:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/narvii/invite/InviteContactFragment;Ljava/lang/String;)V
    .locals 0

    .line 281
    iput-object p1, p0, Lcom/narvii/invite/InviteContactFragment$5;->this$0:Lcom/narvii/invite/InviteContactFragment;

    iput-object p2, p0, Lcom/narvii/invite/InviteContactFragment$5;->val$key:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic call(Ljava/lang/Object;)V
    .locals 0

    .line 281
    check-cast p1, Ljava/util/List;

    invoke-virtual {p0, p1}, Lcom/narvii/invite/InviteContactFragment$5;->call(Ljava/util/List;)V

    return-void
.end method

.method public call(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/narvii/invite/InviteContactFragment$Contact;",
            ">;)V"
        }
    .end annotation

    .line 284
    iget-object v0, p0, Lcom/narvii/invite/InviteContactFragment$5;->this$0:Lcom/narvii/invite/InviteContactFragment;

    iget-object v1, v0, Lcom/narvii/invite/InviteContactFragment;->mergeAdapter:Lcom/narvii/list/MergeAdapter;

    if-eqz v1, :cond_0

    .line 285
    iget-object v2, p0, Lcom/narvii/invite/InviteContactFragment$5;->val$key:Ljava/lang/String;

    iput-object v2, v0, Lcom/narvii/invite/InviteContactFragment;->keyword:Ljava/lang/String;

    .line 286
    iput-object p1, v0, Lcom/narvii/invite/InviteContactFragment;->searchContactList:Ljava/util/List;

    .line 287
    invoke-virtual {v1}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    :cond_0
    return-void
.end method
