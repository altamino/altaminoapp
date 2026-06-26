.class Lcom/narvii/amino/CommunityNavBarFragment$3;
.super Ljava/lang/Object;
.source "CommunityNavBarFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/amino/CommunityNavBarFragment;->updateActionBar(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/amino/CommunityNavBarFragment;


# direct methods
.method constructor <init>(Lcom/narvii/amino/CommunityNavBarFragment;)V
    .locals 0

    .line 176
    iput-object p1, p0, Lcom/narvii/amino/CommunityNavBarFragment$3;->this$0:Lcom/narvii/amino/CommunityNavBarFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .line 179
    iget-object p1, p0, Lcom/narvii/amino/CommunityNavBarFragment$3;->this$0:Lcom/narvii/amino/CommunityNavBarFragment;

    invoke-static {p1}, Lcom/narvii/amino/CommunityNavBarFragment;->access$100(Lcom/narvii/amino/CommunityNavBarFragment;)Z

    move-result p1

    const/4 v0, 0x1

    if-eqz p1, :cond_0

    .line 180
    sget-object p1, Lcom/narvii/services/incubator/IncubatorCommunityLoggingServiceProvider;->HEADLINE_ENTER:Lcom/narvii/util/statistics/TmpValue;

    iget-object v1, p0, Lcom/narvii/amino/CommunityNavBarFragment$3;->this$0:Lcom/narvii/amino/CommunityNavBarFragment;

    const-string v2, "__communityId"

    invoke-virtual {v1, v2}, Lcom/narvii/app/NVFragment;->getIntParam(Ljava/lang/String;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/narvii/util/statistics/TmpValue;->set(Ljava/lang/Object;)V

    .line 181
    new-instance p1, Lcom/narvii/amino/CommunityPreferenceHelper;

    iget-object v1, p0, Lcom/narvii/amino/CommunityNavBarFragment$3;->this$0:Lcom/narvii/amino/CommunityNavBarFragment;

    invoke-virtual {v1}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {p1, v1}, Lcom/narvii/amino/CommunityPreferenceHelper;-><init>(Landroid/content/Context;)V

    .line 182
    invoke-virtual {p1, v0}, Lcom/narvii/amino/CommunityPreferenceHelper;->setJoinAminoShowBefore(Z)V

    .line 184
    :cond_0
    iget-object p1, p0, Lcom/narvii/amino/CommunityNavBarFragment$3;->this$0:Lcom/narvii/amino/CommunityNavBarFragment;

    invoke-virtual {p1, v0}, Lcom/narvii/amino/CommunityNavBarFragment;->showCommunityDetailPage(Z)V

    return-void
.end method
