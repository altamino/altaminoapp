.class final Lcom/narvii/community/VisitorBarHost$onFinishInflate$1;
.super Ljava/lang/Object;
.source "VisitorBarHost.kt"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/community/VisitorBarHost;->onFinishInflate()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/community/VisitorBarHost;


# direct methods
.method constructor <init>(Lcom/narvii/community/VisitorBarHost;)V
    .locals 0

    iput-object p1, p0, Lcom/narvii/community/VisitorBarHost$onFinishInflate$1;->this$0:Lcom/narvii/community/VisitorBarHost;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    .line 53
    iget-object p1, p0, Lcom/narvii/community/VisitorBarHost$onFinishInflate$1;->this$0:Lcom/narvii/community/VisitorBarHost;

    invoke-virtual {p1}, Lcom/narvii/community/VisitorBarHost;->getJoining()Z

    move-result p1

    if-nez p1, :cond_7

    const/4 p1, 0x0

    .line 56
    iget-object v0, p0, Lcom/narvii/community/VisitorBarHost$onFinishInflate$1;->this$0:Lcom/narvii/community/VisitorBarHost;

    invoke-virtual {v0}, Lcom/narvii/community/VisitorBarHost;->getActivity()Landroid/app/Activity;

    move-result-object v0

    instance-of v0, v0, Lcom/narvii/app/NVActivity;

    if-eqz v0, :cond_5

    .line 57
    iget-object p1, p0, Lcom/narvii/community/VisitorBarHost$onFinishInflate$1;->this$0:Lcom/narvii/community/VisitorBarHost;

    invoke-virtual {p1}, Lcom/narvii/community/VisitorBarHost;->getActivity()Landroid/app/Activity;

    move-result-object p1

    const-string v0, "null cannot be cast to non-null type com.narvii.app.NVActivity"

    if-eqz p1, :cond_4

    check-cast p1, Lcom/narvii/app/NVActivity;

    invoke-virtual {p1}, Lcom/narvii/app/NVActivity;->getMainFragment()Landroid/support/v4/app/Fragment;

    move-result-object p1

    instance-of p1, p1, Lcom/narvii/app/NVContext;

    const-string v1, "null cannot be cast to non-null type com.narvii.app.NVContext"

    if-eqz p1, :cond_2

    .line 58
    iget-object p1, p0, Lcom/narvii/community/VisitorBarHost$onFinishInflate$1;->this$0:Lcom/narvii/community/VisitorBarHost;

    invoke-virtual {p1}, Lcom/narvii/community/VisitorBarHost;->getActivity()Landroid/app/Activity;

    move-result-object p1

    if-eqz p1, :cond_1

    check-cast p1, Lcom/narvii/app/NVActivity;

    invoke-virtual {p1}, Lcom/narvii/app/NVActivity;->getMainFragment()Landroid/support/v4/app/Fragment;

    move-result-object p1

    if-eqz p1, :cond_0

    check-cast p1, Lcom/narvii/app/NVContext;

    goto :goto_0

    :cond_0
    new-instance p1, Lkotlin/TypeCastException;

    invoke-direct {p1, v1}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    new-instance p1, Lkotlin/TypeCastException;

    invoke-direct {p1, v0}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 60
    :cond_2
    iget-object p1, p0, Lcom/narvii/community/VisitorBarHost$onFinishInflate$1;->this$0:Lcom/narvii/community/VisitorBarHost;

    invoke-virtual {p1}, Lcom/narvii/community/VisitorBarHost;->getActivity()Landroid/app/Activity;

    move-result-object p1

    if-eqz p1, :cond_3

    check-cast p1, Lcom/narvii/app/NVContext;

    goto :goto_0

    :cond_3
    new-instance p1, Lkotlin/TypeCastException;

    invoke-direct {p1, v1}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 57
    :cond_4
    new-instance p1, Lkotlin/TypeCastException;

    invoke-direct {p1, v0}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 63
    :cond_5
    :goto_0
    sget-object v0, Lcom/narvii/logging/ActSemantic;->aminoJoin:Lcom/narvii/logging/ActSemantic;

    invoke-static {p1, v0}, Lcom/narvii/logging/LogEvent;->clickBuilder(Lcom/narvii/app/NVContext;Lcom/narvii/logging/ActSemantic;)Lcom/narvii/logging/LogEvent$Builder;

    move-result-object v0

    const-string v1, "VisitorJoinButton"

    invoke-virtual {v0, v1}, Lcom/narvii/logging/LogEvent$Builder;->area(Ljava/lang/String;)Lcom/narvii/logging/LogEvent$Builder;

    move-result-object v0

    .line 64
    instance-of v1, p1, Lcom/narvii/amino/HomeFragment;

    if-eqz v1, :cond_6

    .line 65
    check-cast p1, Lcom/narvii/amino/HomeFragment;

    invoke-virtual {p1}, Lcom/narvii/amino/HomeFragment;->getCurrentDeepLink()Ljava/lang/String;

    move-result-object p1

    const-string v1, "deepLink"

    invoke-virtual {v0, v1, p1}, Lcom/narvii/logging/LogEvent$Builder;->extraParam(Ljava/lang/String;Ljava/lang/Object;)Lcom/narvii/logging/LogEvent$Builder;

    .line 67
    :cond_6
    invoke-virtual {v0}, Lcom/narvii/logging/LogEvent$Builder;->send()Lcom/narvii/logging/LogEvent;

    .line 68
    iget-object p1, p0, Lcom/narvii/community/VisitorBarHost$onFinishInflate$1;->this$0:Lcom/narvii/community/VisitorBarHost;

    invoke-static {p1}, Lcom/narvii/community/VisitorBarHost;->access$sendJoinRequest(Lcom/narvii/community/VisitorBarHost;)V

    :cond_7
    return-void
.end method
