.class Lcom/narvii/detail/FeedDetailFragment$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/narvii/detail/FeedDetailFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/detail/FeedDetailFragment;


# direct methods
.method constructor <init>(Lcom/narvii/detail/FeedDetailFragment;)V
    .locals 0

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/detail/FeedDetailFragment$1;->this$0:Lcom/narvii/detail/FeedDetailFragment;

    .line 3
    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    return-void
.end method

.method public static safedk_Fragment_startActivity_d519b2d71bdac81b1d20f350086c68e6(Landroidx/fragment/app/Fragment;Landroid/content/Intent;)V
    .locals 1
    .param p0, "p0"    # Landroidx/fragment/app/Fragment;
    .param p1, "p1"    # Landroid/content/Intent;

    const-string v0, "SafeDK-Special|SafeDK: Call> Landroidx/fragment/app/Fragment;->startActivity(Landroid/content/Intent;)V"

    invoke-static {v0}, Lcom/safedk/android/utils/Logger;->d(Ljava/lang/String;)I

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0, p1}, Landroidx/fragment/app/Fragment;->startActivity(Landroid/content/Intent;)V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .line 1
    .line 2
    iget-object p1, p0, Lcom/narvii/detail/FeedDetailFragment$1;->this$0:Lcom/narvii/detail/FeedDetailFragment;

    .line 3
    .line 4
    .line 5
    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    .line 6
    move-result-object p1

    .line 7
    .line 8
    if-nez p1, :cond_0

    .line 9
    return-void

    .line 10
    .line 11
    :cond_0
    const-class p1, Lcom/narvii/livelayer/LiveLayerFragment;

    .line 12
    .line 13
    .line 14
    invoke-static {p1}, Lcom/narvii/livelayer/LiveLayerActivity;->intent(Ljava/lang/Class;)Landroid/content/Intent;

    .line 15
    move-result-object p1

    .line 16
    .line 17
    const-string v0, "customFinishAnimOut"

    .line 18
    .line 19
    .line 20
    const v1, 0x7f01000d

    .line 21
    .line 22
    .line 23
    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 24
    .line 25
    const-string v0, "customFinishAnimIn"

    .line 26
    const/4 v1, 0x0

    .line 27
    .line 28
    .line 29
    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 30
    .line 31
    iget-object v0, p0, Lcom/narvii/detail/FeedDetailFragment$1;->this$0:Lcom/narvii/detail/FeedDetailFragment;

    .line 32
    .line 33
    .line 34
    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    .line 35
    move-result-object v0

    .line 36
    .line 37
    .line 38
    invoke-static {v0}, Lcom/narvii/livelayer/LiveLayerHost;->getSource(Landroid/app/Activity;)Ljava/lang/String;

    .line 39
    move-result-object v0

    .line 40
    .line 41
    const-string v2, "Source"

    .line 42
    .line 43
    .line 44
    invoke-virtual {p1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 45
    .line 46
    iget-object v0, p0, Lcom/narvii/detail/FeedDetailFragment$1;->this$0:Lcom/narvii/detail/FeedDetailFragment;

    .line 47
    .line 48
    iget-object v0, v0, Lcom/narvii/detail/FeedDetailFragment;->topic:Ljava/lang/String;

    .line 49
    .line 50
    const-string v2, "pageTopic"

    .line 51
    .line 52
    .line 53
    invoke-virtual {p1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 54
    .line 55
    iget-object v0, p0, Lcom/narvii/detail/FeedDetailFragment$1;->this$0:Lcom/narvii/detail/FeedDetailFragment;

    .line 56
    .line 57
    .line 58
    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    .line 59
    move-result-object v0

    .line 60
    .line 61
    .line 62
    invoke-static {v0}, Lcom/narvii/livelayer/LiveLayerActivity;->prepare(Landroid/app/Activity;)V

    .line 63
    .line 64
    iget-object v0, p0, Lcom/narvii/detail/FeedDetailFragment$1;->this$0:Lcom/narvii/detail/FeedDetailFragment;

    .line 65
    .line 66
    iget-object v0, v0, Lcom/narvii/detail/FeedDetailFragment;->blockPass:Lcom/narvii/util/statistics/TmpValue;

    .line 67
    .line 68
    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 69
    .line 70
    .line 71
    invoke-virtual {v0, v2}, Lcom/narvii/util/statistics/TmpValue;->set(Ljava/lang/Object;)V

    .line 72
    .line 73
    iget-object v0, p0, Lcom/narvii/detail/FeedDetailFragment$1;->this$0:Lcom/narvii/detail/FeedDetailFragment;

    .line 74
    .line 75
    .line 76
    invoke-static {v0, p1}, Lcom/narvii/detail/FeedDetailFragment$1;->safedk_Fragment_startActivity_d519b2d71bdac81b1d20f350086c68e6(Landroidx/fragment/app/Fragment;Landroid/content/Intent;)V

    .line 77
    .line 78
    iget-object p1, p0, Lcom/narvii/detail/FeedDetailFragment$1;->this$0:Lcom/narvii/detail/FeedDetailFragment;

    .line 79
    .line 80
    .line 81
    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    .line 82
    move-result-object p1

    .line 83
    .line 84
    .line 85
    const v0, 0x7f01000c

    .line 86
    .line 87
    .line 88
    invoke-virtual {p1, v0, v1}, Landroid/app/Activity;->overridePendingTransition(II)V

    .line 89
    return-void
.end method
