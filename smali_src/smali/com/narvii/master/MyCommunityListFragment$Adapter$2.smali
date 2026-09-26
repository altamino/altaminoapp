.class Lcom/narvii/master/MyCommunityListFragment$Adapter$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/master/MyCommunityListFragment$Adapter;->onLongClick(Landroid/widget/ListAdapter;ILjava/lang/Object;Landroid/view/View;Landroid/view/View;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/narvii/master/MyCommunityListFragment$Adapter;

.field final synthetic val$community:Lcom/narvii/model/Community;

.field final synthetic val$ops:[I


# direct methods
.method constructor <init>(Lcom/narvii/master/MyCommunityListFragment$Adapter;[ILcom/narvii/model/Community;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/master/MyCommunityListFragment$Adapter$2;->this$1:Lcom/narvii/master/MyCommunityListFragment$Adapter;

    .line 3
    .line 4
    iput-object p2, p0, Lcom/narvii/master/MyCommunityListFragment$Adapter$2;->val$ops:[I

    .line 5
    .line 6
    iput-object p3, p0, Lcom/narvii/master/MyCommunityListFragment$Adapter$2;->val$community:Lcom/narvii/model/Community;

    .line 7
    .line 8
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    return-void
.end method

.method public static safedk_NVAdapter_startActivity_5b31acbff248f36f6c86407552449fc2(Lcom/narvii/list/NVAdapter;Landroid/content/Intent;)V
    .locals 1
    .param p0, "p0"    # Lcom/narvii/list/NVAdapter;
    .param p1, "p1"    # Landroid/content/Intent;

    const-string v0, "SafeDK-Special|SafeDK: Call> Lcom/narvii/list/NVAdapter;->startActivity(Landroid/content/Intent;)V"

    invoke-static {v0}, Lcom/safedk/android/utils/Logger;->d(Ljava/lang/String;)I

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0, p1}, Lcom/narvii/list/NVAdapter;->startActivity(Landroid/content/Intent;)V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    .line 1
    .line 2
    iget-object p1, p0, Lcom/narvii/master/MyCommunityListFragment$Adapter$2;->val$ops:[I

    .line 3
    .line 4
    aget p1, p1, p2

    .line 5
    .line 6
    .line 7
    const p2, 0x7f120311

    .line 8
    .line 9
    if-ne p1, p2, :cond_0

    .line 10
    .line 11
    const-class p1, Lcom/narvii/master/CommunityDetailFragment;

    .line 12
    .line 13
    .line 14
    invoke-static {p1}, Lcom/narvii/app/FragmentWrapperActivity;->intent(Ljava/lang/Class;)Landroid/content/Intent;

    .line 15
    move-result-object p1

    .line 16
    .line 17
    iget-object p2, p0, Lcom/narvii/master/MyCommunityListFragment$Adapter$2;->val$community:Lcom/narvii/model/Community;

    .line 18
    .line 19
    iget p2, p2, Lcom/narvii/model/Community;->id:I

    .line 20
    .line 21
    const-string v0, "id"

    .line 22
    .line 23
    .line 24
    invoke-virtual {p1, v0, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 25
    .line 26
    iget-object p2, p0, Lcom/narvii/master/MyCommunityListFragment$Adapter$2;->val$community:Lcom/narvii/model/Community;

    .line 27
    .line 28
    .line 29
    invoke-static {p2}, Lcom/narvii/util/JacksonUtils;->writeAsString(Ljava/lang/Object;)Ljava/lang/String;

    .line 30
    move-result-object p2

    .line 31
    .line 32
    const-string v0, "prefetch"

    .line 33
    .line 34
    .line 35
    invoke-virtual {p1, v0, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 36
    .line 37
    const-string p2, "isCurrentUserJoined"

    .line 38
    const/4 v0, 0x1

    .line 39
    .line 40
    .line 41
    invoke-virtual {p1, p2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 42
    .line 43
    iget-object p2, p0, Lcom/narvii/master/MyCommunityListFragment$Adapter$2;->this$1:Lcom/narvii/master/MyCommunityListFragment$Adapter;

    .line 44
    .line 45
    .line 46
    invoke-static {p2, p1}, Lcom/narvii/master/MyCommunityListFragment$Adapter$2;->safedk_NVAdapter_startActivity_5b31acbff248f36f6c86407552449fc2(Lcom/narvii/list/NVAdapter;Landroid/content/Intent;)V

    .line 47
    goto :goto_0

    .line 48
    .line 49
    .line 50
    :cond_0
    const p2, 0x7f120fee

    .line 51
    .line 52
    if-ne p1, p2, :cond_1

    .line 53
    .line 54
    iget-object p1, p0, Lcom/narvii/master/MyCommunityListFragment$Adapter$2;->this$1:Lcom/narvii/master/MyCommunityListFragment$Adapter;

    .line 55
    .line 56
    iget-object p1, p1, Lcom/narvii/master/MyCommunityListFragment$Adapter;->this$0:Lcom/narvii/master/MyCommunityListFragment;

    .line 57
    .line 58
    .line 59
    invoke-virtual {p1}, Lcom/narvii/master/MyCommunityListFragment;->reorder()V

    .line 60
    goto :goto_0

    .line 61
    .line 62
    .line 63
    :cond_1
    const p2, 0x7f12030f

    .line 64
    .line 65
    if-ne p1, p2, :cond_2

    .line 66
    .line 67
    iget-object p1, p0, Lcom/narvii/master/MyCommunityListFragment$Adapter$2;->this$1:Lcom/narvii/master/MyCommunityListFragment$Adapter;

    .line 68
    .line 69
    iget-object p1, p1, Lcom/narvii/master/MyCommunityListFragment$Adapter;->this$0:Lcom/narvii/master/MyCommunityListFragment;

    .line 70
    .line 71
    iget-object p2, p0, Lcom/narvii/master/MyCommunityListFragment$Adapter$2;->val$community:Lcom/narvii/model/Community;

    .line 72
    .line 73
    .line 74
    invoke-virtual {p1, p2}, Lcom/narvii/master/MyCommunityListFragment;->createShortcut(Lcom/narvii/model/Community;)V

    .line 75
    goto :goto_0

    .line 76
    .line 77
    .line 78
    :cond_2
    const p2, 0x7f120f43

    .line 79
    .line 80
    if-ne p1, p2, :cond_3

    .line 81
    .line 82
    iget-object p1, p0, Lcom/narvii/master/MyCommunityListFragment$Adapter$2;->this$1:Lcom/narvii/master/MyCommunityListFragment$Adapter;

    .line 83
    .line 84
    iget-object p1, p1, Lcom/narvii/master/MyCommunityListFragment$Adapter;->this$0:Lcom/narvii/master/MyCommunityListFragment;

    .line 85
    .line 86
    iget-object p2, p0, Lcom/narvii/master/MyCommunityListFragment$Adapter$2;->val$community:Lcom/narvii/model/Community;

    .line 87
    .line 88
    .line 89
    invoke-static {p1, p2}, Lcom/narvii/master/MyCommunityListFragment;->x(Lcom/narvii/master/MyCommunityListFragment;Lcom/narvii/model/Community;)V

    .line 90
    :cond_3
    :goto_0
    return-void
.end method
