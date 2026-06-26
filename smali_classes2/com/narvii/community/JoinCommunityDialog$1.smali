.class Lcom/narvii/community/JoinCommunityDialog$1;
.super Ljava/lang/Object;
.source "JoinCommunityDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/community/JoinCommunityDialog;-><init>(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/community/JoinCommunityDialog;


# direct methods
.method constructor <init>(Lcom/narvii/community/JoinCommunityDialog;)V
    .locals 0

    .line 32
    iput-object p1, p0, Lcom/narvii/community/JoinCommunityDialog$1;->this$0:Lcom/narvii/community/JoinCommunityDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 35
    iget-object p1, p0, Lcom/narvii/community/JoinCommunityDialog$1;->this$0:Lcom/narvii/community/JoinCommunityDialog;

    const-string v0, "Cancel"

    invoke-static {p1, v0}, Lcom/narvii/logging/LogEvent;->clickWildcardBuilder(Lcom/narvii/app/NVContext;Ljava/lang/String;)Lcom/narvii/logging/LogEvent$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/narvii/logging/LogEvent$Builder;->send()Lcom/narvii/logging/LogEvent;

    .line 36
    iget-object p1, p0, Lcom/narvii/community/JoinCommunityDialog$1;->this$0:Lcom/narvii/community/JoinCommunityDialog;

    iget-object p1, p1, Lcom/narvii/community/JoinCommunityDialog;->callback:Lcom/narvii/util/Callback;

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    .line 37
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/narvii/util/Callback;->call(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method
