.class Lcom/narvii/comment/list/CommentListAdapter$1;
.super Lcom/narvii/community/CommunityHelper;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/comment/list/CommentListAdapter;-><init>(Lcom/narvii/app/NVContext;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/comment/list/CommentListAdapter;


# direct methods
.method constructor <init>(Lcom/narvii/comment/list/CommentListAdapter;Lcom/narvii/app/NVContext;)V
    .locals 0

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/comment/list/CommentListAdapter$1;->this$0:Lcom/narvii/comment/list/CommentListAdapter;

    .line 3
    .line 4
    .line 5
    invoke-direct {p0, p2}, Lcom/narvii/community/CommunityHelper;-><init>(Lcom/narvii/app/NVContext;)V

    .line 6
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
.method protected startActivity(Landroid/content/Intent;)V
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/comment/list/CommentListAdapter$1;->this$0:Lcom/narvii/comment/list/CommentListAdapter;

    .line 3
    .line 4
    .line 5
    invoke-static {v0, p1}, Lcom/narvii/comment/list/CommentListAdapter$1;->safedk_NVAdapter_startActivity_5b31acbff248f36f6c86407552449fc2(Lcom/narvii/list/NVAdapter;Landroid/content/Intent;)V

    .line 6
    return-void
.end method
