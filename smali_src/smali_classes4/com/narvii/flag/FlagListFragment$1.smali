.class Lcom/narvii/flag/FlagListFragment$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/flag/FlagListFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/flag/FlagListFragment;


# direct methods
.method constructor <init>(Lcom/narvii/flag/FlagListFragment;)V
    .locals 0

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/flag/FlagListFragment$1;->this$0:Lcom/narvii/flag/FlagListFragment;

    .line 3
    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 6

    .line 1
    .line 2
    iget-object p1, p0, Lcom/narvii/flag/FlagListFragment$1;->this$0:Lcom/narvii/flag/FlagListFragment;

    .line 3
    .line 4
    .line 5
    invoke-virtual {p1}, Lcom/narvii/list/NVListFragment;->getListAdapter()Landroid/widget/ListAdapter;

    .line 6
    move-result-object p1

    .line 7
    .line 8
    check-cast p1, Lcom/narvii/flag/FlagListFragment$FlagListAdapter;

    .line 9
    .line 10
    .line 11
    invoke-virtual {p1}, Lcom/narvii/list/NVPagedAdapter;->list()Ljava/util/List;

    .line 12
    move-result-object v2

    .line 13
    .line 14
    if-eqz v2, :cond_1

    .line 15
    .line 16
    .line 17
    invoke-interface {v2}, Ljava/util/List;->size()I

    .line 18
    move-result p1

    .line 19
    .line 20
    if-lez p1, :cond_1

    .line 21
    const/4 p1, 0x0

    .line 22
    .line 23
    .line 24
    invoke-interface {v2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 25
    move-result-object p1

    .line 26
    move-object v1, p1

    .line 27
    .line 28
    check-cast v1, Lcom/narvii/flag/model/Flag;

    .line 29
    .line 30
    iget-object v0, p0, Lcom/narvii/flag/FlagListFragment$1;->this$0:Lcom/narvii/flag/FlagListFragment;

    .line 31
    .line 32
    .line 33
    invoke-interface {v2}, Ljava/util/List;->size()I

    .line 34
    move-result v3

    .line 35
    .line 36
    iget-object p1, p0, Lcom/narvii/flag/FlagListFragment$1;->this$0:Lcom/narvii/flag/FlagListFragment;

    .line 37
    .line 38
    .line 39
    invoke-static {p1}, Lcom/narvii/flag/FlagListFragment;->v(Lcom/narvii/flag/FlagListFragment;)Ljava/lang/String;

    .line 40
    move-result-object p1

    .line 41
    .line 42
    const-string v4, "resolved"

    .line 43
    .line 44
    .line 45
    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 46
    move-result p1

    .line 47
    .line 48
    if-eqz p1, :cond_0

    .line 49
    .line 50
    iget-object p1, p0, Lcom/narvii/flag/FlagListFragment$1;->this$0:Lcom/narvii/flag/FlagListFragment;

    .line 51
    .line 52
    .line 53
    invoke-static {p1}, Lcom/narvii/flag/FlagListFragment;->v(Lcom/narvii/flag/FlagListFragment;)Ljava/lang/String;

    .line 54
    move-result-object p1

    .line 55
    :goto_0
    move-object v4, p1

    .line 56
    goto :goto_1

    .line 57
    .line 58
    :cond_0
    iget-object p1, p0, Lcom/narvii/flag/FlagListFragment$1;->this$0:Lcom/narvii/flag/FlagListFragment;

    .line 59
    .line 60
    .line 61
    invoke-static {p1}, Lcom/narvii/flag/FlagListFragment;->u(Lcom/narvii/flag/FlagListFragment;)Ljava/lang/String;

    .line 62
    move-result-object p1

    .line 63
    goto :goto_0

    .line 64
    .line 65
    :goto_1
    iget-object p1, p0, Lcom/narvii/flag/FlagListFragment$1;->this$0:Lcom/narvii/flag/FlagListFragment;

    .line 66
    .line 67
    .line 68
    invoke-static {p1}, Lcom/narvii/flag/FlagListFragment;->x(Lcom/narvii/flag/FlagListFragment;)Ljava/lang/String;

    .line 69
    move-result-object v5

    .line 70
    .line 71
    .line 72
    invoke-static/range {v0 .. v5}, Lcom/narvii/flag/resolve/FlagModeHelper;->launchFlagMode(Lcom/narvii/app/NVContext;Lcom/narvii/flag/model/Flag;Ljava/util/List;ILjava/lang/String;Ljava/lang/String;)V

    .line 73
    :cond_1
    return-void
.end method
