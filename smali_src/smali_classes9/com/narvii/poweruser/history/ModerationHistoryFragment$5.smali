.class Lcom/narvii/poweruser/history/ModerationHistoryFragment$5;
.super Ljava/lang/Object;
.source "SourceFile"

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

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/poweruser/history/ModerationHistoryFragment$5;->this$0:Lcom/narvii/poweruser/history/ModerationHistoryFragment;

    .line 3
    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    return-void
.end method


# virtual methods
.method public onItemClicked(Lcom/narvii/model/User;)V
    .locals 2

    .line 1
    .line 2
    if-eqz p1, :cond_0

    .line 3
    .line 4
    iget-object v0, p0, Lcom/narvii/poweruser/history/ModerationHistoryFragment$5;->this$0:Lcom/narvii/poweruser/history/ModerationHistoryFragment;

    .line 5
    .line 6
    .line 7
    invoke-virtual {p1}, Lcom/narvii/model/User;->uid()Ljava/lang/String;

    .line 8
    move-result-object v1

    .line 9
    .line 10
    iput-object v1, v0, Lcom/narvii/poweruser/history/ModerationHistoryBaseFragment;->operatorId:Ljava/lang/String;

    .line 11
    .line 12
    iget-object v0, p0, Lcom/narvii/poweruser/history/ModerationHistoryFragment$5;->this$0:Lcom/narvii/poweruser/history/ModerationHistoryFragment;

    .line 13
    .line 14
    .line 15
    invoke-virtual {p1}, Lcom/narvii/model/User;->nickname()Ljava/lang/String;

    .line 16
    move-result-object p1

    .line 17
    .line 18
    .line 19
    invoke-virtual {v0, p1}, Lcom/narvii/app/NVFragment;->setTitle(Ljava/lang/CharSequence;)V

    .line 20
    goto :goto_0

    .line 21
    .line 22
    :cond_0
    iget-object p1, p0, Lcom/narvii/poweruser/history/ModerationHistoryFragment$5;->this$0:Lcom/narvii/poweruser/history/ModerationHistoryFragment;

    .line 23
    const/4 v0, 0x0

    .line 24
    .line 25
    iput-object v0, p1, Lcom/narvii/poweruser/history/ModerationHistoryBaseFragment;->operatorId:Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    const v0, 0x7f120cb0

    .line 29
    .line 30
    .line 31
    invoke-virtual {p1, v0}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    .line 32
    move-result-object v0

    .line 33
    .line 34
    .line 35
    invoke-virtual {p1, v0}, Lcom/narvii/app/NVFragment;->setTitle(Ljava/lang/CharSequence;)V

    .line 36
    .line 37
    :goto_0
    iget-object p1, p0, Lcom/narvii/poweruser/history/ModerationHistoryFragment$5;->this$0:Lcom/narvii/poweruser/history/ModerationHistoryFragment;

    .line 38
    .line 39
    .line 40
    invoke-static {p1}, Lcom/narvii/poweruser/history/ModerationHistoryFragment;->x(Lcom/narvii/poweruser/history/ModerationHistoryFragment;)V

    .line 41
    .line 42
    iget-object p1, p0, Lcom/narvii/poweruser/history/ModerationHistoryFragment$5;->this$0:Lcom/narvii/poweruser/history/ModerationHistoryFragment;

    .line 43
    .line 44
    iget-object p1, p1, Lcom/narvii/poweruser/history/ModerationHistoryBaseFragment;->moderationHistoryAdapter:Lcom/narvii/poweruser/history/ModerationHistoryBaseAdapter;

    .line 45
    .line 46
    if-eqz p1, :cond_1

    .line 47
    .line 48
    .line 49
    invoke-virtual {p1}, Lcom/narvii/list/NVPagedAdapter;->resetList()V

    .line 50
    :cond_1
    return-void
.end method
