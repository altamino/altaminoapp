.class Lcom/narvii/chat/detail/ThreadDetailFragment$13;
.super Ljava/lang/Object;
.source "ThreadDetailFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/chat/detail/ThreadDetailFragment;->transOrganizer()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/chat/detail/ThreadDetailFragment;

.field final synthetic val$thread:Lcom/narvii/model/ChatThread;


# direct methods
.method constructor <init>(Lcom/narvii/chat/detail/ThreadDetailFragment;Lcom/narvii/model/ChatThread;)V
    .locals 0

    .line 2056
    iput-object p1, p0, Lcom/narvii/chat/detail/ThreadDetailFragment$13;->this$0:Lcom/narvii/chat/detail/ThreadDetailFragment;

    iput-object p2, p0, Lcom/narvii/chat/detail/ThreadDetailFragment$13;->val$thread:Lcom/narvii/model/ChatThread;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 2059
    const-class p1, Lcom/narvii/chat/organizer/ChatOrganizerPickerFragment;

    invoke-static {p1}, Lcom/narvii/app/FragmentWrapperActivity;->intent(Ljava/lang/Class;)Landroid/content/Intent;

    move-result-object p1

    .line 2060
    iget-object v0, p0, Lcom/narvii/chat/detail/ThreadDetailFragment$13;->val$thread:Lcom/narvii/model/ChatThread;

    invoke-static {v0}, Lcom/narvii/util/JacksonUtils;->writeAsString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "thread"

    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2061
    iget-object v0, p0, Lcom/narvii/chat/detail/ThreadDetailFragment$13;->this$0:Lcom/narvii/chat/detail/ThreadDetailFragment;

    invoke-virtual {v0, p1}, Landroid/support/v4/app/Fragment;->startActivity(Landroid/content/Intent;)V

    return-void
.end method
