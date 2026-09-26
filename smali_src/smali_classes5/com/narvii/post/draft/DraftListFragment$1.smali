.class Lcom/narvii/post/draft/DraftListFragment$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/post/draft/DraftListFragment;->deleteAllDrafts()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/post/draft/DraftListFragment;


# direct methods
.method constructor <init>(Lcom/narvii/post/draft/DraftListFragment;)V
    .locals 0

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/post/draft/DraftListFragment$1;->this$0:Lcom/narvii/post/draft/DraftListFragment;

    .line 3
    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    .line 1
    .line 2
    iget-object p1, p0, Lcom/narvii/post/draft/DraftListFragment$1;->this$0:Lcom/narvii/post/draft/DraftListFragment;

    .line 3
    .line 4
    iget-object p1, p1, Lcom/narvii/post/draft/DraftListFragment;->draftType:Ljava/lang/String;

    .line 5
    .line 6
    .line 7
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 8
    move-result p1

    .line 9
    .line 10
    if-eqz p1, :cond_0

    .line 11
    .line 12
    iget-object p1, p0, Lcom/narvii/post/draft/DraftListFragment$1;->this$0:Lcom/narvii/post/draft/DraftListFragment;

    .line 13
    .line 14
    iget-object p1, p1, Lcom/narvii/post/draft/DraftListFragment;->draftManager:Lcom/narvii/post/DraftManager;

    .line 15
    .line 16
    .line 17
    invoke-virtual {p1}, Lcom/narvii/post/DraftManager;->clearDrafts()V

    .line 18
    goto :goto_1

    .line 19
    .line 20
    :cond_0
    new-instance p1, Ljava/util/ArrayList;

    .line 21
    .line 22
    .line 23
    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 24
    .line 25
    iget-object p2, p0, Lcom/narvii/post/draft/DraftListFragment$1;->this$0:Lcom/narvii/post/draft/DraftListFragment;

    .line 26
    .line 27
    iget-object p2, p2, Lcom/narvii/post/draft/DraftListFragment;->adapter:Lcom/narvii/post/draft/DraftListFragment$Adapter;

    .line 28
    .line 29
    iget-object p2, p2, Lcom/narvii/post/draft/DraftListFragment$Adapter;->list:Ljava/util/List;

    .line 30
    .line 31
    if-eqz p2, :cond_1

    .line 32
    .line 33
    .line 34
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 35
    move-result-object p2

    .line 36
    .line 37
    .line 38
    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    .line 39
    move-result v0

    .line 40
    .line 41
    if-eqz v0, :cond_1

    .line 42
    .line 43
    .line 44
    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 45
    move-result-object v0

    .line 46
    .line 47
    check-cast v0, Lcom/narvii/post/draft/DraftListFragment$Stub;

    .line 48
    .line 49
    iget-object v0, v0, Lcom/narvii/post/draft/DraftListFragment$Stub;->info:Lcom/narvii/post/DraftInfo;

    .line 50
    .line 51
    .line 52
    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 53
    goto :goto_0

    .line 54
    .line 55
    :cond_1
    iget-object p2, p0, Lcom/narvii/post/draft/DraftListFragment$1;->this$0:Lcom/narvii/post/draft/DraftListFragment;

    .line 56
    .line 57
    iget-object p2, p2, Lcom/narvii/post/draft/DraftListFragment;->draftManager:Lcom/narvii/post/DraftManager;

    .line 58
    .line 59
    .line 60
    invoke-virtual {p2, p1}, Lcom/narvii/post/DraftManager;->deleteDrafts(Ljava/util/List;)V

    .line 61
    .line 62
    :goto_1
    iget-object p1, p0, Lcom/narvii/post/draft/DraftListFragment$1;->this$0:Lcom/narvii/post/draft/DraftListFragment;

    .line 63
    .line 64
    iget-object p1, p1, Lcom/narvii/post/draft/DraftListFragment;->adapter:Lcom/narvii/post/draft/DraftListFragment$Adapter;

    .line 65
    .line 66
    .line 67
    invoke-virtual {p1}, Lcom/narvii/post/draft/DraftListFragment$Adapter;->rebuild()V

    .line 68
    .line 69
    iget-object p1, p0, Lcom/narvii/post/draft/DraftListFragment$1;->this$0:Lcom/narvii/post/draft/DraftListFragment;

    .line 70
    const/4 p2, 0x0

    .line 71
    .line 72
    .line 73
    invoke-static {p1, p2}, Lcom/narvii/post/draft/DraftListFragment;->x(Lcom/narvii/post/draft/DraftListFragment;Z)V

    .line 74
    .line 75
    iget-object p1, p0, Lcom/narvii/post/draft/DraftListFragment$1;->this$0:Lcom/narvii/post/draft/DraftListFragment;

    .line 76
    .line 77
    .line 78
    invoke-static {p1}, Lcom/narvii/post/draft/DraftListFragment;->y(Lcom/narvii/post/draft/DraftListFragment;)V

    .line 79
    return-void
.end method
