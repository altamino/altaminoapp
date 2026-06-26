.class final Lcom/narvii/community/VisitorBarHost$sendJoinRequest$1;
.super Ljava/lang/Object;
.source "VisitorBarHost.kt"

# interfaces
.implements Lcom/narvii/util/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/community/VisitorBarHost;->sendJoinRequest()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/narvii/util/Callback<",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/community/VisitorBarHost;


# direct methods
.method constructor <init>(Lcom/narvii/community/VisitorBarHost;)V
    .locals 0

    iput-object p1, p0, Lcom/narvii/community/VisitorBarHost$sendJoinRequest$1;->this$0:Lcom/narvii/community/VisitorBarHost;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final call(Ljava/lang/Boolean;)V
    .locals 1

    .line 87
    iget-object p1, p0, Lcom/narvii/community/VisitorBarHost$sendJoinRequest$1;->this$0:Lcom/narvii/community/VisitorBarHost;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/narvii/community/VisitorBarHost;->setJoining(Z)V

    .line 88
    iget-object p1, p0, Lcom/narvii/community/VisitorBarHost$sendJoinRequest$1;->this$0:Lcom/narvii/community/VisitorBarHost;

    invoke-static {p1}, Lcom/narvii/community/VisitorBarHost;->access$getJoinLayout$p(Lcom/narvii/community/VisitorBarHost;)Lcom/narvii/widget/JoinCommunityProgressLayout;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/narvii/widget/JoinCommunityProgressLayout;->setProgress(I)V

    .line 89
    iget-object p1, p0, Lcom/narvii/community/VisitorBarHost$sendJoinRequest$1;->this$0:Lcom/narvii/community/VisitorBarHost;

    invoke-static {p1}, Lcom/narvii/community/VisitorBarHost;->access$updateViews(Lcom/narvii/community/VisitorBarHost;)V

    return-void
.end method

.method public bridge synthetic call(Ljava/lang/Object;)V
    .locals 0

    .line 26
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p0, p1}, Lcom/narvii/community/VisitorBarHost$sendJoinRequest$1;->call(Ljava/lang/Boolean;)V

    return-void
.end method
