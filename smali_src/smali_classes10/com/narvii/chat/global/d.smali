.class public final synthetic Lcom/narvii/chat/global/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/narvii/util/Callback;


# instance fields
.field public final synthetic a:Lcom/narvii/util/dialog/ProgressDialog;

.field public final synthetic b:Lcom/narvii/chat/global/GlobalChatHelper$JoinCommunityCallback;

.field public final synthetic c:I

.field public final synthetic d:Lcom/narvii/chat/global/GlobalChatHelper;

.field public final synthetic f:Lkotlin/jvm/internal/p0;


# direct methods
.method public synthetic constructor <init>(Lcom/narvii/util/dialog/ProgressDialog;Lcom/narvii/chat/global/GlobalChatHelper$JoinCommunityCallback;ILcom/narvii/chat/global/GlobalChatHelper;Lkotlin/jvm/internal/p0;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/narvii/chat/global/d;->a:Lcom/narvii/util/dialog/ProgressDialog;

    iput-object p2, p0, Lcom/narvii/chat/global/d;->b:Lcom/narvii/chat/global/GlobalChatHelper$JoinCommunityCallback;

    iput p3, p0, Lcom/narvii/chat/global/d;->c:I

    iput-object p4, p0, Lcom/narvii/chat/global/d;->d:Lcom/narvii/chat/global/GlobalChatHelper;

    iput-object p5, p0, Lcom/narvii/chat/global/d;->f:Lkotlin/jvm/internal/p0;

    return-void
.end method


# virtual methods
.method public final call(Ljava/lang/Object;)V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/narvii/chat/global/d;->a:Lcom/narvii/util/dialog/ProgressDialog;

    iget-object v1, p0, Lcom/narvii/chat/global/d;->b:Lcom/narvii/chat/global/GlobalChatHelper$JoinCommunityCallback;

    iget v2, p0, Lcom/narvii/chat/global/d;->c:I

    iget-object v3, p0, Lcom/narvii/chat/global/d;->d:Lcom/narvii/chat/global/GlobalChatHelper;

    iget-object v4, p0, Lcom/narvii/chat/global/d;->f:Lkotlin/jvm/internal/p0;

    move-object v5, p1

    check-cast v5, Ljava/lang/Boolean;

    invoke-static/range {v0 .. v5}, Lcom/narvii/chat/global/GlobalChatHelper;->g(Lcom/narvii/util/dialog/ProgressDialog;Lcom/narvii/chat/global/GlobalChatHelper$JoinCommunityCallback;ILcom/narvii/chat/global/GlobalChatHelper;Lkotlin/jvm/internal/p0;Ljava/lang/Boolean;)V

    return-void
.end method
