.class final Lcom/narvii/master/home/profile/GlobalProfileFragment$recentVisitorListener$1;
.super Ljava/lang/Object;
.source "GlobalProfileFragment.kt"

# interfaces
.implements Lcom/narvii/account/AccountService$RecentVisitorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/master/home/profile/GlobalProfileFragment;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nGlobalProfileFragment.kt\nKotlin\n*S Kotlin\n*F\n+ 1 GlobalProfileFragment.kt\ncom/narvii/master/home/profile/GlobalProfileFragment$recentVisitorListener$1\n*L\n1#1,1015:1\n*E\n"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/master/home/profile/GlobalProfileFragment;


# direct methods
.method constructor <init>(Lcom/narvii/master/home/profile/GlobalProfileFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/narvii/master/home/profile/GlobalProfileFragment$recentVisitorListener$1;->this$0:Lcom/narvii/master/home/profile/GlobalProfileFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onVisitorCountChanged(II)V
    .locals 1

    if-ltz p2, :cond_1

    .line 174
    iget-object v0, p0, Lcom/narvii/master/home/profile/GlobalProfileFragment$recentVisitorListener$1;->this$0:Lcom/narvii/master/home/profile/GlobalProfileFragment;

    invoke-virtual {v0}, Lcom/narvii/master/home/profile/GlobalProfileFragment;->getUser()Lcom/narvii/model/User;

    move-result-object v0

    if-eqz v0, :cond_0

    iput p2, v0, Lcom/narvii/model/User;->visitorsCount:I

    .line 175
    :cond_0
    iget-object p2, p0, Lcom/narvii/master/home/profile/GlobalProfileFragment$recentVisitorListener$1;->this$0:Lcom/narvii/master/home/profile/GlobalProfileFragment;

    invoke-virtual {p2}, Lcom/narvii/master/home/profile/GlobalProfileFragment;->getProfileView()Lcom/narvii/master/home/widgets/GlobalProfileHeaderView;

    move-result-object p2

    iget-object v0, p0, Lcom/narvii/master/home/profile/GlobalProfileFragment$recentVisitorListener$1;->this$0:Lcom/narvii/master/home/profile/GlobalProfileFragment;

    invoke-virtual {v0}, Lcom/narvii/master/home/profile/GlobalProfileFragment;->getUser()Lcom/narvii/model/User;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/narvii/master/home/widgets/GlobalProfileHeaderView;->updateViews(Lcom/narvii/model/User;)V

    .line 177
    :cond_1
    iget-object p2, p0, Lcom/narvii/master/home/profile/GlobalProfileFragment$recentVisitorListener$1;->this$0:Lcom/narvii/master/home/profile/GlobalProfileFragment;

    invoke-virtual {p2}, Lcom/narvii/master/home/profile/GlobalProfileFragment;->getProfileView()Lcom/narvii/master/home/widgets/GlobalProfileHeaderView;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/narvii/master/home/widgets/GlobalProfileHeaderView;->updateVisitorIncreaseView(I)V

    return-void
.end method
