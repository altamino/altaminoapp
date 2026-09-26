.class public final synthetic Lcom/narvii/chat/global/h;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/narvii/util/Callback;


# instance fields
.field public final synthetic a:Lcom/narvii/chat/global/GlobalChatHelper;

.field public final synthetic b:I

.field public final synthetic c:Lcom/narvii/chat/global/GlobalChatHelper$JoinCommunityCallback;

.field public final synthetic d:Lcom/narvii/util/dialog/ProgressDialog;


# direct methods
.method public synthetic constructor <init>(Lcom/narvii/chat/global/GlobalChatHelper;ILcom/narvii/chat/global/GlobalChatHelper$JoinCommunityCallback;Lcom/narvii/util/dialog/ProgressDialog;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/narvii/chat/global/h;->a:Lcom/narvii/chat/global/GlobalChatHelper;

    iput p2, p0, Lcom/narvii/chat/global/h;->b:I

    iput-object p3, p0, Lcom/narvii/chat/global/h;->c:Lcom/narvii/chat/global/GlobalChatHelper$JoinCommunityCallback;

    iput-object p4, p0, Lcom/narvii/chat/global/h;->d:Lcom/narvii/util/dialog/ProgressDialog;

    return-void
.end method


# virtual methods
.method public final call(Ljava/lang/Object;)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/narvii/chat/global/h;->a:Lcom/narvii/chat/global/GlobalChatHelper;

    iget v1, p0, Lcom/narvii/chat/global/h;->b:I

    iget-object v2, p0, Lcom/narvii/chat/global/h;->c:Lcom/narvii/chat/global/GlobalChatHelper$JoinCommunityCallback;

    iget-object v3, p0, Lcom/narvii/chat/global/h;->d:Lcom/narvii/util/dialog/ProgressDialog;

    check-cast p1, Ljava/lang/Boolean;

    invoke-static {v0, v1, v2, v3, p1}, Lcom/narvii/chat/global/GlobalChatHelper;->f(Lcom/narvii/chat/global/GlobalChatHelper;ILcom/narvii/chat/global/GlobalChatHelper$JoinCommunityCallback;Lcom/narvii/util/dialog/ProgressDialog;Ljava/lang/Boolean;)V

    return-void
.end method
