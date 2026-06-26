.class Lcom/narvii/poll/organizer/PollOptionActionListAdapter$1;
.super Ljava/lang/Object;
.source "PollOptionActionListAdapter.java"

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

    .line 131
    iput-object p1, p0, Lcom/narvii/poll/organizer/PollOptionActionListAdapter$1;->this$0:Lcom/narvii/poll/organizer/PollOptionActionListAdapter;

    iput-object p2, p0, Lcom/narvii/poll/organizer/PollOptionActionListAdapter$1;->val$blogId:Ljava/lang/String;

    iput-object p3, p0, Lcom/narvii/poll/organizer/PollOptionActionListAdapter$1;->val$blog:Ljava/lang/String;

    iput-object p4, p0, Lcom/narvii/poll/organizer/PollOptionActionListAdapter$1;->val$po:Lcom/narvii/model/PollOption;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3

    if-nez p2, :cond_0

    .line 135
    iget-object p1, p0, Lcom/narvii/poll/organizer/PollOptionActionListAdapter$1;->this$0:Lcom/narvii/poll/organizer/PollOptionActionListAdapter;

    iget-object p2, p0, Lcom/narvii/poll/organizer/PollOptionActionListAdapter$1;->val$blogId:Ljava/lang/String;

    iget-object v0, p0, Lcom/narvii/poll/organizer/PollOptionActionListAdapter$1;->val$blog:Ljava/lang/String;

    iget-object v1, p0, Lcom/narvii/poll/organizer/PollOptionActionListAdapter$1;->val$po:Lcom/narvii/model/PollOption;

    const/4 v2, 0x1

    invoke-virtual {p1, p2, v0, v1, v2}, Lcom/narvii/poll/organizer/PollOptionActionListAdapter;->withdraw(Ljava/lang/String;Ljava/lang/String;Lcom/narvii/model/PollOption;Z)V

    :cond_0
    return-void
.end method
