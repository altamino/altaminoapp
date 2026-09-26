.class Lcom/narvii/poll/organizer/PendingRequestListFragment$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/poll/organizer/PendingRequestListFragment;->approve(Lcom/narvii/model/PollOption;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/poll/organizer/PendingRequestListFragment;

.field final synthetic val$po:Lcom/narvii/model/PollOption;


# direct methods
.method constructor <init>(Lcom/narvii/poll/organizer/PendingRequestListFragment;Lcom/narvii/model/PollOption;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/poll/organizer/PendingRequestListFragment$1;->this$0:Lcom/narvii/poll/organizer/PendingRequestListFragment;

    .line 3
    .line 4
    iput-object p2, p0, Lcom/narvii/poll/organizer/PendingRequestListFragment$1;->val$po:Lcom/narvii/model/PollOption;

    .line 5
    .line 6
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    .line 1
    .line 2
    if-nez p2, :cond_0

    .line 3
    .line 4
    iget-object p1, p0, Lcom/narvii/poll/organizer/PendingRequestListFragment$1;->this$0:Lcom/narvii/poll/organizer/PendingRequestListFragment;

    .line 5
    .line 6
    iget-object p2, p0, Lcom/narvii/poll/organizer/PendingRequestListFragment$1;->val$po:Lcom/narvii/model/PollOption;

    .line 7
    const/4 v0, 0x1

    .line 8
    .line 9
    .line 10
    invoke-virtual {p1, p2, v0}, Lcom/narvii/poll/organizer/PendingRequestListFragment;->approve(Lcom/narvii/model/PollOption;Z)V

    .line 11
    :cond_0
    return-void
.end method
