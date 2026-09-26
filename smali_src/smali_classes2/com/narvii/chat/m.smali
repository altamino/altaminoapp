.class public final synthetic Lcom/narvii/chat/m;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic a:Lcom/narvii/chat/ChatFragment;


# direct methods
.method public synthetic constructor <init>(Lcom/narvii/chat/ChatFragment;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/narvii/chat/m;->a:Lcom/narvii/chat/ChatFragment;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/narvii/chat/m;->a:Lcom/narvii/chat/ChatFragment;

    invoke-static {v0, p1}, Lcom/narvii/chat/ChatFragment;->n(Lcom/narvii/chat/ChatFragment;Landroid/view/View;)V

    return-void
.end method
