.class Lcom/narvii/flag/FlagListFragment$2;
.super Ljava/lang/Object;
.source "FlagListFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/flag/FlagListFragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/flag/FlagListFragment;

.field final synthetic val$ops:[I


# direct methods
.method constructor <init>(Lcom/narvii/flag/FlagListFragment;[I)V
    .locals 0

    .line 195
    iput-object p1, p0, Lcom/narvii/flag/FlagListFragment$2;->this$0:Lcom/narvii/flag/FlagListFragment;

    iput-object p2, p0, Lcom/narvii/flag/FlagListFragment$2;->val$ops:[I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3

    .line 198
    iget-object p1, p0, Lcom/narvii/flag/FlagListFragment$2;->this$0:Lcom/narvii/flag/FlagListFragment;

    const-string v0, "pending"

    invoke-static {p1, v0}, Lcom/narvii/flag/FlagListFragment;->access$002(Lcom/narvii/flag/FlagListFragment;Ljava/lang/String;)Ljava/lang/String;

    const-string p1, "all"

    const-string v0, "resolved"

    if-eqz p2, :cond_5

    const/4 v1, 0x1

    if-eq p2, v1, :cond_4

    const/4 v1, 0x2

    if-eq p2, v1, :cond_3

    const/4 v1, 0x3

    if-eq p2, v1, :cond_2

    const/4 v1, 0x4

    if-eq p2, v1, :cond_1

    const/4 v1, 0x5

    if-eq p2, v1, :cond_0

    goto :goto_0

    .line 216
    :cond_0
    iget-object v1, p0, Lcom/narvii/flag/FlagListFragment$2;->this$0:Lcom/narvii/flag/FlagListFragment;

    invoke-static {v1, p1}, Lcom/narvii/flag/FlagListFragment;->access$102(Lcom/narvii/flag/FlagListFragment;Ljava/lang/String;)Ljava/lang/String;

    .line 217
    iget-object p1, p0, Lcom/narvii/flag/FlagListFragment$2;->this$0:Lcom/narvii/flag/FlagListFragment;

    invoke-static {p1, v0}, Lcom/narvii/flag/FlagListFragment;->access$002(Lcom/narvii/flag/FlagListFragment;Ljava/lang/String;)Ljava/lang/String;

    goto :goto_0

    .line 213
    :cond_1
    iget-object p1, p0, Lcom/narvii/flag/FlagListFragment$2;->this$0:Lcom/narvii/flag/FlagListFragment;

    const-string v1, "others"

    invoke-static {p1, v1}, Lcom/narvii/flag/FlagListFragment;->access$102(Lcom/narvii/flag/FlagListFragment;Ljava/lang/String;)Ljava/lang/String;

    goto :goto_0

    .line 210
    :cond_2
    iget-object p1, p0, Lcom/narvii/flag/FlagListFragment$2;->this$0:Lcom/narvii/flag/FlagListFragment;

    const-string v1, "spam"

    invoke-static {p1, v1}, Lcom/narvii/flag/FlagListFragment;->access$102(Lcom/narvii/flag/FlagListFragment;Ljava/lang/String;)Ljava/lang/String;

    goto :goto_0

    .line 207
    :cond_3
    iget-object p1, p0, Lcom/narvii/flag/FlagListFragment$2;->this$0:Lcom/narvii/flag/FlagListFragment;

    const-string v1, "bullying"

    invoke-static {p1, v1}, Lcom/narvii/flag/FlagListFragment;->access$102(Lcom/narvii/flag/FlagListFragment;Ljava/lang/String;)Ljava/lang/String;

    goto :goto_0

    .line 204
    :cond_4
    iget-object p1, p0, Lcom/narvii/flag/FlagListFragment$2;->this$0:Lcom/narvii/flag/FlagListFragment;

    const-string v1, "off-topic"

    invoke-static {p1, v1}, Lcom/narvii/flag/FlagListFragment;->access$102(Lcom/narvii/flag/FlagListFragment;Ljava/lang/String;)Ljava/lang/String;

    goto :goto_0

    .line 201
    :cond_5
    iget-object v1, p0, Lcom/narvii/flag/FlagListFragment$2;->this$0:Lcom/narvii/flag/FlagListFragment;

    invoke-static {v1, p1}, Lcom/narvii/flag/FlagListFragment;->access$102(Lcom/narvii/flag/FlagListFragment;Ljava/lang/String;)Ljava/lang/String;

    .line 220
    :goto_0
    iget-object p1, p0, Lcom/narvii/flag/FlagListFragment$2;->this$0:Lcom/narvii/flag/FlagListFragment;

    invoke-static {p1}, Lcom/narvii/flag/FlagListFragment;->access$300(Lcom/narvii/flag/FlagListFragment;)Lcom/narvii/flag/FlagListFragment$FlagListAdapter;

    move-result-object p1

    invoke-virtual {p1}, Lcom/narvii/list/NVPagedAdapter;->resetEmptyList()V

    .line 221
    iget-object p1, p0, Lcom/narvii/flag/FlagListFragment$2;->this$0:Lcom/narvii/flag/FlagListFragment;

    invoke-static {p1}, Lcom/narvii/flag/FlagListFragment;->access$300(Lcom/narvii/flag/FlagListFragment;)Lcom/narvii/flag/FlagListFragment$FlagListAdapter;

    move-result-object p1

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2}, Lcom/narvii/list/NVPagedAdapter;->refresh(ILcom/narvii/util/Callback;)V

    .line 222
    iget-object p1, p0, Lcom/narvii/flag/FlagListFragment$2;->this$0:Lcom/narvii/flag/FlagListFragment;

    invoke-static {p1}, Lcom/narvii/flag/FlagListFragment;->access$000(Lcom/narvii/flag/FlagListFragment;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_6

    goto :goto_1

    :cond_6
    iget-object p1, p0, Lcom/narvii/flag/FlagListFragment$2;->this$0:Lcom/narvii/flag/FlagListFragment;

    invoke-static {p1}, Lcom/narvii/flag/FlagListFragment;->access$100(Lcom/narvii/flag/FlagListFragment;)Ljava/lang/String;

    .line 224
    :goto_1
    iget-object p1, p0, Lcom/narvii/flag/FlagListFragment$2;->this$0:Lcom/narvii/flag/FlagListFragment;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/narvii/flag/FlagListFragment$2;->this$0:Lcom/narvii/flag/FlagListFragment;

    const v2, 0x7f0f0b10

    invoke-virtual {v1, v2}, Landroid/support/v4/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/narvii/flag/FlagListFragment$2;->this$0:Lcom/narvii/flag/FlagListFragment;

    iget-object v2, p0, Lcom/narvii/flag/FlagListFragment$2;->val$ops:[I

    aget p2, v2, p2

    invoke-virtual {v1, p2}, Landroid/support/v4/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, ")"

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/narvii/app/NVFragment;->setTitle(Ljava/lang/CharSequence;)V

    return-void
.end method
