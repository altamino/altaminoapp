.class public final synthetic Lcom/narvii/scene/poll/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic a:Ljava/lang/Integer;

.field public final synthetic b:Lcom/narvii/scene/poll/ScenePollPostFragment;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Integer;Lcom/narvii/scene/poll/ScenePollPostFragment;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/narvii/scene/poll/a;->a:Ljava/lang/Integer;

    iput-object p2, p0, Lcom/narvii/scene/poll/a;->b:Lcom/narvii/scene/poll/ScenePollPostFragment;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/narvii/scene/poll/a;->a:Ljava/lang/Integer;

    iget-object v1, p0, Lcom/narvii/scene/poll/a;->b:Lcom/narvii/scene/poll/ScenePollPostFragment;

    invoke-static {v0, v1, p1}, Lcom/narvii/scene/poll/ScenePollPostFragment;->p(Ljava/lang/Integer;Lcom/narvii/scene/poll/ScenePollPostFragment;Landroid/view/View;)V

    return-void
.end method
