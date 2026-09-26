.class public final synthetic Lcom/narvii/chat/util/e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic a:Lcom/narvii/chat/util/ChatHelper;

.field public final synthetic b:Lcom/narvii/model/ChatThread;

.field public final synthetic c:Lcom/narvii/config/ConfigService;

.field public final synthetic d:Landroidx/fragment/app/FragmentManager;


# direct methods
.method public synthetic constructor <init>(Lcom/narvii/chat/util/ChatHelper;Lcom/narvii/model/ChatThread;Lcom/narvii/config/ConfigService;Landroidx/fragment/app/FragmentManager;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/narvii/chat/util/e;->a:Lcom/narvii/chat/util/ChatHelper;

    iput-object p2, p0, Lcom/narvii/chat/util/e;->b:Lcom/narvii/model/ChatThread;

    iput-object p3, p0, Lcom/narvii/chat/util/e;->c:Lcom/narvii/config/ConfigService;

    iput-object p4, p0, Lcom/narvii/chat/util/e;->d:Landroidx/fragment/app/FragmentManager;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/narvii/chat/util/e;->a:Lcom/narvii/chat/util/ChatHelper;

    iget-object v1, p0, Lcom/narvii/chat/util/e;->b:Lcom/narvii/model/ChatThread;

    iget-object v2, p0, Lcom/narvii/chat/util/e;->c:Lcom/narvii/config/ConfigService;

    iget-object v3, p0, Lcom/narvii/chat/util/e;->d:Landroidx/fragment/app/FragmentManager;

    invoke-static {v0, v1, v2, v3, p1}, Lcom/narvii/chat/util/ChatHelper;->g(Lcom/narvii/chat/util/ChatHelper;Lcom/narvii/model/ChatThread;Lcom/narvii/config/ConfigService;Landroidx/fragment/app/FragmentManager;Landroid/view/View;)V

    return-void
.end method
