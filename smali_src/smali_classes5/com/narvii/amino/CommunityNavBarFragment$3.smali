.class Lcom/narvii/amino/CommunityNavBarFragment$3;
.super Ljava/lang/Object;
.source "SourceFile"

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

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/amino/CommunityNavBarFragment$3;->this$0:Lcom/narvii/amino/CommunityNavBarFragment;

    .line 3
    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .line 1
    .line 2
    iget-object p1, p0, Lcom/narvii/amino/CommunityNavBarFragment$3;->this$0:Lcom/narvii/amino/CommunityNavBarFragment;

    .line 3
    .line 4
    .line 5
    invoke-static {p1}, Lcom/narvii/amino/CommunityNavBarFragment;->q(Lcom/narvii/amino/CommunityNavBarFragment;)Z

    .line 6
    move-result p1

    .line 7
    const/4 v0, 0x1

    .line 8
    .line 9
    if-eqz p1, :cond_0

    .line 10
    .line 11
    sget-object p1, Lcom/narvii/services/incubator/IncubatorCommunityLoggingServiceProvider;->HEADLINE_ENTER:Lcom/narvii/util/statistics/TmpValue;

    .line 12
    .line 13
    iget-object v1, p0, Lcom/narvii/amino/CommunityNavBarFragment$3;->this$0:Lcom/narvii/amino/CommunityNavBarFragment;

    .line 14
    .line 15
    const-string v2, "__communityId"

    .line 16
    .line 17
    .line 18
    invoke-virtual {v1, v2}, Lcom/narvii/app/NVFragment;->getIntParam(Ljava/lang/String;)I

    .line 19
    move-result v1

    .line 20
    .line 21
    .line 22
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 23
    move-result-object v1

    .line 24
    .line 25
    .line 26
    invoke-virtual {p1, v1}, Lcom/narvii/util/statistics/TmpValue;->set(Ljava/lang/Object;)V

    .line 27
    .line 28
    new-instance p1, Lcom/narvii/amino/CommunityPreferenceHelper;

    .line 29
    .line 30
    iget-object v1, p0, Lcom/narvii/amino/CommunityNavBarFragment$3;->this$0:Lcom/narvii/amino/CommunityNavBarFragment;

    .line 31
    .line 32
    .line 33
    invoke-virtual {v1}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    .line 34
    move-result-object v1

    .line 35
    .line 36
    .line 37
    invoke-direct {p1, v1}, Lcom/narvii/amino/CommunityPreferenceHelper;-><init>(Landroid/content/Context;)V

    .line 38
    .line 39
    .line 40
    invoke-virtual {p1, v0}, Lcom/narvii/amino/CommunityPreferenceHelper;->setJoinAminoShowBefore(Z)V

    .line 41
    .line 42
    :cond_0
    iget-object p1, p0, Lcom/narvii/amino/CommunityNavBarFragment$3;->this$0:Lcom/narvii/amino/CommunityNavBarFragment;

    .line 43
    .line 44
    .line 45
    invoke-virtual {p1, v0}, Lcom/narvii/amino/CommunityNavBarFragment;->showCommunityDetailPage(Z)V

    .line 46
    return-void
.end method
