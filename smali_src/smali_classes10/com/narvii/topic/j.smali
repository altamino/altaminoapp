.class public final synthetic Lcom/narvii/topic/j;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic a:Lcom/narvii/topic/TopicTabFragment;

.field public final synthetic b:Landroid/os/Bundle;


# direct methods
.method public synthetic constructor <init>(Lcom/narvii/topic/TopicTabFragment;Landroid/os/Bundle;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/narvii/topic/j;->a:Lcom/narvii/topic/TopicTabFragment;

    iput-object p2, p0, Lcom/narvii/topic/j;->b:Landroid/os/Bundle;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/narvii/topic/j;->a:Lcom/narvii/topic/TopicTabFragment;

    iget-object v1, p0, Lcom/narvii/topic/j;->b:Landroid/os/Bundle;

    invoke-static {v0, v1, p1}, Lcom/narvii/topic/TopicTabFragment;->q(Lcom/narvii/topic/TopicTabFragment;Landroid/os/Bundle;Landroid/view/View;)V

    return-void
.end method
