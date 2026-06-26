.class final Lcom/narvii/community/MyCommunityHelper$showMenuDialog$1;
.super Ljava/lang/Object;
.source "MyCommunityHelper.kt"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/community/MyCommunityHelper;->showMenuDialog(Lcom/narvii/model/Community;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic $item:Lcom/narvii/model/Community;

.field final synthetic $ops:[I

.field final synthetic this$0:Lcom/narvii/community/MyCommunityHelper;


# direct methods
.method constructor <init>(Lcom/narvii/community/MyCommunityHelper;[ILcom/narvii/model/Community;)V
    .locals 0

    iput-object p1, p0, Lcom/narvii/community/MyCommunityHelper$showMenuDialog$1;->this$0:Lcom/narvii/community/MyCommunityHelper;

    iput-object p2, p0, Lcom/narvii/community/MyCommunityHelper$showMenuDialog$1;->$ops:[I

    iput-object p3, p0, Lcom/narvii/community/MyCommunityHelper$showMenuDialog$1;->$item:Lcom/narvii/model/Community;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    .line 183
    iget-object p1, p0, Lcom/narvii/community/MyCommunityHelper$showMenuDialog$1;->$ops:[I

    aget p1, p1, p2

    const p2, 0x7f0f02c6

    if-ne p1, p2, :cond_0

    .line 185
    const-class p1, Lcom/narvii/master/CommunityDetailFragment;

    invoke-static {p1}, Lcom/narvii/app/FragmentWrapperActivity;->intent(Ljava/lang/Class;)Landroid/content/Intent;

    move-result-object p1

    .line 186
    iget-object p2, p0, Lcom/narvii/community/MyCommunityHelper$showMenuDialog$1;->$item:Lcom/narvii/model/Community;

    iget p2, p2, Lcom/narvii/model/Community;->id:I

    const-string v0, "id"

    invoke-virtual {p1, v0, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 187
    iget-object p2, p0, Lcom/narvii/community/MyCommunityHelper$showMenuDialog$1;->$item:Lcom/narvii/model/Community;

    invoke-static {p2}, Lcom/narvii/util/JacksonUtils;->writeAsString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    const-string v0, "prefetch"

    invoke-virtual {p1, v0, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/4 p2, 0x1

    const-string v0, "isCurrentUserJoined"

    .line 188
    invoke-virtual {p1, v0, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 189
    iget-object p2, p0, Lcom/narvii/community/MyCommunityHelper$showMenuDialog$1;->this$0:Lcom/narvii/community/MyCommunityHelper;

    const-string v0, "i"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Lcom/narvii/community/MyCommunityHelper;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    :cond_0
    const p2, 0x7f0f0ed5

    if-ne p1, p2, :cond_1

    .line 191
    iget-object p1, p0, Lcom/narvii/community/MyCommunityHelper$showMenuDialog$1;->this$0:Lcom/narvii/community/MyCommunityHelper;

    invoke-static {p1}, Lcom/narvii/community/MyCommunityHelper;->access$reorder(Lcom/narvii/community/MyCommunityHelper;)V

    goto :goto_0

    :cond_1
    const p2, 0x7f0f02c4

    if-ne p1, p2, :cond_2

    .line 193
    iget-object p1, p0, Lcom/narvii/community/MyCommunityHelper$showMenuDialog$1;->this$0:Lcom/narvii/community/MyCommunityHelper;

    iget-object p2, p0, Lcom/narvii/community/MyCommunityHelper$showMenuDialog$1;->$item:Lcom/narvii/model/Community;

    invoke-static {p1, p2}, Lcom/narvii/community/MyCommunityHelper;->access$createShortcut(Lcom/narvii/community/MyCommunityHelper;Lcom/narvii/model/Community;)V

    goto :goto_0

    :cond_2
    const p2, 0x7f0f0e18

    if-ne p1, p2, :cond_3

    .line 195
    iget-object p1, p0, Lcom/narvii/community/MyCommunityHelper$showMenuDialog$1;->this$0:Lcom/narvii/community/MyCommunityHelper;

    iget-object p2, p0, Lcom/narvii/community/MyCommunityHelper$showMenuDialog$1;->$item:Lcom/narvii/model/Community;

    invoke-static {p1, p2}, Lcom/narvii/community/MyCommunityHelper;->access$leaveCommunity(Lcom/narvii/community/MyCommunityHelper;Lcom/narvii/model/Community;)V

    :cond_3
    :goto_0
    return-void
.end method
