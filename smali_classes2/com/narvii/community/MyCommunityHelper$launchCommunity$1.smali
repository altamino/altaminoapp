.class final Lcom/narvii/community/MyCommunityHelper$launchCommunity$1;
.super Ljava/lang/Object;
.source "MyCommunityHelper.kt"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/community/MyCommunityHelper;->launchCommunity(Lcom/narvii/model/Community;Landroid/view/View;Lkotlin/jvm/functions/Function1;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic $item:Lcom/narvii/model/Community;

.field final synthetic this$0:Lcom/narvii/community/MyCommunityHelper;


# direct methods
.method constructor <init>(Lcom/narvii/community/MyCommunityHelper;Lcom/narvii/model/Community;)V
    .locals 0

    iput-object p1, p0, Lcom/narvii/community/MyCommunityHelper$launchCommunity$1;->this$0:Lcom/narvii/community/MyCommunityHelper;

    iput-object p2, p0, Lcom/narvii/community/MyCommunityHelper$launchCommunity$1;->$item:Lcom/narvii/model/Community;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1

    .line 106
    iget-object p1, p0, Lcom/narvii/community/MyCommunityHelper$launchCommunity$1;->this$0:Lcom/narvii/community/MyCommunityHelper;

    iget-object v0, p0, Lcom/narvii/community/MyCommunityHelper$launchCommunity$1;->$item:Lcom/narvii/model/Community;

    invoke-static {p1, v0}, Lcom/narvii/community/MyCommunityHelper;->access$leaveCommunity(Lcom/narvii/community/MyCommunityHelper;Lcom/narvii/model/Community;)V

    return-void
.end method
