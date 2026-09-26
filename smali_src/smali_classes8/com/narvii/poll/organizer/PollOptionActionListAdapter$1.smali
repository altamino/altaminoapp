.class Lcom/narvii/poll/organizer/PollOptionActionListAdapter$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/poll/organizer/PollOptionActionListAdapter;->withdraw(Ljava/lang/String;Ljava/lang/String;Lcom/narvii/model/PollOption;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/poll/organizer/PollOptionActionListAdapter;

.field final synthetic val$blog:Ljava/lang/String;

.field final synthetic val$blogId:Ljava/lang/String;

.field final synthetic val$po:Lcom/narvii/model/PollOption;


# direct methods
.method constructor <init>(Lcom/narvii/poll/organizer/PollOptionActionListAdapter;Ljava/lang/String;Ljava/lang/String;Lcom/narvii/model/PollOption;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/poll/organizer/PollOptionActionListAdapter$1;->this$0:Lcom/narvii/poll/organizer/PollOptionActionListAdapter;

    .line 3
    .line 4
    iput-object p2, p0, Lcom/narvii/poll/organizer/PollOptionActionListAdapter$1;->val$blogId:Ljava/lang/String;

    .line 5
    .line 6
    iput-object p3, p0, Lcom/narvii/poll/organizer/PollOptionActionListAdapter$1;->val$blog:Ljava/lang/String;

    .line 7
    .line 8
    iput-object p4, p0, Lcom/narvii/poll/organizer/PollOptionActionListAdapter$1;->val$po:Lcom/narvii/model/PollOption;

    .line 9
    .line 10
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3

    .line 1
    .line 2
    if-nez p2, :cond_0

    .line 3
    .line 4
    iget-object p1, p0, Lcom/narvii/poll/organizer/PollOptionActionListAdapter$1;->this$0:Lcom/narvii/poll/organizer/PollOptionActionListAdapter;

    .line 5
    .line 6
    iget-object p2, p0, Lcom/narvii/poll/organizer/PollOptionActionListAdapter$1;->val$blogId:Ljava/lang/String;

    .line 7
    .line 8
    iget-object v0, p0, Lcom/narvii/poll/organizer/PollOptionActionListAdapter$1;->val$blog:Ljava/lang/String;

    .line 9
    .line 10
    iget-object v1, p0, Lcom/narvii/poll/organizer/PollOptionActionListAdapter$1;->val$po:Lcom/narvii/model/PollOption;

    .line 11
    const/4 v2, 0x1

    .line 12
    .line 13
    .line 14
    invoke-virtual {p1, p2, v0, v1, v2}, Lcom/narvii/poll/organizer/PollOptionActionListAdapter;->withdraw(Ljava/lang/String;Ljava/lang/String;Lcom/narvii/model/PollOption;Z)V

    .line 15
    :cond_0
    return-void
.end method
