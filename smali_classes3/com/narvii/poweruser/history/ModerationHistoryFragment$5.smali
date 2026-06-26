.class Lcom/narvii/poweruser/history/ModerationHistoryFragment$5;
.super Ljava/lang/Object;
.source "ModerationHistoryFragment.java"

# interfaces
.implements Lcom/narvii/poweruser/history/MembersFilterFragment$FilterItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/poweruser/history/ModerationHistoryFragment;->addFilterFragment()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/poweruser/history/ModerationHistoryFragment;


# direct methods
.method constructor <init>(Lcom/narvii/poweruser/history/ModerationHistoryFragment;)V
    .locals 0

    .line 204
    iput-object p1, p0, Lcom/narvii/poweruser/history/ModerationHistoryFragment$5;->this$0:Lcom/narvii/poweruser/history/ModerationHistoryFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClicked(Lcom/narvii/model/User;)V
    .locals 2

    if-eqz p1, :cond_0

    .line 208
    iget-object v0, p0, Lcom/narvii/poweruser/history/ModerationHistoryFragment$5;->this$0:Lcom/narvii/poweruser/history/ModerationHistoryFragment;

    invoke-virtual {p1}, Lcom/narvii/model/User;->uid()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/narvii/poweruser/history/ModerationHistoryBaseFragment;->operatorId:Ljava/lang/String;

    .line 209
    iget-object v0, p0, Lcom/narvii/poweruser/history/ModerationHistoryFragment$5;->this$0:Lcom/narvii/poweruser/history/ModerationHistoryFragment;

    invoke-virtual {p1}, Lcom/narvii/model/User;->nickname()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/narvii/app/NVFragment;->setTitle(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 211
    :cond_0
    iget-object p1, p0, Lcom/narvii/poweruser/history/ModerationHistoryFragment$5;->this$0:Lcom/narvii/poweruser/history/ModerationHistoryFragment;

    const/4 v0, 0x0

    iput-object v0, p1, Lcom/narvii/poweruser/history/ModerationHistoryBaseFragment;->operatorId:Ljava/lang/String;

    const v0, 0x7f0f0bab

    .line 212
    invoke-virtual {p1, v0}, Landroid/support/v4/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/narvii/app/NVFragment;->setTitle(Ljava/lang/CharSequence;)V

    .line 214
    :goto_0
    iget-object p1, p0, Lcom/narvii/poweruser/history/ModerationHistoryFragment$5;->this$0:Lcom/narvii/poweruser/history/ModerationHistoryFragment;

    invoke-static {p1}, Lcom/narvii/poweruser/history/ModerationHistoryFragment;->access$000(Lcom/narvii/poweruser/history/ModerationHistoryFragment;)V

    .line 215
    iget-object p1, p0, Lcom/narvii/poweruser/history/ModerationHistoryFragment$5;->this$0:Lcom/narvii/poweruser/history/ModerationHistoryFragment;

    iget-object p1, p1, Lcom/narvii/poweruser/history/ModerationHistoryBaseFragment;->moderationHistoryAdapter:Lcom/narvii/poweruser/history/ModerationHistoryBaseAdapter;

    if-eqz p1, :cond_1

    .line 216
    invoke-virtual {p1}, Lcom/narvii/list/NVPagedAdapter;->resetList()V

    :cond_1
    return-void
.end method
