.class public final synthetic Lcom/narvii/chat/util/n;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field public final synthetic a:[I

.field public final synthetic b:Lcom/narvii/chat/util/MyChatListDelegate;

.field public final synthetic c:Lcom/narvii/model/ChatThread;

.field public final synthetic d:Lcom/narvii/chat/util/ChatRequestHelper;

.field public final synthetic f:I

.field public final synthetic g:Landroidx/fragment/app/FragmentManager;


# direct methods
.method public synthetic constructor <init>([ILcom/narvii/chat/util/MyChatListDelegate;Lcom/narvii/model/ChatThread;Lcom/narvii/chat/util/ChatRequestHelper;ILandroidx/fragment/app/FragmentManager;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/narvii/chat/util/n;->a:[I

    iput-object p2, p0, Lcom/narvii/chat/util/n;->b:Lcom/narvii/chat/util/MyChatListDelegate;

    iput-object p3, p0, Lcom/narvii/chat/util/n;->c:Lcom/narvii/model/ChatThread;

    iput-object p4, p0, Lcom/narvii/chat/util/n;->d:Lcom/narvii/chat/util/ChatRequestHelper;

    iput p5, p0, Lcom/narvii/chat/util/n;->f:I

    iput-object p6, p0, Lcom/narvii/chat/util/n;->g:Landroidx/fragment/app/FragmentManager;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 8

    .line 1
    iget-object v0, p0, Lcom/narvii/chat/util/n;->a:[I

    iget-object v1, p0, Lcom/narvii/chat/util/n;->b:Lcom/narvii/chat/util/MyChatListDelegate;

    iget-object v2, p0, Lcom/narvii/chat/util/n;->c:Lcom/narvii/model/ChatThread;

    iget-object v3, p0, Lcom/narvii/chat/util/n;->d:Lcom/narvii/chat/util/ChatRequestHelper;

    iget v4, p0, Lcom/narvii/chat/util/n;->f:I

    iget-object v5, p0, Lcom/narvii/chat/util/n;->g:Landroidx/fragment/app/FragmentManager;

    move-object v6, p1

    move v7, p2

    invoke-static/range {v0 .. v7}, Lcom/narvii/chat/util/MyChatListDelegate;->a([ILcom/narvii/chat/util/MyChatListDelegate;Lcom/narvii/model/ChatThread;Lcom/narvii/chat/util/ChatRequestHelper;ILandroidx/fragment/app/FragmentManager;Landroid/content/DialogInterface;I)V

    return-void
.end method
