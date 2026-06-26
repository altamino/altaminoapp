.class public final Lcom/narvii/chat/global/chat/CommunityChatFragment$CreateAdapter;
.super Lcom/narvii/list/AdriftAdapter;
.source "CommunityChatFragment.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/narvii/chat/global/chat/CommunityChatFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "CreateAdapter"
.end annotation


# instance fields
.field private final ctx:Lcom/narvii/app/NVContext;

.field final synthetic this$0:Lcom/narvii/chat/global/chat/CommunityChatFragment;


# direct methods
.method public constructor <init>(Lcom/narvii/chat/global/chat/CommunityChatFragment;Lcom/narvii/app/NVContext;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/narvii/app/NVContext;",
            ")V"
        }
    .end annotation

    .line 269
    iput-object p1, p0, Lcom/narvii/chat/global/chat/CommunityChatFragment$CreateAdapter;->this$0:Lcom/narvii/chat/global/chat/CommunityChatFragment;

    invoke-direct {p0, p2}, Lcom/narvii/list/AdriftAdapter;-><init>(Lcom/narvii/app/NVContext;)V

    iput-object p2, p0, Lcom/narvii/chat/global/chat/CommunityChatFragment$CreateAdapter;->ctx:Lcom/narvii/app/NVContext;

    return-void
.end method


# virtual methods
.method public final getCtx()Lcom/narvii/app/NVContext;
    .locals 1

    .line 269
    iget-object v0, p0, Lcom/narvii/chat/global/chat/CommunityChatFragment$CreateAdapter;->ctx:Lcom/narvii/app/NVContext;

    return-object v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 0

    const p1, 0x7f0b038f

    .line 271
    invoke-virtual {p0, p1, p3, p2}, Lcom/narvii/list/NVAdapter;->createView(ILandroid/view/ViewGroup;Landroid/view/View;)Landroid/view/View;

    move-result-object p1

    const-string p2, "createView(R.layout.item\u2026hat, parent, convertView)"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 272
    iget-object p2, p0, Lcom/narvii/list/NVAdapter;->subviewClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {p1, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-object p1
.end method

.method public onItemClick(Landroid/widget/ListAdapter;ILjava/lang/Object;Landroid/view/View;Landroid/view/View;)Z
    .locals 6

    .line 277
    new-instance v0, Lcom/narvii/chat/thread/ThreadHelper;

    invoke-direct {v0, p0}, Lcom/narvii/chat/thread/ThreadHelper;-><init>(Lcom/narvii/app/NVContext;)V

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x1

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Lcom/narvii/chat/thread/ThreadHelper;->showCreateChatDialog(Ljava/lang/String;Lcom/narvii/model/ChatBubble;Ljava/lang/String;ZLcom/narvii/util/Callback;)V

    const/4 p1, 0x1

    return p1
.end method
