.class Lcom/narvii/invite/InviteContactFragment$AllContactAdapter$1;
.super Ljava/lang/Object;
.source "InviteContactFragment.java"

# interfaces
.implements Lcom/narvii/util/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/invite/InviteContactFragment$AllContactAdapter;->loadContacts()V
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
.field final synthetic this$1:Lcom/narvii/invite/InviteContactFragment$AllContactAdapter;


# direct methods
.method constructor <init>(Lcom/narvii/invite/InviteContactFragment$AllContactAdapter;)V
    .locals 0

    .line 495
    iput-object p1, p0, Lcom/narvii/invite/InviteContactFragment$AllContactAdapter$1;->this$1:Lcom/narvii/invite/InviteContactFragment$AllContactAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic call(Ljava/lang/Object;)V
    .locals 0

    .line 495
    check-cast p1, Ljava/util/List;

    invoke-virtual {p0, p1}, Lcom/narvii/invite/InviteContactFragment$AllContactAdapter$1;->call(Ljava/util/List;)V

    return-void
.end method

.method public call(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/narvii/invite/InviteContactFragment$Contact;",
            ">;)V"
        }
    .end annotation

    .line 498
    iget-object v0, p0, Lcom/narvii/invite/InviteContactFragment$AllContactAdapter$1;->this$1:Lcom/narvii/invite/InviteContactFragment$AllContactAdapter;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/narvii/invite/InviteContactFragment$AllContactAdapter;->loadFinished:Z

    .line 499
    iget-object v1, v0, Lcom/narvii/invite/InviteContactFragment$AllContactAdapter;->this$0:Lcom/narvii/invite/InviteContactFragment;

    iput-object p1, v1, Lcom/narvii/invite/InviteContactFragment;->allContactList:Ljava/util/List;

    .line 500
    invoke-virtual {v0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    return-void
.end method
