.class Lcom/narvii/master/CommunityDetailFragment$3$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/master/CommunityDetailFragment$3;->call(Lcom/narvii/model/api/UserListResponse;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/narvii/master/CommunityDetailFragment$3;


# direct methods
.method constructor <init>(Lcom/narvii/master/CommunityDetailFragment$3;)V
    .locals 0

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/master/CommunityDetailFragment$3$1;->this$1:Lcom/narvii/master/CommunityDetailFragment$3;

    .line 3
    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    return-void
.end method

.method public static safedk_Fragment_startActivityForResult_6fd6bf7695baae8f1a141a4d4340bbe1(Landroidx/fragment/app/Fragment;Landroid/content/Intent;I)V
    .locals 1
    .param p0, "p0"    # Landroidx/fragment/app/Fragment;
    .param p1, "p1"    # Landroid/content/Intent;
    .param p2, "p2"    # I

    const-string v0, "SafeDK-Special|SafeDK: Call> Landroidx/fragment/app/Fragment;->startActivityForResult(Landroid/content/Intent;I)V"

    invoke-static {v0}, Lcom/safedk/android/utils/Logger;->d(Ljava/lang/String;)I

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0, p1, p2}, Landroidx/fragment/app/Fragment;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .line 1
    .line 2
    iget-object p1, p0, Lcom/narvii/master/CommunityDetailFragment$3$1;->this$1:Lcom/narvii/master/CommunityDetailFragment$3;

    .line 3
    .line 4
    iget-object p1, p1, Lcom/narvii/master/CommunityDetailFragment$3;->this$0:Lcom/narvii/master/CommunityDetailFragment;

    .line 5
    .line 6
    .line 7
    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    .line 8
    move-result-object p1

    .line 9
    .line 10
    if-nez p1, :cond_0

    .line 11
    return-void

    .line 12
    .line 13
    :cond_0
    iget-object p1, p0, Lcom/narvii/master/CommunityDetailFragment$3$1;->this$1:Lcom/narvii/master/CommunityDetailFragment$3;

    .line 14
    .line 15
    iget-object p1, p1, Lcom/narvii/master/CommunityDetailFragment$3;->this$0:Lcom/narvii/master/CommunityDetailFragment;

    .line 16
    .line 17
    iget p1, p1, Lcom/narvii/master/CommunityDetailFragment;->cid:I

    .line 18
    .line 19
    const-string v0, "Community Detail Live Layer Bar"

    .line 20
    .line 21
    .line 22
    invoke-static {p1, v0}, Lcom/narvii/util/EnterCommunityUtils;->fastEnter(ILjava/lang/String;)V

    .line 23
    .line 24
    const-class p1, Lcom/narvii/livelayer/LiveLayerFragment;

    .line 25
    .line 26
    .line 27
    invoke-static {p1}, Lcom/narvii/livelayer/LiveLayerActivity;->intent(Ljava/lang/Class;)Landroid/content/Intent;

    .line 28
    move-result-object p1

    .line 29
    .line 30
    const-string v0, "customFinishAnimOut"

    .line 31
    .line 32
    .line 33
    const v1, 0x7f01000d

    .line 34
    .line 35
    .line 36
    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 37
    .line 38
    const-string v0, "customFinishAnimIn"

    .line 39
    const/4 v1, 0x0

    .line 40
    .line 41
    .line 42
    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 43
    .line 44
    iget-object v0, p0, Lcom/narvii/master/CommunityDetailFragment$3$1;->this$1:Lcom/narvii/master/CommunityDetailFragment$3;

    .line 45
    .line 46
    iget-object v0, v0, Lcom/narvii/master/CommunityDetailFragment$3;->this$0:Lcom/narvii/master/CommunityDetailFragment;

    .line 47
    .line 48
    .line 49
    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    .line 50
    move-result-object v0

    .line 51
    .line 52
    .line 53
    invoke-static {v0}, Lcom/narvii/livelayer/LiveLayerHost;->getSource(Landroid/app/Activity;)Ljava/lang/String;

    .line 54
    move-result-object v0

    .line 55
    .line 56
    const-string v2, "Source"

    .line 57
    .line 58
    .line 59
    invoke-virtual {p1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 60
    .line 61
    iget-object v0, p0, Lcom/narvii/master/CommunityDetailFragment$3$1;->this$1:Lcom/narvii/master/CommunityDetailFragment$3;

    .line 62
    .line 63
    iget-object v0, v0, Lcom/narvii/master/CommunityDetailFragment$3;->this$0:Lcom/narvii/master/CommunityDetailFragment;

    .line 64
    .line 65
    iget v0, v0, Lcom/narvii/master/CommunityDetailFragment;->cid:I

    .line 66
    .line 67
    const-string v2, "__communityId"

    .line 68
    .line 69
    .line 70
    invoke-virtual {p1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 71
    .line 72
    const-string v0, "__interactionScope"

    .line 73
    .line 74
    .line 75
    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 76
    .line 77
    const-string v0, "fromCommunityDetail"

    .line 78
    const/4 v2, 0x1

    .line 79
    .line 80
    .line 81
    invoke-virtual {p1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 82
    .line 83
    iget-object v0, p0, Lcom/narvii/master/CommunityDetailFragment$3$1;->this$1:Lcom/narvii/master/CommunityDetailFragment$3;

    .line 84
    .line 85
    iget-object v0, v0, Lcom/narvii/master/CommunityDetailFragment$3;->this$0:Lcom/narvii/master/CommunityDetailFragment;

    .line 86
    .line 87
    .line 88
    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    .line 89
    move-result-object v0

    .line 90
    .line 91
    .line 92
    invoke-static {v0}, Lcom/narvii/livelayer/LiveLayerActivity;->prepare(Landroid/app/Activity;)V

    .line 93
    .line 94
    iget-object v0, p0, Lcom/narvii/master/CommunityDetailFragment$3$1;->this$1:Lcom/narvii/master/CommunityDetailFragment$3;

    .line 95
    .line 96
    iget-object v0, v0, Lcom/narvii/master/CommunityDetailFragment$3;->this$0:Lcom/narvii/master/CommunityDetailFragment;

    .line 97
    .line 98
    const/16 v2, 0x12c

    .line 99
    .line 100
    .line 101
    invoke-static {v0, p1, v2}, Lcom/narvii/master/CommunityDetailFragment$3$1;->safedk_Fragment_startActivityForResult_6fd6bf7695baae8f1a141a4d4340bbe1(Landroidx/fragment/app/Fragment;Landroid/content/Intent;I)V

    .line 102
    .line 103
    iget-object p1, p0, Lcom/narvii/master/CommunityDetailFragment$3$1;->this$1:Lcom/narvii/master/CommunityDetailFragment$3;

    .line 104
    .line 105
    iget-object p1, p1, Lcom/narvii/master/CommunityDetailFragment$3;->this$0:Lcom/narvii/master/CommunityDetailFragment;

    .line 106
    .line 107
    .line 108
    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    .line 109
    move-result-object p1

    .line 110
    .line 111
    .line 112
    const v0, 0x7f01000c

    .line 113
    .line 114
    .line 115
    invoke-virtual {p1, v0, v1}, Landroid/app/Activity;->overridePendingTransition(II)V

    .line 116
    return-void
.end method
