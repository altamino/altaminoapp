.class public final synthetic Lx5/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic a:Lcom/narvii/chat/setting/helper/ChatWaitingListService;


# direct methods
.method public synthetic constructor <init>(Lcom/narvii/chat/setting/helper/ChatWaitingListService;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lx5/a;->a:Lcom/narvii/chat/setting/helper/ChatWaitingListService;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lx5/a;->a:Lcom/narvii/chat/setting/helper/ChatWaitingListService;

    invoke-static {v0, p1}, Lcom/narvii/chat/setting/helper/ChatWaitingListService;->b(Lcom/narvii/chat/setting/helper/ChatWaitingListService;Landroid/view/View;)V

    return-void
.end method
