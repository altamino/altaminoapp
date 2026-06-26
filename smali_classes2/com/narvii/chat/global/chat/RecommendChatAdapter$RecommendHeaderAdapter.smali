.class public final Lcom/narvii/chat/global/chat/RecommendChatAdapter$RecommendHeaderAdapter;
.super Lcom/narvii/list/AdriftAdapter;
.source "RecommendChatAdapter.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/narvii/chat/global/chat/RecommendChatAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "RecommendHeaderAdapter"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/chat/global/chat/RecommendChatAdapter;


# direct methods
.method public constructor <init>(Lcom/narvii/chat/global/chat/RecommendChatAdapter;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 84
    iput-object p1, p0, Lcom/narvii/chat/global/chat/RecommendChatAdapter$RecommendHeaderAdapter;->this$0:Lcom/narvii/chat/global/chat/RecommendChatAdapter;

    invoke-virtual {p1}, Lcom/narvii/chat/global/chat/RecommendChatAdapter;->getCtx()Lcom/narvii/app/NVContext;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/narvii/list/AdriftAdapter;-><init>(Lcom/narvii/app/NVContext;)V

    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .line 90
    iget-object v0, p0, Lcom/narvii/chat/global/chat/RecommendChatAdapter$RecommendHeaderAdapter;->this$0:Lcom/narvii/chat/global/chat/RecommendChatAdapter;

    invoke-virtual {v0}, Lcom/narvii/chat/global/chat/RecommendChatAdapter;->getCount()I

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/narvii/chat/global/chat/RecommendChatAdapter$RecommendHeaderAdapter;->this$0:Lcom/narvii/chat/global/chat/RecommendChatAdapter;

    invoke-virtual {v0}, Lcom/narvii/list/NVPagedAdapter;->isListShown()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x0

    :goto_1
    return v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 0

    const p1, 0x7f0b00b3

    .line 86
    invoke-virtual {p0, p1, p3, p2}, Lcom/narvii/list/NVAdapter;->createView(ILandroid/view/ViewGroup;Landroid/view/View;)Landroid/view/View;

    move-result-object p1

    const-string p2, "createView(R.layout.chat\u2026der, parent, convertView)"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method
