.class Lcom/narvii/community/request/RequestJoinCommunityDialog$1;
.super Ljava/lang/Object;
.source "RequestJoinCommunityDialog.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/community/request/RequestJoinCommunityDialog;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/community/request/RequestJoinCommunityDialog;


# direct methods
.method constructor <init>(Lcom/narvii/community/request/RequestJoinCommunityDialog;)V
    .locals 0

    .line 140
    iput-object p1, p0, Lcom/narvii/community/request/RequestJoinCommunityDialog$1;->this$0:Lcom/narvii/community/request/RequestJoinCommunityDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 143
    iget-object v0, p0, Lcom/narvii/community/request/RequestJoinCommunityDialog$1;->this$0:Lcom/narvii/community/request/RequestJoinCommunityDialog;

    invoke-virtual {v0}, Lcom/narvii/app/NVDialog;->dismiss()V

    return-void
.end method
